unit VTP_CHEM_TEMP_REPORT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportXLS, frxClass, frxExportPDF,
  Vcl.ExtCtrls, frxDBSet, Data.DB, OracleData, VAR_FORM, DynVarsEh;

type
  TForm_VTP_Chem_Rep = class(TForm)
    frxReport1: TfrxReport;
    DB_OPER_OBOR: TOracleDataSet;
    Db_Det_Mat: TOracleDataSet;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    Db_Det_Main_Material: TOracleDataSet;
    Db_Det_Osn: TOracleDataSet;
    Db_Detail_Docs: TOracleDataSet;
    Db_Detail_DocsID: TFloatField;
    Db_Detail_DocsDOC_NUM: TStringField;
    Db_Detail_DocsDOC_LITER: TStringField;
    Db_Detail_DocsDOC_TYPE: TFloatField;
    Db_Detail_DocsTP_NUM: TStringField;
    Db_Detail_DocsTP_NAME: TStringField;
    Db_Detail_DocsTP_WORK_TYPE: TFloatField;
    Db_Detail_DocsTP_WORK_TYPE_NAME: TStringField;
    Db_Detail_DocsIZD_ID: TFloatField;
    Db_Detail_DocsIZD_NAME: TStringField;
    Db_Detail_DocsIZD_TYPE: TStringField;
    Db_Detail_DocsCOMPLECT_ID: TFloatField;
    Db_Detail_DocsTP_TYPE: TFloatField;
    Db_Detail_DocsFLAG_IMP: TFloatField;
    Db_Detail_DocsDET_ID: TFloatField;
    Db_Detail_DocsDET_NUM: TStringField;
    Db_Detail_DocsDET_NAME: TStringField;
    Db_Detail_DocsDET_MAR: TStringField;
    Db_Detail_DocsCEH_ID: TFloatField;
    Db_Detail_DocsCEH_CODE: TStringField;
    Db_Detail_DocsAUTHOR_LNUM: TFloatField;
    Db_Detail_DocsAUTHOR_NAME: TStringField;
    Db_Detail_DocsDATA_REG: TDateTimeField;
    Db_Detail_DocsDATA_CHANGE: TDateTimeField;
    Db_Detail_DocsREASON: TStringField;
    Db_Detail_DocsCANCEL_DOC_ID: TFloatField;
    Db_Detail_DocsMAIN_DOC_ID: TFloatField;
    Db_Detail_DocsCANCEL_FLAG: TFloatField;
    Db_Detail_DocsCEH_DOCS_FLAG: TFloatField;
    Db_Detail_DocsACT_NUM: TFloatField;
    Db_Detail_DocsACT_DATE: TDateTimeField;
    Db_Detail_DocsDOC_HEADER_ID: TFloatField;
    Db_Detail_DocsEMPS_ID: TStringField;
    Db_Detail_DocsTP_MAIN_DOC_NUM: TStringField;
    Db_Doc_Details: TOracleDataSet;
    Db_Doc_DetailsID: TFloatField;
    Db_Doc_DetailsID_DOC_TP: TFloatField;
    Db_Doc_DetailsDET_ID: TFloatField;
    Db_Doc_DetailsDATE_CHANGE: TDateTimeField;
    Db_Doc_DetailsDET_NUM: TStringField;
    Db_Doc_DetailsDET_NAME: TStringField;
    Db_Doc_DetailsRAZRAB: TFloatField;
    Db_Doc_DetailsRAZRAB_NAME: TStringField;
    Db_Detail_Operations: TOracleDataSet;
    Db_Detail_OperationsID: TFloatField;
    Db_Detail_OperationsID_DOC_TP: TFloatField;
    Db_Detail_OperationsMAIN_DOC_ID: TFloatField;
    Db_Detail_OperationsID_ROW_OPER: TFloatField;
    Db_Detail_OperationsROW_NUM_GEN: TStringField;
    Db_Detail_OperationsCEH_CODE: TStringField;
    Db_Detail_OperationsOPER_NAME: TStringField;
    Db_Detail_OperationsOPER_IOT: TStringField;
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
    Db_Detail_OperationsOPER_CHS_PARAMS: TStringField;
    Db_Detail_OperationsOPER_COLOR_ID: TFloatField;
    Db_Detail_OperationsCOLOR_NAME: TStringField;
    Db_Detail_OperationsOPER_COUNT_INS: TFloatField;
    DB_EXECUTE_VARIABLES: TOracleDataSet;
    DB_EXECUTE_VARIABLESFLAG_UTV: TStringField;
    Db_Oper_Prim: TOracleDataSet;
    DB_SOGL_LIST: TOracleDataSet;
    Db_First_Normalizer: TOracleDataSet;
    Db_Second_Normalizer: TOracleDataSet;
    Db_3_Normalizer: TOracleDataSet;
    Db_4_Normalizer: TOracleDataSet;
    Db_5_Normalizer: TOracleDataSet;
    Db_6_Normalizer: TOracleDataSet;
    Db_Doc_DetailsMAIN_DOC_ID: TFloatField;
    Db_Doc_DetailsID_USER: TStringField;
    Db_Doc_DetailsDET_EV_ID: TFloatField;
    Db_Doc_DetailsDET_EV_CODE: TStringField;
    Db_Doc_DetailsDET_MASS: TFloatField;
    Db_Doc_DetailsDIFC_GROUP: TFloatField;
    Db_Doc_DetailsDET_MAT_ID: TFloatField;
    Db_Doc_DetailsDET_MAT_NAME: TStringField;
    Db_Doc_DetailsDET_MAT: TStringField;
    Data_Detail_Docs: TfrxDBDataset;
    Data_Doc_Details: TfrxDBDataset;
    Data_First_Normalizer: TfrxDBDataset;
    Data_Second_Normalizer: TfrxDBDataset;
    Data_3_Normalizer: TfrxDBDataset;
    Data_4_Normalizer: TfrxDBDataset;
    Data_5_Normalizer: TfrxDBDataset;
    Data_6_Normalizer: TfrxDBDataset;
    Data_Detail_Operations: TfrxDBDataset;
    Data_EXECUTE_VARIABLES: TfrxDBDataset;
    Data_Oper_Prim: TfrxDBDataset;
    Data_Det_Mat: TfrxDBDataset;
    Data_SOGL_LIST: TfrxDBDataset;
    Data_OPER_OBOR: TfrxDBDataset;
    Data_Det_Main_Material: TfrxDBDataset;
    Data_Det_Osn: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }

  Procedure P_Show_VTP( v_In_Params: TDynVarsEh );
  end;

