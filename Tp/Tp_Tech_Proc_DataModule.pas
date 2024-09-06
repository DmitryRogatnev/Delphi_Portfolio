unit Tp_Tech_Proc_DataModule;

interface

uses
  System.SysUtils, System.Classes, MemTableDataEh, Data.DB, Oracle, MemTableEh,
  DataDriverEh, OracleData, System.Variants, DynVarsEh, Winapi.Windows,
  Winapi.Messages, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, ToolCtrlsEh;

type
  TDm_Tech_Proc = class(TDataModule)
    Db_Doc_Parts: TOracleDataSet;
    Driver_Doc_Parts: TDataSetDriverEh;
    MemT_Doc_Parts: TMemTableEh;
    Data_Doc_Parts: TDataSource;
    Seq_Db_Doc_Parts: TOracleQuery;
    Driver_Opers: TDataSetDriverEh;
    Db_Opers: TOracleDataSet;
    MemT_Opers: TMemTableEh;
    Seq_Db_Opers: TOracleQuery;
    Data_Opers: TDataSource;
    Db_Per_Details: TOracleDataSet;
    Driver_Per_Details: TDataSetDriverEh;
    MemT_Per_Details: TMemTableEh;
    Data_Per_Details: TDataSource;
    Seq_Db_Per_Details: TOracleQuery;
    Seq_Db_Oper_Per: TOracleQuery;
    Data_Oper_Per: TDataSource;
    MemT_Oper_Per: TMemTableEh;
    Driver_Oper_Per: TDataSetDriverEh;
    Db_Oper_Per: TOracleDataSet;
    Seq_Db_Per_Materials: TOracleQuery;
    Data_Per_Materials: TDataSource;
    MemT_Per_Materials: TMemTableEh;
    Driver_Per_Materials: TDataSetDriverEh;
    Db_Per_Materials: TOracleDataSet;
    Seq_Db_Per_Instruments: TOracleQuery;
    Data_Per_Instruments: TDataSource;
    MemT_Per_Instruments: TMemTableEh;
    Driver_Per_Instruments: TDataSetDriverEh;
    Db_Per_Instruments: TOracleDataSet;
    Seq_Db_Per_Osnast: TOracleQuery;
    Data_Per_Osnast: TDataSource;
    MemT_Per_Osnast: TMemTableEh;
    MemT_Per_OsnastID: TFloatField;
    MemT_Per_OsnastID_ROW_PER: TFloatField;
    MemT_Per_OsnastSHOSN_ID: TFloatField;
    MemT_Per_OsnastDOK_IN: TFloatField;
    MemT_Per_OsnastDOK_OUT: TFloatField;
    MemT_Per_OsnastDATAIZM: TDateTimeField;
    MemT_Per_OsnastRAZRAB: TFloatField;
    MemT_Per_OsnastSHOSN_NUM: TStringField;
    MemT_Per_OsnastSHOSN_NAME: TStringField;
    MemT_Per_OsnastRAZRAB_NAME: TStringField;
    MemT_Per_OsnastSHOSN_NOM: TFloatField;
    MemT_Per_OsnastUSER_ID_INSRT: TStringField;
    MemT_Per_OsnastDATE_INSRT: TDateTimeField;
    MemT_Per_OsnastUSER_ID_CORR: TStringField;
    Driver_Per_Osnast: TDataSetDriverEh;
    Db_Per_Osnast: TOracleDataSet;
    Db_Per_OsnastID: TFloatField;
    Db_Per_OsnastID_ROW_PER: TFloatField;
    Db_Per_OsnastSHOSN_ID: TFloatField;
    Db_Per_OsnastDOK_IN: TFloatField;
    Db_Per_OsnastDOK_OUT: TFloatField;
    Db_Per_OsnastDATAIZM: TDateTimeField;
    Db_Per_OsnastRAZRAB: TFloatField;
    Db_Per_OsnastSHOSN_NUM: TStringField;
    Db_Per_OsnastSHOSN_NAME: TStringField;
    Db_Per_OsnastRAZRAB_NAME: TStringField;
    Db_Per_OsnastSHOSN_NOM: TFloatField;
    Db_Per_OsnastUSER_ID_INSRT: TStringField;
    Db_Per_OsnastDATE_INSRT: TDateTimeField;
    Db_Per_OsnastUSER_ID_CORR: TStringField;
    Db_Oper_Params: TOracleDataSet;
    Data_Oper_Params: TDataSource;
    Driver_Oper_Params: TDataSetDriverEh;
    MemT_Oper_Params: TMemTableEh;
    Seq_Oper_Params: TOracleQuery;
    Seq_Per_Params: TOracleQuery;
    Data_Per_Params: TDataSource;
    MemT_Per_Params: TMemTableEh;
    Driver_Per_Params: TDataSetDriverEh;
    Db_Per_Params: TOracleDataSet;
    Seq_Oper_Time: TOracleQuery;
    Data_Oper_Time: TDataSource;
    MemT_Oper_Time: TMemTableEh;
    Driver_Oper_Time: TDataSetDriverEh;
    Db_Oper_Time: TOracleDataSet;
    Seq_Oper_Time_Works: TOracleQuery;
    Data_Oper_Time_Works: TDataSource;
    MemT_Oper_Time_Works: TMemTableEh;
    Driver_Oper_Time_Works: TDataSetDriverEh;
    Db_Oper_Time_Works: TOracleDataSet;
    Db_Per_Params_List: TOracleDataSet;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    Db_Oper_Params_List: TOracleDataSet;
    Db_Oper_Params_ListID_ROW_O_PR_LNK: TIntegerField;
    Db_Oper_Params_ListID_OPER: TFloatField;
    Db_Oper_Params_ListID_DEP: TFloatField;
    Db_Oper_Params_ListID_DEP_GROUP: TFloatField;
    Db_Oper_Params_ListNAME_PARAM: TStringField;
    Db_Oper_Params_ListTYPE_PARAM: TStringField;
    Db_Oper_Params_ListPARAM_ROW_ID: TIntegerField;
    Pkg_Tp_Doc: TOraclePackage;
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
    Db_Instr_Card: TOracleDataSet;
    Driver_Instr_Card: TDataSetDriverEh;
    MemT_Instr_Card: TMemTableEh;
    Data_Instr_Card: TDataSource;
    Seq_Instr_Card: TOracleQuery;
    Db_Instr_Crd_Prms: TOracleDataSet;
    Driver_Instr_Crd_Prms: TDataSetDriverEh;
    MemT_Instr_Crd_Prms: TMemTableEh;
    Data_Instr_Crd_Prms: TDataSource;
    Seq_Instr_Crd_Prms: TOracleQuery;
    Db_Ins_Crd_Per_Instrs: TOracleDataSet;
    Driver_Ins_Crd_Per_Instrs: TDataSetDriverEh;
    MemT_Ins_Crd_Per_Instrs: TMemTableEh;
    Data_Ins_Crd_Per_Instrs: TDataSource;
    Seq_Ins_Crd_Per_Instrs: TOracleQuery;
    Db_Ins_Crd_Ins_Tmplts: TOracleDataSet;
    Driver_Ins_Crd_Ins_Tmplts: TDataSetDriverEh;
    MemT_Ins_Crd_Ins_Tmplts: TMemTableEh;
    Data_Ins_Crd_Ins_Tmplts: TDataSource;
    Seq_Ins_Crd_Ins_Tmplts: TOracleQuery;
    Db_Ins_Crd_Ins_Tmp_Prms: TOracleDataSet;
    Driver_Ins_Crd_Ins_Tmp_Prms: TDataSetDriverEh;
    MemT_Ins_Crd_Ins_Tmp_Prms: TMemTableEh;
    Data_Ins_Crd_Ins_Tmp_Prms: TDataSource;
    Seq_Ins_Crd_Ins_Tmp_Prms: TOracleQuery;
    Db_Instr_Crd_Tmp_Prms_List: TOracleDataSet;
    Db_Instr_Crd_Tmp_Prms_ListID_RW_INS_CRD_TMP_PR_LNK: TIntegerField;
    Db_Instr_Crd_Tmp_Prms_ListTMPLT_RW_ID: TIntegerField;
    Db_Instr_Crd_Tmp_Prms_ListTMPLT_NAME: TStringField;
    Db_Instr_Crd_Tmp_Prms_ListPARAM_ROW_ID: TIntegerField;
    Db_Instr_Crd_Tmp_Prms_ListTYPE_PARAM: TStringField;
    Db_Instr_Crd_Tmp_Prms_ListNAME_PARAM: TStringField;
    Db_Instr_Crd_Tmp_Prms_ListUSER_INSERT: TStringField;
    Db_Instr_Crd_Tmp_Prms_ListDATE_INSERT: TDateTimeField;
    Db_Instr_Crd_Tmp_Prms_ListUSER_CHANGE: TStringField;
    Db_Instr_Crd_Tmp_Prms_ListDATE_CHANGE: TDateTimeField;
    IdHTTP1: TIdHTTP;
    Db_Instr_Tmplt_Prms_List: TOracleDataSet;
    Db_Instr_Tmplt_Prms_ListID_ROW_INS_TMPLT_PR_LNK: TIntegerField;
    Db_Instr_Tmplt_Prms_ListTMPLT_RW_ID: TIntegerField;
    Db_Instr_Tmplt_Prms_ListPARAM_ROW_ID: TIntegerField;
    Db_Instr_Tmplt_Prms_ListTYPE_PARAM: TStringField;
    Db_Instr_Tmplt_Prms_ListNAME_PARAM: TStringField;
    Db_Instr_Tmplt_Prms_ListUSER_INSERT: TStringField;
    Db_Instr_Tmplt_Prms_ListDATE_INSERT: TDateTimeField;
    Db_Instr_Tmplt_Prms_ListUSER_CHANGE: TStringField;
    Db_Instr_Tmplt_Prms_ListDATE_CHANGE: TDateTimeField;
    Db_Doc_InfoIZD_NAME_TYPE: TStringField;
    Db_Linked_Instr_List: TOracleDataSet;
    Db_Linked_Instr_ListPRNT_INSTR_CODE: TStringField;
    Db_Linked_Instr_ListPRNT_INSTR_ID: TFloatField;
    Db_Linked_Instr_ListPRNT_INSTR_NAME: TStringField;
    Db_Linked_Instr_ListPRNT_INSTR_SORT: TStringField;
    Db_Linked_Instr_ListPRNT_INSTR_GOST: TStringField;
    Db_Linked_Instr_ListPRNT_INSTR_FULL_NAME: TStringField;
    Db_Linked_Instr_ListCHLD_INSTR_CODE: TStringField;
    Db_Linked_Instr_ListCHLD_INSTR_ID: TFloatField;
    Db_Linked_Instr_ListCHLD_INSTR_NAME: TStringField;
    Db_Linked_Instr_ListCHLD_INSTR_SORT: TStringField;
    Db_Linked_Instr_ListCHLD_INSTR_GOST: TStringField;
    Db_Linked_Instr_ListCHLD_INSTR_FULL_NAME: TStringField;
    Data_Linked_Instr_List: TDataSource;
    Db_Instr_Card_Img_Rep: TOracleDataSet;
    Db_Ins_Crd_Instr_Img: TOracleDataSet;
    Data_Ins_Crd_Per_Link_Instrs: TDataSource;
    MemT_Ins_Crd_Per_Link_Instrs: TMemTableEh;
    Driver_Ins_Crd_Per_Link_Instrs: TDataSetDriverEh;
    Db_Ins_Crd_Per_Link_Instrs: TOracleDataSet;
    Db_Oper_TimeID_RW_OP_TIME: TFloatField;
    Db_Oper_TimeOPER_RW_ID: TFloatField;
    Db_Oper_TimeGRP_OPER_RW_ID: TFloatField;
    Db_Oper_TimeDOC_TP_ID: TFloatField;
    Db_Oper_TimeALL_OPER_TIME: TFloatField;
    Db_Oper_TimeALL_OPER_TIME_PERC: TFloatField;
    Db_Oper_TimeUSING_NORM_ID: TFloatField;
    Db_Oper_TimeUSING_NORM_TIME: TFloatField;
    Db_Oper_TimePROF_CODE: TStringField;
    Db_Oper_TimePROF_CTN: TIntegerField;
    Db_Oper_TimePROF_CLASS: TIntegerField;
    Db_Oper_TimePROF_MONEY: TFloatField;
    Db_Oper_TimeUNIT_TIME: TFloatField;
    Db_Oper_TimeOPER_TIME: TFloatField;
    Db_Oper_TimeSETUP_TIME: TFloatField;
    Db_Oper_TimeUNIT_COUNT: TIntegerField;
    Db_Oper_TimeUSER_INSERT: TStringField;
    Db_Oper_TimeDATE_INSERT: TDateTimeField;
    Db_Oper_TimeUSER_CHANGE: TStringField;
    Db_Oper_TimeDATE_CHANGE: TDateTimeField;
    Db_Oper_TimeMAIN_DOC_ID: TFloatField;
    Db_Oper_ParamsID_ROW_TP_OP_PRM: TIntegerField;
    Db_Oper_ParamsOPER_ROW_ID: TFloatField;
    Db_Oper_ParamsPARAM_ROW_ID: TIntegerField;
    Db_Oper_ParamsDOC_TP_ID: TFloatField;
    Db_Oper_ParamsNAME_PARAM: TStringField;
    Db_Oper_ParamsTYPE_PARAM: TStringField;
    Db_Oper_ParamsNUMERIC_VL: TFloatField;
    Db_Oper_ParamsTEXT_VL: TStringField;
    Db_Oper_ParamsPARAM_CH_ROW_ID: TIntegerField;
    Db_Oper_ParamsPARAM_VALUE: TStringField;
    Db_Oper_ParamsUSER_INSERT: TStringField;
    Db_Oper_ParamsDATE_INSERT: TDateTimeField;
    Db_Oper_ParamsUSER_CHANGE: TStringField;
    Db_Oper_ParamsDATE_CHANGE: TDateTimeField;
    Db_Oper_ParamsMAIN_DOC_ID: TFloatField;
    MemT_Oper_ParamsID_ROW_TP_OP_PRM: TIntegerField;
    MemT_Oper_ParamsOPER_ROW_ID: TFloatField;
    MemT_Oper_ParamsPARAM_ROW_ID: TIntegerField;
    MemT_Oper_ParamsDOC_TP_ID: TFloatField;
    MemT_Oper_ParamsNAME_PARAM: TStringField;
    MemT_Oper_ParamsTYPE_PARAM: TStringField;
    MemT_Oper_ParamsNUMERIC_VL: TFloatField;
    MemT_Oper_ParamsTEXT_VL: TStringField;
    MemT_Oper_ParamsPARAM_CH_ROW_ID: TIntegerField;
    MemT_Oper_ParamsPARAM_VALUE: TStringField;
    MemT_Oper_ParamsUSER_INSERT: TStringField;
    MemT_Oper_ParamsDATE_INSERT: TDateTimeField;
    MemT_Oper_ParamsUSER_CHANGE: TStringField;
    MemT_Oper_ParamsDATE_CHANGE: TDateTimeField;
    MemT_Oper_ParamsMAIN_DOC_ID: TFloatField;
    MemT_Oper_TimeID_RW_OP_TIME: TFloatField;
    MemT_Oper_TimeOPER_RW_ID: TFloatField;
    MemT_Oper_TimeGRP_OPER_RW_ID: TFloatField;
    MemT_Oper_TimeDOC_TP_ID: TFloatField;
    MemT_Oper_TimeALL_OPER_TIME: TFloatField;
    MemT_Oper_TimeALL_OPER_TIME_PERC: TFloatField;
    MemT_Oper_TimeUSING_NORM_ID: TFloatField;
    MemT_Oper_TimeUSING_NORM_TIME: TFloatField;
    MemT_Oper_TimePROF_CODE: TStringField;
    MemT_Oper_TimePROF_CTN: TIntegerField;
    MemT_Oper_TimePROF_CLASS: TIntegerField;
    MemT_Oper_TimePROF_MONEY: TFloatField;
    MemT_Oper_TimeUNIT_TIME: TFloatField;
    MemT_Oper_TimeOPER_TIME: TFloatField;
    MemT_Oper_TimeSETUP_TIME: TFloatField;
    MemT_Oper_TimeUNIT_COUNT: TIntegerField;
    MemT_Oper_TimeUSER_INSERT: TStringField;
    MemT_Oper_TimeDATE_INSERT: TDateTimeField;
    MemT_Oper_TimeUSER_CHANGE: TStringField;
    MemT_Oper_TimeDATE_CHANGE: TDateTimeField;
    MemT_Oper_TimeMAIN_DOC_ID: TFloatField;
    Db_Oper_Time_WorksID_RW_OP_WRK_T: TFloatField;
    Db_Oper_Time_WorksOPER_RW_ID: TFloatField;
    Db_Oper_Time_WorksGRP_OPER_RW_ID: TFloatField;
    Db_Oper_Time_WorksDOC_TP_ID: TFloatField;
    Db_Oper_Time_WorksWRK_RW_ID: TIntegerField;
    Db_Oper_Time_WorksWORK_NAME: TStringField;
    Db_Oper_Time_WorksWRK_TIME: TFloatField;
    Db_Oper_Time_WorksUSER_INSERT: TStringField;
    Db_Oper_Time_WorksDATE_INSERT: TDateTimeField;
    Db_Oper_Time_WorksUSER_CHANGE: TStringField;
    Db_Oper_Time_WorksDATE_CHANGE: TDateTimeField;
    MemT_Oper_Time_WorksID_RW_OP_WRK_T: TFloatField;
    MemT_Oper_Time_WorksOPER_RW_ID: TFloatField;
    MemT_Oper_Time_WorksGRP_OPER_RW_ID: TFloatField;
    MemT_Oper_Time_WorksDOC_TP_ID: TFloatField;
    MemT_Oper_Time_WorksWRK_RW_ID: TIntegerField;
    MemT_Oper_Time_WorksWORK_NAME: TStringField;
    MemT_Oper_Time_WorksWRK_TIME: TFloatField;
    MemT_Oper_Time_WorksUSER_INSERT: TStringField;
    MemT_Oper_Time_WorksDATE_INSERT: TDateTimeField;
    MemT_Oper_Time_WorksUSER_CHANGE: TStringField;
    MemT_Oper_Time_WorksDATE_CHANGE: TDateTimeField;
    Db_Instr_CardID_RW_INS_CRD: TIntegerField;
    Db_Instr_CardDOC_TP_ID: TIntegerField;
    Db_Instr_CardOPER_RW_ID: TIntegerField;
    Db_Instr_CardCRD_NUM: TStringField;
    Db_Instr_CardCRD_TMPLT_ID: TIntegerField;
    Db_Instr_CardCRD_TMPLT_NAME: TStringField;
    Db_Instr_CardCRD_TMPLT_IMG_PATH: TStringField;
    Db_Instr_CardCRD_PRIM: TStringField;
    Db_Instr_CardUSER_INSERT: TStringField;
    Db_Instr_CardUSER_INSERT_NAME: TStringField;
    Db_Instr_CardDATE_INSERT: TDateTimeField;
    Db_Instr_CardUSER_CHANGE: TStringField;
    Db_Instr_CardUSER_CHANGE_NAME: TStringField;
    Db_Instr_CardDATE_CHANGE: TDateTimeField;
    Db_Instr_Crd_PrmsID_RW_TP_OP_INS_CRD_PRM: TIntegerField;
    Db_Instr_Crd_PrmsCRD_RW_ID: TFloatField;
    Db_Instr_Crd_PrmsDOC_TP_ID: TFloatField;
    Db_Instr_Crd_PrmsPARAM_ROW_ID: TIntegerField;
    Db_Instr_Crd_PrmsNAME_PARAM: TStringField;
    Db_Instr_Crd_PrmsTYPE_PARAM: TStringField;
    Db_Instr_Crd_PrmsNUMERIC_VL: TFloatField;
    Db_Instr_Crd_PrmsTEXT_VL: TStringField;
    Db_Instr_Crd_PrmsPARAM_CH_ROW_ID: TIntegerField;
    Db_Instr_Crd_PrmsPARAM_VALUE: TStringField;
    Db_Instr_Crd_PrmsUSER_INSERT: TStringField;
    Db_Instr_Crd_PrmsDATE_INSERT: TDateTimeField;
    Db_Instr_Crd_PrmsUSER_CHANGE: TStringField;
    Db_Instr_Crd_PrmsDATE_CHANGE: TDateTimeField;
    MemT_Instr_Crd_PrmsID_RW_TP_OP_INS_CRD_PRM: TIntegerField;
    MemT_Instr_Crd_PrmsCRD_RW_ID: TFloatField;
    MemT_Instr_Crd_PrmsDOC_TP_ID: TFloatField;
    MemT_Instr_Crd_PrmsPARAM_ROW_ID: TIntegerField;
    MemT_Instr_Crd_PrmsNAME_PARAM: TStringField;
    MemT_Instr_Crd_PrmsTYPE_PARAM: TStringField;
    MemT_Instr_Crd_PrmsNUMERIC_VL: TFloatField;
    MemT_Instr_Crd_PrmsTEXT_VL: TStringField;
    MemT_Instr_Crd_PrmsPARAM_CH_ROW_ID: TIntegerField;
    MemT_Instr_Crd_PrmsPARAM_VALUE: TStringField;
    MemT_Instr_Crd_PrmsUSER_INSERT: TStringField;
    MemT_Instr_Crd_PrmsDATE_INSERT: TDateTimeField;
    MemT_Instr_Crd_PrmsUSER_CHANGE: TStringField;
    MemT_Instr_Crd_PrmsDATE_CHANGE: TDateTimeField;
    Db_Per_DetailsID: TFloatField;
    Db_Per_DetailsID_ROW_PER: TFloatField;
    Db_Per_DetailsDOK_IN: TFloatField;
    Db_Per_DetailsDET_ID: TFloatField;
    Db_Per_DetailsDET_NUM: TStringField;
    Db_Per_DetailsDET_NAME: TStringField;
    Db_Per_DetailsNOM_DET: TIntegerField;
    Db_Per_DetailsRAZRAB: TFloatField;
    Db_Per_DetailsKOL: TFloatField;
    Db_Per_DetailsDOK_OUT: TFloatField;
    Db_Per_DetailsUSER_ID_INSRT: TStringField;
    Db_Per_DetailsDATE_INSRT: TDateTimeField;
    Db_Per_DetailsUSER_ID_CORR: TStringField;
    Db_Per_DetailsDATAIZM: TDateTimeField;
    Db_Per_DetailsRAZRAB_NAME: TStringField;
    MemT_Per_DetailsID: TFloatField;
    MemT_Per_DetailsID_ROW_PER: TFloatField;
    MemT_Per_DetailsDOK_IN: TFloatField;
    MemT_Per_DetailsDET_ID: TFloatField;
    MemT_Per_DetailsDET_NUM: TStringField;
    MemT_Per_DetailsDET_NAME: TStringField;
    MemT_Per_DetailsNOM_DET: TIntegerField;
    MemT_Per_DetailsRAZRAB: TFloatField;
    MemT_Per_DetailsKOL: TFloatField;
    MemT_Per_DetailsDOK_OUT: TFloatField;
    MemT_Per_DetailsUSER_ID_INSRT: TStringField;
    MemT_Per_DetailsDATE_INSRT: TDateTimeField;
    MemT_Per_DetailsUSER_ID_CORR: TStringField;
    MemT_Per_DetailsDATAIZM: TDateTimeField;
    MemT_Per_DetailsRAZRAB_NAME: TStringField;
    Db_Per_MaterialsID: TFloatField;
    Db_Per_MaterialsID_ROW_PER: TFloatField;
    Db_Per_MaterialsDOK_IN: TFloatField;
    Db_Per_MaterialsDOK_OUT: TFloatField;
    Db_Per_MaterialsMAT_ID: TFloatField;
    Db_Per_MaterialsNOM_MAT: TIntegerField;
    Db_Per_MaterialsRAZRAB: TFloatField;
    Db_Per_MaterialsNORMA_MIN: TFloatField;
    Db_Per_MaterialsNORMA_MAX: TFloatField;
    Db_Per_MaterialsED_ID: TFloatField;
    Db_Per_MaterialsMAT_NAME: TStringField;
    Db_Per_MaterialsED_NAME: TStringField;
    Db_Per_MaterialsED_F_NAME: TStringField;
    Db_Per_MaterialsMAT_VISCOS: TStringField;
    Db_Per_MaterialsUSER_ID_INSRT: TStringField;
    Db_Per_MaterialsDATE_INSRT: TDateTimeField;
    Db_Per_MaterialsUSER_ID_CORR: TStringField;
    Db_Per_MaterialsDATAIZM: TDateTimeField;
    Db_Per_MaterialsRAZRAB_NAME: TStringField;
    MemT_Per_MaterialsID: TFloatField;
    MemT_Per_MaterialsID_ROW_PER: TFloatField;
    MemT_Per_MaterialsDOK_IN: TFloatField;
    MemT_Per_MaterialsDOK_OUT: TFloatField;
    MemT_Per_MaterialsMAT_ID: TFloatField;
    MemT_Per_MaterialsNOM_MAT: TIntegerField;
    MemT_Per_MaterialsRAZRAB: TFloatField;
    MemT_Per_MaterialsNORMA_MIN: TFloatField;
    MemT_Per_MaterialsNORMA_MAX: TFloatField;
    MemT_Per_MaterialsED_ID: TFloatField;
    MemT_Per_MaterialsMAT_NAME: TStringField;
    MemT_Per_MaterialsED_NAME: TStringField;
    MemT_Per_MaterialsED_F_NAME: TStringField;
    MemT_Per_MaterialsMAT_VISCOS: TStringField;
    MemT_Per_MaterialsUSER_ID_INSRT: TStringField;
    MemT_Per_MaterialsDATE_INSRT: TDateTimeField;
    MemT_Per_MaterialsUSER_ID_CORR: TStringField;
    MemT_Per_MaterialsDATAIZM: TDateTimeField;
    MemT_Per_MaterialsRAZRAB_NAME: TStringField;
    Db_Per_ParamsID_ROW_TP_PR_PRM: TIntegerField;
    Db_Per_ParamsPER_ROW_ID: TFloatField;
    Db_Per_ParamsDOC_TP_ID: TFloatField;
    Db_Per_ParamsPARAM_ROW_ID: TIntegerField;
    Db_Per_ParamsNAME_PARAM: TStringField;
    Db_Per_ParamsTYPE_PARAM: TStringField;
    Db_Per_ParamsNUMERIC_VL: TFloatField;
    Db_Per_ParamsTEXT_VL: TStringField;
    Db_Per_ParamsPARAM_CH_ROW_ID: TIntegerField;
    Db_Per_ParamsPARAM_VALUE: TStringField;
    Db_Per_ParamsUSER_INSERT: TStringField;
    Db_Per_ParamsDATE_INSERT: TDateTimeField;
    Db_Per_ParamsUSER_CHANGE: TStringField;
    Db_Per_ParamsDATE_CHANGE: TDateTimeField;
    MemT_Per_ParamsID_ROW_TP_PR_PRM: TIntegerField;
    MemT_Per_ParamsPER_ROW_ID: TFloatField;
    MemT_Per_ParamsDOC_TP_ID: TFloatField;
    MemT_Per_ParamsPARAM_ROW_ID: TIntegerField;
    MemT_Per_ParamsNAME_PARAM: TStringField;
    MemT_Per_ParamsTYPE_PARAM: TStringField;
    MemT_Per_ParamsNUMERIC_VL: TFloatField;
    MemT_Per_ParamsTEXT_VL: TStringField;
    MemT_Per_ParamsPARAM_CH_ROW_ID: TIntegerField;
    MemT_Per_ParamsPARAM_VALUE: TStringField;
    MemT_Per_ParamsUSER_INSERT: TStringField;
    MemT_Per_ParamsDATE_INSERT: TDateTimeField;
    MemT_Per_ParamsUSER_CHANGE: TStringField;
    MemT_Per_ParamsDATE_CHANGE: TDateTimeField;
    Db_Ins_Crd_Per_InstrsID_RW_TP_PER_INS_CRD: TIntegerField;
    Db_Ins_Crd_Per_InstrsCRD_INS_PER_TP_RW_ID: TIntegerField;
    Db_Ins_Crd_Per_InstrsCRD_INS_RW_ID: TIntegerField;
    Db_Ins_Crd_Per_InstrsPER_RW_ID: TIntegerField;
    Db_Ins_Crd_Per_InstrsDOC_TP_ID: TIntegerField;
    Db_Ins_Crd_Per_InstrsINS_ID: TIntegerField;
    Db_Ins_Crd_Per_InstrsINS_NAME: TStringField;
    Db_Ins_Crd_Per_InstrsINS_CORR_COEF: TFloatField;
    Db_Ins_Crd_Per_InstrsINS_STRONG: TFloatField;
    Db_Ins_Crd_Per_InstrsINS_FACES_NUM: TIntegerField;
    Db_Ins_Crd_Per_InstrsINS_COUNT: TIntegerField;
    Db_Ins_Crd_Per_InstrsINS_WRK_TIME: TIntegerField;
    Db_Ins_Crd_Per_InstrsUSER_INSERT: TStringField;
    Db_Ins_Crd_Per_InstrsDATE_INSERT: TDateTimeField;
    Db_Ins_Crd_Per_InstrsUSER_CHANGE: TStringField;
    Db_Ins_Crd_Per_InstrsDATE_CHANGE: TDateTimeField;
    MemT_Ins_Crd_Per_InstrsID_RW_TP_PER_INS_CRD: TIntegerField;
    MemT_Ins_Crd_Per_InstrsCRD_INS_PER_TP_RW_ID: TIntegerField;
    MemT_Ins_Crd_Per_InstrsCRD_INS_RW_ID: TIntegerField;
    MemT_Ins_Crd_Per_InstrsPER_RW_ID: TIntegerField;
    MemT_Ins_Crd_Per_InstrsDOC_TP_ID: TIntegerField;
    MemT_Ins_Crd_Per_InstrsINS_ID: TIntegerField;
    MemT_Ins_Crd_Per_InstrsINS_NAME: TStringField;
    MemT_Ins_Crd_Per_InstrsINS_CORR_COEF: TFloatField;
    MemT_Ins_Crd_Per_InstrsINS_STRONG: TFloatField;
    MemT_Ins_Crd_Per_InstrsINS_FACES_NUM: TIntegerField;
    MemT_Ins_Crd_Per_InstrsINS_COUNT: TIntegerField;
    MemT_Ins_Crd_Per_InstrsINS_WRK_TIME: TIntegerField;
    MemT_Ins_Crd_Per_InstrsUSER_INSERT: TStringField;
    MemT_Ins_Crd_Per_InstrsDATE_INSERT: TDateTimeField;
    MemT_Ins_Crd_Per_InstrsUSER_CHANGE: TStringField;
    MemT_Ins_Crd_Per_InstrsDATE_CHANGE: TDateTimeField;
    Db_Ins_Crd_Per_Link_InstrsID_RW_TP_PER_INS_CRD: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsCRD_INS_PER_TP_RW_ID: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsCRD_INS_RW_ID: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsPER_RW_ID: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsDOC_TP_ID: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsINS_ID: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsINS_NAME: TStringField;
    Db_Ins_Crd_Per_Link_InstrsINS_CORR_COEF: TFloatField;
    Db_Ins_Crd_Per_Link_InstrsINS_STRONG: TFloatField;
    Db_Ins_Crd_Per_Link_InstrsINS_FACES_NUM: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsINS_COUNT: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsINS_WRK_TIME: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsUSER_INSERT: TStringField;
    Db_Ins_Crd_Per_Link_InstrsDATE_INSERT: TDateTimeField;
    Db_Ins_Crd_Per_Link_InstrsUSER_CHANGE: TStringField;
    Db_Ins_Crd_Per_Link_InstrsDATE_CHANGE: TDateTimeField;
    MemT_Ins_Crd_Per_Link_InstrsID_RW_TP_PER_INS_CRD: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsCRD_INS_PER_TP_RW_ID: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsCRD_INS_RW_ID: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsPER_RW_ID: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsDOC_TP_ID: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsINS_ID: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsINS_NAME: TStringField;
    MemT_Ins_Crd_Per_Link_InstrsINS_CORR_COEF: TFloatField;
    MemT_Ins_Crd_Per_Link_InstrsINS_STRONG: TFloatField;
    MemT_Ins_Crd_Per_Link_InstrsINS_FACES_NUM: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsINS_COUNT: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsINS_WRK_TIME: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsUSER_INSERT: TStringField;
    MemT_Ins_Crd_Per_Link_InstrsDATE_INSERT: TDateTimeField;
    MemT_Ins_Crd_Per_Link_InstrsUSER_CHANGE: TStringField;
    MemT_Ins_Crd_Per_Link_InstrsDATE_CHANGE: TDateTimeField;
    Db_Ins_Crd_Ins_TmpltsID_RW_TP_O_P_I_CRD_TYPES: TIntegerField;
    Db_Ins_Crd_Ins_TmpltsCRD_RW_ID: TIntegerField;
    Db_Ins_Crd_Ins_TmpltsDOC_TP_ID: TIntegerField;
    Db_Ins_Crd_Ins_TmpltsCRD_INS_RW_ID: TIntegerField;
    Db_Ins_Crd_Ins_TmpltsINS_TMPLT_ID: TIntegerField;
    Db_Ins_Crd_Ins_TmpltsINS_TMPLT_NUM: TStringField;
    Db_Ins_Crd_Ins_TmpltsINS_TMPLT_NAME: TStringField;
    Db_Ins_Crd_Ins_TmpltsINS_TMPLT_IMG_PATH: TStringField;
    Db_Ins_Crd_Ins_TmpltsUSER_INSERT: TStringField;
    Db_Ins_Crd_Ins_TmpltsDATE_INSERT: TDateTimeField;
    Db_Ins_Crd_Ins_TmpltsUSER_CHANGE: TStringField;
    Db_Ins_Crd_Ins_TmpltsDATE_CHANGE: TDateTimeField;
    MemT_Ins_Crd_Ins_TmpltsID_RW_TP_O_P_I_CRD_TYPES: TIntegerField;
    MemT_Ins_Crd_Ins_TmpltsCRD_RW_ID: TIntegerField;
    MemT_Ins_Crd_Ins_TmpltsDOC_TP_ID: TIntegerField;
    MemT_Ins_Crd_Ins_TmpltsCRD_INS_RW_ID: TIntegerField;
    MemT_Ins_Crd_Ins_TmpltsINS_TMPLT_ID: TIntegerField;
    MemT_Ins_Crd_Ins_TmpltsINS_TMPLT_NUM: TStringField;
    MemT_Ins_Crd_Ins_TmpltsINS_TMPLT_NAME: TStringField;
    MemT_Ins_Crd_Ins_TmpltsINS_TMPLT_IMG_PATH: TStringField;
    MemT_Ins_Crd_Ins_TmpltsUSER_INSERT: TStringField;
    MemT_Ins_Crd_Ins_TmpltsDATE_INSERT: TDateTimeField;
    MemT_Ins_Crd_Ins_TmpltsUSER_CHANGE: TStringField;
    MemT_Ins_Crd_Ins_TmpltsDATE_CHANGE: TDateTimeField;
    Db_Ins_Crd_Ins_Tmp_PrmsID_RW_TP_PER_I_CRD_T_PRM: TIntegerField;
    Db_Ins_Crd_Ins_Tmp_PrmsCRD_RW_ID: TFloatField;
    Db_Ins_Crd_Ins_Tmp_PrmsDOC_TP_ID: TFloatField;
    Db_Ins_Crd_Ins_Tmp_PrmsCRD_INS_TMP_RW_ID: TIntegerField;
    Db_Ins_Crd_Ins_Tmp_PrmsPARAM_ROW_ID: TIntegerField;
    Db_Ins_Crd_Ins_Tmp_PrmsNAME_PARAM: TStringField;
    Db_Ins_Crd_Ins_Tmp_PrmsTYPE_PARAM: TStringField;
    Db_Ins_Crd_Ins_Tmp_PrmsNUMERIC_VL: TFloatField;
    Db_Ins_Crd_Ins_Tmp_PrmsTEXT_VL: TStringField;
    Db_Ins_Crd_Ins_Tmp_PrmsPARAM_CH_ROW_ID: TIntegerField;
    Db_Ins_Crd_Ins_Tmp_PrmsPARAM_VALUE: TStringField;
    Db_Ins_Crd_Ins_Tmp_PrmsUSER_INSERT: TStringField;
    Db_Ins_Crd_Ins_Tmp_PrmsDATE_INSERT: TDateTimeField;
    Db_Ins_Crd_Ins_Tmp_PrmsUSER_CHANGE: TStringField;
    Db_Ins_Crd_Ins_Tmp_PrmsDATE_CHANGE: TDateTimeField;
    MemT_Ins_Crd_Ins_Tmp_PrmsID_RW_TP_PER_I_CRD_T_PRM: TIntegerField;
    MemT_Ins_Crd_Ins_Tmp_PrmsCRD_RW_ID: TFloatField;
    MemT_Ins_Crd_Ins_Tmp_PrmsDOC_TP_ID: TFloatField;
    MemT_Ins_Crd_Ins_Tmp_PrmsCRD_INS_TMP_RW_ID: TIntegerField;
    MemT_Ins_Crd_Ins_Tmp_PrmsPARAM_ROW_ID: TIntegerField;
    MemT_Ins_Crd_Ins_Tmp_PrmsNAME_PARAM: TStringField;
    MemT_Ins_Crd_Ins_Tmp_PrmsTYPE_PARAM: TStringField;
    MemT_Ins_Crd_Ins_Tmp_PrmsNUMERIC_VL: TFloatField;
    MemT_Ins_Crd_Ins_Tmp_PrmsTEXT_VL: TStringField;
    MemT_Ins_Crd_Ins_Tmp_PrmsPARAM_CH_ROW_ID: TIntegerField;
    MemT_Ins_Crd_Ins_Tmp_PrmsPARAM_VALUE: TStringField;
    MemT_Ins_Crd_Ins_Tmp_PrmsUSER_INSERT: TStringField;
    MemT_Ins_Crd_Ins_Tmp_PrmsDATE_INSERT: TDateTimeField;
    MemT_Ins_Crd_Ins_Tmp_PrmsUSER_CHANGE: TStringField;
    MemT_Ins_Crd_Ins_Tmp_PrmsDATE_CHANGE: TDateTimeField;
    Db_Oper_PerID: TFloatField;
    Db_Oper_PerID_ROW_OPER: TFloatField;
    Db_Oper_PerDOK_IN: TFloatField;
    Db_Oper_PerNOM_PER: TIntegerField;
    Db_Oper_PerPER: TStringField;
    Db_Oper_PerRAZRAB: TFloatField;
    Db_Oper_PerPRIM: TStringField;
    Db_Oper_PerTT_PER: TStringField;
    Db_Oper_PerPER_TIME_PZ: TFloatField;
    Db_Oper_PerGAS: TStringField;
    Db_Oper_PerSPEED: TStringField;
    Db_Oper_PerT_GAS: TStringField;
    Db_Oper_PerRAZRAB_NAME: TStringField;
    Db_Oper_PerTIME: TFloatField;
    Db_Oper_PerHARDNESS: TStringField;
    Db_Oper_PerUSER_ID_INSRT: TStringField;
    Db_Oper_PerDATE_INSRT: TDateTimeField;
    Db_Oper_PerUSER_ID_CORR: TStringField;
    Db_Oper_PerDATAIZM: TDateTimeField;
    MemT_Oper_PerID: TFloatField;
    MemT_Oper_PerID_ROW_OPER: TFloatField;
    MemT_Oper_PerDOK_IN: TFloatField;
    MemT_Oper_PerNOM_PER: TIntegerField;
    MemT_Oper_PerPER: TStringField;
    MemT_Oper_PerRAZRAB: TFloatField;
    MemT_Oper_PerPRIM: TStringField;
    MemT_Oper_PerTT_PER: TStringField;
    MemT_Oper_PerPER_TIME_PZ: TFloatField;
    MemT_Oper_PerGAS: TStringField;
    MemT_Oper_PerSPEED: TStringField;
    MemT_Oper_PerT_GAS: TStringField;
    MemT_Oper_PerRAZRAB_NAME: TStringField;
    MemT_Oper_PerTIME: TFloatField;
    MemT_Oper_PerHARDNESS: TStringField;
    MemT_Oper_PerUSER_ID_INSRT: TStringField;
    MemT_Oper_PerDATE_INSRT: TDateTimeField;
    MemT_Oper_PerUSER_ID_CORR: TStringField;
    MemT_Oper_PerDATAIZM: TDateTimeField;
    Db_Per_InstrumentsID: TFloatField;
    Db_Per_InstrumentsID_ROW_PER: TFloatField;
    Db_Per_InstrumentsDOK_IN: TFloatField;
    Db_Per_InstrumentsINSTR_ID: TFloatField;
    Db_Per_InstrumentsINSTR_NAME: TStringField;
    Db_Per_InstrumentsNOM_INSTR: TIntegerField;
    Db_Per_InstrumentsDOK_OUT: TFloatField;
    Db_Per_InstrumentsRAZRAB: TFloatField;
    Db_Per_InstrumentsUSER_ID_INSRT: TStringField;
    Db_Per_InstrumentsDATE_INSRT: TDateTimeField;
    Db_Per_InstrumentsUSER_ID_CORR: TStringField;
    Db_Per_InstrumentsDATAIZM: TDateTimeField;
    Db_Per_InstrumentsRAZRAB_NAME: TStringField;
    MemT_Per_InstrumentsID: TFloatField;
    MemT_Per_InstrumentsID_ROW_PER: TFloatField;
    MemT_Per_InstrumentsDOK_IN: TFloatField;
    MemT_Per_InstrumentsINSTR_ID: TFloatField;
    MemT_Per_InstrumentsINSTR_NAME: TStringField;
    MemT_Per_InstrumentsNOM_INSTR: TIntegerField;
    MemT_Per_InstrumentsDOK_OUT: TFloatField;
    MemT_Per_InstrumentsRAZRAB: TFloatField;
    MemT_Per_InstrumentsUSER_ID_INSRT: TStringField;
    MemT_Per_InstrumentsDATE_INSRT: TDateTimeField;
    MemT_Per_InstrumentsUSER_ID_CORR: TStringField;
    MemT_Per_InstrumentsDATAIZM: TDateTimeField;
    MemT_Per_InstrumentsRAZRAB_NAME: TStringField;
    Db_Oper_ParamsRW_VERS: TStringField;
    Db_Oper_ParamsRW_ID_OLD_VERS: TIntegerField;
    Db_Oper_ParamsDOC_TP_VERS_ID: TIntegerField;
    MemT_Oper_ParamsRW_VERS: TStringField;
    MemT_Oper_ParamsRW_ID_OLD_VERS: TIntegerField;
    MemT_Oper_ParamsDOC_TP_VERS_ID: TIntegerField;
    Db_Oper_TimeRW_VERS: TStringField;
    Db_Oper_TimeRW_ID_OLD_VERS: TIntegerField;
    Db_Oper_TimeDOC_TP_VERS_ID: TIntegerField;
    MemT_Oper_TimeRW_VERS: TStringField;
    MemT_Oper_TimeRW_ID_OLD_VERS: TIntegerField;
    MemT_Oper_TimeDOC_TP_VERS_ID: TIntegerField;
    Db_Oper_Time_WorksRW_VERS: TStringField;
    Db_Oper_Time_WorksRW_ID_OLD_VERS: TIntegerField;
    Db_Oper_Time_WorksDOC_TP_VERS_ID: TIntegerField;
    MemT_Oper_Time_WorksRW_VERS: TStringField;
    MemT_Oper_Time_WorksRW_ID_OLD_VERS: TIntegerField;
    MemT_Oper_Time_WorksDOC_TP_VERS_ID: TIntegerField;
    Db_Instr_Crd_PrmsDOC_TP_VERS_ID: TIntegerField;
    MemT_Instr_Crd_PrmsDOC_TP_VERS_ID: TIntegerField;
    Db_Per_DetailsRW_VERS: TStringField;
    Db_Per_DetailsRW_ID_OLD_VERS: TIntegerField;
    Db_Per_DetailsDOC_TP_VERS_ID: TIntegerField;
    MemT_Per_DetailsRW_VERS: TStringField;
    MemT_Per_DetailsRW_ID_OLD_VERS: TIntegerField;
    MemT_Per_DetailsDOC_TP_VERS_ID: TIntegerField;
    Db_Per_MaterialsDOC_TP_VERS_ID: TIntegerField;
    MemT_Per_MaterialsDOC_TP_VERS_ID: TIntegerField;
    Db_Per_InstrumentsDOC_TP_VERS_ID: TIntegerField;
    Db_Per_OsnastDOC_TP_VERS_ID: TIntegerField;
    Db_Oper_PerDOC_TP_VERS_ID: TIntegerField;
    Db_Per_ParamsDOC_TP_VERS_ID: TIntegerField;
    Db_Per_MaterialsRW_VERS: TStringField;
    Db_Per_MaterialsRW_ID_OLD_VERS: TIntegerField;
    MemT_Per_MaterialsRW_VERS: TStringField;
    MemT_Per_MaterialsRW_ID_OLD_VERS: TIntegerField;
    Db_Per_InstrumentsRW_VERS: TStringField;
    Db_Per_InstrumentsRW_ID_OLD_VERS: TIntegerField;
    MemT_Per_InstrumentsDOC_TP_VERS_ID: TIntegerField;
    MemT_Per_InstrumentsRW_VERS: TStringField;
    MemT_Per_InstrumentsRW_ID_OLD_VERS: TIntegerField;
    Db_Per_OsnastRW_VERS: TStringField;
    Db_Per_OsnastRW_ID_OLD_VERS: TIntegerField;
    MemT_Per_OsnastDOC_TP_VERS_ID: TIntegerField;
    MemT_Per_OsnastRW_VERS: TStringField;
    MemT_Per_OsnastRW_ID_OLD_VERS: TIntegerField;
    Db_Oper_PerRW_VERS: TStringField;
    Db_Oper_PerRW_ID_OLD_VERS: TIntegerField;
    MemT_Oper_PerDOC_TP_VERS_ID: TIntegerField;
    MemT_Oper_PerRW_VERS: TStringField;
    MemT_Oper_PerRW_ID_OLD_VERS: TIntegerField;
    Db_Per_ParamsRW_VERS: TStringField;
    Db_Per_ParamsRW_ID_OLD_VERS: TIntegerField;
    MemT_Per_ParamsDOC_TP_VERS_ID: TIntegerField;
    MemT_Per_ParamsRW_VERS: TStringField;
    MemT_Per_ParamsRW_ID_OLD_VERS: TIntegerField;
    Db_Ins_Crd_Per_InstrsDOC_TP_VERS_ID: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsDOC_TP_VERS_ID: TIntegerField;
    Db_Ins_Crd_Ins_TmpltsDOC_TP_VERS_ID: TIntegerField;
    MemT_Ins_Crd_Per_InstrsDOC_TP_VERS_ID: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsDOC_TP_VERS_ID: TIntegerField;
    MemT_Ins_Crd_Ins_TmpltsDOC_TP_VERS_ID: TIntegerField;
    Db_Doc_InfoID_VERS: TIntegerField;
    Db_Doc_InfoID_DOC_FULL: TStringField;
    Db_Doc_InfoDATE_START_ACTION: TDateTimeField;
    Db_Doc_InfoDATE_END_ACTION: TDateTimeField;
    Db_Ins_Crd_Ins_Tmp_PrmsRW_VERS: TStringField;
    Db_Ins_Crd_Ins_Tmp_PrmsRW_ID_OLD_VERS: TIntegerField;
    Db_Ins_Crd_Ins_Tmp_PrmsDOC_TP_VERS_ID: TIntegerField;
    Db_Ins_Crd_Ins_Tmp_PrmsUSER_ADD_INSERT: TIntegerField;
    Db_Ins_Crd_Ins_Tmp_PrmsUSER_ADD_CHANGE: TIntegerField;
    MemT_Ins_Crd_Ins_Tmp_PrmsRW_VERS: TStringField;
    MemT_Ins_Crd_Ins_Tmp_PrmsRW_ID_OLD_VERS: TIntegerField;
    MemT_Ins_Crd_Ins_Tmp_PrmsDOC_TP_VERS_ID: TIntegerField;
    MemT_Ins_Crd_Ins_Tmp_PrmsUSER_ADD_INSERT: TIntegerField;
    MemT_Ins_Crd_Ins_Tmp_PrmsUSER_ADD_CHANGE: TIntegerField;
    Db_Ins_Crd_Ins_TmpltsRW_VERS: TStringField;
    Db_Ins_Crd_Ins_TmpltsRW_ID_OLD_VERS: TIntegerField;
    Db_Ins_Crd_Ins_TmpltsUSER_ADD_INSERT: TIntegerField;
    Db_Ins_Crd_Ins_TmpltsUSER_ADD_CHANGE: TIntegerField;
    MemT_Ins_Crd_Ins_TmpltsRW_VERS: TStringField;
    MemT_Ins_Crd_Ins_TmpltsRW_ID_OLD_VERS: TIntegerField;
    MemT_Ins_Crd_Ins_TmpltsUSER_ADD_INSERT: TIntegerField;
    MemT_Ins_Crd_Ins_TmpltsUSER_ADD_CHANGE: TIntegerField;
    Db_Ins_Crd_Per_InstrsRW_VERS: TStringField;
    Db_Ins_Crd_Per_InstrsRW_ID_OLD_VERS: TIntegerField;
    Db_Ins_Crd_Per_InstrsUSER_ADD_INSERT: TIntegerField;
    Db_Ins_Crd_Per_InstrsUSER_ADD_CHANGE: TIntegerField;
    MemT_Ins_Crd_Per_InstrsRW_VERS: TStringField;
    MemT_Ins_Crd_Per_InstrsRW_ID_OLD_VERS: TIntegerField;
    MemT_Ins_Crd_Per_InstrsUSER_ADD_INSERT: TIntegerField;
    MemT_Ins_Crd_Per_InstrsUSER_ADD_CHANGE: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsRW_VERS: TStringField;
    Db_Ins_Crd_Per_Link_InstrsRW_ID_OLD_VERS: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsUSER_ADD_INSERT: TIntegerField;
    Db_Ins_Crd_Per_Link_InstrsUSER_ADD_CHANGE: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsRW_VERS: TStringField;
    MemT_Ins_Crd_Per_Link_InstrsRW_ID_OLD_VERS: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsUSER_ADD_INSERT: TIntegerField;
    MemT_Ins_Crd_Per_Link_InstrsUSER_ADD_CHANGE: TIntegerField;
    Db_Doc_InfoLINKED_DOC_ID_VERS: TFloatField;
    Db_Instr_CardRW_VERS: TStringField;
    Db_Instr_CardRW_ID_OLD_VERS: TIntegerField;
    Db_Instr_CardUSER_ADD_INSERT: TIntegerField;
    Db_Instr_CardUSER_ADD_CHANGE: TIntegerField;
    MemT_Instr_CardID_RW_INS_CRD: TIntegerField;
    MemT_Instr_CardDOC_TP_ID: TIntegerField;
    MemT_Instr_CardOPER_RW_ID: TIntegerField;
    MemT_Instr_CardCRD_NUM: TStringField;
    MemT_Instr_CardCRD_TMPLT_ID: TIntegerField;
    MemT_Instr_CardCRD_TMPLT_NAME: TStringField;
    MemT_Instr_CardCRD_TMPLT_IMG_PATH: TStringField;
    MemT_Instr_CardCRD_PRIM: TStringField;
    MemT_Instr_CardUSER_INSERT: TStringField;
    MemT_Instr_CardUSER_INSERT_NAME: TStringField;
    MemT_Instr_CardDATE_INSERT: TDateTimeField;
    MemT_Instr_CardUSER_CHANGE: TStringField;
    MemT_Instr_CardUSER_CHANGE_NAME: TStringField;
    MemT_Instr_CardDATE_CHANGE: TDateTimeField;
    MemT_Instr_CardRW_VERS: TStringField;
    MemT_Instr_CardRW_ID_OLD_VERS: TIntegerField;
    MemT_Instr_CardUSER_ADD_INSERT: TIntegerField;
    MemT_Instr_CardUSER_ADD_CHANGE: TIntegerField;
    Db_Instr_Crd_PrmsRW_VERS: TStringField;
    Db_Instr_Crd_PrmsRW_ID_OLD_VERS: TIntegerField;
    MemT_Instr_Crd_PrmsRW_VERS: TStringField;
    MemT_Instr_Crd_PrmsRW_ID_OLD_VERS: TIntegerField;
    Db_Oper_PerID_RW_VERS: TIntegerField;
    MemT_Oper_PerID_RW_VERS: TIntegerField;
    Db_Oper_TimeID_PART_TP: TFloatField;
    MemT_Oper_TimeID_PART_TP: TFloatField;
    Db_Oper_ParamsRW_STATUS: TStringField;
    MemT_Oper_ParamsRW_STATUS: TStringField;
    Db_Oper_TimeRW_STATUS: TStringField;
    MemT_Oper_TimeRW_STATUS: TStringField;
    Db_Oper_Time_WorksRW_STATUS: TStringField;
    MemT_Oper_Time_WorksRW_STATUS: TStringField;
    Db_Instr_CardRW_STATUS: TStringField;
    MemT_Instr_CardRW_STATUS: TStringField;
    Db_Instr_Crd_PrmsRW_STATUS: TStringField;
    MemT_Instr_Crd_PrmsRW_STATUS: TStringField;
    Db_Per_DetailsRW_STATUS: TStringField;
    MemT_Per_DetailsRW_STATUS: TStringField;
    Db_Per_MaterialsRW_STATUS: TStringField;
    MemT_Per_MaterialsRW_STATUS: TStringField;
    Db_Per_InstrumentsRW_STATUS: TStringField;
    MemT_Per_InstrumentsRW_STATUS: TStringField;
    Db_Per_OsnastRW_STATUS: TStringField;
    MemT_Per_OsnastRW_STATUS: TStringField;
    Db_Oper_PerRW_STATUS: TStringField;
    MemT_Oper_PerRW_STATUS: TStringField;
    Db_Per_ParamsRW_STATUS: TStringField;
    MemT_Per_ParamsRW_STATUS: TStringField;
    Db_Ins_Crd_Per_InstrsRW_STATUS: TStringField;
    MemT_Ins_Crd_Per_InstrsRW_STATUS: TStringField;
    Db_Ins_Crd_Per_Link_InstrsRW_STATUS: TStringField;
    MemT_Ins_Crd_Per_Link_InstrsRW_STATUS: TStringField;
    Db_Ins_Crd_Ins_TmpltsRW_STATUS: TStringField;
    MemT_Ins_Crd_Ins_TmpltsRW_STATUS: TStringField;
    Db_Ins_Crd_Ins_Tmp_PrmsRW_STATUS: TStringField;
    MemT_Ins_Crd_Ins_Tmp_PrmsRW_STATUS: TStringField;
    Db_Doc_InfoPARENT_DOC_ID: TIntegerField;
    Db_Doc_PartsID: TFloatField;
    Db_Doc_PartsID_RW_VERS: TIntegerField;
    Db_Doc_PartsRW_VERS: TStringField;
    Db_Doc_PartsRW_STATUS: TStringField;
    Db_Doc_PartsRW_ID_OLD_VERS: TIntegerField;
    Db_Doc_PartsDOC_TP_VERS_ID: TIntegerField;
    Db_Doc_PartsROW_NUM: TFloatField;
    Db_Doc_PartsCEH_ID: TFloatField;
    Db_Doc_PartsCEH_CODE: TStringField;
    Db_Doc_PartsID_DOC_TP: TFloatField;
    Db_Doc_InfoPARENT_ID_DOC: TFloatField;
    Db_Doc_InfoPARENT_ID_VERS: TFloatField;
    Db_Doc_PartsDOC_HEADER_ID: TIntegerField;
    Db_Doc_PartsDEP_ID: TIntegerField;
    Db_Doc_PartsI_DATE: TDateTimeField;
    Db_Doc_PartsI_USER_ID: TStringField;
    Db_Doc_PartsI_USER_ID_ADD: TIntegerField;
    Db_Doc_PartsU_DATE: TDateTimeField;
    Db_Doc_PartsU_USER_ID: TStringField;
    Db_Doc_PartsU_USER_ID_ADD: TIntegerField;
    MemT_Doc_PartsID: TFloatField;
    MemT_Doc_PartsID_RW_VERS: TIntegerField;
    MemT_Doc_PartsRW_VERS: TStringField;
    MemT_Doc_PartsRW_STATUS: TStringField;
    MemT_Doc_PartsRW_ID_OLD_VERS: TIntegerField;
    MemT_Doc_PartsDOC_TP_VERS_ID: TIntegerField;
    MemT_Doc_PartsROW_NUM: TFloatField;
    MemT_Doc_PartsCEH_ID: TFloatField;
    MemT_Doc_PartsCEH_CODE: TStringField;
    MemT_Doc_PartsID_DOC_TP: TFloatField;
    MemT_Doc_PartsDOC_HEADER_ID: TIntegerField;
    MemT_Doc_PartsDEP_ID: TIntegerField;
    MemT_Doc_PartsI_DATE: TDateTimeField;
    MemT_Doc_PartsI_USER_ID: TStringField;
    MemT_Doc_PartsI_USER_ID_ADD: TIntegerField;
    MemT_Doc_PartsU_DATE: TDateTimeField;
    MemT_Doc_PartsU_USER_ID: TStringField;
    MemT_Doc_PartsU_USER_ID_ADD: TIntegerField;
    Db_Doc_InfoLINKED_DOC_HEADER_ID: TFloatField;
    Db_Instr_CardDOC_TP_VERS_ID: TIntegerField;
    MemT_Instr_CardDOC_TP_VERS_ID: TIntegerField;
    Db_OpersID_ROW_OPER: TFloatField;
    Db_OpersID_RW_VERS: TIntegerField;
    Db_OpersRW_VERS: TStringField;
    Db_OpersRW_STATUS: TStringField;
    Db_OpersID_DOC_TP: TFloatField;
    Db_OpersDOC_TP_VERS_ID: TIntegerField;
    Db_OpersNOMOPER: TFloatField;
    Db_OpersID_PART_TP: TFloatField;
    Db_OpersCEH_ID: TFloatField;
    Db_OpersCEH_CODE: TStringField;
    Db_OpersDEP_ID: TIntegerField;
    Db_OpersOPER_ID: TFloatField;
    Db_OpersOPER_NAME: TStringField;
    Db_OpersOBOR: TFloatField;
    Db_OpersOBOR_NAME: TStringField;
    Db_OpersPRIM: TStringField;
    Db_OpersRAZRAB: TFloatField;
    Db_OpersTT: TStringField;
    Db_OpersIOT: TStringField;
    Db_OpersOPER_TT: TStringField;
    Db_OpersGRP_OBR_RW_ID: TFloatField;
    Db_OpersTARA: TFloatField;
    Db_OpersTARA_NUM: TStringField;
    Db_OpersTARA_NAME: TStringField;
    Db_OpersMAT: TFloatField;
    Db_OpersMAT_NAME: TStringField;
    Db_OpersUSER_ID_INSRT: TStringField;
    Db_OpersDATE_INSRT: TDateTimeField;
    Db_OpersUSER_EDIT: TStringField;
    Db_OpersUSER_NAME: TStringField;
    Db_OpersMAIN_DOC_ID: TFloatField;
    Db_OpersPART_ROW_NUM: TFloatField;
    Db_OpersOPER_NUMBER: TStringField;
    MemT_OpersID_ROW_OPER: TFloatField;
    MemT_OpersID_RW_VERS: TIntegerField;
    MemT_OpersRW_VERS: TStringField;
    MemT_OpersRW_STATUS: TStringField;
    MemT_OpersID_DOC_TP: TFloatField;
    MemT_OpersDOC_TP_VERS_ID: TIntegerField;
    MemT_OpersNOMOPER: TFloatField;
    MemT_OpersID_PART_TP: TFloatField;
    MemT_OpersCEH_ID: TFloatField;
    MemT_OpersCEH_CODE: TStringField;
    MemT_OpersDEP_ID: TIntegerField;
    MemT_OpersOPER_ID: TFloatField;
    MemT_OpersOPER_NAME: TStringField;
    MemT_OpersOBOR: TFloatField;
    MemT_OpersOBOR_NAME: TStringField;
    MemT_OpersPRIM: TStringField;
    MemT_OpersRAZRAB: TFloatField;
    MemT_OpersTT: TStringField;
    MemT_OpersIOT: TStringField;
    MemT_OpersOPER_TT: TStringField;
    MemT_OpersGRP_OBR_RW_ID: TFloatField;
    MemT_OpersTARA: TFloatField;
    MemT_OpersTARA_NUM: TStringField;
    MemT_OpersTARA_NAME: TStringField;
    MemT_OpersMAT: TFloatField;
    MemT_OpersMAT_NAME: TStringField;
    MemT_OpersUSER_ID_INSRT: TStringField;
    MemT_OpersDATE_INSRT: TDateTimeField;
    MemT_OpersUSER_EDIT: TStringField;
    MemT_OpersUSER_NAME: TStringField;
    MemT_OpersMAIN_DOC_ID: TFloatField;
    MemT_OpersPART_ROW_NUM: TFloatField;
    MemT_OpersOPER_NUMBER: TStringField;
    procedure MemT_OpersAfterPost(DataSet: TDataSet);
    procedure MemT_OpersAfterScroll(DataSet: TDataSet);
    procedure MemTableEhBeforeDelete(DataSet: TDataSet);
    procedure MemTableEhBeforeEdit(DataSet: TDataSet);
    procedure MemT_Doc_PartsNewRecord(DataSet: TDataSet);
    procedure MemTableEhBeforeInsert(DataSet: TDataSet);
    procedure MemT_OpersGetFieldValue(MemTable: TCustomMemTableEh;
      Field: TField; var Value: Variant);
    procedure MemT_OpersNewRecord(DataSet: TDataSet);
    procedure MemT_Oper_ParamsBeforeEdit(DataSet: TDataSet);
    procedure MemT_Oper_ParamsNewRecord(DataSet: TDataSet);
    procedure MemT_Oper_PerAfterPost(DataSet: TDataSet);
    procedure MemT_Oper_PerAfterScroll(DataSet: TDataSet);
    procedure MemT_Oper_PerGetFieldValue(MemTable: TCustomMemTableEh;
      Field: TField; var Value: Variant);
    procedure MemT_Oper_PerNewRecord(DataSet: TDataSet);
    procedure MemT_Oper_TimeNewRecord(DataSet: TDataSet);
    procedure MemT_Oper_Time_WorksNewRecord(DataSet: TDataSet);
    procedure MemT_Per_DetailsNewRecord(DataSet: TDataSet);
    procedure MemT_Per_InstrumentsNewRecord(DataSet: TDataSet);
    procedure MemT_Per_MaterialsNewRecord(DataSet: TDataSet);
    procedure MemT_Per_OsnastNewRecord(DataSet: TDataSet);
    procedure MemT_Per_ParamsNewRecord(DataSet: TDataSet);
    procedure MemT_Instr_CardAfterPost(DataSet: TDataSet);
    procedure MemT_Instr_CardNewRecord(DataSet: TDataSet);
    procedure MemT_Instr_Crd_PrmsNewRecord(DataSet: TDataSet);
    procedure MemT_Ins_Crd_Ins_TmpltsNewRecord(DataSet: TDataSet);
    procedure MemT_Ins_Crd_Per_InstrsNewRecord(DataSet: TDataSet);
    procedure MemT_Ins_Crd_Ins_Tmp_PrmsNewRecord(DataSet: TDataSet);
    procedure MemT_Ins_Crd_Ins_TmpltsAfterPost(DataSet: TDataSet);
    procedure MemT_Ins_Crd_Per_InstrsAfterScroll(DataSet: TDataSet);
    procedure Data_Ins_Crd_Per_InstrsDataChange(Sender: TObject; Field: TField);
    procedure MemT_Instr_CardAfterScroll(DataSet: TDataSet);
    procedure MemT_Ins_Crd_Ins_TmpltsAfterScroll(DataSet: TDataSet);
    procedure Data_Instr_CardDataChange(Sender: TObject; Field: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure Db_Instr_CardApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: string);
    procedure Data_Ins_Crd_Ins_TmpltsDataChange(Sender: TObject; Field: TField);
    procedure MemT_OpersAfterEdit(DataSet: TDataSet);
    procedure MemT_Oper_TimeAfterEdit(DataSet: TDataSet);
    procedure MemT_Oper_PerAfterEdit(DataSet: TDataSet);
    procedure MemT_Per_ParamsAfterEdit(DataSet: TDataSet);
    procedure MemT_Per_InstrumentsAfterEdit(DataSet: TDataSet);
    procedure MemT_Per_MaterialsAfterEdit(DataSet: TDataSet);
    procedure MemT_Per_DetailsAfterEdit(DataSet: TDataSet);
    procedure MemT_Instr_CardAfterEdit(DataSet: TDataSet);
    procedure MemT_Instr_Crd_PrmsAfterEdit(DataSet: TDataSet);
    procedure MemT_Per_OsnastAfterEdit(DataSet: TDataSet);
    procedure MemT_Ins_Crd_Per_InstrsAfterEdit(DataSet: TDataSet);
    procedure MemT_Ins_Crd_Per_Link_InstrsAfterEdit(DataSet: TDataSet);
    procedure MemT_Ins_Crd_Ins_TmpltsAfterEdit(DataSet: TDataSet);
    procedure MemT_Ins_Crd_Ins_Tmp_PrmsAfterEdit(DataSet: TDataSet);
    procedure MemT_Oper_ParamsAfterEdit(DataSet: TDataSet);
    procedure MemT_Oper_Time_WorksAfterEdit(DataSet: TDataSet);
    procedure MemT_Doc_PartsAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Arr_DataSetsWithRowMove: Array Of Array Of String;
    Arr_DataSetsWithParams: Array Of String;
    Arr_DataSetsOpenLine: Array Of Array Of String;
    Arr_DataSetsSaveLine: Array Of String;
    StrList_DataSetsForNorms: TStringListEh;

    Procedure P_Delete_Child_Rec ( Vl_MemRec: TMemoryRecordEh;
                                   Vl_Start_Pos: String;
                                   Vl_UpdateStatus: TUpdateStatus );

    Procedure P_FlagDelete_Child_Rec ( Vl_MemRec: TMemoryRecordEh;
                                   Vl_Start_Pos: String;
                                   Vl_UpdateStatus: TUpdateStatus );
    Procedure P_FlagDelete_ChildDataSet(ParentMemTable: TMemTableEh; ParentRec: TMemoryRecordEh);
    Procedure P_Delete_ChildDataSet(ParentMemTable: TMemTableEh; ParentRec: TMemoryRecordEh);
  end;

