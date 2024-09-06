unit Dc_Aprvl_Lst_Main_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls, Vcl.Menus,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  OracleData, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh,
  MemTableEh, DataDriverEh, Vcl.StdCtrls, Oracle, Vcl.ToolWin, Vcl.ComCtrls;

type
  TForm_Main_Dc_Aprvl_L = class(TForm)
    Main_M_Dc_Aprvl_L: TMainMenu;
    Splitter1: TSplitter;
    Grid_Dc_Pnt_Var: TDBGridEh;
    Grid_Dc_Aprvl_Lst: TDBGridEh;
    Db_Dc_Aprvl_Lst: TOracleDataSet;
    Main_M_Dc_Aprvl_L_Btn_Setps: TMenuItem;
    Main_M_Dc_Aprvl_L_Btn_Exit: TMenuItem;
    Db_Doc_Aprvl_List_Var_Chsn: TOracleDataSet;
    Db_Dc_Aprvl_Lst_Deps: TOracleDataSet;
    Db_Dc_Aprvl_Lst_DepsID_DC_RT_US_PNT_DPS: TFloatField;
    Db_Dc_Aprvl_Lst_DepsDOC_HEADER_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_DepsDOC_TYPE_ID: TStringField;
    Db_Dc_Aprvl_Lst_DepsDOC_NUMBER: TStringField;
    Db_Dc_Aprvl_Lst_DepsDOC_DATE: TDateTimeField;
    Db_Dc_Aprvl_Lst_DepsDC_RT_US_PNT_ID: TFloatField;
    Db_Dc_Aprvl_Lst_DepsDEP_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_DepsUSER_INSERT: TStringField;
    Db_Dc_Aprvl_Lst_DepsDATE_INSERT: TDateTimeField;
    Db_Dc_Aprvl_Lst_DepsUSER_CHANGE: TStringField;
    Db_Dc_Aprvl_Lst_DepsDATE_CHANGE: TDateTimeField;
    Driver_Dc_Aprvl_Lst: TDataSetDriverEh;
    MemT_Dc_Aprvl_Lst: TMemTableEh;
    Data_Dc_Aprvl_Lst: TDataSource;
    Tm_check: TTimer;
    MemT_Dc_Aprvl_Lst_Var: TMemTableEh;
    Data_Dc_Aprvl_Lst_Var: TDataSource;
    Db_Doc_Aprvl_List_Var_ChsnSTP_DC_RT_PNT_POS_ID: TFloatField;
    Db_Doc_Aprvl_List_Var_ChsnPOINT_NAME: TStringField;
    Db_Doc_Aprvl_List_Var_ChsnSTP_DOC_ROUT_POINT_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_Var: TOracleDataSet;
    Driver_Dc_Aprvl_Lst_Var: TDataSetDriverEh;
    Db_Dc_Aprvl_Lst_VarID_DC_RT_US_PNT: TIntegerField;
    Db_Dc_Aprvl_Lst_VarDOC_HEADER_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_VarDOC_TYPE_ID: TStringField;
    Db_Dc_Aprvl_Lst_VarDOC_NUMBER: TStringField;
    Db_Dc_Aprvl_Lst_VarDOC_DATE: TDateTimeField;
    Db_Dc_Aprvl_Lst_VarPOINT_POSITION: TStringField;
    Db_Dc_Aprvl_Lst_VarPOINT_NAME: TStringField;
    Db_Dc_Aprvl_Lst_VarSTP_DOC_ROUT_POINT_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_VarSTP_DC_RT_PNT_POS_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_VarUSER_INSERT: TStringField;
    Db_Dc_Aprvl_Lst_VarDATE_INSERT: TDateTimeField;
    Db_Dc_Aprvl_Lst_VarUSER_CHANGE: TStringField;
    Db_Dc_Aprvl_Lst_VarDATE_CHANGE: TDateTimeField;
    Db_Dc_Aprvl_Lst_VarDEP_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_VarPOS_RW_NUM: TIntegerField;
    Db_Dc_Aprvl_Lst_VarPOS_STATE: TStringField;
    MemT_Dc_Aprvl_Lst_VarID_DC_RT_US_PNT: TIntegerField;
    MemT_Dc_Aprvl_Lst_VarPOINT_POSITION: TStringField;
    MemT_Dc_Aprvl_Lst_VarPOINT_NAME: TStringField;
    MemT_Dc_Aprvl_Lst_VarSTP_DOC_ROUT_POINT_ID: TIntegerField;
    MemT_Dc_Aprvl_Lst_VarSTP_DC_RT_PNT_POS_ID: TIntegerField;
    MemT_Dc_Aprvl_Lst_VarUSER_INSERT: TStringField;
    MemT_Dc_Aprvl_Lst_VarDATE_INSERT: TDateTimeField;
    MemT_Dc_Aprvl_Lst_VarUSER_CHANGE: TStringField;
    MemT_Dc_Aprvl_Lst_VarDATE_CHANGE: TDateTimeField;
    MemT_Dc_Aprvl_Lst_VarDEP_ID: TIntegerField;
    MemT_Dc_Aprvl_Lst_VarPOS_RW_NUM: TIntegerField;
    MemT_Dc_Aprvl_Lst_VarPOS_STATE: TStringField;
    Db_Doc_Aprvl_List_Var_ChsnPOS_STATE: TStringField;
    Db_Doc_Aprvl_List_Var_ChsnPOS_RW_NUM: TIntegerField;
    Db_Doc_Aprvl_List_Var_Unchsn: TOracleDataSet;
    Db_Doc_Aprvl_List_Var_UnchsnSTP_DC_RT_PNT_POS_ID: TFloatField;
    Db_Doc_Aprvl_List_Var_UnchsnPOINT_NAME: TStringField;
    Db_Doc_Aprvl_List_Var_UnchsnPOS_STATE: TStringField;
    Db_Doc_Aprvl_List_Var_UnchsnPOS_RW_NUM: TIntegerField;
    Db_Doc_Aprvl_List_Var_UnchsnSTP_DOC_ROUT_POINT_ID: TIntegerField;
    Data_Dc_Aprvl_Lst_Deps: TDataSource;
    Data_Dc_Aprvl_Lst_Links: TDataSource;
    N1: TMenuItem;
    Db_Doc_Aprvl_List_Var_UnchsnDEP_ID: TIntegerField;
    Db_Doc_Aprvl_List_Var_ChsnDEP_ID: TIntegerField;
    Seq_Doc_Rout_Us_Pnt_Id: TOracleQuery;
    Db_Doc_Aprvl_List_Var_UnchsnCHOSE_STATE: TStringField;
    Db_Doc_Aprvl_List_Var_ChsnCHOSE_STATE: TStringField;
    Db_Dc_Aprvl_Lst_VarCHOSE_STATE: TStringField;
    MemT_Dc_Aprvl_Lst_VarCHOSE_STATE: TStringField;
    Db_Dc_Aprvl_LstID_DC_RT_US_PNT: TIntegerField;
    Db_Dc_Aprvl_LstDOC_HEADER_ID: TIntegerField;
    Db_Dc_Aprvl_LstDOC_TYPE_ID: TStringField;
    Db_Dc_Aprvl_LstDOC_NUMBER: TStringField;
    Db_Dc_Aprvl_LstDOC_DATE: TDateTimeField;
    Db_Dc_Aprvl_LstPOINT_POSITION: TStringField;
    Db_Dc_Aprvl_LstPOINT_NAME: TStringField;
    Db_Dc_Aprvl_LstSTP_DOC_ROUT_POINT_ID: TIntegerField;
    Db_Dc_Aprvl_LstSTP_DC_RT_PNT_POS_ID: TIntegerField;
    Db_Dc_Aprvl_LstCHOSE_STATE: TStringField;
    Db_Dc_Aprvl_LstDEP_ID: TIntegerField;
    Db_Dc_Aprvl_LstPOS_RW_NUM: TIntegerField;
    Db_Dc_Aprvl_LstPOS_STATE: TStringField;
    Db_Dc_Aprvl_LstUSER_INSERT: TStringField;
    Db_Dc_Aprvl_LstDATE_INSERT: TDateTimeField;
    Db_Dc_Aprvl_LstUSER_CHANGE: TStringField;
    Db_Dc_Aprvl_LstDATE_CHANGE: TDateTimeField;
    MemT_Dc_Aprvl_LstID_DC_RT_US_PNT: TIntegerField;
    MemT_Dc_Aprvl_LstDOC_HEADER_ID: TIntegerField;
    MemT_Dc_Aprvl_LstDOC_TYPE_ID: TStringField;
    MemT_Dc_Aprvl_LstDOC_NUMBER: TStringField;
    MemT_Dc_Aprvl_LstDOC_DATE: TDateTimeField;
    MemT_Dc_Aprvl_LstPOINT_POSITION: TStringField;
    MemT_Dc_Aprvl_LstPOINT_NAME: TStringField;
    MemT_Dc_Aprvl_LstSTP_DOC_ROUT_POINT_ID: TIntegerField;
    MemT_Dc_Aprvl_LstSTP_DC_RT_PNT_POS_ID: TIntegerField;
    MemT_Dc_Aprvl_LstUSER_INSERT: TStringField;
    MemT_Dc_Aprvl_LstDATE_INSERT: TDateTimeField;
    MemT_Dc_Aprvl_LstUSER_CHANGE: TStringField;
    MemT_Dc_Aprvl_LstDATE_CHANGE: TDateTimeField;
    MemT_Dc_Aprvl_LstDEP_ID: TIntegerField;
    MemT_Dc_Aprvl_LstPOS_RW_NUM: TIntegerField;
    MemT_Dc_Aprvl_LstPOS_STATE: TStringField;
    MemT_Dc_Aprvl_LstCHOSE_STATE: TStringField;
    Db_Dc_Aprvl_Lst_Links: TOracleDataSet;
    Db_Dc_Aprvl_Lst_LinksID_DC_RT_US_PNT_LNK: TIntegerField;
    Db_Dc_Aprvl_Lst_LinksDOC_HEADER_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_LinksDOC_TYPE_ID: TStringField;
    Db_Dc_Aprvl_Lst_LinksDOC_NUMBER: TStringField;
    Db_Dc_Aprvl_Lst_LinksDOC_DATE: TDateTimeField;
    Db_Dc_Aprvl_Lst_LinksDC_RT_US_PNT_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_LinksDC_RT_US_PNT_NXT_ID: TIntegerField;
    Q_Get_Doc_Name: TOracleQuery;
    Db_Stp_Point_Pstns: TOracleDataSet;
    Data_Dc_Rout_Point_Pstns: TDataSource;
    Db_Stp_Point_PstnsID_DOC_ROUT_POINT_PSTN: TIntegerField;
    Db_Stp_Point_PstnsPOINT_NOTE: TStringField;
    Db_Stp_Point_PstnsDEP_MMBR_PSTN_ID: TIntegerField;
    Db_Stp_Point_PstnsDOC_ROUT_POINT_ID: TIntegerField;
    Db_Stp_Point_PstnsDEP_SOURCE: TStringField;
    Data_Dc_Aprvl_Lst_Users: TDataSource;
    Data_Dc_Aprvl_Lst_Results: TDataSource;
    Db_Stp_Point_Results: TOracleDataSet;
    Db_Stp_Point_ResultsID_DOC_ROUT_POINT_RSLT: TIntegerField;
    Db_Stp_Point_ResultsDOC_ROUT_POINT_ID: TIntegerField;
    Db_Stp_Point_ResultsDOC_RESOLUTION_RESULT_ID: TIntegerField;
    Db_Stp_Point_ResultsDO_PROCEDURE_OWNER: TStringField;
    Db_Stp_Point_ResultsDO_PROCEDURE_PACKAGE: TStringField;
    Db_Stp_Point_ResultsDO_PROCEDURE_NAME: TStringField;
    Db_Stp_Point_ResultsUNDO_PROCEDURE_OWNER: TStringField;
    Db_Stp_Point_ResultsUNDO_PROCEDURE_PACKAGE: TStringField;
    Db_Stp_Point_ResultsUNDO_PROCEDURE_NAME: TStringField;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    Db_Doc_NextPointNodes: TOracleDataSet;
    Db_Doc_NextPointNodesP_DOC_RT_PNT_POS_ID: TFloatField;
    Db_Doc_NextPointNodesC_DOC_RT_PNT_POS_ID: TFloatField;
    Db_Doc_PrevPointNodes: TOracleDataSet;
    Db_Doc_PrevPointNodesP_DOC_RT_PNT_POS_ID: TFloatField;
    Db_Doc_PrevPointNodesC_DOC_RT_PNT_POS_ID: TFloatField;
    Db_Doc_PrevPointNodesPOINT_USER_NAME: TStringField;
    Db_Doc_NextPointNodesPOINT_USER_NAME: TStringField;
    procedure Tm_checkTimer(Sender: TObject);
    procedure Main_M_Dc_Aprvl_L_Btn_SetpsClick(Sender: TObject);
    procedure Main_M_Dc_Aprvl_L_Btn_ExitClick(Sender: TObject);
    procedure Grid_Dc_Pnt_VarSelectionChanged(Sender: TObject);
    procedure MemT_Dc_Aprvl_LstAfterScroll(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure MemT_Dc_Aprvl_LstBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
  private
    { Private declarations }
  protected
    FSelectingUpdated: Boolean;
    FInternalSelection: Boolean;
    FDocTypeId: String;
    FDocHeaderId: Integer;
  public
    { Public declarations }
    Usr_Prm_UserAdmin: Bool;
    MemT_Links_DataSet: TMemTableEh;
    ChosenPointsSet, UnchosenPointsSet: TOracleDataSet;
    constructor Create(AOwner: TComponent; const DocTypeId: String; InDocHeader: Integer = 0);
    Function  F_Gen_SQL_Params_For_Chs_Form( v_In_Params: TDynVarsEh ): TDynVarsEh;

    Procedure Grid_Dc_Pnt_VarSelectedRowsItemChanged(Sender: TCustomDBGridEh; Item: TUniBookmarkEh; Action: TListNotification);
    Procedure Grid_Dc_Aprvl_LstSelectedRowsItemChanged(Sender: TCustomDBGridEh; Item: TUniBookmarkEh; Action: TListNotification);
    Procedure P_Create_PointLinks;
    Procedure P_Delete_PointLinks( MemRec: TMemoryRecordEh );
    function  F_NextSeqNumber(Sender: TObject): Integer;
    property  DocTypeId: String read FDocTypeId;
    property  DocHeaderId: Integer read FDocHeaderId write FDocHeaderId;
  end;

var
  Form_Main_Dc_Aprvl_L: TForm_Main_Dc_Aprvl_L;

implementation

{$R *.dfm}

Uses

Udm_Main, Dc_Aprvl_Lst_Setup_Form;

{ TForm_Main_Dc_Aprvl_L }

{$Region 'Открытие формы'}

procedure TForm_Main_Dc_Aprvl_L.FormShow(Sender: TObject);
Var I: Integer;
begin
  //Vl_Doc_Type_Id := 'ALLOW_CARD_RM';
  if Udm_Main.DM_Main.F_Oracle( 'Stp.Pkg_User.F_Check_Program_Param'
                                     + '( In_Object_Id => :In_Object_Id, '
                                     + ' In_Parametr => :In_Parametr,'
                                     + ' In_Value => :In_Value )',
                                     [ 11301,
                                       'ADMIN',
                                       '1' ] ) = '1'
  Then
  Begin
    Main_M_Dc_Aprvl_L_Btn_Setps.Visible := True;
    Usr_Prm_UserAdmin := True;
  End
  Else
  Begin
    Main_M_Dc_Aprvl_L_Btn_Setps.Visible := False;
    Usr_Prm_UserAdmin := False;
  End;

  Db_Doc_Aprvl_List_Var_Chsn.Close;
  Db_Doc_Aprvl_List_Var_Chsn.SetVariable('v_Doc_Type_Id', DocTypeId);
  Db_Doc_Aprvl_List_Var_Chsn.Open;

  Db_Doc_Aprvl_List_Var_Unchsn.Close;
  Db_Doc_Aprvl_List_Var_UnChsn.SetVariable('v_Doc_Type_Id', DocTypeId);
  Db_Doc_Aprvl_List_Var_UnChsn.Open;

  if ChosenPointsSet = Nil
  then
    ChosenPointsSet := Db_Doc_Aprvl_List_Var_Chsn;

  if UnchosenPointsSet = Nil
  then
    UnchosenPointsSet := Db_Doc_Aprvl_List_Var_Unchsn;

  Q_Get_Doc_Name.SetVariable('In_Doc_Type_Id', DocTypeId);
  Q_Get_Doc_Name.Execute;

  Caption := Application.MainForm.Caption{Q_Get_Doc_Name.GetVariable(0)} + '. Cписок согласования.';

  {Db_Dc_Aprvl_Lst_Deps.Close;
  Db_Dc_Aprvl_Lst_Deps.Open;

  MemT_Dc_Aprvl_Lst_Links.Close;
  MemT_Dc_Aprvl_Lst_Links.Open;

  MemT_Dc_Aprvl_Lst.Close;
  MemT_Dc_Aprvl_Lst.Open;

  MemT_Dc_Aprvl_Lst_Var.Close;
  MemT_Dc_Aprvl_Lst_Var.Open;}

  //Загрузка вариантов выбора
  With ChosenPointsSet
  Do
  Begin
    DisableControls;
    Data_Dc_Aprvl_Lst_Var.DataSet.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(Data_Dc_Aprvl_Lst_Var.DataSet.Lookup('STP_DC_RT_PNT_POS_ID', FieldByName( 'STP_DC_RT_PNT_POS_ID' ).AsVariant, 'STP_DC_RT_PNT_POS_ID')) = ''
        Then
        Begin
          Data_Dc_Aprvl_Lst_Var.DataSet.Append;
          Data_Dc_Aprvl_Lst_Var.DataSet.CopyFields( ChosenPointsSet );
          Data_Dc_Aprvl_Lst_Var.DataSet.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      Data_Dc_Aprvl_Lst_Var.DataSet.EnableControls;
    End;
  End;

  //Загрузка не выбираемых значений
  With UnchosenPointsSet
  Do
  Begin
    DisableControls;
    Data_Dc_Aprvl_Lst.DataSet.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(Data_Dc_Aprvl_Lst.DataSet.Lookup('STP_DC_RT_PNT_POS_ID', FieldByName( 'STP_DC_RT_PNT_POS_ID' ).AsVariant, 'STP_DC_RT_PNT_POS_ID')) = ''
        Then
        Begin
          Data_Dc_Aprvl_Lst.DataSet.Append;
          Data_Dc_Aprvl_Lst.DataSet.CopyFields( UnchosenPointsSet );
          Data_Dc_Aprvl_Lst.DataSet.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      Data_Dc_Aprvl_Lst.DataSet.EnableControls;
    End;
  End;

  Grid_Dc_Aprvl_Lst.Selection.Rows.SelectAll;
  Grid_Dc_Pnt_Var.OnSelectedRowsItemChanged := Grid_Dc_Pnt_VarSelectedRowsItemChanged;
  Grid_Dc_Aprvl_Lst.OnSelectedRowsItemChanged := Grid_Dc_Aprvl_LstSelectedRowsItemChanged;
end;
{$EndRegion 'Открытие формы'}

constructor TForm_Main_Dc_Aprvl_L.Create(AOwner: TComponent;
  const DocTypeId: String; InDocHeader: Integer);
begin
  inherited Create(AOwner);
  FDocTypeId:=DocTypeId;
  FDocHeaderId:= InDocHeader;
end;

procedure TForm_Main_Dc_Aprvl_L.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Grid_Dc_Pnt_Var.OnSelectedRowsItemChanged := Nil;
  Grid_Dc_Aprvl_Lst.OnSelectedRowsItemChanged := Nil;
end;

function TForm_Main_Dc_Aprvl_L.F_Gen_SQL_Params_For_Chs_Form(
  v_In_Params: TDynVarsEh): TDynVarsEh;
Var
  searchResult: TSearchRec;
  v_Counter: Integer;
  V_Result_Params: TDynVarsEh;
begin
  V_Result_Params := v_In_Params;

  If V_In_Params.DynVar[ 'v_Find' ].AsString = 'POINTS'
  Then
  Begin
    {$Region 'Формирование списка точек'}
    V_Result_Params.DynVar['V_SQL_Text'].AsString := ' Select Distinct P.Point_Name, '
                                                      + ' P.Id_Doc_Rout_Point '
                                                      + ' From   Stp.V_DOC_ROUTS t '
                                                      + ' Left   Join Stp.V_Doc_Rout_Points p '
                                                      + ' On     P.DOC_ROUT_ID = t.Id_Doc_Rout '
                                                      + ' Left   Join Stp.V_Doc_Rout_Point_Pstns P_p '
                                                      + ' On     P_p.Doc_Rout_Point_Id = p.Id_Doc_Rout_Point ' ;

    if V_In_Params.DynVar[ 'V_Columns' ].IsNull
    Then
    Begin
      V_Result_Params.DynVar[ 'V_Columns' ].AsString := '<0>Point_Name</0>'
                                                    + '<end>';
      V_Result_Params.DynVar[ 'V_Titles' ].AsString :='<0>Наименование точки</0>'
                                                    + '<end>';
    End;
    {$EndRegion 'Формирование списка точек'}
  End
  Else If V_In_Params.DynVar[ 'v_Find' ].AsString = 'POS_STATE'
  Then
  Begin
    {$Region 'Формирование списка вариантов порядка следования'}
    V_Result_Params.DynVar['V_SQL_Text'].AsString := ' Select ''line'' Pos_State, '
                                                      + ' ''Последовательно'' Pos_State_Name '
                                                      + ' From   Dual '
                                                      + ' Union All '
                                                      + ' Select ''parall'' Pos_State, '
                                                      + ' ''Параллельно'' Pos_State_Name '
                                                      + 'From   Dual';
    if V_In_Params.DynVar[ 'V_Columns' ].IsNull
    Then
    Begin
      V_Result_Params.DynVar[ 'V_Columns' ].AsString := '<0>Pos_State_Name</0>'
                                                    + '<end>';
      V_Result_Params.DynVar[ 'V_Titles' ].AsString := '<0>Порядок следования</0>'
                                                    + '<end>';
    End;
    {$EndRegion 'Формирование списка вариантов порядка следования'}
  End
  Else If V_In_Params.DynVar[ 'v_Find' ].AsString = 'CEHS'
  Then
  Begin
    {$Region 'Формирование списка цехов'}
    V_Result_Params.DynVar['V_SQL_Text'].AsString := ' Select Distinct '
                                                      + ' Dep.Id_Dep, '
                                                      + ' Dep.Dep_SName, '
                                                      + ' Dep.Dep_Code '
                                                      + ' From   Stp.V_DOC_ROUTS t '
                                                      + ' Left   Join Stp.V_Doc_Rout_Points p '
                                                      + ' On     P.DOC_ROUT_ID = t.Id_Doc_Rout '
                                                      + ' Left   Join Stp.V_Doc_Rout_Point_Pstns P_p '
                                                      + ' On     P_p.Doc_Rout_Point_Id = p.Id_Doc_Rout_Point '
                                                      + ' Join   Stp.V_Doc_Rout_Point_Pstn_Ds P_p_d '
                                                      + ' On     P_p_d.Doc_Rout_Point_Pstn_Id = P_p.Id_Doc_Rout_Point_Pstn '
                                                      + ' Left   Join Stp.v_Deps Dep '
                                                      + ' On     Dep.id_dep = P_p_D.Dep_Id '
                                                      + ' And Nvl(Dep.Date_Expitation, Sysdate) <= Sysdate ' ;

    if V_In_Params.DynVar[ 'V_Columns' ].IsNull
    Then
    Begin
      V_Result_Params.DynVar[ 'V_Columns' ].AsString := '<0>Dep_Code</0>'
                                                    + '<1>Dep_SName</1>'
                                                    + '<end>';
      V_Result_Params.DynVar[ 'V_Titles' ].AsString := '<0>Код</0>'
                                                    + '<1>Цех</1>'
                                                    + '<end>';
    End;

    If Not V_In_Params.DynVar[ 'V_Keyword'].IsNull
    Then
    Begin
      V_Result_Params.DynVar['V_SQL_Text'].AsString := V_Result_Params.DynVar['V_SQL_Text'].AsString
      + ' Where ( ( Upper(Dep.Dep_SName) Like ''%''||Upper(:V_Keyword)||''%'' '
                            + ' Or Upper(Dep.Dep_Code) Like ''%''||Upper(:V_Keyword)||''%'' ) )';
    End;
    {$EndRegion 'Формирование списка цехов'}
  End
  Else If V_In_Params.DynVar[ 'v_Find' ].AsString = 'USERS'
  Then
  Begin
    {$Region 'Формирование списка цехов'}
    V_Result_Params.DynVar['V_SQL_Text'].AsString := ' Select Distinct '
                                                     + ' P_p_U.User_Id, '
                                                     +	' usr.Emp_Fio '
                                                     +	' From   Stp.V_DOC_ROUTS t '
                                                     +	' Left   Join Stp.V_Doc_Rout_Points p '
                                                     + '	On     P.DOC_ROUT_ID = t.Id_Doc_Rout '
                                                     + '	Left   Join Stp.V_Doc_Rout_Point_Pstns P_p '
                                                     + '	On     P_p.Doc_Rout_Point_Id = p.Id_Doc_Rout_Point '
                                                     + '	Join   Stp.V_Doc_Rout_Point_Pstn_us P_p_u '
                                                     + '	On     P_p_u.Doc_Rout_Point_Pstn_Id = P_p.Id_Doc_Rout_Point_Pstn '
                                                     + '	Left   Join Stp.v_Users usr '
                                                     + '	On     Usr.Id_User = P_p_u.User_Id '
	                                                   + '  And usr.Act_Status = 1 ' ;

    if V_In_Params.DynVar[ 'V_Columns' ].IsNull
    Then
    Begin
      V_Result_Params.DynVar[ 'V_Columns' ].AsString := '<0>User_Id</0>'
                                                    + '<1>Emp_Fio</1>'
                                                    + '<end>';
      V_Result_Params.DynVar[ 'V_Titles' ].AsString := '<0>User_Id</0>'
                                                    + '<1>Ф.И.О</1>'
                                                    + '<end>';
    End;

    If Not V_In_Params.DynVar[ 'V_Keyword'].IsNull
    Then
    Begin
      V_Result_Params.DynVar['V_SQL_Text'].AsString := V_Result_Params.DynVar['V_SQL_Text'].AsString
      + ' Where ( ( Upper(Dep.Dep_SName) Like ''%''||Upper(:V_Keyword)||''%'' '
                            + ' Or Upper(Dep.Dep_Code) Like ''%''||Upper(:V_Keyword)||''%'' ) )';
    End;
    {$EndRegion 'Формирование списка цехов'}
  End
  Else If v_In_Params.DynVar[ 'v_Find' ].AsString = 'PNT_NM_FRMT'
  Then
  Begin
    {$Region 'Формирование списка вариантов наименования'}
    V_Result_Params.DynVar['V_SQL_Text'].AsString := ' Select ''stp_name'' Point_Name_Frmt, '
                                                      + ' ''Наименование точки из STP'' Point_Name_Frmt_Name '
                                                      + ' From   Dual '
                                                      + ' Union All '
                                                      + ' Select ''usr_name'' Point_Name_Frmt, '
                                                      + ' ''Пользовательское наименование'' Point_Name_Frmt_Name '
                                                      + ' From   Dual '
                                                      + ' Union All '
                                                      + ' Select ''dep_name'' Point_Name_Frmt, '
                                                      + ' ''Наименование по отделу'' Point_Name_Frmt_Name '
                                                      + ' From   Dual '
                                                      + ' Union All '
                                                      + ' Select ''stp_plus_dep_name'' Point_Name_Frmt, '
                                                      + ' ''Отдел и наименование из STP'' Point_Name_Frmt_Name '
                                                      + ' From   Dual '
                                                      + ' Union All '
                                                      + ' Select ''stp_plus_dep_usr_name'' Point_Name_Frmt, '
                                                      + ' ''Отдел,сотрудник и наименование из STP'' Point_Name_Frmt_Name '
                                                      + ' From   Dual '   ;

    if V_In_Params.DynVar[ 'V_Columns' ].IsNull
    Then
    Begin
      V_Result_Params.DynVar[ 'V_Columns' ].AsString := '<0>Point_Name_Frmt_Name</0>'
                                                    + '<end>';
      V_Result_Params.DynVar[ 'V_Titles' ].AsString := '<0>Формат наименования</0>'
                                                    + '<end>';
    End;
    {$EndRegion 'Формирование списка вариантов наименования'}
  End
  Else If V_In_Params.DynVar[ 'v_Find' ].AsString = 'CHOSE_STATE'
  Then
  Begin
    {$Region 'Формирование списка вариантов порядка следования'}
    V_Result_Params.DynVar['V_SQL_Text'].AsString := ' Select ''chsn'' Chose_State, '
                                                      + ' ''Выбираемый'' Chose_State_Name '
                                                      + ' From   Dual '
                                                      + ' Union All '
                                                      + ' Select ''unchsn'' Chose_State, '
                                                      + ' ''Обязательный'' Chose_State_Name '
                                                      + 'From   Dual';
    if V_In_Params.DynVar[ 'V_Columns' ].IsNull
    Then
    Begin
      V_Result_Params.DynVar[ 'V_Columns' ].AsString := '<0>Chose_State_Name</0>'
                                                    + '<end>';
      V_Result_Params.DynVar[ 'V_Titles' ].AsString := '<0>Обязательность</0>'
                                                    + '<end>';
    End;
    {$EndRegion 'Формирование списка вариантов порядка следования'}
  End;

  If ( ( Not V_In_Params.DynVar[ 'V_Keyword'].IsNull )
      And ( Not V_In_Params.DynVar[ 'V_Filter' ].IsNull ) )
      Or ( ( Pos( 'Where', V_Result_Params.DynVar['V_SQL_Text'].AsString ) <> 0 )
           And ( Not V_In_Params.DynVar[ 'V_Filter' ].IsNull ) )
      And (Pos( 'Where', V_In_Params.DynVar[ 'V_Filter' ].AsString ) = 0)
  Then
  Begin
    V_Result_Params.DynVar['V_SQL_Text'].AsString := V_Result_Params.DynVar['V_SQL_Text'].AsString + ' And ( ' +  V_In_Params.DynVar[ 'V_Filter' ].AsString + ' )';
  End
  Else if (Not V_In_Params.DynVar[ 'V_Filter' ].IsNull)
          And (Pos( 'Where', V_In_Params.DynVar[ 'V_Filter' ].AsString ) = 0)
  Then
  Begin
    V_Result_Params.DynVar['V_SQL_Text'].AsString := V_Result_Params.DynVar['V_SQL_Text'].AsString + ' Where ( ' +  V_In_Params.DynVar[ 'V_Filter' ].AsString + ' )';
  End
  Else
  Begin
    V_Result_Params.DynVar['V_SQL_Text'].AsString := V_Result_Params.DynVar['V_SQL_Text'].AsString + V_In_Params.DynVar[ 'V_Filter' ].AsString;
  End;

  Result := V_Result_Params;
end;

function TForm_Main_Dc_Aprvl_L.F_NextSeqNumber(Sender: TObject): Integer;
var
  ResultNumber: Integer;
  SequenceName: String;
begin
  if Sender is TMemTableEh
  then
  begin

    with Sender as TMemTableEh
    do
    begin
      if ExternalMemData = Nil
      then
        SequenceName := ((DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).SequenceField.Sequence
      else
        SequenceName := ((ExternalMemData.DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).SequenceField.Sequence;
    end;

    if SequenceName = ''
    then
    begin
      MessageDlg('Последовательность не найдена!', mtError, [mbOK], 5);
      Abort;
    end;


    with TOracleQuery.Create(Application)
    do
    begin
      try
        SQL.Add('Select ' + SequenceName + '.Nextval From Dual');
        Session := DM_Main.Session;
        Execute;
        ResultNumber := FieldAsInteger(0);
      finally
        Free;
      end;
    end;

    Result := ResultNumber;
  end;
end;

procedure TForm_Main_Dc_Aprvl_L.Grid_Dc_Aprvl_LstSelectedRowsItemChanged(
  Sender: TCustomDBGridEh; Item: TUniBookmarkEh; Action: TListNotification);
var
  Rec: TMemoryRecordEh;
begin
  if FInternalSelection then
    Exit;
  if Action = lnDeleted then
  begin
    if (Data_Dc_Aprvl_Lst_Var.DataSet as TMemTableEh).Locate('STP_DC_RT_PNT_POS_ID',
        (Data_Dc_Aprvl_Lst.DataSet as TMemTableEh).BookmarkToRec(Item).DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh], [])
    then
    begin
      Grid_Dc_Pnt_Var.SelectedRows.CurrentRowSelected := False;
      Grid_Dc_Aprvl_Lst.CancelMode; //Stop Mouse Dragging
    end;
  end;
end;

procedure TForm_Main_Dc_Aprvl_L.Grid_Dc_Pnt_VarSelectedRowsItemChanged(
  Sender: TCustomDBGridEh; Item: TUniBookmarkEh; Action: TListNotification);
var
  NewRec: TMemoryRecordEh;
  KeyField: String;
  j: Integer;
  FetchRecord: Boolean;
  RecIndex: Integer;
begin
  If Action = lnAdded
  Then
  Begin
    if UpperCase((((Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh).DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).UpdatingTable) = 'SRC.V_DOC_ROUT_USER_PNTS'
    then
    begin
      KeyField := ((Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh).DataDriver as TDataSetDriverEh).KeyFields;

      if KeyField = ''
      then
      begin
        MessageDlg('Не указан KeyFields в DataDriver! Укажите Primary Key таблицы!', mtError, [mbOK], 5);
        Abort;
      end;
    end
    else if UpperCase((((Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh).DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).UpdatingTable) = 'SRC.V_DOC_ROUT_POINTS'
    then
    begin
      KeyField := ((Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh).DataDriver as TDataSetDriverEh).KeyFields;

      if KeyField = ''
      then
      begin
        MessageDlg('Не указан KeyFields в DataDriver! Укажите Primary Key таблицы!', mtError, [mbOK], 5);
        Abort;
      end;
    end;

    If Not TDBGridEh(Sender).SelectedRows.Updating
    Then
    Begin
      With (Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh)
      Do
      Begin
        if VarToStr(BookmarkToRec(Item).DataValues[KeyField, dvvValueEh])=''
        then
        begin
          RecordsView.MemTableData.RecordsList.BeginUpdate;
          NewRec := RecordsView.MemTableData.RecordsList.NewRecord;
          NewRec.DataValues['POINT_POSITION', dvvValueEh] := BookmarkToRec(Item).DataValues['POINT_POSITION', dvvValueEh];
          NewRec.DataValues['POINT_NAME', dvvValueEh] := BookmarkToRec(Item).DataValues['POINT_NAME', dvvValueEh];
          NewRec.DataValues['STP_DOC_ROUT_POINT_ID', dvvValueEh] := BookmarkToRec(Item).DataValues['STP_DOC_ROUT_POINT_ID', dvvValueEh];
          NewRec.DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh] := BookmarkToRec(Item).DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh];
          NewRec.DataValues['POS_RW_NUM', dvvValueEh] := BookmarkToRec(Item).DataValues['POS_RW_NUM', dvvValueEh];
          NewRec.DataValues['POS_STATE', dvvValueEh] := BookmarkToRec(Item).DataValues['POS_STATE', dvvValueEh];
          NewRec.DataValues['CHOSE_STATE', dvvValueEh] := BookmarkToRec(Item).DataValues['CHOSE_STATE', dvvValueEh];
          NewRec.DataValues['DEP_ID', dvvValueEh] := BookmarkToRec(Item).DataValues['DEP_ID', dvvValueEh];
          if NewRec.DataStruct.FieldIndex('DOC_HEADER_ID')<>-1
          then
            NewRec.DataValues['DOC_HEADER_ID', dvvValueEh] := FDocHeaderId
          else if NewRec.DataStruct.FieldIndex('DOC_ROUT_ID')<>-1
          then
            NewRec.DataValues['DOC_ROUT_ID', dvvValueEh] := FDocHeaderId;
          NewRec.DataValues[KeyField, dvvValueEh] := F_NextSeqNumber(Grid_Dc_Aprvl_Lst.DataSource.DataSet);
          NewRec.UpdateStatus:=usInserted;
          RecordsView.MemTableData.RecordsList.AddRecord(NewRec);
          RecordsView.MemTableData.RecordsList.EndUpdate;
        end
        else
        begin
          StatusFilter := StatusFilter + [usDeleted];
          RecIndex := FindRec(KeyField, BookmarkToRec(Item).DataValues[KeyField, dvvValueEh], [loPartialKey]);
          if RecIndex<>-1
          then
          begin
            NewRec := RecordsView.Rec[RecIndex];
            NewRec.RevertRecord;
          end;
          StatusFilter := StatusFilter - [usDeleted];
        end;
      End;
      FInternalSelection := True;
      Try
        Grid_Dc_Aprvl_Lst.Selection.Rows.SelectAll;
      Finally
        FInternalSelection := False;
      End;
    End
    Else
      FSelectingUpdated := True;
  end
  Else If Action = lnDeleted
  Then
  Begin
    If Not TDBGridEh(Sender).SelectedRows.Updating
    Then
    Begin
      NewRec := (Grid_Dc_Pnt_Var.DataSource.DataSet as TMemTableEh).BookmarkToRec(Item);
      If Grid_Dc_Aprvl_Lst.DataSource.DataSet.Locate('STP_DC_RT_PNT_POS_ID',
        (Grid_Dc_Pnt_Var.DataSource.DataSet as TMemTableEh).BookmarkToRec(Item).DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh], [])
      Then
      Begin
        FInternalSelection := True;
        Try
          Grid_Dc_Aprvl_Lst.SelectedRows.CurrentRowSelected := False;
        Finally
          FInternalSelection := False;
        End;
        Grid_Dc_Aprvl_Lst.DataSource.DataSet.Delete;
      End;
    End
    Else
      FSelectingUpdated := True;
  end;
end;

procedure TForm_Main_Dc_Aprvl_L.Grid_Dc_Pnt_VarSelectionChanged(
  Sender: TObject);
var
  i, j, RecIndex: Integer;
  RecParent, RecReciver: TMemoryRecordEh;
  MemT_Reciever, MemT_Parent: TMemTableEh;
  RecAllowed: Boolean;
  ListRecToAdd, ListRecToDelete: TList;
  KeyField: String;
  NewListItem: TListItem;
begin
  If FSelectingUpdated
  Then
  Begin
    FInternalSelection := True;
    MemT_Reciever := Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh;
    MemT_Parent := Grid_Dc_Pnt_Var.DataSource.DataSet as TMemTableEh;
    if UpperCase(((MemT_Reciever.DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).UpdatingTable) = 'SRC.V_DOC_ROUT_USER_PNTS'
    then
    begin
      KeyField := (MemT_Reciever.DataDriver as TDataSetDriverEh).KeyFields;

      if KeyField = ''
      then
      begin
        MessageDlg('Не указан KeyFields в DataDriver! Укажите Primary Key таблицы!', mtError, [mbOK], 5);
        Abort;
      end;
    end
    else if UpperCase(((MemT_Reciever.DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).UpdatingTable) = 'SRC.V_DOC_ROUT_POINTS'
    then
    begin
      KeyField := (MemT_Reciever.DataDriver as TDataSetDriverEh).KeyFields;

      if KeyField = ''
      then
      begin
        MessageDlg('Не указан KeyFields в DataDriver! Укажите Primary Key таблицы!', mtError, [mbOK], 5);
        Abort;
      end;
    end;
    MemT_Reciever.DisableControls;
    ListRecToAdd := TList.Create;
    ListRecToDelete := TList.Create;
    try
      for i := 0 to Grid_Dc_Pnt_Var.SelectedRows.Count-1
      do
      begin
        RecParent := MemT_Parent.BookmarkToRec(Grid_Dc_Pnt_Var.SelectedRows[i]);
        if ListRecToAdd.IndexOf(RecParent)=-1 then ListRecToAdd.Add(RecParent);
        for j := 0 to Grid_Dc_Aprvl_Lst.SelectedRows.Count-1
        do
        begin
          RecReciver := MemT_Reciever.BookmarkToRec(Grid_Dc_Aprvl_Lst.SelectedRows[j]);
          if RecReciver.DataValues['Chose_State', dvvValueEh]='chsn'
          then
          begin
            if RecParent.DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh]=RecReciver.DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh]
            then
            begin
              ListRecToAdd.Delete(ListRecToAdd.IndexOf(RecParent));
              Break;
            end;
          end;
        end;
      end;

      for i := 0 to Grid_Dc_Aprvl_Lst.SelectedRows.Count-1
      do
      begin
        RecReciver := MemT_Reciever.BookmarkToRec(Grid_Dc_Aprvl_Lst.SelectedRows[i]);
        if RecReciver.DataValues['Chose_State', dvvValueEh]='chsn'
        then
        begin
          if ListRecToDelete.IndexOf(RecReciver)=-1 then ListRecToDelete.Add(RecReciver);
          for j := 0 to Grid_Dc_Pnt_Var.SelectedRows.Count-1
          do
          begin
            RecParent := MemT_Parent.BookmarkToRec(Grid_Dc_Pnt_Var.SelectedRows[j]);
            if RecParent.DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh]=RecReciver.DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh]
            then
            begin
              ListRecToDelete.Delete(ListRecToDelete.IndexOf(RecReciver));
              Break;
            end;
          end;
        end;
      end;

      for i := 0 to ListRecToDelete.Count-1
      do
      begin
        RecReciver := ListRecToDelete[i];
        Grid_Dc_Aprvl_Lst.SelectedRows.DeleteBookmark(MemT_Reciever.RecToBookmark(RecReciver));
        RecReciver.RecordsList.DeleteRecord(RecReciver.Index);
      end;

      for i := 0 to ListRecToAdd.Count-1
      do
      begin
        RecParent := ListRecToAdd[i];
        with MemT_Reciever.RecordsView.MemTableData.RecordsList
        do
        begin
          if VarToStr(RecParent.DataValues[KeyField, dvvValueEh])=''
          then
          begin
            BeginUpdate;
            RecReciver := NewRecord;
            RecReciver.DataValues['POINT_POSITION', dvvValueEh] := RecParent.DataValues['POINT_POSITION', dvvValueEh];
            RecReciver.DataValues['POINT_NAME', dvvValueEh] := RecParent.DataValues['POINT_NAME', dvvValueEh];
            RecReciver.DataValues['STP_DOC_ROUT_POINT_ID', dvvValueEh] := RecParent.DataValues['STP_DOC_ROUT_POINT_ID', dvvValueEh];
            RecReciver.DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh] := RecParent.DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh];
            RecReciver.DataValues['POS_RW_NUM', dvvValueEh] := RecParent.DataValues['POS_RW_NUM', dvvValueEh];
            RecReciver.DataValues['POS_STATE', dvvValueEh] := RecParent.DataValues['POS_STATE', dvvValueEh];
            RecReciver.DataValues['CHOSE_STATE', dvvValueEh] := RecParent.DataValues['CHOSE_STATE', dvvValueEh];
            RecReciver.DataValues['DEP_ID', dvvValueEh] := RecParent.DataValues['DEP_ID', dvvValueEh];
            if RecReciver.DataStruct.FieldIndex('DOC_HEADER_ID')<>-1
            then
              RecReciver.DataValues['DOC_HEADER_ID', dvvValueEh] := FDocHeaderId
            else if RecReciver.DataStruct.FieldIndex('DOC_ROUT_ID')<>-1
            then
              RecReciver.DataValues['DOC_ROUT_ID', dvvValueEh] := FDocHeaderId;
            RecReciver.DataValues[KeyField, dvvValueEh] := F_NextSeqNumber(MemT_Reciever);
            AddRecord(RecReciver);
            EndUpdate;
          end
          else
          begin
            MemT_Reciever.StatusFilter := MemT_Reciever.StatusFilter + [usDeleted];
            RecIndex := MemT_Reciever.FindRec(KeyField, RecParent.DataValues[KeyField, dvvValueEh], [loPartialKey]);
            if RecIndex<>-1
            then
            begin
              RecReciver := MemT_Reciever.RecordsView.Rec[RecIndex];
              RecReciver.RevertRecord;
            end;
            MemT_Reciever.StatusFilter := MemT_Reciever.StatusFilter - [usDeleted];
          end;
        end;
      end;
      MemT_Reciever.First;
    Finally
      MemT_Reciever.EnableControls;
      ListRecToAdd.Free;
      ListRecToDelete.Free;
    End;
    FSelectingUpdated := False;
    Grid_Dc_Aprvl_Lst.SelectedRows.SelectAll;
    FInternalSelection := False;
  end;
