unit Gen_Chs_Data_Mod;

interface

uses
  System.SysUtils, System.Classes, MemTableDataEh, Data.DB, MemTableEh,
  DataDriverEh, OracleData, DynVarsEh, Oracle, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Forms, Vcl.Dialogs, Vcl.Graphics,  Winapi.Windows,
  Winapi.Messages, System.Variants,
  Vcl.Mask, DBCtrlsEh, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.ComCtrls, Vcl.Controls, Clipbrd;

type
  TDM_Gen_Chs = class(TDataModule)
    Db_Gen_Chose: TOracleDataSet;
    Driver_Gen_Chose: TDataSetDriverEh;
    MemT_Gen_Chose: TMemTableEh;
    Data_Gen_Chose: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
		/// <summary> Генерация окна выбора варианта </summary>
    /// <remarks> <para>Обязательные параметры (AsString!!!):</para>
    /// <para>'SQL' - Текст запроса для Датасета</para>
    /// <para>'Columns' - Видимые колонки ( ОБЯЗАТЕЛЬНО! Формат записи: -порядковые номер-Field-/порядковые номер-...-end-. Порядковые номер начинать с 0 ) </para>
    /// <para>'Titles' - Название колонок ( ОБЯЗАТЕЛЬНО! Формат записи: -порядковые номер-Название-/порядковые номер-...-end-. Порядковые номер начинать с 0 )</para>
    /// <para>Переменные:</para>
    /// <para>'MultiSelect'(AsBoolean) - Запись в буферный датасет </para></remarks>
    /// <param name="v_In_Params"> TDynVarsEh; <br/> Входные параметры </param>
		/// <param name="v_Buffer_DataSet"> TMemTableEh; <br/> Буферный датасет (Если параметр 'MultiSelect' = True) </param>
		/// <returns> TDynVarsEh; <br/> Все столбцы указанные в запросе в виде параметров ;  </returns>
    Function F_Gen_Chose_Form ( v_In_Params: TDynVarsEh;
                                v_Buffer_DataSet: TMemTableEh = Nil ): TDynVarsEh;
  end;

var
  DM_Gen_Chs: TDM_Gen_Chs;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Uses

Udm_Main, Gen_Chs_Form;

{ TDM_Gen_Chs }

Function TDM_Gen_Chs.F_Gen_Chose_Form( v_In_Params: TDynVarsEh;
                                       v_Buffer_DataSet: TMemTableEh = Nil ): TDynVarsEh;
var
  V_Out_Params: TDynVarsEh;
  I, j: Integer;
  v_Insert_Rec, v_Source_Rec: TMemoryRecordEh;
  New_Grid_Field: TField;
  Titles_Str, Columns_Str: String;
  Columns_Arr: TStringList;
  Titles_Arr, VariablesList: TStringList;
  V_Index: Integer;
  TempMemTableEh: TMemTableEh;
  TempOracleDataSet: TOracleDataSet;
  TempDirverEh: TDataSetDriverEh;
  TempDataSource: TDataSource;
