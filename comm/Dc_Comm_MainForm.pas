unit Dc_Comm_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB, OracleData, PrnDbgeh,
  System.ImageList, Vcl.ImgList, MemTableDataEh, MemTableEh, DataDriverEh,
  Vcl.Mask, DBCtrlsEh, Vcl.Menus, Vcl.ComCtrls, Oracle, DateUtils, PrViewEh,
  Printers, DBGridEhImpExp, DropDownFormEh, EhLibMTE, UnitDefaultFunctions, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, IdMultipartFormData;

type TCommentAction=(caAdd, caEdit, caDelete, caNone, caAnswer);

type
    TForm_Main_Dc_Comm = class(TForm)
    Panel_Comm: TPanel;
    Splitter1: TSplitter;
    Grid_Comms: TDBGridEh;
    Img_List_Dc_Comm: TImageList;
    Save_Grid: TSaveDialog;
    Print_Grid: TPrintDBGridEh;
    Db_Dc_Comms: TOracleDataSet;
    Driver_Dc_Comms: TDataSetDriverEh;
    Db_Dc_CommsID_RW_DC_COMM: TFloatField;
    Db_Dc_CommsDOC_HEADER_ID: TIntegerField;
    Db_Dc_CommsDOC_TYPE_ID: TStringField;
    Db_Dc_CommsDOC_NUMBER: TStringField;
    Db_Dc_CommsDC_COMM_RW_ID: TFloatField;
    Db_Dc_CommsCOMM_TEXT: TStringField;
    Db_Dc_CommsUSER_INSERT: TStringField;
    Db_Dc_CommsDATE_INSERT: TDateTimeField;
    Db_Dc_CommsUSER_CHANGE: TStringField;
    Db_Dc_CommsDATE_CHANGE: TDateTimeField;
    Db_Dc_CommsID_USER: TStringField;
    Db_Dc_CommsID_USER_ADD: TFloatField;
    Db_Dc_CommsDEP_ID: TIntegerField;
    Db_Dc_CommsID_EMP: TIntegerField;
    Db_Dc_CommsEMP_FIO: TStringField;
    Db_Dc_CommsEMP_NAME: TStringField;
    Db_Dc_CommsEMP_PATRONYMIC: TStringField;
    Db_Dc_CommsPROFESSION: TStringField;
    MemT_Dc_Comms: TMemTableEh;
    Data_Dc_Comms: TDataSource;
    M_Comm_Text: TDBMemoEh;
    Pop_M_Dc_Comm: TPopupMenu;
    PM_Dc_Comm_Btn_Edit: TMenuItem;
    PM_Dc_Comm_Btn_Delete: TMenuItem;
    PM_Dc_Comm_Btn_Answr: TMenuItem;
    PM_Dc_Comm_Btn_Print: TMenuItem;
    PM_Dc_Comm_Btn_Export: TMenuItem;
    StatusBar1: TStatusBar;
    Main_M_Dc_Comm: TMainMenu;
    MM_Dc_Comm_Btn_Exit: TMenuItem;
    MM_Dc_Comm_Btn_Comm_Tbl: TMenuItem;
    MM_Dc_Comm_Btn_Comm_Tbl_Print: TMenuItem;
    MM_Dc_Comm_Btn_Comm_Tbl_Export: TMenuItem;
    Timer1: TTimer;
    Q_ActionWithCom: TOracleQuery;
    Db_Dc_CommsCOMM_FILES_FLAG: TFloatField;
    Seq_Dc_Comms: TOracleQuery;
    Db_Dc_Com_Edit: TOracleDataSet;
    Db_Dc_Com_EditID_RW_DC_COMM: TFloatField;
    Db_Dc_Com_EditDOC_HEADER_ID: TIntegerField;
    Db_Dc_Com_EditDOC_TYPE_ID: TStringField;
    Db_Dc_Com_EditDOC_NUMBER: TStringField;
    Db_Dc_Com_EditDC_COMM_RW_ID: TFloatField;
    Db_Dc_Com_EditCOMM_TEXT: TStringField;
    Db_Dc_Com_EditUSER_INSERT: TStringField;
    Db_Dc_Com_EditDATE_INSERT: TDateTimeField;
    Db_Dc_Com_EditUSER_CHANGE: TStringField;
    Db_Dc_Com_EditDATE_CHANGE: TDateTimeField;
    Data_Dc_Com_Edit: TDataSource;
    MemT_Dc_Files: TMemTableEh;
    Data_Dc_Files: TDataSource;
    Driver_Dc_Files: TDataSetDriverEh;
    Db_Dc_Files: TOracleDataSet;
    Seq_Dc_Files: TOracleQuery;
    MemT_Dc_Com_Edit: TMemTableEh;
    Driver_Dc_Com_Edit: TDataSetDriverEh;
    Q_Get_Doc_Name: TOracleQuery;
    Db_Dc_FilesID_RW_DC_FILE: TFloatField;
    Db_Dc_FilesFILE_DC_RW_ID: TFloatField;
    Db_Dc_FilesDOC_HEADER_ID: TIntegerField;
    Db_Dc_FilesSOURCE_RW_ID: TFloatField;
    Db_Dc_FilesSOURCE_FLG: TStringField;
    Db_Dc_FilesOLD_RW_ID: TFloatField;
    Db_Dc_FilesPRNT_RW_ID: TFloatField;
    Db_Dc_FilesREC_VERS: TStringField;
    Db_Dc_FilesREC_STATUS: TStringField;
    Db_Dc_FilesDOC_TYPE_ID: TStringField;
    Db_Dc_FilesDOC_NUMBER: TStringField;
    Db_Dc_FilesFILE_PATH: TStringField;
    Db_Dc_FilesFILE_NAME: TStringField;
    Db_Dc_FilesFILE_EXT: TStringField;
    Db_Dc_FilesUSER_INSERT: TStringField;
    Db_Dc_FilesUSER_INSERT_ID_ADD: TIntegerField;
    Db_Dc_FilesDATE_INSERT: TDateTimeField;
    Db_Dc_FilesUSER_CHANGE: TStringField;
    Db_Dc_FilesUSER_CHANGE_ID_ADD: TIntegerField;
    Db_Dc_FilesDATE_CHANGE: TDateTimeField;
    Db_Dc_FilesUSER_INSERT_NAME: TStringField;
    Db_Dc_FilesUSER_CHANGE_NAME: TStringField;
    MemT_Dc_FilesID_RW_DC_FILE: TFloatField;
    MemT_Dc_FilesFILE_DC_RW_ID: TFloatField;
    MemT_Dc_FilesDOC_HEADER_ID: TIntegerField;
    MemT_Dc_FilesSOURCE_RW_ID: TFloatField;
    MemT_Dc_FilesSOURCE_FLG: TStringField;
    MemT_Dc_FilesOLD_RW_ID: TFloatField;
    MemT_Dc_FilesPRNT_RW_ID: TFloatField;
    MemT_Dc_FilesREC_VERS: TStringField;
    MemT_Dc_FilesREC_STATUS: TStringField;
    MemT_Dc_FilesDOC_TYPE_ID: TStringField;
    MemT_Dc_FilesDOC_NUMBER: TStringField;
    MemT_Dc_FilesFILE_PATH: TStringField;
    MemT_Dc_FilesFILE_NAME: TStringField;
    MemT_Dc_FilesFILE_EXT: TStringField;
    MemT_Dc_FilesUSER_INSERT: TStringField;
    MemT_Dc_FilesUSER_INSERT_ID_ADD: TIntegerField;
    MemT_Dc_FilesDATE_INSERT: TDateTimeField;
    MemT_Dc_FilesUSER_CHANGE: TStringField;
    MemT_Dc_FilesUSER_CHANGE_ID_ADD: TIntegerField;
    MemT_Dc_FilesDATE_CHANGE: TDateTimeField;
    MemT_Dc_FilesUSER_INSERT_NAME: TStringField;
    MemT_Dc_FilesUSER_CHANGE_NAME: TStringField;
    Db_Dc_CommsCOMM_SOURCE_FLAG: TStringField;
    MemT_Dc_CommsID_RW_DC_COMM: TFloatField;
    MemT_Dc_CommsDOC_HEADER_ID: TIntegerField;
    MemT_Dc_CommsDOC_TYPE_ID: TStringField;
    MemT_Dc_CommsDOC_NUMBER: TStringField;
    MemT_Dc_CommsDC_COMM_RW_ID: TFloatField;
    MemT_Dc_CommsCOMM_TEXT: TStringField;
    MemT_Dc_CommsUSER_INSERT: TStringField;
    MemT_Dc_CommsDATE_INSERT: TDateTimeField;
    MemT_Dc_CommsUSER_CHANGE: TStringField;
    MemT_Dc_CommsDATE_CHANGE: TDateTimeField;
    MemT_Dc_CommsID_USER: TStringField;
    MemT_Dc_CommsID_USER_ADD: TFloatField;
    MemT_Dc_CommsDEP_ID: TIntegerField;
    MemT_Dc_CommsID_EMP: TIntegerField;
    MemT_Dc_CommsEMP_FIO: TStringField;
    MemT_Dc_CommsEMP_NAME: TStringField;
    MemT_Dc_CommsEMP_PATRONYMIC: TStringField;
    MemT_Dc_CommsPROFESSION: TStringField;
    MemT_Dc_CommsCOMM_FILES_FLAG: TFloatField;
    MemT_Dc_CommsCOMM_SOURCE_FLAG: TStringField;
    Db_Dc_Com_EditCOMM_SOURCE_FLAG: TStringField;
    MemT_Dc_Com_EditID_RW_DC_COMM: TFloatField;
    MemT_Dc_Com_EditDOC_HEADER_ID: TIntegerField;
    MemT_Dc_Com_EditDOC_TYPE_ID: TStringField;
    MemT_Dc_Com_EditDOC_NUMBER: TStringField;
    MemT_Dc_Com_EditDC_COMM_RW_ID: TFloatField;
    MemT_Dc_Com_EditCOMM_TEXT: TStringField;
    MemT_Dc_Com_EditUSER_INSERT: TStringField;
    MemT_Dc_Com_EditDATE_INSERT: TDateTimeField;
    MemT_Dc_Com_EditUSER_CHANGE: TStringField;
    MemT_Dc_Com_EditDATE_CHANGE: TDateTimeField;
    MemT_Dc_Com_EditCOMM_SOURCE_FLAG: TStringField;
    IdHTTP1: TIdHTTP;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure M_Comm_TextEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure M_Comm_TextEditButtons1Click(Sender: TObject;
      var Handled: Boolean);
    procedure M_Comm_TextEnter(Sender: TObject);
    procedure MM_Dc_Comm_Btn_ExitClick(Sender: TObject);
    procedure Pop_M_Dc_CommPopup(Sender: TObject);
    procedure MM_Dc_Comm_Btn_Comm_Tbl_PrintClick(Sender: TObject);
    procedure MM_Dc_Comm_Btn_Comm_Tbl_ExportClick(Sender: TObject);
    procedure PM_Dc_Comm_Btn_EditClick(Sender: TObject);
    procedure PM_Dc_Comm_Btn_AnswrClick(Sender: TObject);
    procedure M_Comm_TextKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PM_Dc_Comm_Btn_DeleteClick(Sender: TObject);
    procedure Grid_CommsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Grid_CommsColumns0CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure M_Comm_TextOpenDropDownForm(EditControl: TControl;
      Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure M_Comm_TextEditButtons2Click(Sender: TObject;
      var Handled: Boolean);
    procedure MemT_Dc_FilesNewRecord(DataSet: TDataSet);
    procedure Grid_CommsEnter(Sender: TObject);
    procedure MemT_Dc_Com_EditNewRecord(DataSet: TDataSet);
    procedure Grid_CommsColumns0CellButtons0GetEnabledState(
      Grid: TCustomDBGridEh; Column: TColumnEh; CellButton: TDBGridCellButtonEh;
      var ButtonEnabled: Boolean);
    procedure Grid_CommsColumns0CellButtons0Draw(Grid: TCustomDBGridEh;
      Column: TColumnEh; CellButton: TDBGridCellButtonEh; Canvas: TCanvas; Cell,
      AreaCell: TGridCoord; const ARect: TRect;
      ButtonDrawParams: TCellButtonDrawParamsEh; var Handled: Boolean);
    procedure M_Comm_TextExit(Sender: TObject);
  private
    { Private declarations }
    FDocHeaderId: Integer;
    FCommentAction: TCommentAction;
    FGenSQLParams:TFunctionGenSQLParams;
    //procedure SetGenSQLFunction(const Value: TGenSQLParams);
  public
    { Public declarations }
    UserAdmin: Bool;
    Vl_Doc_Type_Id: String;
    constructor Create(AOwner:TComponent; InDocHeaderId: Integer);
    Procedure P_ActionWithComm(Id_Comm: Integer = 0);
    /// <summary> Удаление строк в DbGridEh </summary>
    /// <param name="DBGridEh"> TDBGridEh; </param>
    Procedure P_DeleteFromDBGridEh(DBGridEh: TDBGridEh);
    property GenSQLParamsFunction: TFunctionGenSQLParams read FGenSQLParams write FGenSQLParams;
    function f_GenSQLParams(InParams: TDynVarsEh): TDynVarsEh;
    function f_ConverCommentActionToString(InAction: TCommentAction): String;
    procedure p_SaveFiles;
  end;

var
  Form_Main_Dc_Comm: TForm_Main_Dc_Comm;

implementation

{$R *.dfm}

Uses
Udm_Main, Dc_Comm_FilesForm, Dc_Comm_FilesDdForm;

constructor TForm_Main_Dc_Comm.Create(AOwner: TComponent;
  InDocHeaderId: Integer);
begin
  inherited Create(AOwner);
  FDocHeaderId:=InDocHeaderId;
  Self.Caption:=String.Empty;
end;

procedure TForm_Main_Dc_Comm.FormShow(Sender: TObject);
begin
  Db_Dc_Comms.SetVariable(0, FDocHeaderId);
  MemT_Dc_Comms.Active:=True;

  With MemT_Dc_Files
  Do
  Begin
    MasterSource := Grid_Comms.DataSource;
    MasterFields := 'ID_RW_DC_COMM; COMM_SOURCE_FLAG';
    DetailFields := 'SOURCE_RW_ID; SOURCE_FLG';
  End;

  Db_Dc_Files.SetVariable(0, FDocHeaderId);
  MemT_Dc_Files.Active:=True;

  MemT_Dc_Com_Edit.Active:=True;

  Q_Get_Doc_Name.SetVariable('In_Doc_Type_Id', Vl_Doc_Type_Id);
  Q_Get_Doc_Name.Execute;
  if Caption=''
  then
    Caption := Application.MainForm.Caption {Q_Get_Doc_Name.GetVariable(0)} + '. Комментарии';
  Self.Grid_Comms.SetFocus;
end;

function TForm_Main_Dc_Comm.f_ConverCommentActionToString(
  InAction: TCommentAction): String;
begin
  case InAction
  of
    caAdd: Result:='Добавление комментария';
    caEdit: Result:='Редактирование комментария';
    caDelete: Result:='Удаление комментария';
    caAnswer: Result:='Ответ на комменатрий';
    caNone: Result:=String.Empty;
  end;
end;

function TForm_Main_Dc_Comm.f_GenSQLParams(InParams: TDynVarsEh): TDynVarsEh;
begin
  if Assigned(FGenSQLParams)
  then
    Result:=FGenSQLParams(InParams)
  else
    Result:=DefaultFunctionGenSQLParams(InParams);
end;

procedure TForm_Main_Dc_Comm.Grid_CommsColumns0CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
 { If Form_Dc_Comm_Files.ShowModal = mrOk
  Then
    Form_Dc_Comm_Files.P_SaveFiles;  }
  with TForm_Dc_Comm_Files.Create(Self)
  do
  begin
    try
      Grid_Files.DataSource:=Self.Data_Dc_Files;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TForm_Main_Dc_Comm.Grid_CommsColumns0CellButtons0Draw(
  Grid: TCustomDBGridEh; Column: TColumnEh; CellButton: TDBGridCellButtonEh;
  Canvas: TCanvas; Cell, AreaCell: TGridCoord; const ARect: TRect;
  ButtonDrawParams: TCellButtonDrawParamsEh; var Handled: Boolean);
begin
  With Grid.DataSource.DataSet
  Do
  Begin
    If FieldByName('COMM_FILES_FLAG').AsInteger = 0
    Then
      ButtonDrawParams.Transparency := 100 // {CellButton.Visible} := False
    Else if FieldByName('COMM_FILES_FLAG').AsInteger = 1
    Then
      ButtonDrawParams.Transparency := 0; //} {CellButton.Visible} := True;
  End;
end;

procedure TForm_Main_Dc_Comm.Grid_CommsColumns0CellButtons0GetEnabledState(
  Grid: TCustomDBGridEh; Column: TColumnEh; CellButton: TDBGridCellButtonEh;
  var ButtonEnabled: Boolean);
begin
  With Grid.DataSource.DataSet
  Do
  Begin
    If FieldByName('COMM_FILES_FLAG').AsInteger = 0
    Then
      ButtonEnabled {CellButton.Visible} := False
    Else if FieldByName('COMM_FILES_FLAG').AsInteger = 1
    Then
      ButtonEnabled {CellButton.Visible} := True;
  End;
end;

procedure TForm_Main_Dc_Comm.Grid_CommsEnter(Sender: TObject);
begin
  With MemT_Dc_Files
  Do
  Begin
    MasterSource := Grid_Comms.DataSource;
    MasterFields := 'ID_RW_DC_COMM; COMM_SOURCE_FLAG';
    DetailFields := 'SOURCE_RW_ID; SOURCE_FLG';
  End;
end;

procedure TForm_Main_Dc_Comm.Grid_CommsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  With (Sender as TDBGridEh).DataSource.DataSet as TMemTableEh
  Do
  Begin
    if Not IsEmpty
    Then
    Begin
      if TreeNodeLevel Mod 2 = 0
      Then
        Background := clMenu;
    End;
  End;
end;

procedure TForm_Main_Dc_Comm.MemT_Dc_Com_EditNewRecord(DataSet: TDataSet);
begin
  With (Self.Grid_Comms.DataSource.DataSet as TMemTableEh)
  Do
  Begin
    DataSet.FieldByName('Doc_Header_Id').AsInteger := FDocHeaderId;
    if FCommentAction=caAnswer
    Then
    Begin
      DataSet.FieldByName('DC_COMM_RW_ID').AsString := FieldByName('Id_Rw_Dc_Comm').AsString;
    End;
    Seq_Dc_Comms.Execute;
    DataSet.FieldByName('ID_RW_DC_COMM').AsInteger := Seq_Dc_Comms.FieldAsInteger(0);
    DataSet.FieldByName('COMM_SOURCE_FLAG').AsString:='comm';
  End;
end;

procedure TForm_Main_Dc_Comm.MemT_Dc_FilesNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('Doc_Header_Id').AsInteger := FDocHeaderId;
    Seq_Dc_Files.Execute;
    FieldByName('ID_RW_DC_FILE').AsInteger := Seq_Dc_Files.FieldAsInteger(0);
    FieldByName('SOURCE_RW_ID').AsInteger := (DataSet as TMemTableEh).MasterSource.DataSet.FieldByName('ID_RW_DC_COMM').AsInteger;
  End;
end;

procedure TForm_Main_Dc_Comm.MM_Dc_Comm_Btn_Comm_Tbl_ExportClick(
  Sender: TObject);

var
  ExpClass: TDBGridEhExportClass;
  Ext: String;
  Grid_To_Export: TDBGridEh;
begin
  Grid_To_Export := Grid_Comms;
  Save_Grid.FileName := Form_Main_Dc_Comm.Caption;
  If Save_Grid.Execute
  Then
  Begin

    {$Region 'Выбор формата'}
    Case Save_Grid.FilterIndex
    Of
      1:
      Begin
        ExpClass:= TDBGridEhExportAsText;
        Ext:= '.txt';
      End;
      2:
      Begin
        ExpClass:= TDBGridEhExportAsCSV;
        Ext:= '.csv';
      End;
      3:
      Begin
        ExpClass:= TDBGridEhExportAsHTML;
        Ext:= '.htm';
      End;
      4:
      Begin
        ExpClass:= TDBGridEhExportAsXlsx ;
        Ext:= '.xlsx';
      End;
      Else
      Begin
        ExpClass:= nil;
        Ext:= '';
      End;
    end;
    {$EndRegion 'Выбор формата'}

    If ExpClass <> nil then
    Begin
      If Not AnsiSameText( Copy( Save_Grid.FileName , Length( Save_Grid.FileName )-2, 3 ), Ext )
      Then
      Begin
        Save_Grid.FileName := Save_Grid.FileName + Ext;
        SaveDBGridEhToExportFile( ExpClass,
                                  Grid_To_Export,
                                  Save_Grid.FileName,
                                  True );
      End;
    End;
  End;
end;

procedure TForm_Main_Dc_Comm.MM_Dc_Comm_Btn_Comm_Tbl_PrintClick(
  Sender: TObject);
begin
  PrinterPreview.Orientation := poLandscape;
  Print_Grid.DBGridEh := Grid_Comms;
  Print_Grid.PageHeader.LeftText.Clear;
  Print_Grid.PageHeader.RightText.Clear;
  Print_Grid.PageHeader.LeftText.Add(Form_Main_Dc_Comm.Caption);
  Print_Grid.Preview;
end;

procedure TForm_Main_Dc_Comm.MM_Dc_Comm_Btn_ExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_Main_Dc_Comm.M_Comm_TextEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  If M_Comm_Text.Text = ''
  Then
  Begin
    If (Data_Dc_Files.DataSet as TMemTableEh).RecordsView.Count = 0
    Then
    Begin
      MessageDlg('Пустой комментарий! Добавьте текст или вложение!', mtError, [mbOK], 5);
      Exit;
    End
    Else
      M_Comm_Text.Text := 'См. вложение к комментарию.';
  End;

  if FCommentAction in [caAnswer, caEdit]
  then
    P_ActionWithComm(Grid_Comms.DataSource.DataSet.FieldByName('Id_Rw_Dc_Comm').AsInteger)
  else
    P_ActionWithComm;
end;

procedure TForm_Main_Dc_Comm.M_Comm_TextEditButtons1Click(Sender: TObject;
  var Handled: Boolean); 
Var
  Vl_Sql_Text: String;
begin
  if FCommentAction In [caEdit, caAnswer]
  Then
  Begin
    Grid_Comms.DataSource.DataSet.EnableControls;
    Grid_Comms.Enabled := True;
  End;
  StatusBar1.Panels[0].Text := '';
  StatusBar1.Panels[1].Text := ''; 
  MemT_Dc_Com_Edit.Close;
  Vl_Sql_Text := Copy( AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text),
                       0,
                       Pos('/*FILTER*/', AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text))-1 )
                 + '/*FILTER*/ (1=0) ';
  Db_Dc_Com_Edit.SQL.Clear;
  Db_Dc_Com_Edit.SQL.Add(Vl_Sql_Text);
  MemT_Dc_Com_Edit.Open;
