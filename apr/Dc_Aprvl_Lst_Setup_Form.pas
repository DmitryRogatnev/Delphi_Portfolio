unit Dc_Aprvl_Lst_Setup_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh,
  DataDriverEh, OracleData, Vcl.Menus, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Oracle, EhlibMTE, Vcl.ExtCtrls;

type
  TForm_Setup_Dc_Arvl_Lst = class(TForm)
    Grid_Doc_Aprvl_List_Setup: TDBGridEh;
    Main_M_Doc_Aprvl_List_Setup: TMainMenu;
    Main_M_Doc_Aprvl_Lst_Stp_Btn_Save: TMenuItem;
    Main_M_Doc_Aprvl_Lst_Stp_Btn_Exit: TMenuItem;
    Db_Doc_Aprvl_List_Setup: TOracleDataSet;
    Data_Doc_Aprvl_List_Setup: TDataSource;
    Db_Doc_Aprvl_List_SetupID_DOC_RT_PNT_POS: TFloatField;
    Db_Doc_Aprvl_List_SetupDOC_TYPE_ID: TStringField;
    Db_Doc_Aprvl_List_SetupPOS_RW_NUM: TIntegerField;
    Db_Doc_Aprvl_List_SetupDOC_RT_PNT_ID: TIntegerField;
    Db_Doc_Aprvl_List_SetupPOINT_NAME: TStringField;
    Db_Doc_Aprvl_List_SetupDEP_ID: TIntegerField;
    Db_Doc_Aprvl_List_SetupDOC_RT_ID: TIntegerField;
    Db_Doc_Aprvl_List_SetupPOS_STATE: TStringField;
    Db_Doc_Aprvl_List_SetupUSER_INSERT: TStringField;
    Db_Doc_Aprvl_List_SetupDATE_INSERT: TDateTimeField;
    Db_Doc_Aprvl_List_SetupUSER_CHANGE: TStringField;
    Db_Doc_Aprvl_List_SetupDATE_CHANGE: TDateTimeField;
    Db_Doc_Aprvl_List_SetupPOS_STATE_NAME: TStringField;
    Seq_Doc_Aprvl_List_Setup: TOracleQuery;
    Db_Doc_Aprvl_List_SetupPOINT_NAME_FRMT_NAME: TStringField;
    Db_Doc_Aprvl_List_SetupPOINT_USER_NAME: TStringField;
    Db_Doc_Aprvl_List_SetupPOINT_NAME_FRMT: TStringField;
    Db_Doc_Aprvl_List_SetupDEP_SNAME: TStringField;
    Db_Doc_Aprvl_List_SetupCHOSE_STATE: TStringField;
    Db_Doc_Aprvl_List_SetupCHOSE_STATE_NAME: TStringField;
    Db_Doc_Aprvl_List_SetupCONNECT_W_PNT_ID: TIntegerField;
    Main_M_Doc_Aprvl_Lst_Stp_Btn_Cnnct: TMenuItem;
    Db_Doc_Aprvl_List_SetupUSER_ID: TStringField;
    Db_Doc_Aprvl_List_SetupEMP_FIO: TStringField;
    Splitter1: TSplitter;
    Grid_Links: TDBGridEh;
    Db_Doc_Aprvl_ListLinks: TOracleDataSet;
    Db_Doc_Aprvl_ListLinksP_DOC_RT_PNT_POS_ID: TFloatField;
    Db_Doc_Aprvl_ListLinksC_DOC_RT_PNT_POS_ID: TFloatField;
    Db_Doc_Aprvl_ListLinksPARENT_POINT_NAME: TStringField;
    Db_Doc_Aprvl_ListLinksCHILD_POINT_NAME: TStringField;
    Data_Doc_Aprvl_ListLinks: TDataSource;
    MemT_Doc_Aprvl_List_Setup: TMemTableEh;
    Driver_Doc_Aprvl_List_Setup: TDataSetDriverEh;
    Driver_Doc_Aprvl_ListLinks: TDataSetDriverEh;
    MemT_Doc_Aprvl_ListLinks: TMemTableEh;
    MemT_Doc_Aprvl_ListLinksP_DOC_RT_PNT_POS_ID: TFloatField;
    MemT_Doc_Aprvl_ListLinksC_DOC_RT_PNT_POS_ID: TFloatField;
    MemT_Doc_Aprvl_ListLinksPARENT_POINT_NAME: TStringField;
    MemT_Doc_Aprvl_ListLinksCHILD_POINT_NAME: TStringField;
    MemT_Doc_Aprvl_List_SetupID_DOC_RT_PNT_POS: TFloatField;
    MemT_Doc_Aprvl_List_SetupDOC_TYPE_ID: TStringField;
    MemT_Doc_Aprvl_List_SetupPOS_RW_NUM: TIntegerField;
    MemT_Doc_Aprvl_List_SetupDOC_RT_PNT_ID: TIntegerField;
    MemT_Doc_Aprvl_List_SetupPOINT_NAME: TStringField;
    MemT_Doc_Aprvl_List_SetupDEP_ID: TIntegerField;
    MemT_Doc_Aprvl_List_SetupDOC_RT_ID: TIntegerField;
    MemT_Doc_Aprvl_List_SetupPOS_STATE: TStringField;
    MemT_Doc_Aprvl_List_SetupUSER_INSERT: TStringField;
    MemT_Doc_Aprvl_List_SetupDATE_INSERT: TDateTimeField;
    MemT_Doc_Aprvl_List_SetupUSER_CHANGE: TStringField;
    MemT_Doc_Aprvl_List_SetupDATE_CHANGE: TDateTimeField;
    MemT_Doc_Aprvl_List_SetupPOS_STATE_NAME: TStringField;
    MemT_Doc_Aprvl_List_SetupPOINT_NAME_FRMT_NAME: TStringField;
    MemT_Doc_Aprvl_List_SetupPOINT_USER_NAME: TStringField;
    MemT_Doc_Aprvl_List_SetupPOINT_NAME_FRMT: TStringField;
    MemT_Doc_Aprvl_List_SetupDEP_SNAME: TStringField;
    MemT_Doc_Aprvl_List_SetupCHOSE_STATE: TStringField;
    MemT_Doc_Aprvl_List_SetupCHOSE_STATE_NAME: TStringField;
    MemT_Doc_Aprvl_List_SetupCONNECT_W_PNT_ID: TIntegerField;
    MemT_Doc_Aprvl_List_SetupUSER_ID: TStringField;
    MemT_Doc_Aprvl_List_SetupEMP_FIO: TStringField;
    procedure Grid_Doc_Aprvl_List_SetupColumns1OpenDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Doc_Aprvl_List_SetupColumns2OpenDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Doc_Aprvl_List_SetupColumns3OpenDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Doc_Aprvl_List_SetupColumns1CloseDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Doc_Aprvl_List_SetupColumns2CloseDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Doc_Aprvl_List_SetupColumns3CloseDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Doc_Aprvl_List_SetupColumns4OpenDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Doc_Aprvl_List_SetupColumns4CloseDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure FormShow(Sender: TObject);
    procedure MemT_Doc_Aprvl_List_SetupNewRecord(DataSet: TDataSet);
    procedure Main_M_Doc_Aprvl_Lst_Stp_Btn_SaveClick(Sender: TObject);
    procedure Grid_Doc_Aprvl_List_SetupColumns1UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure Main_M_Doc_Aprvl_Lst_Stp_Btn_ExitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Grid_Doc_Aprvl_List_SetupColumns6OpenDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Doc_Aprvl_List_SetupColumns6CloseDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Main_M_Doc_Aprvl_Lst_Stp_Btn_CnnctClick(Sender: TObject);
    procedure Grid_Doc_Aprvl_List_SetupColumns7OpenDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Doc_Aprvl_List_SetupColumns7CloseDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
  private
    { Private declarations }
    FDocTypeId: String;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; const DocTypeId: String);
  end;