begin
  Columns_Arr := TStringList.Create;
  Titles_Arr := TStringList.Create;
  If v_In_Params.DynVar['SQL'].IsNull
  Then
  Begin
    MessageDlg( 'Не указан текст SQL!', mtError, [mbOK], 5 );
    Abort;
  End;

  {$Region 'Определение видимых столбцов'}
  //Field - ы колонок
  If Not v_In_Params.DynVar['Columns'].IsNull
  Then
  Begin
    Columns_Str := v_In_Params.DynVar['Columns'].AsString;
    Columns_Arr.Delimiter:=';';
    Columns_Arr.StrictDelimiter:=True;
    Columns_Arr.DelimitedText:=Columns_Str;
  End;
  //Названия колонок
  If Not v_In_Params.DynVar['Titles'].IsNull
  Then
  Begin
    Titles_Str := v_In_Params.DynVar['Titles'].AsString;
    Titles_Arr.Delimiter:=';';
    Titles_Arr.StrictDelimiter:=True;
    Titles_Arr.DelimitedText:=Titles_Str;
  End;
  {$EndRegion 'Определение видимых столбцов'}

  {$Region 'Переключение в Edit-mode'}
  If Pos('ROWID',AnsiUpperCase(v_In_Params.DynVar['SQL'].AsString)) <> 0
  Then
  Begin
    With DM_Gen_Chs.Db_Gen_Chose
    Do
    Begin
      CommitOnPost := False;
      CachedUpdates := True;
    End;

    With DM_Gen_Chs.MemT_Gen_Chose
    Do
    Begin
      CachedUpdates := True;
      ReadOnly := False;
    End;
  End
  Else
  Begin
    With DM_Gen_Chs.Db_Gen_Chose
    Do
    Begin
      CommitOnPost := False;
      CachedUpdates := False;
    End;

    With DM_Gen_Chs.MemT_Gen_Chose
    Do
    Begin
      CachedUpdates := False;
      ReadOnly := True;
    End;
  End;
  {$EndRegion 'Переключение в Edit-mode'}

  {$Region 'Запуск датасетов'}
  try
    TempOracleDataSet := TOracleDataSet.Create(Self);
    VariablesList:=TStringList.Create;
    VariablesList:=Oracle.FindVariables(v_In_Params.DynVar['SQL'].AsString, False);
    for i :=0 to VariablesList.Count-1
    do
    begin
      TempOracleDataSet.DeclareVariable(VariablesList[i], otString );
      if not V_In_Params.DynVar[VariablesList[i]].IsNull
      then
      begin
        TempOracleDataSet.SetVariable(VariablesList[i], V_In_Params.DynVar[VariablesList[i]].AsString);
      end{
      else
      begin
        MessageBox(Application.Handle, PChar(Format('Укажите переменную %s', [VariablesList[i]])), 'Ошибка!Не указана переменная', MB_OK  + MB_ICONERROR);
        Exit;
      end;}
    end;

    TempOracleDataSet.SQL.Add(v_In_Params.DynVar['SQL'].AsString);
    TempOracleDataSet.Session := DM_Main.Session;
    TempDirverEh := TDataSetDriverEh.Create(Self);

    TempDirverEh.ProviderDataSet := TempOracleDataSet;

    TempMemTableEh := TMemTableEh.Create(Self);

    TempMemTableEh.DataDriver := TempDirverEh;
    TempMemTableEh.FetchAllOnOpen := True;
    TempMemTableEh.Open;

    TempDataSource := TDataSource.Create(Self);
    TempDataSource.DataSet := TempMemTableEh;
    // Формируем запрос для формы
    If TempMemTableEh.RecordCount > 1
    Then
    Begin
      {$Region 'Если больше одной строки'}
      with TForm_Gen_Chose.Create(Self)
      do
      begin
        try
          //DataModule := Self;
          if not v_In_Params.DynVar['Caption'].IsNull
          then
            Caption:=v_In_Params.DynVar['Caption'].AsString;

          Grid_List.DataSource := TempDataSource;
          Grid_List.Columns.Clear;
          With Grid_List
          Do
          Begin
            For I := 0 to Columns_Arr.Count-1
            Do
            Begin
              With Columns.Add
              Do
              Begin
                New_Grid_Field := TempOracleDataSet.FindField(Trim(Columns_Arr[i]));
                if New_Grid_Field <> Nil
                Then
                Begin
                  FieldName := New_Grid_Field.DisplayName;
                  Title.TitleButton := True;
                  Title.Caption := Trim(Titles_Arr[i]);
                  If Width >= 300
                  Then
                    Width := 300
                  Else if Width < 50
                  Then
                    Width := 50;
                End;
              End;
            End;

            if v_In_Params.DynVar['MultiSelect'].AsBoolean
            Then
            Begin
              If v_Buffer_DataSet = Nil
              Then
              Begin
                MessageDlg( 'Не указан буферный датасет!', mtError, [mbOK], 5 );
                Abort;
              End;

              If Not (gioShowRowselCheckboxesEh In IndicatorOptions)
              Then
                IndicatorOptions := IndicatorOptions + [gioShowRowselCheckBoxesEh];
            End
            Else
            Begin
              If gioShowRowselCheckboxesEh In IndicatorOptions
              Then
                IndicatorOptions := IndicatorOptions - [gioShowRowselCheckBoxesEh];
            End;

            V_Out_Params := TDynVarsEh.Create( Application );

            If (v_In_Params.DynVar[ 'CopyAllWithoutForm' ].AsBoolean)
            Then
            Begin
              For I := 0 To TempOracleDataSet.FieldCount - 1
              Do
              Begin
                V_Out_Params.DynVar[ TempOracleDataSet.Fields[i].DisplayName ].AsString := TempMemTableEh.FieldByName( TempOracleDataSet.Fields[i].DisplayName ).AsString;
              End;

              if v_Buffer_DataSet <> Nil
              Then
              Begin
                With v_Buffer_DataSet
                Do
                Begin
                  EmptyTable;
                  LoadFromDataSet( TempMemTableEh, -1, lmCopyStructureOnly, True );
                  With RecordsView.MemTableData.RecordsList
                  Do
                  Begin
                    With Grid_List
                    Do
                    Begin
                      BeginUpdate;
                      DataSource.DataSet.DisableControls;
                      For I := 0 to TMemTableEh( DataSource.DataSet ).RecordsView.Count-1
                      Do
                      Begin
                        v_Insert_Rec := NewRecord;
                        v_Source_Rec := TMemTableEh( DataSource.DataSet ).RecordsView.Rec[i];
                        For j := 0 to DataStruct.Count-1
                        Do
                          v_Insert_Rec.Value[ j, dvvValueEh ] := v_Source_Rec.Value[ j, dvvValueEh ];
                        FetchRecord( v_Insert_Rec );
                      End;
                      EndUpdate;
                      Selection.Clear;
                      DataSource.DataSet.EnableControls;
                    End;
                  End;
                End;
              End;
            End
            Else If ShowModal = mrOk
            Then
            Begin

              For I := 0 To TempOracleDataSet.FieldCount - 1
              Do
              Begin
                V_Out_Params.DynVar[ TempOracleDataSet.Fields[i].DisplayName ].AsString := TempMemTableEh.FieldByName( TempOracleDataSet.Fields[i].DisplayName ).AsString;
              End;

              {$Region 'Копирование в буфер при мультиселкте'}

              if v_In_Params.DynVar['MultiSelect'].AsBoolean
              Then
              Begin
                With v_Buffer_DataSet
                Do
                Begin
                  EmptyTable;
                  LoadFromDataSet( TempMemTableEh, -1, lmCopyStructureOnly, True );
                  With RecordsView.MemTableData.RecordsList
                  Do
                  Begin
                    With Grid_List
                    Do
                    Begin
                      BeginUpdate;
                      DataSource.DataSet.DisableControls;
                      For I := 0 to SelectedRows.Count-1
                      Do
                      Begin
                        v_Insert_Rec := NewRecord;
                        v_Source_Rec := TMemTableEh( DataSource.DataSet ).BookmarkToRec( Selection.Rows[i] );
                        For j := 0 to DataStruct.Count-1
                        Do
                          v_Insert_Rec.Value[ j, dvvValueEh ] := v_Source_Rec.Value[ j, dvvValueEh ];
                        FetchRecord( v_Insert_Rec );
                      End;
                      EndUpdate;
                      Selection.Clear;
                      DataSource.DataSet.EnableControls;
                    End;
                  End;
                End;
              End;

              {$EndRegion 'Копирование в буфер при мультиселкте'}

            End
            Else
              V_Out_Params := Nil;
          End;
        finally
          Free;
        end;
      end;
      {$EndRegion 'Если больше одной строки'}
    End
    Else If TempMemTableEh.RecordCount = 1
    Then  // Если одна
    Begin
      V_Out_Params := TDynVarsEh.Create( Application.MainForm );
      For I := 0 To TempOracleDataSet.FieldCount - 1
      Do
      Begin
        V_Out_Params.DynVar[ TempOracleDataSet.Fields[i].DisplayName ].AsString := TempMemTableEh.FieldByName( TempOracleDataSet.Fields[i].DisplayName ).AsString;
      End;

      if (v_Buffer_DataSet <> Nil)
          And (v_In_Params.DynVar['MultiSelect'].AsBoolean)
      Then
      Begin
        With v_Buffer_DataSet
        Do
        Begin
          EmptyTable;
          LoadFromDataSet( MemT_Gen_Chose, -1, lmCopyStructureOnly, True );
          With RecordsView.MemTableData.RecordsList
          Do
          Begin
            With TempMemTableEh
            Do
            Begin
              BeginUpdate;
              DisableControls;
              For I := 0 to RecordsView.Count-1
              Do
              Begin
                v_Insert_Rec := NewRecord;
                v_Source_Rec := RecordsView.Rec[i];
                For j := 0 to DataStruct.Count-1
                Do
                  v_Insert_Rec.Value[ j, dvvValueEh ] := v_Source_Rec.Value[ j, dvvValueEh ];
                FetchRecord( v_Insert_Rec );
              End;
              EndUpdate;
              EnableControls;
            End;
          End;
        End;
      End;
    End
    Else
       V_Out_Params := Nil;
  finally
    TempDataSource.Free;
    TempMemTableEh.Free;
    TempDirverEh.Free;
    TempOracleDataSet.Free;
  end;

  Result := V_Out_Params;
end;

end.