end;

procedure TForm_Main_Dc_Aprvl_L.Main_M_Dc_Aprvl_L_Btn_ExitClick(
  Sender: TObject);
begin
  Close;
end;

procedure TForm_Main_Dc_Aprvl_L.Main_M_Dc_Aprvl_L_Btn_SetpsClick(
  Sender: TObject);
begin
  with TForm_Setup_Dc_Arvl_Lst.Create(Self, FDocTypeId)
  do
  begin
    try
      ShowModal;
      Db_Doc_PrevPointNodes.Refresh;
      Db_Doc_NextPointNodes.Refresh;
    finally
      Free;
    end;
  end;
end;

procedure TForm_Main_Dc_Aprvl_L.MemT_Dc_Aprvl_LstAfterScroll(DataSet: TDataSet);
begin
  Db_Dc_Aprvl_Lst_Deps.SetVariable('ID_DC_RT_US_PNT', MemT_Dc_Aprvl_Lst.FieldByName('ID_DC_RT_US_PNT').AsString);
  Db_Dc_Aprvl_Lst_Deps.Refresh;
end;

procedure TForm_Main_Dc_Aprvl_L.MemT_Dc_Aprvl_LstBeforeDelete(
  DataSet: TDataSet);
  Var I:Integer;
begin
  if Not Form_Main_Dc_Aprvl_L.Db_Dc_Aprvl_Lst_Deps.IsEmpty
  Then
    Form_Main_Dc_Aprvl_L.Db_Dc_Aprvl_Lst_Deps.Delete;
  Form_Main_Dc_Aprvl_L.P_Delete_PointLinks( MemT_Dc_Aprvl_Lst.Rec );