end;

procedure TForm_Main_Dc_Comm.M_Comm_TextEditButtons2Click(Sender: TObject;
  var Handled: Boolean);
begin
  If M_Comm_Text.Text = ''
  Then
    M_Comm_Text.DataSource.DataSet.Append;
  with TForm_Dc_Comm_Files.Create(Self)
  do
  begin
    try
      Grid_Files.DataSource:=Self.Data_Dc_Files;
      ShowModal;
    finally
      Free;
    end;
  end;
  //Form_Dc_Comm_Files.ShowModal;
end;

procedure TForm_Main_Dc_Comm.M_Comm_TextEnter(Sender: TObject);
begin
  if FCommentAction=caNone
  Then
  begin
    FCommentAction:=caAdd;
    StatusBar1.Panels[0].Text := f_ConverCommentActionToString(FCommentAction);
  end;

  With MemT_Dc_Files
  Do
  Begin
    MasterSource := M_Comm_Text.DataSource;
    MasterFields := 'ID_RW_DC_COMM; COMM_SOURCE_FLAG';
    DetailFields := 'SOURCE_RW_ID; SOURCE_FLG';
  End;
end;

procedure TForm_Main_Dc_Comm.M_Comm_TextExit(Sender: TObject);
begin
  if FCommentAction<>caNone
  Then
  begin
    FCommentAction:=caNone;
    StatusBar1.Panels[0].Text := f_ConverCommentActionToString(FCommentAction);
  end;
