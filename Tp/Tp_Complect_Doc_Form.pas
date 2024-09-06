unit Tp_Complect_Doc_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBGridEh, Oracle,
  Vcl.Menus, Data.DB, OracleData, DBLookupEh, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, MemTableDataEh, MemTableEh, DataDriverEh, EhLibMTE,
  Tp_Copy_Oper_For_Det_Doc_Form;

type
  TForm_Doc_Complect = class(TForm)
    GroupBox2: TGroupBox;
    Grid_Details: TDBGridEh;
    GroupBox3: TGroupBox;
    Grid_Operations: TDBGridEh;
    E_Oper_Prim: TDBEditEh;
    E_OPER_AUTHOR_NAME: TDBEditEh;
    GroupBox1: TGroupBox;
    Grid_Detail_Tp: TDBGridEh;
    Db_Complect_Details: TOracleDataSet;
    Data_Complect_Details: TDataSource;
    PKG_TP_DOC: TOraclePackage;
    Db_Detail_Tp: TOracleDataSet;
    Main_M_Doc_Complect: TMainMenu;
    Main_M_Doc_Complect_Btn_Doc: TMenuItem;
    Main_M_Doc_Complect_Btn_Doc_Complect: TMenuItem;
    Main_M_Doc_Complect_Btn_Doc_Complect_Rep: TMenuItem;
    Main_M_Doc_Complect_Btn_Doc_Complect_Export: TMenuItem;
    Main_M_Doc_Complect_Btn_Doc_Complect_Export_PDF: TMenuItem;
    Main_M_Doc_Complect_Btn_Doc_Complect_Export_Excel: TMenuItem;
    Main_M_Doc_Complect_Btn_Save: TMenuItem;
    Main_M_Doc_Complect_Btn_Exit: TMenuItem;
    Driver_Complect_Details: TDataSetDriverEh;
    MemT_Detail_Tp: TMemTableEh;
    Driver_Detail_Tp: TDataSetDriverEh;
    Data_Detail_Tp: TDataSource;
    Seq_Id_Doc_Header: TOracleQuery;
    Seq_Detail_Tp: TOracleQuery;
    Seq_Detail_Operations: TOracleQuery;
    Data_Detail_Operations: TDataSource;
    MemT_Detail_Operations: TMemTableEh;
    MemT_Detail_OperationsID: TFloatField;
    MemT_Detail_OperationsID_DOC_TP: TFloatField;
    MemT_Detail_OperationsMAIN_DOC_ID: TFloatField;
    MemT_Detail_OperationsID_ROW_OPER: TFloatField;
    MemT_Detail_OperationsROW_NUM_GEN: TStringField;
    MemT_Detail_OperationsOPER_NAME: TStringField;
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
    MemT_Detail_OperationsOPER_KOID: TFloatField;
    MemT_Detail_OperationsENVIRON: TStringField;
    MemT_Detail_OperationsHARDNESS: TStringField;
    MemT_Detail_OperationsT_MIN: TFloatField;
    MemT_Detail_OperationsT_MAX: TFloatField;
    MemT_Detail_OperationsTIME_MIN: TFloatField;
    MemT_Detail_OperationsTIME_MAX: TFloatField;
    MemT_Detail_OperationsTIME_EDIZM: TStringField;
    MemT_Detail_OperationsOPER_KUP: TFloatField;
    MemT_Detail_OperationsOPER_PPPD: TFloatField;
    MemT_Detail_OperationsOPER_OPPP_DET: TFloatField;
    MemT_Detail_OperationsOPER_KDP: TFloatField;
    MemT_Detail_OperationsOPER_KDA: TFloatField;
    MemT_Detail_OperationsOPER_KSL: TFloatField;
    MemT_Detail_OperationsOPER_TOLSCH: TFloatField;
    MemT_Detail_OperationsOPER_CHS_PARAMS: TStringField;
    MemT_Detail_OperationsOPER_COLOR_ID: TFloatField;
    MemT_Detail_OperationsCOLOR_NAME: TStringField;
    MemT_Detail_OperationsOPER_COUNT_INS: TFloatField;
    MemT_Detail_OperationsCEH_CODE: TStringField;
    MemT_Detail_OperationsOPER_IOT: TStringField;
    MemT_Detail_OperationsTIME_EDIZM_NAME: TStringField;
    MemT_Detail_OperationsPROF_CODE: TStringField;
    MemT_Detail_OperationsPROF_RAZR: TFloatField;
    MemT_Detail_OperationsPROF_KVN: TFloatField;
    MemT_Detail_OperationsCEH_ID: TFloatField;
    MemT_Detail_OperationsOPER_ID: TFloatField;
    MemT_Detail_OperationsOPER_COUNT_BATH: TFloatField;
    MemT_Detail_OperationsOPER_TOLSCH_RANGE: TStringField;
    Driver_Detail_Operations: TDataSetDriverEh;
    Db_Detail_Operations: TOracleDataSet;
    Db_Detail_OperationsID: TFloatField;
    Db_Detail_OperationsID_DOC_TP: TFloatField;
    Db_Detail_OperationsMAIN_DOC_ID: TFloatField;
    Db_Detail_OperationsID_ROW_OPER: TFloatField;
    Db_Detail_OperationsROW_NUM_GEN: TStringField;
    Db_Detail_OperationsOPER_NAME: TStringField;
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
    Db_Detail_OperationsOPER_KOID: TFloatField;
    Db_Detail_OperationsENVIRON: TStringField;
    Db_Detail_OperationsHARDNESS: TStringField;
    Db_Detail_OperationsT_MIN: TFloatField;
    Db_Detail_OperationsT_MAX: TFloatField;
    Db_Detail_OperationsTIME_MIN: TFloatField;
    Db_Detail_OperationsTIME_MAX: TFloatField;
    Db_Detail_OperationsTIME_EDIZM: TStringField;
    Db_Detail_OperationsOPER_KUP: TFloatField;
    Db_Detail_OperationsOPER_PPPD: TFloatField;
    Db_Detail_OperationsOPER_OPPP_DET: TFloatField;
    Db_Detail_OperationsOPER_KDP: TFloatField;
    Db_Detail_OperationsOPER_KDA: TFloatField;
    Db_Detail_OperationsOPER_KSL: TFloatField;
    Db_Detail_OperationsOPER_TOLSCH: TFloatField;
    Db_Detail_OperationsOPER_CHS_PARAMS: TStringField;
    Db_Detail_OperationsOPER_COLOR_ID: TFloatField;
    Db_Detail_OperationsCOLOR_NAME: TStringField;
    Db_Detail_OperationsOPER_COUNT_INS: TFloatField;
    Db_Detail_OperationsCEH_CODE: TStringField;
    Db_Detail_OperationsOPER_IOT: TStringField;
    Db_Detail_OperationsTIME_EDIZM_NAME: TStringField;
    Db_Detail_OperationsPROF_CODE: TStringField;
    Db_Detail_OperationsPROF_RAZR: TFloatField;
    Db_Detail_OperationsPROF_KVN: TFloatField;
    Db_Detail_OperationsCEH_ID: TFloatField;
    Db_Detail_OperationsOPER_ID: TFloatField;
    Db_Detail_OperationsOPER_COUNT_BATH: TFloatField;
    Db_Detail_OperationsOPER_TOLSCH_RANGE: TStringField;
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
    Data_Oper_For_Copy: TDataSource;
    Pop_M_Operations: TPopupMenu;
    Pop_M_Operations_Btn_Chose_Oper: TMenuItem;
    Pop_M_Operations_Btn_Oper_Params: TMenuItem;
    Pop_M_Operations_Btn_Oper_Delete: TMenuItem;
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
    Pop_M_Detail_Tp: TPopupMenu;
    Pop_M_Detail_Docs_Btn_VTP: TMenuItem;
    Pop_M_Detail_Docs_Btn_VTP_See: TMenuItem;
    Pop_M_Detail_Docs_Btn_VTP_Export: TMenuItem;
    Pop_M_Detail_Docs_Btn_VTP_Export_Pdf: TMenuItem;
    Pop_M_Detail_Docs_Btn_VTP_Export_Excel: TMenuItem;
    Seq_Doc_Details: TOracleQuery;
    Pop_M_Details: TPopupMenu;
    Pop_M_Details_Btn_Oper_Params: TMenuItem;
    Main_M_Doc_Complect_Btn_Doc_Tech_Proc: TMenuItem;
    Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Rep: TMenuItem;
    Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export: TMenuItem;
    Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_Excel: TMenuItem;
    Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_PDF: TMenuItem;
    Db_Doc_Details: TOracleDataSet;
    Driver_Doc_Details: TDataSetDriverEh;
    MemT_Doc_Details: TMemTableEh;
    Data_Doc_Details: TDataSource;
    Db_Doc_DetailsID: TFloatField;
    Db_Doc_DetailsID_DOC_TP: TFloatField;
    Db_Doc_DetailsMAIN_DOC_ID: TFloatField;
    Db_Doc_DetailsCOMPLECT_ID: TFloatField;
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
    MemT_Doc_DetailsID: TFloatField;
    MemT_Doc_DetailsID_DOC_TP: TFloatField;
    MemT_Doc_DetailsMAIN_DOC_ID: TFloatField;
    MemT_Doc_DetailsCOMPLECT_ID: TFloatField;
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
    Db_Detail_TpID: TFloatField;
    Db_Detail_TpDOC_HEADER_ID: TFloatField;
    Db_Detail_TpMAIN_DOC_ID: TFloatField;
    Db_Detail_TpCOMPLECT_ID: TFloatField;
    Db_Detail_TpDOC_NUM: TStringField;
    Db_Detail_TpDOC_TYPE: TFloatField;
    Db_Detail_TpCEH_ID: TFloatField;
    Db_Detail_TpCEH_CODE: TStringField;
    Db_Detail_TpID_DET: TFloatField;
    Db_Detail_TpADDIT_INFO_NUM: TStringField;
    Db_Detail_TpTP_NUM: TStringField;
    Db_Detail_TpADDIT_INFO_NAME: TStringField;
    Db_Detail_TpTP_NAME: TStringField;
    Db_Detail_TpSEC_ADDIT_INFO: TStringField;
    Db_Detail_TpTP_WORK_TYPE: TFloatField;
    Db_Detail_TpAUTHOR_LNUM: TFloatField;
    Db_Detail_TpAUTHOR_NAME: TStringField;
    Db_Detail_TpDATA_CHANGE: TDateTimeField;
    Db_Detail_TpIZD_ID: TFloatField;
    Db_Detail_TpTP_TYPE: TFloatField;
    MemT_Detail_TpID: TFloatField;
    MemT_Detail_TpDOC_HEADER_ID: TFloatField;
    MemT_Detail_TpMAIN_DOC_ID: TFloatField;
    MemT_Detail_TpCOMPLECT_ID: TFloatField;
    MemT_Detail_TpDOC_NUM: TStringField;
    MemT_Detail_TpDOC_TYPE: TFloatField;
    MemT_Detail_TpCEH_ID: TFloatField;
    MemT_Detail_TpCEH_CODE: TStringField;
    MemT_Detail_TpID_DET: TFloatField;
    MemT_Detail_TpADDIT_INFO_NUM: TStringField;
    MemT_Detail_TpTP_NUM: TStringField;
    MemT_Detail_TpADDIT_INFO_NAME: TStringField;
    MemT_Detail_TpTP_NAME: TStringField;
    MemT_Detail_TpSEC_ADDIT_INFO: TStringField;
    MemT_Detail_TpTP_WORK_TYPE: TFloatField;
    MemT_Detail_TpAUTHOR_LNUM: TFloatField;
    MemT_Detail_TpAUTHOR_NAME: TStringField;
    MemT_Detail_TpDATA_CHANGE: TDateTimeField;
    MemT_Detail_TpIZD_ID: TFloatField;
    MemT_Detail_TpTP_TYPE: TFloatField;
    Db_Detail_OperationsCOMPLECT_ID: TFloatField;
    Db_Detail_OperationsTP_WORK_TYPE: TFloatField;
    MemT_Detail_OperationsCOMPLECT_ID: TFloatField;
    MemT_Detail_OperationsTP_WORK_TYPE: TFloatField;
    Pop_M_Detail_Tp_Btn_Add: TMenuItem;
    Pop_M_Detail_Tp_Btn_Discard: TMenuItem;
    Pop_M_Detail_Tp_Btn_Chose: TMenuItem;
    Db_Complect_DetailsID_RCD: TFloatField;
    Db_Complect_DetailsID_IZD: TFloatField;
    Db_Complect_DetailsNAME_IZD: TStringField;
    Db_Complect_DetailsDET_ID: TFloatField;
    Db_Complect_DetailsNUM_DET: TStringField;
    Db_Complect_DetailsNAME_DET: TStringField;
    Db_Complect_DetailsID_PRIMEN_DET: TFloatField;
    Db_Complect_DetailsPRIMEN_DET: TStringField;
    Db_Complect_DetailsID_UZ: TFloatField;
    Db_Complect_DetailsMAR: TStringField;
    Db_Complect_DetailsKOL: TFloatField;
    Db_Complect_DetailsKOM: TStringField;
    Db_Complect_DetailsTECH: TStringField;
    Db_Complect_DetailsID_MTM: TFloatField;
    Db_Complect_DetailsNUM_MTM: TStringField;
    Db_Complect_DetailsFLAG_MTM: TStringField;
    Db_Complect_DetailsNOMVAR: TFloatField;
    Db_Complect_DetailsZAMDET: TStringField;
    Db_Complect_DetailsZAMMAR: TStringField;
    Db_Complect_DetailsPRIM: TStringField;
    Db_Complect_DetailsNUM_NAME_DET: TStringField;
    MemT_Complect_Details: TMemTableEh;
    MemT_Complect_DetailsID_RCD: TFloatField;
    MemT_Complect_DetailsID_IZD: TFloatField;
    MemT_Complect_DetailsNAME_IZD: TStringField;
    MemT_Complect_DetailsDET_ID: TFloatField;
    MemT_Complect_DetailsNUM_DET: TStringField;
    MemT_Complect_DetailsNAME_DET: TStringField;
    MemT_Complect_DetailsID_PRIMEN_DET: TFloatField;
    MemT_Complect_DetailsPRIMEN_DET: TStringField;
    MemT_Complect_DetailsID_UZ: TFloatField;
    MemT_Complect_DetailsMAR: TStringField;
    MemT_Complect_DetailsKOL: TFloatField;
    MemT_Complect_DetailsKOM: TStringField;
    MemT_Complect_DetailsTECH: TStringField;
    MemT_Complect_DetailsID_MTM: TFloatField;
    MemT_Complect_DetailsNUM_MTM: TStringField;
    MemT_Complect_DetailsFLAG_MTM: TStringField;
    MemT_Complect_DetailsNOMVAR: TFloatField;
    MemT_Complect_DetailsZAMDET: TStringField;
    MemT_Complect_DetailsZAMMAR: TStringField;
    MemT_Complect_DetailsPRIM: TStringField;
    MemT_Complect_DetailsNUM_NAME_DET: TStringField;
    procedure FormShow(Sender: TObject);
    procedure Main_M_Doc_Complect_Btn_ExitClick(Sender: TObject);
    procedure Grid_Detail_TpExit(Sender: TObject);
    procedure Grid_OperationsExit(Sender: TObject);
    procedure Pop_M_OperationsPopup(Sender: TObject);
    procedure Main_M_Doc_Complect_Btn_SaveClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Pop_M_Operations_Btn_Oper_DeleteClick(Sender: TObject);
    procedure MemT_Detail_TpNewRecord(DataSet: TDataSet);
    procedure MemT_Detail_OperationsNewRecord(DataSet: TDataSet);
    procedure Main_M_Doc_Complect_Btn_Doc_Tech_Proc_RepClick(Sender: TObject);
    procedure Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_PDFClick(Sender: TObject);
    procedure Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_ExcelClick(Sender: TObject);
    procedure DbGrid_Detail_TpColumns3UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure MemT_Doc_DetailsNewRecord(DataSet: TDataSet);
    procedure Pop_M_Operations_Btn_Chose_OperClick(Sender: TObject);
    procedure Grid_DetailsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Grid_Detail_TpGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Pop_M_Detail_Tp_Btn_AddClick(Sender: TObject);
    procedure Pop_M_Detail_Tp_Btn_DiscardClick(Sender: TObject);
    procedure Pop_M_Detail_TpPopup(Sender: TObject);
    procedure Pop_M_Detail_Tp_Btn_ChoseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MemT_Doc_DetailsBeforeDelete(DataSet: TDataSet);
    procedure Pop_M_DetailsPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_Is_Changed: Bool;
  end;

