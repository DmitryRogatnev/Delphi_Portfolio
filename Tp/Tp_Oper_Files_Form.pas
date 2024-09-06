unit Tp_Oper_Files_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, OracleData, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Menus,
  ShellApi, FileCtrl, Oracle, MemTableDataEh, DataDriverEh, MemTableEh,
  Vcl.Mask, DBCtrlsEh, EhLibMTE, Tp_TechProc_DataFrame;

type
  TForm_Oper_Files = class(TForm)
    Pop_M_Oper_Files: TPopupMenu;
    Pop_M_Oper_Files_Btn_Open_File: TMenuItem;
    Pop_M_Oper_Files_Btn_Replace_File: TMenuItem;
    Pop_M_Oper_Files_Btn_Delete_File: TMenuItem;
    Main_M_Oper_Files: TMainMenu;
    Main_M_Oper_Files_Btn_File: TMenuItem;
    Main_M_Oper_Files_Btn_File_Open: TMenuItem;
    Main_M_Oper_Files_Btn_File_Replace: TMenuItem;
    Main_M_Oper_Files_Btn_File_Delete: TMenuItem;
    Main_M_Oper_Files_Btn_Save: TMenuItem;
    Main_M_Oper_Files_Btn_Exit: TMenuItem;
    OpenDialog1: TOpenDialog;
    Grid_Oper_Files: TDBGridEh;
    Panel1: TPanel;
    Lb_Copy_Status: TLabel;
    Lb_Copy_File: TLabel;
    Btn_File_Add: TButton;
    Btn_Dir_Add: TButton;
    Progress_Bar_Copying: TProgressBar;
    E_File_Path: TDBEditEh;
    procedure Btn_File_AddClick(Sender: TObject);
    procedure Btn_Dir_AddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Main_M_Oper_Files_Btn_ExitClick(Sender: TObject);
    procedure Main_M_Oper_Files_Btn_File_ReplaceClick(Sender: TObject);
    procedure Main_M_Oper_Files_Btn_File_DeleteClick(Sender: TObject);
    procedure Main_M_Oper_Files_Btn_File_OpenClick(Sender: TObject);
    procedure Main_M_Oper_Files_Btn_SaveClick(Sender: TObject);
    procedure Grid_Oper_FilesGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_File_PathEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_Is_Changed :bool;
    v_Oper_Id :Integer;
    v_Oper_Name :String;
    v_Doc_Id :Integer;
    v_Edit_Flag :Integer;
    v_Btn_Save_Pressed :Bool;
     TechProcDataFrame: TFrameData_TechProc;
  end;

var
  Form_Oper_Files: TForm_Oper_Files;

implementation

{$R *.dfm}
uses

Tp_Main_Form, Udm_Main;

procedure TForm_Oper_Files.Btn_Dir_AddClick(Sender: TObject);
  var
  v_In_Dir_Params,
  v_Out_Dir_Params: TDynVarsEh;
  file_name,
  dir_path,
  file_format,
  chosen_format :string;
  searchResult: TSearchRec;