end;

procedure TForm_Main_Dc_Comm.M_Comm_TextKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_RETURN
  Then
  Begin
    If FCommentAction in [caEdit, caAnswer]
    Then
      P_ActionWithComm(Grid_Comms.DataSource.DataSet.FieldByName('Id_Rw_Dc_Comm').AsInteger)
    else
      P_ActionWithComm;
  End;
end;

procedure TForm_Main_Dc_Comm.M_Comm_TextOpenDropDownForm(EditControl: TControl;
  Button: TEditButtonEh; var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar['EditState'].AsString := 'DropDown';
end;

procedure TForm_Main_Dc_Comm.PM_Dc_Comm_Btn_AnswrClick(Sender: TObject);
Var
  Vl_Sql_Text: String;
begin
  FCommentAction:=caAnswer;
  StatusBar1.Panels[0].Text := f_ConverCommentActionToString(FCommentAction);
  StatusBar1.Panels[1].Text := Grid_Comms.DataSource.DataSet.FieldByName('EMP_FIO').AsString
                               + ' от ' + Grid_Comms.DataSource.DataSet.FieldByName('DATE_INSERT').AsString;
  Grid_Comms.DataSource.DataSet.DisableControls;
  Grid_Comms.Enabled := False;
  MemT_Dc_Com_Edit.Close;
  Vl_Sql_Text := Copy( AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text),
                       0,
                       Pos('/*FILTER*/', AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text))-1 )
                 + '/*FILTER*/ (1=0) ';
  Db_Dc_Com_Edit.SQL.Clear;
  Db_Dc_Com_Edit.SQL.Add(Vl_Sql_Text);
  MemT_Dc_Com_Edit.Open;
  M_Comm_Text.SetFocus;
  M_Comm_Text.Text := Grid_Comms.DataSource.DataSet.FieldByName('EMP_NAME').AsString
                      + ' ' + Grid_Comms.DataSource.DataSet.FieldByName('EMP_PATRONYMIC').AsString
                      + ', ';