var
  Dm_Tech_Proc: TDm_Tech_Proc;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  Udm_Main, Tp_Main_Form, Tp_Per_Instr_Card, Tp_Tech_Proc_Form;

procedure TDm_Tech_Proc.DataModuleCreate(Sender: TObject);
begin
  Arr_DataSetsWithRowMove := [ ['MemT_Doc_Parts', 'ROW_NUM'],
                               ['MemT_Opers', 'NOMOPER'],
                               ['MemT_Oper_Per', 'NOM_PER'] ];
  Arr_DataSetsWithParams := [ 'MemT_Oper_Params',
                              'MemT_Instr_Crd_Prms',
                              'MemT_Per_Params',
                              'MemT_Ins_Crd_Ins_Tmp_Prms' ];
  Arr_DataSetsOpenLine := [ ['Db_Doc_Info', 'In_Doc_Id'],
                            ['MemT_Doc_Parts', ''],
                            ['Db_Oper_Params_List', ''],
                            ['Db_Per_Params_List', ''],
                            ['Db_Instr_Crd_Tmp_Prms_List', ''],
                            ['Db_Instr_Tmplt_Prms_List', ''],
                            ['Db_Linked_Instr_List', ''],
                            ['Db_Ins_Crd_Instr_Img', ''],
                            ['Db_Instr_Card_Img_Rep', ''],
                            ['MemT_Oper_Params', ''],
                            ['MemT_Opers', ''],
                            ['MemT_Oper_Time', ''],
                            ['MemT_Oper_Time_Works', ''],
                            ['MemT_Per_Params', ''],
                            ['MemT_Instr_Crd_Prms', ''],
                            ['MemT_Instr_Card', ''],
                            ['MemT_Oper_Per', ''],
                            ['MemT_Per_Details', ''],
                            ['MemT_Per_Materials', ''],
                            ['MemT_Per_Instruments', ''],
                            ['MemT_Per_Osnast', ''],
                            ['MemT_Per_Osnast', ''],
                            ['MemT_Ins_Crd_Ins_Tmp_Prms', ''],
                            ['MemT_Ins_Crd_Ins_Tmplts', ''],
                            ['MemT_Ins_Crd_Per_Instrs', ''],
                            ['MemT_Ins_Crd_Per_Link_Instrs', ''] ];
  Arr_DataSetsSaveLine := [ 'Db_Doc_Parts',
                            'Db_Opers',
                            'Db_Oper_Params',
                            'Db_Oper_Time',
                            'Db_Oper_Time_Works',
                            'Db_Oper_Per',
                            'Db_Per_Params',
                            'Db_Instr_Card',
                            'Db_Instr_Crd_Prms',
                            'Db_Per_Details',
                            'Db_Per_Materials',
                            'Db_Per_Instruments',
                            'Db_Per_Osnast',
                            'Db_Ins_Crd_Per_Instrs',
                            'Db_Ins_Crd_Per_Link_Instrs',
                            'Db_Ins_Crd_Ins_Tmplts',
                            'Db_Ins_Crd_Ins_Tmp_Prms'];

  StrList_DataSetsForNorms := TStringListEh.Create;
  StrList_DataSetsForNorms.Add('MemT_Oper_Time');
  StrList_DataSetsForNorms.Add('MemT_Oper_Time_Works');
