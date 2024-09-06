unit Tp_TechProc_List_DataModule;

interface

uses
  System.SysUtils, System.Classes, MemTableDataEh, Data.DB, Oracle, MemTableEh,
  DataDriverEh, OracleData, System.Variants, DynVarsEh,
  Winapi.Messages, Vcl.Forms, Vcl.Dialogs, ToolCtrlsEh;

type
  TDm_TechProc_List = class(TDataModule)
    Db_Doc_Details: TOracleDataSet;
    Driver_Doc_Details: TDataSetDriverEh;
    MemT_Doc_Details: TMemTableEh;
    Seq_Doc_Details: TOracleQuery;
    Data_Doc_Details: TDataSource;
    Db_Details_For_Copy: TOracleDataSet;
    Db_Details_For_CopyDET_ID: TFloatField;
    Db_Details_For_CopyDET_NUM: TStringField;
    Db_Details_For_CopyDET_NAME: TStringField;
    Db_Details_For_CopyFLAG: TFloatField;
    Db_Details_For_CopyMAR: TStringField;
    Driver_Details_For_Copy: TDataSetDriverEh;
    MemT_Details_For_Copy: TMemTableEh;
    MemT_Details_For_CopyDET_ID: TFloatField;
    MemT_Details_For_CopyDET_NUM: TStringField;
    MemT_Details_For_CopyDET_NAME: TStringField;
    MemT_Details_For_CopyFLAG: TFloatField;
    MemT_Details_For_CopyMAR: TStringField;
    Data_Details_For_Copy: TDataSource;
    Pkg_Tp_Doc: TOraclePackage;
    Data_Time_Edizm: TDataSource;
    Db_Time_Edizm: TOracleDataSet;
    Data_Chosen_Params: TDataSource;
    Db_Chosen_Params: TOracleDataSet;
    Db_Chosen_ParamsPARAM: TStringField;
    Db_Colors: TOracleDataSet;
    Db_ColorsID: TFloatField;
    Db_ColorsCOLOR_NAME: TStringField;
    Seq_Oper_Time: TOracleQuery;
    Data_Oper_Time: TDataSource;
    MemT_Oper_Time: TMemTableEh;
    Driver_Oper_Time: TDataSetDriverEh;
    Db_Oper_Time: TOracleDataSet;
    Db_Oper_Time_Works: TOracleDataSet;
    Driver_Oper_Time_Works: TDataSetDriverEh;
    MemT_Oper_Time_Works: TMemTableEh;
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
    Seq_Oper_Time_Works: TOracleQuery;
    Data_Oper_Time_Works: TDataSource;
    Seq_Detail_Operations: TOracleQuery;
    Data_Detail_Operations: TDataSource;
    MemT_Detail_Operations: TMemTableEh;
    Driver_Detail_Operations: TDataSetDriverEh;
    Db_Detail_Operations: TOracleDataSet;
    Db_Operations_For_Copy: TOracleDataSet;
    Db_Operations_For_CopyID_ROW_OPER: TFloatField;
    Db_Operations_For_CopyOPER_NAME: TStringField;
    Db_Operations_For_CopyOPER_IOT: TStringField;
    Db_Operations_For_CopyFLAG: TFloatField;
    Db_Operations_For_CopyCEH_ID: TFloatField;
    Db_Operations_For_CopyROW_NUM_GEN: TStringField;
    Db_Operations_For_CopyCEH_CODE: TStringField;
    Db_Operations_For_CopyOBOR_ID: TFloatField;
    Db_Operations_For_CopyOBOR_NAME: TStringField;
    Driver_Operations_For_Copy: TDataSetDriverEh;
    MemT_Operations_For_Copy: TMemTableEh;
    MemT_Operations_For_CopyID_ROW_OPER: TFloatField;
    MemT_Operations_For_CopyOPER_NAME: TStringField;
    MemT_Operations_For_CopyOPER_IOT: TStringField;
    MemT_Operations_For_CopyFLAG: TFloatField;
    MemT_Operations_For_CopyCEH_ID: TFloatField;
    MemT_Operations_For_CopyROW_NUM_GEN: TStringField;
    MemT_Operations_For_CopyCEH_CODE: TStringField;
    MemT_Operations_For_CopyOBOR_ID: TFloatField;
    MemT_Operations_For_CopyOBOR_NAME: TStringField;
    Data_Operations_For_Copy: TDataSource;
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
    Db_Doc_Info: TOracleDataSet;
    Db_Oper_Time_WorksID_RW_OP_WRK_T: TFloatField;
    Db_Oper_Time_WorksRW_VERS: TStringField;
    Db_Oper_Time_WorksRW_ID_OLD_VERS: TIntegerField;
    Db_Oper_Time_WorksOPER_RW_ID: TFloatField;
    Db_Oper_Time_WorksGRP_OPER_RW_ID: TFloatField;
    Db_Oper_Time_WorksDOC_TP_ID: TFloatField;
    Db_Oper_Time_WorksDOC_TP_VERS_ID: TIntegerField;
    Db_Oper_Time_WorksWRK_RW_ID: TIntegerField;
    Db_Oper_Time_WorksWORK_NAME: TStringField;
    Db_Oper_Time_WorksWRK_TIME: TFloatField;
    Db_Oper_Time_WorksUSER_INSERT: TStringField;
    Db_Oper_Time_WorksDATE_INSERT: TDateTimeField;
    Db_Oper_Time_WorksUSER_CHANGE: TStringField;
    Db_Oper_Time_WorksDATE_CHANGE: TDateTimeField;
    MemT_Oper_Time_WorksID_RW_OP_WRK_T: TFloatField;
    MemT_Oper_Time_WorksRW_VERS: TStringField;
    MemT_Oper_Time_WorksRW_ID_OLD_VERS: TIntegerField;
    MemT_Oper_Time_WorksOPER_RW_ID: TFloatField;
    MemT_Oper_Time_WorksGRP_OPER_RW_ID: TFloatField;
    MemT_Oper_Time_WorksDOC_TP_ID: TFloatField;
    MemT_Oper_Time_WorksDOC_TP_VERS_ID: TIntegerField;
    MemT_Oper_Time_WorksWRK_RW_ID: TIntegerField;
    MemT_Oper_Time_WorksWORK_NAME: TStringField;
    MemT_Oper_Time_WorksWRK_TIME: TFloatField;
    MemT_Oper_Time_WorksUSER_INSERT: TStringField;
    MemT_Oper_Time_WorksDATE_INSERT: TDateTimeField;
    MemT_Oper_Time_WorksUSER_CHANGE: TStringField;
    MemT_Oper_Time_WorksDATE_CHANGE: TDateTimeField;
    Db_Doc_InfoID: TFloatField;
    Db_Doc_InfoID_VERS: TIntegerField;
    Db_Doc_InfoID_DOC_FULL: TStringField;
    Db_Doc_InfoDOC_HEADER_ID: TFloatField;
    Db_Doc_InfoPARENT_DOC_ID: TIntegerField;
    Db_Doc_InfoDOC_NUM: TStringField;
    Db_Doc_InfoDATE_START_ACTION: TDateTimeField;
    Db_Doc_InfoDATE_END_ACTION: TDateTimeField;
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
    Db_Doc_InfoEMPS_ID: TStringField;
    Db_Doc_InfoPROJECT_FLAG: TIntegerField;
    Db_Doc_InfoUSER_INSERT: TStringField;
    Db_Doc_InfoDATE_INSERT: TDateTimeField;
    Db_Doc_InfoUSER_CHANGE: TStringField;
    Db_Doc_InfoDATA_CHANGE: TDateTimeField;
    Db_Doc_InfoLINKED_DOC_ID: TFloatField;
    Db_Doc_InfoLINKED_DOC_ID_VERS: TFloatField;
    Db_Doc_InfoDOC_EDIT_STAT: TStringField;
    Db_Doc_InfoIZD_NAME_TYPE: TStringField;
    Db_Doc_InfoPARENT_ID_DOC: TFloatField;
    Db_Doc_InfoPARENT_ID_VERS: TFloatField;
    Db_Doc_InfoMAIN_DOC_TP_NUM: TStringField;
    Db_Doc_InfoMAIN_DOC_TP_NAME: TStringField;
    Db_Doc_InfoMAIN_DOC_HEADER_ID: TFloatField;
    Db_Doc_DetailsID: TFloatField;
    Db_Doc_DetailsID_RW_VERS: TIntegerField;
    Db_Doc_DetailsRW_VERS: TStringField;
    Db_Doc_DetailsRW_STATUS: TStringField;
    Db_Doc_DetailsRW_ID_OLD_VERS: TIntegerField;
    Db_Doc_DetailsID_DOC_TP: TFloatField;
    Db_Doc_DetailsDOC_TP_VERS_ID: TIntegerField;
    Db_Doc_DetailsDET_ID: TFloatField;
    Db_Doc_DetailsDET_NUM: TStringField;
    Db_Doc_DetailsDET_NAME: TStringField;
    Db_Doc_DetailsRAZRAB: TFloatField;
    Db_Doc_DetailsID_USER: TStringField;
    Db_Doc_DetailsRAZRAB_NAME: TStringField;
    Db_Doc_DetailsDET_EV_ID: TFloatField;
    Db_Doc_DetailsDET_EV_CODE: TStringField;
    Db_Doc_DetailsDET_MASS: TFloatField;
    Db_Doc_DetailsDIFC_GROUP: TFloatField;
    Db_Doc_DetailsDET_MAT_ID: TFloatField;
    Db_Doc_DetailsDET_MAT_NAME: TStringField;
    Db_Doc_DetailsDATE_CHANGE: TDateTimeField;
    Db_Doc_DetailsI_DATE: TDateTimeField;
    Db_Doc_DetailsI_USER_ID: TStringField;
    Db_Doc_DetailsI_USER_ID_ADD: TIntegerField;
    Db_Doc_DetailsU_DATE: TDateTimeField;
    Db_Doc_DetailsU_USER_ID: TStringField;
    Db_Doc_DetailsU_USER_ID_ADD: TIntegerField;
    MemT_Doc_DetailsID: TFloatField;
    MemT_Doc_DetailsID_RW_VERS: TIntegerField;
    MemT_Doc_DetailsRW_VERS: TStringField;
    MemT_Doc_DetailsRW_STATUS: TStringField;
    MemT_Doc_DetailsRW_ID_OLD_VERS: TIntegerField;
    MemT_Doc_DetailsID_DOC_TP: TFloatField;
    MemT_Doc_DetailsDOC_TP_VERS_ID: TIntegerField;
    MemT_Doc_DetailsDET_ID: TFloatField;
    MemT_Doc_DetailsDET_NUM: TStringField;
    MemT_Doc_DetailsDET_NAME: TStringField;
    MemT_Doc_DetailsRAZRAB: TFloatField;
    MemT_Doc_DetailsID_USER: TStringField;
    MemT_Doc_DetailsRAZRAB_NAME: TStringField;
    MemT_Doc_DetailsDET_EV_ID: TFloatField;
    MemT_Doc_DetailsDET_EV_CODE: TStringField;
    MemT_Doc_DetailsDET_MASS: TFloatField;
    MemT_Doc_DetailsDIFC_GROUP: TFloatField;
    MemT_Doc_DetailsDET_MAT_ID: TFloatField;
    MemT_Doc_DetailsDET_MAT_NAME: TStringField;
    MemT_Doc_DetailsDATE_CHANGE: TDateTimeField;
    MemT_Doc_DetailsI_DATE: TDateTimeField;
    MemT_Doc_DetailsI_USER_ID: TStringField;
    MemT_Doc_DetailsI_USER_ID_ADD: TIntegerField;
    MemT_Doc_DetailsU_DATE: TDateTimeField;
    MemT_Doc_DetailsU_USER_ID: TStringField;
    MemT_Doc_DetailsU_USER_ID_ADD: TIntegerField;
    Db_Detail_OperationsID: TFloatField;
    Db_Detail_OperationsID_RW_VERS: TIntegerField;
    Db_Detail_OperationsRW_VERS: TStringField;
    Db_Detail_OperationsRW_STATUS: TStringField;
    Db_Detail_OperationsRW_ID_OLD_VERS: TIntegerField;
    Db_Detail_OperationsID_DOC_TP: TFloatField;
    Db_Detail_OperationsDOC_TP_VERS_ID: TIntegerField;
    Db_Detail_OperationsID_ROW_OPER: TFloatField;
    Db_Detail_OperationsROW_NUM_GEN: TStringField;
    Db_Detail_OperationsID_ROW_DET: TFloatField;
    Db_Detail_OperationsDET_ID: TFloatField;
    Db_Detail_OperationsRAZRAB: TFloatField;
    Db_Detail_OperationsRAZRAB_NAME: TStringField;
    Db_Detail_OperationsPRIM: TStringField;
    Db_Detail_OperationsDATA_CHANGE: TDateTimeField;
    Db_Detail_OperationsOPER_OBOR_EN: TFloatField;
    Db_Detail_OperationsOPER_OBOR_TIME_PZ: TFloatField;
    Db_Detail_OperationsOPER_OBOR_TIME_SH: TFloatField;
    Db_Detail_OperationsOBOR_ID: TFloatField;
    Db_Detail_OperationsOBOR_NAME: TStringField;
    Db_Detail_OperationsGRP_OBR_RW_ID: TFloatField;
    Db_Detail_OperationsOPER_KOID: TFloatField;
    Db_Detail_OperationsPROF_CODE: TStringField;
    Db_Detail_OperationsPROF_RAZR: TFloatField;
    Db_Detail_OperationsPROF_KVN: TFloatField;
    Db_Detail_OperationsENVIRON: TStringField;
    Db_Detail_OperationsHARDNESS: TStringField;
    Db_Detail_OperationsT_MIN: TFloatField;
    Db_Detail_OperationsT_MAX: TFloatField;
    Db_Detail_OperationsTIME_MIN: TFloatField;
    Db_Detail_OperationsTIME_MAX: TFloatField;
    Db_Detail_OperationsTIME_EDIZM: TStringField;
    Db_Detail_OperationsTIME_EDIZM_NAME: TStringField;
    Db_Detail_OperationsOPER_KUP: TFloatField;
    Db_Detail_OperationsOPER_PPPD: TFloatField;
    Db_Detail_OperationsOPER_OPPP_DET: TFloatField;
    Db_Detail_OperationsOPER_KDP: TFloatField;
    Db_Detail_OperationsOPER_KDA: TFloatField;
    Db_Detail_OperationsOPER_KSL: TFloatField;
    Db_Detail_OperationsOPER_TOLSCH: TFloatField;
    Db_Detail_OperationsOPER_TOLSCH_RANGE: TStringField;
    Db_Detail_OperationsOPER_CHS_PARAMS: TStringField;
    Db_Detail_OperationsOPER_COLOR_ID: TFloatField;
    Db_Detail_OperationsCOLOR_NAME: TStringField;
    Db_Detail_OperationsOPER_COUNT_INS: TFloatField;
    Db_Detail_OperationsOPER_COUNT_BATH: TFloatField;
    Db_Detail_OperationsOPER_NUMBER: TStringField;
    Db_Detail_OperationsCEH_ID: TFloatField;
    Db_Detail_OperationsCEH_CODE: TStringField;
    Db_Detail_OperationsOPER_NAME: TStringField;
    Db_Detail_OperationsOPER_IOT: TStringField;
    MemT_Oper_TimeID_RW_OP_TIME: TFloatField;
    MemT_Oper_TimeRW_VERS: TStringField;
    MemT_Oper_TimeRW_STATUS: TStringField;
    MemT_Oper_TimeRW_ID_OLD_VERS: TIntegerField;
    MemT_Oper_TimeOPER_RW_ID: TFloatField;
    MemT_Oper_TimeGRP_OPER_RW_ID: TFloatField;
    MemT_Oper_TimeDOC_TP_ID: TFloatField;
    MemT_Oper_TimeDOC_TP_VERS_ID: TIntegerField;
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
    MemT_Oper_TimeID_ROW_DET: TFloatField;
    Db_Oper_TimeID_RW_OP_TIME: TFloatField;
    Db_Oper_TimeRW_VERS: TStringField;
    Db_Oper_TimeRW_STATUS: TStringField;
    Db_Oper_TimeRW_ID_OLD_VERS: TIntegerField;
    Db_Oper_TimeOPER_RW_ID: TFloatField;
    Db_Oper_TimeGRP_OPER_RW_ID: TFloatField;
    Db_Oper_TimeDOC_TP_ID: TFloatField;
    Db_Oper_TimeDOC_TP_VERS_ID: TIntegerField;
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
    Db_Oper_TimeID_ROW_DET: TFloatField;
    Db_Detail_OperationsOPER_ID: TFloatField;
    Db_Detail_OperationsMAIN_DOC_ID: TFloatField;
    MemT_Detail_OperationsID: TFloatField;
    MemT_Detail_OperationsID_RW_VERS: TIntegerField;
    MemT_Detail_OperationsRW_VERS: TStringField;
    MemT_Detail_OperationsRW_STATUS: TStringField;
    MemT_Detail_OperationsRW_ID_OLD_VERS: TIntegerField;
    MemT_Detail_OperationsID_DOC_TP: TFloatField;
    MemT_Detail_OperationsDOC_TP_VERS_ID: TIntegerField;
    MemT_Detail_OperationsID_ROW_OPER: TFloatField;
    MemT_Detail_OperationsROW_NUM_GEN: TStringField;
    MemT_Detail_OperationsID_ROW_DET: TFloatField;
    MemT_Detail_OperationsDET_ID: TFloatField;
    MemT_Detail_OperationsRAZRAB: TFloatField;
    MemT_Detail_OperationsRAZRAB_NAME: TStringField;
    MemT_Detail_OperationsPRIM: TStringField;
    MemT_Detail_OperationsDATA_CHANGE: TDateTimeField;
    MemT_Detail_OperationsOPER_OBOR_EN: TFloatField;
    MemT_Detail_OperationsOPER_OBOR_TIME_PZ: TFloatField;
    MemT_Detail_OperationsOPER_OBOR_TIME_SH: TFloatField;
    MemT_Detail_OperationsOBOR_ID: TFloatField;
    MemT_Detail_OperationsOBOR_NAME: TStringField;
    MemT_Detail_OperationsGRP_OBR_RW_ID: TFloatField;
    MemT_Detail_OperationsOPER_KOID: TFloatField;
    MemT_Detail_OperationsPROF_CODE: TStringField;
    MemT_Detail_OperationsPROF_RAZR: TFloatField;
    MemT_Detail_OperationsPROF_KVN: TFloatField;
    MemT_Detail_OperationsENVIRON: TStringField;
    MemT_Detail_OperationsHARDNESS: TStringField;
    MemT_Detail_OperationsT_MIN: TFloatField;
    MemT_Detail_OperationsT_MAX: TFloatField;
    MemT_Detail_OperationsTIME_MIN: TFloatField;
    MemT_Detail_OperationsTIME_MAX: TFloatField;
    MemT_Detail_OperationsTIME_EDIZM: TStringField;
    MemT_Detail_OperationsTIME_EDIZM_NAME: TStringField;
    MemT_Detail_OperationsOPER_KUP: TFloatField;
    MemT_Detail_OperationsOPER_PPPD: TFloatField;
    MemT_Detail_OperationsOPER_OPPP_DET: TFloatField;
    MemT_Detail_OperationsOPER_KDP: TFloatField;
    MemT_Detail_OperationsOPER_KDA: TFloatField;
    MemT_Detail_OperationsOPER_KSL: TFloatField;
    MemT_Detail_OperationsOPER_TOLSCH: TFloatField;
    MemT_Detail_OperationsOPER_TOLSCH_RANGE: TStringField;
    MemT_Detail_OperationsOPER_CHS_PARAMS: TStringField;
    MemT_Detail_OperationsOPER_COLOR_ID: TFloatField;
    MemT_Detail_OperationsCOLOR_NAME: TStringField;
    MemT_Detail_OperationsOPER_COUNT_INS: TFloatField;
    MemT_Detail_OperationsOPER_COUNT_BATH: TFloatField;
    MemT_Detail_OperationsOPER_NUMBER: TStringField;
    MemT_Detail_OperationsCEH_ID: TFloatField;
    MemT_Detail_OperationsCEH_CODE: TStringField;
    MemT_Detail_OperationsOPER_NAME: TStringField;
    MemT_Detail_OperationsOPER_IOT: TStringField;
    MemT_Detail_OperationsOPER_ID: TFloatField;
    MemT_Detail_OperationsMAIN_DOC_ID: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure MemT_Oper_TimeNewRecord(DataSet: TDataSet);
    procedure MemT_Oper_Time_WorksNewRecord(DataSet: TDataSet);
    procedure MemT_Detail_OperationsNewRecord(DataSet: TDataSet);
    procedure MemT_Doc_DetailsBeforeDelete(DataSet: TDataSet);
    procedure MemT_Doc_DetailsNewRecord(DataSet: TDataSet);
    procedure MemT_Doc_DetailsAfterEdit(DataSet: TDataSet);
    procedure MemT_Oper_TimeBeforeDelete(DataSet: TDataSet);
    procedure MemT_Oper_Time_WorksBeforeDelete(DataSet: TDataSet);
    procedure MemT_Doc_DetailsBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Arr_DataSetsWithRowMove: Array Of Array Of String;
    Arr_DataSetsWithParams: Array Of String;
    Arr_DataSetsOpenLine: Array Of Array Of String;
    Arr_DataSetsSaveLine: Array Of String;
    StrList_DataSetsForNorms: TStringListEh;

    Procedure P_FlagDelete_ChildDataSet(ParentMemTable: TMemTableEh; ParentRec: TMemoryRecordEh);
    Procedure P_Delete_ChildDataSet(ParentMemTable: TMemTableEh; ParentRec: TMemoryRecordEh);
  end;