end;

procedure TForm_Main_Dc_Comm.PM_Dc_Comm_Btn_DeleteClick(Sender: TObject);
Var
  Vl_Sql_Text: String;
begin
  With CreateMessageDialog( 'Удалить комментарий?',
                                mtConfirmation,
                                mbYesNo )
  Do
  Try
    TButton( FindComponent( 'Yes' ) ).Caption := 'Да';
    TButton( FindComponent( 'No' ) ).Caption := 'Нет';
    Case ShowModal
    Of
      mrYes:
      Begin
        FCommentAction:=caDelete;
        MemT_Dc_Com_Edit.Close;
        Vl_Sql_Text := Copy( AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text),
                             0,
                             Pos('/*FILTER*/', AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text))-1 )
                       + '/*FILTER*/ Id_Rw_Dc_Comm = '
                       + Grid_Comms.DataSource.DataSet.FieldByName('ID_RW_DC_COMM').AsString;
        Db_Dc_Com_Edit.SQL.Clear;
        Db_Dc_Com_Edit.SQL.Add(Vl_Sql_Text);
        MemT_Dc_Com_Edit.Open;
        MemT_Dc_Com_Edit.Delete;
        P_ActionWithComm;
      End;
    End;
  Finally
    Free;
  End;
end;

procedure TForm_Main_Dc_Comm.PM_Dc_Comm_Btn_EditClick(Sender: TObject);
Var
  Vl_Sql_Text: String;