end;

procedure TDm_Tech_Proc.Data_Instr_CardDataChange(Sender: TObject;
  Field: TField);
Var
  Mem_Strm: TMemoryStream;
  Img_Temp_File_Path: String;
  I: Integer;
begin

  With Db_Instr_Crd_Tmp_Prms_List
  Do
  Begin
    SetVariable('CRD_TMPLT_ID', MemT_Instr_Card.FieldByName('CRD_TMPLT_ID').AsString);
    Refresh;
    DisableControls;
    MemT_Instr_Crd_Prms.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(MemT_Instr_Crd_Prms.Lookup('PARAM_ROW_ID', FieldByName( 'PARAM_ROW_ID' ).AsVariant, 'PARAM_ROW_ID')) = ''
        Then
        Begin
          MemT_Instr_Crd_Prms.Append;
          MemT_Instr_Crd_Prms.CopyFields( Db_Instr_Crd_Tmp_Prms_List );
          MemT_Instr_Crd_Prms.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      MemT_Instr_Crd_Prms.EnableControls;
    End;
  End;

  With MemT_Instr_Card
  Do
  Begin
    If FieldByName('CRD_TMPLT_IMG_PATH').AsString <> ''
    Then
    Begin
      Img_Temp_File_Path := GetEnvironmentVariable('temp')
         + '\' + 'INS_CRD_TMP' + '\'
         + FieldByName('CRD_TMPLT_ID').AsString
         + ExtractFileExt(FieldByName('CRD_TMPLT_IMG_PATH').AsString);

      If Db_Instr_Card_Img_Rep.Active
      Then
      Begin
        Db_Instr_Card_Img_Rep.SetVariable('Img_Path', Img_Temp_File_Path);
        Db_Instr_Card_Img_Rep.Refresh;
      End;

      If Not DirectoryExists(GetEnvironmentVariable('temp')
         + '\' + 'INS_CRD_TMP')
      Then
        CreateDir(GetEnvironmentVariable('temp')
         + '\' + 'INS_CRD_TMP');


      //Чтение Файла и копирование в temp
      if (FileExists(Img_Temp_File_Path))
      Then
      Begin
         Form_Per_Instr_Card.Img_Instr_Crd_Tmplt.Picture.LoadFromFile(Img_Temp_File_Path);
      End
      Else
      Begin
        Mem_Strm := TMemoryStream.Create;
        With TIdHTTP.Create(nil)
        Do
        Begin
          Try
            Get( 'http://websrv-01/service/GetFileAll.php?'
                  + 'file_folder=' + FieldByName('CRD_TMPLT_ID').AsString
                  + '&task=INS_CRD_TMP'
                  + '&NewFileName=' + FieldByName('CRD_TMPLT_ID').AsString, Mem_Strm );


            Mem_Strm.SaveToFile(Img_Temp_File_Path);
            Form_Per_Instr_Card.Img_Instr_Crd_Tmplt.Picture.LoadFromFile(Img_Temp_File_Path);
          Finally
            Free;
            Mem_Strm.Free;
          End;
        End;
      End;
    End
    Else
    Begin
      Form_Per_Instr_Card.Img_Instr_Crd_Tmplt.Picture := Nil;
      if Db_Instr_Card_Img_Rep.Active
      Then
      Begin
        Db_Instr_Card_Img_Rep.ClearVariables;
        Db_Instr_Card_Img_Rep.Refresh;
      End;
    End;
  End;
end;

procedure TDm_Tech_Proc.Data_Ins_Crd_Ins_TmpltsDataChange(Sender: TObject;
  Field: TField);
Var
  I: Integer;
begin
  With Db_Instr_Tmplt_Prms_List
  Do
  Begin
    DisableControls;
    SetVariable('ID_RW_INSTR_TMPLT', MemT_Ins_Crd_Ins_Tmplts.FieldByName('INS_TMPLT_ID').AsString);
    Refresh;
    MemT_Ins_Crd_Ins_Tmp_Prms.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(MemT_Ins_Crd_Ins_Tmp_Prms.Lookup('PARAM_ROW_ID', FieldByName( 'PARAM_ROW_ID' ).AsVariant, 'PARAM_ROW_ID')) = ''
        Then
        Begin
          MemT_Ins_Crd_Ins_Tmp_Prms.Append;
          MemT_Ins_Crd_Ins_Tmp_Prms.CopyFields( Db_Instr_Tmplt_Prms_List );
          MemT_Ins_Crd_Ins_Tmp_Prms.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      MemT_Ins_Crd_Ins_Tmp_Prms.EnableControls;
    End;
  End;
end;

procedure TDm_Tech_Proc.Data_Ins_Crd_Per_InstrsDataChange(Sender: TObject;
  Field: TField);
 var
  Mem_Strm: TMemoryStream;
  Img_Temp_File_Path: String;
begin
  With MemT_Ins_Crd_Ins_Tmplts
  Do
  Begin
    If FieldByName('INS_TMPLT_IMG_PATH').AsString <> ''
    Then
    Begin
      Img_Temp_File_Path := GetEnvironmentVariable('temp')
         + '\' + 'SPR_INSTR' + '\'
         + FieldByName('INS_TMPLT_ID').AsString
         + ExtractFileExt(FieldByName('INS_TMPLT_IMG_PATH').AsString);

      if Db_Ins_Crd_Instr_Img.Active
      Then
      Begin
        Db_Ins_Crd_Instr_Img.SetVariable('Img_Path', Img_Temp_File_Path);
        Db_Ins_Crd_Instr_Img.Refresh;
      End;

      If Not DirectoryExists(GetEnvironmentVariable('temp')
         + '\' + 'SPR_INSTR')
      Then
        CreateDir(GetEnvironmentVariable('temp')
         + '\' + 'SPR_INSTR');


      //Чтение Файла и копирование в temp
      if (FileExists(Img_Temp_File_Path))
      Then
      Begin
        Form_Per_Instr_Card.Img_Ins_Crd_Instr.Picture.LoadFromFile(Img_Temp_File_Path);
      End
      Else
      Begin
        Mem_Strm := TMemoryStream.Create;
        With TIdHTTP.Create(nil)
        Do
        Begin
          Try
            Get( 'http://websrv-01/service/GetFileAll.php?'
                  + 'file_folder=' + MemT_Ins_Crd_Per_Instrs.FieldByName('INS_ID').AsString
                  + '&task=SPR_INSTR'
                  + '&NewFileName=' + FieldByName('INS_TMPLT_ID').AsString, Mem_Strm );


            Mem_Strm.SaveToFile(Img_Temp_File_Path);
            Form_Per_Instr_Card.Img_Ins_Crd_Instr.Picture.LoadFromFile(Img_Temp_File_Path);
          Finally
            Free;
            Mem_Strm.Free;
          End;
        End;
      End;
    End
    Else
    Begin
      Form_Per_Instr_Card.Img_Ins_Crd_Instr.Picture:= Nil;
      if Db_Ins_Crd_Instr_Img.Active
      Then
      Begin
        Db_Ins_Crd_Instr_Img.ClearVariables;
        Db_Ins_Crd_Instr_Img.Refresh;
      End;
    End;
  End;
end;

procedure TDm_Tech_Proc.Db_Instr_CardApplyRecord(Sender: TOracleDataSet;
  Action: Char; var Applied: Boolean; var NewRowId: string);
begin
  If Sender.FieldByName('CRD_NUM').AsString = ''
  Then
  Begin
    MessageDlg('Не указан номер программы в карте наладки!', mtError, [mbOK], 5);
    Abort;
  End;
end;

procedure TDm_Tech_Proc.MemT_Doc_PartsAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Doc_PartsNewRecord(DataSet: TDataSet);
Var
  Doc_Id: Integer;
begin
  With DataSet
  Do
  Begin
    Dm_Tech_Proc.Seq_Db_Doc_Parts.Execute;
    FieldByName('ID').AsInteger :=  Dm_Tech_Proc.Seq_Db_Doc_Parts.FieldAsInteger(0);
    FieldByName('ROW_NUM').AsInteger := RecordCount + 1;
    FieldByName('ID_DOC_TP').AsInteger := Db_Doc_Info.FieldByName('LINKED_DOC_ID').AsInteger;
    FieldByName('ID_RW_VERS').AsInteger := 1;
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('LINKED_DOC_ID_VERS').AsInteger;
    FieldByName('DOC_HEADER_ID').AsInteger := Db_Doc_Info.FieldByName('DOC_HEADER_ID').AsInteger;
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
  End;
end;

procedure TDm_Tech_Proc.MemT_Instr_CardAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString <> 'deleted')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Instr_CardAfterPost(DataSet: TDataSet);
Var
  I: Integer;
begin
  With Db_Instr_Crd_Tmp_Prms_List
  Do
  Begin
    Refresh;
    DisableControls;
    MemT_Instr_Crd_Prms.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(MemT_Instr_Crd_Prms.Lookup('PARAM_ROW_ID', FieldByName( 'PARAM_ROW_ID' ).AsVariant, 'PARAM_ROW_ID')) = ''
        Then
        Begin
          MemT_Instr_Crd_Prms.Append;
          MemT_Instr_Crd_Prms.CopyFields( Db_Instr_Crd_Tmp_Prms_List );
          MemT_Instr_Crd_Prms.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      MemT_Instr_Crd_Prms.EnableControls;
    End;
  End;
end;

procedure TDm_Tech_Proc.MemT_Instr_CardAfterScroll(DataSet: TDataSet);
Var
  I: Integer;
begin
  With Db_Instr_Crd_Tmp_Prms_List
  Do
  Begin
    Refresh;
    DisableControls;
    MemT_Instr_Crd_Prms.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(MemT_Instr_Crd_Prms.Lookup('PARAM_ROW_ID', FieldByName( 'PARAM_ROW_ID' ).AsVariant, 'PARAM_ROW_ID')) = ''
        Then
        Begin
          MemT_Instr_Crd_Prms.Append;
          MemT_Instr_Crd_Prms.CopyFields( Db_Instr_Crd_Tmp_Prms_List );
          MemT_Instr_Crd_Prms.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      MemT_Instr_Crd_Prms.EnableControls;
    End;
  End;
end;

procedure TDm_Tech_Proc.MemT_Instr_CardNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('DOC_TP_ID').AsInteger := Db_Doc_Info.FieldByName('Id').AsInteger;
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
    FieldByName('Oper_Rw_Id').AsInteger := MemT_Opers.FieldByName('Id_Row_Oper').AsInteger;
    Seq_Instr_Card.Execute;
    FieldByName('Id_Rw_Ins_Crd').AsInteger := Seq_Instr_Card.FieldAsInteger(0);
    FieldByName('USER_INSERT').AsString := DM_Main.Session.LogonUsername;
    FieldByName('USER_INSERT_NAME').AsString := Udm_Main.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[]);
  End;
end;

procedure TDm_Tech_Proc.MemT_Instr_Crd_PrmsAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Instr_Crd_PrmsNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('CRD_RW_ID').AsString := MemT_Instr_Card.FieldByName('ID_RW_INS_CRD').AsString;
    FieldByName('DOC_TP_ID').AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
  End;
end;

procedure TDm_Tech_Proc.MemT_Ins_Crd_Ins_TmpltsAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Ins_Crd_Ins_TmpltsAfterPost(DataSet: TDataSet);
Var
  I: Integer;
begin
  With Db_Instr_Tmplt_Prms_List
  Do
  Begin
    DisableControls;
    Refresh;
    MemT_Ins_Crd_Ins_Tmp_Prms.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(MemT_Ins_Crd_Ins_Tmp_Prms.Lookup('PARAM_ROW_ID', FieldByName( 'PARAM_ROW_ID' ).AsVariant, 'PARAM_ROW_ID')) = ''
        Then
        Begin
          MemT_Ins_Crd_Ins_Tmp_Prms.Append;
          MemT_Ins_Crd_Ins_Tmp_Prms.CopyFields( Db_Instr_Tmplt_Prms_List );
          MemT_Ins_Crd_Ins_Tmp_Prms.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      MemT_Ins_Crd_Ins_Tmp_Prms.EnableControls;
    End;
  End;
end;

procedure TDm_Tech_Proc.MemT_Ins_Crd_Ins_TmpltsAfterScroll(DataSet: TDataSet);
Var
  I: Integer;
begin
  With Db_Instr_Tmplt_Prms_List
  Do
  Begin
    DisableControls;
    Refresh;
    MemT_Ins_Crd_Ins_Tmp_Prms.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(MemT_Ins_Crd_Ins_Tmp_Prms.Lookup('PARAM_ROW_ID', FieldByName( 'PARAM_ROW_ID' ).AsVariant, 'PARAM_ROW_ID')) = ''
        Then
        Begin
          MemT_Ins_Crd_Ins_Tmp_Prms.Append;
          MemT_Ins_Crd_Ins_Tmp_Prms.CopyFields( Db_Instr_Tmplt_Prms_List );
          MemT_Ins_Crd_Ins_Tmp_Prms.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      MemT_Ins_Crd_Ins_Tmp_Prms.EnableControls;
    End;
  End;
end;

procedure TDm_Tech_Proc.MemT_Ins_Crd_Ins_TmpltsNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('CRD_RW_ID').AsString := MemT_Instr_Card.FieldByName('ID_RW_INS_CRD').AsString;
    FieldByName('DOC_TP_ID').AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
    FieldByName('CRD_INS_RW_ID').AsInteger := MemT_Ins_Crd_Per_Instrs.FieldByName('ID_RW_TP_PER_INS_CRD').AsInteger;
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
    Seq_Ins_Crd_Ins_Tmplts.Execute;
    FieldByName('ID_RW_TP_O_P_I_CRD_TYPES').AsInteger := Seq_Ins_Crd_Ins_Tmplts.FieldAsInteger(0);
  End;
end;

procedure TDm_Tech_Proc.MemT_Ins_Crd_Ins_Tmp_PrmsAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Ins_Crd_Ins_Tmp_PrmsNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('CRD_RW_ID').AsString := MemT_Instr_Card.FieldByName('ID_RW_INS_CRD').AsString;
    FieldByName('DOC_TP_ID').AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
    FieldByName('CRD_INS_TMP_RW_ID').AsInteger := MemT_Ins_Crd_Ins_Tmplts.FieldByName('ID_RW_TP_O_P_I_CRD_TYPES').AsInteger;
    Seq_Ins_Crd_Ins_Tmp_Prms.Execute;
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
    FieldByName('ID_RW_TP_PER_I_CRD_T_PRM').AsInteger := Seq_Ins_Crd_Ins_Tmp_Prms.FieldAsInteger(0);
  End;
end;

procedure TDm_Tech_Proc.MemT_Ins_Crd_Per_InstrsAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Ins_Crd_Per_InstrsAfterScroll(DataSet: TDataSet);
 var
  Mem_Strm: TMemoryStream;
  Img_Temp_File_Path: String;
begin
  With DataSet
  Do
  Begin
    Db_Linked_Instr_List.SetVariable('Id_Instr',FieldByName('Ins_Id').AsString);
    Db_Linked_Instr_List.Refresh;
  End;

end;

procedure TDm_Tech_Proc.MemT_Ins_Crd_Per_InstrsNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('CRD_INS_RW_ID').AsString := MemT_Instr_Card.FieldByName('ID_RW_INS_CRD').AsString;
    FieldByName('DOC_TP_ID').AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
    FieldByName('PER_RW_ID').AsInteger := MemT_Oper_Per.FieldByName('ID').AsInteger;
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
    Seq_Ins_Crd_Per_Instrs.Execute;
    FieldByName('ID_RW_TP_PER_INS_CRD').AsInteger := Seq_Ins_Crd_Per_Instrs.FieldAsInteger(0);
  End;
end;

procedure TDm_Tech_Proc.MemT_Ins_Crd_Per_Link_InstrsAfterEdit(
  DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_OpersAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_Status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_OpersAfterPost(DataSet: TDataSet);
var
  I: Integer;
begin
  Db_Oper_Params_List.SetVariable('v_Oper_Id', DataSet.FieldByName('OPER_ID').AsString);
  Db_Per_Params_List.SetVariable('v_Oper_Id', DataSet.FieldByName('OPER_ID').AsString);
  Db_Oper_Params_List.Refresh;
  Db_Per_Params_List.Refresh;

  With Db_Oper_Params_List
  Do
  Begin
    DisableControls;
    MemT_Oper_Params.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(MemT_Oper_Params.Lookup('PARAM_ROW_ID', FieldByName( 'PARAM_ROW_ID' ).AsVariant, 'PARAM_ROW_ID')) = ''
        Then
        Begin
          MemT_Oper_Params.Append;
          MemT_Oper_Params.CopyFields( Db_Oper_Params_List );
          MemT_Oper_Params.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      MemT_Oper_Params.EnableControls;
    End;
  End;
end;

procedure TDm_Tech_Proc.MemT_OpersAfterScroll(DataSet: TDataSet);
var
  I: Integer;
begin
  Db_Oper_Params_List.SetVariable('v_Oper_Id', DataSet.FieldByName('OPER_ID').AsString);
  Db_Per_Params_List.SetVariable('v_Oper_Id', DataSet.FieldByName('OPER_ID').AsString);
  Db_Oper_Params_List.Refresh;
  Db_Per_Params_List.Refresh;


  With Db_Oper_Params_List
  Do
  Begin
    DisableControls;
    MemT_Oper_Params.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(MemT_Oper_Params.Lookup('PARAM_ROW_ID', FieldByName( 'PARAM_ROW_ID' ).AsVariant, 'PARAM_ROW_ID')) = ''
        Then
        Begin
          MemT_Oper_Params.Append;
          MemT_Oper_Params.CopyFields( Db_Oper_Params_List );
          MemT_Oper_Params.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      MemT_Oper_Params.EnableControls;
    End;
  End;

  If (MemT_Per_Params.Active)
      And (Not MemT_Oper_Per.IsEmpty)
  Then
  Begin
    With Db_Per_Params_List
    Do
    Begin
      DisableControls;
      MemT_Per_Params.DisableControls;
      Try
        First;
        For I := 0 to RecordCount - 1
        Do
        Begin
          if VarToStr(MemT_Per_Params.Lookup('PARAM_ROW_ID', FieldByName( 'PARAM_ROW_ID' ).AsVariant, 'PARAM_ROW_ID')) = ''
          Then
          Begin
            MemT_Per_Params.Append;
            MemT_Per_Params.CopyFields( Db_Per_Params_List );
            MemT_Per_Params.Post;
          End;
          Next;
        End;
      Finally
        EnableControls;
        MemT_Per_Params.EnableControls;
      End;
    End;
  End;

end;

procedure TDm_Tech_Proc.MemTableEhBeforeDelete(DataSet: TDataSet);
var
  i: Integer;
begin

  If Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
  Begin
    if Db_Doc_Info.FieldByName('DOC_EDIT_STAT').AsString = 'LOCK'
    Then
      Abort;

    if (Db_Doc_Info.FieldByName('DOC_EDIT_STAT').AsString = 'UNLOCK_FOR_NORM')
        and (StrList_DataSetsForNorms.IndexOf(DataSet.Name) = -1)
    then
      Abort;
  End;

  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
       And (FieldByName('rw_status').AsString <> 'inserted')
    then
    begin
      Edit;
      FieldByName('rw_status').AsString := 'deleted';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
      Post;
      if (DataSet = MemT_Doc_Parts)
          Or (DataSet = MemT_Opers)
          Or (DataSet = MemT_Oper_Per)
      then
        P_FlagDelete_ChildDataSet((DataSet as TMemTableEh), (DataSet as TMemTableEh).Rec);
      Abort;
    end;
  end;
  if (DataSet = MemT_Doc_Parts)
      Or (DataSet = MemT_Opers)
      Or (DataSet = MemT_Oper_Per)
  then
    P_Delete_ChildDataSet((DataSet as TMemTableEh), (DataSet as TMemTableEh).Rec);
end;

procedure TDm_Tech_Proc.P_Delete_ChildDataSet(ParentMemTable: TMemTableEh; ParentRec: TMemoryRecordEh);
Var
  I: Integer;
  procedure P_DeleteChild (ChildMemTable: TMemTableEh);
  var
    I: Integer;

  begin
    With ChildMemTable
    Do
    Begin
      DisableControls;
      Try
        With RecordsView.MemTableData.RecordsList
        Do
        Begin
          i := 0;
          while i < Count
          do
          Begin
            if ( Rec[i].DataValues[ DetailFields, dvvValueEh]
                 = ParentRec.DataValues[ MasterFields, dvvValueEh ] )
                 and (rec[i].UpdateStatus <> usDeleted)
            Then
            begin
              if ChildMemTable = MemT_Opers
              then
              begin
                P_Delete_ChildDataSet(MemT_Opers, Rec[i]);
              end
              else if ChildMemTable = MemT_Oper_Per
              then
              begin
                P_Delete_ChildDataSet(MemT_Oper_Per, Rec[i]);
              end;

              if (Rec[i].DataValues['Doc_Tp_Vers_Id', dvvValueEh] = ParentRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh])
              then
              begin
                DeleteRecord(Rec[i].Index);
                Dec(i);
              end;
            End;
            Inc(i)
          End;
        End;
      Finally
        EnableControls;
      End;
    End;
  end;
begin
  if ParentMemTable = MemT_Doc_Parts
  then
  begin
    P_DeleteChild(MemT_Opers);
  end
  else if ParentMemTable = MemT_Opers
  then
  begin
    P_DeleteChild(MemT_Oper_Params);
    P_DeleteChild(MemT_Oper_Time);
    P_DeleteChild(MemT_Oper_Time_Works);
    P_DeleteChild(MemT_Oper_Per);
  end
  else if ParentMemTable = MemT_Oper_Per
  then
  begin
    P_DeleteChild(MemT_Per_Details);
    P_DeleteChild(MemT_Per_Materials);
    P_DeleteChild(MemT_Per_Instruments);
    P_DeleteChild(MemT_Per_Osnast);
    P_DeleteChild(MemT_Per_Params);
  end;
end;

procedure TDm_Tech_Proc.P_Delete_Child_Rec(Vl_MemRec: TMemoryRecordEh;
  Vl_Start_Pos: String; Vl_UpdateStatus: TUpdateStatus);
  Var
  Vl_Oper_MemRec, Vl_Op_Per_MemRec: TMemoryRecordEh;
  i, j: Integer;
begin
  If Vl_Start_Pos = 'oper'
  Then
    Vl_Oper_MemRec := Vl_MemRec
  Else if Vl_Start_Pos = 'op_per'
  Then
    Vl_Op_Per_MemRec := Vl_MemRec;

  If Vl_Start_Pos = 'oper'
  Then
  Begin
    With MemT_Oper_Time
    Do
    Begin
      DisableControls;
      Try
        With RecordsView.MemTableData.RecordsList
        Do
        Begin
          For i := 0 to Count - 1
          Do
          Begin
            if i >= Count
            then
              Break;

            if (Rec[i].DataValues['OPER_RW_ID', dvvValueEh] = Vl_Oper_MemRec.DataValues['Id_Row_Oper', dvvValueEh])
                And (Rec[i].DataValues['Doc_Tp_Vers_Id', dvvValueEh] = Vl_Oper_MemRec.DataValues['DOC_TP_VERS_ID', dvvValueEh])
            Then
              DeleteRecord(Rec[i].Index);
          End;
        End;
      Finally
        EnableControls;
      End;
    End;

    With MemT_Oper_Params
    Do
    Begin
      DisableControls;
      Try
        With RecordsView.MemTableData.RecordsList
        Do
        Begin
          For i := 0 to Count - 1
          Do
          Begin
            if i >= Count
            then
              Break;

            if (Rec[i].DataValues['OPER_ROW_ID', dvvValueEh] = Vl_Oper_MemRec.DataValues['Id_Row_Oper', dvvValueEh])
                And (Rec[i].DataValues['Doc_Tp_Vers_Id', dvvValueEh] = Vl_Oper_MemRec.DataValues['DOC_TP_VERS_ID', dvvValueEh])
            Then
              DeleteRecord(Rec[i].Index);
          End;
        End;
      Finally
        EnableControls;
      End;
    End;
  End;

  With MemT_Oper_Per
  Do
  Begin
    DisableControls;
    Try
      With RecordsView.MemTableData.RecordsList
      Do
      Begin
        For I := 0 to Count - 1
        Do
        Begin
          If Vl_Start_Pos = 'oper'
          Then
            If (Rec[i].DataValues['ID_ROW_OPER', dvvValueEh] = Vl_Oper_MemRec.DataValues['Id_Row_Oper', dvvValueEh])
                And (Rec[i].DataValues['Doc_Tp_Vers_Id', dvvValueEh] = Vl_Oper_MemRec.DataValues['DOC_TP_VERS_ID', dvvValueEh])
            Then
            Begin
              Vl_Op_Per_MemRec := Rec[i];
            End;

          if i >= Count
          then
            Break;

          If (I > 1)
              And (Vl_Start_Pos = 'op_per')
          Then
            Break;

          if Vl_Op_Per_MemRec <> Nil
          Then
          Begin
            With MemT_Per_Details
            Do
            Begin
              DisableControls;
              Try
                With RecordsView.MemTableData
                Do
                Begin
                  For j := 0 to RecordsList.Count - 1
                  Do
                  Begin
                    if j >= RecordsList.Count
                    then
                      Break;

                    if (RecordsList.Rec[j].DataValues['Id_Row_Per', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Id', dvvValueEh])
                        And (RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh])
                    Then
                      RecordsList.DeleteRecord(RecordsList.Rec[j].Index);
                  End;
                End;
              Finally
                EnableControls;
              End;
            End;

            With MemT_Per_Materials
            Do
            Begin
              DisableControls;
              Try
                With RecordsView.MemTableData
                Do
                Begin
                  For j := 0 to RecordsList.Count - 1
                  Do
                  Begin
                    if j >= RecordsList.Count
                    then
                      Break;

                    if (RecordsList.Rec[j].DataValues['Id_Row_Per', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Id', dvvValueEh])
                        And (RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh])
                    Then
                      RecordsList.DeleteRecord(RecordsList.Rec[j].Index);
                  End;
                End;
              Finally
                EnableControls;
              End;
            End;

            With MemT_Per_Instruments
            Do
            Begin
              DisableControls;
              Try
                With RecordsView.MemTableData
                Do
                Begin
                  For j := 0 to RecordsList.Count - 1
                  Do
                  Begin

                    if j >= RecordsList.Count
                    then
                      Break;

                    if (RecordsList.Rec[j].DataValues['Id_Row_Per', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Id', dvvValueEh])
                        And (RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh])
                    Then
                      RecordsList.DeleteRecord(RecordsList.Rec[j].Index);
                  End;
                End;
              Finally
                EnableControls;
              End;
            End;

            With MemT_Per_Osnast
            Do
            Begin
              DisableControls;
              Try
                With RecordsView.MemTableData
                Do
                Begin
                  For j := 0 to RecordsList.Count - 1
                  Do
                  Begin
                    if j >= RecordsList.Count
                    then
                      Break;

                    if (RecordsList.Rec[j].DataValues['Id_Row_Per', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Id', dvvValueEh])
                        And (RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh])
                    Then
                      RecordsList.DeleteRecord(RecordsList.Rec[j].Index);
                  End;
                End;
              Finally
                EnableControls;
              End;
            End;
            DeleteRecord(Vl_Op_Per_MemRec.Index);
            Vl_Op_Per_MemRec := Nil;
          End;
        End;
      End;
    Finally
      EnableControls;
    End;

  End;

end;

procedure TDm_Tech_Proc.P_FlagDelete_ChildDataSet(ParentMemTable: TMemTableEh; ParentRec: TMemoryRecordEh);
Var
  I: Integer;
  procedure P_FlagChild (ChildMemTable: TMemTableEh);
  var
    I: Integer;
  begin
    With ChildMemTable
    Do
    Begin
      DisableControls;
      Try
        With RecordsView.MemTableData.RecordsList
        Do
        Begin
          i := 0;
          while i < Count
          Do
          Begin
            if ( Rec[i].DataValues[ DetailFields, dvvValueEh]
                 = ParentRec.DataValues[ MasterFields, dvvValueEh ] )
                 and (rec[i].UpdateStatus <> usDeleted)
            Then
            begin
              if ChildMemTable = MemT_Opers
              then
              begin
                P_FlagDelete_ChildDataSet(MemT_Opers, Rec[i]);
              end
              else if ChildMemTable = MemT_Oper_Per
              then
              begin
                P_FlagDelete_ChildDataSet(MemT_Oper_Per, Rec[i]);
              end;

              if (Rec[i].DataValues['Doc_Tp_Vers_Id', dvvValueEh] <> ParentRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh])
                  Or ((Rec[i].DataValues['Rw_status', dvvValueEh] <> 'inserted')
                       And (Rec[i].DataValues['Doc_Tp_Vers_Id', dvvValueEh] = ParentRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh]))
              then
              begin
                Rec[i].Edit;
                Rec[i].DataValues['Rw_status', dvvEditValueEh] := 'deleted';
                Rec[i].UpdateStatus := usModified;
                Rec[i].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] := ParentRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh];
                Rec[i].Post;
              end
              else if (Rec[i].DataValues['Rw_status', dvvValueEh] = 'inserted')
                       And (Rec[i].DataValues['Doc_Tp_Vers_Id', dvvValueEh] = ParentRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh])
              then
              begin
                DeleteRecord(Rec[i].Index);
                Dec(i);
              end;
            end;
            Inc(i);
          End;
        End;
      Finally
        EnableControls;
      End;
    End;
  end;
begin
  if ParentMemTable = MemT_Doc_Parts
  then
  begin
    P_FlagChild(MemT_Opers);
  end
  else if ParentMemTable = MemT_Opers
  then
  begin
    P_FlagChild(MemT_Oper_Params);
    P_FlagChild(MemT_Oper_Time);
    P_FlagChild(MemT_Oper_Time_Works);
    P_FlagChild(MemT_Oper_Per);
  end
  else if ParentMemTable = MemT_Oper_Per
  then
  begin
    P_FlagChild(MemT_Per_Details);
    P_FlagChild(MemT_Per_Materials);
    P_FlagChild(MemT_Per_Instruments);
    P_FlagChild(MemT_Per_Osnast);
    P_FlagChild(MemT_Per_Params);
  end;
end;

procedure TDm_Tech_Proc.P_FlagDelete_Child_Rec(Vl_MemRec: TMemoryRecordEh;
  Vl_Start_Pos: String; Vl_UpdateStatus: TUpdateStatus);

  Var
  Vl_Oper_MemRec, Vl_Op_Per_MemRec: TMemoryRecordEh;
  i, j: Integer;
begin
  If Vl_Start_Pos = 'oper'
  Then
    Vl_Oper_MemRec := Vl_MemRec
  Else if Vl_Start_Pos = 'op_per'
  Then
    Vl_Op_Per_MemRec := Vl_MemRec;

  If Vl_Start_Pos = 'oper'
  Then
  Begin
    With MemT_Oper_Time
    Do
    Begin
      DisableControls;
      Try
        With RecordsView.MemTableData.RecordsList
        Do
        Begin
          For i := 0 to Count - 1
          Do
          Begin
            if i >= Count
            then
              Break;

            if Rec[i].DataValues['OPER_RW_ID', dvvValueEh] = Vl_Oper_MemRec.DataValues['Id_Row_Oper', dvvValueEh]
            Then
            begin
              if Rec[i].DataValues['Rw_status', dvvValueEh] <> 'inserted'
              then
              begin
                Rec[i].Edit;
                Rec[i].DataValues['Rw_status', dvvEditValueEh] := 'deleted';
                Rec[i].UpdateStatus := usModified;
                Rec[i].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] := Vl_Oper_MemRec.DataValues['DOC_TP_VERS_ID', dvvValueEh];
                Rec[i].Post;
              end
              else if (Rec[i].DataValues['Rw_status', dvvValueEh] <> 'inserted')
                        And (Rec[i].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] = Vl_Oper_MemRec.DataValues['DOC_TP_VERS_ID', dvvValueEh])
              then
                DeleteRecord(Rec[i].Index);
            end;
          End;
        End;
      Finally
        EnableControls;
      End;
    End;

    With MemT_Oper_Params
    Do
    Begin
      DisableControls;
      Try
        With RecordsView.MemTableData.RecordsList
        Do
        Begin
          For i := 0 to Count - 1
          Do
          Begin
            if i >= Count
            then
              Break;

            if Rec[i].DataValues['OPER_ROW_ID', dvvValueEh] = Vl_Oper_MemRec.DataValues['Id_Row_Oper', dvvValueEh]
            Then
            begin
              if Rec[i].DataValues['Rw_status', dvvValueEh] <> 'inserted'
              then
              begin
                Rec[i].Edit;
                Rec[i].DataValues['Rw_status', dvvEditValueEh] := 'deleted';
                Rec[i].UpdateStatus := usModified;
                Rec[i].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] := Vl_Oper_MemRec.DataValues['DOC_TP_VERS_ID', dvvValueEh];
                Rec[i].Post;
              end
              else if (Rec[i].DataValues['Rw_status', dvvValueEh] = 'inserted')
                        And (Rec[i].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] = Vl_Oper_MemRec.DataValues['DOC_TP_VERS_ID', dvvValueEh])
              then
                DeleteRecord(Rec[i].Index);
            end;
          End;
        End;
      Finally
        EnableControls;
      End;
    End;
  End;

  With MemT_Oper_Per
  Do
  Begin
    DisableControls;
    Try
      With RecordsView.MemTableData.RecordsList
      Do
      Begin
        For I := 0 to Count - 1
        Do
        Begin
          If Vl_Start_Pos = 'oper'
          Then
            If Rec[i].DataValues['ID_ROW_OPER', dvvValueEh] = Vl_Oper_MemRec.DataValues['Id_Row_Oper', dvvValueEh]
            Then
            Begin
              if Rec[i].DataValues['Rw_status', dvvValueEh] <> 'inserted'
              then
              begin
                Rec[i].Edit;
                Rec[i].DataValues['Rw_status', dvvEditValueEh] := 'deleted';
                Rec[i].UpdateStatus := usModified;
                Rec[i].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] := Vl_Oper_MemRec.DataValues['DOC_TP_VERS_ID', dvvValueEh];
                Rec[i].Post;
              end;

              Vl_Op_Per_MemRec := Rec[i];
            End;

          if i >= Count
          then
            Break;


          If (I > 1)
              And (Vl_Start_Pos = 'op_per')
          Then
            Break;

          if Vl_Op_Per_MemRec <> Nil
          Then
          Begin
            With MemT_Per_Details
            Do
            Begin
              DisableControls;
              Try
                With RecordsView.MemTableData
                Do
                Begin
                  For j := 0 to RecordsList.Count - 1
                  Do
                  Begin
                    if j >= RecordsList.Count
                    then
                      Break;

                    if RecordsList.Rec[j].DataValues['Id_Row_Per', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Id', dvvValueEh]
                    Then
                    begin
                      if RecordsList.Rec[j].DataValues['Rw_status', dvvValueEh] <> 'inserted'
                      then
                      begin
                        RecordsList.Rec[j].Edit;
                        RecordsList.Rec[j].DataValues['Rw_status', dvvEditValueEh] := 'deleted';
                        RecordsList.Rec[j].UpdateStatus := usModified;
                        RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] := Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh];
                        RecordsList.Rec[j].Post;
                      end
                      else if (RecordsList.Rec[j].DataValues['Rw_status', dvvValueEh] = 'inserted')
                            And (RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] = Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh])
                      then
                        RecordsList.DeleteRecord(RecordsList.Rec[j].Index);
                    end;
                  End;
                End;
              Finally
                EnableControls;
              End;
            End;

            With MemT_Per_Materials
            Do
            Begin
              DisableControls;
              Try
                With RecordsView.MemTableData
                Do
                Begin
                  For j := 0 to RecordsList.Count - 1
                  Do
                  Begin
                    if j >= RecordsList.Count
                    then
                      Break;

                    if RecordsList.Rec[j].DataValues['Id_Row_Per', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Id', dvvValueEh]
                    Then
                    begin
                      if RecordsList.Rec[j].DataValues['Id_Row_Per', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Id', dvvValueEh]
                      Then
                      begin
                        if RecordsList.Rec[j].DataValues['Rw_status', dvvValueEh] <> 'inserted'
                        then
                        begin
                          RecordsList.Rec[j].Edit;
                          RecordsList.Rec[j].DataValues['Rw_status', dvvEditValueEh] := 'deleted';
                          RecordsList.Rec[j].UpdateStatus := usModified;
                          RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] := Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh];
                          RecordsList.Rec[j].Post;
                        end
                        else if (RecordsList.Rec[j].DataValues['Rw_status', dvvValueEh] = 'inserted')
                            And (RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] = Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh])
                        then
                          RecordsList.DeleteRecord(RecordsList.Rec[j].Index);
                      end;
                    end;
                  End;
                End;
              Finally
                EnableControls;
              End;
            End;

            With MemT_Per_Instruments
            Do
            Begin
              DisableControls;
              Try
                With RecordsView.MemTableData
                Do
                Begin
                  For j := 0 to RecordsList.Count - 1
                  Do
                  Begin
                    if j >= RecordsList.Count
                    then
                      Break;

                    if RecordsList.Rec[j].DataValues['Id_Row_Per', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Id', dvvValueEh]
                    Then
                    begin
                      if RecordsList.Rec[j].DataValues['Id_Row_Per', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Id', dvvValueEh]
                      Then
                      begin
                        if RecordsList.Rec[j].DataValues['Rw_status', dvvValueEh] <> 'inserted'
                        then
                        begin
                          RecordsList.Rec[j].Edit;
                          RecordsList.Rec[j].DataValues['Rw_status', dvvEditValueEh] := 'deleted';
                          RecordsList.Rec[j].UpdateStatus := usModified;
                          RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] := Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh];
                          RecordsList.Rec[j].Post;
                        end
                        else if (RecordsList.Rec[j].DataValues['Rw_status', dvvValueEh] = 'inserted')
                            And (RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] = Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh])
                        then
                          RecordsList.DeleteRecord(RecordsList.Rec[j].Index);
                      end;
                    end;
                  End;
                End;
              Finally
                EnableControls;
              End;
            End;

            With MemT_Per_Osnast
            Do
            Begin
              DisableControls;
              Try
                With RecordsView.MemTableData
                Do
                Begin
                  For j := 0 to RecordsList.Count - 1
                  Do
                  Begin
                    if j >= RecordsList.Count
                    then
                      Break;

                    if RecordsList.Rec[j].DataValues['Id_Row_Per', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Id', dvvValueEh]
                    Then
                    begin
                      if RecordsList.Rec[j].DataValues['Id_Row_Per', dvvValueEh] = Vl_Op_Per_MemRec.DataValues['Id', dvvValueEh]
                      Then
                      begin
                        if RecordsList.Rec[j].DataValues['Rw_status', dvvValueEh] <> 'inserted'
                        then
                        begin
                          RecordsList.Rec[j].Edit;
                          RecordsList.Rec[j].DataValues['Rw_status', dvvEditValueEh] := 'deleted';
                          RecordsList.Rec[j].UpdateStatus := usModified;
                          RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] := Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh];
                          RecordsList.Rec[j].Post;
                        end
                        else if (RecordsList.Rec[j].DataValues['Rw_status', dvvValueEh] = 'inserted')
                            And (RecordsList.Rec[j].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] = Vl_Op_Per_MemRec.DataValues['Doc_Tp_Vers_Id', dvvValueEh])
                        then
                          RecordsList.DeleteRecord(RecordsList.Rec[j].Index);
                      end;
                    end;
                  End;
                End;
              Finally
                EnableControls;
              End;
            End;

            if (Rec[i].DataValues['Rw_status', dvvValueEh] = 'inserted')
                        And (Rec[i].DataValues['Doc_Tp_Vers_Id', dvvEditValueEh] = Vl_Oper_MemRec.DataValues['DOC_TP_VERS_ID', dvvValueEh])
            then
              DeleteRecord(Vl_Oper_MemRec.Index);

            Vl_Op_Per_MemRec := Nil;
          End;
        End;
      End;
    Finally
      EnableControls;
    End;

  End;