var
  Form_Setup_Dc_Arvl_Lst: TForm_Setup_Dc_Arvl_Lst;

implementation

{$R *.dfm}

Uses
Udm_Main, Gen_Chs_Dd_Form, Gen_Chs_Data_Mod, Dc_Aprvl_Lst_Main_Form;

constructor TForm_Setup_Dc_Arvl_Lst.Create(AOwner: TComponent;
  const DocTypeId: String);
begin
  inherited Create(AOwner);
  FDocTypeId:=DocTypeId;
end;

procedure TForm_Setup_Dc_Arvl_Lst.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Try
    Main_M_Doc_Aprvl_Lst_Stp_Btn_SaveClick( Main_M_Doc_Aprvl_Lst_Stp_Btn_Exit );
  Except
    Form_Setup_Dc_Arvl_Lst.Close;
  End;
end;

procedure TForm_Setup_Dc_Arvl_Lst.FormShow(Sender: TObject);
begin
  Db_Doc_Aprvl_List_Setup.SetVariable('v_Doc_Type_Id', FDocTypeId);
  MemT_Doc_Aprvl_List_Setup.Active := True;

  Db_Doc_Aprvl_ListLinks.SetVariable('v_Doc_Type_Id', FDocTypeId);
  MemT_Doc_Aprvl_ListLinks.Active := True;

  Caption := 'Настройка порядка согласования для документов '
              + FDocTypeId;
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns1CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  if (DropDownForm.ModalResult = mrOk)
      And (DynParams <> Nil)
  Then
  Begin
    MemT_Doc_Aprvl_List_Setup.Edit;
    MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_ID').AsString := DynParams.DynVar['Id_Dep'].AsString;
    MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_SNAME').AsString := DynParams.DynVar['Dep_Sname'].AsString
                                                                    + ' (' + DynParams.DynVar['Dep_Code'].AsString
                                                                    + ')';
    if MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_NAME_FRMT').AsString = 'dep_name'
    Then
    Begin
      MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_USER_NAME').AsString := DynParams.DynVar['Dep_Sname'].AsString
                                                                    + ' (' + DynParams.DynVar['Dep_Code'].AsString
                                                                    + ')';
    End;
  End;
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns1OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If MemT_Doc_Aprvl_List_Setup.FieldByName('DOC_RT_PNT_ID').IsNull
  Then
  Begin
    MessageDlg('Укажите наименование точки!', mtError, [mbOk], 5);
    Abort;
  End;

  DynParams.DynVar['v_Find'].AsString := 'CEHS';
  DynParams.DynVar['V_Filter'].AsString := 't.Doc_Type_Id = ''' + FDocTypeId + ''' '
                                            + ' And  P.Id_Doc_Rout_Point = ' + MemT_Doc_Aprvl_List_Setup.FieldByName('DOC_RT_PNT_ID').AsString;
  DynParams := Form_Main_Dc_Aprvl_L.F_Gen_SQL_Params_For_Chs_Form( DynParams );
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns1UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
Var
  Vl_In_Params,
  Vl_Out_Params: TDynVarsEh;
begin

  If MemT_Doc_Aprvl_List_Setup.FieldByName('DOC_RT_PNT_ID').IsNull
  Then
  Begin
    MessageDlg('Укажите наименование точки!', mtError, [mbOk], 5);
    Abort;
  End;

  if ( (Text <> '')
       And (MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_ID').IsNull) )
      Or ( (Text <> '')
           And (Not MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_ID').IsNull)
           And (Text <> MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_SNAME').AsString) )
  Then
  Begin
    Vl_In_Params := TDynVarsEh.Create( Application.MainForm );
    Vl_In_Params.DynVar['v_Find'].AsString := 'CEHS';
    Vl_In_Params.DynVar['V_Filter'].AsString := 't.Doc_Type_Id = ''' + FDocTypeId + ''' '
                                            + ' And  P.Id_Doc_Rout_Point = ' + MemT_Doc_Aprvl_List_Setup.FieldByName('DOC_RT_PNT_ID').AsString;

    Vl_In_Params := Form_Main_Dc_Aprvl_L.F_Gen_SQL_Params_For_Chs_Form( Vl_In_Params );
    Vl_Out_Params := Gen_Chs_Data_Mod.DM_Gen_Chs.F_Gen_Chose_Form( Vl_In_Params, Nil );
    If Vl_Out_Params <> Nil
    Then
    Begin
      MemT_Doc_Aprvl_List_Setup.Edit;
      MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_ID').AsString := Vl_Out_Params.DynVar['Id_Dep'].AsString;
      MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_SNAME').AsString := Vl_Out_Params.DynVar['Dep_Sname'].AsString
                                                                      + ' (' + Vl_Out_Params.DynVar['Dep_Code'].AsString
                                                                      + ')';
      if MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_NAME_FRMT').AsString = 'dep_name'
      Then
      Begin
        MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_USER_NAME').AsString := Vl_Out_Params.DynVar['Dep_Sname'].AsString
                                                                      + ' (' + Vl_Out_Params.DynVar['Dep_Code'].AsString
                                                                      + ')';
      End;
    End;
  End
  Else if (Text = '')
       And (Not MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_ID').IsNull)
  Then
  Begin
    MemT_Doc_Aprvl_List_Setup.Edit;
    MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_ID').Clear;
    if MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_NAME_FRMT').AsString = 'dep_name'
    Then
    Begin
      MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_USER_NAME').Clear;
    End;
  End;

end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns2CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  if (DropDownForm.ModalResult = mrOk)
      And (DynParams <> Nil)
  Then
  Begin
    MemT_Doc_Aprvl_List_Setup.Edit;
    MemT_Doc_Aprvl_List_Setup.FieldByName('DOC_RT_PNT_ID').AsString := DynParams.DynVar['Id_Doc_Rout_Point'].AsString;
    MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_NAME').AsString := DynParams.DynVar['Point_Name'].AsString;
  End;
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns2OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar['v_Find'].AsString := 'POINTS';
  DynParams.DynVar['V_Filter'].AsString := 't.Doc_Type_Id = ''' + FDocTypeId + ''' ';
  DynParams := Form_Main_Dc_Aprvl_L.F_Gen_SQL_Params_For_Chs_Form( DynParams );
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns3CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  if (DropDownForm.ModalResult = mrOk)
      And (DynParams <> Nil)
  Then
  Begin
    MemT_Doc_Aprvl_List_Setup.Edit;
    MemT_Doc_Aprvl_List_Setup.FieldByName('POS_STATE').AsString := DynParams.DynVar['POS_STATE'].AsString;
    MemT_Doc_Aprvl_List_Setup.FieldByName('POS_STATE_NAME').AsString := DynParams.DynVar['POS_STATE_NAME'].AsString;
  End;
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns3OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar['v_Find'].AsString := 'POS_STATE';
  DynParams := Form_Main_Dc_Aprvl_L.F_Gen_SQL_Params_For_Chs_Form( DynParams );
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns4CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  if (DropDownForm.ModalResult = mrOk)
      And (DynParams <> Nil)
  Then
  Begin
    MemT_Doc_Aprvl_List_Setup.Edit;
    MemT_Doc_Aprvl_List_Setup.FieldByName('USER_ID').AsString := DynParams.DynVar['User_Id'].AsString;
    MemT_Doc_Aprvl_List_Setup.FieldByName('EMP_FIO').AsString := DynParams.DynVar['Emp_Fio'].AsString;
  End;
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns4OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If MemT_Doc_Aprvl_List_Setup.FieldByName('DOC_RT_PNT_ID').IsNull
  Then
  Begin
    MessageDlg('Укажите наименование точки!', mtError, [mbOk], 5);
    Abort;
  End;

  DynParams.DynVar['v_Find'].AsString := 'USERS';
  DynParams.DynVar['V_Filter'].AsString := 't.Doc_Type_Id = ''' + FDocTypeId + ''' '
                                            + ' And  P.Id_Doc_Rout_Point = ' + MemT_Doc_Aprvl_List_Setup.FieldByName('DOC_RT_PNT_ID').AsString;
  DynParams := Form_Main_Dc_Aprvl_L.F_Gen_SQL_Params_For_Chs_Form( DynParams );
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns6CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  if (DropDownForm.ModalResult = mrOk)
      And (DynParams <> Nil)
  Then
  Begin
    MemT_Doc_Aprvl_List_Setup.Edit;
    MemT_Doc_Aprvl_List_Setup.FieldByName('CHOSE_STATE').AsString := DynParams.DynVar['CHOSE_STATE'].AsString;
    MemT_Doc_Aprvl_List_Setup.FieldByName('CHOSE_STATE_NAME').AsString := DynParams.DynVar['CHOSE_STATE_NAME'].AsString;
  End;
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns6OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar['v_Find'].AsString := 'CHOSE_STATE';
  DynParams := Form_Main_Dc_Aprvl_L.F_Gen_SQL_Params_For_Chs_Form( DynParams );
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns7CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
Var
  Vl_In_Point_Params, Vl_Out_Point_Params: TDynVarsEh;
begin
  if (DropDownForm.ModalResult = mrOk)
      And (DynParams <> Nil)
  Then
  Begin
    MemT_Doc_Aprvl_List_Setup.Edit;
    MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_NAME_FRMT').AsString := DynParams.DynVar['POINT_NAME_FRMT'].AsString;
    MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_NAME_FRMT_NAME').AsString := DynParams.DynVar['POINT_NAME_FRMT_NAME'].AsString;

    If (Not MemT_Doc_Aprvl_List_Setup.FieldByName('DOC_RT_PNT_ID').IsNull)
       And (DynParams.DynVar['POINT_NAME_FRMT'].AsString = 'stp_name')
    Then
    Begin
      MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_USER_NAME').AsString := MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_NAME').AsString;
    End
    Else if (DynParams.DynVar['POINT_NAME_FRMT'].AsString = 'dep_name')
            And (Not MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_ID').IsNull)
    Then
    Begin
      MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_USER_NAME').AsString := MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_SNAME').AsString;
    End
    else if (DynParams.DynVar['POINT_NAME_FRMT'].AsString = 'stp_plus_dep_name')
            And (Not MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_ID').IsNull)
            And (Not MemT_Doc_Aprvl_List_Setup.FieldByName('DOC_RT_PNT_ID').IsNull)
    Then
    Begin
      MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_USER_NAME').AsString := MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_SNAME').AsString
       + ' ' + MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_NAME').AsString;
    End
    else if (DynParams.DynVar['POINT_NAME_FRMT'].AsString = 'stp_plus_dep_usr_name')
            And (Not MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_ID').IsNull)
            And (Not MemT_Doc_Aprvl_List_Setup.FieldByName('USER_ID').IsNull)
            And (Not MemT_Doc_Aprvl_List_Setup.FieldByName('DOC_RT_PNT_ID').IsNull)
    Then
    Begin
      MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_USER_NAME').AsString := MemT_Doc_Aprvl_List_Setup.FieldByName('DEP_SNAME').AsString
       + ' ' + MemT_Doc_Aprvl_List_Setup.FieldByName('POINT_NAME').AsString
       + '(' + MemT_Doc_Aprvl_List_Setup.FieldByName('EMP_FIO').AsString + ')';
    End;

  End;
end;

procedure TForm_Setup_Dc_Arvl_Lst.Grid_Doc_Aprvl_List_SetupColumns7OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar['v_Find'].AsString := 'PNT_NM_FRMT';
  DynParams := Form_Main_Dc_Aprvl_L.F_Gen_SQL_Params_For_Chs_Form( DynParams );
end;

procedure TForm_Setup_Dc_Arvl_Lst.MemT_Doc_Aprvl_List_SetupNewRecord(
  DataSet: TDataSet);
begin
  MemT_Doc_Aprvl_List_Setup.FieldByName('DOC_TYPE_ID').AsString := FDocTypeId;
  Seq_Doc_Aprvl_List_Setup.Execute;
  MemT_Doc_Aprvl_List_Setup.FieldByName('ID_DOC_RT_PNT_POS').AsInteger := Seq_Doc_Aprvl_List_Setup.FieldAsInteger(0);
  MemT_Doc_Aprvl_List_Setup.FieldByName('POS_RW_NUM').AsInteger := MemT_Doc_Aprvl_List_Setup.RecordCount + 1;
end;

procedure TForm_Setup_Dc_Arvl_Lst.Main_M_Doc_Aprvl_Lst_Stp_Btn_CnnctClick(
  Sender: TObject);
  var
   i: Integer;
begin
  with Grid_Doc_Aprvl_List_Setup
  do
  begin
    if gioShowRowselCheckboxesEh in IndicatorOptions
    then
    begin
      if SelectedRows.Count <> 0
      then
      begin
        with DataSource.DataSet as TMemTableEh
        do
        begin
          try
            DisableControls;
            MemT_Doc_Aprvl_ListLinks.DisableControls;
            for i := 1 to SelectedRows.Count - 1
            do
            begin
              with RecordsView.MemTableData.RecordsList
              do
              begin
                MemT_Doc_Aprvl_ListLinks.Append;
                MemT_Doc_Aprvl_ListLinksP_DOC_RT_PNT_POS_ID.AsVariant := Rec[BookmarkToRec(SelectedRows[0]).Index].DataValues['ID_DOC_RT_PNT_POS', dvvValueEh];
                MemT_Doc_Aprvl_ListLinksC_DOC_RT_PNT_POS_ID.AsVariant := Rec[BookmarkToRec(SelectedRows[i]).Index].DataValues['ID_DOC_RT_PNT_POS', dvvValueEh];
                MemT_Doc_Aprvl_ListLinksCHILD_POINT_NAME.AsVariant := Rec[BookmarkToRec(SelectedRows[i]).Index].DataValues['POINT_USER_NAME', dvvValueEh];
                MemT_Doc_Aprvl_ListLinks.Post;
              end;
            end;
          finally
            EnableControls;
            MemT_Doc_Aprvl_ListLinks.EnableControls;
          end;
        end;
      end;
      Selection.Clear;
      IndicatorOptions := IndicatorOptions - [gioShowRowselCheckboxesEh];
      AllowedSelections := AllowedSelections - [gstRecordBookmarks]
    end
    else
    begin
      IndicatorOptions := IndicatorOptions + [gioShowRowselCheckboxesEh];
      AllowedSelections := AllowedSelections + [gstRecordBookmarks]
    end;
  end;
end;

procedure TForm_Setup_Dc_Arvl_Lst.Main_M_Doc_Aprvl_Lst_Stp_Btn_ExitClick(
  Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_Setup_Dc_Arvl_Lst.Main_M_Doc_Aprvl_Lst_Stp_Btn_SaveClick(Sender: TObject);
Var
  Vl_Btn_Selected, I: Integer;
begin

  With MemT_Doc_Aprvl_List_Setup
  Do
  Begin
    DisableControls;
    Try
      With RecordsView
      Do
      Begin
        For I := 0 to Count - 1 
        Do
        Begin                  
          if VarToStr(Rec[i].DataValues['POS_RW_NUM',dvvValueEh]) <> IntToStr( I+1 )
          Then
          Begin
            Rec[i].Edit;
            Rec[i].DataValues['POS_RW_NUM',dvvValueEh] := (I + 1);
            if Rec[i].UpdateStatus = usUnmodified
            Then
            Begin
              Rec[i].UpdateStatus := usModified;
            End;
            Rec[i].Post;
          End;
        End;
      End;
    Finally
      EnableControls;   
    End;
  End;

  Try MemT_Doc_Aprvl_List_Setup.Post; Except End;
  Try MemT_Doc_Aprvl_ListLinks.Post; Except End;
  
  If (MemT_Doc_Aprvl_List_Setup.HasCachedChanges)
      or (MemT_Doc_Aprvl_ListLinks.HasCachedChanges)
  Then
  Begin
    If Sender = Main_M_Doc_Aprvl_Lst_Stp_Btn_Exit
    Then
      Vl_Btn_Selected := MessageDlg('Имеются не сохраненные изменения! Сохранить изменения?', mtConfirmation, mbOKCancel, 5)
    Else
      Vl_Btn_Selected := MessageDlg('Сохранить изменения?', mtConfirmation, mbOKCancel, 5);
    If Vl_Btn_Selected = mrOk
    Then
    Begin
      try
        //MemT_Doc_Aprvl_List_Setup.DisableControls;
        //MemT_Doc_Aprvl_ListLinks.DisableControls;
        MemT_Doc_Aprvl_List_Setup.Edit;
        MemT_Doc_Aprvl_List_Setup.ApplyUpdates(0);
        MemT_Doc_Aprvl_List_Setup.Edit;
        MemT_Doc_Aprvl_ListLinks.ApplyUpdates(0);
        MemT_Doc_Aprvl_ListLinks.MergeChangeLog;
        MemT_Doc_Aprvl_List_Setup.MergeChangeLog;
        DM_Main.Session.ApplyUpdates([Db_Doc_Aprvl_List_Setup,
                                      Db_Doc_Aprvl_ListLinks], True);
        Grid_Doc_Aprvl_List_Setup.SaveVertPos('ID_DOC_RT_PNT_POS');
        MemT_Doc_Aprvl_List_Setup.Refresh;
        MemT_Doc_Aprvl_ListLinks.Refresh;
        Grid_Doc_Aprvl_List_Setup.RestoreVertPos('ID_DOC_RT_PNT_POS');
      finally
        //MemT_Doc_Aprvl_List_Setup.EnableControls;
        //MemT_Doc_Aprvl_ListLinks.EnableControls;
      end;
    End
    Else if (Vl_Btn_Selected = mrCancel )
             And ( Sender = Main_M_Doc_Aprvl_Lst_Stp_Btn_Exit )
    Then
    Begin
      MemT_Doc_Aprvl_List_Setup.CancelUpdates;
      MemT_Doc_Aprvl_ListLinks.CancelUpdates;
    End;              

  End;

end;

end.
