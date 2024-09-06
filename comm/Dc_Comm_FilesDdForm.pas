unit Dc_Comm_FilesDdForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DropDownFormEh, Dialogs, DynVarsEh, ToolCtrlsEh, DBGridEhGrouping,
  DBGridEhToolCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus, ShellApi, Oracle, MemTableDataEh, Data.DB, MemTableEh,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  System.Actions, Vcl.ActnList;

type
  TDrop_D_Dc_Comm_Files = class(TCustomDropDownFormEh)
    Grid_Files: TDBGridEh;
    Dlg_Open_File: TOpenDialog;
    Q_ActionWithFile: TOracleQuery;
    ActionList1: TActionList;
    Act_OpenFile: TAction;
    IdHTTP1: TIdHTTP;
    procedure CustomDropDownFormEhInitForm(Sender: TCustomDropDownFormEh;
      DynParams: TDynVarsEh);
    procedure Act_OpenFileExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    EditState: String;
  end;

var
  Drop_D_Dc_Comm_Files: TDrop_D_Dc_Comm_Files;

implementation

{$R *.dfm}

Uses
Udm_Main, Dc_Comm_MainForm;

procedure TDrop_D_Dc_Comm_Files.Act_OpenFileExecute(Sender: TObject);
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

procedure TDrop_D_Dc_Comm_Files.CustomDropDownFormEhInitForm(
  Sender: TCustomDropDownFormEh; DynParams: TDynVarsEh);
begin
  EditState := DynParams.DynVar['EditState'].AsString;
end;

end.