var
  Form_Doc_Complect: TForm_Doc_Complect;

implementation

{$R *.dfm}

Uses

Tp_Main_Form, Udm_Main, Tp_Data_Mode;

procedure TForm_Doc_Complect.Grid_DetailsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  With TMemTableEh(TDBGridEh(Sender).DataSource.DataSet)
  Do
  Begin
    If Not IsEmpty
    Then
    Begin
      case TreeNodeLevel of
        1: Background := $FFFFFF;
        Else Background := $FFFFFF - TreeNodeLevel*$110400 ;
      end;
    End;
  End;
end;

procedure TForm_Doc_Complect.DbGrid_Detail_TpColumns3UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  Var
    V_In_Params,
    V_Out_Main_Doc_Params: TDynVarsEh;
begin
  With MemT_Detail_Tp
  Do
  Begin
    If ( (Text <> '')
         And ( FieldByName( 'MAIN_DOC_ID' ).IsNull ) )
        Or ( (Text <> '')
              And ( Not FieldByName( 'MAIN_DOC_ID' ).IsNull )
              And ( Text <> FieldByName( 'ADDIT_INFO_NUM' ).AsString ) )
    Then
    Begin
      V_In_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Params.DynVar[ 'Find' ].AsString := 'DOC';
      V_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
      V_In_Params.DynVar[ 'V_Filter' ].AsString := ' t.Doc_Type In ( 2, 3 ) '
                                                 + ' And t.Cancel_Flag = 0 '
                                                 + ' And t.Tp_Work_Type = ';
                                                 //+ Tp_Main_Form.Form_Tech_Proc_Main.MemT_Complect_InfoTP_WORK_TYPE.AsString;
      //ShowMessage( V_In_Params.DynVar[ 'V_Filter' ].AsString );
      V_Out_Main_Doc_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
      If V_Out_Main_Doc_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName( 'MAIN_DOC_ID' ).AsInteger := V_Out_Main_Doc_Params.DynVar[ 'ID_DOC' ].AsInteger;
        Text :=  V_Out_Main_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString;
        FieldByName( 'TP_NUM' ).AsString := '---';
        FieldByName( 'TP_NAME' ).AsString :=  V_Out_Main_Doc_Params.DynVar[ 'ADDIT_INFO_NAME' ].AsString;
        FieldByName( 'ADDIT_INFO_NUM' ).AsString :=  V_Out_Main_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString;
      End;
    End
    Else if ( Text = '' )
             And ( Not FieldByName( 'MAIN_DOC_ID' ).IsNull )
    Then
    Begin
      Edit;
      FieldByName( 'TP_NUM' ).Clear;
      FieldByName( 'TP_NAME' ).Clear;
      FieldByName( 'MAIN_DOC_ID' ).Clear;
      MemT_Doc_Details.Delete;
    End;
  End;
