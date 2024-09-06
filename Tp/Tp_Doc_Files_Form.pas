unit Tp_Doc_Files_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, OracleData, Vcl.Menus, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, EhLibMTE, ShellApi,
  MemTableDataEh, MemTableEh, DataDriverEh;

type
  TForm_Doc_Files = class(TForm)
    GRID_MAIN: TDBGridEh;
    PopupMenu1: TPopupMenu;
    N5: TMenuItem;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N2: TMenuItem;
    Db_Oper_Files: TOracleDataSet;
    Data_Oper_Files: TDataSource;
    Driver_Oper_Files: TDataSetDriverEh;
    MemT_Oper_Files: TMemTableEh;
    Db_Oper_FilesID: TFloatField;
    Db_Oper_FilesRW_VERS: TStringField;
    Db_Oper_FilesRW_STATUS: TStringField;
    Db_Oper_FilesRW_ID_OLD_VERS: TIntegerField;
    Db_Oper_FilesID_ROW_OPER: TFloatField;
    Db_Oper_FilesID_DOC_TP: TFloatField;
    Db_Oper_FilesDOC_TP_VERS_ID: TIntegerField;
    Db_Oper_FilesNAME_FILE: TStringField;
    Db_Oper_FilesCOMMENT_FILE: TStringField;
    Db_Oper_FilesRAZRAB: TIntegerField;
    Db_Oper_FilesRAZRAB_NAME: TStringField;
    Db_Oper_FilesDATAIZM: TDateTimeField;
    Db_Oper_FilesUSER_ID: TStringField;
    Db_Oper_FilesOPER_NAME: TStringField;
    MemT_Oper_FilesID: TFloatField;
    MemT_Oper_FilesRW_VERS: TStringField;
    MemT_Oper_FilesRW_STATUS: TStringField;
    MemT_Oper_FilesRW_ID_OLD_VERS: TIntegerField;
    MemT_Oper_FilesID_ROW_OPER: TFloatField;
    MemT_Oper_FilesID_DOC_TP: TFloatField;
    MemT_Oper_FilesDOC_TP_VERS_ID: TIntegerField;
    MemT_Oper_FilesNAME_FILE: TStringField;
    MemT_Oper_FilesCOMMENT_FILE: TStringField;
    MemT_Oper_FilesRAZRAB: TIntegerField;
    MemT_Oper_FilesRAZRAB_NAME: TStringField;
    MemT_Oper_FilesDATAIZM: TDateTimeField;
    MemT_Oper_FilesUSER_ID: TStringField;
    MemT_Oper_FilesOPER_NAME: TStringField;
    Db_Doc_Info: TOracleDataSet;
    Db_Doc_InfoID: TFloatField;
    Db_Doc_InfoDOC_NUM: TStringField;
    Db_Doc_InfoDOC_LITER: TStringField;
    Db_Doc_InfoDOC_TYPE: TFloatField;
    Db_Doc_InfoTP_NUM: TStringField;
    Db_Doc_InfoTP_NAME: TStringField;
    Db_Doc_InfoTP_WORK_TYPE: TFloatField;
    Db_Doc_InfoTP_WORK_TYPE_NAME: TStringField;
    Db_Doc_InfoIZD_ID: TFloatField;
    Db_Doc_InfoIZD_NAME: TStringField;
    Db_Doc_InfoIZD_TYPE: TStringField;
    Db_Doc_InfoCOMPLECT_ID: TFloatField;
    Db_Doc_InfoTP_TYPE: TFloatField;
    Db_Doc_InfoFLAG_IMP: TFloatField;
    Db_Doc_InfoDET_ID: TFloatField;
    Db_Doc_InfoDET_NUM: TStringField;
    Db_Doc_InfoDET_NAME: TStringField;
    Db_Doc_InfoDET_MAR: TStringField;
    Db_Doc_InfoCEH_ID: TFloatField;
    Db_Doc_InfoCEH_CODE: TStringField;
    Db_Doc_InfoAUTHOR_LNUM: TFloatField;
    Db_Doc_InfoAUTHOR_NAME: TStringField;
    Db_Doc_InfoDATA_REG: TDateTimeField;
    Db_Doc_InfoREASON: TStringField;
    Db_Doc_InfoCANCEL_DOC_ID: TFloatField;
    Db_Doc_InfoMAIN_DOC_ID: TFloatField;
    Db_Doc_InfoCANCEL_FLAG: TFloatField;
    Db_Doc_InfoCEH_DOCS_FLAG: TFloatField;
    Db_Doc_InfoACT_NUM: TFloatField;
    Db_Doc_InfoACT_DATE: TDateTimeField;
    Db_Doc_InfoDOC_HEADER_ID: TFloatField;
    Db_Doc_InfoEMPS_ID: TStringField;
    Db_Doc_InfoPROJECT_FLAG: TIntegerField;
    Db_Doc_InfoUSER_INSERT: TStringField;
    Db_Doc_InfoDATE_INSERT: TDateTimeField;
    Db_Doc_InfoUSER_CHANGE: TStringField;
    Db_Doc_InfoDATA_CHANGE: TDateTimeField;
    Db_Doc_InfoLINKED_DOC_ID: TFloatField;
    Db_Doc_InfoDOC_EDIT_STAT: TStringField;
    Db_Doc_InfoID_VERS: TIntegerField;
    Db_Doc_InfoID_DOC_FULL: TStringField;
    Db_Doc_InfoDATE_START_ACTION: TDateTimeField;
    Db_Doc_InfoDATE_END_ACTION: TDateTimeField;
    Db_Doc_InfoLINKED_DOC_ID_VERS: TFloatField;
    Db_Doc_InfoPARENT_DOC_ID: TIntegerField;
    Db_Doc_InfoPARENT_ID_DOC: TFloatField;
    Db_Doc_InfoPARENT_ID_VERS: TFloatField;
    Db_Doc_InfoLINKED_DOC_HEADER_ID: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
    FDocHeaderId: Integer;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; InDocHeaderId: Integer);
  end;

