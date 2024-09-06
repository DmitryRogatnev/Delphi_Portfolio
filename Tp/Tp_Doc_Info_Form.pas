unit Tp_Doc_Info_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh, Oracle, Data.DB, OracleData,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh,
  Tp_Tech_Proc_Form, DBLookupEh, MemTableDataEh, MemTableEh, DBVertGridsEh, MaskUtils,
  Vcl.Menus, DataDriverEh, Vcl.ExtCtrls,Tp_Main_Form, Udm_Main, Dc_Aprvl_Lst_Main_Form, Vcl.ComCtrls;

type
  TForm_Doc_Info = class(TForm)
    Btn_Cancel: TButton;
    Btn_Create: TButton;
    PKG_TP_DOC: TOraclePackage;
    SimpleSQL: TOracleDataSet;
    Db_Appr_List: TOracleDataSet;
    DATA_APPR_LIST: TDataSource;
    Db_Appr_ListID: TFloatField;
    Db_Appr_ListID_TP_DOC: TFloatField;
    Db_Appr_ListCEH_ID: TFloatField;
    Db_Appr_ListAPPR_STEP_NUM: TStringField;
    Db_Appr_ListAPPR_STEP_NAME: TStringField;
    Db_Appr_ListFLAG_USE: TFloatField;
    Db_Appr_ListCEH_CODE: TStringField;
    LCB_Doc_Type: TDBLookupComboboxEh;
    Db_Liter_Types: TOracleDataSet;
    Data_Liter_Types: TDataSource;
    Db_Doc_Type: TOracleDataSet;
    Data_Doc_Type: TDataSource;
    Db_Doc_Info: TOracleDataSet;
    Data_Doc_Info: TDataSource;
    Grid_Info: TDBVertGridEh;
    Db_Tp_Type: TOracleDataSet;
    Data_Tp_Type: TDataSource;
    Db_Tp_TypeTP_TYPE: TStringField;
    Db_Tp_TypeTYPE_NUMBER: TFloatField;
    Db_Flag_Imp_Names: TOracleDataSet;
    Data_Flag_Imp_Names: TDataSource;
    Seq_Id_Doc_Header: TOracleQuery;
    Seq_Main_Doc_Id: TOracleQuery;
    Db_Appr_ListGROUP_ID: TFloatField;
    Db_Appr_ListGR_DEP_ID: TIntegerField;
    Db_Old_Version: TOracleDataSet;
    Db_Old_VersionID: TFloatField;
    Db_Old_VersionID_VERS: TIntegerField;
    Db_Old_VersionID_DOC_FULL: TStringField;
    Db_Old_VersionDOC_NUM: TStringField;
    Db_Old_VersionDATE_START_ACTION: TDateTimeField;
    Db_Old_VersionDATE_END_ACTION: TDateTimeField;
    Db_Old_VersionDOC_LITER: TStringField;
    Db_Old_VersionDOC_TYPE: TFloatField;
    Db_Old_VersionTP_NUM: TStringField;
    Db_Old_VersionTP_NAME: TStringField;
    Db_Old_VersionTP_WORK_TYPE: TFloatField;
    Db_Old_VersionTP_WORK_TYPE_NAME: TStringField;
    Db_Old_VersionIZD_ID: TFloatField;
    Db_Old_VersionIZD_NAME: TStringField;
    Db_Old_VersionIZD_TYPE: TStringField;
    Db_Old_VersionCOMPLECT_ID: TFloatField;
    Db_Old_VersionTP_TYPE: TFloatField;
    Db_Old_VersionFLAG_IMP: TFloatField;
    Db_Old_VersionDET_ID: TFloatField;
    Db_Old_VersionDET_NUM: TStringField;
    Db_Old_VersionDET_NAME: TStringField;
    Db_Old_VersionDET_MAR: TStringField;
    Db_Old_VersionCEH_ID: TFloatField;
    Db_Old_VersionCEH_CODE: TStringField;
    Db_Old_VersionAUTHOR_LNUM: TFloatField;
    Db_Old_VersionAUTHOR_NAME: TStringField;
    Db_Old_VersionDATA_REG: TDateTimeField;
    Db_Old_VersionREASON: TStringField;
    Db_Old_VersionCANCEL_DOC_ID: TFloatField;
    Db_Old_VersionMAIN_DOC_ID: TFloatField;
    Db_Old_VersionCANCEL_FLAG: TFloatField;
    Db_Old_VersionCEH_DOCS_FLAG: TFloatField;
    Db_Old_VersionACT_NUM: TFloatField;
    Db_Old_VersionACT_DATE: TDateTimeField;
    Db_Old_VersionDOC_HEADER_ID: TFloatField;
    Db_Old_VersionEMPS_ID: TStringField;
    Db_Old_VersionPROJECT_FLAG: TIntegerField;
    Q_Get_New_Vers_Id: TOracleQuery;
    Db_Doc_InfoID: TFloatField;
    Db_Doc_InfoID_VERS: TIntegerField;
    Db_Doc_InfoID_DOC_FULL: TStringField;
    Db_Doc_InfoDOC_NUM: TStringField;
    Db_Doc_InfoDATE_START_ACTION: TDateTimeField;
    Db_Doc_InfoDATE_END_ACTION: TDateTimeField;
    Db_Doc_InfoDET_ID: TFloatField;
    Db_Doc_InfoDET_NUM: TStringField;
    Db_Doc_InfoDET_NAME: TStringField;
    Db_Doc_InfoCEH_ID: TFloatField;
    Db_Doc_InfoCEH_CODE: TStringField;
    Db_Doc_InfoAUTHOR_LNUM: TFloatField;
    Db_Doc_InfoAUTHOR_NAME: TStringField;
    Db_Doc_InfoDATA_REG: TDateTimeField;
    Db_Doc_InfoDATA_CHANGE: TDateTimeField;
    Db_Doc_InfoREASON: TStringField;
    Db_Doc_InfoCANCEL_DOC_ID: TFloatField;
    Db_Doc_InfoMAIN_DOC_ID: TFloatField;
    Db_Doc_InfoCANCEL_FLAG: TFloatField;
    Db_Doc_InfoCEH_DOCS_FLAG: TFloatField;
    Db_Doc_InfoDET_MAR: TStringField;
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
    Db_Doc_InfoFLAG_IMP_NAME: TStringField;
    Db_Doc_InfoACT_NUM: TFloatField;
    Db_Doc_InfoACT_DATE: TDateTimeField;
    Db_Doc_InfoDOC_HEADER_ID: TFloatField;
    Db_Doc_InfoEMPS_ID: TStringField;
    Db_Doc_InfoPROJECT_FLAG: TIntegerField;
    Db_Doc_InfoID_DOC_HEADER: TIntegerField;
    Db_Doc_InfoDOC_TYPE_ID: TStringField;
    Db_Doc_InfoDOC_DATE: TDateTimeField;
    Db_Doc_InfoDOC_NUMBER: TStringField;
    Db_Doc_InfoCLMN1_VALUE: TStringField;
    Db_Doc_InfoCLMN2_VALUE: TStringField;
    Db_Doc_InfoCLMN3_VALUE: TStringField;
    Db_Doc_InfoCREATE_USER_ID: TStringField;
    Db_Doc_InfoCREATE_USER_ID_ADD: TIntegerField;
    Db_Doc_InfoCREATE_DATE: TDateTimeField;
    Db_Doc_InfoLAST_MOD_USER_ID: TStringField;
    Db_Doc_InfoLAST_MOD_USER_ID_ADD: TIntegerField;
    Db_Doc_InfoLAST_MOD_DATE: TDateTimeField;
    Db_Doc_InfoSRC_DEP_ID: TIntegerField;
    Db_Doc_InfoSNDR_DEP_ID: TIntegerField;
    Db_Doc_InfoMAIN_DOC_NUM: TStringField;
    Db_Doc_InfoCANCEL_DOC_NUM: TStringField;
    Db_Doc_InfoPARENT_DOC_ID: TIntegerField;
    Db_Old_VersionPARENT_DOC_ID: TIntegerField;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Grid_Dc_Pnt_Var: TDBGridEh;
    Db_Doc_InfoDATE_START_ROUTE: TDateTimeField;
    Pkg_Doc: TOraclePackage;
    Db_Doc_Aprvl_List_Var_Unchsn: TOracleDataSet;
    Db_Doc_Aprvl_List_Var_UnchsnSTP_DC_RT_PNT_POS_ID: TFloatField;
    Db_Doc_Aprvl_List_Var_UnchsnPOINT_NAME: TStringField;
    Db_Doc_Aprvl_List_Var_UnchsnPOS_STATE: TStringField;
    Db_Doc_Aprvl_List_Var_UnchsnPOS_RW_NUM: TIntegerField;
    Db_Doc_Aprvl_List_Var_UnchsnSTP_DOC_ROUT_POINT_ID: TIntegerField;
    Db_Doc_Aprvl_List_Var_UnchsnDEP_ID: TIntegerField;
    Db_Doc_Aprvl_List_Var_UnchsnCHOSE_STATE: TStringField;
    Db_Doc_Aprvl_List_Var_UnchsnDEP_CODE: TStringField;
    Db_Doc_Aprvl_List_Var_UnchsnDEP_SNAME: TStringField;
    Db_Doc_Aprvl_List_Var_UnchsnDEP_NAME: TStringField;
    Db_Doc_Aprvl_List_Var_UnchsnCONNECT_W_PNT_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_Var: TOracleDataSet;
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
    Db_Dc_Aprvl_Lst_VarCHOSE_STATE: TStringField;
    Db_Dc_Aprvl_Lst_VarPOINT_EXPIRATION: TIntegerField;
    Db_Dc_Aprvl_Lst_VarDEP_CODE: TStringField;
    Db_Dc_Aprvl_Lst_VarDEP_SNAME: TStringField;
    Db_Dc_Aprvl_Lst_VarCONNECT_W_PNT_ID: TIntegerField;
    Driver_Dc_Aprvl_Lst_Var: TDataSetDriverEh;
    MemT_Dc_Aprvl_Lst_Var: TMemTableEh;
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
    MemT_Dc_Aprvl_Lst_VarCHOSE_STATE: TStringField;
    MemT_Dc_Aprvl_Lst_VarDEP_CODE: TStringField;
    MemT_Dc_Aprvl_Lst_VarDEP_SNAME: TStringField;
    MemT_Dc_Aprvl_Lst_VarCONNECT_W_PNT_ID: TIntegerField;
    Db_Doc_Aprvl_List_Var_Chsn: TOracleDataSet;
    Db_Doc_Aprvl_List_Var_ChsnSTP_DC_RT_PNT_POS_ID: TFloatField;
    Db_Doc_Aprvl_List_Var_ChsnPOINT_NAME: TStringField;
    Db_Doc_Aprvl_List_Var_ChsnSTP_DOC_ROUT_POINT_ID: TIntegerField;
    Db_Doc_Aprvl_List_Var_ChsnPOS_STATE: TStringField;
    Db_Doc_Aprvl_List_Var_ChsnPOS_RW_NUM: TIntegerField;
    Db_Doc_Aprvl_List_Var_ChsnDEP_ID: TIntegerField;
    Db_Doc_Aprvl_List_Var_ChsnCHOSE_STATE: TStringField;
    Db_Doc_Aprvl_List_Var_ChsnDEP_CODE: TStringField;
    Db_Doc_Aprvl_List_Var_ChsnDEP_SNAME: TStringField;
    Db_Doc_Aprvl_List_Var_ChsnDEP_NAME: TStringField;
    Db_Doc_Aprvl_List_Var_ChsnCONNECT_W_PNT_ID: TIntegerField;
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
    Data_Dc_Aprvl_Lst_Deps: TDataSource;
    Db_Dc_Aprvl_Lst: TOracleDataSet;
    Db_Dc_Aprvl_LstID_DC_RT_US_PNT: TIntegerField;
    Db_Dc_Aprvl_LstDOC_HEADER_ID: TIntegerField;
    Db_Dc_Aprvl_LstDOC_TYPE_ID: TStringField;
    Db_Dc_Aprvl_LstDOC_NUMBER: TStringField;
    Db_Dc_Aprvl_LstDOC_DATE: TDateTimeField;
    Db_Dc_Aprvl_LstPOINT_POSITION: TStringField;
    Db_Dc_Aprvl_LstPOINT_EXPIRATION: TIntegerField;
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
    Db_Dc_Aprvl_LstDEP_CODE: TStringField;
    Db_Dc_Aprvl_LstDEP_SNAME: TStringField;
    Db_Dc_Aprvl_LstCONNECT_W_PNT_ID: TIntegerField;
    Driver_Dc_Aprvl_Lst: TDataSetDriverEh;
    MemT_Dc_Aprvl_Lst: TMemTableEh;
    MemT_Dc_Aprvl_LstID_DC_RT_US_PNT: TIntegerField;
    MemT_Dc_Aprvl_LstDOC_HEADER_ID: TIntegerField;
    MemT_Dc_Aprvl_LstDOC_TYPE_ID: TStringField;
    MemT_Dc_Aprvl_LstDOC_NUMBER: TStringField;
    MemT_Dc_Aprvl_LstDOC_DATE: TDateTimeField;
    MemT_Dc_Aprvl_LstPOINT_POSITION: TStringField;
    MemT_Dc_Aprvl_LstPOINT_EXPIRATION: TIntegerField;
    MemT_Dc_Aprvl_LstPOINT_NAME: TStringField;
    MemT_Dc_Aprvl_LstSTP_DOC_ROUT_POINT_ID: TIntegerField;
    MemT_Dc_Aprvl_LstSTP_DC_RT_PNT_POS_ID: TIntegerField;
    MemT_Dc_Aprvl_LstCHOSE_STATE: TStringField;
    MemT_Dc_Aprvl_LstDEP_ID: TIntegerField;
    MemT_Dc_Aprvl_LstPOS_RW_NUM: TIntegerField;
    MemT_Dc_Aprvl_LstPOS_STATE: TStringField;
    MemT_Dc_Aprvl_LstUSER_INSERT: TStringField;
    MemT_Dc_Aprvl_LstDATE_INSERT: TDateTimeField;
    MemT_Dc_Aprvl_LstUSER_CHANGE: TStringField;
    MemT_Dc_Aprvl_LstDATE_CHANGE: TDateTimeField;
    MemT_Dc_Aprvl_LstDEP_CODE: TStringField;
    MemT_Dc_Aprvl_LstDEP_SNAME: TStringField;
    MemT_Dc_Aprvl_LstCONNECT_W_PNT_ID: TIntegerField;
    Data_Dc_Aprvl_Lst: TDataSource;
    Db_Dc_Aprvl_Lst_Links: TOracleDataSet;
    Db_Dc_Aprvl_Lst_LinksID_DC_RT_US_PNT_LNK: TIntegerField;
    Db_Dc_Aprvl_Lst_LinksDOC_HEADER_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_LinksDOC_TYPE_ID: TStringField;
    Db_Dc_Aprvl_Lst_LinksDOC_NUMBER: TStringField;
    Db_Dc_Aprvl_Lst_LinksDOC_DATE: TDateTimeField;
    Db_Dc_Aprvl_Lst_LinksDC_RT_US_PNT_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_LinksDC_RT_US_PNT_NXT_ID: TIntegerField;
    Data_Dc_Aprvl_Lst_Links: TDataSource;
    Data_Dc_Aprvl_Lst_Var: TDataSource;
    Db_Dc_Rout_Points: TOracleDataSet;
    Db_Dc_Rout_PointsID_DOC_ROUT_POINT: TIntegerField;
    Db_Dc_Rout_PointsDOC_ROUT_ID: TIntegerField;
    Db_Dc_Rout_PointsSTP_DOC_ROUT_POINT_ID: TIntegerField;
    Db_Dc_Rout_PointsDEP_CODE: TStringField;
    Db_Dc_Rout_PointsDEP_SNAME: TStringField;
    Db_Dc_Rout_PointsPOINT_POSITION: TStringField;
    Db_Dc_Rout_PointsPOINT_NAME: TStringField;
    Db_Dc_Rout_PointsPOS_STATE: TStringField;
    Db_Dc_Rout_PointsCHOSE_STATE: TStringField;
    Db_Dc_Rout_PointsSTP_DC_RT_PNT_POS_ID: TFloatField;
    Db_Dc_Rout_PointsCONNECT_W_PNT_ID: TIntegerField;
    Db_Dc_Rout_PointsDEP_ID: TIntegerField;
    Db_Dc_Rout_Point_Pstn_Dep: TOracleDataSet;
    Db_Dc_Rout_Point_Pstn_DepID_DOC_ROUT_POINT_PSTN_D: TFloatField;
    Db_Dc_Rout_Point_Pstn_DepDOC_ROUT_POINT_PSTN_ID: TFloatField;
    Db_Dc_Rout_Point_Pstn_DepDEP_ID: TIntegerField;
    Db_Dc_Rout_Point_Pstn_DepSTP_DOC_ROUT_POINT_PSTN_D_ID: TIntegerField;
    Driver_Dc_Rout_Points: TDataSetDriverEh;
    MemT_Dc_Rout_Points: TMemTableEh;
    Db_Dc_Rout_Point_Cnnctns: TOracleDataSet;
    Db_Dc_Rout_Point_CnnctnsP_DOC_ROUT_POINT_ID: TIntegerField;
    Db_Dc_Rout_Point_CnnctnsC_DOC_ROUT_POINT_ID: TIntegerField;
    Db_Dc_Rout_Point_CnnctnsDOC_ROUT_ID: TIntegerField;
    Db_Dc_Rout_Point_CnnctnsDC_RT_US_PNT_ID: TIntegerField;
    Db_Dc_Rout_Point_CnnctnsDC_RT_US_PNT_NXT_ID: TIntegerField;
    Db_Dc_Rout_Point_Pstns: TOracleDataSet;
    Db_Dc_Rout_Point_PstnsID_DOC_ROUT_POINT_PSTN: TFloatField;
    Db_Dc_Rout_Point_PstnsDEP_MMBR_PSTN_ID: TFloatField;
    Db_Dc_Rout_Point_PstnsDOC_ROUT_POINT_ID: TFloatField;
    Db_Dc_Rout_Point_PstnsSTP_DOC_ROUT_POINT_PSTN_ID: TIntegerField;
    MemT_Dc_Rout_Points_Var: TMemTableEh;
    Driver_Dc_Rout_Points_Var: TDataSetDriverEh;
    Db_Dc_Rout_Points_Var: TOracleDataSet;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    FloatField4: TFloatField;
    IntegerField9: TIntegerField;
    Db_Dc_Rout_Points_VarDEP_ID: TIntegerField;
    MemT_Dc_Rout_PointsID_DOC_ROUT_POINT: TIntegerField;
    MemT_Dc_Rout_PointsDOC_ROUT_ID: TIntegerField;
    MemT_Dc_Rout_PointsSTP_DOC_ROUT_POINT_ID: TIntegerField;
    MemT_Dc_Rout_PointsDEP_CODE: TStringField;
    MemT_Dc_Rout_PointsDEP_SNAME: TStringField;
    MemT_Dc_Rout_PointsPOINT_POSITION: TStringField;
    MemT_Dc_Rout_PointsPOINT_NAME: TStringField;
    MemT_Dc_Rout_PointsPOS_STATE: TStringField;
    MemT_Dc_Rout_PointsCHOSE_STATE: TStringField;
    MemT_Dc_Rout_PointsSTP_DC_RT_PNT_POS_ID: TFloatField;
    MemT_Dc_Rout_PointsCONNECT_W_PNT_ID: TIntegerField;
    MemT_Dc_Rout_PointsDEP_ID: TIntegerField;
    Panel1: TPanel;
    C1: TMenuItem;
    N2: TMenuItem;
    Splitter1: TSplitter;
    Db_Doc_Aprvl_List_Var_Internal: TOracleDataSet;
    FloatField1: TFloatField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    IntegerField12: TIntegerField;
    Db_Dc_Rout_PointsPOS_RW_NUM: TIntegerField;
    MemT_Dc_Rout_PointsPOS_RW_NUM: TIntegerField;
    Db_Dc_Rout_Points_VarPOS_RW_NUM: TIntegerField;
    Db_Dc_Rout_Point_Pstn_User: TOracleDataSet;
    Db_Dc_Rout_Point_Pstn_UserID_DOC_ROUT_POINT_PSTN_U: TFloatField;
    Db_Dc_Rout_Point_Pstn_UserDOC_ROUT_POINT_PSTN_ID: TFloatField;
    Db_Dc_Rout_Point_Pstn_UserUSER_ID: TStringField;
    Db_Dc_Rout_Point_Pstn_UserSTP_DOC_ROUT_POINT_PSTN_U_ID: TIntegerField;
    Db_Dc_Aprvl_LstUSER_ID: TStringField;
    MemT_Dc_Aprvl_LstUSER_ID: TStringField;
    Db_Dc_Aprvl_Lst_VarUSER_ID: TStringField;
    MemT_Dc_Aprvl_Lst_VarUSER_ID: TStringField;
    Db_Dc_Aprvl_Lst_Usrs: TOracleDataSet;
    Db_Dc_Aprvl_Lst_UsrsID_DC_RT_US_PNT_USR: TFloatField;
    Db_Dc_Aprvl_Lst_UsrsDOC_HEADER_ID: TIntegerField;
    Db_Dc_Aprvl_Lst_UsrsDC_RT_US_PNT_ID: TFloatField;
    Db_Dc_Aprvl_Lst_UsrsUSER_ID: TStringField;
    Db_Dc_Aprvl_Lst_UsrsUSER_INSERT: TStringField;
    Db_Dc_Aprvl_Lst_UsrsDATE_INSERT: TDateTimeField;
    Db_Dc_Aprvl_Lst_UsrsUSER_CHANGE: TStringField;
    Db_Dc_Aprvl_Lst_UsrsDATE_CHANGE: TDateTimeField;
    Db_Dc_Rout_Point_Rslts: TOracleDataSet;
    Db_Dc_Rout_Point_RsltsID_DOC_ROUT_POINT_RSLT: TFloatField;
    Db_Dc_Rout_Point_RsltsDOC_ROUT_POINT_ID: TFloatField;
    Db_Dc_Rout_Point_RsltsSTP_DOC_RESOLUTION_RESULT_ID: TIntegerField;
    Db_Dc_Rout_Point_RsltsSTP_DOC_ROUT_POINT_RSLT_ID: TIntegerField;
    Db_Dc_Rout_Points_VarUSER_ID: TStringField;
    Db_Dc_Rout_PointsUSER_ID: TStringField;
    MemT_Dc_Rout_PointsUSER_ID: TStringField;
    MemT_Dc_Rout_Points_VarID_DOC_ROUT_POINT: TIntegerField;
    MemT_Dc_Rout_Points_VarDOC_ROUT_ID: TIntegerField;
    MemT_Dc_Rout_Points_VarSTP_DOC_ROUT_POINT_ID: TIntegerField;
    MemT_Dc_Rout_Points_VarDEP_CODE: TStringField;
    MemT_Dc_Rout_Points_VarDEP_SNAME: TStringField;
    MemT_Dc_Rout_Points_VarPOINT_POSITION: TStringField;
    MemT_Dc_Rout_Points_VarPOINT_NAME: TStringField;
    MemT_Dc_Rout_Points_VarPOS_STATE: TStringField;
    MemT_Dc_Rout_Points_VarCHOSE_STATE: TStringField;
    MemT_Dc_Rout_Points_VarSTP_DC_RT_PNT_POS_ID: TFloatField;
    MemT_Dc_Rout_Points_VarCONNECT_W_PNT_ID: TIntegerField;
    MemT_Dc_Rout_Points_VarDEP_ID: TIntegerField;
    MemT_Dc_Rout_Points_VarPOS_RW_NUM: TIntegerField;
    MemT_Dc_Rout_Points_VarUSER_ID: TStringField;
    Db_Doc_Aprvl_List_Var_InternalUSER_ID: TStringField;
    Db_Doc_TypeID_TP_DOC_TYPE: TIntegerField;
    Db_Doc_TypeTP_DOC_TYPE_NAME: TStringField;
    Db_Doc_TypeTASK_ID: TIntegerField;
    Db_Doc_TypeFRAME_CLASS: TStringField;
    Db_Type_Clmns: TOracleDataSet;
    Db_Type_ClmnsID_CLMN: TIntegerField;
    Db_Type_ClmnsTP_DOC_TYPE_ID: TIntegerField;
    Db_Type_ClmnsCOLUMN_NAME: TStringField;
    Db_Type_ClmnsVIEW_STATE: TStringField;
    Data_Type_Clmns: TDataSource;
    procedure Btn_CancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_CreateClick(Sender: TObject);
    procedure LCB_Doc_TypeKeyValueChanged(Sender: TObject);
    procedure DBVertGridEh1Rows2UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBVertGridEh1Rows4UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DbGrid_InfoRows10UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DbGrid_InfoRows6UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DbGrid_InfoRows5UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DbGrid_InfoRows1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DbGrid_InfoRows10OpenDropDownForm(Grid: TCustomDBVertGridEh;
      Column: TFieldRowEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure DbGrid_InfoRows10CloseDropDownForm(Grid: TCustomDBVertGridEh;
      Column: TFieldRowEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Db_Doc_InfoNewRecord(DataSet: TDataSet);
    procedure DbGrid_InfoRows11UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DbGrid_InfoRows2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DbGrid_InfoRows8UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DbGrid_InfoRows4UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DbGrid_InfoRows7EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure N1Click(Sender: TObject);
    procedure Grid_Dc_Pnt_VarSelectionChanged(Sender: TObject);
    procedure Grid_Dc_Pnt_VarGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Db_Dc_Rout_Point_PstnsAfterScroll(DataSet: TDataSet);
    procedure Db_Dc_Rout_Point_CnnctnsNewRecord(DataSet: TDataSet);
    procedure Db_Dc_Rout_Point_CnnctnsAfterEdit(DataSet: TDataSet);
    procedure Db_Dc_Aprvl_Lst_LinksNewRecord(DataSet: TDataSet);
    procedure Db_Dc_Aprvl_Lst_DepsNewRecord(DataSet: TDataSet);
    procedure Db_Doc_Aprvl_List_Var_ChsnAfterRefresh(DataSet: TDataSet);
    procedure MemT_Dc_Aprvl_LstAfterOpen(DataSet: TDataSet);
    procedure MemT_Dc_Aprvl_LstAfterScroll(DataSet: TDataSet);
    procedure MemT_Dc_Aprvl_LstBeforeDelete(DataSet: TDataSet);
    procedure MemT_Dc_Aprvl_LstNewRecord(DataSet: TDataSet);
    procedure MemT_Dc_Aprvl_Lst_VarAfterOpen(DataSet: TDataSet);
    procedure MemT_Dc_Rout_PointsAfterScroll(DataSet: TDataSet);
    procedure MemT_Dc_Rout_PointsNewRecord(DataSet: TDataSet);
    procedure Grid_InfoAdvDrawDataCell(Sender: TCustomDBVertGridEh; Cell,
      AreaCell: TGridCoord; Row: TFieldRowEh; const ARect: TRect;
      var Params: TRowCellParamsEh; var Processed: Boolean);
    procedure Db_Appr_ListAfterRefresh(DataSet: TDataSet);
    procedure Db_Type_ClmnsAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    FSelectingUpdated: Boolean;
    FInternalSelection: Boolean;
    FDocHeaderId, FDocId: Integer;
    FDocViewState: TDocInfoEditStates;
    FApprForm: TForm_Main_Dc_Aprvl_L;
  public
    { Public declarations }
    CloseWithOutSaving: Bool;

    property DocId: Integer read FDocId write FDocId;

    Procedure Grid_Dc_Pnt_VarSelectedRowsItemChanged(Sender: TCustomDBGridEh; Item: TUniBookmarkEh; Action: TListNotification);
    Procedure Grid_Dc_Aprvl_LstSelectedRowsItemChanged(Sender: TCustomDBGridEh; Item: TUniBookmarkEh; Action: TListNotification);

    Type
      TStringArray = Array Of String;
    Type
      TArrayOfArrayString = Array Of Array Of String;


    /// <summary> Очистка списка согласования</summary>
    procedure Clear_Appr_List;
    Procedure P_Change_Edit_Param;

    Procedure P_Apply_Det( Vl_Det_Params: TDynVarsEh );
    Function F_Copy_Arr( Parent_Arr: TArrayOfArrayString): TArrayOfArrayString;
    Procedure P_CopyOldVersion;
    constructor Create(AOwner: TComponent; InDocHeaderId: Integer; DocViewState: TDocInfoEditStates);
  end;

var
  Form_Doc_Info: TForm_Doc_Info;

implementation

{$R *.dfm}

Uses
 Tp_Data_Mode;

procedure TForm_Doc_Info.Btn_CancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_Doc_Info.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not CloseWithOutSaving
  then
    Btn_CreateClick( Btn_Cancel );
end;

procedure TForm_Doc_Info.FormCreate(Sender: TObject);
begin
  CloseWithOutSaving := False;
end;

procedure TForm_Doc_Info.FormShow(Sender: TObject);
var
  I: Integer;
begin
  If FDocViewState=dsUpdate
  Then
    PKG_TP_DOC.CallProcedure( 'P_Get_Doc_Appr_List', [ FDocHeaderId ] );


  {if Form_Tech_Proc_Main.User_Admin
  then
    N1.Visible := True
  else
    N1.Visible := False;}
  Db_Liter_Types.Active:= True;
  Db_Tp_Type.Active:= True;
  Db_Doc_Type.Active:= True;
  if FDocViewState<>dsNewModif
  then
    Db_Doc_Info.SetVariable(0,FDocHeaderId)
  else
    Db_Doc_Info.SetVariable(0,0);
  Db_Doc_Info.Active:=True;
  Db_Type_Clmns.SetVariable(0, Db_Doc_InfoDOC_TYPE.AsInteger);
  Db_Type_Clmns.Active :=True;
  Db_Flag_Imp_Names.Active:=True;
  DB_APPR_LIST.Active:=True;

  Self.Grid_Dc_Pnt_Var.DataSource := FApprForm.Grid_Dc_Pnt_Var.DataSource;

  if Db_Doc_Info.FieldByName('Date_Start_Route').IsNull
  then
  begin
    FApprForm.Data_Dc_Aprvl_Lst.DataSet := MemT_Dc_Aprvl_Lst;
    FApprForm.Data_Dc_Aprvl_Lst_Var.DataSet := MemT_Dc_Aprvl_Lst_Var;
    FApprForm.Data_Dc_Aprvl_Lst_Deps.DataSet := Db_Dc_Aprvl_Lst_Deps;
    FApprForm.Data_Dc_Aprvl_Lst_Users.DataSet := Db_Dc_Aprvl_Lst_Usrs;
    FApprForm.Data_Dc_Aprvl_Lst_Links.DataSet := Db_Dc_Aprvl_Lst_Links;
  end
  else
  begin
    FApprForm.Data_Dc_Aprvl_Lst.DataSet := MemT_Dc_Rout_Points;
    FApprForm.Data_Dc_Aprvl_Lst_Var.DataSet := MemT_Dc_Rout_Points_Var;
    FApprForm.Data_Dc_Aprvl_Lst_Deps.DataSet := Db_Dc_Rout_Point_Pstn_Dep;
    FApprForm.Data_Dc_Aprvl_Lst_Links.DataSet := Db_Dc_Rout_Point_Cnnctns;
    FApprForm.Data_Dc_Rout_Point_Pstns.DataSet := Db_Dc_Rout_Point_Pstns;
    FApprForm.Data_Dc_Aprvl_Lst_Users.DataSet := Db_Dc_Rout_Point_Pstn_User;
    FApprForm.Data_Dc_Aprvl_Lst_Results.DataSet := Db_Dc_Rout_Point_Rslts;
  end;

  if FDocViewState=dsInternalSign
  then
  begin
    Db_Dc_Rout_Points_Var.SetVariable('Internal', 1);
    FApprForm.ChosenPointsSet := Db_Doc_Aprvl_List_Var_Internal;
    Db_Doc_Aprvl_List_Var_Internal.Active:=True;
  end
  else
  begin
    Db_Dc_Rout_Points_Var.SetVariable('Internal', 0);
    FApprForm.ChosenPointsSet := Db_Doc_Aprvl_List_Var_Chsn;
    Db_Doc_Aprvl_List_Var_Chsn.SetVariable('Doc_Type_Id', Db_Doc_InfoDOC_TYPE.AsString);
    if Db_Doc_InfoMAIN_DOC_ID.AsString = ''
    then
      Db_Doc_Aprvl_List_Var_Chsn.SetVariable('Main_Doc_Id', Db_Doc_InfoID.AsString)
    else
      Db_Doc_Aprvl_List_Var_Chsn.SetVariable('Main_Doc_Id', Db_Doc_InfoMAIN_DOC_ID.AsString);
    Db_Doc_Aprvl_List_Var_Chsn.Active:=True;
  end;

  FApprForm.UnchosenPointsSet := Db_Doc_Aprvl_List_Var_Unchsn;
  Db_Doc_Aprvl_List_Var_Unchsn.SetVariable('Doc_Type_Id', Db_Doc_InfoDOC_TYPE.AsString);
  Db_Doc_Aprvl_List_Var_Unchsn.Active:=True;

  if Db_Doc_Info.FieldByName('Date_Start_Route').IsNull
  then
  begin
    Db_Dc_Aprvl_Lst_Var.SetVariable('Doc_Header_Id', Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    MemT_Dc_Aprvl_Lst_Var.Active:=True;
    Db_Dc_Aprvl_Lst.SetVariable('Doc_Header_Id', Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    MemT_Dc_Aprvl_Lst.Active:=True;
    Db_Dc_Aprvl_Lst_Deps.SetVariable(0, Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    Db_Dc_Aprvl_Lst_Deps.Active:=True;
    Db_Dc_Aprvl_Lst_Usrs.SetVariable(0, Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    Db_Dc_Aprvl_Lst_Usrs.Active:=True;
    Db_Dc_Aprvl_Lst_Links.SetVariable('Doc_Header_Id', Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    Db_Dc_Aprvl_Lst_Links.Active:=True;
  end
  else
  begin
    Db_Dc_Rout_Points.SetVariable('Doc_Header_Id', Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    MemT_Dc_Rout_Points.Active:=True;
    Db_Dc_Rout_Points_Var.SetVariable('Doc_Header_Id', Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    MemT_Dc_Rout_Points_Var.Active:=True;
    Db_Dc_Rout_Point_Cnnctns.SetVariable('Doc_Header_Id', Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    Db_Dc_Rout_Point_Cnnctns.Active:=True;
    Db_Dc_Rout_Point_Pstns.SetVariable(0, Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    Db_Dc_Rout_Point_Pstns.Active:=True;
    Db_Dc_Rout_Point_Pstn_Dep.SetVariable(0, Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    Db_Dc_Rout_Point_Pstn_Dep.Active:=True;
    Db_Dc_Rout_Point_Pstn_User.SetVariable(0, Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    Db_Dc_Rout_Point_Pstn_User.Active:=True;
    Db_Dc_Rout_Point_Rslts.SetVariable(0, Db_Doc_Info.FieldByName('Doc_Header_Id').AsString);
    Db_Dc_Rout_Point_Rslts.Active:=True;
  end;

  With FApprForm
  Do
  Begin
    ChosenPointsSet.DisableControls;
    Data_Dc_Aprvl_Lst_Var.DataSet.DisableControls;
    Try
      ChosenPointsSet.First;
      For I := 0 to ChosenPointsSet.RecordCount - 1
      Do
      Begin
        if VarToStr(Data_Dc_Aprvl_Lst_Var.DataSet.Lookup('STP_DC_RT_PNT_POS_ID', ChosenPointsSet.FieldByName( 'STP_DC_RT_PNT_POS_ID' ).AsVariant, 'STP_DC_RT_PNT_POS_ID')) = ''
        Then
        Begin
          Data_Dc_Aprvl_Lst_Var.DataSet.Append;
          Data_Dc_Aprvl_Lst_Var.DataSet.CopyFields( ChosenPointsSet );
          Data_Dc_Aprvl_Lst_Var.DataSet.Post;
        End;
        ChosenPointsSet.Next;
      End;
    Finally
      ChosenPointsSet.EnableControls;
      Data_Dc_Aprvl_Lst_Var.DataSet.EnableControls;
    End;
  End;

  //Загрузка не выбираемых значений
  With FApprForm
  Do
  Begin
    UnchosenPointsSet.DisableControls;
    Data_Dc_Aprvl_Lst.DataSet.DisableControls;
    Try
      UnchosenPointsSet.First;
      For I := 0 to UnchosenPointsSet.RecordCount - 1
      Do
      Begin
        if VarToStr(Data_Dc_Aprvl_Lst.DataSet.Lookup('STP_DC_RT_PNT_POS_ID', UnchosenPointsSet.FieldByName( 'STP_DC_RT_PNT_POS_ID' ).AsVariant, 'STP_DC_RT_PNT_POS_ID')) = ''
        Then
        Begin
          Data_Dc_Aprvl_Lst.DataSet.Append;
          Data_Dc_Aprvl_Lst.DataSet.CopyFields( UnchosenPointsSet );
          if Data_Dc_Aprvl_Lst.DataSet.FindField('ID_DC_RT_US_PNT')<>Nil
          then
            Data_Dc_Aprvl_Lst.DataSet.FieldByName('ID_DC_RT_US_PNT').AsInteger := FApprForm.F_NextSeqNumber(FApprForm.Data_Dc_Aprvl_Lst_Var.DataSet)
          else if Data_Dc_Aprvl_Lst.DataSet.FindField('ID_DOC_ROUT_POINT')<>Nil
          then
            Data_Dc_Aprvl_Lst.DataSet.FieldByName('ID_DOC_ROUT_POINT').AsInteger := FApprForm.F_NextSeqNumber(FApprForm.Data_Dc_Aprvl_Lst_Var.DataSet);
          if Data_Dc_Aprvl_Lst.DataSet.FindField('DOC_HEADER_ID')<>Nil
          then
            Data_Dc_Aprvl_Lst.DataSet.FieldByName('DOC_HEADER_ID').AsInteger := FDocHeaderId
          else if Data_Dc_Aprvl_Lst.DataSet.FindField('DOC_ROUT_ID')<>Nil
          then
            Data_Dc_Aprvl_Lst.DataSet.FieldByName('DOC_ROUT_ID').AsInteger := FDocHeaderId;
          Data_Dc_Aprvl_Lst.DataSet.Post;
        End;
        UnchosenPointsSet.Next;
      End;
    Finally
      UnchosenPointsSet.EnableControls;
      Data_Dc_Aprvl_Lst.DataSet.EnableControls;
    End;
  End;

  if FDocViewState=dsNewModif
  then
    P_CopyOldVersion;

  P_Change_Edit_Param;
  if FDocViewState=dsInsert
  Then
  Begin
    if Db_Doc_Type.RecordCount>0
    then
      LCB_Doc_Type.Text := Db_Doc_TypeTP_DOC_TYPE_NAME.AsString;
    Clear_Appr_List;
  End;

  case FDocViewState of
     dsInsert:
     begin
       Self.Caption := 'Регистрация документа';
       Btn_Create.Caption := 'Создать';
     end;

     dsUpdate:
     begin
       Self.Caption := 'Редактирование документа';
       Btn_Create.Caption := 'Сохранить';
     end;

     dsNewModif:
     begin
      Self.Caption := 'Новая версия документа';
      Btn_Create.Caption := 'Создать';
     end;
  end;

  Grid_Dc_Pnt_Var.OnSelectedRowsItemChanged := Grid_Dc_Pnt_VarSelectedRowsItemChanged;
end;

Function TForm_Doc_Info.F_Copy_Arr( Parent_Arr: TArrayOfArrayString ): TArrayOfArrayString ;
Var
  i, j: Integer;
  Reciver_Arr: TArrayOfArrayString;
Begin
    SetLength(Reciver_Arr, Length(Parent_Arr));
    For I := Low(Parent_Arr) to High(Parent_Arr)
    Do
    Begin
      SetLength(Reciver_Arr[i], Length(Parent_Arr[i]));
      For j := Low(Parent_Arr[i]) to High(Parent_Arr[i])
      Do
        Reciver_Arr[i][j] := Parent_Arr[i][j];
    End;
     Result := Reciver_Arr;
End;

procedure TForm_Doc_Info.LCB_Doc_TypeKeyValueChanged(Sender: TObject);
var
  v_New_Doc_Number,
  v_Execute_Ceh_Kode, Checked_FieldName :String;

  Button_Selected :Integer;
  i, j: Integer;
  collmn: Array Of String;
  Arr_Vsb_Coll: TArrayOfArrayString;
  ListOfVisibleColumns: TList;
  VisibleRow: TFieldRowEh;
begin
  If FDocViewState in [dsInsert, dsNewModif]
  Then
  Begin
    Db_Doc_Aprvl_List_Var_Chsn.SetVariable('Doc_Type_Id', LCB_Doc_Type.KeyValue);
    Db_Doc_Aprvl_List_Var_Chsn.Refresh;

    Db_Doc_Aprvl_List_Var_Unchsn.SetVariable('Doc_Type_Id', LCB_Doc_Type.KeyValue);
    Db_Doc_Aprvl_List_Var_Unchsn.Refresh;

    Db_Type_Clmns.SetVariable(0, LCB_Doc_Type.KeyValue);
    Db_Type_Clmns.Refresh;

    v_New_Doc_Number := '';
    if LCB_Doc_Type.KeyValue<>Null
    then
    begin
      case LCB_Doc_Type.KeyValue of
        2,3,6:
        begin
          v_New_Doc_Number := PKG_TP_DOC.CallStringFunction('F_Get_Doc_Num', [ 0, 0, 1, LCB_Doc_Type.KeyValue ] );
        end;
        4:
        begin
          Db_Doc_Aprvl_List_Var_Chsn.SetVariable('Main_Doc_Id', Db_Doc_Info.FieldByName('Main_Doc_Id').AsInteger);
          Db_Doc_Aprvl_List_Var_Chsn.Refresh;
          v_New_Doc_Number := PKG_TP_DOC.CallStringFunction('F_Get_Doc_Num', [ 0, 0, 0, 4 ] );
        end;
        5:
        begin
         v_New_Doc_Number := PKG_TP_DOC.CallStringFunction('F_Get_Doc_Num', [ 0, 0, 1, 2 ] );
        end;
      end;
    end;

    if Db_Doc_Info.Active
    Then
    Begin
      Db_Doc_Info.Edit;
      If Db_Doc_InfoPROJECT_FLAG.AsInteger = 1
      Then
        Db_Doc_InfoDOC_NUM.AsString := v_New_Doc_Number + ' П'
      Else
        Db_Doc_InfoDOC_NUM.AsString := v_New_Doc_Number;
    End;

    If DB_APPR_LIST.Active
    Then
    Begin
      PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, '' ] );
      DB_APPR_LIST.Refresh;
    End;
  End;
end;

procedure TForm_Doc_Info.MemT_Dc_Aprvl_LstAfterOpen(DataSet: TDataSet);
begin
  Form_Main_Dc_Aprvl_L.Grid_Dc_Aprvl_Lst.SelectedRows.SelectAll;
end;

procedure TForm_Doc_Info.MemT_Dc_Aprvl_LstAfterScroll(DataSet: TDataSet);
begin
  if Db_Dc_Aprvl_Lst_Deps.Active
  Then
  Begin
    Db_Dc_Aprvl_Lst_Deps.SetVariable('ID_DC_RT_US_PNT', MemT_Dc_Aprvl_LstID_DC_RT_US_PNT.AsString);
    Db_Dc_Aprvl_Lst_Deps.Refresh;
    Db_Dc_Aprvl_Lst_Usrs.SetVariable('ID_DC_RT_US_PNT', MemT_Dc_Aprvl_LstID_DC_RT_US_PNT.AsString);
    Db_Dc_Aprvl_Lst_Usrs.Refresh;
  End;
end;

procedure TForm_Doc_Info.MemT_Dc_Aprvl_LstBeforeDelete(DataSet: TDataSet);
begin
  {if Not Db_Dc_Aprvl_Lst_Deps.IsEmpty
  Then
    Db_Dc_Aprvl_Lst_Deps.Delete;
  FApprForm.P_Delete_PointLinks( MemT_Dc_Aprvl_Lst.Rec );}
end;

procedure TForm_Doc_Info.MemT_Dc_Aprvl_LstNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('DOC_HEADER_ID').AsInteger := Db_Doc_Info.FieldByName('DOC_HEADER_ID').AsInteger;
  End;
end;

procedure TForm_Doc_Info.MemT_Dc_Aprvl_Lst_VarAfterOpen(DataSet: TDataSet);
begin
  FApprForm.Grid_Dc_Pnt_Var.SelectedRows.SelectAll;
  Grid_Dc_Pnt_Var.SelectedRows.SelectAll;
end;

procedure TForm_Doc_Info.MemT_Dc_Rout_PointsAfterScroll(DataSet: TDataSet);
begin
  if Db_Dc_Rout_Point_Pstns.Active
  Then
  Begin
    Db_Dc_Rout_Point_Pstns.SetVariable('Doc_Rout_Point_Id', DataSet.FieldByName('ID_DOC_ROUT_POINT').AsString);
    Db_Dc_Rout_Point_Pstns.Refresh;
  End;
end;

procedure TForm_Doc_Info.MemT_Dc_Rout_PointsNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('DOC_ROUT_ID').AsInteger := Db_Doc_Info.FieldByName('DOC_HEADER_ID').AsInteger;
  End;
end;

procedure TForm_Doc_Info.N1Click(Sender: TObject);
begin
  FApprForm.ShowModal;
end;

procedure TForm_Doc_Info.Btn_CreateClick(Sender: TObject);
var
  Button_Selected: Integer;
  v_In_Params, v_Out_Params: TDynVarsEh;
begin
  Try Db_Doc_Info.Post Except End;

  Try DB_APPR_LIST.Post Except End;
  Try FApprForm.Grid_Dc_Pnt_Var.DataSource.DataSet.Post Except End;

  Try FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet.Post Except End;

  If (Db_Doc_Info.UpdatesPending)
      Or (Db_Appr_List.UpdatesPending)
      Or ((FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh).HasCachedChanges)
  Then
  Begin

    If Sender = Btn_Cancel
    Then
    Begin
      if FDocViewState=dsInsert
      Then
        Button_Selected := MessageDlg('Документ не зарегистрирован! Зарегистрировать документ?', mtConfirmation, mbOKCancel, 5)
      Else
        Button_Selected := MessageDlg('Документ изменен! Сохранить документ?', mtConfirmation, mbOKCancel, 5);
    End
    Else
    Begin
      if FDocViewState=dsInsert
      Then
        Button_Selected := MessageDlg('Зарегистрировать документ?', mtConfirmation, mbOKCancel, 5)
      Else
        Button_Selected := MessageDlg('Сохранить документ?', mtConfirmation, mbOKCancel, 5);
    End;

    If Button_Selected = mrOk
    Then
    Begin
      FApprForm.P_Create_PointLinks;

      {$Region 'Проверки'}

      if FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet.IsEmpty
      then
      Begin
        MessageDlg('Нет сторон согласования!', mtError, [mbOK], 5);
        Exit;
      End;

      If LCB_Doc_Type.KeyValue = 1
      Then
      Begin
        If Not Db_Doc_InfoDET_ID.IsNull
        Then
        Begin
         if Db_Doc_InfoREASON.IsNull
         Then
         Begin
           MessageDlg('Не указана причина выпуска документа!', mtError, [mbOK], 5);
           Exit;
         End;
        End
        Else
        Begin
          MessageDlg('Не указана деталь!', mtError, [mbOK], 5);
          Exit;
        End;
      End
      Else If ( LCB_Doc_Type.KeyValue = 2 )
      Then
      Begin
        If Not Db_Doc_InfoTP_NAME.IsNull
        Then
        Begin
         if Not Db_Doc_InfoTP_NUM.IsNull
         Then
         Begin
           if Not Db_Doc_InfoTP_WORK_TYPE.IsNull
           Then
           Begin
             if Db_Doc_InfoREASON.IsNull
             Then
             Begin
               MessageDlg('Не указана причина выпуска документа!', mtError, [mbOK], 5);
               Exit;
             End;
           End
           Else
           Begin
             MessageDlg( 'Не указан вид работ!', mtError, [mbOK], 5 );
             Exit;
           End;
         End
         Else
         Begin
           MessageDlg( 'Не указано номер ТП!', mtError, [mbOK], 5 );
           Exit;
         End;
        End
        Else
        Begin
          MessageDlg( 'Не указано наименование ТП!', mtError, [mbOK], 5 );
          Exit;
        End;
      End
      Else if ( LCB_Doc_Type.KeyValue = 4 )
      Then
      Begin
        if Db_Doc_InfoMAIN_DOC_ID.IsNull
        Then
        Begin
          MessageDlg( 'Не указан основной документ!', mtError, [mbOK], 5 );
          Exit;
        End;

        if Db_Doc_InfoIZD_ID.IsNull
        Then
        Begin
          MessageDlg( 'Не указано изделие!', mtError, [mbOK], 5 );
          Exit;
        End;

      End
      Else if ( LCB_Doc_Type.KeyValue = 5 )
      Then
      Begin

        if Db_Doc_InfoIZD_ID.IsNull
        Then
        Begin
          MessageDlg( 'Не указано изделие!', mtError, [mbOK], 5 );
          Exit;
        End;

      End;

      if Db_Doc_InfoDOC_LITER.IsNull
      then
      Begin
        MessageDlg( 'Не указана литера!', mtError, [mbOK], 5 );
        Exit;
      End;
      {$EndRegion 'Проверки'}

      if FApprForm.Data_Dc_Aprvl_Lst.DataSet = MemT_Dc_Aprvl_Lst
      then
      begin
        MemT_Dc_Aprvl_Lst.ApplyUpdates(0);
        Dm_Main.Session.ApplyUpdates( [ Db_Doc_Info,
                                             Db_Dc_Aprvl_Lst
                                             ,Db_Dc_Aprvl_Lst_Links
                                             ,Db_Dc_Aprvl_Lst_Deps
                                             ], True );
      end
      else
      begin
        MemT_Dc_Rout_Points.ApplyUpdates(0);
        Dm_Main.Session.ApplyUpdates( [ Db_Doc_Info,
                                             Db_Dc_Rout_Points
                                             ,Db_Dc_Rout_Point_Cnnctns
                                             ,Db_Dc_Rout_Point_Pstns
                                             ,Db_Dc_Rout_Point_Pstn_Dep
                                             ,Db_Dc_Rout_Point_Pstn_User
                                             ,Db_Dc_Rout_Point_Rslts
                                             ], True );
      end;
      //Db_Appr_List.Session.ApplyUpdates( [ Db_Appr_List ], True );
      //PKG_TP_DOC.CallProcedure( 'P_Update_Doc_Info', [ Db_Main_Info.FieldByName('Doc_Header_Id').AsInteger ] );

      if ( LCB_Doc_Type.KeyValue = 1 )
          And (FDocViewState=dsInsert)
      Then
      Begin
        PKG_TP_DOC.CallProcedure( 'P_Creat_Doc_Parts ', [ Db_Doc_Info.FieldByName('DOC_HEADER_ID').AsInteger,
                                                          Form_Tech_Proc_Main.User_Otdel_Id,
                                                          Db_Doc_Info.FieldByName('DET_MAR').AsString ] );
        If (Form_Tech_Proc_Main.User_Otdel_Id <> 17)
           And (Not Form_Tech_Proc_Main.User_Admin)
        Then
        Begin
          PKG_TP_DOC.CallProcedure( 'P_Copy_Opers_From_OUP', [ Db_Doc_Info.FieldByName('DOC_HEADER_ID').AsInteger,
                                                               Form_Tech_Proc_Main.User_Lnum ] );
        End;
      end;

      Self.ModalResult := mrOk;
    End
    Else if ( Button_Selected = mrCancel )
             And ( Sender = Btn_Cancel )
    Then
    Begin
      if FApprForm.Data_Dc_Aprvl_Lst.DataSet = MemT_Dc_Aprvl_Lst
      then
      begin
        MemT_Dc_Aprvl_Lst.CancelUpdates;
        Db_Dc_Aprvl_Lst.CancelUpdates;
        Db_Dc_Aprvl_Lst_Links.CancelUpdates;
        Db_Dc_Aprvl_Lst_Deps.CancelUpdates;
        Db_Doc_Info.CancelUpdates;
        {Dm_Main.Session.CancelUpdates( [ Db_Doc_Info,
                                             Db_Dc_Aprvl_Lst
                                             ,Db_Dc_Aprvl_Lst_Links
                                             ,Db_Dc_Aprvl_Lst_Deps
                                             ]);}
      end
      else
      begin
        MemT_Dc_Rout_Points.CancelUpdates;
        Db_Dc_Rout_Points.CancelUpdates;
        Db_Dc_Rout_Point_Cnnctns.CancelUpdates;
        Db_Dc_Rout_Point_Pstns.CancelUpdates;
        Db_Dc_Rout_Point_Pstn_Dep.CancelUpdates;
        Db_Dc_Rout_Point_Pstn_User.CancelUpdates;
        Db_Dc_Rout_Point_Rslts.CancelUpdates;
        Db_Doc_Info.CancelUpdates;
        {Dm_Main.Session.CancelUpdates( [ Db_Doc_Info,
                                         Db_Dc_Rout_Points
                                         ,Db_Dc_Rout_Point_Cnnctns
                                         ,Db_Dc_Rout_Point_Pstns
                                         ,Db_Dc_Rout_Point_Pstn_Dep
                                         ,Db_Dc_Rout_Point_Pstn_User
                                         ,Db_Dc_Rout_Point_Rslts
                                             ]);}
      end;
      Self.ModalResult := mrCancel;
    End;
  End;

end;

procedure TForm_Doc_Info.Clear_Appr_List;
begin
 SimpleSQL.Close;
 SimpleSQL.DeleteVariables;
 SimpleSQL.SQL.Clear;
 SimpleSQL.SQL.Add('Delete '
                    + ' From Ogt.Spr_Tp_Appr_List_Temp t ');
 SimpleSQL.ExecSQL;
 SimpleSQL.Open;
 SimpleSQL.Close;
end;

constructor TForm_Doc_Info.Create(AOwner: TComponent; InDocHeaderId: Integer;
  DocViewState: TDocInfoEditStates);
begin
  inherited Create(AOwner);
  FDocHeaderId := InDocHeaderId;
  FDocViewState := DocViewState;
  FApprForm := TForm_Main_Dc_Aprvl_L.Create(Self, 'TECH_PROC', InDocHeaderId);


  if DocViewState = dsInternalSign
  then
  begin
    Panel1.Enabled := False;
    Panel1.Visible := False;
    Grid_Dc_Pnt_Var.Align := alClient;
    Self.Width := 380;
  end
  else
  begin
    Panel1.Enabled := True;
    Panel1.Visible := True;
    Grid_Dc_Pnt_Var.Align := alLeft;
    Self.Width := 1000;
  end;
end;

procedure TForm_Doc_Info.Grid_Dc_Aprvl_LstSelectedRowsItemChanged(
  Sender: TCustomDBGridEh; Item: TUniBookmarkEh; Action: TListNotification);
var
  Rec: TMemoryRecordEh;
begin
  if FInternalSelection then
    Exit;
  if Action = lnDeleted then
  begin
    if (FApprForm.Data_Dc_Aprvl_Lst_Var.DataSet as TMemTableEh).Locate('STP_DC_RT_PNT_POS_ID',
        (FApprForm.Data_Dc_Aprvl_Lst.DataSet as TMemTableEh).BookmarkToRec(Item).DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh], [])
    then
    begin
      Grid_Dc_Pnt_Var.SelectedRows.CurrentRowSelected := False;
      FApprForm.Grid_Dc_Aprvl_Lst.CancelMode; //Stop Mouse Dragging
    end;
  end;
end;

procedure TForm_Doc_Info.Grid_Dc_Pnt_VarGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Column.Grid.DataSource.DataSet
  do
  begin
   if not IsEmpty
   then
   Begin
     if Column.FieldName='POINT_NAME'
     then
     begin
       if FieldByName('STP_DOC_ROUT_POINT_ID').AsString = '2187' then Background := $00E6D8AD
       Else if FieldByName('STP_DOC_ROUT_POINT_ID').AsString = '2262' then Background := $00DEC4B0
       Else if FieldByName('STP_DOC_ROUT_POINT_ID').AsString = '2263' then Background := $00EEEEAF
       Else if FieldByName('STP_DOC_ROUT_POINT_ID').AsString = '006' then Background := $00E6D8AD;
     end;
   End;
  end;
end;

procedure TForm_Doc_Info.Grid_Dc_Pnt_VarSelectedRowsItemChanged(
  Sender: TCustomDBGridEh; Item: TUniBookmarkEh; Action: TListNotification);
var
  NewRec, AddRec: TMemoryRecordEh;
  j: Integer;
  KeyField: String;
  RecIndex: Integer;
begin
  If Action = lnAdded
  Then
  Begin
    if UpperCase((((FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh).DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).UpdatingTable) = 'SRC.V_DOC_ROUT_USER_PNTS'
    then
    begin
      KeyField := ((FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh).DataDriver as TDataSetDriverEh).KeyFields;

      if KeyField = ''
      then
      begin
        MessageDlg('Не указан KeyFields в DataDriver! Укажите Primary Key таблицы!', mtError, [mbOK], 5);
        Abort;
      end;
    end
    else if UpperCase((((FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh).DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).UpdatingTable) = 'SRC.V_DOC_ROUT_POINTS'
    then
    begin
      KeyField := ((FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh).DataDriver as TDataSetDriverEh).KeyFields;

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
      With (FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh)
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
          NewRec.DataValues[KeyField, dvvValueEh] := FApprForm.F_NextSeqNumber(FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet);
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
        FApprForm.Grid_Dc_Aprvl_Lst.Selection.Rows.SelectAll;
        FApprForm.Grid_Dc_Pnt_Var.SelectedRows.CurrentRowSelected := True;
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
      If FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet.Locate('STP_DC_RT_PNT_POS_ID',
        (FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh).BookmarkToRec(Item).DataValues['STP_DC_RT_PNT_POS_ID', dvvValueEh], [])
      Then
      Begin
        FInternalSelection := True;
        Try
          FApprForm.Grid_Dc_Aprvl_Lst.SelectedRows.CurrentRowSelected := False;
          FApprForm.Grid_Dc_Pnt_Var.SelectedRows.CurrentRowSelected := False;
        Finally
          FInternalSelection := False;
        End;
        FApprForm.Data_Dc_Aprvl_Lst.DataSet.Delete;
      End;
    End
    Else
      FSelectingUpdated := True;
  end;
end;

procedure TForm_Doc_Info.Grid_Dc_Pnt_VarSelectionChanged(Sender: TObject);
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
    MemT_Reciever := FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet as TMemTableEh;
    MemT_Parent := Grid_Dc_Pnt_Var.DataSource.DataSet as TMemTableEh;
    FApprForm.Grid_Dc_Pnt_Var.SelectedRows.Assign(Grid_Dc_Pnt_Var.SelectedRows);
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
        for j := 0 to FApprForm.Grid_Dc_Aprvl_Lst.SelectedRows.Count-1
        do
        begin
          RecReciver := MemT_Reciever.BookmarkToRec(FApprForm.Grid_Dc_Aprvl_Lst.SelectedRows[j]);
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

      for i := 0 to FApprForm.Grid_Dc_Aprvl_Lst.SelectedRows.Count-1
      do
      begin
        RecReciver := MemT_Reciever.BookmarkToRec(FApprForm.Grid_Dc_Aprvl_Lst.SelectedRows[i]);
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
        FApprForm.Grid_Dc_Aprvl_Lst.SelectedRows.DeleteBookmark(MemT_Reciever.RecToBookmark(RecReciver));
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
            RecReciver.DataValues[KeyField, dvvValueEh] := FApprForm.F_NextSeqNumber(MemT_Reciever);
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
    FApprForm.Grid_Dc_Aprvl_Lst.SelectedRows.SelectAll;
    FInternalSelection := False;
  end;
end;

procedure TForm_Doc_Info.Grid_InfoAdvDrawDataCell(Sender: TCustomDBVertGridEh;
  Cell, AreaCell: TGridCoord; Row: TFieldRowEh; const ARect: TRect;
  var Params: TRowCellParamsEh; var Processed: Boolean);
  var
    EmptyText: String;
    TestRect: TRect;
begin
  Sender.DefaultDrawDataCell(Cell, AreaCell, Row, ARect, Params);
  if not Sender.DataSource.DataSet.IsEmpty
  then
  begin
    if Sender.DataSource.DataSet.FieldByName(Row.FieldName).IsNull
    then
    begin
      Sender.Canvas.Brush.Color := Row.Color;
      Sender.Canvas.Font.Color := clGrayText;
      Sender.Canvas.Font.Name := 'clWindowText';
      Sender.Canvas.Font.Style := Canvas.Font.Style + [fsItalic];
      Sender.Canvas.Font.Size := 10;

      if (Row.FieldName = 'REASON')
          Or (Row.FieldName = 'DOC_LITER')
          Or (Row.FieldName = 'FLAG_IMP_NAME')
          Or (Row.FieldName = 'ACT_DATE')
      then
        EmptyText := ' Не указана... '
      else if (Row.FieldName = 'MAIN_DOC_NUM')
          Or (Row.FieldName = 'DET_NUM')
          Or (Row.FieldName = 'DET_MAR')
          Or (Row.FieldName = 'TP_NUM')
          Or (Row.FieldName = 'TP_WORK_TYPE_NAME')
          Or (Row.FieldName = 'ACT_NUM')
      then
        EmptyText := ' Не указан... '
      else if (Row.FieldName = 'IZD_NAME')
          Or (Row.FieldName = 'TP_NAME')
      then
        EmptyText := ' Не указано... '
      else
        EmptyText := ' (Генерируется автоматически)';

      Sender.Canvas.TextOut(ARect.Left,
                     ARect.Top,
                     EmptyText);
    end;
  end;

  Processed := True;
end;

procedure TForm_Doc_Info.DbGrid_InfoRows10CloseDropDownForm(Grid: TCustomDBVertGridEh;
  Column: TFieldRowEh; Button: TEditButtonEh; Accept: Boolean;
  DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  if Accept
  Then
  Begin
    Db_Doc_Info.Edit;
    Db_Doc_InfoTP_WORK_TYPE.AsInteger := DynParams.DynVar[ 'WORK_TYPE_ID' ].AsInteger;
    Db_Doc_InfoTP_WORK_TYPE_NAME.AsString := DynParams.DynVar[ 'WORK_TYPE_NAME' ].AsString;
    case LCB_Doc_Type.KeyValue of
      2,3,6:
      begin
        Db_Doc_InfoTP_NUM.AsString := PKG_TP_DOC.CallStringFunction( 'F_Get_Tp_Num', [ DynParams.DynVar[ 'WORK_TYPE_ID' ].AsInteger,
                                                                                      LCB_Doc_Type.KeyValue,
                                                                                      1 ] )
      end;
      5:
      begin
        Db_Doc_InfoTP_NUM.AsString := PKG_TP_DOC.CallStringFunction( 'F_Get_Complect_Num', [ DynParams.DynVar[ 'WORK_TYPE_ID' ].AsInteger,
                                                                                              1] )
      end;
    end;
  End;
end;

procedure TForm_Doc_Info.DbGrid_InfoRows10OpenDropDownForm(Grid: TCustomDBVertGridEh;
  Column: TFieldRowEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
  DynParams: TDynVarsEh);
begin
  If LCB_Doc_Type.KeyValue = 4
  Then
    Abort;

  DynParams.DynVar[ 'Find' ].AsString := 'WORK_TYPE';
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Doc_Info.DbGrid_InfoRows10UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);

  var
  v_Cancel_Doc_Id, I: Integer;
  v_New_Doc_Number,
  v_Execute_Ceh_Kode :String;
  v_In_Params,
  v_Out_Det_Mar_Params,
  v_Out_Cancel_Doc_Params,
  v_Out_Main_Doc_Params: TDynVarsEh;
begin
 If ( ( Text <> '' )
      And ( Db_Doc_InfoCANCEL_DOC_ID.IsNull ) )
     Or ( ( Text <> '' )
          And ( Not Db_Doc_InfoCANCEL_DOC_ID.IsNull )
          And ( Text <> Db_Doc_InfoCANCEL_DOC_NUM.AsString ) )
 Then
 Begin
   v_In_Params := TDynVarsEh.Create( Application.MainForm );
   v_In_Params.DynVar[ 'Find' ].AsString := 'DOC';
   v_In_Params.DynVar[ 'Filter' ].AsString := ' Doc_Type = ' + VarToStr(LCB_Doc_Type.KeyValue) ;
   v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
   v_Out_Cancel_Doc_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
   If v_Out_Cancel_Doc_Params <> Nil
   Then
   Begin
     Db_Doc_Info.Edit;
     Db_Doc_InfoCANCEL_DOC_ID.AsInteger := v_Out_Cancel_Doc_Params.DynVar[ 'ID_DOC' ].AsInteger;
     Db_Doc_InfoMAIN_DOC_ID.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'Real_Main_Doc_Id' ].AsString;
     Text := v_Out_Cancel_Doc_Params.DynVar[ 'NUM_DOC' ].AsString;
   End;
   if LCB_Doc_Type.KeyValue = 1
   Then
   Begin
     Db_Doc_InfoDET_ID.AsInteger := v_Out_Cancel_Doc_Params.DynVar[ 'ID_DET' ].AsInteger;
     Db_Doc_InfoDET_NUM.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString;
     Db_Doc_InfoDET_NAME.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'ADDIT_INFO_NAME' ].AsString;
     Db_Doc_InfoDET_MAR.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'SEC_ADDIT_INFO' ].AsString;
     PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, Db_Doc_InfoDET_MAR.AsString ] );
     if DB_APPR_LIST.Active
     then
       DB_APPR_LIST.Refresh;
   End
   Else
   Begin
     Db_Doc_InfoTP_NUM.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString;
     Db_Doc_InfoTP_NAME.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'ADDIT_INFO_NAME' ].AsString;
     Db_Doc_InfoTP_WORK_TYPE_NAME.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'SEC_ADDIT_INFO' ].AsString;
     Db_Doc_InfoTP_WORK_TYPE.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'Tp_Work_Type' ].AsString;
     Db_Doc_InfoIZD_ID.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'Izd_Id' ].AsString;
     Db_Doc_InfoIZD_NAME.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'Izd_Name' ].AsString;
     Db_Doc_InfoIZD_TYPE.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'Izd_Type' ].AsString;
     PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, '' ] );
     if DB_APPR_LIST.Active
     then
       DB_APPR_LIST.Refresh;
   End;
 End
 Else if ( Text = '' )
         And ( Not Db_Doc_InfoCANCEL_DOC_ID.IsNull )
 Then
 Begin
   Db_Doc_Info.Edit;
   Db_Doc_InfoDET_ID.Clear;
   Db_Doc_InfoDET_NUM.Clear;
   Db_Doc_InfoDET_NAME.Clear;
   Db_Doc_InfoDET_MAR.Clear;
   Db_Doc_InfoCANCEL_DOC_ID.Clear;
   Db_Doc_InfoTP_NUM.Clear;
   Db_Doc_InfoTP_NAME.Clear;
   Db_Doc_InfoTP_WORK_TYPE_NAME.Clear;
   Db_Doc_InfoTP_WORK_TYPE.Clear;
   Db_Doc_InfoIZD_ID.Clear;
   Db_Doc_InfoIZD_NAME.Clear;
   Db_Doc_InfoIZD_TYPE.Clear;
 End;