begin
  FCommentAction:=caEdit;
  StatusBar1.Panels[0].Text := f_ConverCommentActionToString(FCommentAction);
  StatusBar1.Panels[1].Text := Grid_Comms.DataSource.DataSet.FieldByName('EMP_FIO').AsString
                               + ' от ' + Grid_Comms.DataSource.DataSet.FieldByName('DATE_INSERT').AsString; 
  Grid_Comms.DataSource.DataSet.DisableControls;
  Grid_Comms.Enabled := False;
  MemT_Dc_Com_Edit.Close;
  Vl_Sql_Text := Copy( AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text),
                       0,
                       Pos('/*FILTER*/', AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text))-1 )
                 + '/*FILTER*/ Id_Rw_Dc_Comm = '
                 + Grid_Comms.DataSource.DataSet.FieldByName('ID_RW_DC_COMM').AsString;   
  Db_Dc_Com_Edit.SQL.Clear;
  Db_Dc_Com_Edit.SQL.Add(Vl_Sql_Text);
  MemT_Dc_Com_Edit.Open;
  M_Comm_Text.SetFocus;
end;

procedure TForm_Main_Dc_Comm.Pop_M_Dc_CommPopup(Sender: TObject);
begin
  With Grid_Comms.DataSource.DataSet
  Do
  Begin
    If IsEmpty
    Then
    Begin
      PM_Dc_Comm_Btn_Edit.Visible := False;
      PM_Dc_Comm_Btn_Answr.Visible := False;
      PM_Dc_Comm_Btn_Delete.Visible := False;
    End
    Else
    Begin
      PM_Dc_Comm_Btn_Edit.Visible := True;
      PM_Dc_Comm_Btn_Answr.Visible := True;
      PM_Dc_Comm_Btn_Delete.Visible := True;

      If Not UserAdmin
      Then
      Begin
        If (FieldByName('USER_INSERT').AsString <> DM_Main.Session.LogonUsername)
             Or ((FieldByName('USER_INSERT').AsString = DM_Main.Session.LogonUsername)
                 And (DaysBetween(Now(), FieldByName('Date_Insert').AsDateTime)> 1))
        Then
        Begin
          PM_Dc_Comm_Btn_Edit.Enabled := False;
          PM_Dc_Comm_Btn_Delete.Enabled := False;
        End
        Else
        Begin
          PM_Dc_Comm_Btn_Edit.Enabled := True;
          PM_Dc_Comm_Btn_Delete.Enabled := True;
        End;
      End;
    End;
  End;