var
  Dm_TechProc_List: TDm_TechProc_List;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses
Udm_main, Tp_Main_Form, Tp_Detail_Docs_Connect_Form;

procedure TDm_TechProc_List.DataModuleCreate(Sender: TObject);
begin
  Arr_DataSetsWithParams := [ 'MemT_Oper_Params',
                              'MemT_Instr_Crd_Prms',
                              'MemT_Per_Params',
                              'MemT_Ins_Crd_Ins_Tmp_Prms' ];
  Arr_DataSetsOpenLine := [ ['Db_Doc_Info', 'In_Doc_Id'],
                            ['MemT_Doc_Details', ''],
                            ['MemT_Detail_Operations', ''],
                            ['MemT_Oper_Time', ''],
                            ['MemT_Oper_Time_Works', ''],
                            ['Db_Time_Edizm', ''],
                            ['Db_Chosen_Params', ''],
                            ['Db_Colors', '']  ];
  Arr_DataSetsSaveLine := [ 'MemT_Doc_Details',
                            'MemT_Detail_Operations',
                            'MemT_Oper_Time',
                            'MemT_Oper_Time_Works'];

  StrList_DataSetsForNorms := TStringListEh.Create;
  StrList_DataSetsForNorms.Add('MemT_Oper_Time');
  StrList_DataSetsForNorms.Add('MemT_Oper_Time_Works');