end;

procedure TForm_Doc_Info.DbGrid_InfoRows11UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  Var
    v_In_Params, v_Out_Params: TDynVarsEh;
begin
  If Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
    Abort;
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'USERS';
  v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If v_Out_Params <> Nil
  Then
  Begin
    Db_Doc_InfoAUTHOR_LNUM.AsInteger := v_Out_Params.DynVar[ 'EMP_ID' ].AsInteger;
    Db_Doc_InfoAUTHOR_NAME.AsString := v_Out_Params.DynVar[ 'EMP_FIO' ].AsString;
    Db_Doc_InfoCEH_ID.AsInteger := v_Out_Params.DynVar[ 'CEH_ID' ].AsInteger;
  End;
end;

procedure TForm_Doc_Info.DbGrid_InfoRows1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
  Var
    V_In_Params, v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'REASON';
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If v_Out_Params <> Nil
  Then
  Begin
    Db_Doc_Info.Edit;
    Db_Doc_InfoREASON.AsString := v_Out_Params.DynVar[ 'REASON' ].AsString;
  End;
end;

procedure TForm_Doc_Info.DbGrid_InfoRows2EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
  Var
  v_New_Doc_Number,
  v_Execute_Ceh_Kode :String;
  V_In_Params,
  v_Out_Det_Params,
  v_Out_Det_Mar_Params,
  v_Out_Cancel_Doc_Params,
  v_Out_Main_Doc_Params: TDynVarsEh;

  Button_Selected :Integer;
    i: Integer;
