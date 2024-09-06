unit Sz_DocReportData;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, Data.DB, OracleData,
  frxExportXLSX, frxExportPDF;

type
  TDm_ReportData = class(TDataModule)
    Db_Doc: TOracleDataSet;
    Db_DocID_SZ_PRICE_REQ: TIntegerField;
    Db_DocDOC_HEADER_ID: TIntegerField;
    Db_DocSZ_PRICE_REQ_ID: TIntegerField;
    Db_DocSZ_NUMBER: TStringField;
    Db_DocSZ_DEP_NUMBER: TStringField;
    Db_DocSZ_DATE: TDateTimeField;
    Db_DocSZ_NOTE: TStringField;
    Db_DocSZ_DEP_ID: TIntegerField;
    Db_DocEMP_FIO: TStringField;
    Db_DocI_USER: TStringField;
    Db_DocI_DATE: TDateTimeField;
    Db_DocU_USER: TStringField;
    Db_DocDATE_START_ROUTE: TDateTimeField;
    Db_DocDATE_END_ROUTE: TDateTimeField;
    Db_Doc_Contacts: TOracleDataSet;
    Db_Doc_ContactsID_SZ_PR_REQ_CONT: TStringField;
    Db_Doc_ContactsSZ_PRICE_REQ_ID: TStringField;
    Db_Doc_ContactsCONT_EMP_ID: TStringField;
    Db_Doc_ContactsCONT_USER_ID: TStringField;
    Db_Doc_ContactsCONT_SECTION: TStringField;
    Db_Doc_ContactsCONT_DEP_ID: TStringField;
    Db_Doc_ContactsI_USER: TStringField;
    Db_Doc_ContactsI_USER_ADD: TStringField;
    Db_Doc_ContactsI_DATE: TStringField;
    Db_Doc_ContactsU_USER: TStringField;
    Db_Doc_ContactsU_USER_ADD: TStringField;
    Db_Doc_ContactsU_DATE: TStringField;
    Db_Doc_ContactsDEP_SNAME: TStringField;
    Db_Doc_ContactsCONT_SECTION_NAME: TStringField;
    Db_Doc_ContactsEMP_FIO: TStringField;
    Db_Doc_Content: TOracleDataSet;
    Db_Doc_ContentID_SZ_PRICE_REQ_ITEM: TIntegerField;
    Db_Doc_ContentSZ_PRICE_REQ_ITEM_ID: TIntegerField;
    Db_Doc_ContentSZ_PRICE_REQ_ID: TIntegerField;
    Db_Doc_ContentITEM_POS_NUM: TIntegerField;
    Db_Doc_ContentITEM_CODE: TStringField;
    Db_Doc_ContentITEM_NUM: TStringField;
    Db_Doc_ContentITEM_NAME: TStringField;
    Db_Doc_ContentITEM_PRICE: TFloatField;
    Db_Doc_ContentITEM_NDS: TIntegerField;
    Db_Doc_ContentITEM_PRICE_DATE_START: TDateTimeField;
    Db_Doc_ContentITEM_PRICE_DATE_END: TDateTimeField;
    Db_Doc_ContentITEM_NOTE: TStringField;
    Db_Doc_ContentITEM_USE_FLAG: TStringField;
    Db_Doc_ContentI_USER: TStringField;
    Db_Doc_ContentI_USER_ADD: TIntegerField;
    Db_Doc_ContentI_DATE: TDateTimeField;
    Db_Doc_ContentU_USER: TStringField;
    Db_Doc_ContentU_USER_ADD: TIntegerField;
    Db_Doc_ContentU_DATE: TDateTimeField;
    Db_Doc_ContentUSER_CORRECT: TStringField;
    Db_Doc_ContentITEM_PRICE_N_NDS: TFloatField;
    frxData_Doc: TfrxDBDataset;
    frxData_Doc_Content: TfrxDBDataset;
    frxData_Doc_Contacts: TfrxDBDataset;
    Db_Doc_ContactsPROFESSION: TStringField;
    Db_DocHEADER_EMP_FIO: TStringField;
    Db_DocHEADER_PROFESSION: TStringField;
    Db_DocHEADER_SIGN_DATE: TDateTimeField;
    frxReport261: TfrxReport;
    Db_DocTPHONE: TStringField;
    frxReportMain: TfrxReport;
    Db_Doc_Points: TOracleDataSet;
    Db_Doc_PointsID_DOC_ROUT_POINT: TIntegerField;
    Db_Doc_PointsDOC_ROUT_ID: TIntegerField;
    Db_Doc_PointsPOINT_POSITION: TStringField;
    Db_Doc_PointsPOINT_EXPIRATION: TIntegerField;
    Db_Doc_PointsPOINT_NAME: TStringField;
    Db_Doc_PointsSTP_DOC_ROUT_POINT_ID: TIntegerField;
    Db_Doc_PointsDATE_ENTER: TDateTimeField;
    Db_Doc_PointsSTP_DOC_RESOLUTION_RESULT_ID: TIntegerField;
    Db_Doc_PointsRESULT_DATE: TDateTimeField;
    Db_Doc_PointsRESULT_NOTE: TStringField;
    Db_Doc_PointsRESULT_USER_ID: TStringField;
    Db_Doc_PointsRESULT_USER_ID_ADD: TIntegerField;
    Db_Doc_PointsEMP_FIO: TStringField;
    Db_Doc_PointsPROFESSION: TStringField;
    frxData_Doc_Points: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    Db_Doc_ItemComms: TOracleDataSet;
    frxData_Doc_Comms: TfrxDBDataset;
    Db_Doc_ItemCommsID_RW_DC_COMM: TFloatField;
    Db_Doc_ItemCommsDOC_HEADER_ID: TIntegerField;
    Db_Doc_ItemCommsDOC_TYPE_ID: TStringField;
    Db_Doc_ItemCommsDOC_NUMBER: TStringField;
    Db_Doc_ItemCommsDC_COMM_RW_ID: TFloatField;
    Db_Doc_ItemCommsITEM_ID: TFloatField;
    Db_Doc_ItemCommsITEM_CODE: TStringField;
    Db_Doc_ItemCommsITEM_SOURCE: TStringField;
    Db_Doc_ItemCommsCOMM_TEXT: TStringField;
    Db_Doc_ItemCommsUSER_INSERT: TStringField;
    Db_Doc_ItemCommsDATE_INSERT: TDateTimeField;
    Db_Doc_ItemCommsUSER_CHANGE: TStringField;
    Db_Doc_ItemCommsDATE_CHANGE: TDateTimeField;
    Db_Doc_ItemCommsUSER_ADD_INSERT: TIntegerField;
    Db_Doc_ItemCommsUSER_ADD_CHANGE: TIntegerField;
    Db_Doc_ItemCommsEMP_FIO: TStringField;
    frxReport184: TfrxReport;
    Db_DocTO_EMP_FIO: TStringField;
    Db_DocTO_PROFESSION: TStringField;
    Db_ContentLinks: TOracleDataSet;
    frxData_ContentLinks: TfrxDBDataset;
  private
    { Private declarations }
    FDocHeaderId: Integer;
    FArrDataSets: Array Of TDataSet;
  public
    { Public declarations }
    procedure PrintDoc;
    constructor Create(AOwner: TComponent; InDocHeaderId: Integer);
    property DocHeaderId: Integer Read FDocHeaderId;
  end;