end;

procedure TForm_Doc_Complect.Grid_Detail_TpExit(Sender: TObject);
begin
  Try MemT_Detail_Tp.Post Except End;
end;

procedure TForm_Doc_Complect.Grid_Detail_TpGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  With MemT_Detail_Tp
  Do
  Begin
    if Not IsEmpty
    Then
    Begin
      If (FieldByName( 'COMPLECT_ID' ).IsNull)
          And (FieldByName( 'DOC_TYPE' ).AsInteger <> 1)
      Then
      Begin
        Background := clMenu;
        AFont.Color := clSilver;
      End
      Else
      Begin
        Background := clWindow;
      End;
    End;
  End;
end;

procedure TForm_Doc_Complect.Grid_OperationsExit(Sender: TObject);
begin
  Try MemT_Detail_Operations.Post Except End;
end;

procedure TForm_Doc_Complect.Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_ExcelClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  //Main_M_Tp_Connected_Details_Btn_SaveClick( Main_M_Tp_Connected_Details_Btn_Doc_Vtp_See );
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'v_Doc_Id' ].AsInteger := MemT_Detail_TpID.AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Excel';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TForm_Doc_Complect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form_Doc_Complect.Main_M_Doc_Complect_Btn_SaveClick( Main_M_Doc_Complect_Btn_Exit );
end;