begin
  v_Out_Det_Params := DM_Main.F_Show_Modal_Form( 'Spravochnik_Of_Details' );
  if v_Out_Det_Params <> Nil
  Then
  Begin
    Db_Doc_Info.Edit;
    V_In_Params := TDynVarsEh.Create( Application.MainForm );
    if Db_Doc_InfoCANCEL_DOC_NUM.AsString <> '' then Db_Doc_InfoCANCEL_DOC_NUM.Clear;
    If v_Out_Det_Params <> Nil
    Then
    Begin
      Db_Doc_InfoDET_ID.AsInteger := v_Out_Det_Params.DynVar[ 'ID' ].AsInteger;
      Db_Doc_InfoDET_NUM.AsString := v_Out_Det_Params.DynVar[ 'DET' ].AsString;
      Db_Doc_InfoDET_NAME.AsString := v_Out_Det_Params.DynVar[ 'ND' ].AsString;
      P_Apply_Det( v_Out_Det_Params );
    End;
  End;
end;

procedure TForm_Doc_Info.DbGrid_InfoRows4UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  v_In_Params,
  v_Out_Main_Doc_Params: TDynVarsEh;
begin
   if FDocViewState=dsNewModif
   then
     Abort;
 If ( ( Text <> '' )
      And ( Db_Doc_InfoMAIN_DOC_ID.IsNull ) )
     Or ( ( Text <> '' )
          And ( Not Db_Doc_InfoMAIN_DOC_ID.IsNull )
          And ( Text <> Db_Doc_InfoMAIN_DOC_NUM.AsString ) )
 Then
 Begin
   v_In_Params := TDynVarsEh.Create( Application.MainForm );
   v_In_Params.DynVar[ 'Find' ].AsString := 'DOC';
   v_In_Params.DynVar[ 'Filter' ].AsString := ' Doc_Type In (2,3) ';
   v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
   v_Out_Main_Doc_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
   If v_Out_Main_Doc_Params <> Nil
   Then
   Begin
     Db_Doc_Info.Edit;
     Db_Doc_InfoMAIN_DOC_ID.AsInteger := v_Out_Main_Doc_Params.DynVar[ 'ID_DOC' ].AsInteger;
     Text := v_Out_Main_Doc_Params.DynVar[ 'NUM_DOC' ].AsString;
     Db_Doc_InfoTP_NAME.AsString := v_Out_Main_Doc_Params.DynVar[ 'ADDIT_INFO_NAME' ].AsString;
     Db_Doc_InfoTP_WORK_TYPE_NAME.AsString := v_Out_Main_Doc_Params.DynVar[ 'SEC_ADDIT_INFO' ].AsString;
     Db_Doc_InfoTP_WORK_TYPE.AsString := v_Out_Main_Doc_Params.DynVar[ 'Tp_Work_Type' ].AsString;
     Db_Doc_InfoTP_TYPE.AsString := v_Out_Main_Doc_Params.DynVar[ 'Doc_Type' ].AsString;
     PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, '' ] );
     if DB_APPR_LIST.Active
     then
       DB_APPR_LIST.Refresh;
   End;
 End
 Else if ( Text = '' )
         And ( Not Db_Doc_InfoCANCEL_DOC_ID.IsNull )
 Then
 Begin
   Db_Doc_Info.Edit;
   Db_Doc_InfoDET_ID.Clear;
   Db_Doc_InfoDET_NUM.Clear;
   Db_Doc_InfoDET_NAME.Clear;
   Db_Doc_InfoDET_MAR.Clear;
   Db_Doc_InfoCANCEL_DOC_ID.Clear;
   Db_Doc_InfoTP_NUM.Clear;
   Db_Doc_InfoTP_NAME.Clear;
   Db_Doc_InfoTP_WORK_TYPE_NAME.Clear;
   Db_Doc_InfoTP_WORK_TYPE.Clear;
   Db_Doc_InfoIZD_ID.Clear;
   Db_Doc_InfoIZD_NAME.Clear;
   Db_Doc_InfoIZD_TYPE.Clear;
 End;
