unit Tp_TechProc_ListFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB,
  MemTableEh, Oracle, PrnDbgeh, Vcl.Menus, OracleData, Vcl.WinXCtrls,
  Vcl.StdCtrls, DBVertGridsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Clipbrd,
  Filter_DropDown,
  FilterOption_Form, PrViewEh, Printers, DBGridEhImpExp,
  Udm_Main,
  Tp_Main_Form;

type
  TFrame_TechProc_List = class(TFrame)
    Panel1: TPanel;
    Panel_Main_Info: TPanel;
    Grid_Docs_List: TDBGridEh;
    Grid_Cehs_Docs: TDBGridEh;
    VGrid_Info: TDBVertGridEh;
    Grid_Doc_Appr: TDBGridEh;
    Panel_Main_Filter_Btn: TPanel;
    Btn_Open_Filters: TButton;
    Btn_Refresh_Info: TButton;
    SplitView1: TSplitView;
    VGrid_Filter: TDBVertGridEh;
    Db_Info: TOracleDataSet;
    Data_Info: TDataSource;
    Pop_M: TPopupMenu;
    PM_Btn_Create: TMenuItem;
    PM_Btn_New_Vers: TMenuItem;
    PM_Btn_Edit: TMenuItem;
    PM_Btn_Edit_Doc_Info: TMenuItem;
    PM_Btn_Edit_Doc_Tech_Proc: TMenuItem;
    PM_Btn_Sign_Doc: TMenuItem;
    PM_Btn_UnSign_Doc: TMenuItem;
    PM_Btn_Doc_Delete: TMenuItem;
    PM_Btn_Doc_Print: TMenuItem;
    PM_Btn_Doc_See_Main_Doc_Rep: TMenuItem;
    PM_Btn_Doc_See_Main_Doc_Rep_W_Files: TMenuItem;
    PM_Btn_Doc_See_Main_Doc_Export: TMenuItem;
    PM_Btn_Doc_See_Main_Doc_Export_PDF: TMenuItem;
    PM_Doc_See_Main_Doc_Export_Excel: TMenuItem;
    PM_Btn_Doc_See_Doc_By_Ceh: TMenuItem;
    PM_Btn_Doc_See_Doc_By_Ceh_Rep: TMenuItem;
    PM_Btn_Doc_See_Doc_By_Ceh_Rep_Export: TMenuItem;
    PM_Btn_Doc_See_Doc_By_Ceh_Rep_Export_PDF: TMenuItem;
    PM_Btn_Doc_See_Doc_By_Ceh_Rep_Export_Excel: TMenuItem;
    Pop_M_Main_Btn_Doc_Changes: TMenuItem;
    Pop_M_Main_Btn_Doc_Files: TMenuItem;
    Pop_M_Main_Btn_Doc_Com: TMenuItem;
    Pop_M_Main_Btn_Doc_Lst: TMenuItem;
    Pop_M_Main_Btn_Doc_Lst_Prnt: TMenuItem;
    Pop_M_Main_Btn_Doc_Lst_Export: TMenuItem;
    Save_Grid: TSaveDialog;
    Print_Grid: TPrintDBGridEh;
    PKG_TP_DOC: TOraclePackage;
    Q_Delete_Doc: TOracleQuery;
    Db_Appr: TOracleDataSet;
    Data_Appr: TDataSource;
    MemT_Filters: TMemTableEh;
    Data_Filters: TDataSource;
    PM_Btn_Doc_Edit: TMenuItem;
    Db_Main_Info: TOracleDataSet;
    Db_Sogl_Info: TOracleDataSet;
    Db_ApprID_DOC_ROUT_POINT: TIntegerField;
    Db_ApprDOC_ROUT_ID: TIntegerField;
    Db_ApprDEP_CODE: TStringField;
    Db_ApprPOINT_POSITION: TStringField;
    Db_ApprPOINT_NAME: TStringField;
    Db_ApprDATE_OUT: TDateTimeField;
    Db_ApprRESULT_NAME: TStringField;
    Db_ApprEMP_FIO: TStringField;
    Db_ApprROUT_STATUS: TStringField;
    Db_ApprSTP_DOC_ROUT_POINT_ID: TIntegerField;
    Db_ApprCANCEL_FLAG: TFloatField;
    Db_ApprDATE_IN: TDateTimeField;
    Pkg_Tech_Proc: TOraclePackage;
    Pkg_Doc: TOraclePackage;
    PM_Btn_Merge_Doc: TMenuItem;
    N1: TMenuItem;
    Db_Sogl_InfoID: TFloatField;
    Db_Sogl_InfoID_VERS: TIntegerField;
    Db_Sogl_InfoID_DOC_FULL: TStringField;
    Db_Sogl_InfoDOC_HEADER_ID: TFloatField;
    Db_Sogl_InfoDATE_START_ROUTE: TDateTimeField;
    Db_Sogl_InfoCREATE_USER_ID: TStringField;
    Db_Sogl_InfoDOC_NUM: TStringField;
    Db_Sogl_InfoPARENT_DOC_ID: TIntegerField;
    Db_Sogl_InfoPARENT_DOC: TStringField;
    Db_Sogl_InfoMAIN_DOC_ID: TFloatField;
    Db_Sogl_InfoMAIN_DOC_NUM: TStringField;
    Db_Sogl_InfoCANCEL_DOC_ID: TFloatField;
    Db_Sogl_InfoCANCEL_DOC_NUM: TStringField;
    Db_Sogl_InfoCANCEL_FLAG: TFloatField;
    Db_Sogl_InfoCANCEL_FLAG_NAME: TStringField;
    Db_Sogl_InfoDET_ID: TFloatField;
    Db_Sogl_InfoDET_NUM_NAME: TStringField;
    Db_Sogl_InfoCEH_ID: TFloatField;
    Db_Sogl_InfoCEH_CODE: TStringField;
    Db_Sogl_InfoPROJECT_FLAG: TIntegerField;
    Db_Sogl_InfoAUTHOR_LNUM: TIntegerField;
    Db_Sogl_InfoAUTHOR_NAME: TStringField;
    Db_Sogl_InfoDATA_REG: TDateTimeField;
    Db_Sogl_InfoREASON: TStringField;
    Db_Sogl_InfoCEH_DOCS_FLAG: TFloatField;
    Db_Sogl_InfoDET_MAR: TStringField;
    Db_Sogl_InfoDOC_TYPE: TFloatField;
    Db_Sogl_InfoDOC_TYPE_NAME: TStringField;
    Db_Sogl_InfoDOC_LITER: TStringField;
    Db_Sogl_InfoTP_NUM: TStringField;
    Db_Sogl_InfoTP_NAME: TStringField;
    Db_Sogl_InfoTP_WORK_TYPE: TFloatField;
    Db_Sogl_InfoFLAG_IMP: TFloatField;
    Db_Sogl_InfoFLAG_IMP_NAME: TStringField;
    Db_Sogl_InfoTP_WORK_TYPE_NAME: TStringField;
    Db_Sogl_InfoIZD_NAME_TYPE: TStringField;
    Db_Sogl_InfoIZD_ID: TFloatField;
    Db_Sogl_InfoACT_NUM: TFloatField;
    Db_Sogl_InfoACT_DATE: TDateTimeField;
    Db_Sogl_InfoNEGATIVE_FLAG: TFloatField;
    Db_Main_InfoID: TFloatField;
    Db_Main_InfoID_VERS: TIntegerField;
    Db_Main_InfoID_DOC_FULL: TStringField;
    Db_Main_InfoDOC_HEADER_ID: TFloatField;
    Db_Main_InfoDATE_START_ROUTE: TDateTimeField;
    Db_Main_InfoDOC_NUM: TStringField;
    Db_Main_InfoPARENT_DOC_ID: TIntegerField;
    Db_Main_InfoPARENT_DOC: TStringField;
    Db_Main_InfoMAIN_DOC_ID: TFloatField;
    Db_Main_InfoCREATE_USER_ID: TStringField;
    Db_Main_InfoMAIN_DOC_NUM: TStringField;
    Db_Main_InfoCANCEL_DOC_ID: TFloatField;
    Db_Main_InfoCANCEL_DOC_NUM: TStringField;
    Db_Main_InfoCANCEL_FLAG: TFloatField;
    Db_Main_InfoCANCEL_FLAG_NAME: TStringField;
    Db_Main_InfoDET_ID: TFloatField;
    Db_Main_InfoDET_NUM_NAME: TStringField;
    Db_Main_InfoCEH_ID: TFloatField;
    Db_Main_InfoCEH_CODE: TStringField;
    Db_Main_InfoPROJECT_FLAG: TIntegerField;
    Db_Main_InfoAUTHOR_LNUM: TIntegerField;
    Db_Main_InfoAUTHOR_NAME: TStringField;
    Db_Main_InfoDATA_REG: TDateTimeField;
    Db_Main_InfoREASON: TStringField;
    Db_Main_InfoCEH_DOCS_FLAG: TFloatField;
    Db_Main_InfoDET_MAR: TStringField;
    Db_Main_InfoDOC_TYPE: TFloatField;
    Db_Main_InfoDOC_TYPE_NAME: TStringField;
    Db_Main_InfoDOC_LITER: TStringField;
    Db_Main_InfoTP_NUM: TStringField;
    Db_Main_InfoTP_NAME: TStringField;
    Db_Main_InfoTP_WORK_TYPE: TFloatField;
    Db_Main_InfoFLAG_IMP: TFloatField;
    Db_Main_InfoFLAG_IMP_NAME: TStringField;
    Db_Main_InfoTP_WORK_TYPE_NAME: TStringField;
    Db_Main_InfoIZD_NAME_TYPE: TStringField;
    Db_Main_InfoIZD_ID: TFloatField;
    Db_Main_InfoACT_NUM: TFloatField;
    Db_Main_InfoACT_DATE: TDateTimeField;
    Db_Main_InfoNEGATIVE_FLAG: TFloatField;
    Db_InfoID: TFloatField;
    Db_InfoID_VERS: TIntegerField;
    Db_InfoID_DOC_FULL: TStringField;
    Db_InfoDOC_HEADER_ID: TFloatField;
    Db_InfoDATE_START_ROUTE: TDateTimeField;
    Db_InfoDOC_NUM: TStringField;
    Db_InfoPARENT_DOC_ID: TIntegerField;
    Db_InfoPARENT_DOC: TStringField;
    Db_InfoMAIN_DOC_ID: TFloatField;
    Db_InfoCREATE_USER_ID: TStringField;
    Db_InfoMAIN_DOC_NUM: TStringField;
    Db_InfoCANCEL_DOC_ID: TFloatField;
    Db_InfoCANCEL_DOC_NUM: TStringField;
    Db_InfoCANCEL_FLAG: TFloatField;
    Db_InfoCANCEL_FLAG_NAME: TStringField;
    Db_InfoDET_ID: TFloatField;
    Db_InfoDET_NUM_NAME: TStringField;
    Db_InfoCEH_ID: TFloatField;
    Db_InfoCEH_CODE: TStringField;
    Db_InfoPROJECT_FLAG: TIntegerField;
    Db_InfoAUTHOR_LNUM: TIntegerField;
    Db_InfoAUTHOR_NAME: TStringField;
    Db_InfoDATA_REG: TDateTimeField;
    Db_InfoREASON: TStringField;
    Db_InfoCEH_DOCS_FLAG: TFloatField;
    Db_InfoDET_MAR: TStringField;
    Db_InfoDOC_TYPE: TFloatField;
    Db_InfoDOC_TYPE_NAME: TStringField;
    Db_InfoDOC_LITER: TStringField;
    Db_InfoTP_NUM: TStringField;
    Db_InfoTP_NAME: TStringField;
    Db_InfoTP_WORK_TYPE: TFloatField;
    Db_InfoFLAG_IMP: TFloatField;
    Db_InfoFLAG_IMP_NAME: TStringField;
    Db_InfoTP_WORK_TYPE_NAME: TStringField;
    Db_InfoIZD_NAME_TYPE: TStringField;
    Db_InfoIZD_ID: TFloatField;
    Db_InfoACT_NUM: TFloatField;
    Db_InfoACT_DATE: TDateTimeField;
    Db_InfoNEGATIVE_FLAG: TFloatField;
    PM_Btn_CoAuthors: TMenuItem;
    procedure Btn_Open_FiltersClick(Sender: TObject);
    procedure Grid_Docs_ListDblClick(Sender: TObject);
    procedure PM_Btn_Edit_Doc_InfoClick(Sender: TObject);
    procedure PM_Btn_New_VersClick(Sender: TObject);
    procedure PM_Btn_Edit_Doc_Tech_ProcClick(Sender: TObject);
    procedure Pop_M_Main_Btn_Doc_FilesClick(Sender: TObject);
    procedure Pop_M_Main_Btn_Doc_ComClick(Sender: TObject);
    procedure PM_Btn_UnSign_DocClick(Sender: TObject);
    procedure Pop_M_Main_Btn_Doc_Reverse_ToClick(Sender: TObject);
    procedure PM_Btn_Sign_DocClick(Sender: TObject);
    procedure Pop_M_Main_Btn_Doc_ChangesClick(Sender: TObject);
    procedure PM_Btn_Doc_DeleteClick(Sender: TObject);
    procedure Grid_Docs_ListGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Grid_Doc_ApprGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Btn_Refresh_InfoClick(Sender: TObject);
    procedure VGrid_FilterGetCellParams(Sender: TObject; Row: TFieldRowEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Db_InfoAfterScroll(DataSet: TDataSet);
    procedure Pop_MPopup(Sender: TObject);
    procedure Pop_M_Main_Btn_Doc_Lst_PrntClick(Sender: TObject);
    procedure Pop_M_Main_Btn_Doc_Lst_ExportClick(Sender: TObject);
    procedure PM_Btn_CreateClick(Sender: TObject);
    procedure PM_Btn_Doc_See_Main_Doc_RepClick(Sender: TObject);
    procedure Grid_Docs_ListColumns0CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Grid_Docs_ListColumns0CellButtons1Click(Sender: TObject;
      var Handled: Boolean);
    procedure Grid_Docs_ListColumns0CellButtons1Draw(Grid: TCustomDBGridEh;
      Column: TColumnEh; CellButton: TDBGridCellButtonEh; Canvas: TCanvas; Cell,
      AreaCell: TGridCoord; const ARect: TRect;
      ButtonDrawParams: TCellButtonDrawParamsEh; var Handled: Boolean);
    procedure VGrid_InfoGetCellParams(Sender: TObject; Row: TFieldRowEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PM_Btn_Merge_DocClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure PM_Btn_CoAuthorsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arr_AllFilters: Array of TStringList;
    procedure VGridFilterRowsOpenDropDownForm(Grid: TCustomDBVertGridEh;
      Column: TFieldRowEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure VGridFilterRowsCloseDropDownForm(Grid: TCustomDBVertGridEh;
      Column: TFieldRowEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure VGridFilterApplyFilter(Sender: TObject);
    constructor Create(AOwner: TComponent; FrameFlag: String);
  end;

implementation

{$R *.dfm}

uses
Tp_Doc_Files_Form,
Tp_Doc_Comm_Form,
Tp_Data_Changes,
Tp_TechProc_CoAuthorsForm;


procedure TFrame_TechProc_List.Btn_Open_FiltersClick(Sender: TObject);
begin
  if SplitView1.Opened
  Then
  Begin
    SplitView1.Opened:= False;
  End
  Else if Not SplitView1.Opened
  Then
  Begin
    SplitView1.Opened:= True;
  End;
end;

procedure TFrame_TechProc_List.Btn_Refresh_InfoClick(Sender: TObject);
begin
  Grid_Docs_List.SaveBookmark;
  Db_Info.Refresh;
  Grid_Docs_List.RestoreBookmark;
end;

constructor TFrame_TechProc_List.Create(AOwner: TComponent; FrameFlag: String);
begin
  inherited Create(AOwner);
  Name := FrameFlag;
  Db_Info.SQL.Clear;
  if FrameFlag = '_Main_'
  then
  begin
    Db_Info.SQL.Clear;
    Db_Info.SQL.Add(Db_Main_Info.SQL.Text);
  end
  else if FrameFlag = '_Appr_'
  then
  begin
    Db_Info.SQL.Clear;
    Db_Info.SQL.Add(Db_Sogl_Info.SQL.Text);
  end
end;

procedure TFrame_TechProc_List.Db_InfoAfterScroll(DataSet: TDataSet);
var
  I: Integer;
begin
 With DataSet
  Do
  Begin
    if (Not IsEmpty)
    Then
    Begin
      Db_Appr.SetVariable( 'Doc_Header_Id', FieldByName('Doc_Header_Id').AsString );
      Db_Appr.Refresh;
    End;
  End;

  With VGrid_Info Do
  Begin
    for i := 0 to Rows.Count - 1
    do
    begin
      if DataSource.DataSet.FieldByName(Rows[i].FieldName).AsString = ''
      then
        Rows[i].Visible := False
      else
        Rows[i].Visible := True;
    end;

    {Case DataSet.FieldByName('DOC_TYPE').AsInteger
    Of
      1:
      Begin
        FindFieldRow( 'TP_NUM' ).Visible := False;
        FindFieldRow( 'TP_NAME' ).Visible := False;
        FindFieldRow( 'TP_WORK_TYPE_NAME' ).Visible := False;
        FindFieldRow( 'IZD_NAME_TYPE' ).Visible := True;
        FindFieldRow( 'DET_NUM_NAME' ).Visible := True;
        FindFieldRow( 'DET_MAR' ).Visible := True;
      End;

      5:
      Begin
        FindFieldRow( 'TP_NUM' ).Visible := True;
        FindFieldRow( 'TP_NAME' ).Visible := True;
        FindFieldRow( 'TP_WORK_TYPE_NAME' ).Visible := True;
        FindFieldRow( 'IZD_NAME_TYPE' ).Visible := True;
        FindFieldRow( 'DET_NUM_NAME' ).Visible := False;
        FindFieldRow( 'DET_MAR' ).Visible := False;
      End;

      4:
      Begin
        FindFieldRow( 'TP_NUM' ).Visible := True;
        FindFieldRow( 'TP_NAME' ).Visible := True;
        FindFieldRow( 'TP_WORK_TYPE_NAME' ).Visible := True;
        FindFieldRow( 'IZD_NAME_TYPE' ).Visible := True;
        FindFieldRow( 'DET_NUM_NAME' ).Visible := False;
        FindFieldRow( 'DET_MAR' ).Visible := False;
      End;

      Else
      Begin
        FindFieldRow( 'TP_NUM' ).Visible := True;
        FindFieldRow( 'TP_NAME' ).Visible := True;
        FindFieldRow( 'TP_WORK_TYPE_NAME' ).Visible := True;
        FindFieldRow( 'IZD_NAME_TYPE' ).Visible := False;
        FindFieldRow( 'DET_NUM_NAME' ).Visible := False;
        FindFieldRow( 'DET_MAR' ).Visible := False;
      End;
    End;}
  End;
end;

procedure TFrame_TechProc_List.Grid_Docs_ListColumns0CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  Form_Tech_Proc_Main.P_Approve_Doc( Grid_Docs_List );
end;

procedure TFrame_TechProc_List.Grid_Docs_ListColumns0CellButtons1Click(
  Sender: TObject; var Handled: Boolean);
  var
  v_In_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsString := Db_Info.FieldByName('Doc_Header_Id').AsString;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
  Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TFrame_TechProc_List.Grid_Docs_ListColumns0CellButtons1Draw(
  Grid: TCustomDBGridEh; Column: TColumnEh; CellButton: TDBGridCellButtonEh;
  Canvas: TCanvas; Cell, AreaCell: TGridCoord; const ARect: TRect;
  ButtonDrawParams: TCellButtonDrawParamsEh; var Handled: Boolean);
begin
  ButtonDrawParams.Transparency := 0;
end;

procedure TFrame_TechProc_List.Grid_Docs_ListDblClick(Sender: TObject);
begin
 Form_Tech_Proc_Main.P_Open_Doc(Grid_Docs_List);
end;

procedure TFrame_TechProc_List.Grid_Docs_ListGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
  var i: integer;
begin
  With TDbGridEh( Sender ).DataSource.DataSet
  Do
  Begin
    If Not IsEmpty
    Then
    Begin
     if FieldByName( 'FLAG_IMP' ).AsInteger = 1
     then
     Begin
       AFont.Color := clGreen;
       AFont.Style := AFont.Style + [ fsBold ];
     End
     Else if FieldByName( 'FLAG_IMP' ).AsInteger = 2
     then
     Begin
       AFont.Color := clRed;
       AFont.Style := AFont.Style + [ fsBold ];
     End;

     if FieldByName( 'CANCEL_FLAG' ).AsInteger = 1
     Then
     Begin
       Background := clMenu;
       AFont.Color := clGray;
     End;

     if FieldByName( 'CANCEL_FLAG' ).AsInteger = 2
     Then
     Begin
       Background := $00A7EDFE;
       AFont.Color := clRed;
     End;

     if FieldByName( 'NEGATIVE_FLAG' ).AsInteger = 1
     Then
     Begin
       Background := $00C1B6FF;
       AFont.Color := clRed;
     End;
    End;
  End;
end;

procedure TFrame_TechProc_List.Grid_Doc_ApprGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  With TDBGridEh( Sender ).DataSource.DataSet
  Do
  Begin
   If ( Not IsEmpty )
   Then
   Begin
     If FieldByName( 'Stp_Doc_Rout_Point_Id' ).AsString = '2264' then Background := $0000D7FF
     Else if FieldByName( 'Stp_Doc_Rout_Point_Id' ).AsString = '2262' then Background := $00DEC4B0
     Else if FieldByName( 'Stp_Doc_Rout_Point_Id' ).AsString = '2263' then Background := $00EEEEAF
     Else if FieldByName( 'Stp_Doc_Rout_Point_Id' ).AsString = '2261' then Background := $00E6D8AD
     Else if FieldByName( 'Stp_Doc_Rout_Point_Id' ).AsString = '2187' then Background := $00E6D8AD
     Else if FieldByName( 'Stp_Doc_Rout_Point_Id' ).AsString = '2265' then Background := $0098FB98
     Else if FieldByName( 'Stp_Doc_Rout_Point_Id' ).AsString = '2301' then Background := $00E6D8AD
     Else if FieldByName( 'Stp_Doc_Rout_Point_Id' ).AsString = '2501' then Background := $00FBD0D7;


     If FieldByName( 'Cancel_Flag' ).AsInteger = 1
     Then
     Begin
       Background := clMenu;
       AFont.Color := clGray;
     End
     Else if (Not FieldByName( 'Date_Out' ).IsNull )
              And ( Column.FieldName = 'RESULT_NAME' )
     Then Background := $0098FB98
     Else if ( FieldByName( 'Date_Out' ).IsNull)
              And (Not FieldByName( 'Date_In' ).IsNull )
              And ( Column.FieldName = 'RESULT_NAME' )
     Then Background := $0000D7FF
     Else if (FieldByName( 'Date_Out' ).IsNull )
              And (FieldByName( 'Date_In' ).IsNull )
              And ( Column.FieldName = 'RESULT_NAME' )
     Then Background := clWhite;

     if ( Pos ( 'Отказ', FieldByName( 'RESULT_NAME' ).AsString ) <> 0 )
     Then
     Begin
       Background := $00C1B6FF;
       AFont.Color := clRed;
     End;
   End;
  End;
end;

procedure TFrame_TechProc_List.N1Click(Sender: TObject);
begin
  Form_Tech_Proc_Main.P_Open_Doc_Info( Grid_Docs_List.DataSource.DataSet.FieldByName('Doc_Header_Id').AsInteger, dsInternalSign );
end;

procedure TFrame_TechProc_List.PM_Btn_New_VersClick(Sender: TObject);
begin
  Form_Tech_Proc_Main.P_Open_Doc_Info( Grid_Docs_List.DataSource.DataSet.FieldByName('Doc_Header_Id').AsInteger, dsNewModif );
end;

procedure TFrame_TechProc_List.PM_Btn_Sign_DocClick(Sender: TObject);
begin
  Form_Tech_Proc_Main.P_Approve_Doc( Grid_Docs_List );
end;

procedure TFrame_TechProc_List.PM_Btn_UnSign_DocClick(Sender: TObject);
Var
  Vl_In_Params, Vl_Out_Params: TDynVarsEh;
begin
  Vl_In_Params := TDynVarsEh.Create( Application.MainForm );
  Vl_In_Params.DynVar[ 'Find' ].AsString := 'SIGN_STEPS';
  Vl_In_Params.DynVar[ 'Filter' ].AsString := ' p.Doc_Rout_Id = ' + Db_Info.FieldByName('Doc_Header_Id').AsString
                                                + ' And p.Result_User_Id = ''' + DM_Main.Session.LogonUsername + ''' ';

  Vl_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Params );
  if (Vl_Out_Params <> Nil)
      Or (Db_Info.FieldByName('Create_User_Id').AsString = DM_Main.Session.LogonUsername)
      Or (Pkg_Doc.CallIntegerFunction('F_Check_CoAuthors', [Db_Info.FieldByName('Doc_Header_Id').AsString])=1)
  Then
  Begin
    If MessageBox( Application.ActiveFormHandle, PWideChar( 'Снять подпись с документа!? ' + #13#10
                                                            + 'Согласование всех сторон будет сброшено и документ вернется к Вам на согласование! '),
                                                 'ВНИМАНИЕ!',
                                                 MB_YESNO + MB_ICONINFORMATION ) = ID_YES
    Then
    Begin
      if (Db_Info.FieldByName('Create_User_Id').AsString = DM_Main.Session.LogonUsername)
          or (Pkg_Doc.CallIntegerFunction('F_Check_CoAuthors', [Db_Info.FieldByName('Doc_Header_Id').AsString])=1)
      then
        Pkg_Doc.CallProcedure('P_Break_Driving', [Db_Info.FieldByName('Doc_Header_Id').AsString])
      else
        Pkg_Tech_Proc.CallProcedure( 'P_Unset_Resoltion', [ Vl_Out_Params.DynVar[ 'Id_Doc_Rout_Point' ].AsInteger ] );
      Db_Appr.Refresh;
    End;
  End
  Else
  Begin
    MessageDlg('Вы не подписывали данный документ!', mtError, [mbOK], 5);
  End;
end;

procedure TFrame_TechProc_List.Pop_MPopup(Sender: TObject);
begin
  with Form_Tech_Proc_Main.FindOpenedFrame(Form_Tech_Proc_Main.Page_Control.ActivePage.Name).ViewFrame as TFrame_TechProc_List
  do
  begin
    if (Pos('_Main_', Name) <> 0)
    then
    begin
      PM_Btn_Create.Visible := True;
      PM_Btn_New_Vers.Visible := True;
      PM_Btn_Edit.Visible := True;
      PM_Btn_Doc_Edit.Visible := False;
      PM_Btn_UnSign_Doc.Visible := True;
      PM_Btn_Doc_Delete.Visible := True;
    end
    else
    begin
      PM_Btn_Create.Visible := False;
      PM_Btn_New_Vers.Visible := False;
      PM_Btn_Edit.Visible := False;
      PM_Btn_Doc_Edit.Visible := True;
      PM_Btn_UnSign_Doc.Visible := False;
      PM_Btn_Doc_Delete.Visible := False;
    end;

    if Db_Info.FieldByName('Doc_Type').AsInteger = 1
    then
    begin
      PM_Btn_Doc_See_Doc_By_Ceh.Visible := True;
    end
    else
    begin
      PM_Btn_Doc_See_Doc_By_Ceh.Visible := False;
    end;

    if (Db_Info.FieldByName('Create_User_Id').AsString = DM_Main.Session.LogonUsername)
        or (Pkg_Doc.CallIntegerFunction('F_Check_CoAuthors', [Db_Info.FieldByName('Doc_Header_Id').AsString])=1)
    then
      PM_Btn_UnSign_Doc.Caption := 'Снять с согласования'
    else
      PM_Btn_UnSign_Doc.Caption := 'Снять подпись';

    if Db_Info.FieldByName('Parent_Doc_Id').IsNull
    then
      PM_Btn_Merge_Doc.Visible := False
    else
      PM_Btn_Merge_Doc.Visible := True;

    if Db_Appr.IsEmpty
    then
      PM_Btn_Sign_Doc.Enabled := False
    else
      PM_Btn_Sign_Doc.Enabled := True;

    if Not Form_Tech_Proc_Main.User_Edit
    then
    begin
      PM_Btn_Create.Enabled := False;
      PM_Btn_New_Vers.Enabled := False;
      PM_Btn_Edit_Doc_Info.Enabled := False;
      PM_Btn_Sign_Doc.Enabled := False;
      PM_Btn_UnSign_Doc.Enabled := False;
      PM_Btn_Doc_Delete.Enabled := False;
      PM_Btn_Doc_Edit.Enabled := False;
      PM_Btn_Merge_Doc.Enabled := False;
    end
    else
    begin
      PM_Btn_Create.Enabled := True;
      PM_Btn_New_Vers.Enabled := True;
      PM_Btn_Edit_Doc_Info.Enabled := True;
      PM_Btn_Sign_Doc.Enabled := True;
      PM_Btn_UnSign_Doc.Enabled := True;
      PM_Btn_Doc_Delete.Enabled := True;
      PM_Btn_Doc_Edit.Enabled := True;
      PM_Btn_Merge_Doc.Enabled := True;
    end;
  end;
end;

procedure TFrame_TechProc_List.Pop_M_Main_Btn_Doc_ChangesClick(
  Sender: TObject);
begin
  Tp_Data_Changes.Form_Tp_Data_Changes.v_Doc_Id := Db_Info.FieldByName('Id').AsInteger;
  Tp_Data_Changes.Form_Tp_Data_Changes.ShowModal;
end;

procedure TFrame_TechProc_List.Pop_M_Main_Btn_Doc_ComClick(Sender: TObject);
begin
  with TForm_Doc_Comments.Create(Self, Db_Info.FieldByName('Doc_Header_Id').AsInteger)
  do
  begin
    try
      ShowModal;
    finally
      Free;
    end;
  end
end;

procedure TFrame_TechProc_List.Pop_M_Main_Btn_Doc_FilesClick(
  Sender: TObject);
begin
  with TForm_Doc_Files.Create(Self, Db_Info.FieldByName('Doc_Header_Id').AsInteger)
  do
  begin
    try
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TFrame_TechProc_List.Pop_M_Main_Btn_Doc_Lst_ExportClick(
  Sender: TObject);
var
  ExpClass: TDBGridEhExportClass;
  Ext: String;
  Title_Text: String;
begin
  with Db_Info
  do
  begin
    DisableControls;
    try
      Title_Text := Form_Tech_Proc_Main.Page_Control.ActivePage.Caption
                    + '_Пользователь_' + UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[])
                    + '_Дата печати_' + DateToStr(Now());
      Title_Text := StringReplace(Title_Text, ':', '_',
                              [rfReplaceAll, rfIgnoreCase]);
      Title_Text := StringReplace(Title_Text, ' ', '_',
                              [rfReplaceAll, rfIgnoreCase]);
      Title_Text := StringReplace(Title_Text, '.', '_',
                              [rfReplaceAll, rfIgnoreCase]);

      Save_Grid.FileName := Title_Text;
      If Save_Grid.Execute
      Then
      Begin

        {$Region 'Выбор формата'}
        Case Save_Grid.FilterIndex
        Of
          1:
          Begin
            ExpClass:= TDBGridEhExportAsXlsx ;
            Ext:= '.xlsx';
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
            ExpClass:= TDBGridEhExportAsText;
            Ext:= '.txt';
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
            Db_Info.QueryAllRecords := True;
            SaveDBGridEhToExportFile( ExpClass,
                                      Grid_Docs_List,
                                      Save_Grid.FileName,
                                      True );
            Db_Info.QueryAllRecords := False;
          End;
        End;
      End;
    finally
      EnableControls;
    end;
  end;
end;

procedure TFrame_TechProc_List.Pop_M_Main_Btn_Doc_Lst_PrntClick(
  Sender: TObject);
Var
  V_Active_Grid: TDBGridEh;
  Title_Text: String;
  Filter_Text: String;
  I: Integer;
begin
  with Db_Info
  do
  begin
    DisableControls;
    try
      Title_Text := Form_Tech_Proc_Main.Page_Control.ActivePage.Caption
                    + '. Пользователь:' + UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[])
                    + ' Дата печати: ' + DateToStr(Now());

      PrinterPreview.Orientation := poLandscape;
      Print_Grid.DBGridEh := Grid_Docs_List;
      Print_Grid.PageHeader.LeftText.Clear;
      Print_Grid.PageHeader.LeftText.Add( Title_Text );
      for I := 0 to VGrid_Filter.Rows.Count-1
      do
      begin
        if VGrid_Filter.Rows[i].Field.AsString <> ''
        then
        begin
          if Filter_Text = ''
          then
            Filter_Text := 'Cписок отфильтрова по: ';
          Filter_Text := Filter_Text
                         + 'Столбец "'
                         + VGrid_Filter.Rows[i].RowLabel.Caption + '" '
                         + VGrid_Filter.Rows[i].Field.AsString + #13#10;
        end;
      end;
      Print_Grid.PageFooter.LeftText.Clear;
      Print_Grid.PageFooter.LeftText.Add(Filter_Text);
      Print_Grid.Preview;
    finally
      EnableControls;
    end;
  end;
end;

procedure TFrame_TechProc_List.Pop_M_Main_Btn_Doc_Reverse_ToClick(
  Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  Form_Tech_Proc_Main.P_Return_Doc( v_In_Params, Grid_Docs_List );
end;

procedure TFrame_TechProc_List.PM_Btn_Doc_See_Main_Doc_RepClick(
  Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  If Sender.ClassType = TMenuItem
  Then
  Begin
    v_In_Params := TDynVarsEh.Create( Application.MainForm );

    If ( Pos('See_Main_Doc', TMenuItem( Sender ).Name ) <> 0 )
    Then
      v_In_Params.DynVar[ 'Format' ].AsString := 'Main_Document'
    Else if ( Pos('See_Doc', TMenuItem( Sender ).Name ) <> 0 )
             And ( Pos('See_Doc_By_Ceh', TMenuItem( Sender ).Name ) = 0 )
    Then
      v_In_Params.DynVar[ 'Format' ].AsString := 'Document'
    Else if ( Pos('See_Doc_By_Ceh', TMenuItem( Sender ).Name ) <> 0 )
    Then
      v_In_Params.DynVar[ 'Format' ].AsString := 'Document_For_Ceh';

    If ( Pos('_Rep', TMenuItem( Sender ).Name ) <> 0 )
        And ( Pos('_Rep_W_Files', TMenuItem( Sender ).Name ) = 0 )
    Then
      v_In_Params.DynVar[ 'Action' ].AsString := 'Show'
    Else if ( Pos('_Export_Excel', TMenuItem( Sender ).Name ) <> 0 )
    Then
      v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Excel'
    Else if ( Pos('_Export_PDF', TMenuItem( Sender ).Name ) <> 0 )
    Then
      v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Pdf'
    Else if ( Pos('_Rep_W_Files', TMenuItem( Sender ).Name ) <> 0 )
    Then
      v_In_Params.DynVar[ 'Action' ].AsString := 'Show_All_In_Pdf';

    Form_Tech_Proc_Main.P_Report_Tech_Process( V_In_Params, Grid_Docs_List );
  End;
end;

procedure TFrame_TechProc_List.VGridFilterApplyFilter(Sender: TObject);
Var
  Vl_Filer_Str, Vl_ColumnFilter, CustomFilerValue,
  Vl_Sql_Text, Sql_Before_Filter, Sql_After_Filter,
  Vl_Operator_1,
  Vl_Operand_1,
  Vl_Operator_2,
  Vl_Operand_2,
  Vl_Relation, FilterFieldName: String;
  Arr_ColumnFilters: Array Of TStringList;
  i,j, k, FilterCount: Integer;
begin
  With TDBVertGridEh(Sender)
  Do
  Begin
    FilterCount := 0;
    For i := 0 to Rows.Count-1
    Do
    Begin
      If DataSource.DataSet.FieldByName(Rows[i].FieldName).AsString <> ''
      Then
      Begin
        Inc(FilterCount);
        Vl_ColumnFilter := '';

        If Vl_Filer_Str <> ''
        Then
         Vl_Filer_Str := Vl_Filer_Str + ' and ';

        for j := Low((Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).Arr_AllGlobalFilterExpression)
            to High((Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).Arr_AllGlobalFilterExpression)
        do
        begin
          with (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).Arr_AllGlobalFilterExpression[j]
          do
          begin
            SetLength(Arr_ColumnFilters, Length((Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).Arr_AllGlobalFilterExpression));


            Arr_ColumnFilters[j] := TStringList.Create;
            with Arr_ColumnFilters[j]
            do
            begin
              Add('Operator=' + DropDown_Filter.F_ConvertFilterOperatorToString(FilterOperator, True));
              Add('Operand');
              if (Arr_AllFilters[i] as TStringList).Values['FilterType'] = 'default'
              then
              begin
                if (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType = fltoptString
                then
                  Add('FilterFieldName=upper(' + Rows[i].FieldName + ')')
                else
                  Add('FilterFieldName=' + Rows[i].FieldName);
              end
              else if (Arr_AllFilters[i] as TStringList).Values['FilterType'] = 'custom'
              then
              begin
                Add('FilterFieldName=' + Copy(AnsiUpperCase((Arr_AllFilters[i] as TStringList).Values['FiterValue']), 0,
                                        Pos('/*FILTER START*/', AnsiUpperCase((Arr_AllFilters[i] as TStringList).Values['FiterValue']))-1 ));
              end;

              If FiltersRelation <> fltopNone
              Then
                Add('RelationWithPrev='+ DropDown_Filter.F_ConvertFilterOperatorToString(FiltersRelation, True));
            end;

            {$Region 'Определение операндов'}
            Case (VarType(FilterValue))
            Of
              varArray + varVariant:
              Begin
                For k := VarArrayLowBound(FilterValue, 1) to VarArrayHighBound(FilterValue, 1)
                Do
                Begin
                  if k = VarArrayLowBound(FilterValue, 1)
                  Then
                  begin
                    case (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType of
                      fltoptString: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := '(''' + AnsiUpperCase(VarToStr(FilterValue[k])) + ''',';
                      fltoptNumber: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := '(' + AnsiUpperCase(VarToStr(FilterValue[k])) + ', ';
                      fltoptDate: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := '(' +  ' to_date('''+VarToStr(FilterValue[k])+ ''', ''dd/mm/yyyy'') '+ ''',';
                      fltoptDateTime: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := '(' +  ' to_date('''+VarToStr(FilterValue[k])+ ''', ''dd/mm/yyyy hh24:mi:ss'') '+ ''',';
                    end;
                  end
                  Else if k = VarArrayHighBound(FilterValue, 1)
                  Then
                  begin
                    case (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType of
                      fltoptString: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := (Arr_ColumnFilters[j] as TStringList).Values['Operand'] + '''' + AnsiUpperCase(VarToStr(FilterValue[k])) + ''')';
                      fltoptNumber: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := (Arr_ColumnFilters[j] as TStringList).Values['Operand'] + AnsiUpperCase(VarToStr(FilterValue[k])) + ')';
                      fltoptDate: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := (Arr_ColumnFilters[j] as TStringList).Values['Operand'] + ' to_date('''+VarToStr(FilterValue[k])+ ''', ''dd/mm/yyyy'')'+ ')';
                      fltoptDateTime: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := (Arr_ColumnFilters[j]as TStringList).Values['Operand'] + ' to_date('''+VarToStr(FilterValue[k])+ ''', ''dd/mm/yyyy hh24:mi:ss'')'+ ')';
                    end;
                  end
                  Else
                  begin
                    case (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType of
                      fltoptString: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := (Arr_ColumnFilters[j] as TStringList).Values['Operand']+ '''' + AnsiUpperCase(VarToStr(FilterValue[k])) + ''',';
                      fltoptNumber: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := (Arr_ColumnFilters[j] as TStringList).Values['Operand'] + AnsiUpperCase(VarToStr(FilterValue[k])) + ', ';
                      fltoptDate: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := (Arr_ColumnFilters[j] as TStringList).Values['Operand'] + ' to_date('''+VarToStr(FilterValue[k])+ ''', ''dd/mm/yyyy'') '+ ''',';
                      fltoptDateTime: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := (Arr_ColumnFilters[j] as TStringList).Values['Operand'] + ' to_date('''+VarToStr(FilterValue[k])+ ''', ''dd/mm/yyyy hh24:mi:ss'') '+ ''',';
                    end;
                  end;
                End;
              End
              Else
              Begin
                if (VarToStr(FilterValue) <> '')
                Then
                begin
                  case FilterOperator of
                    fltopLike:
                    begin
                      case (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType of
                        fltoptString: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := ' upper(''' +'%'+VarToStr(FilterValue)+'%'+ ''')';
                        else
                          (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := '%'+VarToStr(FilterValue)+'%';
                      end;
                    end;
                    fltopNotLike:
                    begin
                      case (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType of
                        fltoptString: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := ' upper(''' +'%'+VarToStr(FilterValue)+'%'+ ''')';
                        else
                          (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := '%'+VarToStr(FilterValue)+'%';
                      end;
                    end;
                    fltopBeginsWith:
                    begin
                      case (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType of
                        fltoptString: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := ' upper(''' + VarToStr(FilterValue)+'%'+ ''')';
                        else
                          (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := VarToStr(FilterValue)+'%';
                      end;
                    end;
                    fltopDoesntBeginWith:
                    begin
                      case (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType of
                        fltoptString: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := ' upper(''' + VarToStr(FilterValue)+'%'+ ''')';
                        else
                          (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := VarToStr(FilterValue)+'%';
                      end;
                    end;
                    fltopEndsWith:
                    begin
                      case (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType of
                        fltoptString: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := ' upper(''' +'%'+VarToStr(FilterValue)+ ''')';
                        else
                          (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := '%'+VarToStr(FilterValue);
                      end;
                    end;
                    fltopDoesntEndWith:
                    begin
                      case (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType of
                        fltoptString: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := ' upper(''' +'%'+VarToStr(FilterValue)+ ''')';
                        else
                          (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := '%'+VarToStr(FilterValue);
                      end;
                    end;
                    fltopEqual:
                    begin
                      case (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType of
                        fltoptString: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := ' upper(''' +VarToStr(FilterValue)+ ''')';
                        else
                          (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := VarToStr(FilterValue);
                      end;
                    end;
                    fltopNotEqual:
                    begin
                      case (Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter).ExpressionType of
                        fltoptString: (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := ' upper(''' +VarToStr(FilterValue)+ ''')';
                        else
                          (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := VarToStr(FilterValue);
                      end;
                    end;
                  end;
                end
                Else
                  (Arr_ColumnFilters[j] as TStringList).Values['Operand'] := '';
              End;
            End;
            {$EndRegion 'Определение операндов'}
          End;
        End;

        for j := Low(Arr_ColumnFilters) to High(Arr_ColumnFilters)
        do
        begin
          with (Arr_ColumnFilters[j] as TStringList)
          do
          begin
            if (Values['Operand'] <> '')
            then
            begin
              if (Arr_AllFilters[i] as TStringList).Values['FilterType'] = 'default'
              then
              begin
                Vl_ColumnFilter := Vl_ColumnFilter  + ' '
                                + Values['RelationWithPrev'] + ' '
                                + Values['FilterFieldName']  + ' '
                                + Values['Operator']  + ' '
                                + Values['Operand'];
              end
              else if (Arr_AllFilters[i] as TStringList).Values['FilterType'] = 'custom'
              then
              begin
                Vl_ColumnFilter := Vl_ColumnFilter  + ' '
                                + Values['RelationWithPrev']  + ' '
                                + Values['Operator']  + ' '
                                + Values['Operand']
                                + #13#10;
              end;
            end;
          end;
        end;

        if (Arr_AllFilters[i] as TStringList).Values['FilterType'] = 'custom'
        then
        begin
          CustomFilerValue := (Arr_AllFilters[i] as TStringList).Values['FilterValue'];
          Vl_Filer_Str :=  Vl_Filer_Str
                    + Copy(AnsiUpperCase(CustomFilerValue),
                           0,
                           Pos('/*FILTER START*/', AnsiUpperCase(CustomFilerValue))-1 )
                    + Vl_ColumnFilter
                    + Copy(AnsiUpperCase(CustomFilerValue),
                           Pos('/*FILTER END*/', AnsiUpperCase(CustomFilerValue)) + 14)
                    + #13#10 ;
        end
        else
          Vl_Filer_Str := Vl_Filer_Str + Vl_ColumnFilter;
      End;
    End;
    Sql_Before_Filter := Copy(AnsiUpperCase(Db_Info.SQL.Text),
                         0,
                         Pos('/*FILTER START*/', AnsiUpperCase(Db_Info.SQL.Text))-1 );
    Sql_After_Filter := Copy( AnsiUpperCase(Db_Info.SQL.Text),
                         Pos('/*FILTER END*/', AnsiUpperCase(Db_Info.SQL.Text))+14);
    if FilterCount = 0
    then
      Btn_Open_Filters.Caption := 'Фильтры'
    else
      Btn_Open_Filters.Caption := 'Фильтры (' + IntToStr(FilterCount) + ')';

    if Vl_Filer_Str = ''
    Then
      Vl_Sql_Text := Sql_Before_Filter + ' /*FILTER START*/ (1=1) /*FILTER END*/ ' + #13#10  +  Sql_After_Filter
    Else
      Vl_Sql_Text := Sql_Before_Filter + '/*FILTER START*/ ' + #13#10 + Vl_Filer_Str + '/*FILTER END*/ '+  Sql_After_Filter;

    //ShowMessage(Vl_Sql_Text);
    //Clipboard.AsText := Vl_Sql_Text;
    Db_Info.Close;
    Db_Info.SQL.Clear;
    Db_Info.SQL.Add(Vl_Sql_Text);
    Db_Info.Open;

  End;
end;

procedure TFrame_TechProc_List.VGridFilterRowsCloseDropDownForm(
  Grid: TCustomDBVertGridEh; Column: TFieldRowEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
var
  i, j: Integer;
  FilterOperatorTypes: TFilterOperator;
  CombOperator: TComboBox;
begin
If (DropDownForm.ModalResult = mrOk)
     And (DynParams <> Nil)
  Then
  Begin
    with Grid.DataSource.DataSet
    do
    begin
      Edit;
      FieldByName(Column.FieldName).AsString := DynParams['FilterExpression'].AsString;
      VGridFilterApplyFilter(Grid);
    end
  End
  else if DropDownForm.ModalResult = mrAbort
  then
  begin
    with Grid
    do
    begin
      for I := 0 to Rows.Count-1
      do
      begin
        DataSource.DataSet.Edit;
        Rows[i].Field.Clear;
        with Rows[i].EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter
        do
        begin
          for j := 0 to Length(Arr_AllGlobalFilterExpression)-1
          do
          begin
            with Arr_AllGlobalFilterExpression[j]
            do
            begin
              FilterOperator := fltopNone;
              VarClear(FilterValue);
              FiltersRelation := fltopNone;
            end;
          end;
          CheckedItems.Clear;
        end;
        DataSource.DataSet.Post;
      end;
    end;
    VGridFilterApplyFilter(Grid);
  end
  else if DropDownForm.ModalResult = mrYesToAll
  then
  begin
    Application.CreateForm(TForm_OptionFilter, Form_OptionFilter);
    with Form_OptionFilter
    do
    begin
      try
        SetLength(Arr_AllGlobalFilterExpression, 2);
        for j := 0 to Length((DropDownForm as TDropDown_Filter).Arr_AllGlobalFilterExpression)-1
        do
        begin
          Arr_AllGlobalFilterExpression[j] := (DropDownForm as TDropDown_Filter).Arr_AllGlobalFilterExpression[j];

          for FilterOperatorTypes := Low(TFilterOperator) to High(TFilterOperator)
          do
          begin
            if (FilterOperatorTypes <> fltopAND)
                and (FilterOperatorTypes <> fltopOR)
            then
            begin
              Comb_Operator1.Items.Add((DropDownForm as TDropDown_Filter).F_ConvertFilterOperatorToString(FilterOperatorTypes, False));
              Comb_Operator2.Items.Add((DropDownForm as TDropDown_Filter).F_ConvertFilterOperatorToString(FilterOperatorTypes, False));
            end;
          end;

          with Arr_AllGlobalFilterExpression[j]
          do
          begin
             if j = 0
             then
               CombOperator := Comb_Operator1
             else if j = 1
             then
               CombOperator := Comb_Operator2;

             Comb_Value1.Clear;
             Comb_Value2.Clear;

             CombOperator.ItemIndex := Comb_Operator1.Items.IndexOf((DropDownForm as TDropDown_Filter).F_ConvertFilterOperatorToString(FilterOperator, False));

            if FiltersRelation = fltopAND
            then
              Group_Relation.ItemIndex := 0
            else if FiltersRelation = fltopOR
            then
              Group_Relation.ItemIndex := 1;

            if (VarType(FilterValue) = (varArray + varVariant))
            then
            begin
              CombOperator.Text := '';
              for i := VarArrayLowBound(FilterValue, 1) to VarArrayHighBound(FilterValue, 1)
              do
              begin
                if i = VarArrayHighBound(FilterValue, 1)
                then
                  CombOperator.Text := CombOperator.Text + ', '
                                      + VarToStr(FilterValue[i])
                                      + ')'
                else if i = VarArrayLowBound(FilterValue, 1)
                then
                  CombOperator.Text := CombOperator.Text + '('
                                      + VarToStr(FilterValue[i])
                else
                  CombOperator.Text := CombOperator.Text + ', '
                                      + VarToStr(FilterValue[i])
              end;
            end
            else
            begin
              CombOperator.Text := VarToStr(FilterValue);
            end;
          end;
        end;

        case ShowModal of
          mrOk:
          begin
            SetLength((DropDownForm as TDropDown_Filter).Arr_AllGlobalFilterExpression, Length(Arr_AllGlobalFilterExpression));
            for j := 0 to Length(Arr_AllGlobalFilterExpression)-1
            do
            begin
              (DropDownForm as TDropDown_Filter).Arr_AllGlobalFilterExpression[j] := Arr_AllGlobalFilterExpression[j];
            end;

            with Grid.DataSource.DataSet
            do
            begin
              Edit;
              FieldByName(Column.FieldName).AsString := (DropDownForm as TDropDown_Filter).F_PackageFilterExpression(Arr_AllGlobalFilterExpression);
              VGridFilterApplyFilter(Grid);
            end
          end;
        end;
      finally
        Free;
      end;
    end;
  end;
end;

procedure TFrame_TechProc_List.VGridFilterRowsOpenDropDownForm(
  Grid: TCustomDBVertGridEh; Column: TFieldRowEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
  var
    In_Params: TDynVarsEh;
begin
  if (Arr_AllFilters[Column.Index] as TStringList).Values['FilterType'] = 'default'
  then
  begin
    DynParams.DynVar['ItemsFlag'].AsString := 'default';
    DynParams.DynVar['DataSetName'].AsString := Db_Info.Name;
    DynParams.DynVar['FieldName'].AsString := Column.FieldName;
  end
  else if (Arr_AllFilters[Column.Index] as TStringList).Values['FilterType'] = 'custom'
  then
  begin
    In_Params := TDynVarsEh.Create(Application);
    In_Params.DynVar['Find'].AsString := (Arr_AllFilters[Column.Index] as TStringList).Values['FieldName'];
    DynParams.DynVar['FieldName'].AsString := (Arr_AllFilters[Column.Index] as TStringList).Values['FieldName'];
    DynParams.DynVar['ItemsFlag'].AsString := 'custom';
    DynParams.DynVar['SQL'].AsString := Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form(In_Params).DynVar['SQL'].AsString;
  end;
  DynParams.DynVar['FormName'].AsString := Self.Name;
end;

procedure TFrame_TechProc_List.VGrid_FilterGetCellParams(Sender: TObject;
  Row: TFieldRowEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with (Sender as TDBVertGridEh).DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      if FieldByName(Row.FieldName).AsString = ''
      then
        Background := clWindow
      else
        Background := $0000D7FF;
    end;
  end;
end;

procedure TFrame_TechProc_List.VGrid_InfoGetCellParams(Sender: TObject;
  Row: TFieldRowEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Row.Grid.DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      if (Row.FieldName = 'CANCEL_FLAG_NAME')
         and (FieldByName('Cancel_Flag').AsInteger <> 0)
      then
      begin
        Background := $00C1B6FF;
        AFont.Color := clRed;
        AFont.Style := AFont.Style + [fsBold];
      end;
    end;
  end;
end;

procedure TFrame_TechProc_List.PM_Btn_CoAuthorsClick(Sender: TObject);
begin
  with TForm_CoAuthors.Create(Self)
  do
  begin
    try
      InDocHeaderId := Grid_Docs_List.DataSource.DataSet.FieldByName('Doc_Header_Id').AsInteger;
      Caption := 'Соавторы по документу '+ Grid_Docs_List.DataSource.DataSet.FieldByName('DOC_NUM').AsString;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TFrame_TechProc_List.PM_Btn_CreateClick(Sender: TObject);
begin
  Form_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_Doc_CreateClick(Nil);
end;

procedure TFrame_TechProc_List.PM_Btn_Doc_DeleteClick(Sender: TObject);
begin
  if (not Form_Tech_Proc_Main.Is_Doc_Approved(Grid_Docs_List.DataSource.DataSet.FieldByName('Doc_Header_Id').AsString))
     and (Db_Info.FieldByName('Create_User_Id').AsString = DM_Main.Session.LogonUsername)
  then
  begin
    With CreateMessageDialog( 'Удалить документ!?'
                              +#13#10
                              + 'ВНИМАНИЕ! После удаления документ восстановлению не подлежит!!',
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
          Q_Delete_Doc.SetVariable('In_Doc_Tp_Id', Db_Info.FieldByName('Doc_Header_Id').AsInteger);
          Q_Delete_Doc.Execute;
          Grid_Docs_List.StartLoadingStatus('Обновление...');
          Db_Info.Refresh;
          Grid_Docs_List.FinishLoadingStatus();
        End;
      End;
    Finally
      Free;
    End;
  end;
end;

procedure TFrame_TechProc_List.PM_Btn_Edit_Doc_InfoClick(
  Sender: TObject);
begin
  Form_Tech_Proc_Main.P_Open_Doc_Info( Grid_Docs_List.DataSource.DataSet.FieldByName('Doc_Header_Id').AsInteger, dsUpdate);
end;

procedure TFrame_TechProc_List.PM_Btn_Edit_Doc_Tech_ProcClick(
  Sender: TObject);
begin
  Form_Tech_Proc_Main.P_Open_Doc(Grid_Docs_List);
end;

procedure TFrame_TechProc_List.PM_Btn_Merge_DocClick(Sender: TObject);
begin
  if (not Form_Tech_Proc_Main.Is_Doc_Approved(Db_Info.FieldByName('Parent_Doc_Id').AsString))
     and (not Form_Tech_Proc_Main.Is_Doc_Approved(Db_Info.FieldByName('Doc_Header_Id').AsString))
  then
  begin
    With CreateMessageDialog( 'Произвести слияние документа с родительской версией!?'
                              +#13#10
                              + 'ВНИМАНИЕ! После слияния данный документ будет удален и восстановлению не подлежит!!'
                              +#13#10
                              + 'А так же согласование родительского документа будет сброшено!!',
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
          Grid_Docs_List.SaveBookmark;
          PKG_TP_DOC.CallProcedure('P_Merge_DocVers', [Db_Info.FieldByName('Parent_Doc_Id').AsInteger, Db_Info.FieldByName('Doc_Header_Id').AsInteger]);
          Db_Info.Refresh;
          Grid_Docs_List.RestoreBookmark;
        End;
      End;
    Finally
      Free;
    End;
  end;
end;

end.