end;

procedure TForm_Main_Dc_Aprvl_L.N1Click(Sender: TObject);
begin
  P_Create_PointLinks;
end;

procedure TForm_Main_Dc_Aprvl_L.N2Click(Sender: TObject);
begin
  (ActiveControl as TDBGridEh).DataSource.DataSet.Delete;
end;

procedure TForm_Main_Dc_Aprvl_L.PopupMenu1Popup(Sender: TObject);
begin
  if not Usr_Prm_UserAdmin
  then
    Abort;
end;

procedure TForm_Main_Dc_Aprvl_L.P_Create_PointLinks;
Var
  i,j,k,
  Y_Pos, X_Pos,
  RecIndex, RecLevel: Integer;
  KeyField: String;
  UserDocRoutsDataSet, DocRoutsDataSet: TMemTableEh;
  CurrentRec, NextRec: TMemoryRecordEh;
  MoveToNextNode: Boolean;
  NewIdList: TStringList;
  TestText: String;
  Function F_FindParentLinks(V_Rec_Id_Nxt: Integer): Bool;
  Var
    I: Integer;
    Vl_Result: Bool;
  Begin
    With (Data_Dc_Aprvl_Lst_Links.DataSet)
    Do
    Begin
      DisableControls;
      Try
        if Not Locate('DC_RT_US_PNT_NXT_ID',
                          VarArrayOf([V_Rec_Id_Nxt]),
                       [loPartialKey])
        then
          Vl_Result := False
        else
          Vl_Result := True;
      Finally
        EnableControls;
        Result := Vl_Result;
      End;
    End;
  End;

  Function F_Check_Link( V_Rec_Id_Pr: Integer;
                         V_Rec_Id_Nxt: Integer ): Bool;
  Var
    I: Integer;
    Vl_Result: Bool;
  Begin
    {$Region 'Проверка наличия связи'}
    With (Data_Dc_Aprvl_Lst_Links.DataSet)
    Do
    Begin
      DisableControls;
      Try
        if Not Locate('DC_RT_US_PNT_NXT_ID;DC_RT_US_PNT_ID',
                          VarArrayOf([V_Rec_Id_Nxt, V_Rec_Id_Pr]),
                       [loPartialKey])
        then
          Vl_Result := False
        else
          Vl_Result := True;
      Finally
        EnableControls;
        Result := Vl_Result;
      End;
    End;
    {$EndRegion 'Проверка наличия связи'}
  End;

 procedure p_FindSubLink(CurrentRec: TMemoryRecordEh; PrevRec: TMemoryRecordEh);
  var
    TempDriverEh: TDataSetDriverEh;
    TempMemTableEh: TMemTableEh;
    PointsStringList: TStringList;
    X1,Y1, X2,Y2: Integer;
    i, CycleEnd: Integer;
  begin
    X1 := StrToInt(Copy(CurrentRec.DataValues['POINT_POSITION', dvvValueEh], 0, Pos('.',CurrentRec.DataValues['POINT_POSITION', dvvValueEh])-1));
    X2 := StrToInt(Copy(PrevRec.DataValues['POINT_POSITION', dvvValueEh], 0, Pos('.',PrevRec.DataValues['POINT_POSITION', dvvValueEh])-1));
    Y1 := StrToInt(Copy(CurrentRec.DataValues['POINT_POSITION', dvvValueEh], Pos('.',CurrentRec.DataValues['POINT_POSITION', dvvValueEh])+1));
    Y2 := StrToInt(Copy(PrevRec.DataValues['POINT_POSITION', dvvValueEh], Pos('.',PrevRec.DataValues['POINT_POSITION', dvvValueEh])+1));

    PointsStringList := TStringList.Create;
    PointsStringList.Sorted := True;
    PointsStringList.Duplicates := dupError;
    TempDriverEh := TDataSetDriverEh.Create(Self);
    with TempDriverEh
    do
    begin
      try
        ProviderDataSet := Data_Dc_Aprvl_Lst_Links.DataSet;
        TempMemTableEh := TMemTableEh.Create(Self);
        with TempMemTableEh
        do
        begin
          try
            DataDriver := TempDriverEh;
            if UserDocRoutsDataSet <> Nil
            then
              Filter := 'DC_RT_US_PNT_NXT_ID=' + VarToStr(PrevRec.DataValues[KeyField, dvvValueEh])
            else if DocRoutsDataSet <> Nil
            then
              Filter := 'C_DOC_ROUT_POINT_ID=' + VarToStr(PrevRec.DataValues[KeyField, dvvValueEh]);
            Filtered := True;
            FetchAllOnOpen := True;
            Active := True;
            if UserDocRoutsDataSet <> Nil
            then
              for i  := RecordsView.Count-1 downto 0
              do
                PointsStringList.Add(VarToStr(RecordsView.Rec[i].DataValues['DC_RT_US_PNT_ID', dvvValueEh]) )
            else if DocRoutsDataSet <> Nil
            then
              for i  := RecordsView.Count-1 downto 0
              do
                PointsStringList.Add(VarToStr(RecordsView.Rec[i].DataValues['P_DOC_ROUT_POINT_ID', dvvValueEh]) );
            Filtered := False;
            if UserDocRoutsDataSet <> Nil
            then
              Filter := 'DC_RT_US_PNT_NXT_ID=' + VarToStr(CurrentRec.DataValues[KeyField, dvvValueEh])
            else if DocRoutsDataSet <> Nil
            then
              Filter := 'C_DOC_ROUT_POINT_ID=' + VarToStr(CurrentRec.DataValues[KeyField, dvvValueEh]);
            Filtered := True;

            for i  := RecordsView.Count-1 downto 0
            do
            begin
              try
                if UserDocRoutsDataSet <> Nil
                then
                  PointsStringList.Add(VarToStr(RecordsView.Rec[i].DataValues['DC_RT_US_PNT_ID', dvvValueEh]) )
                else if DocRoutsDataSet <> Nil
                then
                  PointsStringList.Add(VarToStr(RecordsView.Rec[i].DataValues['P_DOC_ROUT_POINT_ID', dvvValueEh]) );
              except on E : Exception
              do
                if E.ClassName = 'EStringListError'
                then
                begin
                  RecordsView.DeleteRecord(i);
                end;
              end;
            end;
          finally
            DataDriver := Nil;
            Free;
          end;
        end;
      finally
        Free;
      end;
    end;


  end;

 function F_AllowToCreateLink(CurrentRec: TMemoryRecordEh; PrevRec: TMemoryRecordEh):Bool;
  Var
    X1,Y1, X2,Y2: Integer;
    LookupResult: Variant;
  begin
    X1 := StrToInt(Copy(CurrentRec.DataValues['POINT_POSITION', dvvValueEh], 0, Pos('.',CurrentRec.DataValues['POINT_POSITION', dvvValueEh])-1));
    X2 := StrToInt(Copy(PrevRec.DataValues['POINT_POSITION', dvvValueEh], 0, Pos('.',PrevRec.DataValues['POINT_POSITION', dvvValueEh])-1));
    Y1 := StrToInt(Copy(CurrentRec.DataValues['POINT_POSITION', dvvValueEh], Pos('.',CurrentRec.DataValues['POINT_POSITION', dvvValueEh])+1));
    Y2 := StrToInt(Copy(PrevRec.DataValues['POINT_POSITION', dvvValueEh], Pos('.',PrevRec.DataValues['POINT_POSITION', dvvValueEh])+1));

    If ( (CurrentRec.DataValues['POS_STATE', dvvValueEh] = 'parall')
          And (PrevRec.DataValues['POS_STATE', dvvValueEh] = 'line') )
    Then
    begin
      if X1 - X2 = 1
      then
      begin
        p_FindSubLink(CurrentRec, PrevRec);
        Result := True;
      end
      else if (X1 - X2 = 2)
      then
      begin
        {LookupResult := Data_Dc_Aprvl_Lst_Links.DataSet.Lookup( 'DC_RT_US_PNT_NXT_ID',
                                                     CurrentRec.DataValues[KeyField, dvvValueEh],
                                                     'ID_DC_RT_US_PNT_LNK' );}
        if Not Data_Dc_Aprvl_Lst_Links.DataSet.Locate( 'DC_RT_US_PNT_NXT_ID',
                                                     PrevRec.DataValues[KeyField, dvvValueEh],
                                                     [loPartialKey])
        then
          Result := True
        else
          Result := False;
      end
      else
        Result := False;
    end
    Else if ( (CurrentRec.DataValues['POS_STATE', dvvValueEh] = 'line')
              And (PrevRec.DataValues['POS_STATE', dvvValueEh] = 'parall')  )
    Then
    begin
      if X1 - X2 = 1
      then
      begin
        p_FindSubLink(CurrentRec, PrevRec);
        Result := True;
      end
      else if (X1 - X2 = 2)
      then
      begin
        {ookupResult := Data_Dc_Aprvl_Lst_Links.DataSet.Lookup( 'DC_RT_US_PNT_ID',
                                                     PrevRec.DataValues[KeyField, dvvValueEh],
                                                    'ID_DC_RT_US_PNT_LNK' );}
        if Not Data_Dc_Aprvl_Lst_Links.DataSet.Locate( 'DC_RT_US_PNT_ID',
                                                     PrevRec.DataValues[KeyField, dvvValueEh],
                                                     [loPartialKey])
        then
          Result := True
        else
          Result := False;
      end
      else
        Result := False;
    end
    Else if ( (CurrentRec.DataValues['POS_STATE', dvvValueEh] = 'line')
             And (PrevRec.DataValues['POS_STATE', dvvValueEh] = 'line')
             And ( i-j = 1 ) )
    then
    begin
      p_FindSubLink(CurrentRec, PrevRec);
      Result := True;
    end
    else if ( (CurrentRec.DataValues['POS_STATE', dvvValueEh] = 'parall')
             And (PrevRec.DataValues['POS_STATE', dvvValueEh] = 'parall')
             And (PrevRec.DataValues['CONNECT_W_PNT_ID', dvvValueEh] = CurrentRec.DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh] ) )
    Then
    begin
      p_FindSubLink(CurrentRec, PrevRec);
      CurrentRec.Edit;
      CurrentRec.DataValues['POINT_POSITION', dvvValueEh] := IntToStr(X1) + '.' + IntToStr(Y2);
      CurrentRec.Post;
      Result := True;
    end
    else if ( (CurrentRec.DataValues['POS_STATE', dvvValueEh] = 'parall')
             And (PrevRec.DataValues['POS_STATE', dvvValueEh] = 'parall')
             And (VarToStr(PrevRec.DataValues['CONNECT_W_PNT_ID', dvvValueEh] )= '' )
             And (X1 - X2 = 1))
    Then
    begin
      p_FindSubLink(CurrentRec, PrevRec);
      Result := True;
    end
    else
      Result := False;
  end;