end;

procedure TForm_Doc_Info.DbGrid_InfoRows5UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  Var
    v_In_Params, v_Out_Params: TDynVarsEh;
begin
  If ( ( Text <> '' )
      And ( Db_Doc_InfoIZD_ID.IsNull ) )
      Or ( (Text <> '' )
           And ( Not Db_Doc_InfoIZD_ID.IsNull )
           And ( Db_Doc_InfoIZD_NAME.AsString <> Text ) )
  Then
  Begin
    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Params.DynVar[ 'Find' ].AsString := 'IZD';
    v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
    v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
    If v_Out_Params <> Nil
    Then
    Begin
      Db_Doc_Info.Edit;
      Db_Doc_InfoIZD_ID.AsInteger := v_Out_Params.DynVar[ 'ID_IZD' ].AsInteger;
      Text := v_Out_Params.DynVar[ 'IZD' ].AsString;
      Db_Doc_InfoIZD_TYPE.AsString := v_Out_Params.DynVar[ 'IZD_ND' ].AsString;
    End;
  End
  Else If (Text = '' )
      And ( Not Db_Doc_InfoIZD_ID.IsNull )
  Then
  Begin
   Db_Doc_Info.Edit;
   Db_Doc_InfoIZD_ID.Clear;
   Db_Doc_InfoIZD_TYPE.Clear;
  End;