var
  Dm_ReportData: TDm_ReportData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  Udm_Main;

{ TDm_ReportData }

constructor TDm_ReportData.Create(AOwner: TComponent; InDocHeaderId: Integer);
begin
  inherited Create(AOwner);
  FDocHeaderId := InDocHeaderId;
  FArrDataSets := [
                    Db_Doc,
                    Db_Doc_Contacts,
                    Db_Doc_Content,
                    Db_Doc_Points,
                    Db_Doc_ItemComms
                   ];
end;

procedure TDm_ReportData.PrintDoc;
var
  ShowingReport: TfrxReport;
  Page, NewPage: TfrxReportPage;
  i: Integer;
  FileStream: TMemoryStream;
  ResourseFileName: String;
  ReportStream: TResourceStream;
begin
  for i := Low(FArrDataSets) to High(FArrDataSets)
  do
    FArrDataSets[i].Active := False;

  Db_Doc.SetVariable(0, FDocHeaderId);
  Db_Doc.Active := True;
  Db_Doc_Contacts.Active:=True;
  Db_Doc_Content.Active:=True;
  Db_Doc_Points.Active:=True;
  Db_Doc_ItemComms.Active:=True;

  ReportStream:=TResourceStream.Create(Hinstance, PChar(Format('RepDep%d',[Db_DocSZ_DEP_ID.AsInteger])), PChar('FR3'));
  if ReportStream<>Nil
  then
  begin
    frxReportMain.LoadFromStream(ReportStream);
    frxReportMain.PrepareReport(True);
    frxReportMain.ShowPreparedReport;
  end;
end;

end.