end;

procedure TDm_Tech_Proc.MemTableEhBeforeEdit(DataSet: TDataSet);
begin

  If Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
  Begin
    If Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
    Then
    Begin
      if Db_Doc_Info.FieldByName('DOC_EDIT_STAT').AsString = 'LOCK'
      Then
        Abort;

      if (Db_Doc_Info.FieldByName('DOC_EDIT_STAT').AsString = 'UNLOCK_FOR_NORM')
          and (StrList_DataSetsForNorms.IndexOf(DataSet.Name) = -1)
      then
        Abort;
    End;

    If Db_Doc_Info.FieldByName('DOC_TYPE').AsInteger = 1
    Then
    Begin
      If ( PKG_TP_DOC.CallIntegerFunction( 'F_Access_To_Edit_Doc_Part', [ MemT_Doc_PartsID.AsInteger ] ) = 0 )
      Then
      Begin
        Abort;
      End;
    End;
  End;

  if (DataSet as TMemTableEh).MasterSource <> Nil
  then
  begin
    if (DataSet as TMemTableEh).MasterSource.DataSet.FieldByName('Rw_Status').AsString = 'deleted'
    then
      Abort;
  end;

  if (DataSet.FieldByName('Rw_Status').AsString = 'deleted')
  then
    Abort;

end;