end;

procedure TForm_Doc_Info.DbGrid_InfoRows6UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  Var
  v_Numeric_Part: String;
  i: Integer;
begin
   if FDocViewState=dsNewModif
   then
     Abort;

 if Db_Doc_InfoTP_WORK_TYPE.IsNull
 Then
   Text := ''
 Else
  if Length( Text ) < 6
  Then
    Text := Copy ( Db_Doc_InfoTP_NUM.AsString, 1, 6 )
  Else if ( Length( Text ) > 6 )
          And ( Length ( Text ) < 11 )
  Then
  Begin
    v_Numeric_Part := Copy ( Text, ( Pos ( '.', Text ) + 1 ) );
    While Length( v_Numeric_Part ) < 5
    Do
    Begin
      v_Numeric_Part := '0' + v_Numeric_Part;
    End;
    Text := Copy ( Db_Doc_InfoTP_NUM.AsString, 1, 6 ) + v_Numeric_Part;
  End;
end;

procedure TForm_Doc_Info.DbGrid_InfoRows7EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
  var
  v_Execute_Ceh_Kode :String;
  v_In_Params, v_Out_Params: TDynVarsEh;

  Button_Selected :Integer;
  i: Integer;
begin
  if Db_Doc_InfoDET_ID.IsNull Then Abort
  Else if ( Text <> '' )
         And ( Not Db_Doc_InfoDET_ID.IsNull )
  Then
  Begin
    V_In_Params := TDynVarsEh.Create( Application.MainForm );
    V_In_Params.DynVar[ 'Find' ].AsString := 'DET_MAR';
    V_In_Params.DynVar[ 'Filter' ].AsString := ' Id_Det = ' + Db_Doc_Info.FieldByName('DET_ID').AsString;
    v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
    If v_Out_Params <> Nil
    Then
    Begin
      Db_Doc_Info.Edit;
      Db_Doc_Info.FieldByName('DET_MAR').AsString := v_Out_Params.DynVar[ 'MAR' ].AsString;
      PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, v_Out_Params.DynVar[ 'MAR' ].AsString ] );
       if DB_APPR_LIST.Active
       then
         DB_APPR_LIST.Refresh;
    End;
  End;
