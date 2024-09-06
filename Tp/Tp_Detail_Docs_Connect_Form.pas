unit Tp_Detail_Docs_Connect_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, Vcl.DBCtrls,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh, Data.DB, OracleData,
  Oracle, MemTableDataEh, DataDriverEh, MemTableEh, EhLibMTE,
  Tp_Copy_Detail_For_Det_Doc_Form,
  Tp_Copy_Oper_For_Det_Doc_Form,
  Tp_Detail_Doc_Det_Param_Form,
  Tp_Detail_Doc_Oper_Param_Form, Vcl.ExtCtrls, DBVertGridsEh, Vcl.WinXCtrls, Tp_Setup_Time_Calc,
  Vcl.ComCtrls;

type
  TForm_Tp_Connected_Details = class(TForm)
    Main_M_Tp_Connected_Details: TMainMenu;
    Main_M_Tp_Connected_Details_Btn_Doc: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Exit: TMenuItem;
    Pop_M_Doc_Details: TPopupMenu;
    Pop_M_Doc_Details_Btn_Add_Det: TMenuItem;
    Pop_M_Doc_Details_Btn_Delete: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Save: TMenuItem;
    Pop_M_Operations: TPopupMenu;
    Pop_M_Operations_Btn_Add_Opers: TMenuItem;
    Pop_M_Operations_Btn_Delete_Opers: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Doc_Vtp: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Doc_Vtp_See: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export_PDF: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export_Excel: TMenuItem;
    Pop_M_Operations_Btn_Opers_Params: TMenuItem;
    Pop_M_Doc_Details_Btn_Det_Params: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Copy_Opers_From_Chem_Cover: TMenuItem;
    Pop_M_Operations_Btn_Copy_Opers: TMenuItem;
    Pop_M_Operations_Btn_Paste_Opers: TMenuItem;
    Panel_Doc_Items: TPanel;
    Panel_Doc_Items_Opers: TPanel;
    Group_Doc_Items_Det: TGroupBox;
    DBGrid_Details: TDBGridEh;
    Group_Doc_Items_Opers: TGroupBox;
    DBGrid_Operations: TDBGridEh;
    E_Oper_Prim: TDBEditEh;
    E_OPER_AUTHOR_NAME: TDBEditEh;
    E_OPER_DATA_CHANGE: TDBEditEh;
    Btn_Hide_Det_Params: TButton;
    Btn_Hide_Oper_Params: TButton;
    Pop_M_Operations_Btn_Oper_Time: TMenuItem;
    Splitter3: TSplitter;
    Panel_Doc_Items_Oper_Params: TPanel;
    GB_NORMA_TIME: TGroupBox;
    Grid_Time_Norms: TDBVertGridEh;
    GroupBox4: TGroupBox;
    VGrid_Oper_Params: TDBVertGridEh;
    Splitter4: TSplitter;
    VGrid_Det_Params: TDBVertGridEh;
    Q_Get_Det_Norm_Trud: TOracleQuery;
    Splitter1: TSplitter;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Main_M_Tp_Connected_Details_Btn_Doc_Det: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Doc_Det_See: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Doc_Det_Export: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_Excel: TMenuItem;
    Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_Pdf: TMenuItem;
    Db_Operations_Temp: TOracleDataSet;
    Db_Operations_TempID_ROW_OPER: TFloatField;
    Db_Operations_TempROW_NUM_GEN: TStringField;
    Db_Operations_TempPRIM: TStringField;
    Db_Operations_TempOPER_NAME: TStringField;
    Db_Operations_TempOPER_IOT: TStringField;
    Db_Operations_TempCEH_ID: TFloatField;
    Db_Operations_TempCEH_CODE: TStringField;
    Db_Operations_TempOPER_OBOR_EN: TFloatField;
    Db_Operations_TempOPER_OBOR_TIME_PZ: TFloatField;
    Db_Operations_TempOPER_OBOR_TIME_SH: TFloatField;
    Db_Operations_TempOBOR_ID: TFloatField;
    Db_Operations_TempOBOR_NAME: TStringField;
    Db_Operations_TempPROF_CODE: TFloatField;
    Db_Operations_TempENVIRON: TStringField;
    Db_Operations_TempHARDNESS: TStringField;
    Db_Operations_TempT_MIN: TFloatField;
    Db_Operations_TempT_MAX: TFloatField;
    Db_Operations_TempTIME_MIN: TFloatField;
    Db_Operations_TempTIME_MAX: TFloatField;
    Db_Operations_TempTIME_EDIZM: TStringField;
    Db_Operations_TempTIME_EDIZM_NAME: TStringField;
    Db_Operations_TempOPER_KOID: TFloatField;
    Db_Operations_TempOPER_KUP: TFloatField;
    Db_Operations_TempOPER_PPPD: TFloatField;
    Db_Operations_TempOPER_OPPP_DET: TFloatField;
    Db_Operations_TempOPER_KDP: TFloatField;
    Db_Operations_TempOPER_KDA: TFloatField;
    Db_Operations_TempOPER_KSL: TFloatField;
    Db_Operations_TempOPER_TOLSCH: TFloatField;
    Db_Operations_TempOPER_CHS_PARAMS: TStringField;
    Db_Operations_TempOPER_COLOR_ID: TFloatField;
    Db_Operations_TempCOLOR_NAME: TStringField;
    Db_Operations_TempOPER_COUNT_INS: TFloatField;
    Db_Operations_TempOPER_TOLSCH_RANGE: TStringField;
    Db_Details_Temp: TOracleDataSet;
    Db_Details_TempID_ROW: TFloatField;
    Db_Details_TempDET_ID: TFloatField;
    Db_Details_TempDET_NUM: TStringField;
    Db_Details_TempDET_NAME: TStringField;
    Db_Details_TempDET_MAT_ID: TFloatField;
    Db_Details_TempDET_MAT_NAME: TStringField;
    Db_Details_TempDET_MASS: TFloatField;
    Db_Details_TempDIFC_GROUP: TFloatField;
    Db_Details_TempDET_EV_ID: TFloatField;
    Db_Details_TempDET_EV_NAME: TStringField;
    procedure Main_M_Tp_Connected_Details_Btn_ExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Pop_M_Doc_Details_Btn_Add_DetClick(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure Pop_M_Operations_Btn_Add_OpersClick(Sender: TObject);
    procedure Pop_M_Doc_Details_Btn_DeleteClick(Sender: TObject);
    procedure Pop_M_Operations_Btn_Delete_OpersClick(Sender: TObject);
    procedure Pop_M_Doc_DetailsPopup(Sender: TObject);
    procedure Pop_M_OperationsPopup(Sender: TObject);
    procedure Main_M_Tp_Connected_Details_Btn_Doc_Vtp_SeeClick(Sender: TObject);
    procedure Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export_PDFClick(Sender: TObject);
    procedure Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export_ExcelClick(Sender: TObject);
    procedure Main_M_Tp_Connected_Details_Btn_SaveClick(Sender: TObject);
    procedure Pop_M_Detail_Docs_Btn_VTP_Cancel_DocClick(Sender: TObject);
    procedure E_Oper_PrimDblClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Pop_M_Operations_Btn_Opers_ParamsClick(Sender: TObject);
    procedure Pop_M_Doc_Details_Btn_Det_ParamsClick(Sender: TObject);
    procedure Main_M_Tp_Connected_Details_Btn_Copy_Opers_From_Chem_CoverClick(Sender: TObject);
    procedure MemT_Doc_DetailsBeforeDelete(DataSet: TDataSet);
    procedure Pop_M_Operations_Btn_Copy_OpersClick(Sender: TObject);
    procedure Pop_M_Operations_Btn_Paste_OpersClick(Sender: TObject);
    procedure DBGrid_DocsColumns6OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Btn_Hide_Det_ParamsClick(Sender: TObject);
    procedure Pop_M_Operations_Btn_Oper_TimeClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure VGrid_Det_ParamsRows0UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure VGrid_Det_ParamsRows0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure VGrid_Oper_ParamsRows0UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure VGrid_Oper_ParamsRows9UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure VGrid_Oper_ParamsRows11UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure VGrid_Oper_ParamsRows12UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure VGrid_Oper_ParamsRows13UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure VGrid_Oper_ParamsRows16UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Time_NormsTimeRowsUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Time_NormsRows5EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure VGrid_Det_ParamsRows1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Time_NormsRows6UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MemT_Doc_DetailsAfterPost(DataSet: TDataSet);
    procedure Main_M_Tp_Connected_Details_Btn_Doc_Det_SeeClick(Sender: TObject);
    procedure Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_PdfClick(
      Sender: TObject);
    procedure Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_ExcelClick(
      Sender: TObject);
    procedure VGrid_Oper_ParamsRows14UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGrid_DetailsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid_OperationsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    StrList_GlobalVars: TStringListEh;

    Form_Is_Changed: Bool;

    Procedure P_Set_Flag_InDBGridEh(DBGridEh: TDBGridEh; V_Flag: Integer);
    procedure Change_Doc_Edit(v_Param: String);


  end;

var
  Form_Tp_Connected_Details: TForm_Tp_Connected_Details;

implementation

{$R *.dfm}

uses
Tp_Main_Form, Udm_Main, Tp_Data_Mode, Gen_Chs_Dd_Form, Tp_TechProc_List_DataModule;

procedure TForm_Tp_Connected_Details.GridExit(Sender: TObject);
begin
  try (Sender as TDBGridEh).DataSource.DataSet.Post
  except end;
end;

procedure TForm_Tp_Connected_Details.DBGrid_DetailsGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with DBGrid_Details.DataSource.DataSet as TMemTableEh
  do
  begin
    If Not IsEmpty
    Then
    Begin
      if (FieldByName('DOC_TP_VERS_ID').AsString = Dm_TechProc_List.Db_Doc_Info.FieldByName('Id_Vers').AsString)
      then
      begin
         if (FieldByName('Rw_Status').AsString = 'deleted')
        Then
        Begin
          Background := $00B5B3FF;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Status').AsString = 'inserted')
        Then
        Begin
          Background := $00A8FFC5;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Status').AsString = 'updated')
        Then
        Begin
          Background := $00A7EDFE;
          AFont.Color := clWindowText;
        end
        else if (FieldByName('Rw_vers').AsString = 'old_version')
        Then
        Begin
          Background := clMenu;
          AFont.Color := clGray;
        End
        else
        begin
          Background := clWindow;
          AFont.Color := clWindowText;
        end;
      end
      else if (FieldByName('Rw_vers').AsString = 'old_version')
      Then
      Begin
        Background := clMenu;
        AFont.Color := clGray;
      End
      else
      begin
        Background := clWindow;
        AFont.Color := clWindowText;
      end;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.DBGrid_DocsColumns6OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar[ 'Find' ].AsString := 'REASON';
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Tp_Connected_Details.DBGrid_OperationsGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with DBGrid_Operations.DataSource.DataSet as TMemTableEh
  do
  begin
    If Not IsEmpty
    Then
    Begin
      if (FieldByName('DOC_TP_VERS_ID').AsString = Dm_TechProc_List.Db_Doc_Info.FieldByName('Id_Vers').AsString)
      then
      begin
         if (FieldByName('Rw_Status').AsString = 'deleted')
        Then
        Begin
          Background := $00B5B3FF;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Status').AsString = 'inserted')
        Then
        Begin
          Background := $00A8FFC5;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Status').AsString = 'updated')
        Then
        Begin
          Background := $00A7EDFE;
          AFont.Color := clWindowText;
        end
        else if (FieldByName('Rw_vers').AsString = 'old_version')
        Then
        Begin
          Background := clMenu;
          AFont.Color := clGray;
        End
        else
        begin
          Background := clWindow;
          AFont.Color := clWindowText;
        end;
      end
      else if (FieldByName('Rw_vers').AsString = 'old_version')
      Then
      Begin
        Background := clMenu;
        AFont.Color := clGray;
      End
      else
      begin
        Background := clWindow;
        AFont.Color := clWindowText;
      end;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.Btn_Hide_Det_ParamsClick(Sender: TObject);
begin
  if Sender = Btn_Hide_Det_Params
  Then
  Begin
    if VGrid_Det_Params.Visible
    Then
    Begin
      Splitter4.Visible := False;
      VGrid_Det_Params.Visible := False;
      Btn_Hide_Det_Params.Caption := '<';
    End
    Else
    Begin
      VGrid_Det_Params.Visible := True;
      Splitter4.Visible := True;
      Btn_Hide_Det_Params.Caption := '>';
    End;
  End
  Else if Sender = Btn_Hide_Oper_Params
  Then
  Begin
    if Panel_Doc_Items_Oper_Params.Visible
    Then
    Begin
      Splitter3.Visible := False;
      Panel_Doc_Items_Oper_Params.Visible := False;
      Btn_Hide_Oper_Params.Caption := '<';
    End
    Else
    Begin
      Panel_Doc_Items_Oper_Params.Visible := True;
      Splitter3.Visible := True;
      Btn_Hide_Oper_Params.Caption := '>';
    End;
  End;;
end;

procedure TForm_Tp_Connected_Details.Change_Doc_Edit(v_Param: String);
begin
  if v_Param = 'LOCK' then
  Begin
    Grid_Time_Norms.ReadOnly := True;
    (Grid_Time_Norms.DataSource.DataSet as TMemTableEh).ReadOnly := True;
    DBGrid_Details.ReadOnly := True;
    (DBGrid_Details.DataSource.DataSet as TMemTableEh).ReadOnly := True;
    DBGrid_Operations.ReadOnly := True;
    (DBGrid_Operations.DataSource.DataSet as TMemTableEh).ReadOnly := True;
    VGrid_Oper_Params.ReadOnly := True;
    VGrid_Det_Params.ReadOnly := True;
    Pop_M_Doc_Details_Btn_Delete.Enabled := False;
    Pop_M_Doc_Details_Btn_Add_Det.Enabled := False;
    Pop_M_Operations_Btn_Add_Opers.Enabled := False;
    Pop_M_Operations_Btn_Paste_Opers.Enabled := False;
    Pop_M_Operations_Btn_Delete_Opers.Enabled := False;
    Main_M_Tp_Connected_Details_Btn_Save.Enabled := False;
    Main_M_Tp_Connected_Details_Btn_Copy_Opers_From_Chem_Cover.Enabled := False;
  End
  Else if v_Param = 'UNLOCK' then
  Begin
    Grid_Time_Norms.ReadOnly := False;
    (Grid_Time_Norms.DataSource.DataSet as TMemTableEh).ReadOnly := False;
    DBGrid_Details.ReadOnly := False;
    (DBGrid_Details.DataSource.DataSet as TMemTableEh).ReadOnly := False;
    DBGrid_Operations.ReadOnly := False;
    (DBGrid_Operations.DataSource.DataSet as TMemTableEh).ReadOnly := False;
    VGrid_Oper_Params.ReadOnly := False;
    VGrid_Det_Params.ReadOnly := False;
    Pop_M_Doc_Details_Btn_Delete.Enabled := True;
    Pop_M_Doc_Details_Btn_Add_Det.Enabled := True;
    Pop_M_Operations_Btn_Add_Opers.Enabled := True;
    Pop_M_Operations_Btn_Paste_Opers.Enabled := True;
    Pop_M_Operations_Btn_Delete_Opers.Enabled := True;
    Main_M_Tp_Connected_Details_Btn_Save.Enabled := True;
    Main_M_Tp_Connected_Details_Btn_Copy_Opers_From_Chem_Cover.Enabled := True;
  End
  Else if v_Param = 'UNLOCK_FOR_NORM' then
  Begin
    Grid_Time_Norms.ReadOnly := False;
    (Grid_Time_Norms.DataSource.DataSet as TMemTableEh).ReadOnly := False;
    DBGrid_Details.ReadOnly := True;
    (DBGrid_Details.DataSource.DataSet as TMemTableEh).ReadOnly := True;
    DBGrid_Operations.ReadOnly := True;
    (DBGrid_Operations.DataSource.DataSet as TMemTableEh).ReadOnly := True;
    VGrid_Oper_Params.ReadOnly := True;
    VGrid_Det_Params.ReadOnly := True;
    Pop_M_Doc_Details_Btn_Delete.Enabled := False;
    Pop_M_Doc_Details_Btn_Add_Det.Enabled := False;
    Pop_M_Operations_Btn_Add_Opers.Enabled := False;
    Pop_M_Operations_Btn_Paste_Opers.Enabled := False;
    Pop_M_Operations_Btn_Delete_Opers.Enabled := False;
    Main_M_Tp_Connected_Details_Btn_Save.Enabled := True;
    Main_M_Tp_Connected_Details_Btn_Copy_Opers_From_Chem_Cover.Enabled := False;
  End;
end;

procedure TForm_Tp_Connected_Details.Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_ExcelClick(
  Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  Main_M_Tp_Connected_Details_Btn_SaveClick( Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_Excel );
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Dm_TechProc_List.Db_Doc_Info.FieldByName('Main_Doc_Header_Id').AsInteger;
  v_In_Params.DynVar[ 'In_Id_Row_Det' ].AsInteger := DBGrid_Details.DataSource.DataSet.FieldByName('Id').AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document_For_Det';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Excel';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TForm_Tp_Connected_Details.Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_PdfClick(
  Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  Main_M_Tp_Connected_Details_Btn_SaveClick( Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_Pdf );
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsString := Dm_TechProc_List.Db_Doc_Info.FieldByName('Main_Doc_Header_Id').AsString;
  v_In_Params.DynVar[ 'In_Id_Row_Det' ].AsInteger := DBGrid_Details.DataSource.DataSet.FieldByName('Id').AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document_For_Det';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Pdf';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TForm_Tp_Connected_Details.Main_M_Tp_Connected_Details_Btn_Doc_Det_SeeClick(
  Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  Main_M_Tp_Connected_Details_Btn_SaveClick( Main_M_Tp_Connected_Details_Btn_Doc_Det_See );
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Dm_TechProc_List.Db_Doc_Info.FieldByName('Main_Doc_Header_Id').AsInteger;
  v_In_Params.DynVar[ 'In_Id_Row_Det' ].AsInteger := DBGrid_Details.DataSource.DataSet.FieldByName('Id').AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document_For_Det';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TForm_Tp_Connected_Details.Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export_ExcelClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  Main_M_Tp_Connected_Details_Btn_SaveClick( Main_M_Tp_Connected_Details_Btn_Doc_Vtp_See );
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Dm_TechProc_List.Db_Doc_Info.FieldByName('Doc_Header_Id').AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Excel';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TForm_Tp_Connected_Details.E_Oper_PrimDblClick(Sender: TObject);
  var
  v_In_Params, v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'VTP_PRIM';
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If v_Out_Params <> Nil
  Then
    E_Oper_Prim.Text := v_Out_Params.DynVar[ 'PRIM' ].AsString;
end;

procedure TForm_Tp_Connected_Details.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Main_M_Tp_Connected_Details_Btn_SaveClick( Main_M_Tp_Connected_Details_Btn_Exit );
  If ModalResult = mrCancel
  Then
    CanClose := False
  Else
    CanClose := True;
end;

procedure TForm_Tp_Connected_Details.FormCreate(Sender: TObject);
begin
  Btn_Hide_Det_ParamsClick(Btn_Hide_Det_Params);
  StrList_GlobalVars := TStringListEh.Create;
end;

procedure TForm_Tp_Connected_Details.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if Key = VK_F5
 then
   Main_M_Tp_Connected_Details_Btn_SaveClick(Main_M_Tp_Connected_Details_Btn_Save);
end;

procedure TForm_Tp_Connected_Details.FormResize(Sender: TObject);
Var
  Vl_Oper_Det_Width_Ratio,
  Vl_Items_Param_Width_Ratio,
  Vl_Main, Vl_Other: Double;
begin

  {Vl_Main := Panel_Doc_Items_Opers.Width;
  Vl_Other := Panel_Doc_Items_Det.Width;
  If Vl_Main / (Vl_Main + Vl_Other) > 0.5
  Then
    Panel_Doc_Items_Opers.Width := Round((Vl_Main + Vl_Other)*0.5);

  Vl_Main := Group_Doc_Items_Opers.Width;
  Vl_Other := Panel_Doc_Items_Oper_Params.Width;
  If Vl_Main / (Vl_Main + Vl_Other) > 0.5
  Then
    Group_Doc_Items_Opers.Width := Round((Vl_Main + Vl_Other)*0.5);

  {if (Panel_Doc_Items_Det.Width < 432)
  Then
     Panel_Doc_Items_Det.Width := 432;

  If (Panel_Doc_Items_Opers.Width < 400)
  Then
    Panel_Doc_Items_Opers.Width := 400;}

end;

procedure TForm_Tp_Connected_Details.FormShow(Sender: TObject);
  var
  v_In_Doc_Params,
  v_Out_Doc_Params: TDynVarsEh;
  EnOraDataSet: TOracleDataSet;
  EnMemTable: TMemTableEh;
  EnDataSet: TDataSet;
  i: Integer;
begin

  With Dm_TechProc_List
  Do
  Begin
    {$Region 'Датасеты'}
    For I := 0 to Length(Arr_DataSetsOpenLine)-1
    Do
    Begin
      If Arr_DataSetsOpenLine[i][1] <> ''
      Then
      Begin
        If (FindComponent(Arr_DataSetsOpenLine[i][0])) Is TOracleDataSet
        Then
        Begin
          EnOraDataSet := (FindComponent(Arr_DataSetsOpenLine[i][0]) as TOracleDataSet);
          With EnOraDataSet
          Do
          Begin
            Close;
            SetVariable(Arr_DataSetsOpenLine[i][1], StrList_GlobalVars.Values[Arr_DataSetsOpenLine[i][1]]);
            Open;
          End;
        End
        Else if (FindComponent(Arr_DataSetsOpenLine[i][0])) Is TMemTableEh
        Then
        Begin
          EnMemTable := (FindComponent(Arr_DataSetsOpenLine[i][0]) as TMemTableEh);
          EnOraDataSet := (EnMemTable.DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet;
          EnMemTable.Close;
          EnOraDataSet.SetVariable(Arr_DataSetsOpenLine[i][1], StrList_GlobalVars.Values[Arr_DataSetsOpenLine[i][1]]);
          EnMemTable.Open;
        End;
      End
      Else
      Begin
        EnDataSet := (FindComponent(Arr_DataSetsOpenLine[i][0]) as TDataSet);
        With EnDataSet
        Do
        Begin
          Close;
          Open;
        End;
      End;
    End;
    {$EndRegion 'Датасеты'}

    if Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
    Then
      Change_Doc_Edit('UNLOCK')
    Else
      Change_Doc_Edit( Db_Doc_Info.FieldByName('DOC_EDIT_STAT').AsString );
    if ( Pkg_Tp_Doc.CallIntegerFunction( 'F_Find_User_In_Dep', [ Udm_Main.DM_Main.Session.LogonUsername, 604 ] ) = 1 )
       Or ( Tp_Main_Form.Form_Tech_Proc_Main.User_Admin )
    Then
    Begin
      Main_M_Tp_Connected_Details_Btn_Copy_Opers_From_Chem_Cover.Visible := True;
    End
    Else
    Begin
      Main_M_Tp_Connected_Details_Btn_Copy_Opers_From_Chem_Cover.Visible := False;
    End;
    Form_Tp_Connected_Details.Caption := 'Ведомость деталей №'
                      + Db_Doc_Info.FieldByName('TP_NUM').AsString
                      + ' для ТП №'
                      + Db_Doc_Info.FieldByName('Main_Doc_TP_NUM').AsString
                      + ' '
                      + Db_Doc_Info.FieldByName('Main_Doc_TP_NAME').AsString;
     StatusBar1.Panels[1].Text := DateTimeToStr(Now());
    end;
end;

procedure TForm_Tp_Connected_Details.Grid_Time_NormsTimeRowsUpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
Var
  V_In_Params,
  V_Out_Det_Params,
  V_Out_Params: TDynVarsEh;
begin
  With (Grid_Time_Norms.DataSource.DataSet as TMemTableEh)
  Do
  Begin
    If TFieldRowEh( Sender ).FieldName = 'OPER_TIME'
    Then
    Begin
      Edit;
      FieldByName('ALL_OPER_TIME').AsFloat := FieldByName('UNIT_TIME').AsFloat
                                              + FieldByName('SETUP_TIME').AsFloat
                                              + StrToFloat( Text );
    End
    Else If TFieldRowEh( Sender ).FieldName = 'SETUP_TIME'
    Then
    Begin
     Edit;
     FieldByName('ALL_OPER_TIME').AsFloat := FieldByName('UNIT_TIME').AsFloat
                                             + FieldByName('OPER_TIME').AsFloat
                                             + StrToFloat( Text );
    End
    Else If TFieldRowEh( Sender ).FieldName = 'UNIT_TIME'
    Then
    Begin
     Edit;
     FieldByName('ALL_OPER_TIME').AsFloat := FieldByName('SETUP_TIME').AsFloat
                                             + FieldByName('OPER_TIME').AsFloat
                                             + StrToFloat( Text );
    End
    Else
    Begin
      if UseText
      Then
      Begin
        If FieldByName('PROF_CODE').AsString = ''
        Then
         Grid_Time_NormsRows5EditButtons0Click(Sender, Handled);
        If FieldByName('USING_NORM_ID').AsString <> ''
        Then
        Begin
          If (Text <> '')
              And (UseText)
          Then
          Begin
            Edit;
            if TFieldRowEh( Sender ).FieldName = 'ALL_OPER_TIME'
            Then
            Begin
              If StrToFloat(Text) > FieldByName('USING_NORM_TIME').AsFloat
              Then
                Text := FieldByName('USING_NORM_TIME').AsString;
              FieldByName('ALL_OPER_TIME').AsFloat := StrToFloat(Text);
              FieldByName('ALL_OPER_TIME_PERC').AsFloat :=  (StrToFloat(Text)/FieldByName('USING_NORM_TIME').AsFloat) * 100.00;
            End
            Else if TFieldRowEh( Sender ).FieldName = 'UNIT_COUNT'
            Then
            Begin
              FieldByName('UNIT_COUNT').AsFloat := StrToFloat(Text);
            End
            Else If TFieldRowEh( Sender ).FieldName = 'ALL_OPER_TIME_PERC'
            Then
            Begin
              If StrToFloat(Text) > 100.00
              Then
                Text := '100';
              FieldByName('ALL_OPER_TIME').AsFloat := FieldByName('USING_NORM_TIME').AsFloat * (StrToFloat(Text)/100.00);
            End;
            Tp_Setup_Time_Calc.Form_Setup_Time_Calc.F_Execute_Unit_Time( Self );
          End;
        End;
      End;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.Grid_Time_NormsRows5EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
  Var
    V_In_Params, v_Det_Trud_Out_Params, v_Out_Params: TDynVarsEh;
    Vl_In_Det_Params, Vl_Out_Det_Params: TDynVarsEh;
begin
  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    Vl_In_Det_Params := TDynVarsEh.Create( Application.MainForm );
    Vl_In_Det_Params.DynVar[ 'Find' ].AsString := 'DET';
    Vl_In_Det_Params.DynVar[ 'Filter' ].AsString := 'Id = ' + DBGrid_Details.DataSource.DataSet.FieldByName('Det_Id').AsString;
    Vl_Out_Det_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Det_Params );
    If Vl_Out_Det_Params <> Nil
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'DET_TRUD';
      v_In_Params.DynVar[ 'Filter' ].AsString := ' Norm.Kd = Ogt.Asup_Ogt.Kd_Asup_Min(v_det => '''
                                                   + Vl_Out_Det_Params.DynVar['DET_NUM'].AsString
                                                   + ''' ) '
                                                   + ' And Norm.Nc = ''' +  DBGrid_Operations.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
      v_Det_Trud_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
      If v_Det_Trud_Out_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName('USING_NORM_ID').AsString := v_Det_Trud_Out_Params.DynVar[ 'Id_Using_Norm' ].AsString;
        FieldByName('USING_NORM_TIME').AsString := v_Det_Trud_Out_Params.DynVar[ 'Time' ].AsString;
        FieldByName('PROF_CODE').AsString := v_Det_Trud_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
        FieldByName('PROF_CLASS').AsString := v_Det_Trud_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
        FieldByName('PROF_CTN').AsString := v_Det_Trud_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
        FieldByName('PROF_MONEY').AsString := v_Det_Trud_Out_Params.DynVar[ 'MONEY_PROF' ].AsString;
      End;
    End
    Else
    Begin
      v_In_Params.DynVar[ 'Find' ].AsString := 'KODPROF';
      v_In_Params.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = '''
        +  DBGrid_Operations.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        Text := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
        FieldByName('PROF_CODE').AsString := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
        FieldByName('PROF_CLASS').AsString := V_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
        FieldByName('PROF_CTN').AsString := V_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
      End;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.Grid_Time_NormsRows6UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);Var
    V_In_Params, v_Det_Trud_Out_Params, v_Out_Params: TDynVarsEh;
    Vl_In_Det_Params, Vl_Out_Det_Params: TDynVarsEh;
begin
  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    if (Text <> '')
        And (Text <> FieldByName('PROF_CODE').AsString )
    Then
    Begin
      Vl_In_Det_Params := TDynVarsEh.Create( Application.MainForm );
      Vl_In_Det_Params.DynVar[ 'Find' ].AsString := 'DET';
      Vl_In_Det_Params.DynVar[ 'Filter' ].AsString := 'Id = ' + DBGrid_Details.DataSource.DataSet.FieldByName('Det_Id').AsString;
      Vl_Out_Det_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Det_Params );
      If Vl_Out_Det_Params <> Nil
      Then
      Begin
        v_In_Params := TDynVarsEh.Create( Application.MainForm );
        v_In_Params.DynVar[ 'Find' ].AsString := 'DET_TRUD';
        v_In_Params.DynVar[ 'Filter' ].AsString := ' Norm.Kd = Ogt.Asup_Ogt.Kd_Asup_Min(v_det => '''
                                                     + Vl_Out_Det_Params.DynVar['DET_NUM'].AsString
                                                     + ''' ) '
                                                     + ' And Norm.Nc = ''' +  DBGrid_Operations.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
        v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
        v_Det_Trud_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
        If v_Det_Trud_Out_Params <> Nil
        Then
        Begin
          Edit;
          Text := v_Det_Trud_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('USING_NORM_ID').AsString := v_Det_Trud_Out_Params.DynVar[ 'Id_Using_Norm' ].AsString;
          FieldByName('USING_NORM_TIME').AsString := v_Det_Trud_Out_Params.DynVar[ 'Time' ].AsString;
          FieldByName('PROF_CODE').AsString := v_Det_Trud_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CLASS').AsString := v_Det_Trud_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
          FieldByName('PROF_CTN').AsString := v_Det_Trud_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
          FieldByName('PROF_MONEY').AsString := v_Det_Trud_Out_Params.DynVar[ 'MONEY_PROF' ].AsString;
        End;
      End
      Else
      Begin
        v_In_Params := TDynVarsEh.Create( Application.MainForm );
        v_In_Params.DynVar[ 'Find' ].AsString := 'KODPROF';
        v_In_Params.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = ''' +  DBGrid_Operations.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
        v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
        v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
        If v_Out_Params <> Nil
        Then
        Begin
          Edit;
          Text := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CODE').AsString := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CLASS').AsString := V_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
          FieldByName('PROF_CTN').AsString := V_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
        End;
      End;
    End
    Else if (Text = '')
    Then
    Begin
      FieldByName('PROF_CODE').Clear;
      FieldByName('PROF_CLASS').Clear;
      FieldByName('PROF_CTN').Clear;
      FieldByName('PROF_MONEY').Clear;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.Pop_M_Detail_Docs_Btn_VTP_Cancel_DocClick(Sender: TObject);
Var
  v_Izd_Id: Integer;
  Button_Selected: Integer;
begin
  Button_Selected := MessageDlg( 'Аннулировать документ?'
                                 + #13#10
                                 + 'Внимание! Документ будет аннулирован только после сохранения нового!',
                                 mtConfirmation,
                                 mbOKCancel,
                                 5 );
  If Button_Selected = mrOk
  Then
  Begin

  End;
end;

procedure TForm_Tp_Connected_Details.Pop_M_Operations_Btn_Opers_ParamsClick(Sender: TObject);
begin
  Btn_Hide_Det_ParamsClick( Btn_Hide_Oper_Params );
end;

procedure TForm_Tp_Connected_Details.Pop_M_Operations_Btn_Oper_TimeClick(
  Sender: TObject);
begin
  With Dm_TechProc_List
  Do
  Begin
   { Tp_Setup_Time_Calc.Form_Setup_Time_Calc.V_Det_Id := MemT_Doc_DetailsDET_ID.AsInteger;
    Tp_Setup_Time_Calc.Form_Setup_Time_Calc.V_Oper_Time_DataSrc := Dm_TechProc_List.Data_Oper_Time;
    Tp_Setup_Time_Calc.Form_Setup_Time_Calc.V_Oper_Time_Works_DataSrc := Dm_TechProc_List.Data_Oper_Time_Works;
    Tp_Setup_Time_Calc.Form_Setup_Time_Calc.Grouping_DataSrc := Dm_TechProc_List.Data_Doc_Details;
    Tp_Setup_Time_Calc.Form_Setup_Time_Calc.Grouping_Fields_Master := MemT_Doc_Details.FieldByName('ID').DisplayName;
    Tp_Setup_Time_Calc.Form_Setup_Time_Calc.Grouping_Fields_Detail := MemT_Oper_Time.FieldByName('ID_ROW_DET').DisplayName;
    Tp_Setup_Time_Calc.Form_Setup_Time_Calc.MemRec_Oper := MemT_Detail_Operations.Rec;
    Tp_Setup_Time_Calc.Form_Setup_Time_Calc.ShowModal; }
  End;
end;

procedure TForm_Tp_Connected_Details.Pop_M_Operations_Btn_Paste_OpersClick(
  Sender: TObject);
  Var
  I, Rec_Num: Integer;
  Vl_Text: String;
  Vl_Value: Variant;
  Vl_UseText,Vl_Handled :Boolean;
  Procedure P_Copy_Operations;
  Var
  I, Rec_Num, Vl_Btn_Slct: Integer;
  Begin
    With Dm_TechProc_List
    Do
    Begin
      Vl_Btn_Slct := 0;
      If (Tp_Main_Form.Form_Tech_Proc_Main.User_Admin)
          Or ((Pkg_Tp_Doc.CallIntegerFunction( 'F_Find_User_In_Dep_Mmbr', [ Udm_Main.DM_Main.Session.LogonUsername, 201 ] ) = 1)
              And (Pkg_Tp_Doc.CallIntegerFunction( 'F_Find_User_In_Dep_Mmbr', [ Udm_Main.DM_Main.Session.LogonUsername, 202 ] ) = 1))
      Then
      Begin
        With CreateMessageDialog( 'Что вставить?',
                                      mtConfirmation,
                                      mbYesNo )
        Do
        Try
          TButton( FindComponent( 'Yes' ) ).Caption := 'Операции';
          TButton( FindComponent( 'No' ) ).Caption := 'Нормы к операциям';
          TButton( FindComponent( 'No' ) ).Width := 100 ;
          Case ShowModal
          Of
            mrYes: Vl_Btn_Slct := mrYes;
            mrNo: Vl_Btn_Slct := mrNo;
          End;
        Finally
          Free;
        End;
      End;

      If (Pkg_Tp_Doc.CallIntegerFunction( 'F_Find_User_In_Dep_Mmbr', [ Udm_Main.DM_Main.Session.LogonUsername, 201 ] ) = 1)
          Or (Vl_Btn_Slct = mrYes)
      Then
      Begin
        Tp_Main_Form.Form_Tech_Proc_Main.P_Copy_In_DataSet_From_Buffer(MemT_Detail_Operations);
      End
      Else If (Pkg_Tp_Doc.CallIntegerFunction( 'F_Find_User_In_Dep_Mmbr', [ Udm_Main.DM_Main.Session.LogonUsername, 202 ] ) = 1)
              Or (Vl_Btn_Slct = mrNo)
      Then
      Begin
        With (DBGrid_Operations.DataSource.DataSet as TMemTableEh)
        Do
        Begin
          DisableControls;
          Try
            Tp_Dm.MemT_Buffer.Active := True;
            Tp_Dm.MemT_Buffer.First;
            For i := 1 To Tp_Dm.MemT_Buffer.RecordCount
            Do
            Begin
              If Locate('ID_ROW_OPER', Tp_Dm.MemT_Buffer.FieldByName('OPER_RW_ID').AsVariant, [loPartialKey])
              Then
              Begin
                MemT_Oper_Time.Append;
                MemT_Oper_Time.FieldByName('PROF_CODE').AsString := Tp_Dm.MemT_Buffer.FieldByName('PROF_CODE').AsString;
                MemT_Oper_Time.FieldByName('PROF_CTN').AsString := Tp_Dm.MemT_Buffer.FieldByName('PROF_CTN').AsString;
                MemT_Oper_Time.FieldByName('PROF_CLASS').AsString := Tp_Dm.MemT_Buffer.FieldByName('PROF_CLASS').AsString;
                MemT_Oper_Time.FieldByName('PROF_MONEY').AsString := Tp_Dm.MemT_Buffer.FieldByName('PROF_MONEY').AsString;
                MemT_Oper_Time.FieldByName('ALL_OPER_TIME').AsFloat := Tp_Dm.MemT_Buffer.FieldByName('ALL_OPER_TIME').AsFloat;
                MemT_Oper_Time.FieldByName('ALL_OPER_TIME_PERC').AsFloat := Tp_Dm.MemT_Buffer.FieldByName('ALL_OPER_TIME_PERC').AsFloat;
                MemT_Oper_Time.FieldByName('UNIT_COUNT').AsInteger := Tp_Dm.MemT_Buffer.FieldByName('UNIT_COUNT').AsInteger;
                Vl_Text := Tp_Dm.MemT_Buffer.FieldByName('ALL_OPER_TIME').AsString;
                Vl_Value := Tp_Dm.MemT_Buffer.FieldByName('ALL_OPER_TIME').AsVariant;
                Vl_UseText := True;
                Vl_Handled := False;
                Grid_Time_NormsTimeRowsUpdateData( Sender,
                                               Vl_Text,
                                               Vl_Value,
                                               Vl_UseText,
                                               Vl_Handled);
                MemT_Oper_Time.Post;
              End;
              Tp_Dm.MemT_Buffer.Next;
            End;
          Finally
            EnableControls;
          End;
        End;
      End;
    End;
  End;

begin
  With DBGrid_Details
  Do
  Begin
    If Selection.SelectionType = gstNon
    Then
    Begin
      P_Copy_Operations;
    End
    Else if Selection.SelectionType = gstRecordBookmarks
    Then
    Begin
      With DataSource.DataSet
      Do
      begin
        SaveBookmark;
        DisableControls;
        Try
          For i := 0 to Selection.Rows.Count-1
          Do
          Begin
            Bookmark := Selection.Rows[i];
            P_Copy_Operations;
          End;
          Selection.Clear;
        Finally
          EnableControls;
        End;
      end;
    End;

  End;
end;

procedure TForm_Tp_Connected_Details.Pop_M_Doc_Details_Btn_Det_ParamsClick(Sender: TObject);
begin
  Btn_Hide_Det_ParamsClick( Btn_Hide_Det_Params );
  //Form_Det_Params.VGrid_Det_Params.DataSource := Data_Doc_Details;
  //Form_Det_Params.ShowModal;
end;

procedure TForm_Tp_Connected_Details.Pop_M_Operations_Btn_Copy_OpersClick(Sender: TObject);
Var
  I, j, Vl_Btn_Slct: Integer;
  v_Insert_Rec, v_Source_Rec: TMemoryRecordEh;
  NewStruct: TMTDataStructEh;
  v_Test: String;
  New_Field: TMTDataFieldEh;
begin
  If Not DBGrid_Operations.DataSource.DataSet.IsEmpty
  Then
  Begin

    {$Region 'Создание струтуры буфера'}
    Tp_Data_Mode.Tp_Dm.MemT_Buffer.EmptyTable;
    Vl_Btn_Slct := 0;
    If (Tp_Main_Form.Form_Tech_Proc_Main.User_Admin)
        Or ((Dm_TechProc_List.Pkg_Tp_Doc.CallIntegerFunction( 'F_Find_User_In_Dep_Mmbr', [ Udm_Main.DM_Main.Session.LogonUsername, 201 ] ) = 1)
            And (Dm_TechProc_List.Pkg_Tp_Doc.CallIntegerFunction( 'F_Find_User_In_Dep_Mmbr', [ Udm_Main.DM_Main.Session.LogonUsername, 202 ] ) = 1))
    Then
    Begin
      With CreateMessageDialog( 'Что скопировать?',
                                    mtConfirmation,
                                    mbYesNo )
      Do
      Try
        TButton( FindComponent( 'Yes' ) ).Caption := 'Операции';
        TButton( FindComponent( 'No' ) ).Caption := 'Нормы к операциям';
        Case ShowModal
        Of
          mrYes: Vl_Btn_Slct := mrYes;
          mrNo: Vl_Btn_Slct := mrNo;
        End;
      Finally
        Free;
      End;
    End;

    If (Dm_TechProc_List.Pkg_Tp_Doc.CallIntegerFunction( 'F_Find_User_In_Dep_Mmbr', [ Udm_Main.DM_Main.Session.LogonUsername, 201 ] ) = 1)
        Or ( Vl_Btn_Slct = mrYes)
    Then
    Begin
      With (DBGrid_Operations.DataSource.DataSet as TMemTableEh).RecordsView.MemTableData
      Do
      Begin
        NewStruct := Tp_Data_Mode.Tp_Dm.MemT_Buffer.RecordsView.MemTableData.DataStruct.BeginRestructure;
        NewStruct.Clear;
        For j := 0 to DataStruct.Count-1
        Do
          If (DataStruct.DataFields[j].DisplayLabel <> 'ID')
              And (DataStruct.DataFields[j].DisplayLabel <> 'ID_DOC_TP')
              And (DataStruct.DataFields[j].DisplayLabel <> 'ID_ROW_DET')
              And (DataStruct.DataFields[j].DisplayLabel <> 'DET_ID')
              And (DataStruct.DataFields[j].DisplayLabel <> 'RAZRAB')
              And (DataStruct.DataFields[j].DisplayLabel <> 'RAZRAB_NAME')
              And (DataStruct.DataFields[j].DisplayLabel <> 'TP_WORK_TYPE')
          Then
          Begin
            New_Field := NewStruct.CreateField( TMTDataFieldClassEh(DataStruct.DataFields[j].ClassType) );
            New_Field.FieldName := DataStruct.DataFields[j].Name;
            if DataStruct.DataFields[j].ClassType = TMTNumericDataFieldEh
            Then
              TMTNumericDataFieldEh(New_Field).NumericDataType :=  TMTNumericDataFieldEh(DataStruct.DataFields[j]).NumericDataType;
          End;
        Tp_Data_Mode.Tp_Dm.MemT_Buffer.RecordsView.MemTableData.DataStruct.EndRestructure(NewStruct, True);
      End;
    End
    Else if  (Dm_TechProc_List.Pkg_Tp_Doc.CallIntegerFunction( 'F_Find_User_In_Dep_Mmbr', [ Udm_Main.DM_Main.Session.LogonUsername, 202 ] ) = 1)
              Or ( Vl_Btn_Slct = mrNo)
    Then
    Begin
      With (Grid_Time_Norms.DataSource.DataSet as TMemTableEh).RecordsView.MemTableData
      Do
      Begin
        NewStruct := Tp_Data_Mode.Tp_Dm.MemT_Buffer.RecordsView.MemTableData.DataStruct.BeginRestructure;
        NewStruct.Clear;
        For j := 0 to DataStruct.Count-1
        Do
          If (DataStruct.DataFields[j].DisplayLabel <> 'ID_RW_OP_TIME')
              And (DataStruct.DataFields[j].DisplayLabel <> 'GRP_OPER_RW_ID')
              And (DataStruct.DataFields[j].DisplayLabel <> 'DOC_TP_ID')
              And (DataStruct.DataFields[j].DisplayLabel <> 'UNIT_TIME')
              And (DataStruct.DataFields[j].DisplayLabel <> 'OPER_TIME')
              And (DataStruct.DataFields[j].DisplayLabel <> 'SETUP_TIME')
              And (DataStruct.DataFields[j].DisplayLabel <> 'ID_ROW_DET')
          Then
          Begin
            New_Field := NewStruct.CreateField( TMTDataFieldClassEh(DataStruct.DataFields[j].ClassType) );
            New_Field.FieldName := DataStruct.DataFields[j].Name;
            if DataStruct.DataFields[j].ClassType = TMTNumericDataFieldEh
            Then
              TMTNumericDataFieldEh(New_Field).NumericDataType :=  TMTNumericDataFieldEh(DataStruct.DataFields[j]).NumericDataType;
          End;
        Tp_Data_Mode.Tp_Dm.MemT_Buffer.RecordsView.MemTableData.DataStruct.EndRestructure(NewStruct, True);
      End;
    End;
    {$EndRegion 'Создание струтуры буфера'}

    With Tp_Data_Mode.Tp_Dm.MemT_Buffer.RecordsView.MemTableData
    Do
    Begin
      Try
        RecordsList.BeginUpdate;
        DBGrid_Operations.DataSource.DataSet.DisableControls;
        For I := 0 to DBGrid_Operations.SelectedRows.Count-1
        Do
        Begin
          v_Insert_Rec := RecordsList.NewRecord;
          DBGrid_Operations.DataSource.DataSet.Bookmark := DBGrid_Operations.SelectedRows[i];
          (Grid_Time_Norms.DataSource.DataSet as TMemTableEh).RecordsView.RefreshFilteredRecsList(True);
          If (Dm_TechProc_List.Pkg_Tp_Doc.CallIntegerFunction( 'F_Find_User_In_Dep_Mmbr', [ Udm_Main.DM_Main.Session.LogonUsername, 201 ] ) = 1)
              Or ( Vl_Btn_Slct = mrYes)
          Then
          Begin
            v_Source_Rec := TMemTableEh( DBGrid_Operations.DataSource.DataSet ).BookmarkToRec( DBGrid_Operations.Selection.Rows[i] );
          End
          Else if  (Dm_TechProc_List.Pkg_Tp_Doc.CallIntegerFunction( 'F_Find_User_In_Dep_Mmbr', [ Udm_Main.DM_Main.Session.LogonUsername, 202 ] ) = 1)
              Or ( Vl_Btn_Slct = mrNo)
          Then
          Begin;
            With (Grid_Time_Norms.DataSource.DataSet as TMemTableEh)
            Do
            Begin
              If Locate('GRP_OPER_RW_ID', DBGrid_Operations.DataSource.DataSet.FieldByName('ID').AsVariant, [loPartialKey])
              Then
                v_Source_Rec := Rec; //RecordsView.MemTableData.RecordsList.Rec[j];
            End;
          End;
          if v_Source_Rec <> Nil
          Then
            For j := 0 to RecordsList.MemTableData.DataStruct.Count-1
            Do
            Begin
              v_Insert_Rec.DataValues[ DataStruct.DataFields[j].Name , dvvValueEh ] := v_Source_Rec.DataValues[ DataStruct.DataFields[j].Name, dvvValueEh ];
            End;
          RecordsList.FetchRecord( v_Insert_Rec );
        End;
      Finally
        RecordsList.EndUpdate;
        DBGrid_Operations.Selection.Clear;
        DBGrid_Operations.DataSource.DataSet.EnableControls;
      End;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.Main_M_Tp_Connected_Details_Btn_Copy_Opers_From_Chem_CoverClick(Sender: TObject);
var
  I: Integer;
  ButtonSelected: Integer;
  Oper_Count: Integer;
Begin
  If Not Dm_TechProc_List.Db_Doc_Info.FieldByName('IZD_ID').IsNull
  Then
  Begin
    ButtonSelected := MessageDlg( 'Сформировать ведомости?', mtConfirmation, mbOKCancel, 5 );
    If ButtonSelected = mrOk
    Then
    Begin
      DBGrid_Details.StartLoadingStatus( 'Формирование деталей ведомости...' );
      DBGrid_Operations.StartLoadingStatus('Формирование операций для детали...');
      Dm_TechProc_List.PKG_TP_DOC.CallProcedure( 'P_Copy_Det_Opers_From_Chem', [ Dm_TechProc_List.Db_Doc_Info.FieldByName('MAIN_DOC_ID').AsString,
                                                                Dm_TechProc_List.Db_Doc_Info.FieldByName('IZD_ID').AsString ] );
      Db_Details_Temp.Close;
      Db_Details_Temp.Open;
      Db_Operations_Temp.Close;
      Db_Operations_Temp.Open;

      with DBGrid_Details.DataSource.DataSet
      do
      begin
        For I := 1 to RecordCount
        Do
        Begin
          Delete;
          Next;
        End;
      end;

      Db_Details_Temp.First;
      For I := 1 to Db_Details_Temp.RecordCount
      Do
      Begin
        DBGrid_Details.DataSource.DataSet.Append;
        DBGrid_Details.DataSource.DataSet.CopyFields( Db_Details_Temp );
        DBGrid_Details.DataSource.DataSet.Post;
        Db_Operations_Temp.First;
        For Oper_Count := 1 to Db_Operations_Temp.RecordCount
        Do
        Begin
          DBGrid_Operations.DataSource.DataSet.Append;
          DBGrid_Operations.DataSource.DataSet.CopyFields( Db_Operations_Temp );
          DBGrid_Operations.DataSource.DataSet.Post;
          Db_Operations_Temp.Next;
        End;
        Db_Details_Temp.Next;
      End;
      DBGrid_Details.FinishLoadingStatus( );
      DBGrid_Operations.FinishLoadingStatus( );
    End;
  End
  Else MessageDlg( 'Укажите изделие!', mtError, [mbOK], 5 );
end;

procedure TForm_Tp_Connected_Details.Main_M_Tp_Connected_Details_Btn_ExitClick(Sender: TObject);
begin
  Form_Tp_Connected_Details.Close;
end;

procedure TForm_Tp_Connected_Details.Pop_M_Doc_Details_Btn_Add_DetClick(Sender: TObject);
var
  I: Integer;
begin
  with Dm_TechProc_List
  do
  begin
    if Not Db_Doc_Info.FieldByName('Izd_Id').IsNull
    Then
    Begin
      Pkg_Tp_Doc.CallProcedure( 'P_Copy_Details_To_Copy', [ Db_Doc_Info.FieldByName('IZD_ID').AsString,
                                                          Db_Doc_Info.FieldByName('ID').AsString] );
      MemT_Details_For_Copy.Close;
      MemT_Details_For_Copy.Open;

      If Tp_Copy_Detail_For_Det_Doc_Form.Form_Copy_Det_From_Rcd.ShowModal = mrOk
      Then
      Begin
        If Tp_Copy_Detail_For_Det_Doc_Form.Form_Copy_Det_From_Rcd.COPY_1_Check.Checked
        Then
        Begin
          MemT_Doc_Details.First;
          For I := 1 to Db_Doc_Details.RecordCount
          Do
          Begin
            MemT_Doc_Details.Delete;
            MemT_Doc_Details.Next;
          End;
        End;
        MemT_Details_For_Copy.First;

        For I := 1 to MemT_Details_For_Copy.RecordCount
        Do
        Begin
          if MemT_Details_For_CopyFLAG.AsInteger = 1
          Then
          Begin
            MemT_Doc_Details.Append;
            MemT_Doc_Details.CopyFields( MemT_Details_For_Copy );
            MemT_Doc_Details.Post;
          End;
          MemT_Details_For_Copy.Next;
        End;
      End;
    End
    Else MessageDlg( 'Укажите изделие!', mtError, [mbOK], 5 );
  end;
end;

procedure TForm_Tp_Connected_Details.Pop_M_Doc_Details_Btn_DeleteClick(Sender: TObject);
begin
  Tp_Main_Form.Form_Tech_Proc_Main.P_DeleteFromDBGridEh( DBGrid_Details );
end;

procedure TForm_Tp_Connected_Details.Main_M_Tp_Connected_Details_Btn_SaveClick(Sender: TObject);
  var
  Button_Selected,
  I, j:Integer;
  Vl_Save_Mess: String;
  ArrDataSet: Array Of TDataSet;
  EnDataSet: TDataSet;
  EnMemTable: TMemTableEh;
  EnOracleDataSet: TOracleDataSet;
  FormHasChanges: Bool;

  {$Region 'Функция для работы с данными'}
  Function F_ActionWithData(Action: String): Bool;
  Var
    FormHasChanges: Bool;
    EnDataSet: TDataSet;
    I: Integer;
  Begin
    FormHasChanges := False;
    SetLength(ArrDataSet, 0);
    For i := 0 to Length(Dm_TechProc_List.Arr_DataSetsSaveLine)-1
    Do
    Begin
      If Dm_TechProc_List.FindComponent(Dm_TechProc_List.Arr_DataSetsSaveLine[i]) Is TMemTableEh
      Then
      Begin
        EnMemTable := (Dm_TechProc_List.FindComponent(Dm_TechProc_List.Arr_DataSetsSaveLine[i]) as TMemTableEh);
        With EnMemTable
        Do
        Begin
          if Action = 'Save'
          Then
          Begin
            if Not ReadOnly
            Then
              ApplyUpdates(0);
            MergeChangeLog;
            SetLength(ArrDataSet, Length(ArrDataSet) + 1);
            ArrDataSet[Length(ArrDataSet)-1] := ((DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet);
          End
          Else If Action = 'Revert'
          Then
          Begin
            CancelUpdates;
          End
          Else If Action = 'FindChanges'
          Then
          Begin
            if HasCachedChanges
            Then
            Begin
              FormHasChanges := True;
              Break;
            End;
          End;
        End;
      End
      Else If Dm_TechProc_List.FindComponent(Dm_TechProc_List.Arr_DataSetsSaveLine[i]) Is TOracleDataSet
      Then
      Begin
        EnOracleDataSet := (Dm_TechProc_List.FindComponent(Dm_TechProc_List.Arr_DataSetsSaveLine[i]) as TOracleDataSet);
        With EnOracleDataSet
        Do
        Begin
          if Action = 'Save'
          Then
          Begin
            SetLength(ArrDataSet, Length(ArrDataSet) + 1);
            ArrDataSet[Length(ArrDataSet)-1] := EnOracleDataSet as TOracleDataSet;
          End
          Else If Action = 'Revert'
          Then
          Begin
            CancelUpdates;
          End
          Else If Action = 'FindChanges'
          Then
          Begin
            if UpdatesPending
            Then
            Begin
              FormHasChanges := True;
              Break;
            End;
          End;
        End;
      End;
    End;

    If Action = 'FindChanges'
    Then
    Begin
      Result := FormHasChanges;
    End
    Else if Action = 'Save'
    Then
    Begin
      DM_Main.Session.ApplyUpdates(ArrDataSet,
                                   True);
      For i := 0 to Length(Dm_TechProc_List.Arr_DataSetsOpenLine)-1
      Do
      Begin
        If Dm_TechProc_List.FindComponent(Dm_TechProc_List.Arr_DataSetsOpenLine[i][0]) Is TMemTableEh
        Then
        Begin
          With (Dm_TechProc_List.FindComponent(Dm_TechProc_List.Arr_DataSetsOpenLine[i][0]) as TMemTableEh)
          Do
          Begin
            Close;
            If Dm_TechProc_List.Arr_DataSetsOpenLine[i][1] <> ''
            Then
            Begin
              if StrList_GlobalVars.IndexOfName(Dm_TechProc_List.Arr_DataSetsOpenLine[i][1]) <> -1
              Then
               ((DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).SetVariable( Dm_TechProc_List.Arr_DataSetsOpenLine[i][1],
                                                                                                 StrList_GlobalVars.Values[Dm_TechProc_List.Arr_DataSetsOpenLine[i][1]]);
            End;
            Open;
          End;
        End
        Else If Dm_TechProc_List.FindComponent(Dm_TechProc_List.Arr_DataSetsOpenLine[i][0]) Is TOracleDataSet
        Then
        Begin
          With (Dm_TechProc_List.FindComponent(Dm_TechProc_List.Arr_DataSetsOpenLine[i][0]) as TOracleDataSet)
          Do
          Begin
            Close;
            If Dm_TechProc_List.Arr_DataSetsOpenLine[i][1] <> ''
            Then
            Begin
              if StrList_GlobalVars.IndexOfName(Dm_TechProc_List.Arr_DataSetsOpenLine[i][1]) <> -1
              Then
                SetVariable(Dm_TechProc_List.Arr_DataSetsOpenLine[i][1],
                            StrList_GlobalVars.Values[Dm_TechProc_List.Arr_DataSetsOpenLine[i][1]]);
            End;
            Open;
          End;
        End;
      End;
    End
    Else
    Begin
      Result := True;
    End;

  End;
  {$EndRegion 'Функция для работы с данными'}
begin
  Try

    {$Region 'Остальные датасеты, у которых CachedUpdates=True'}
    For i := 0 to Length(Dm_TechProc_List.Arr_DataSetsSaveLine)-1
    Do
    Begin
      With Dm_TechProc_List.FindComponent(Dm_TechProc_List.Arr_DataSetsSaveLine[i]) as TDataSet
      Do
        Try Post Except End;
    End;
    {$EndRegion 'Остальные датасеты, у которых CachedUpdates=True'}

    //Определяем какие были обновлены
    FormHasChanges := F_ActionWithData('FindChanges');

    if FormHasChanges
    Then
    Begin
      If Sender = Main_M_Tp_Connected_Details_Btn_Exit
      Then
        Vl_Save_Mess := 'Имеются не сохраненные данные! Сохранить изменения?';
      if Sender <> Main_M_Tp_Connected_Details_Btn_Save
      Then
      Begin
        With CreateMessageDialog( Vl_Save_Mess,
                                      mtConfirmation,
                                      mbYesNoCancel )
        Do
        Try
          TButton( FindComponent( 'Yes' ) ).Caption := 'Да';
          TButton( FindComponent( 'No' ) ).Caption := 'Нет';
          TButton( FindComponent( 'Cancel' ) ).Caption := 'Отмена';
          Case ShowModal
          Of
            mrYes: Button_Selected := mrYes;
            mrNo: Button_Selected := mrNo;
            mrCancel: Button_Selected := mrCancel;
          End;
        Finally
          Free;
        End;
      End;

      If (Button_Selected = mrYes)
          Or (Sender = Main_M_Tp_Connected_Details_Btn_Save)
      Then
      Begin
        If F_ActionWithData('Save')
        Then
          if Sender = Main_M_Tp_Connected_Details_Btn_Exit
          Then
            ModalResult := mrYes;
      End
      Else if (Button_Selected = mrNo)
               And (Sender = Main_M_Tp_Connected_Details_Btn_Exit)
      Then
      Begin
        if F_ActionWithData('Revert')
        Then
          ModalResult := mrNo;
      End
      Else If (Button_Selected = mrCancel)
               And (Sender = Main_M_Tp_Connected_Details_Btn_Exit)
      Then
      Begin
        ModalResult := mrCancel;
      End;
    End
    Else if Sender = Main_M_Tp_Connected_Details_Btn_Exit
    Then
      ModalResult := mrNo;
  Except
    on E : Exception
    do
    Begin
      MessageDlg(E.ClassName+' поднята ошибка, с сообщением : '+E.Message, mtError, [mbOK], 5);

      If Sender = Main_M_Tp_Connected_Details_Btn_Exit
      Then
       If MessageDlg('Закрыть без сохранения?', mtConfirmation, mbYesNo, 5) = mrYes
       Then
         ModalResult := mrNone;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.MemT_Doc_DetailsAfterPost(
  DataSet: TDataSet);
begin
  If (DataSet as TMemTableEh).HasCachedChanges
  Then
  Begin
    StatusBar1.Panels[3].Text := DateTimeToStr(Now());
  End;
end;

procedure TForm_Tp_Connected_Details.MemT_Doc_DetailsBeforeDelete(
  DataSet: TDataSet);
begin
  If Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
  Begin
//    If (Tp_Main_Form.Form_Tech_Proc_Main.User_lnum <> MemT_Detail_DocsAUTHOR_LNUM.AsInteger)
//        Or ((MemT_Detail_DocsAPPR_STEP.AsString <> '001')
//             And (MemT_Detail_DocsAPPR_STEP.AsString <> '003'))
//    Then
//      Abort;
  End;
end;

procedure TForm_Tp_Connected_Details.Pop_M_Operations_Btn_Add_OpersClick(Sender: TObject);
var
  I: Integer;
begin
  with Dm_TechProc_List
  do
  begin
    If Not DBGrid_Details.DataSource.DataSet.IsEmpty
    Then
    Begin
      PKG_TP_DOC.CallProcedure( 'P_Copy_Oper_To_Copy', [ Db_Doc_Info.FieldByName('MAIN_DOC_ID').AsString,
                                                         Db_Doc_Info.FieldByName('ID').AsString,
                                                         MemT_Doc_DetailsDET_ID.AsInteger ] );
      MemT_Operations_For_Copy.Close;
      MemT_Operations_For_Copy.Open;
      Tp_Copy_Oper_For_Det_Doc_Form.Form_Copy_Opers_From_TTP.Grid_Operations.DataSource := Dm_TechProc_List.Data_Operations_For_Copy;
      If Tp_Copy_Oper_For_Det_Doc_Form.Form_Copy_Opers_From_TTP.ShowModal = mrOK
      Then
      Begin
        With MemT_Detail_Operations
        Do
        Begin
          Try
            DisableControls;
            If Tp_Copy_Oper_For_Det_Doc_Form.Form_Copy_Opers_From_TTP.COPY_1_Check.Checked
            Then
            Begin
              First;
              For I := 1 To RecordCount
              Do
              Begin
                Delete;
                Next;
              End;
            End;

            With Tp_Copy_Oper_For_Det_Doc_Form.Form_Copy_Opers_From_TTP.Grid_Operations
            Do
            Begin
              For I := 0 To SelectedRows.Count-1
              Do
              Begin
                DataSource.DataSet.Bookmark := Selection.Rows[i];
                If Eof
                Then
                  Break;
                Append;
                CopyFields( MemT_Operations_For_Copy );
                Post;
              End;
              Selection.Clear;
            End;
          Finally
            EnableControls;
          End;
        End;
      End;
    End
    Else MessageDlg( 'Укажите деталь!', mtError, [mbOK], 5 );
  end;
end;

procedure TForm_Tp_Connected_Details.Pop_M_Operations_Btn_Delete_OpersClick(Sender: TObject);
begin
  Tp_Main_Form.Form_Tech_Proc_Main.P_DeleteFromDBGridEh( DBGrid_Operations );
end;

procedure TForm_Tp_Connected_Details.Main_M_Tp_Connected_Details_Btn_Doc_Vtp_SeeClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  Main_M_Tp_Connected_Details_Btn_SaveClick( Main_M_Tp_Connected_Details_Btn_Doc_Vtp_See );
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Dm_TechProc_List.Db_Doc_Info.FieldByName('Doc_Header_Id').AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TForm_Tp_Connected_Details.Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export_PDFClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  Main_M_Tp_Connected_Details_Btn_SaveClick( Main_M_Tp_Connected_Details_Btn_Doc_Vtp_See );
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Dm_TechProc_List.Db_Doc_Info.FieldByName('Doc_Header_Id').AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Pdf';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TForm_Tp_Connected_Details.Pop_M_Doc_DetailsPopup(Sender: TObject);
begin
  if Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
  Begin
//    if MemT_Detail_DocsAUTHOR_LNUM.AsInteger <> Tp_Main_Form.Form_Tech_Proc_Main.User_lnum
//    Then
//    Begin
//      Pop_M_Doc_Details_Btn_Add_Det.Visible := False;
//      Pop_M_Doc_Details_Btn_Delete.Visible := False;
//    End
//    Else If ( MemT_Detail_DocsAPPR_STEP.AsString <> '001' )
//        And ( Not MemT_Detail_DocsAPPR_STEP.IsNull )
//    Then
//    Begin
//      Pop_M_Doc_Details_Btn_Add_Det.Visible := False;
//      Pop_M_Doc_Details_Btn_Delete.Visible := False;
//    End
//    Else
//    Begin
//      Pop_M_Doc_Details_Btn_Add_Det.Visible := True;
//      Pop_M_Doc_Details_Btn_Delete.Visible := True;
//    End;
  End;
end;

procedure TForm_Tp_Connected_Details.Pop_M_OperationsPopup(Sender: TObject);
begin
//  if Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
//  Then
//  Begin
//    if MemT_Detail_DocsAUTHOR_LNUM.AsInteger <> Tp_Main_Form.Form_Tech_Proc_Main.User_lnum
//    Then
//    Begin
//      Pop_M_Operations_Btn_Add_Opers.Visible := False;
//      Pop_M_Operations_Btn_Delete_Opers.Visible := False;
//      Pop_M_Operations_Btn_Copy_Opers.Visible := False;
//      Pop_M_Operations_Btn_Paste_Opers.Visible := False;
//    End
//    Else If ( MemT_Detail_DocsAPPR_STEP.AsString <> '001' )
//        And ( Not MemT_Detail_DocsAPPR_STEP.IsNull )
//    Then
//    Begin
//      Pop_M_Operations_Btn_Add_Opers.Visible := False;
//      Pop_M_Operations_Btn_Delete_Opers.Visible := False;
//      Pop_M_Operations_Btn_Copy_Opers.Visible := False;
//      Pop_M_Operations_Btn_Paste_Opers.Visible := False;
//    End
//    Else
//    Begin
//      Pop_M_Operations_Btn_Add_Opers.Visible := True;
//      Pop_M_Operations_Btn_Delete_Opers.Visible := True;
//      Pop_M_Operations_Btn_Copy_Opers.Visible := True;
//      Pop_M_Operations_Btn_Paste_Opers.Visible := True;
//    End;
//  End;
end;


Procedure TForm_Tp_Connected_Details.P_Set_Flag_InDBGridEh(DBGridEh: TDBGridEh; V_Flag: Integer);
Var
  i: Integer;
  ASelectionType: TDBGridEhSelectionType;
Begin
  With DBGridEh
  Do
  Begin
    ASelectionType := Selection.SelectionType;

    {$Region 'Если выделена одна запись, то ASelectionType = gstNon'}
    if ( ASelectionType = gstNon )
        And ( Not DataSource.DataSet.IsEmpty )
    then
    begin
      DataSource.DataSet.Edit;
      DataSource.DataSet.FieldByName('FLAG').AsInteger := V_Flag;
      DataSource.DataSet.Post;
      Exit;
    end
    {$EndRegion 'Если выделена одна запись, то ASelectionType = gstNon'}

    {$Region 'Если выделена не одна запись'}
    Else if ( ASelectionType <> gstNon )
         And ( Not DataSource.DataSet.IsEmpty )
    Then
    Begin
      With DataSource.DataSet Do
      Begin
        SaveBookmark;
        DisableControls;
        Try
          Case ASelectionType
          Of
            {$Region 'Выделены целиком строки'}
            gstRecordBookmarks:
            begin
              for i := 0 to Selection.Rows.Count - 1 Do
              Begin
                Bookmark := Selection.Rows[i];
                if Eof
                Then
                  Break;
                Edit;
                FieldByName( 'FLAG' ).AsInteger := V_Flag;
                Post;
                Next;
              end;
              Selection.Clear;
            end;
            {$EndRegion 'Выделены целиком строки'}

            {$Region 'Выделена прямоугольная область'}
            gstRectangle: //Выделена прямоугольная область
            begin
              Bookmark := Selection.Rect.TopRow;
              While True
              Do
              begin
                if DataSetCompareBookmarks( DBGridEh.DataSource.DataSet,
                                            DBGridEh.DataSource.DataSet.Bookmark,
                                            Selection.Rect.BottomRow ) = 1
                Then
                  Break;
                If Eof
                Then
                  Break;
                Edit;
                FieldByName( 'FLAG' ).AsInteger := V_Flag;
                Post;
                Next;
              end;
              Selection.Clear;
            end;
            {$EndRegion 'Выделена прямоугольная область'}

            {$Region 'Выделены все'}
            gstAll: //Выделены все
            Begin
              First;
              While True
              Do
              Begin
                Edit;
                FieldByName( 'FLAG' ).AsInteger := V_Flag;
                Post;
                Next;
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
      End;
    End;
   {$EndRegion 'Если выделена не одна запись'}

  End;
End;


procedure TForm_Tp_Connected_Details.VGrid_Det_ParamsRows0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
  var
   V_In_Mat_Params,
   V_Out_Mat_Params: TDynVarsEh;
begin
  With VGrid_Det_Params.DataSource.DataSet
  Do
  Begin
    V_In_Mat_Params := TDynVarsEh.Create( Application.MainForm );
    V_In_Mat_Params.DynVar[ 'Find' ].AsString := 'DET_MAT';
    V_In_Mat_Params.DynVar[ 'V_Keyword' ].AsInteger := FieldByName('DET_ID').AsInteger;
    V_Out_Mat_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Mat_Params );
    if V_Out_Mat_Params <> Nil
    Then
    Begin
      Edit;
      FieldByName('DET_MAT_ID').AsInteger := V_Out_Mat_Params.DynVar[ 'ID_MAT' ].AsInteger;
      FieldByName('DET_MAT_NAME').AsString := V_Out_Mat_Params.DynVar[ 'NAME_MAT' ].AsString;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.VGrid_Det_ParamsRows0UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
  var
   V_In_Mat_Params,
   V_Out_Mat_Params: TDynVarsEh;
begin
  With VGrid_Det_Params.DataSource.DataSet
  Do
  Begin
    if ( (FieldByName('DET_MAT_ID').IsNull)
       And (Text <> '') )
       Or ( (Not FieldByName('DET_MAT_ID').IsNull)
            And (Text <> '')
            And (Text <> FieldByName('DET_MAT_NAME').AsString) )
    Then
    Begin
      V_In_Mat_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Mat_Params.DynVar[ 'Find' ].AsString := 'DET_MAT';
      V_In_Mat_Params.DynVar[ 'V_Keyword' ].AsInteger := FieldByName('DET_ID').AsInteger;
      V_Out_Mat_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Mat_Params );
      if V_Out_Mat_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName('DET_MAT_ID').AsInteger := V_Out_Mat_Params.DynVar[ 'ID_MAT' ].AsInteger;
        Text := V_Out_Mat_Params.DynVar[ 'NAME_MAT' ].AsString;
      End;
    End
    Else if (Not FieldByName('DET_MAT_ID').IsNull)
         And (Text = '')
    Then
    Begin
      Edit;
      FieldByName('DET_MAT_ID').Clear;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.VGrid_Det_ParamsRows1UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
Begin
  With VGrid_Det_Params.DataSource.DataSet
  Do
  Begin
    If ( ( Text <> '' )
        And ( FieldByName( 'DET_EV_ID' ).IsNull ) )
        Or ( ( Text <> '' )
              And ( Not FieldByName( 'DET_EV_ID' ).IsNull )
              And ( FieldByName( 'DET_EV_CODE' ).AsString <> Text ) )
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'ED';
      v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName( 'DET_EV_ID' ).AsInteger := v_Out_Params.DynVar[ 'ID_ED' ].AsInteger;
        Text := v_Out_Params.DynVar[ 'ED_CODE' ].AsString;
      End;
    End
    Else if ( Text = '' )
         And ( Not FieldByName( 'DET_EV_ID' ).IsNull )
    Then
    Begin
      Edit;
      FieldByName( 'DET_EV_ID' ).Clear;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.VGrid_Oper_ParamsRows0UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    If ( (Text <> '')
        And (FieldByName('OBOR_ID').IsNull) )
        Or ( ( Text <> '' )
            And ( Not FieldByName('OBOR_ID').IsNull )
            And ( Text <> FieldByName('OBOR_NAME').AsString ) )

    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'OBOR';
      v_In_Params.DynVar[ 'V_Filter' ].AsString := ' Ceh = ''' +  FieldByName('CEH_CODE').AsString + ''' ';
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName( 'OBOR_ID' ).AsString := v_Out_Params.DynVar[ 'ID_OBOR' ].AsString;;
        Text := v_Out_Params.DynVar[ 'OBOR_NAME' ].AsString;
      End;
    End
    Else If ( Text = '' )
         And ( Not FieldByName( 'OBOR_ID' ).IsNull )
    Then
    Begin
      Edit;
      FieldByName( 'OBOR_ID' ).Clear;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.VGrid_Oper_ParamsRows11UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    If FieldByName( 'TP_WORK_TYPE' ).AsInteger = 71
    Then
    Begin
      FieldByName('OPER_OPPP_DET').AsFloat := StrToFloat(Text) * FieldByName('OPER_KDA').AsFloat;
    End
    Else If FieldByName( 'TP_WORK_TYPE' ).AsInteger = 55
    Then
    Begin
      FieldByName('OPER_KDP').AsFloat := (FieldByName('OPER_OPPP_DET').AsFloat/StrToFloat(Text)) * 0.7;
    End
    Else
    Begin
      If FieldByName('OPER_COUNT_INS').AsFloat = 0
      Then
      Begin
        MessageDlg( 'Деление на 0! Укажите кол-во присп. (n)!', mtError, [ mbOk ], 5 );
        Abort;
      End;
      FieldByName('OPER_OPPP_DET').AsFloat := (StrToFloat(Text) * FieldByName('OPER_KDA').AsFloat)
                                              / FieldByName('OPER_COUNT_INS').AsFloat;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.VGrid_Oper_ParamsRows12UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    If FieldByName( 'TP_WORK_TYPE' ).AsInteger = 71
    Then
    Begin
      Text := '1';
      FieldByName( 'OPER_OPPP_DET' ).AsFloat := FieldByName( 'OPER_PPPD' ).AsFloat
                                                * FieldByName( 'OPER_KDA' ).AsFloat;
      FieldByName( 'OPER_KDP' ).AsFloat := FieldByName( 'OPER_KDA' ).AsFloat;
    End
    Else
    Begin
      If StrToFloat(Text) = 0
      Then
      Begin
        MessageDlg( 'Деление на 0!', mtError, [ mbOk ], 5 );
        Abort;
      End;
      FieldByName( 'OPER_OPPP_DET' ).AsFloat := ( FieldByName( 'OPER_PPPD' ).AsFloat
                                                  * FieldByName( 'OPER_KDA' ).AsFloat ) / StrToFloat(Text);
      FieldByName( 'OPER_KDP' ).AsFloat := FieldByName( 'OPER_KDA' ).AsFloat / StrToFloat(Text);
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.VGrid_Oper_ParamsRows13UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
  var
    V_In_Doc_Params,
    V_Out_Doc_Params: TDynVarsEh;
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    if FieldByName( 'TP_WORK_TYPE' ).AsInteger = 71
    Then
    Begin
      V_In_Doc_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Doc_Params.DynVar[ 'Find' ].AsString := 'DOC';
      V_In_Doc_Params.DynVar[ 'V_Filter' ].AsString := ' Id = ' + FieldByName( 'MAIN_DOC_ID' ).AsString;
      V_Out_Doc_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Doc_Params );
      If V_Out_Doc_Params <> Nil
      Then
      Begin
        FieldByName( 'OPER_KOID' ).AsFloat := StrToFloat(Text) * FieldByName( 'OPER_KDA' ).AsFloat;
      End;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.VGrid_Oper_ParamsRows14UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    if FieldByName( 'TP_WORK_TYPE' ).AsInteger = 55
    Then
    Begin
      FieldByName( 'OPER_KDP' ).AsFloat := (StrToFloat(Text) / FieldByName( 'OPER_PPPD' ).AsFloat)*0.7;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.VGrid_Oper_ParamsRows16UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
  var
    V_In_Doc_Params,
    V_Out_Doc_Params: TDynVarsEh;
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    if FieldByName( 'TP_WORK_TYPE' ).AsInteger = 71
    Then
    Begin
      V_In_Doc_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Doc_Params.DynVar[ 'Find' ].AsString := 'DOC';
      V_In_Doc_Params.DynVar[ 'V_Filter' ].AsString := ' Id = ' + FieldByName( 'MAIN_DOC_ID' ).AsString;
      V_Out_Doc_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Doc_Params );
      If V_Out_Doc_Params <> Nil
      Then
      Begin
        FieldByName( 'OPER_KOID' ).AsFloat := StrToFloat(Text) * FieldByName( 'OPER_COUNT_BATH' ).AsFloat;
        FieldByName( 'OPER_KDP' ).AsFloat := StrToFloat(Text) / 1;
        FieldByName( 'OPER_OPPP_DET' ).AsFloat := FieldByName( 'OPER_PPPD' ).AsFloat * StrToFloat(Text);
      end;
    End
    Else
    Begin
      If FieldByName('OPER_COUNT_INS').AsFloat = 0
      Then
      Begin
        MessageDlg( 'Деление на 0! Укажите кол-во присп. (n)!', mtError, [ mbOk ], 5 );
        Abort;
      End;

      FieldByName( 'OPER_OPPP_DET' ).AsFloat := ( FieldByName( 'OPER_PPPD' ).AsFloat * StrToFloat(Text) ) / FieldByName( 'OPER_COUNT_INS' ).AsFloat;
      FieldByName( 'OPER_KDP' ).AsFloat := StrToFloat(Text) / FieldByName( 'OPER_COUNT_INS' ).AsFloat;
      FieldByName( 'OPER_KOID' ).AsFloat := StrToFloat(Text) * FieldByName( 'OPER_COUNT_BATH' ).AsFloat;
    End;
  End;
end;

procedure TForm_Tp_Connected_Details.VGrid_Oper_ParamsRows9UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
begin
  If VGrid_Oper_Params.DataSource.DataSet.FieldByName('TP_WORK_TYPE').AsInteger = 71
  Then
  Begin
    If VGrid_Oper_Params.DataSource.DataSet.FieldByName('OPER_KDA').IsNull
    Then
    Begin
      MessageDlg( 'Укажите параметр КДА!', mtError, [ mbOk ], 5 );
      Abort;
    End;
  End;
end;

end.