begin
  Form_Is_Changed := True; //Ставим флаг об изменении формы
  If E_FILE_PATH.Text <> ''
  Then //Если указан путь к файлу
  begin
    //Выделяем название файла (выделяем в формате <имя_файла>.<формат_файла>)
    file_name := ExtractFileName(E_FILE_PATH.Text);
    //Для определения папки файла приводим название файла к формату <\><имя_файла>.<формат_файла>
    file_name := '\' + file_name;
    //Удаляем название файла из пути
    dir_path := StringReplace(E_FILE_PATH.Text, file_name, '', []);
  End
  Else
    SelectDirectory( 'Выберите папку для копирования','', dir_path );
  //Запускаем форму выбора формата файла для копирования
  v_In_Dir_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Dir_Params.DynVar[ 'Find' ].AsString := 'DIR_EXT';
  v_In_Dir_Params.DynVar[ 'v_Keyword' ].AsString := dir_path;
  v_Out_Dir_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Dir_Params );
  //chosen_format := File_format_chs_form.Form29.Chose_file_format(dir_path);
  if v_Out_Dir_Params <> Nil
  Then
  Begin
    //Находим все файлы с данным форматом
    if FindFirst(dir_path + '\*' + v_Out_Dir_Params.DynVar[ 'FILE_EXT' ].AsString, faAnyFile, searchResult)=0 then begin
      repeat  //Для них
        //Определяем форма файла
        file_format :=  ExtractFileExt(dir_path + '\' + searchResult.Name);
        //Определяем имя файла без формата
        file_name := StringReplace(ExtractFileName(dir_path + '\' + searchResult.Name), file_format,'',[]);
        //Добавляем инф. о файл в датасет
        Grid_Oper_Files.DataSource.DataSet.Append;
        //Путь к оригиналу файла
        Grid_Oper_Files.DataSource.DataSet.FieldByName('NAME_FILE').AsString := dir_path + '\' + searchResult.Name;
        //Название файла
        Grid_Oper_Files.DataSource.DataSet.FieldByName('COMMENT_FILE').AsString := file_name;
        //Устанавливаем флаг о том, что файл еще не на сервере
        //Сохраняем изменения
        Grid_Oper_Files.DataSource.DataSet.Post;
      until FindNext(searchResult) <> 0;
      //После завершаем поиск
      FindClose(searchResult);
      //Очищаем путь
      E_FILE_PATH.Clear;
    end;
  end
  else //Если формат не был выбран - выдаем ошибку
    MessageDlg('Не указан формат файлов для копирования!', MtError, [mbOK], 1);
end;

procedure TForm_Oper_Files.Btn_File_AddClick(Sender: TObject);
var
  file_name, file_format :string;
begin
 Form_Is_Changed := True; //Ставим флаг об изменении формы
 if E_File_Path.Text <> '' then //Если указан путь к файлу
 begin
   //Выделяем формат файла из пути
   file_format :=  ExtractFileExt(E_FILE_PATH.Text);
   //Выделяем название файл без формата
   file_name := StringReplace(ExtractFileName(E_FILE_PATH.Text),file_format,'',[]);
   //Добавляем инф. о файл в датасет
   Grid_Oper_Files.DataSource.DataSet.Append;
   //Путь к оригиналу файла
   Grid_Oper_Files.DataSource.DataSet.FieldByName('NAME_FILE').AsString := E_FILE_PATH.Text;
   //Название файла
   Grid_Oper_Files.DataSource.DataSet.FieldByName('COMMENT_FILE').AsString := file_name;
   //Сохраняем изменения
   Grid_Oper_Files.DataSource.DataSet.Post;
   //Очищаем путь файла
   E_FILE_PATH.Clear;
 end
 else //Если путь к файлу не указан выводим ошибку о том, что файл для копирования не указан
 MessageDlg('Не указан файл!', MtError, [mbOK], 1);
end;

procedure TForm_Oper_Files.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Main_M_Oper_Files_Btn_SaveClick( Main_M_Oper_Files_Btn_Exit );
end;

procedure TForm_Oper_Files.FormShow(Sender: TObject);
begin
 Grid_Oper_Files.DataSource := TechProcDataFrame.Data_Oper_Files;
 Self.Caption := 'Файлы прикрепленные к операции '
                            + TechProcDataFrame.MemT_OpersOPER_NUMBER.AsString
                            + ' '
                            + TechProcDataFrame.MemT_OpersOPER_NAME.AsString;
 E_File_Path.Clear;
 if TechProcDataFrame.Db_Doc_Info.FieldByName('DOC_EDIT_STAT').AsString = 'UNLOCK' then
 Begin
   Main_M_Oper_Files_Btn_File_Replace.Enabled := True;
   Main_M_Oper_Files_Btn_File_Delete.Enabled := True;
   Main_M_Oper_Files_Btn_Save.Enabled := True;
   Pop_M_Oper_Files_Btn_Replace_File.Enabled := True;
   Pop_M_Oper_Files_Btn_Delete_File.Enabled := True;
   Btn_File_Add.Enabled := True;
   E_File_Path.Enabled := True;
   Btn_Dir_Add.Enabled := True;
 End
 Else
 Begin
   Main_M_Oper_Files_Btn_File_Replace.Enabled := False;
   Main_M_Oper_Files_Btn_File_Delete.Enabled := False;
   Main_M_Oper_Files_Btn_Save.Enabled := False;
   Pop_M_Oper_Files_Btn_Replace_File.Enabled := False;
   Pop_M_Oper_Files_Btn_Delete_File.Enabled := False;
   Btn_File_Add.Enabled := False;
   E_File_Path.Enabled := False;
   Btn_Dir_Add.Enabled := False;
 End;
end;

procedure TForm_Oper_Files.Grid_Oper_FilesGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with TMemTableEh( TDBGridEh( Sender ).DataSource.DataSet)
  do
  begin
    If Not IsEmpty
    Then
    Begin
      If ( UpdateStatus = usModified )
          Or ( UpdateStatus = usInserted )
      Then
      Begin
        Background := clMenu;
        AFont.Color := clSilver;
      End
      Else
      Begin
        Background := clWindow;
        AFont.Color := clWindowText;
      End;

      if (FieldByName('DOC_TP_VERS_ID').AsString = TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString)
      then
      begin
         if (FieldByName('Rw_Vers').AsString = 'deleted')
        Then
        Begin
          Background := $00B5B3FF;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Vers').AsString = 'inserted')
        Then
        Begin
          Background := $00A8FFC5;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Vers').AsString = 'updated')
        Then
        Begin
          Background := $00A7EDFE;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Vers').AsString = 'old_version')
        Then
        Begin
          Background := clMenu;
          AFont.Color := clGray;
        End
        Else
        Begin
          Background := clWindow;
          AFont.Color := clWindowText;
        End;
      end;
    End;
  End;


end;

procedure TForm_Oper_Files.E_File_PathEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin 
  if OpenDialog1.Execute
  Then
  begin
    E_File_Path.Text := OpenDialog1.FileName;
  end;
end;

procedure TForm_Oper_Files.Main_M_Oper_Files_Btn_File_DeleteClick(Sender: TObject);
var buttonSelected :integer;
begin
 if ( TechProcDataFrame.MemT_Oper_FilesRAZRAB.AsInteger = Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
     Or ( Tp_Main_Form.Form_Tech_Proc_Main.User_Admin ) then
  Begin
    Form_Is_Changed := True; //Ставим флаг об изменении формы
    //Спрашиваем удалить файл или нет
    buttonSelected := MessageDlg ('Удалить файл?', mtConfirmation, mbOkCancel, 5);
    //Если ДА, то удяем строчку из датасета
    if buttonSelected = mrOk then
    Begin
      Grid_Oper_Files.DataSource.DataSet.Delete;
    End;
  End
  Else MessageDlg('Чужие файлы удалять запрещено!', MtError, [mbOK], 1);
end;

procedure TForm_Oper_Files.Main_M_Oper_Files_Btn_ExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_Oper_Files.Main_M_Oper_Files_Btn_File_OpenClick(Sender: TObject);
begin
  with Grid_Oper_Files.DataSource.DataSet as TMemTableEh
  do
  begin
    If UpdateStatus = usUnmodified
    Then
    Begin
      if FileExists( '\\SERVER\ogt-tp\DLP\'
                     + FieldByName('ID').AsString
                     + ExtractFileExt(FieldByName('NAME_FILE').AsString) )
      Then
      Begin
        If Not DirectoryExists( 'C:\Temp\Technical_Process_Files' )
        Then
          CreateDir( 'C:\Temp\Technical_Process_Files' );

        If Not DirectoryExists( 'C:\Temp\Technical_Process_Files\'
                                  + TechProcDataFrame.Db_Doc_Info.FieldByName('Doc_Header_Id').AsString )
        Then
          CreateDir( 'C:\Temp\Technical_Process_Files\'
                       + TechProcDataFrame.Db_Doc_Info.FieldByName('Doc_Header_Id').AsString );
        CopyFile( PWideChar( '\\SERVER\ogt-tp\DLP\'
                              + FieldByName('ID').AsString
                              + ExtractFileExt(FieldByName('NAME_FILE').AsString) ),
                  PWideChar( 'C:\Temp\Technical_Process_Files\'
                              +  TechProcDataFrame.Db_Doc_Info.FieldByName('Doc_Header_Id').AsString
                              + '\' + FieldByName('COMMENT_FILE').AsString
                              + ExtractFileExt(FieldByName('NAME_FILE').AsString)),
                  False );

        ShellExecute( Handle,
                      Nil,
                      PWideChar( 'C:\Temp\Technical_Process_Files\'
                                 +  TechProcDataFrame.Db_Doc_Info.FieldByName('Doc_Header_Id').AsString
                                  + '\' + FieldByName('COMMENT_FILE').AsString
                                  + ExtractFileExt(FieldByName('NAME_FILE').AsString) ),
                      Nil,
                      Nil,
                      SW_SHOWNORMAL );
      End;
    End
    Else
    Begin
      ShellExecute( handle,
                    Nil,
                    PChar( FieldByName('NAME_FILE').AsString ),
                    Nil,
                    Nil,
                    SW_SHOWNORMAL );
    End;
  end;
end;

procedure TForm_Oper_Files.Main_M_Oper_Files_Btn_File_ReplaceClick(Sender: TObject);
  var
  file_name, file_format :string;
  begin
   if ( TechProcDataFrame.MemT_Oper_FilesRAZRAB.AsInteger = Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
        Or ( Tp_Main_Form.Form_Tech_Proc_Main.User_Admin ) then
    Begin
      Form_Is_Changed := True; //Ставим флаг об изменении формы
      if OpenDialog1.Execute then //Открываем окно выбора файла
      begin
       if OpenDialog1.FileName <> '' then //Если файл был выбран
        begin
          //Выделяем формат файла
          file_format :=  ExtractFileExt(OpenDialog1.FileName);
          //Выделяем название файла без формата
          file_name := StringReplace(ExtractFileName(OpenDialog1.FileName),file_format,'',[]);
          with Grid_Oper_Files.DataSource.DataSet
          do
          begin
            //Обновляем строчку
            Edit;
            //Устанавливаем новый путь к оригиналу файла
            FieldByName('NAME_FILE').AsString := OpenDialog1.FileName;
            //Устанавливаем новое название файла
            FieldByName('COMMENT_FILE').AsString := file_name;
            //Устанавливаем дату изменения
            FieldByName('DATAIZM').AsDateTime := Now();
            Post;
          end;
        end;
      end;
    End
    Else MessageDlg('Чужие файлы заменять запрещено!', MtError, [mbOK], 1);
  end;

procedure TForm_Oper_Files.Main_M_Oper_Files_Btn_SaveClick(Sender: TObject);
var
  I: Integer;
  v_New_Id_File: Integer;
  v_File_Format: String;
  v_File_Path: String;
  Button_Select: Integer;
begin
  with Grid_Oper_Files.DataSource.DataSet as TMemTableEh
  do
  begin
    Try Post Except End;

    If HasCachedChanges
    Then
    Begin
      if Sender = Main_M_Oper_Files_Btn_Save
      Then
        Button_Select := MessageDlg('Сохранить файлы?', mtConfirmation, mbOKCancel, 5)
      Else if Sender = Main_M_Oper_Files_Btn_Exit
      Then
        Button_Select := MessageDlg('Файлы не сохранены! Сохранить файлы?', mtConfirmation, mbOKCancel, 5);
      if Button_Select = mrOk
      Then
      Begin
        Lb_Copy_Status.Caption := '';
        Lb_Copy_File.Caption := '';
        Grid_Oper_Files.SaveVertPos( 'ID' );
        DisableControls;
        Try
          Lb_Copy_Status.Visible := True;
          Lb_Copy_File.Visible := True;
          Progress_Bar_Copying.Position := 0;
          Progress_Bar_Copying.Max := RecordsView.Count;
          For i := 0 to RecordsView.Count - 1
          Do
          Begin
            If ( RecordsView.Rec[ i ].UpdateStatus = usInserted )
                Or ( RecordsView.Rec[ i ].UpdateStatus = usModified )
            Then
            Begin
              Progress_Bar_Copying.Position := i;
              If RecordsView.Rec[ i ].UpdateStatus = usInserted
              Then
                Lb_Copy_Status.Caption := 'Копирование файла:'
              Else if RecordsView.Rec[ i ].UpdateStatus = usModified
              Then
                Lb_Copy_Status.Caption := 'Обновление файла:';

              With RecordsView.Rec[ i ]
              Do
              Begin
                Lb_Copy_File.Caption := VarToStr( DataValues[ 'COMMENT_FILE', dvvValueEh ]);
                CopyFile( PChar( VarToStr(DataValues[ 'NAME_FILE', dvvValueEh ]) ),
                          PChar( '\\SERVER\ogt-tp$\DLP\'
                                  + VarToStr(DataValues[ 'ID', dvvValueEh ])
                                  + ExtractFileExt(VarToStr(DataValues[ 'NAME_FILE', dvvValueEh ])) ),
                          False );
              End;

              If GetLastError <> 0
              Then
              Begin
                MessageDlg( SysErrorMessage( GetLastError ),
                            MtError,
                            [ mbOK ],
                            1 );
              End;
            End;
          End;
        Finally
          EnableControls;
          ApplyUpdates( 0 );
          ((DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).Session.ApplyUpdates([((DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet)], True);
          Refresh;
          MergeChangeLog;
          Progress_Bar_Copying.Position := 0;
          Lb_Copy_Status.Visible := False;
          Lb_Copy_File.Visible := False;
          Grid_Oper_Files.RestoreVertPos( 'ID' );
        End;
      End
      Else if ( Button_Select = mrCancel )
               And ( Sender = Main_M_Oper_Files_Btn_Exit )
      Then
      Begin
        CancelUpdates;
      End;
    End;
  end;
end;

end.