end;

procedure TForm_Doc_Info.DbGrid_InfoRows8UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  I: Integer;
begin
  If Text = 'П'
  Then
  Begin
    Db_Doc_Info.Edit;
    Db_Doc_InfoPROJECT_FLAG.AsInteger := 1;
    Db_Doc_InfoDOC_NUM.AsString := Db_Doc_InfoDOC_NUM.AsString
                                    + ' П';

    {With Grid_Appr
    Do
    Begin
      With DataSource.DataSet
      Do
      Begin
        if Active
        Then
        Begin
          DisableControls;
          Try
            First;
            For I := 0 to RecordCount-1
            Do
            Begin
              If FieldByName( 'APPR_STEP_NUM' ).AsString = '003'
              Then
              Begin
                FieldByName( 'FLAG_USE' ).AsInteger := 0
              End;
              Next;
            End;
          Finally
            EnableControls;
          End;
        End;
      End;
    End; }
  End
  Else
  Begin
    Db_Doc_Info.Edit;
    Db_Doc_InfoPROJECT_FLAG.AsInteger := 0;
    If Pos(' П', Db_Doc_InfoDOC_NUM.AsString ) <> 0
    Then
      Db_Doc_InfoDOC_NUM.AsString := Copy( Db_Doc_InfoDOC_NUM.AsString,
                                            0,
                                            Pos(' П', Db_Doc_InfoDOC_NUM.AsString ) - 1  );
    {With Grid_Appr
    Do
    Begin
      With DataSource.DataSet
      Do
      Begin
        if Active
        Then
        Begin
          DisableControls;
          Try
            First;
            For I := 0 to RecordCount-1
            Do
            Begin
              If FieldByName( 'APPR_STEP_NUM' ).AsString = '003'
              Then
              Begin
                FieldByName( 'FLAG_USE' ).AsInteger := 1
              End;
              Next;
            End;
          Finally
            EnableControls;
          End;
        End;
      End;
    End;}
  End;