procedure TDm_Tech_Proc.MemTableEhBeforeInsert(DataSet: TDataSet);
begin
  If Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
  Begin
    If Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
    Then
    Begin
      if Db_Doc_Info.FieldByName('DOC_EDIT_STAT').AsString = 'LOCK'
      Then
        Abort;

      if (Db_Doc_Info.FieldByName('DOC_EDIT_STAT').AsString = 'UNLOCK_FOR_NORM')
          and (StrList_DataSetsForNorms.IndexOf(DataSet.Name) = -1)
      then
        Abort;
    End;

    If Db_Doc_Info.FieldByName('DOC_TYPE').AsInteger = 1
    Then
    Begin
      If ( PKG_TP_DOC.CallIntegerFunction( 'F_Access_To_Edit_Doc_Part', [ MemT_Doc_PartsID.AsInteger ] ) = 0 )
      Then
      Begin
        Abort;
      End;
    End;
  End;
  with (DataSet as TMemTableEh)
  do
  begin
    if MasterSource <> Nil
    then
    begin
      if MasterSource.DataSet.FieldByName('Rw_Status').AsString = 'deleted'
      then
        Abort;
      if MasterSource.DataSet.FieldByName(MasterFields).IsNull
      then
        Abort;
    end;

    if (DataSet = MemT_Ins_Crd_Per_Instrs)
       Or (DataSet = MemT_Ins_Crd_Per_Link_Instrs)
    then
    begin
      If MemT_Instr_Card.FieldByName('ID_RW_INS_CRD').AsString = ''
      Then
        Abort;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_OpersGetFieldValue(MemTable: TCustomMemTableEh;
  Field: TField; var Value: Variant);