procedure TForm_Doc_Complect.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = VK_F5
  Then
    Form_Doc_Complect.Main_M_Doc_Complect_Btn_SaveClick( nil );
end;

procedure TForm_Doc_Complect.FormShow(Sender: TObject);
begin
  {MemT_Complect_Details.Close;
    Db_Complect_Details.SetVariable( 'v_Izd_Id', {Tp_Main_Form.Form_Tech_Proc_Main.MemT_Complect_InfoIZD_ID.AsInteger );
  MemT_Complect_Details.Open;
  MemT_Detail_Tp.Close;
    Db_Detail_Tp.SetVariable( 'v_Izd_Id', {Tp_Main_Form.Form_Tech_Proc_Main.MemT_Complect_InfoIZD_ID.AsInteger );
    Db_Detail_Tp.SetVariable( 'v_Tp_Work_Type', Tp_Main_Form.Form_Tech_Proc_Main.MemT_Complect_InfoTP_WORK_TYPE.AsInteger );
  MemT_Detail_Tp.Open;
  MemT_Detail_Operations.Close;
    Db_Detail_Operations.SetVariable( 'v_Izd_Id', Tp_Main_Form.Form_Tech_Proc_Main.MemT_Complect_InfoIZD_ID.AsInteger );
  MemT_Detail_Operations.Open;
  MemT_Doc_Details.Close;
    Db_Doc_Details.SetVariable( 'v_Izd_Id', Tp_Main_Form.Form_Tech_Proc_Main.MemT_Complect_InfoIZD_ID.AsInteger );
    Db_Doc_Details.SetVariable( 'v_Tp_Work_Type', Tp_Main_Form.Form_Tech_Proc_Main.MemT_Complect_InfoTP_WORK_TYPE.AsInteger );
  MemT_Doc_Details.Open;
  Form_Doc_Complect.Caption := 'ВТП для изделия '
                    + ' по комплекту документов '
                    + Tp_Main_Form.Form_Tech_Proc_Main.MemT_Complect_InfoTP_NUM.AsString; }
end;


procedure TForm_Doc_Complect.MemT_Detail_OperationsNewRecord(DataSet: TDataSet);
  var
  v_User_In_Params,
  v_User_Out_Params: TDynVarsEh;
begin
  With DataSet
  Do
  Begin
    v_User_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_User_In_Params.DynVar[ 'Find' ].AsString := 'USERS';
    if Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
    Then
      v_User_In_Params.DynVar[ 'V_Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
                                                        + ' And Id_User = ''' + Udm_Main.DM_Main.Session.LogonUsername + ''' ';
      v_User_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_User_In_Params );
      If v_User_Out_Params <> Nil
      Then
      Begin
         FieldByName( 'RAZRAB_NAME' ).AsString := v_User_Out_Params.DynVar[ 'EMP_FIO' ].AsString;
         FieldByName( 'RAZRAB' ).AsInteger := v_User_Out_Params.DynVar[ 'EMP_ID' ].AsInteger;
      End;
    Seq_Detail_Operations.Execute;
    FieldByName( 'ID' ).AsInteger := Seq_Detail_Operations.FieldAsInteger(0);
    FieldByName( 'ID_DOC_TP' ).AsInteger := MemT_Detail_TpID.AsInteger;
    FieldByName( 'DET_ID' ).AsInteger := MemT_Complect_DetailsDET_ID.AsInteger;
    MemT_Detail_OperationsID_ROW_DET.AsInteger := MemT_Doc_DetailsID.AsInteger;
    MemT_Detail_OperationsDATA_CHANGE.AsDateTime := Now();
    If MemT_Detail_TpTP_WORK_TYPE.AsInteger = 71
    Then
     MemT_Detail_OperationsOPER_COUNT_INS.AsInteger := 1;
  End;
end;

procedure TForm_Doc_Complect.MemT_Detail_TpNewRecord(DataSet: TDataSet);
  var
  v_In_Doc_Params,
  v_Out_Doc_Params,
  v_User_In_Params,
  v_User_Out_Params: TDynVarsEh;
begin
  With DataSet
  Do
  Begin
    FieldByName( 'DOC_NUM' ).AsString := '---';
    FieldByName( 'ADDIT_INFO_NUM' ).AsString := '---';
    FieldByName( 'TP_NUM' ).AsString := '---';
    FieldByName( 'DOC_TYPE' ).AsInteger := 4;
    FieldByName( 'DATA_CHANGE' ).AsDateTime := Now();
    {With Tp_Main_Form.Form_Tech_Proc_Main.MemT_Complect_Info
    Do
    Begin
      DataSet.FieldByName( 'IZD_ID' ).AsInteger := FieldByName( 'IZD_ID' ).AsInteger;
      DataSet.FieldByName( 'TP_WORK_TYPE' ).AsInteger := FieldByName( 'TP_WORK_TYPE' ).AsInteger;
      DataSet.FieldByName( 'COMPLECT_ID' ).AsInteger := FieldByName( 'ID' ).AsInteger;
      DataSet.FieldByName( 'TP_TYPE' ).AsInteger := FieldByName( 'TP_TYPE' ).AsInteger;
    End; }
    Seq_Detail_Tp.Execute;
    Seq_Id_Doc_Header.Execute;
    FieldByName( 'ID' ).AsInteger := Seq_Detail_Tp.FieldAsInteger(0);
    FieldByName( 'ID_DET' ).AsInteger := MemT_Complect_DetailsDET_ID.AsInteger;
    FieldByName( 'DOC_HEADER_ID' ).AsInteger := Seq_Id_Doc_Header.FieldAsInteger(0);
    v_User_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_User_In_Params.DynVar[ 'Find' ].AsString := 'USERS';
    if Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
    Then
      v_User_In_Params.DynVar[ 'V_Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum )
                                                        + ' And Id_User = ''' + Udm_Main.DM_Main.Session.LogonUsername + ''' ';
    v_User_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_User_In_Params );
    If v_User_Out_Params <> Nil
    Then
    Begin
      FieldByName( 'AUTHOR_NAME' ).AsString := v_User_Out_Params.DynVar[ 'EMP_FIO' ].AsString;
      FieldByName( 'AUTHOR_LNUM' ).AsInteger := v_User_Out_Params.DynVar[ 'EMP_ID' ].AsInteger;
      FieldByName( 'CEH_ID' ).AsInteger := v_User_Out_Params.DynVar[ 'CEH_ID' ].AsInteger;
      MemT_Doc_Details.Edit;
      MemT_Doc_DetailsID_DOC_TP.AsInteger := Seq_Detail_Tp.FieldAsInteger(0);
      MemT_Doc_DetailsRAZRAB.AsInteger := v_User_Out_Params.DynVar[ 'EMP_ID' ].AsInteger;
    End;
  End;
end;

procedure TForm_Doc_Complect.MemT_Doc_DetailsBeforeDelete(DataSet: TDataSet);
begin
  With MemT_Detail_Operations
  Do
  Begin
    If Not IsEmpty
    Then
    Begin
      DisableControls;
      Try
        While True
        Do
        Begin
          Delete;
          If Eof
          Then
          Begin
            Break;
          End;
        End;
      Finally
        EnableControls;
      End;
    End;
  End;
end;

procedure TForm_Doc_Complect.MemT_Doc_DetailsNewRecord(DataSet: TDataSet);
begin
  With DataSet
  Do
  Begin
    Seq_Doc_Details.Execute;
    FieldByName( 'ID' ).AsInteger := Seq_Doc_Details.FieldAsInteger(0);
    FieldByName( 'DET_ID' ).AsInteger := MemT_Complect_DetailsDET_ID.AsInteger;
    FieldByName( 'DET_NUM' ).AsString := MemT_Complect_DetailsNUM_DET.AsString;
    FieldByName( 'DET_NAME' ).AsString := MemT_Complect_DetailsNAME_DET.AsString;
  End;
end;

procedure TForm_Doc_Complect.Main_M_Doc_Complect_Btn_ExitClick(Sender: TObject);
begin
  Form_Doc_Complect.Close;
end;

procedure TForm_Doc_Complect.Main_M_Doc_Complect_Btn_SaveClick(Sender: TObject);
var
  V_Button_Selected: Integer;
  v_User_Lnum, I: Integer;
begin
  Try MemT_Detail_Tp.Post Except End;
  Try MemT_Doc_Details.Post Except End;
  Try MemT_Detail_Operations.Post Except End;

  If (MemT_Detail_Tp.HasCachedChanges)
      Or (MemT_Doc_Details.HasCachedChanges)
      Or (MemT_Detail_Operations.HasCachedChanges)
  Then
  Begin
    if Sender = Main_M_Doc_Complect_Btn_Save
    Then
      V_Button_Selected := MessageDlg('Сохранить файлы?', mtConfirmation, mbOKCancel, 5)
    Else if Sender = Main_M_Doc_Complect_Btn_Exit
    Then
      V_Button_Selected := MessageDlg('Файлы не сохранены! Сохранить файлы?', mtConfirmation, mbOKCancel, 5);
    if V_Button_Selected = mrOk
    Then
    Begin
      With MemT_Detail_Tp
      Do
      Begin
        DisableControls;
        Grid_Detail_Tp.SaveVertPos( 'ID' );
        Try
          With RecordsView.MemTableData.RecordsList
          Do
          Begin
            For I := 0 to Count - 1
            Do
            Begin
              If Rec[ i ].UpdateStatus = usInserted
              Then
              Begin
                Rec[ i ].DataValues[ 'ADDIT_INFO_NAME', dvvValueEh ] := Null;
                Rec[ i ].DataValues[ 'ADDIT_INFO_NUM', dvvValueEh ] := Null;
                Rec[ i ].DataValues[ 'ID_DET', dvvValueEh ] := Null;
              End;
            End;
          End;
        Finally
          EnableControls;
          ApplyUpdates( 0 );
          MergeChangeLog;
        End;
      End;

      MemT_Doc_Details.ApplyUpdates(0);
      MemT_Doc_Details.MergeChangeLog;
      MemT_Detail_Operations.ApplyUpdates(0);
      MemT_Detail_Operations.MergeChangeLog;
      DM_Main.Session.ApplyUpdates( [Db_Detail_Tp, Db_Doc_Details, Db_Detail_Operations], True );
      Grid_Operations.SaveVertPos( 'ID' );
      MemT_Detail_Tp.Refresh;
      MemT_Doc_Details.Refresh;
      MemT_Detail_Operations.Refresh;
      Grid_Detail_Tp.RestoreVertPos( 'ID' );
      Grid_Operations.RestoreVertPos( 'ID' );
    End
    Else if (V_Button_Selected = mrCancel)
            And ( Sender = Main_M_Doc_Complect_Btn_Exit )
    Then
    Begin
      MemT_Detail_Tp.CancelUpdates;
      MemT_Doc_Details.CancelUpdates;
      MemT_Detail_Operations.CancelUpdates;
    End;
  End;
end;

procedure TForm_Doc_Complect.Pop_M_DetailsPopup(Sender: TObject);
begin
  With MemT_Detail_Tp
  Do
  Begin
    If (IsEmpty)
        Or (FieldByName( 'DOC_TYPE' ).AsInteger = 1)
    Then
      Abort;
  End;
end;

procedure TForm_Doc_Complect.Pop_M_Detail_Tp_Btn_AddClick(Sender: TObject);
begin
  With MemT_Detail_Tp
  Do
  Begin
    If (FieldByName( 'COMPLECT_ID' ).IsNull)
        And (FieldByName( 'DOC_TYPE' ).AsInteger <> 1)
        And (FieldByName( 'DOC_NUM' ).AsString <> '---')
    Then
    Begin
      Edit;
      //FieldByName( 'COMPLECT_ID' ).AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.MemT_Complect_InfoID.AsInteger;
      Post;
    End;
  End;
end;

procedure TForm_Doc_Complect.Pop_M_Detail_Tp_Btn_ChoseClick(Sender: TObject);
  Var
    V_In_Params, V_Out_Params: TDynVarsEh;
    I: Integer;
begin
  V_In_Params := TDynVarsEh.Create( Application.MainForm );
  V_In_Params.DynVar[ 'Find' ].AsString := 'DOC';
  v_In_Params.DynVar[ 'MultiSelect' ].AsBoolean := True;
  V_In_Params.DynVar[ 'Filter' ].AsString := ' t.Doc_Type In ( 2, 3 ) '
                                             + ' And t.Cancel_Flag = 0 '
                                             + ' And t.Tp_Work_Type = '
                                             {+ Tp_Main_Form.Form_Tech_Proc_Main.MemT_Complect_InfoTP_WORK_TYPE.AsString};
  V_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
  if V_Out_Params <> Nil
  Then
  Begin
    With MemT_Detail_Tp
    Do
    Begin
      Tp_Dm.MemT_Buffer.Active := True;
      Tp_Dm.MemT_Buffer.First;
      For i := 1 To Tp_Dm.MemT_Buffer.RecordCount
      Do
      Begin
        Append;
        FieldByName( 'TP_NAME' ).AsString := Tp_Dm.MemT_Buffer.FieldByName( 'ADDIT_INFO_NAME' ).AsString;
        FieldByName( 'ADDIT_INFO_NAME' ).AsString := Tp_Dm.MemT_Buffer.FieldByName( 'ADDIT_INFO_NAME' ).AsString;
        FieldByName( 'MAIN_DOC_ID' ).AsString := Tp_Dm.MemT_Buffer.FieldByName( 'MAIN_DOC_ID' ).AsString;
        Post;
        Tp_Dm.MemT_Buffer.Next;
      End;
    End;
  End;
end;

procedure TForm_Doc_Complect.Pop_M_Detail_Tp_Btn_DiscardClick(Sender: TObject);
begin
  With MemT_Detail_Tp
  Do
  Begin
    If ( Not FieldByName( 'COMPLECT_ID' ).IsNull)
        And (FieldByName( 'DOC_TYPE' ).AsInteger <> 1)
    Then
    Begin
      If FieldByName( 'DOC_NUM' ).AsString <> '---'
      Then
      Begin
        Edit;
        FieldByName( 'COMPLECT_ID' ).Clear;
        Post;
      End
      Else
        Delete;
    End;
  End;
end;

procedure TForm_Doc_Complect.Pop_M_Operations_Btn_Chose_OperClick(Sender: TObject);
Var
  I: Integer;
begin
  If Not MemT_Doc_DetailsDET_ID.IsNull
  Then
  Begin
    PKG_TP_DOC.CallProcedure( 'P_Copy_Oper_To_Copy', [ MemT_Detail_TpMAIN_DOC_ID.AsInteger,
                                                       MemT_Detail_TpID.AsInteger,
                                                       MemT_Doc_DetailsDET_ID.AsInteger ] );
    MemT_Operations_For_Copy.Close;
    MemT_Operations_For_Copy.Open;
    Tp_Copy_Oper_For_Det_Doc_Form.Form_Copy_Opers_From_TTP.Grid_Operations.DataSource := Form_Doc_Complect.Data_Oper_For_Copy;
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

procedure TForm_Doc_Complect.Main_M_Doc_Complect_Btn_Doc_Tech_Proc_RepClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  //Main_M_Tp_Connected_Details_Btn_SaveClick( Main_M_Tp_Connected_Details_Btn_Doc_Vtp_See );
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'v_Doc_Id' ].AsInteger := MemT_Detail_TpID.AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TForm_Doc_Complect.Pop_M_Operations_Btn_Oper_DeleteClick(Sender: TObject);
begin
  Tp_Main_Form.Form_Tech_Proc_Main.P_DeleteFromDBGridEh( Grid_Operations );
end;

procedure TForm_Doc_Complect.Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_PDFClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  //Main_M_Tp_Connected_Details_Btn_SaveClick( Main_M_Tp_Connected_Details_Btn_Doc_Vtp_See );
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'v_Doc_Id' ].AsInteger := MemT_Detail_TpID.AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Pdf';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TForm_Doc_Complect.Pop_M_OperationsPopup(Sender: TObject);
begin
  if Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
  Begin
    if MemT_Detail_TpAUTHOR_LNUM.AsInteger <> Tp_Main_Form.Form_Tech_Proc_Main.User_lnum
    Then
     Abort;
  End;

  If MemT_Detail_TpID.IsNull
  Then
    Abort;

  If MemT_Detail_OperationsID.IsNull
  Then
  Begin
    Pop_M_Operations_Btn_Oper_Params.Visible := False;
    Pop_M_Operations_Btn_Oper_Delete.Visible := False;
  End
  Else
  Begin
    Pop_M_Operations_Btn_Oper_Params.Visible := True;
    Pop_M_Operations_Btn_Oper_Delete.Visible := True;
  End;

end;

procedure TForm_Doc_Complect.Pop_M_Detail_TpPopup(Sender: TObject);
begin
  With MemT_Detail_Tp
  Do
  Begin
    If (FieldByName( 'COMPLECT_ID' ).IsNull)
        And (FieldByName( 'DOC_TYPE' ).AsInteger <> 1)
    Then
    Begin
      Pop_M_Detail_Tp_Btn_Add.Visible := True;
      Pop_M_Detail_Tp_Btn_Discard.Visible := False;
    End
    Else If ( Not FieldByName( 'COMPLECT_ID' ).IsNull)
          And (FieldByName( 'DOC_TYPE' ).AsInteger <> 1)
    Then
    Begin
      Pop_M_Detail_Tp_Btn_Add.Visible := False;
      Pop_M_Detail_Tp_Btn_Discard.Visible := True;
    End
    Else
    Begin
      Pop_M_Detail_Tp_Btn_Add.Visible := False;
      Pop_M_Detail_Tp_Btn_Discard.Visible := False;
    End;
  End;
end;

end.