end;

procedure TForm_Doc_Info.DBVertGridEh1Rows2UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
var
v_New_Doc_Number,
v_Execute_Ceh_Kode :String;
V_In_Params,
v_Out_Det_Params,
v_Out_Det_Mar_Params,
v_Out_Cancel_Doc_Params,
v_Out_Main_Doc_Params: TDynVarsEh;

Button_Selected :Integer;
  i: Integer;

begin
   if FDocViewState=dsNewModif
   then
     Abort;

   Db_Doc_Info.Edit;
   If ( ( Text <> '' )
       And ( Db_Doc_InfoDET_ID.IsNull ) )
      Or ( ( Text <> '' )
          And ( Not Db_Doc_InfoDET_ID.IsNull )
          And ( Text <> Db_Doc_InfoDET_NUM.AsString ) )
   Then
   Begin
      V_In_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Params.DynVar[ 'Find' ].AsString := 'DET';
      V_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
      v_Out_Det_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
      If v_Out_Det_Params <> Nil
      Then
      Begin
        Db_Doc_InfoDET_ID.AsInteger := v_Out_Det_Params.DynVar[ 'ID_DET' ].AsInteger;
        Text := v_Out_Det_Params.DynVar[ 'DET_NUM' ].AsString;
        Db_Doc_InfoDET_NAME.AsString := v_Out_Det_Params.DynVar[ 'DET_NAME' ].AsString;
        if Db_Doc_InfoCANCEL_DOC_NUM.AsString <> '' then Db_Doc_InfoCANCEL_DOC_NUM.Clear;
        P_Apply_Det( v_Out_Det_Params );
      End;
   End
   Else if ( Text = '' )
            And ( Not Db_Doc_InfoDET_ID.IsNull )
   Then
   Begin
     Db_Doc_InfoDET_ID.Clear;
     Db_Doc_InfoDET_NAME.Clear;
     Db_Doc_InfoDET_MAR.Clear;
   End;
   Db_Doc_Aprvl_List_Var_Unchsn.Refresh;
   Db_Doc_Aprvl_List_Var_Chsn.Refresh
end;

procedure TForm_Doc_Info.DBVertGridEh1Rows4UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  var
  v_Execute_Ceh_Kode :String;
  v_In_Params, v_Out_Params: TDynVarsEh;

  Button_Selected :Integer;
  i: Integer;
begin
  if Db_Doc_InfoDET_ID.IsNull Then Abort
  Else if ( Text <> '' )
         And ( Not Db_Doc_InfoDET_ID.IsNull )
  Then
  Begin
    V_In_Params := TDynVarsEh.Create( Application.MainForm );
    V_In_Params.DynVar[ 'Find' ].AsString := 'DET_MAR';
    V_In_Params.DynVar[ 'Filter' ].AsString := ' Id_Det = ' + Db_Doc_Info.FieldByName('DET_ID').AsString;
    v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
    If v_Out_Params <> Nil
    Then
    Begin
      Db_Doc_Info.Edit;
      Text := v_Out_Params.DynVar[ 'MAR' ].AsString;
      PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, v_Out_Params.DynVar[ 'MAR' ].AsString ] );
       if DB_APPR_LIST.Active
       then
         DB_APPR_LIST.Refresh;
    End;
  End;
end;

procedure TForm_Doc_Info.Db_Appr_ListAfterRefresh(DataSet: TDataSet);
begin
  Db_Doc_Aprvl_List_Var_Chsn.Refresh;
end;

procedure TForm_Doc_Info.Db_Dc_Aprvl_Lst_DepsNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('DOC_HEADER_ID').AsInteger := Db_Doc_Info.FieldByName('DOC_HEADER_ID').AsInteger;
  End;
end;

procedure TForm_Doc_Info.Db_Dc_Aprvl_Lst_LinksNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('DOC_HEADER_ID').AsInteger := Db_Doc_Info.FieldByName('DOC_HEADER_ID').AsInteger;
  End;
end;

procedure TForm_Doc_Info.Db_Dc_Rout_Point_CnnctnsAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    Edit;
    FieldByName('P_DOC_ROUT_POINT_ID').AsString := FieldByName('DC_RT_US_PNT_ID').AsString;
    FieldByName('C_DOC_ROUT_POINT_ID').AsString := FieldByName('DC_RT_US_PNT_NXT_ID').AsString;
    Post;
  end
end;

procedure TForm_Doc_Info.Db_Dc_Rout_Point_CnnctnsNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('DOC_ROUT_ID').AsInteger := Db_Doc_Info.FieldByName('DOC_HEADER_ID').AsInteger;
  End;
end;

procedure TForm_Doc_Info.Db_Dc_Rout_Point_PstnsAfterScroll(DataSet: TDataSet);
begin
  if Db_Dc_Rout_Point_Pstns.Active
  Then
  Begin
    Db_Dc_Rout_Point_Pstn_Dep.SetVariable('Doc_Rout_Point_Pstn_Id', DataSet.FieldByName('ID_DOC_ROUT_POINT_PSTN').AsString);
    Db_Dc_Rout_Point_Pstn_User.SetVariable('Doc_Rout_Point_Pstn_Id', DataSet.FieldByName('ID_DOC_ROUT_POINT_PSTN').AsString);
    Db_Dc_Rout_Point_Pstn_Dep.Refresh;
    Db_Dc_Rout_Point_Pstn_User.Refresh;
  End;
end;

procedure TForm_Doc_Info.Db_Doc_Aprvl_List_Var_ChsnAfterRefresh(
  DataSet: TDataSet);
var
  NewRec, AddRec: TMemoryRecordEh;
  j, i: Integer;
begin
  Grid_Dc_Pnt_Var.Selection.Clear;
  FApprForm.Grid_Dc_Pnt_Var.Selection.Clear;
  FApprForm.Grid_Dc_Aprvl_Lst.Selection.Clear;

  with FApprForm.Grid_Dc_Pnt_Var.DataSource.DataSet
  do
  begin
    if Active
    then
    begin
      First;
      for I := 1 to RecordCount do
      begin
        Delete;
        Next;
      end;
      First;
    end;
  end;

  with FApprForm.Grid_Dc_Aprvl_Lst.DataSource.DataSet
  do
  begin
    if Active
    then
    begin
      First;
      for I := 1 to RecordCount do
      begin
        Delete;
        Next;
      end;
      First;
    end;
  end;

  //Загрузка вариантов выбора
  With FApprForm.ChosenPointsSet
  Do
  Begin
    DisableControls;
    FApprForm.Data_Dc_Aprvl_Lst_Var.DataSet.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(FApprForm.Data_Dc_Aprvl_Lst_Var.DataSet.Lookup('STP_DC_RT_PNT_POS_ID', FieldByName( 'STP_DC_RT_PNT_POS_ID' ).AsVariant, 'STP_DC_RT_PNT_POS_ID')) = ''
        Then
        Begin
          Data_Dc_Aprvl_Lst_Var.DataSet.Append;
          Data_Dc_Aprvl_Lst_Var.DataSet.CopyFields( FApprForm.ChosenPointsSet );
          Data_Dc_Aprvl_Lst_Var.DataSet.Post;
          if FieldByName( 'STP_DOC_ROUT_POINT_ID' ).AsInteger = 2262
          then
          begin
            Data_Dc_Aprvl_Lst_Var.DataSet.Edit;
            Self.Grid_Dc_Pnt_Var.SelectedRows.CurrentRowSelected := True;
            FInternalSelection := True;
            Try
              FApprForm.Grid_Dc_Aprvl_Lst.SelectedRows.CurrentRowSelected := True;
              FApprForm.Grid_Dc_Pnt_Var.SelectedRows.CurrentRowSelected := True;
            Finally
              FInternalSelection := False;
            End;
          end;
        End;
        Next;
      End;
    Finally
      EnableControls;
      Data_Dc_Aprvl_Lst_Var.DataSet.EnableControls;
    End;
  End;

  //Загрузка не выбираемых значений
  With FApprForm.UnchosenPointsSet
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
          Data_Dc_Aprvl_Lst.DataSet.CopyFields( FApprForm.UnchosenPointsSet );
          if Data_Dc_Aprvl_Lst.DataSet.FindField('ID_DC_RT_US_PNT')<>Nil
          then
            Data_Dc_Aprvl_Lst.DataSet.FieldByName('ID_DC_RT_US_PNT').AsInteger := FApprForm.F_NextSeqNumber(FApprForm.Data_Dc_Aprvl_Lst_Var.DataSet)
          else if Data_Dc_Aprvl_Lst.DataSet.FindField('ID_DOC_ROUT_POINT')<>Nil
          then
            Data_Dc_Aprvl_Lst.DataSet.FieldByName('ID_DOC_ROUT_POINT').AsInteger := FApprForm.F_NextSeqNumber(FApprForm.Data_Dc_Aprvl_Lst_Var.DataSet);
          if Data_Dc_Aprvl_Lst.DataSet.FindField('DOC_HEADER_ID')<>Nil
          then
            Data_Dc_Aprvl_Lst.DataSet.FieldByName('DOC_HEADER_ID').AsInteger := FDocHeaderId
          else if Data_Dc_Aprvl_Lst.DataSet.FindField('DOC_ROUT_ID')<>Nil
          then
            Data_Dc_Aprvl_Lst.DataSet.FieldByName('DOC_ROUT_ID').AsInteger := FDocHeaderId;
          Data_Dc_Aprvl_Lst.DataSet.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      Data_Dc_Aprvl_Lst.DataSet.EnableControls;
    End;
  End;

  FApprForm.Grid_Dc_Aprvl_Lst.Selection.SelectAll;

end;

procedure TForm_Doc_Info.Db_Doc_InfoNewRecord(DataSet: TDataSet);
  var
  v_In_Params, v_Out_Params: TDynVarsEh;