var
  Form_Doc_Files: TForm_Doc_Files;

implementation

{$R *.dfm}

Uses

Udm_Main, Tp_Main_Form;

constructor TForm_Doc_Files.Create(AOwner: TComponent; InDocHeaderId: Integer);
begin
  inherited Create(AOwner);
  FDocHeaderId:=InDocHeaderId;
end;

procedure TForm_Doc_Files.FormShow(Sender: TObject);
begin
  Db_Doc_Info.Close;
  Db_Doc_Info.SetVariable( 'In_Doc_Header_Id', FDocHeaderId);
  Db_Doc_Info.Open;
  MemT_Oper_Files.Close;
  MemT_Oper_Files.Open;
  Self.Caption := Format('Файлы, прикрепленные к операциям по документу %s',[Db_Doc_InfoDoc_Num.AsString]);
end;

procedure TForm_Doc_Files.N2Click(Sender: TObject);
begin
 Self.Close;
end;
procedure TForm_Doc_Files.N3Click(Sender: TObject);
begin
  if FileExists(Format('\\SERVER\ogt-tp\DLP\%s%s', [MemT_Oper_FilesID.AsString,ExtractFileExt( MemT_Oper_FilesNAME_FILE.AsString )])) then
  Begin
   if Not DirectoryExists ( 'C:\Temp\Technical_Process_Files' )
    Then
      CreateDir( 'C:\Temp\Technical_Process_Files' );

    if Not DirectoryExists (Format('C:\Temp\Technical_Process_Files\%d', [FDocHeaderId]))
    then
      CreateDir(Format('C:\Temp\Technical_Process_Files\%d', [FDocHeaderId]));

    CopyFile( PChar(Format('\\SERVER\ogt-tp\DLP\%s%s',[MemT_Oper_FilesID.AsString, ExtractFileExt(MemT_Oper_FilesNAME_FILE.AsString)])),
              PChar (Format('C:\Temp\Technical_Process_Files\%d\%s%s', [FDocHeaderId, MemT_Oper_FilesCOMMENT_FILE.AsString, ExtractFileExt(MemT_Oper_FilesNAME_FILE.AsString)])),
              False );

    ShellExecute( Self.Handle,
                  nil,
                  PChar (Format('C:\Temp\Technical_Process_Files\%d\%s%s', [FDocHeaderId, MemT_Oper_FilesCOMMENT_FILE.AsString, ExtractFileExt(MemT_Oper_FilesNAME_FILE.AsString)])),
                  nil,
                  nil,
                  SW_SHOWNORMAL );
  End;
end;

end.
