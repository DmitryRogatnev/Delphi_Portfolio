unit Dc_Comm_FilesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ShellApi, MemTableEh, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Oracle, Vcl.Menus, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls, MemTableDataEh,
  Data.DB, DataDriverEh, OracleData, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, IdMultipartFormData, FileCtrl,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin;

type
  TForm_Dc_Comm_Files = class(TForm)
    Grid_Files: TDBGridEh;
    Pop_M_Dc_Comm_Files: TPopupMenu;
    Dlg_Open_File: TOpenDialog;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    IdHTTP1: TIdHTTP;
    ActionList1: TActionList;
    Act_Add: TAction;
    Act_AddDir: TAction;
    Act_OpenFile: TAction;
    Act_RepalceFile: TAction;
    Act_Delete: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    N4: TMenuItem;
    procedure Btn_SaveClick(Sender: TObject);
    procedure Btn_CancelClick(Sender: TObject);
    procedure Act_AddExecute(Sender: TObject);
    procedure Act_AddDirExecute(Sender: TObject);
    procedure Act_OpenFileExecute(Sender: TObject);
    procedure Act_RepalceFileExecute(Sender: TObject);
    procedure Act_DeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Vl_Id_Doc_Header: Integer;
    Vl_Id_Rw_Dc_Comm: Integer;
    Procedure P_SaveFiles;
  end;

var
  Form_Dc_Comm_Files: TForm_Dc_Comm_Files;

implementation

{$R *.dfm}
Uses
Udm_Main, Dc_Comm_MainForm, Gen_Chs_Data_Mod;

procedure TForm_Dc_Comm_Files.Act_AddDirExecute(Sender: TObject);
  var
  v_In_Dir_Params,
  v_Out_Dir_Params: TDynVarsEh;
  file_name,
  DirPath :string;
  SearchResult: TSearchRec;
begin
  SelectDirectory( 'Выберите папку для копирования', '', DirPath );
  if DirPath <> ''
  Then
  Begin
    //Запускаем форму выбора формата файла для копирования
    v_In_Dir_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Dir_Params.DynVar[ 'v_Find' ].AsString := 'DIR_EXT';
    v_In_Dir_Params.DynVar[ 'v_Keyword' ].AsString := DirPath;
    v_In_Dir_Params := Form_Main_Dc_Comm.GenSQLParamsFunction(v_In_Dir_Params);
    v_Out_Dir_Params := DM_Gen_Chs.F_Gen_Chose_Form( v_In_Dir_Params, Nil );
    if v_Out_Dir_Params <> Nil
    Then
    Begin
      //Находим все файлы с данным форматом
      If FindFirst(DirPath
                   + '\*'
                   + v_Out_Dir_Params.DynVar[ 'FILE_EXT' ].AsString,
                   faAnyFile,
                   SearchResult)=0
      Then
      Begin
        repeat
          With (Grid_Files.DataSource.DataSet as TMemTableEh)
          Do
          Begin
            Append;
            FieldByName('FILE_PATH').AsString := DirPath + '\' + searchResult.Name;
            FieldByName('FILE_NAME').AsString := SearchResult.Name;
            FieldByName('FILE_EXT').AsString := ExtractFileExt(searchResult.Name);
            FieldByName('COMM_DC_RW_ID').AsInteger := Vl_Id_Rw_Dc_Comm;
            Post;
          End;
        until FindNext(searchResult) <> 0;
        //После завершаем поиск
        FindClose(SearchResult);
      end;
    end;
  End;
end;

procedure TForm_Dc_Comm_Files.Act_AddExecute(Sender: TObject);
var
  i: Integer;
begin
  If Dlg_Open_File.Execute
  Then
  Begin
    With Grid_Files.DataSource.DataSet
    Do
    Begin
      for i := 0 to Dlg_Open_File.Files.Count-1
      do
      begin
        if Sender = Act_RepalceFile
        Then
          Edit
        Else
          Append;
        FieldByName('FILE_PATH').AsString := Dlg_Open_File.Files[i];
        FieldByName('FILE_NAME').AsString := ExtractFileName(Dlg_Open_File.Files[i]);
        FieldByName('FILE_EXT').AsString := ExtractFileExt(Dlg_Open_File.Files[i]);
        Post;
      end;
    End;
  End;
end;