begin
  If Not MemTable.IsEmpty
  Then
    If Field.DisplayName = 'NOMOPER'
    Then
    Begin
      if (Value <> MemTable.RecNo)
          And (MemTable.RecNo <> 0)
      Then
      Begin
        Value := MemTable.RecNo;
        MemTable.Rec.DataValues['NOMOPER', dvvValueEh] := Value;
        //MemTable.Rec.DataValues['NOMOPER', dvvValueEh] := MemTable.RecNo;
        if MemTable.Rec.UpdateStatus = usUnmodified
        Then
          MemTable.Rec.UpdateStatus := usModified;
      End;
    End;
end;

procedure TDm_Tech_Proc.MemT_OpersNewRecord(DataSet: TDataSet);
  var
  v_In_User_Params,
  v_Out_User_Params: TDynVarsEh;
begin
  With DataSet
  Do
  Begin
    FieldByName('ID_PART_TP').AsInteger := MemT_Doc_Parts.FieldByName('ID').AsInteger;
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_Status').AsString := 'inserted'
    Else
      FieldByName('Rw_Status').AsString := 'none_edit';
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    FieldByName('ID_RW_VERS').AsInteger := 1;
    FieldByName('NOMOPER').AsInteger := MemT_Opers.RecordsView.Count + 1;
    FieldByName('DATAIZM').AsDateTime := Now();
    SEQ_Db_Opers.Execute;
    FieldByName('ID_ROW_OPER').AsInteger := SEQ_Db_Opers.FieldAsInteger(0);
    FieldByName('CEH_ID').AsInteger := MemT_Doc_Parts.FieldByName('CEH_ID').AsInteger;
    FieldByName('ID_DOC_TP').AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
    FieldByName('DOK_IN').AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
    FieldByName('RAZRAB').AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_lnum;
    FieldByName('USER_ID_INSRT').AsString := Udm_Main.DM_Main.Session.LogonUsername;
    FieldByName('USER_ID_CORR').AsString := Udm_Main.DM_Main.Session.LogonUsername;

    v_In_User_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_User_Params.DynVar[ 'Find' ].AsString := 'USERS';
    v_In_User_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
                                                      + ' And Id_User = ''' + Udm_Main.DM_Main.Session.LogonUsername + ''' ';
    v_Out_User_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_User_Params );
    If v_Out_User_Params <> Nil
    Then
    Begin
      FieldByName('RAZRAB_NAME').AsString := v_Out_User_Params.DynVar[ 'EMP_FIO' ].AsString;
    End;
  End;
end;

procedure TDm_Tech_Proc.MemT_Oper_ParamsAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      //FieldByName('Rw_Vers').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Oper_ParamsBeforeEdit(DataSet: TDataSet);
begin
  if MemT_Opers.ReadOnly
  Then
   Abort;

  if (DataSet as TMemTableEh).MasterSource <> Nil
  then
  begin
    if (DataSet as TMemTableEh).MasterSource.DataSet.FieldByName('Rw_Status').AsString = 'deleted'
    then
      Abort;
  end;
end;

procedure TDm_Tech_Proc.MemT_Oper_ParamsNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('OPER_ROW_ID').AsString := MemT_OpersID_ROW_OPER.AsString;
    FieldByName('DOC_TP_ID').AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
  End;
end;

procedure TDm_Tech_Proc.MemT_Oper_PerAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Oper_PerAfterPost(DataSet: TDataSet);
Var
  I: Integer;
begin
  With Db_Per_Params_List
  Do
  Begin
    DisableControls;
    MemT_Per_Params.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(MemT_Per_Params.Lookup('PARAM_ROW_ID', FieldByName( 'PARAM_ROW_ID' ).AsVariant, 'PARAM_ROW_ID')) = ''
        Then
        Begin
          MemT_Per_Params.Append;
          MemT_Per_Params.CopyFields( Db_Per_Params_List );
          MemT_Per_Params.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      MemT_Per_Params.EnableControls;
    End;
  End;
end;

procedure TDm_Tech_Proc.MemT_Oper_PerAfterScroll(DataSet: TDataSet);
Var
  I: Integer;
begin
  With Db_Per_Params_List
  Do
  Begin
    DisableControls;
    MemT_Per_Params.DisableControls;
    Try
      First;
      For I := 0 to RecordCount - 1
      Do
      Begin
        if VarToStr(MemT_Per_Params.Lookup('PARAM_ROW_ID', FieldByName( 'PARAM_ROW_ID' ).AsVariant, 'PARAM_ROW_ID')) = ''
        Then
        Begin
          MemT_Per_Params.Append;
          MemT_Per_Params.CopyFields( Db_Per_Params_List );
          MemT_Per_Params.Post;
        End;
        Next;
      End;
    Finally
      EnableControls;
      MemT_Per_Params.EnableControls;
    End;
  End;
end;

procedure TDm_Tech_Proc.MemT_Oper_PerGetFieldValue(MemTable: TCustomMemTableEh;
  Field: TField; var Value: Variant);
begin
  If Not MemTable.IsEmpty
  Then
    If Field.DisplayName = 'NOM_PER'
    Then
    Begin
      if (VarToStr(Value) <> IntToStr(MemTable.RecNo))
          And (MemTable.RecNo <> 0)
      Then
      Begin
        Value := MemTable.RecNo;
        //MemTable.Rec.DataValues['NOM_PER', dvvValueEh] := MemTable.RecNo;
        MemTable.Rec.DataValues['NOM_PER', dvvValueEh] := Value;
        if MemTable.Rec.UpdateStatus = usUnmodified
        Then
          MemTable.Rec.UpdateStatus := usModified;
      End;
    End;
end;

procedure TDm_Tech_Proc.MemT_Oper_PerNewRecord(DataSet: TDataSet);
  var
  v_In_User_Params,
  v_Out_User_Params: TDynVarsEh;
begin
  With DataSet
  Do
  Begin
    MemT_Oper_PerID_ROW_OPER.AsInteger := MemT_OpersID_ROW_OPER.AsInteger;
    //MemT_Oper_PerID_PART_TP.AsInteger := MemT_OpersID_PART_TP.AsInteger;
    MemT_Oper_PerNOM_PER.AsInteger := MemT_Oper_Per.RecordsView.Count + 1;
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
    Seq_Db_Oper_Per.Execute;
    MemT_Oper_PerID.AsInteger := Seq_Db_Oper_Per.FieldAsInteger(0);
    FieldByName('ID_RW_VERS').AsInteger := 1;
    MemT_Oper_PerDATAIZM.AsString := DateTimeToStr(Now());
    MemT_Oper_PerDOK_IN.AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
    FieldByName('USER_ID_INSRT').AsString := DM_Main.Session.LogonUsername;
    FieldByName('USER_ID_CORR').AsString := DM_Main.Session.LogonUsername;
    v_In_User_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_User_Params.DynVar[ 'Find' ].AsString := 'USERS';
    if Tp_Main_Form.Form_Tech_Proc_Main.User_Admin then
    Begin
      MemT_Oper_PerRAZRAB.AsInteger := MemT_OpersRAZRAB.AsInteger;
      v_In_User_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + MemT_OpersRAZRAB.AsString;
    End
    Else if not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin then
    Begin
      FieldByName('USER_ID_INSRT').AsString := DM_Main.Session.LogonUsername;
      FieldByName('USER_ID_CORR').AsString := DM_Main.Session.LogonUsername;
      MemT_Oper_PerRAZRAB.AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_lnum;
      v_In_User_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
                                                      + ' And Id_User = ''' + Udm_Main.DM_Main.Session.LogonUsername + ''' ';
    End;
    v_Out_User_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_User_Params );
    If Not v_Out_User_Params.DynVar[ 'EMP_ID' ].IsNull
    Then
    Begin
      MemT_Oper_PerRAZRAB_NAME.AsString := v_Out_User_Params.DynVar[ 'EMP_FIO' ].AsString;
    End;
  End;
end;

procedure TDm_Tech_Proc.MemT_Oper_TimeAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
      FieldByName('Rw_status').AsString := 'updated';
  end;
end;

procedure TDm_Tech_Proc.MemT_Oper_TimeNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('OPER_RW_ID').AsInteger := MemT_Opers.FieldByName('ID_ROW_OPER').AsInteger;
    FieldByName('ID_PART_TP').AsInteger := MemT_Doc_Parts.FieldByName('ID').AsInteger;
    FieldByName('UNIT_COUNT').AsInteger := 1;
    FieldByName('DOC_TP_ID').AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
    Seq_Oper_Time.Execute;
    FieldByName('ID_RW_OP_TIME').AsInteger := Seq_Oper_Time.FieldAsInteger(0);
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
  End;
end;

procedure TDm_Tech_Proc.MemT_Oper_Time_WorksAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Oper_Time_WorksNewRecord(DataSet: TDataSet);
begin
  MemT_Oper_Time_WorksOPER_RW_ID.AsInteger := MemT_OpersID_ROW_OPER.AsInteger;
  MemT_Oper_Time_WorksDOC_TP_ID.AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
  Seq_Oper_Time_Works.Execute;
  MemT_Oper_Time_WorksID_RW_OP_WRK_T.AsInteger := Seq_Oper_Time_Works.FieldAsInteger(0);
  if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
  then
    MemT_Oper_Time_Works.FieldByName('Rw_status').AsString := 'inserted'
  Else
    MemT_Oper_Time_Works.FieldByName('Rw_status').AsString := 'none_edit';
end;

procedure TDm_Tech_Proc.MemT_Per_DetailsAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Per_DetailsNewRecord(DataSet: TDataSet);
  var
  v_In_User_Params,
  v_Out_User_Params: TDynVarsEh;
begin
  MemT_Per_DetailsID_ROW_PER.AsInteger := MemT_Oper_PerId.AsInteger;
  MemT_Per_DetailsDOK_IN.AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
  MemT_Per_Details.FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
  if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
  then
    MemT_Per_Details.FieldByName('Rw_status').AsString := 'inserted'
  Else
    MemT_Per_Details.FieldByName('Rw_status').AsString := 'none_edit';
  MemT_Per_DetailsDATAIZM.AsDateTime := Now();
  Seq_Db_Per_Details.Execute;
  MemT_Per_DetailsID.AsInteger := Seq_Db_Per_Details.FieldAsInteger(0);
  v_In_User_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_User_Params.DynVar[ 'Find' ].AsString := 'USERS';
  if Tp_Main_Form.Form_Tech_Proc_Main.User_Admin then
  Begin
    MemT_Per_DetailsRAZRAB.AsInteger := MemT_Oper_PerRAZRAB.AsInteger;
    v_In_User_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + MemT_Oper_PerRAZRAB.AsString;
  End
  Else if not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin then
  Begin
    MemT_Per_DetailsRAZRAB.AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_lnum;
    v_In_User_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
                                                    + ' And Id_User = ''' + Udm_Main.DM_Main.Session.LogonUsername + ''' ';
  End;
  v_Out_User_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_User_Params );
  If Not v_Out_User_Params.DynVar[ 'EMP_ID' ].IsNull
  Then
  Begin
    MemT_Per_DetailsRAZRAB_NAME.AsString := v_Out_User_Params.DynVar[ 'EMP_FIO' ].AsString;
  End;
end;

procedure TDm_Tech_Proc.MemT_Per_InstrumentsAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Per_InstrumentsNewRecord(DataSet: TDataSet);
  var
  v_In_User_Params,
  v_Out_User_Params: TDynVarsEh;
begin
  MemT_Per_InstrumentsID_ROW_PER.AsInteger := MemT_Oper_PerId.AsInteger;
  MemT_Per_InstrumentsNOM_INSTR.AsInteger := MemT_Per_Instruments.RecordCount + 1;
  if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
  then
    MemT_Per_Instruments.FieldByName('Rw_status').AsString := 'inserted'
  Else
    MemT_Per_Instruments.FieldByName('Rw_status').AsString := 'none_edit';
  MemT_Per_InstrumentsDOK_IN.AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
  MemT_Per_Instruments.FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
  MemT_Per_InstrumentsDATAIZM.AsDateTime := Now();
  Seq_Db_Per_Instruments.Execute;
  MemT_Per_InstrumentsID.AsInteger := Seq_Db_Per_Instruments.FieldAsInteger(0);
  v_In_User_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_User_Params.DynVar[ 'Find' ].AsString := 'USERS';
  if Tp_Main_Form.Form_Tech_Proc_Main.User_Admin then
  Begin
    MemT_Per_InstrumentsRAZRAB.AsInteger := MemT_Oper_PerRAZRAB.AsInteger;
    v_In_User_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + MemT_Oper_PerRAZRAB.AsString;
  End
  Else if not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin then
  Begin
    MemT_Per_InstrumentsRAZRAB.AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_lnum;
    v_In_User_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
                                                    + ' And Id_User = ''' + Udm_Main.DM_Main.Session.LogonUsername + ''' ';
  End;
  v_Out_User_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_User_Params );
  If Not v_Out_User_Params.DynVar[ 'EMP_ID' ].IsNull
  Then
  Begin
    MemT_Per_InstrumentsRAZRAB_NAME.AsString := v_Out_User_Params.DynVar[ 'EMP_FIO' ].AsString;
  End;
end;

procedure TDm_Tech_Proc.MemT_Per_MaterialsAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Per_MaterialsNewRecord(DataSet: TDataSet);
  var
  v_In_User_Params,
  v_Out_User_Params: TDynVarsEh;
begin
  MemT_Per_MaterialsID_ROW_PER.AsInteger := MemT_Oper_PerId.AsInteger;
  MemT_Per_MaterialsNOM_MAT.AsInteger := MemT_Per_Materials.RecordCount + 1;
  if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
  then
    MemT_Per_Materials.FieldByName('Rw_status').AsString := 'inserted'
  Else
    MemT_Per_Materials.FieldByName('Rw_status').AsString := 'none_edit';
  MemT_Per_MaterialsDOK_IN.AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
  MemT_Per_Materials.FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
  MemT_Per_MaterialsDATAIZM.AsDateTime := Now();
  Seq_Db_Per_Materials.Execute;
  MemT_Per_MaterialsID.AsInteger := Seq_Db_Per_Materials.FieldAsInteger(0);
  v_In_User_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_User_Params.DynVar[ 'Find' ].AsString := 'USERS';
  if Tp_Main_Form.Form_Tech_Proc_Main.User_Admin then
  Begin
    MemT_Per_MaterialsRAZRAB.AsInteger := MemT_Oper_PerRAZRAB.AsInteger;
    v_In_User_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + MemT_Oper_PerRAZRAB.AsString;
  End
  Else if not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin then
  Begin
    MemT_Per_MaterialsRAZRAB.AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_lnum;
    v_In_User_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
                                                    + ' And Id_User = ''' + Udm_Main.DM_Main.Session.LogonUsername + ''' ';
  End;
  v_Out_User_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_User_Params );
  If Not v_Out_User_Params.DynVar[ 'EMP_ID' ].IsNull
  Then
  Begin
    MemT_Per_MaterialsRAZRAB_NAME.AsString := v_Out_User_Params.DynVar[ 'EMP_FIO' ].AsString;
  End;
end;

procedure TDm_Tech_Proc.MemT_Per_OsnastAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString = 'none_edit')
    then
    begin
      FieldByName('Rw_status').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Per_OsnastNewRecord(DataSet: TDataSet);
  var
  v_In_User_Params,
  v_Out_User_Params: TDynVarsEh;
begin
  MemT_Per_OsnastID_ROW_PER.AsInteger := MemT_Oper_PerId.AsInteger;
  MemT_Per_OsnastSHOSN_NOM.AsInteger := MemT_Per_Osnast.RecordCount + 1;
  MemT_Per_OsnastDOK_IN.AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
  if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
  then
    MemT_Per_Osnast.FieldByName('Rw_status').AsString := 'inserted'
  Else
    MemT_Per_Osnast.FieldByName('Rw_status').AsString := 'none_edit';
  MemT_Per_Osnast.FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
  MemT_Per_OsnastDATAIZM.AsDateTime := Now();
  Seq_Db_Per_Osnast.Execute;
  MemT_Per_OsnastID.AsInteger := Seq_Db_Per_Osnast.FieldAsInteger(0);
  v_In_User_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_User_Params.DynVar[ 'Find' ].AsString := 'USERS';
  if Tp_Main_Form.Form_Tech_Proc_Main.User_Admin then
  Begin
    MemT_Per_OsnastRAZRAB.AsInteger := MemT_Oper_PerRAZRAB.AsInteger;
    v_In_User_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + MemT_Oper_PerRAZRAB.AsString;
  End
  Else if not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin then
  Begin
    MemT_Per_OsnastRAZRAB.AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_lnum;
    v_In_User_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
                                                    + ' And Id_User = ''' + Udm_Main.DM_Main.Session.LogonUsername + ''' ';
  End;
  v_Out_User_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_User_Params );
  If Not v_Out_User_Params.DynVar[ 'EMP_ID' ].IsNull
  Then
  Begin
    MemT_Per_OsnastRAZRAB_NAME.AsString := v_Out_User_Params.DynVar[ 'EMP_FIO' ].AsString;
  End;
end;

procedure TDm_Tech_Proc.MemT_Per_ParamsAfterEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
        and (FieldByName('Rw_status').AsString <> 'deleted')
    then
    begin
      //FieldByName('Rw_Vers').AsString := 'updated';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    end;
  end;
end;

procedure TDm_Tech_Proc.MemT_Per_ParamsNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    FieldByName('PER_ROW_ID').AsString := MemT_Oper_PerID.AsString;
    FieldByName('DOC_TP_ID').AsInteger := Db_Doc_Info.FieldByName('ID').AsInteger;
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('ID_VERS').AsInteger;
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
  End;
end;

end.
