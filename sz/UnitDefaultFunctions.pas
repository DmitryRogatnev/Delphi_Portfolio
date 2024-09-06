unit UnitDefaultFunctions;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB, OracleData, PrnDbgeh,
  System.ImageList, Vcl.ImgList, MemTableDataEh, MemTableEh, DataDriverEh,
  Vcl.Mask, DBCtrlsEh, Vcl.Menus, Vcl.ComCtrls, Oracle, DateUtils, PrViewEh,
  Printers, DBGridEhImpExp, DropDownFormEh, EhLibMTE, ClipBrd;

type
  TFunctionGenSQLParams=function(InParams: TDynVarsEh): TDynVarsEh of Object;
  TProcedureDeleteFromDbGridEh=procedure(DBGridEh: TDBGridEh) of Object;
  function  DefaultFunctionGenSQLParams(InParams: TDynVarsEh): TDynVarsEh;
  procedure DefaultProcedureDeleteFromDbGridEh(DBGridEh: TDBGridEh);

implementation
  function DefaultFunctionGenSQLParams(InParams: TDynVarsEh): TDynVarsEh;
     Var
    searchResult: TSearchRec;
    Counter, i: Integer;
    Result_Params: TDynVarsEh;
    OutputSQlStrings: TStringList;
    Filter_Before, Filter_After: String;
    ResourceStream: TResourceStream;
    ArrConst: Array Of TVarRec;
    LookingConst, DefaultConstValue: String;
  begin
    Result_Params := InParams;

    If InParams.DynVar[ 'Find' ].AsString = 'DIR_EXT'
    Then
    Begin
      {$Region 'Формирование списка форматов файлов в директории'}
      Result_Params.DynVar['V_SQL_Text'].AsString := ' Select Distinct FILE_EXT'
                            + ' From ( ' ;
      if FindFirst( InParams.DynVar[ 'Keyword' ].AsString + '\*.*',
                    faAnyFile
                    And Not faDirectory
                    And Not faHidden
                    And Not faSysFile,
                    searchResult ) = 0
      Then
      begin
        Counter := 0;
        repeat
           if Counter = 0
           Then
           Begin
             Result_Params.DynVar['V_SQL_Text'].AsString := Result_Params.DynVar['V_SQL_Text'].AsString + ' Select '
                                   + ' ''' + ExtractFileExt( Result_Params.DynVar[ 'v_Keyword' ].AsString + '\' + searchResult.Name ) + ''' ' + ' FILE_EXT '
                                   + ' From Dual ';
           End
           Else
           Begin
             Result_Params.DynVar['V_SQL_Text'].AsString := Result_Params.DynVar['V_SQL_Text'].AsString + ' Union All ';
             Result_Params.DynVar['V_SQL_Text'].AsString := Result_Params.DynVar['V_SQL_Text'].AsString + ' Select '
                                   + ' ''' + ExtractFileExt( Result_Params.DynVar[ 'v_Keyword' ].AsString + '\' + searchResult.Name ) + ''' '  + ' FILE_EXT '
                                   + ' From Dual ';
           End;
           Inc(Counter);
        until FindNext(searchResult) <> 0;
        FindClose (searchResult);
        Result_Params.DynVar['V_SQL_Text'].AsString := Result_Params.DynVar['V_SQL_Text'].AsString + ' ) ';

        if InParams.DynVar[ 'V_Columns' ].IsNull
        Then
        Begin
          Result_Params.DynVar[ 'V_Columns' ].AsString := '<0>FILE_EXT</0>'
                                                        + '<end>';
          Result_Params.DynVar[ 'V_Titles' ].AsString := '<0>Формат файла</0>'
                                                        + '<end>';
        End;
      end;
      {$EndRegion 'Формирование списка форматов файлов в директории'}
    End
    else
    begin
      OutputSQlStrings := TStringList.Create;
      ResourceStream := TResourceStream.Create(Hinstance, InParams.DynVar[ 'Find' ].AsString, Pchar('TXT'));
      if ResourceStream<>Nil
      then
      begin
        try
          OutputSQlStrings.LoadFromStream(ResourceStream);
          for i := 1 to 4 do
          begin
            case i of
               1:begin LookingConst:='Filter'; DefaultConstValue:='Where (1=1)' end;
               2:begin LookingConst:='Fields'; DefaultConstValue:='*' end;
               3:begin LookingConst:='KeywordFilter'; DefaultConstValue:='(1=1)' end;
               4:begin LookingConst:='Group'; DefaultConstValue:='' end;
            end;

            if Pos(Format('/*Begin%s*/', [LookingConst]), OutputSQlStrings.Text)<>0
            then
            begin
              if InParams.DynVar[LookingConst].IsNull then InParams.DynVar[LookingConst].AsString:=DefaultConstValue;
              Filter_Before := Copy(OutputSQlStrings.Text, 0,
                                    Pos(Format('/*Begin%s*/', [LookingConst]), OutputSQlStrings.Text)-1);
              Filter_After := Copy(OutputSQlStrings.Text,
                                   Pos(Format('/*End%s*/', [LookingConst]), OutputSQlStrings.Text)+Length(Format('/*End%s*/', [LookingConst])),
                                   Length(OutputSQlStrings.Text));
              OutputSQlStrings.Text:=Filter_Before
                                     + InParams.DynVar[LookingConst].AsString
                                     + Filter_After;
            end;
          end;

          Result_Params.DynVar['SQL'].AsString := OutputSQlStrings.Text;

          //Clipboard.AsText:=Result_Params.DynVar['SQL'].AsString ;

          if InParams.DynVar['Columns'].IsNull
          Then
          Begin
            Result_Params.DynVar['Columns'].AsString := Copy(Result_Params.DynVar['SQL'].AsString,
                                                   Pos('/*BeginColumns', Result_Params.DynVar['SQL'].AsString) + Length('/*BeginColumns'),
                                                   Pos('EndColumns*/', Result_Params.DynVar['SQL'].AsString)-(Pos('/*BeginColumns', Result_Params.DynVar['SQL'].AsString) + Length('/*BeginColumns')));
            Result_Params.DynVar['Titles'].AsString := Copy(Result_Params.DynVar['SQL'].AsString,
                                                  Pos('/*BeginTitles', Result_Params.DynVar['SQL'].AsString) + Length('/*BeginTitles'),
                                                  Pos('EndTitles*/', Result_Params.DynVar['SQL'].AsString) - (Pos('/*BeginTitles', Result_Params.DynVar['SQL'].AsString) + Length('/*BeginTitles')));
          End;
        finally
          OutputSQlStrings.Free;
          ResourceStream.Free;
        end;
      end;
    end;
    Result := Result_Params;
  end;

  procedure DefaultProcedureDeleteFromDbGridEh(DBGridEh: TDBGridEh);
  Var
    i: Integer;
    ASelectionType: TDBGridEhSelectionType;
  begin
    with DBGridEh do
    begin
      ASelectionType := Selection.SelectionType;

      {$Region 'Если выделена одна запись, то ASelectionType = gstNon'}
      if ( ASelectionType = gstNon ) and
         ( not DataSource.DataSet.IsEmpty ) and
         ( MessageBox( Application.ActiveFormHandle,'Удалить строку?','Внимание!',MB_YESNO  + MB_ICONINFORMATION ) = ID_YES )
      then
      begin
        DataSource.DataSet.Delete;
      end
      {$EndRegion 'Если выделена одна запись, то ASelectionType = gstNon'}

      {$Region 'Если выделена не одна запись'}
      else if ( ASelectionType <> gstNon ) and
      ( not DataSource.DataSet.IsEmpty ) and
      ( MessageBox( Application.ActiveFormHandle,'Удалить строки?','Внимание!',MB_YESNO + MB_ICONINFORMATION ) = ID_YES )
      then
      begin
        with DataSource.DataSet
        do
        begin
          SaveBookmark;
          DisableControls;
          try
            case ASelectionType
            of

              {$Region 'Выделены целиком строки'}
              gstRecordBookmarks:
              Begin
                For i := 0 To Selection.Rows.Count - 1
                Do
                Begin
                  Bookmark := Selection.Rows[i];
                  If Eof
                  Then
                    Break;
                  Try Delete
                  Except On E : Exception
                  Do
                    If E.ClassName = 'EAbort' Then Next
                  End;
                End;
                Selection.Clear;
              End;
              {$EndRegion 'Выделены целиком строки'}

              {$Region 'Выделена прямоугольная область'}
              gstRectangle:
              Begin
                Bookmark := Selection.Rect.TopRow;
                While True
                Do
                Begin
                  If Eof
                  Then
                    Break;
                  Try Delete
                  Except On E : Exception
                  Do
                    If E.ClassName = 'EAbort' Then Next
                  End;
                  If DataSetCompareBookmarks( DBGridEh.DataSource.DataSet,
                                              DBGridEh.DataSource.DataSet.Bookmark,
                                              Selection.Rect.BottomRow ) = 0
                  Then
                  Begin
                    Try Delete
                    Except On E : Exception
                    Do
                      If E.ClassName = 'EAbort' Then Next
                    End;
                    Break;
                  End;
                End;
                Selection.Clear;
              End;
              {$EndRegion 'Выделена прямоугольная область'}

              {$Region 'Выделены все'}
              gstAll:
              Begin
                First;
                While True
                Do
                Begin
                  Try Delete
                  Except On E : Exception
                  Do
                    If E.ClassName = 'EAbort' Then Next
                  End;
                  If Eof
                  Then
                    Break;
                End;
                Selection.Clear;
              End;
             {$EndRegion 'Выделены все'}

            End;
          Finally
            EnableControls;
          End;
        end;
      End;
      {$EndRegion 'Если выделена не одна запись'}
    end;
  end;

end.