procedure TForm_Dc_Comm_Files.Act_DeleteExecute(Sender: TObject);
begin
  Form_Main_Dc_Comm.P_DeleteFromDBGridEh(Grid_Files);
end;

procedure TForm_Dc_Comm_Files.Act_OpenFileExecute(Sender: TObject);
Var
  FilePath_Temp: String;
  Mem_Strm: TMemoryStream;
begin
  With Grid_Files.DataSource.DataSet as TMemTableEh
  Do
  Begin
    If (Rec.UpdateStatus = usInserted)
        Or (Rec.UpdateStatus = usModified)
    Then
    Begin
      ShellExecute(Handle,
                   Nil,
                   PWChar(FieldByName('FILE_PATH').AsString),
                   Nil,
                   Nil,
                   SW_SHOWNORMAL);
    End
    Else
    Begin
      FilePath_Temp := GetEnvironmentVariable('temp')
         + '\' + 'ALLOW_CARD_RM' + '\'
         + FieldByName('ID_RW_DC_FILE').AsString
         + FieldByName('FILE_EXT').AsString;

      If Not DirectoryExists(GetEnvironmentVariable('temp')
         + '\' + 'ALLOW_CARD_RM')
      Then
        CreateDir(GetEnvironmentVariable('temp')
         + '\' + 'ALLOW_CARD_RM');

      //Чтение Файла и копирование в temp
      if (FileExists(FilePath_Temp))
      Then
      Begin
        DeleteFile(FilePath_Temp);
      End;

      Begin
        Mem_Strm := TMemoryStream.Create;
        With TIdHTTP.Create(nil)
        Do
        Begin
          Try
            Get( 'http://websrv-01/service/GetFileAll.php?'
                  + 'file_folder=' +FieldByName('DOC_HEADER_ID').AsString
                  + '&task=ALLOW_CARD_RM'
                  + '&NewFileName=' + FieldByName('ID_RW_DC_FILE').AsString, Mem_Strm );


            Mem_Strm.SaveToFile(FilePath_Temp);
            ShellExecute(Handle,
                         Nil,
                         PWChar(FilePath_Temp),
                         Nil,
                         Nil,
                         SW_SHOWNORMAL);
          Finally
            Free;
            Mem_Strm.Free;
          End;
        End;
      End;

    End;
  End;
end;

procedure TForm_Dc_Comm_Files.Act_RepalceFileExecute(Sender: TObject);
begin
  Act_AddExecute(Sender);
end;

procedure TForm_Dc_Comm_Files.Btn_CancelClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TForm_Dc_Comm_Files.Btn_SaveClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TForm_Dc_Comm_Files.P_SaveFiles;
Var
  I: integer;
  DataPost:TIdMultiPartFormDataStream; //Чтобы размещать
begin
  With Grid_Files.DataSource.DataSet as TMemTableEh
  Do
  Begin
    Try Post Except End;
    If HasCachedChanges
    Then
    Begin
      Try
        DisableControls;
        For i := 0 to RecordsView.Count-1
        Do
        Begin
          if (RecordsView.Rec[i].UpdateStatus = usInserted)
             Or (RecordsView.Rec[i].UpdateStatus = usModified)
          Then
          Begin
            DataPost:=TIdMultiPartFormDataStream.Create;
            With DataPost
            Do
            Begin
              Try
                AddFormField('task', 'ALLOW_CARD_RM', 'utf-8').ContentTransfer := '8bit';
                AddFormField('file_folder', 
                             RecordsView.Rec[i].DataValues['DOC_HEADER_ID', dvvValueEh],
                             'utf-8').ContentTransfer := '8bit';
                AddFormField('NewFileName',
                             RecordsView.Rec[i].DataValues['ID_RW_DC_FILE', dvvValueEh],
                             'utf-8').ContentTransfer := '8bit';
                AddFile('file', 
                        RecordsView.Rec[i].DataValues['FILE_PATH', dvvValueEh], 
                        ''); //добавляем поле с файлом
                idHTTP1.Post('http://websrv-01/service/PutFileAll.php', DataPost);
              Finally
                Free;
              End;
            End;
          End;
        End;
      Finally
        EnableControls;
        ApplyUpdates(0);
        MergeChangeLog;
        DM_Main.Session.ApplyUpdates([(DataDriver as TDataSetDriverEh).ProviderDataSet], True);
        Refresh;
      End;
    End;
  End;

end;

end.