end;

procedure TDm_TechProc_List.MemT_Detail_OperationsNewRecord(DataSet: TDataSet);
  var
  v_User_In_Params,
  v_User_Out_Params: TDynVarsEh;
begin
  with DataSet
  do
  begin
    v_User_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_User_In_Params.DynVar[ 'Find' ].AsString := 'USERS';
    if Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
    Then
    Begin
      v_User_In_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
                                                        + ' And Id_User = ''' + Udm_Main.DM_Main.Session.LogonUsername + ''' ';
      v_User_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_User_In_Params );
      If v_User_Out_Params <> Nil
      Then
      Begin
        FieldByName('RAZRAB_NAME').AsString := v_User_Out_Params.DynVar[ 'EMP_FIO' ].AsString;
        FieldByName('RAZRAB').AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_lnum;
      End;
    End
    Else
    Begin
      v_User_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_User_In_Params );
      If v_User_Out_Params <> Nil
      Then
      Begin
        FieldByName('RAZRAB_NAME').AsString := v_User_Out_Params.DynVar[ 'EMP_FIO' ].AsString;
        FieldByName('RAZRAB').AsInteger := v_User_Out_Params.DynVar[ 'EMP_ID' ].AsInteger;
      End;
    End;
    Seq_Detail_Operations.Execute;
    FieldByName('ID').AsInteger := Seq_Detail_Operations.FieldAsInteger(0);
    FieldByName('ID_DOC_TP').AsInteger := Db_Doc_Info.FieldByName('Id').AsInteger;
    FieldByName('Doc_Tp_Vers_Id').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    FieldByName('DET_ID').AsInteger := MemT_Doc_DetailsDET_ID.AsInteger;
    FieldByName('ID_ROW_DET').AsInteger := MemT_Doc_DetailsID.AsInteger;
    FieldByName('DATA_CHANGE').AsDateTime := Now();
    FieldByName('ID_RW_VERS').AsInteger := 1;
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
    If Db_Doc_Info.FieldByName('TP_WORK_TYPE').AsInteger = 71
    Then
     MemT_Detail_OperationsOPER_COUNT_INS.AsInteger := 1;
  end;
end;

procedure TDm_TechProc_List.MemT_Doc_DetailsAfterEdit(DataSet: TDataSet);
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

procedure TDm_TechProc_List.MemT_Doc_DetailsBeforeDelete(DataSet: TDataSet);
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
      if (DataSet = MemT_Doc_Details)
          Or (DataSet = MemT_Detail_Operations)
      then
        P_FlagDelete_ChildDataSet((DataSet as TMemTableEh), (DataSet as TMemTableEh).Rec);
      Abort;
    end;
  end;
  if (DataSet = MemT_Doc_Details)
          Or (DataSet = MemT_Detail_Operations)
  then
    P_Delete_ChildDataSet((DataSet as TMemTableEh), (DataSet as TMemTableEh).Rec);

end;

procedure TDm_TechProc_List.MemT_Doc_DetailsBeforeEdit(DataSet: TDataSet);
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

    if (DataSet as TMemTableEh).MasterSource <> Nil
    then
    begin
      if (DataSet as TMemTableEh).MasterSource.DataSet.FieldByName('Rw_Status').AsString = 'deleted'
      then
        Abort;
    end;
  End;

  if (DataSet.FieldByName('Rw_Status').AsString = 'deleted')
  then
    Abort;
end;

procedure TDm_TechProc_List.MemT_Doc_DetailsNewRecord(DataSet: TDataSet);
  var
  v_User_In_Params,
  v_User_Out_Params: TDynVarsEh;
begin
  with DataSet
  do
  begin
    v_User_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_User_In_Params.DynVar[ 'Find' ].AsString := 'USERS';
    if Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
    Then
    Begin
      v_User_In_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
                                                        + ' And Id_User = ''' + Udm_Main.DM_Main.Session.LogonUsername + ''' ';
      v_User_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_User_In_Params );
      If v_User_Out_Params <> Nil
      Then
      Begin
        FieldByName('RAZRAB_NAME').AsString := v_User_Out_Params.DynVar[ 'EMP_FIO' ].AsString;
        FieldByName('RAZRAB').AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_lnum;
      End;
    End
    Else
    Begin
      v_User_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_User_In_Params );
      If v_User_Out_Params <> Nil
      Then
      Begin
        FieldByName('RAZRAB_NAME').AsString := v_User_Out_Params.DynVar[ 'EMP_FIO' ].AsString;
        FieldByName('RAZRAB').AsInteger := v_User_Out_Params.DynVar[ 'EMP_ID' ].AsInteger;
      End;
    End;
    Seq_Doc_Details.Execute;
    FieldByName('ID').AsInteger := Seq_Doc_Details.FieldAsInteger(0);
    FieldByName('ID_DOC_TP').AsInteger := Db_Doc_Info.FieldByName('Id').AsInteger;
    FieldByName('Doc_Tp_Vers_Id').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    FieldByName('ID_RW_VERS').AsInteger := 1;
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
    FieldByName('DATE_CHANGE').AsDateTime := Now();
  end;
end;

procedure TDm_TechProc_List.MemT_Oper_TimeBeforeDelete(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
       And (FieldByName('Rw_status').AsString <> 'inserted')
    then
    begin
      Edit;
      FieldByName('Rw_status').AsString := 'deleted';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
      Post;
      Abort;
    end;
  end;
end;

procedure TDm_TechProc_List.MemT_Oper_TimeNewRecord(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    FieldByName('GRP_OPER_RW_ID').AsInteger := MemT_Detail_Operations.FieldByName('ID').AsInteger;
    FieldByName('OPER_RW_ID').AsInteger := MemT_Detail_Operations.FieldByName('ID_ROW_OPER').AsInteger;
    FieldByName('ID_ROW_DET').AsInteger := MemT_Doc_Details.FieldByName('ID').AsInteger;
    FieldByName('UNIT_COUNT').AsInteger := 1;
    FieldByName('DOC_TP_ID').AsInteger := Db_Doc_Info.FieldByName('Id').AsInteger;
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    Seq_Oper_Time.Execute;
    FieldByName('ID_RW_OP_TIME').AsInteger := Seq_Oper_Time.FieldAsInteger(0);
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
  end;
end;

procedure TDm_TechProc_List.MemT_Oper_Time_WorksBeforeDelete(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1)
       And (FieldByName('Rw_status').AsString <> 'inserted')
    then
    begin
      Edit;
      FieldByName('Rw_status').AsString := 'deleted';
      FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
      Post;
      Abort;
    end;
  end;
end;

procedure TDm_TechProc_List.MemT_Oper_Time_WorksNewRecord(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    FieldByName('OPER_RW_ID').AsInteger := MemT_Detail_Operations.FieldByName('ID_ROW_OPER').AsInteger;
    FieldByName('DOC_TP_ID').AsInteger := Db_Doc_Info.FieldByName('Id').AsInteger;
    FieldByName('DOC_TP_VERS_ID').AsInteger := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
    Seq_Oper_Time_Works.Execute;
    FieldByName('ID_RW_OP_WRK_T').AsInteger := Seq_Oper_Time_Works.FieldAsInteger(0);
    if Db_Doc_Info.FieldByName('Id_Vers').AsInteger <> 1
    then
      FieldByName('Rw_status').AsString := 'inserted'
    Else
      FieldByName('Rw_status').AsString := 'none_edit';
  end;

end;

procedure TDm_TechProc_List.P_Delete_ChildDataSet(ParentMemTable: TMemTableEh;
  ParentRec: TMemoryRecordEh);

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
              if ChildMemTable = MemT_Detail_Operations
              then
              begin
                P_Delete_ChildDataSet(MemT_Detail_Operations, Rec[i]);
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
  if ParentMemTable = MemT_Doc_Details
  then
  begin
    P_DeleteChild(MemT_Detail_Operations);
  end
  else if ParentMemTable = MemT_Detail_Operations
  then
  begin
    P_DeleteChild(MemT_Oper_Time);
    P_DeleteChild(MemT_Oper_Time_Works);
  end;
end;

procedure TDm_TechProc_List.P_FlagDelete_ChildDataSet(
  ParentMemTable: TMemTableEh; ParentRec: TMemoryRecordEh);
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
              if ChildMemTable = MemT_Detail_Operations
              then
              begin
                P_FlagDelete_ChildDataSet(MemT_Detail_Operations, Rec[i]);
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
  if ParentMemTable = MemT_Doc_Details
  then
  begin
    P_FlagChild(MemT_Detail_Operations);
  end
  else if ParentMemTable = MemT_Detail_Operations
  then
  begin
    P_FlagChild(MemT_Oper_Time);
    P_FlagChild(MemT_Oper_Time_Works);
  end;
end;

end.