end;

procedure TForm_Main_Dc_Comm.P_ActionWithComm(Id_Comm: Integer);
Var
  Vl_Sql_Text: String;
begin
  Try MemT_Dc_Com_Edit.Post; Except End;
  MemT_Dc_Com_Edit.ApplyUpdates(0);
  if (Db_Dc_Com_Edit.UpdatesPending)
      Or (MemT_Dc_Files.HasCachedChanges)
  Then
  Begin
    Try
      Db_Dc_Com_Edit.Session.ApplyUpdates([Db_Dc_Com_Edit], True);
      P_SaveFiles;
    Finally
      StatusBar1.Panels[0].Text := '';
      StatusBar1.Panels[1].Text := '';
      MemT_Dc_Com_Edit.Close;
      Vl_Sql_Text := Copy( AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text),
                           0,
                           Pos('/*FILTER*/', AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text))-1 )
                     + '/*FILTER*/ (1=0) ';

      Db_Dc_Com_Edit.SQL.Clear;
      Db_Dc_Com_Edit.SQL.Add(Vl_Sql_Text);
      MemT_Dc_Com_Edit.Open;
      If FCommentAction in [caAdd, caDelete]
      Then
        Grid_Comms.DataSource.DataSet.Refresh
      Else if FCommentAction in [caEdit, caAnswer]
      Then
      Begin
        Grid_Comms.DataSource.DataSet.EnableControls;
        Grid_Comms.Enabled := True;
        Grid_Comms.SaveVertPos('ID_RW_DC_COMM');
        Grid_Comms.DataSource.DataSet.Refresh;
        Grid_Comms.RestoreVertPos('ID_RW_DC_COMM');
      End;
    End;
  End
  Else
  Begin
    StatusBar1.Panels[0].Text := '';
    StatusBar1.Panels[1].Text := '';
    MemT_Dc_Com_Edit.Close;
    Vl_Sql_Text := Copy( AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text),
                         0,
                         Pos('/*FILTER*/', AnsiUpperCase(Db_Dc_Com_Edit.SQL.Text))-1 )
                   + '/*FILTER*/ (1=0) ';

    Db_Dc_Com_Edit.SQL.Clear;
    Db_Dc_Com_Edit.SQL.Add(Vl_Sql_Text);
    MemT_Dc_Com_Edit.Open;
    if FCommentAction in [caEdit, caAnswer]
    Then
    Begin
      Grid_Comms.DataSource.DataSet.EnableControls;
      Grid_Comms.Enabled := True;
    End;
  End;
  Grid_Comms.SetFocus;
  FCommentAction:=caNone;