begin
  NewIdList := TStringList.Create;
  Db_Doc_PrevPointNodes.SetVariable(0, FDocTypeId);
  Db_Doc_NextPointNodes.SetVariable(0, FDocTypeId);
  Db_Doc_PrevPointNodes.Active := True;
  Db_Doc_NextPointNodes.Active := True;

  (Data_Dc_Aprvl_Lst_Links.DataSet).First;
  while not  (Data_Dc_Aprvl_Lst_Links.DataSet).Eof
  do
  begin
   (Data_Dc_Aprvl_Lst_Links.DataSet).Delete;
   (Data_Dc_Aprvl_Lst_Links.DataSet).Next;
  end;


  With Data_Dc_Aprvl_Lst.DataSet as TMemTableEh
  Do
  Begin
    DisableControls;
    if UpperCase(((DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).UpdatingTable) = 'SRC.V_DOC_ROUT_USER_PNTS'
    then
    begin
      UserDocRoutsDataSet := Data_Dc_Aprvl_Lst.DataSet as TMemTableEh;
      KeyField := (DataDriver as TDataSetDriverEh).KeyFields;

      if KeyField = ''
      then
      begin
        MessageDlg('Не указан KeyFields в DataDriver! Укажите Primary Key таблицы!', mtError, [mbOK], 5);
        Abort;
      end;
    end
    else if UpperCase(((DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).UpdatingTable) = 'SRC.V_DOC_ROUT_POINTS'
    then
    begin
      DocRoutsDataSet := Data_Dc_Aprvl_Lst.DataSet as TMemTableEh;
      KeyField := (DataDriver as TDataSetDriverEh).KeyFields;

      if KeyField = ''
      then
      begin
        MessageDlg('Не указан KeyFields в DataDriver! Укажите Primary Key таблицы!', mtError, [mbOK], 5);
        Abort;
      end;
    end;

    Try
      With RecordsView
      Do
      Begin
        Y_Pos := 0;
        X_Pos := 0;
        For i := 0 to Count - 1
        Do
        Begin
          if (Rec[i].DataValues['POS_STATE', dvvValueEh] = 'line')
          then
          begin
            Inc(X_Pos);
            Y_Pos := 1;
          end
          else if (Rec[i].DataValues['POS_STATE', dvvValueEh] = 'parall')
          then
          begin
            if i=0
            then
            begin
              X_Pos := 1;
              Y_Pos := 1;
            end
            else if Rec[i-1].DataValues['POS_STATE', dvvValueEh] = 'line'
            then
            begin
              Y_Pos := 1;
              Inc(X_Pos);
            end
            else
              Inc(Y_Pos);
          end;
          Rec[i].Edit;
          Rec[i].DataValues['POINT_POSITION', dvvValueEh] := IntToStr(X_Pos)
                                                             + '.'
                                                             + IntToStr(Y_Pos);
          Rec[i].Post;

          if UserDocRoutsDataSet <> Nil
          then
          begin
            If (VarToStr(Rec[i].DataValues['DEP_ID', dvvValueEh]) <> '')
                and ((Data_Dc_Aprvl_Lst_Deps.DataSet).Lookup('DEP_ID;DC_RT_US_PNT_ID',
                                                              VarArrayOf([Rec[i].DataValues['DEP_ID', dvvValueEh],
                                                                          Rec[i].DataValues[KeyField, dvvValueEh]]),
                                                              'ID_DC_RT_US_PNT_DPS')=Null)
            Then
            Begin
              (Data_Dc_Aprvl_Lst_Deps.DataSet).Append;
              (Data_Dc_Aprvl_Lst_Deps.DataSet).FieldByName('DEP_ID').AsVariant := Rec[i].DataValues['DEP_ID', dvvValueEh];
              (Data_Dc_Aprvl_Lst_Deps.DataSet).FieldByName('DC_RT_US_PNT_ID').AsVariant := Rec[i].DataValues[KeyField, dvvValueEh];
              (Data_Dc_Aprvl_Lst_Deps.DataSet).Post;
            End;
          end
          else if DocRoutsDataSet <> Nil
          then
          begin
            if (Rec[i].UpdateStatus=usInserted)
            then
            begin
              Db_Stp_Point_Pstns.Close;
              Db_Stp_Point_Pstns.SetVariable('Stp_Doc_Rout_Point_Id', Rec[i].DataValues['STP_DOC_ROUT_POINT_ID', dvvValueEh]);
              Db_Stp_Point_Pstns.Open;

              Db_Stp_Point_Results.Close;
              Db_Stp_Point_Results.SetVariable('Stp_Doc_Rout_Point_Id', Rec[i].DataValues['STP_DOC_ROUT_POINT_ID', dvvValueEh]);
              Db_Stp_Point_Results.Open;

              Db_Stp_Point_Results.First;
              while not Db_Stp_Point_Results.Eof
              do
              begin
                if ((Data_Dc_Aprvl_Lst_Results.DataSet).Lookup('DOC_ROUT_POINT_ID;STP_DOC_ROUT_POINT_RSLT_ID',
                                                              VarArrayOf([Rec[i].DataValues[KeyField, dvvValueEh],
                                                                          Db_Stp_Point_Results.FieldByName('ID_DOC_ROUT_POINT_RSLT').AsVariant]),
                                                              'ID_DOC_ROUT_POINT_RSLT')=Null)
                then
                begin
                  (Data_Dc_Aprvl_Lst_Results.DataSet).Append;
                  (Data_Dc_Aprvl_Lst_Results.DataSet).FieldByName('DOC_ROUT_POINT_ID').AsVariant := Rec[i].DataValues[KeyField, dvvValueEh];
                  (Data_Dc_Aprvl_Lst_Results.DataSet).FieldByName('STP_DOC_RESOLUTION_RESULT_ID').AsString := Db_Stp_Point_Results.FieldByName('DOC_RESOLUTION_RESULT_ID').AsString;
                  (Data_Dc_Aprvl_Lst_Results.DataSet).FieldByName('STP_DOC_ROUT_POINT_RSLT_ID').AsString := Db_Stp_Point_Results.FieldByName('ID_DOC_ROUT_POINT_RSLT').AsString;
                  (Data_Dc_Aprvl_Lst_Results.DataSet).Post;
                end;
                Db_Stp_Point_Results.Next;
              end;

              Db_Stp_Point_Pstns.First;
              while not Db_Stp_Point_Pstns.Eof
              do
              begin
                if ((Data_Dc_Rout_Point_Pstns.DataSet).Lookup('DOC_ROUT_POINT_ID;STP_DOC_ROUT_POINT_PSTN_ID',
                                                              VarArrayOf([Rec[i].DataValues[KeyField, dvvValueEh],
                                                                          Db_Stp_Point_Pstns.FieldByName('ID_DOC_ROUT_POINT_PSTN').AsVariant]),
                                                              'ID_DOC_ROUT_POINT_PSTN')=Null)
                then
                begin
                  (Data_Dc_Rout_Point_Pstns.DataSet).Append;
                  if NewIdList.IndexOfName(Data_Dc_Rout_Point_Pstns.DataSet.Name)=-1
                  then
                    NewIdList.Add(Format('%s=%s', [Data_Dc_Rout_Point_Pstns.DataSet.Name, (Data_Dc_Rout_Point_Pstns.DataSet).FieldByName('ID_DOC_ROUT_POINT_PSTN').AsString]))
                  else
                    NewIdList.Values[Data_Dc_Rout_Point_Pstns.DataSet.Name]:=(Data_Dc_Rout_Point_Pstns.DataSet).FieldByName('ID_DOC_ROUT_POINT_PSTN').AsString;
                  (Data_Dc_Rout_Point_Pstns.DataSet).FieldByName('DEP_MMBR_PSTN_ID').AsString := Db_Stp_Point_Pstns.FieldByName('DEP_MMBR_PSTN_ID').AsString;
                  (Data_Dc_Rout_Point_Pstns.DataSet).FieldByName('STP_DOC_ROUT_POINT_PSTN_ID').AsString := Db_Stp_Point_Pstns.FieldByName('ID_DOC_ROUT_POINT_PSTN').AsString;
                  (Data_Dc_Rout_Point_Pstns.DataSet).FieldByName('DOC_ROUT_POINT_ID').AsVariant := Rec[i].DataValues[KeyField, dvvValueEh];
                  (Data_Dc_Rout_Point_Pstns.DataSet).Post;

                  if (VarToStr(Rec[i].DataValues['DEP_ID', dvvValueEh]) <> '' )
                      and ((Data_Dc_Aprvl_Lst_Deps.DataSet).Lookup('DEP_ID;DOC_ROUT_POINT_PSTN_ID',
                                                                VarArrayOf([Rec[i].DataValues['DEP_ID', dvvValueEh],
                                                                            (Data_Dc_Rout_Point_Pstns.DataSet).FieldByName('ID_DOC_ROUT_POINT_PSTN').AsVariant]),
                                                                'ID_DOC_ROUT_POINT_PSTN_D')=Null)
                  then
                  begin
                    (Data_Dc_Aprvl_Lst_Deps.DataSet).Append;
                    (Data_Dc_Aprvl_Lst_Deps.DataSet).FieldByName('DEP_ID').AsVariant := Rec[i].DataValues['DEP_ID', dvvValueEh];
                    (Data_Dc_Aprvl_Lst_Deps.DataSet).FieldByName('DOC_ROUT_POINT_PSTN_ID').AsString := NewIdList.Values[Data_Dc_Rout_Point_Pstns.DataSet.Name];
                    (Data_Dc_Aprvl_Lst_Deps.DataSet).Post;
                  end;

                  if (VarToStr(Rec[i].DataValues['USER_ID', dvvValueEh]) <> '')
                      and ((Data_Dc_Aprvl_Lst_Users.DataSet).Lookup('USER_ID;DOC_ROUT_POINT_PSTN_ID',
                                                                VarArrayOf([Rec[i].DataValues['DEP_ID', dvvValueEh],
                                                                            (Data_Dc_Rout_Point_Pstns.DataSet).FieldByName('ID_DOC_ROUT_POINT_PSTN').AsVariant]),
                                                                'ID_DOC_ROUT_POINT_PSTN_U')=Null)
                  then
                  begin
                    (Data_Dc_Aprvl_Lst_Users.DataSet).Append;
                    (Data_Dc_Aprvl_Lst_Users.DataSet).FieldByName('USER_ID').AsVariant := Rec[i].DataValues['USER_ID', dvvValueEh];
                    (Data_Dc_Aprvl_Lst_Users.DataSet).FieldByName('DOC_ROUT_POINT_PSTN_ID').AsString := NewIdList.Values[Data_Dc_Rout_Point_Pstns.DataSet.Name];
                    (Data_Dc_Aprvl_Lst_Users.DataSet).Post;
                  end;
                end;
                Db_Stp_Point_Pstns.Next;
              end;
            end;
          end;

          RecLevel := 1;
          Db_Doc_NextPointNodes.SetVariable(1, Rec[i].DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh]);
          Db_Doc_NextPointNodes.SetVariable(2, RecLevel);
          Db_Doc_NextPointNodes.Refresh;
          MoveToNextNode := False;
          repeat
            Db_Doc_NextPointNodes.First;
            while not Db_Doc_NextPointNodes.Eof
            do
            begin
              RecIndex := FindRec('STP_DC_RT_PNT_POS_ID', Db_Doc_NextPointNodesC_DOC_RT_PNT_POS_ID.AsVariant, [loPartialKey]);
              if RecIndex <> -1
              then
              begin
                MoveToNextNode := True;
                if (Not F_Check_Link(Rec[i].DataValues[KeyField, dvvValueEh],
                                    Rec[RecIndex].DataValues[KeyField, dvvValueEh]))
                then
                begin
                  (Data_Dc_Aprvl_Lst_Links.DataSet).Append;
                  if UserDocRoutsDataSet <> Nil
                  then
                  begin
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('DC_RT_US_PNT_NXT_ID').AsInteger := Rec[RecIndex].DataValues[KeyField, dvvValueEh];
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('DC_RT_US_PNT_ID').AsInteger := Rec[i].DataValues[KeyField, dvvValueEh];
                  end
                  else if DocRoutsDataSet <> Nil
                  then
                  begin
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('DC_RT_US_PNT_NXT_ID').AsInteger := Rec[RecIndex].DataValues[KeyField, dvvValueEh];
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('DC_RT_US_PNT_ID').AsInteger := Rec[i].DataValues[KeyField, dvvValueEh];
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('C_DOC_ROUT_POINT_ID').AsInteger := Rec[RecIndex].DataValues[KeyField, dvvValueEh];
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('P_DOC_ROUT_POINT_ID').AsInteger := Rec[i].DataValues[KeyField, dvvValueEh];
                  end;
                  (Data_Dc_Aprvl_Lst_Links.DataSet).Post;
                end;
              end;
              Db_Doc_NextPointNodes.Next;
            end;

            if not MoveToNextNode
            then
            begin
              Inc(RecLevel);
              Db_Doc_NextPointNodes.SetVariable(2,RecLevel);
              Db_Doc_NextPointNodes.Refresh;
              if Db_Doc_NextPointNodes.IsEmpty
              then
                Break;
            end;
          until MoveToNextNode;

          RecLevel := 1;
          Db_Doc_PrevPointNodes.SetVariable(1, Rec[i].DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh]);
          Db_Doc_PrevPointNodes.SetVariable(2, RecLevel);
          Db_Doc_PrevPointNodes.Refresh;
          MoveToNextNode := False;
          repeat
            Db_Doc_PrevPointNodes.First;
            while not Db_Doc_PrevPointNodes.Eof
            do
            begin
              TestText := Format('%d - Уровень. %s.%s -> %s.%s', [RecLevel,
                                                                  Rec[i].DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh],
                                                                  Rec[i].DataValues['POINT_NAME', dvvValueEh],
                                                                  Db_Doc_PrevPointNodesP_DOC_RT_PNT_POS_ID.AsVariant,
                                                                  Db_Doc_PrevPointNodesPOINT_USER_NAME.AsVariant
                                                                  ]);
              RecIndex := FindRec('STP_DC_RT_PNT_POS_ID', Db_Doc_PrevPointNodesP_DOC_RT_PNT_POS_ID.AsVariant, [loPartialKey]);
              if RecIndex <> -1
              then
              begin
                MoveToNextNode := True;
                if (Not F_Check_Link(Rec[RecIndex].DataValues[KeyField, dvvValueEh],
                                    Rec[i].DataValues[KeyField, dvvValueEh]))
                   And (Not F_FindParentLinks(Rec[i].DataValues[KeyField, dvvValueEh]))
                then
                begin
                  (Data_Dc_Aprvl_Lst_Links.DataSet).Append;
                  if UserDocRoutsDataSet <> Nil
                  then
                  begin
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('DC_RT_US_PNT_NXT_ID').AsInteger := Rec[i].DataValues[KeyField, dvvValueEh];
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('DC_RT_US_PNT_ID').AsInteger := Rec[RecIndex].DataValues[KeyField, dvvValueEh];
                  end
                  else if DocRoutsDataSet <> Nil
                  then
                  begin
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('DC_RT_US_PNT_NXT_ID').AsInteger := Rec[i].DataValues[KeyField, dvvValueEh];
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('DC_RT_US_PNT_ID').AsInteger := Rec[RecIndex].DataValues[KeyField, dvvValueEh];
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('C_DOC_ROUT_POINT_ID').AsInteger := Rec[i].DataValues[KeyField, dvvValueEh];
                    (Data_Dc_Aprvl_Lst_Links.DataSet).FieldByName('P_DOC_ROUT_POINT_ID').AsInteger := Rec[RecIndex].DataValues[KeyField, dvvValueEh];
                  end;
                  (Data_Dc_Aprvl_Lst_Links.DataSet).Post;
                end;
              end;
              Db_Doc_PrevPointNodes.Next;
            end;

            if not MoveToNextNode
            then
            begin
              Inc(RecLevel);
              Db_Doc_PrevPointNodes.SetVariable(2,RecLevel);
              Db_Doc_PrevPointNodes.Refresh;
              if Db_Doc_PrevPointNodes.IsEmpty
              then
                Break;
            end;
          until MoveToNextNode;
        End;
      End;
    Finally
      EnableControls;
    End;
  End;
end;

procedure TForm_Main_Dc_Aprvl_L.P_Delete_PointLinks(MemRec: TMemoryRecordEh);
  Var I:Integer;
begin
  With Data_Dc_Aprvl_Lst_Links.DataSet as TOracleDataSet
  Do
  Begin
    DisableControls;
    Try
      First;
      For I := 1 to RecordCount
      Do
      Begin
        If (FieldByName('DC_RT_US_PNT_ID').AsVariant = MemRec.DataValues['ID_DC_RT_US_PNT', dvvValueEh])
            Or (FieldByName('DC_RT_US_PNT_NXT_ID').AsVariant = MemRec.DataValues['ID_DC_RT_US_PNT', dvvValueEh])
        Then
        Begin
          Delete;
        End;
        Next;
      End;
    Finally
      EnableControls;
    End;
  End;
end;

procedure TForm_Main_Dc_Aprvl_L.Tm_checkTimer(Sender: TObject);
Var I: Integer;
begin
 If DM_Main.Vg_Booted = True Then
  begin
    Tm_check.Enabled := False;
  end
  Else
    Exit;
end;

end.