var
  Form_VTP_Chem_Rep: TForm_VTP_Chem_Rep;

implementation

{$R *.dfm}
Uses
Udm_Main;

Procedure TForm_VTP_Chem_Rep.P_Show_VTP( v_In_Params: TDynVarsEh );
Var
  v_Count_Of_Copies: Integer;
  searchResult: TSearchRec;
  v_Start_Path: String;
  v_End_Path: String;
begin

  {$Region 'Датасеты'}
  Db_Detail_Docs.Close;
  Db_Detail_Docs.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString );
  Db_Detail_Docs.Open;
  Db_Doc_Details.Close;
  Db_Doc_Details.Open;
  Db_Detail_Operations.Close;
  Db_Detail_Operations.Open;
  DB_EXECUTE_VARIABLES.Close;
  DB_EXECUTE_VARIABLES.Open;
  DB_OPER_OBOR.Close;
  DB_OPER_OBOR.Open;
  Db_Oper_Prim.Close;
  Db_Oper_Prim.Open;
  Db_Det_Mat.Close;
  Db_Det_Mat.Open;
  DB_SOGL_LIST.Close;
  DB_SOGL_LIST.Open;
  Db_Det_Main_Material.Close;
  Db_Det_Main_Material.Open;
  Db_Det_Osn.Close;
  Db_Det_Osn.Open;

  {$Region 'Нормировщики'}
  Db_First_Normalizer.Close;
  Db_First_Normalizer.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
  Db_First_Normalizer.Open;
  Db_Second_Normalizer.Close;
  Db_Second_Normalizer.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
  Db_Second_Normalizer.Open;
  Db_3_Normalizer.Close;
  Db_3_Normalizer.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
  Db_3_Normalizer.Open;
  Db_4_Normalizer.Close;
  Db_4_Normalizer.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
  Db_4_Normalizer.Open;
  Db_5_Normalizer.Close;
  Db_5_Normalizer.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
  Db_5_Normalizer.Open;
  Db_6_Normalizer.Close;
  Db_6_Normalizer.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
  Db_6_Normalizer.Open;
  {$EndRegion 'Нормировщики'}

  {$EndRegion 'Датасеты'}

  {$Region 'Действия'}
  If v_In_Params.DynVar[ 'Action' ].AsString = 'Show'
  Then
  Begin
    //Репорт
    frxReport1.ShowReport();
  End
  Else if v_In_Params.DynVar[ 'Action' ].AsString = 'Export_In_Pdf'
  Then
  Begin
    //Экспорт в PDF
    frxReport1.PrepareReport();
    frxPDFExport1.FileName := 'ВТП '
                             + Db_Detail_DocsTP_NUM.AsString
                             + ' ' + Db_Detail_DocsTP_NAME.AsString;
    frxReport1.Export(frxPDFExport1);
  End
  Else if v_In_Params.DynVar[ 'Action' ].AsString = 'Export_In_Excel'
  Then
  Begin
    //Экспорт в Excel
    frxReport1.PrepareReport();
    frxXLSExport1.FileName := 'ВТП '
                             + Db_Detail_DocsTP_NUM.AsString
                             + ' ' + Db_Detail_DocsTP_NAME.AsString;
    frxReport1.Export(frxXLSExport1);
  End
  Else If v_In_Params.DynVar[ 'Action' ].AsString = 'Create_Pdf_Copy'
  Then
  Begin
    {$Region 'Создание PDF копии'}
    frxReport1.PrepareReport();
    //Находим все файлы с данным форматом
    v_Count_Of_Copies := 0;
    If FindFirst( '\\SERVER\ogt-tp\DLP\TP_PDF\'
                  + 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                  + '_*.pdf',
                  faAnyFile,
                  searchResult ) = 0
    Then
    begin
      Repeat
        Inc( v_Count_Of_Copies );
      Until FindNext( searchResult ) <> 0;
      FindClose( searchResult );
    end;
    Inc( v_Count_Of_Copies );
    frxPDFExport1.DefaultPath := 'C:\Temp';
    frxPDFExport1.FileName := 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                             + '_' + IntToStr( v_Count_Of_Copies )
                             + '.pdf';
    frxPDFExport1.ShowDialog := False; //Фоном
    frxPDFExport1.ShowProgress := False;
    frxPDFExport1.OpenAfterExport := False;
    frxReport1.Export( frxPDFExport1 );
    v_Start_Path := 'C:\Temp\'
                     + 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                     + '_' + IntToStr( v_Count_Of_Copies ) + '.pdf';
    v_End_Path := '\\SERVER\ogt-tp$\DLP\TP_PDF\'
                     + 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                     + '_' + IntToStr( v_Count_Of_Copies ) + '.pdf';
    CopyFile ( PChar( v_Start_Path ),
              PChar( v_End_Path ),
              False );
    DeleteFile ( 'C:\Temp\'
                 + 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                 + '_' + IntToStr( v_Count_Of_Copies ) + '.pdf' );
    {$EndRegion 'Создание PDF копии'}
  End;
  {$EndRegion 'Действия'}

end;

end.