end;

procedure TForm_Main_Dc_Comm.P_DeleteFromDBGridEh(DBGridEh: TDBGridEh);
Var
    i: Integer;
    ASelectionType: TDBGridEhSelectionType;
Begin
  With DBGridEh Do
  Begin
    ASelectionType := Selection.SelectionType;

    {$Region 'Если выделена одна запись, то ASelectionType = gstNon'}
    if ( ASelectionType = gstNon ) and
       ( not DataSource.DataSet.IsEmpty ) and
       ( MessageBox( Application.ActiveFormHandle,'Удалить строку?','Внимание!',MB_YESNO  + MB_ICONINFORMATION ) = ID_YES )
    then
    begin
      DataSource.DataSet.Delete;
      Exit;
    end
    {$EndRegion 'Если выделена одна запись, то ASelectionType = gstNon'}

    {$Region 'Если выделена не одна запись'}
    Else if ( ASelectionType <> gstNon ) and
    ( not DataSource.DataSet.IsEmpty ) and
    ( MessageBox( Application.ActiveFormHandle,'Удалить строки?','Внимание!',MB_YESNO + MB_ICONINFORMATION ) = ID_YES )
    Then
    Begin
      With DataSource.DataSet
      Do
      begin
        SaveBookmark;
        DisableControls;
        Try
          Case ASelectionType
          Of

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

procedure TForm_Main_Dc_Comm.p_SaveFiles;
Var
  I: integer;
  DataPost:TIdMultiPartFormDataStream; //Чтобы размещать
begin
  With MemT_Dc_Files
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

procedure TForm_Main_Dc_Comm.Timer1Timer(Sender: TObject);
begin
  If DM_Main.Vg_Booted
  Then
  Begin
    Timer1.Enabled := False;

    {Q_Get_Caption.SetVariable('Id_Doc_Header', '9564');
    Q_Get_Caption.Execute;

    Caption := Q_Get_Caption.GetVariable(0) + '. Комментарии';}
  End
  Else
    Exit;

end;

end.