begin
  with DataSet
  do
  begin
    Seq_Id_Doc_Header.Execute;
    FieldByName('ID_VERS').AsInteger := 1;
    FieldByName('DOC_HEADER_ID').AsInteger := Seq_Id_Doc_Header.FieldAsInteger(0);
    FDocHeaderId:=Seq_Id_Doc_Header.FieldAsInteger(0);
    FApprForm.DocHeaderId:=Seq_Id_Doc_Header.FieldAsInteger(0);
    FieldByName('ID_DOC_HEADER').AsInteger := Seq_Id_Doc_Header.FieldAsInteger(0);
    FieldByName('DOC_DATE').AsDateTime := Now();
    If Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'USERS';
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        FieldByName('AUTHOR_LNUM').AsInteger := v_Out_Params.DynVar[ 'EMP_ID' ].AsInteger;
        FieldByName('AUTHOR_NAME').AsString := v_Out_Params.DynVar[ 'EMP_FIO' ].AsString;
        FieldByName('CEH_ID').AsInteger := v_Out_Params.DynVar[ 'CEH_ID' ].AsInteger;
        FieldByName('SRC_DEP_ID').AsInteger := v_Out_Params.DynVar[ 'DEP_ID' ].AsInteger;
      End;
    End
    Else
    Begin
      FieldByName('AUTHOR_LNUM').AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_lnum;
      FieldByName('CEH_ID').AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_Otdel_Id;
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'USERS';
      v_In_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
                                                      + ' And Id_User = ''' + Udm_Main.DM_Main.Session.LogonUsername + ''' ';
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        FieldByName('AUTHOR_NAME').AsString := v_Out_Params.DynVar[ 'EMP_FIO' ].AsString;
        FieldByName('SRC_DEP_ID').AsInteger := v_Out_Params.DynVar[ 'DEP_ID' ].AsInteger;
      End;
    End;
  end;
end;

procedure TForm_Doc_Info.Db_Type_ClmnsAfterRefresh(DataSet: TDataSet);
var
  i, j: Integer;
  ListOfVisibleColumns: TList;
  VisibleRow: TFieldRowEh;
begin
  ListOfVisibleColumns := TList.Create;

  Db_Type_Clmns.First;
  while not Db_Type_Clmns.eof
  do
  begin
    VisibleRow := Grid_Info.FindFieldColumn(Db_Type_ClmnsCOLUMN_NAME.AsString) as TFieldRowEh;
    if VisibleRow<>Nil
    then
    begin
      if ((FDocViewState in [dsInsert, dsNewModif])
         and (Db_Type_ClmnsVIEW_STATE.AsString='rowInsert'))
         or (Db_Type_ClmnsVIEW_STATE.AsString='rowInsertUpdate')
      then
      begin
        VisibleRow.Visible:=True;
        ListOfVisibleColumns.Add(VisibleRow);
      end;
    end;
    Db_Type_Clmns.Next;
  end;

  With Grid_Info
  Do
   For i := 0 to Rows.Count - 1
   Do
     if ListOfVisibleColumns.IndexOf(Rows[i])=-1
     then
       Rows[i].Visible:=False;

    ListOfVisibleColumns.Free;
end;

procedure TForm_Doc_Info.P_Apply_Det(Vl_Det_Params: TDynVarsEh);
var
v_New_Doc_Number,
v_Execute_Ceh_Kode :String;
V_In_Params,
v_Out_Det_Mar_Params,
v_Out_Cancel_Doc_Params,
v_Out_Main_Doc_Params: TDynVarsEh;

Button_Selected :Integer;
  i: Integer;
begin
  If FDocViewState in [dsInsert, dsNewModif]
  Then
  Begin
    if Db_Doc_InfoDOC_NUM.IsNull
    then
      Db_Doc_InfoDOC_NUM.AsString := PKG_TP_DOC.CallStringFunction( 'F_Get_Doc_Num', [ Db_Doc_InfoDET_ID.AsInteger,
                                                                          Db_Doc_InfoCEH_ID.AsInteger,
                                                                          1,
                                                                          LCB_Doc_Type.KeyValue ] );
    if (Grid_Info.FindFieldColumn('TP_WORK_TYPE_NAME').Visible) and (Db_Doc_InfoTP_WORK_TYPE.IsNull)
    then
    begin
      MessageDlg('Укажите вид работ!', mtError, [mbOK], 0);
      Db_Doc_InfoDET_ID.Clear;
      Db_Doc_InfoDET_NUM.Clear;
      Db_Doc_InfoDET_NAME.Clear;
      Abort;
    end;

    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    V_In_Params.DynVar[ 'Find' ].AsString := 'TECH_DOC';
    V_In_Params.DynVar[ 'Columns' ].Clear;
    V_In_Params.DynVar[ 'Filter' ].AsString := Format('Det_Id=%s And Ceh_Id=%s And Doc_Type=%s And Nvl(Tp_Work_Type,0)=%d', [Vl_Det_Params.DynVar['ID_DET'].AsString,
                                                                                                    Db_Doc_Info.FieldByName('CEH_ID').AsString,
                                                                                                    LCB_Doc_Type.KeyValue,
                                                                                                    Db_Doc_InfoTp_Work_Type.AsInteger]);
    v_Out_Cancel_Doc_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
    If v_Out_Cancel_Doc_Params <> Nil
    Then
    Begin
      Button_Selected := MessageDlg ( 'Для этой детали уже имеется документ по вашему цеху!'
                                       + #13#10
                                       + 'Создать новую версию?',
                                       mtConfirmation,
                                       mbOKCancel, 5 );
      if Button_Selected = mrOk
      then
        P_CopyOldVersion
      Else
      Begin
        Db_Doc_InfoDET_ID.Clear;
        Db_Doc_InfoDET_NUM.Clear;
        Db_Doc_InfoDET_NAME.Clear;
        Abort;
      End;
    End
    else
    begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Params.DynVar[ 'Find' ].AsString := 'DOC';
      V_In_Params.DynVar[ 'Columns' ].Clear;
      V_In_Params.DynVar[ 'Filter' ].AsString := Format('Det_Id=%s And Main_Doc_Id Is Null And Date_End_Action is Null And Nvl(Date_Start_Action, Sysdate) <= Sysdate And Doc_Type=%s And Nvl(Tp_Work_Type,0)=%d', [Vl_Det_Params.DynVar['ID_DET'].AsString,
                                                                                                                                                                                                                      LCB_Doc_Type.KeyValue,
                                                                                                                                                                                                                      Db_Doc_InfoTp_Work_Type.AsInteger]);
      v_Out_Main_Doc_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
      If Db_Doc_InfoCEH_ID.AsInteger <> 17
      Then
      Begin
        if (Db_Doc_InfoMAIN_DOC_ID.IsNull)
            and (v_Out_Main_Doc_Params <> Nil)
        then
        begin
          Db_Doc_InfoDET_MAR.AsString := v_Out_Main_Doc_Params.DynVar[ 'SEC_ADDIT_INFO' ].AsString;
          Db_Doc_InfoMAIN_DOC_ID.AsInteger := v_Out_Main_Doc_Params.DynVar[ 'ID_DOC' ].AsInteger;
          Db_Doc_InfoMAIN_DOC_NUM.AsString := v_Out_Main_Doc_Params.DynVar[ 'NUM_DOC' ].AsString;
        end;

        if Db_Doc_InfoDET_MAR.IsNull
        then
        begin
          V_In_Params.DynVar[ 'Find' ].AsString := 'DET_MAR';
          V_In_Params.DynVar[ 'Columns' ].Clear;
          V_In_Params.DynVar[ 'Filter' ].AsString := ' Id_Det = ' + Db_Doc_InfoDET_ID.AsString;
          v_Out_Det_Mar_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
          If v_Out_Det_Mar_Params <> Nil
          Then
          Begin
            Db_Doc_InfoDET_MAR.AsString := v_Out_Det_Mar_Params.DynVar[ 'MAR' ].AsString;
            if PKG_TP_DOC.CallIntegerFunction('F_Count_Uniq_Depart_In_Mar', [ Db_Doc_InfoDET_MAR.AsString ]) > 1
            Then
            Begin
              Seq_Main_Doc_Id.Execute;
              Db_Doc_InfoMAIN_DOC_ID.AsInteger := Seq_Main_Doc_Id.FieldAsInteger(0);
            End;
          End
          Else
          Begin
            Db_Doc_InfoDET_MAR.AsString := Vl_Det_Params.DynVar[ 'MAR' ].AsString;
            if PKG_TP_DOC.CallIntegerFunction('F_Count_Uniq_Depart_In_Mar', [ Db_Doc_InfoDET_MAR.AsString ]) > 1
            Then
            Begin
              Seq_Main_Doc_Id.Execute;
              Db_Doc_InfoMAIN_DOC_ID.AsInteger := Seq_Main_Doc_Id.FieldAsInteger(0);
            End;
          End;
        end;

      End
      else if (Db_Doc_InfoCEH_ID.AsInteger = 17)
              and (v_Out_Main_Doc_Params <> Nil)
      then
      begin
        PKG_TP_DOC.CallProcedure('P_CreateMainDocInDocHeaders', [v_Out_Main_Doc_Params.DynVar['Doc_Header_Id'].AsInteger]);
        DM_Main.Session.CancelUpdates([Db_Doc_Info]);
        Db_Doc_Info.Close;
        Db_Doc_Info.SetVariable(0, v_Out_Main_Doc_Params.DynVar['Doc_Header_Id'].AsInteger);
        Db_Doc_Info.Open;
        CloseWithOutSaving := True;
        ModalResult := mrOk;
      end;
    end;

  End;

  If PKG_TP_DOC.CallIntegerFunction('F_Find_Tp_In_Old_Programm', [ Vl_Det_Params.DynVar[ 'DET_NUM' ].AsString ]) = 1
  Then
    MessageDlg( 'Для данной детали имеется ТП в старом ПО!', mtInformation, [ mbOK ], 5 );

  if Db_Doc_InfoDET_MAR.IsNull
  then
  begin
    V_In_Params.DynVar[ 'Find' ].AsString := 'DET_MAR';
    V_In_Params.DynVar[ 'Columns' ].Clear;
    V_In_Params.DynVar[ 'Filter' ].AsString := ' Id_Det=' + Db_Doc_InfoDET_ID.AsString;
    v_Out_Det_Mar_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
    If v_Out_Det_Mar_Params <> Nil
    Then
      Db_Doc_InfoDET_MAR.AsString := v_Out_Det_Mar_Params.DynVar[ 'MAR' ].AsString
    else
      Db_Doc_InfoDET_MAR.AsString := Vl_Det_Params.DynVar[ 'MAR' ].AsString;
  end;

  PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, Db_Doc_InfoDET_MAR.AsString ] );
  if DB_APPR_LIST.Active
  then
    DB_APPR_LIST.Refresh;
end;


Procedure TForm_Doc_Info.P_Change_Edit_Param;
Var
  i, j: Integer;
  collmn: String;
  Arr_Vsb_Coll: TArrayOfArrayString;
begin
  If FDocViewState=dsInsert
  Then
    LCB_Doc_Type.Visible := True
  Else if FDocViewState=dsUpdate
  Then
    LCB_Doc_Type.Visible := False
end;

procedure TForm_Doc_Info.P_CopyOldVersion;
var
 i: Integer;
begin
  with Db_Old_Version
  do
  begin
    Close;
    SetVariable(0, FDocHeaderId);
    Open;

    Db_Doc_Info.Edit;
    for i := 0 to FieldCount-1
    do
    begin
      if (Fields[i].FieldName <> 'ID_VERS')
          and (Fields[i].FieldName <> 'DOC_HEADER_ID')
          and (Fields[i].FieldName <> 'AUTHOR_NAME')
          and (Fields[i].FieldName <> 'AUTHOR_LNUM')
          and (Fields[i].FieldName <> 'REASON')
          and (Fields[i].FieldName <> 'PARENT_DOC_ID')
      then
      begin
        Db_Doc_Info.FieldByName(Fields[i].FieldName).AsString := Fields[i].AsString;
      end;
    end;
    Q_Get_New_Vers_Id.SetVariable('v_Doc_Id', FieldByName('Id').AsString);
    Q_Get_New_Vers_Id.Execute;
    Db_Doc_Info.FieldByName('Id_Vers').AsInteger := Q_Get_New_Vers_Id.FieldAsInteger(0);
    Db_Doc_Info.FieldByName('Parent_Doc_Id').AsInteger := FieldByName('DOC_HEADER_ID').AsInteger;
    if Db_Doc_Info.FieldByName('Doc_Type').AsString = '1'
    then
    begin
      Db_Doc_Info.FieldByName('Doc_Num').AsString := PKG_TP_DOC.CallStringFunction( 'F_Get_Doc_Num', [ Db_Doc_Info.FieldByName('Det_Id').AsInteger,
                                                                          Db_Doc_Info.FieldByName('Ceh_Id').AsInteger,
                                                                          1,
                                                                          1 ] );


      PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ Db_Doc_Info.FieldByName('Doc_Type').AsString,
                                                         Db_Doc_Info.FieldByName('Det_Mar').AsString ] );
      if not DB_APPR_LIST.Active
      then
        Db_Appr_List.Open;

      DB_APPR_LIST.Refresh
    end;
  end;
end;

end.
