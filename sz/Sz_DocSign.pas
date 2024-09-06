unit Sz_DocSign;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, Data.DB, OracleData,
  DBCtrlsEh, Vcl.StdCtrls, Vcl.Mask, DBLookupEh, Oracle;

type
  TForm_SzDocSign = class(TForm)
    Lcb_SingPoint: TDBLookupComboboxEh;
    Btn_Cancel: TButton;
    Btn_Apply: TButton;
    Mem_Comment: TDBMemoEh;
    Db_SingPoints: TOracleDataSet;
    Db_DocsList: TOracleDataSet;
    Data_SingPoints: TDataSource;
    Db_SingPointsID_DOC_ROUT_POINT: TIntegerField;
    Db_SingPointsDOC_ROUT_ID: TIntegerField;
    Db_SingPointsPOINT_POSITION: TStringField;
    Db_SingPointsPOINT_EXPIRATION: TIntegerField;
    Db_SingPointsPOINT_NAME: TStringField;
    Db_SingPointsSTP_DOC_ROUT_POINT_ID: TIntegerField;
    Db_SingPointsDATE_ENTER: TDateTimeField;
    Db_SingPointsSTP_DOC_RESOLUTION_RESULT_ID: TIntegerField;
    Db_SingPointsRESULT_DATE: TDateTimeField;
    Db_SingPointsRESULT_NOTE: TStringField;
    Db_SingPointsRESULT_USER_ID: TStringField;
    Db_SingPointsRESULT_USER_ID_ADD: TIntegerField;
    Db_PointResults: TOracleDataSet;
    Db_PointResultsDOC_ROUT_POINT_ID: TFloatField;
    Db_PointResultsID_DOC_POSITIVE_RESOLUT: TIntegerField;
    Db_PointResultsNAME_DOC_POSITIVE_RESOLUT: TStringField;
    Db_PointResultsID_DOC_NEGATIVE_RESOLUT: TIntegerField;
    Db_PointResultsNAME_DOC_NEGATIVE_RESOLUT: TStringField;
    Pkg_Sz_Price_Req: TOraclePackage;
    Db_DocsListID_SZ_PRICE_REQ: TIntegerField;
    Db_DocsListDOC_HEADER_ID: TIntegerField;
    Db_DocsListSZ_PRICE_REQ_ID: TIntegerField;
    Db_DocsListSZ_NUMBER: TStringField;
    Db_DocsListSZ_DATE: TDateTimeField;
    Db_DocsListSZ_NOTE: TStringField;
    Db_DocsListSZ_DEP_ID: TIntegerField;
    Db_DocsListDEP_CODE: TStringField;
    Db_DocsListDEP_SNAME: TStringField;
    Db_DocsListEMP_FIO: TStringField;
    Db_DocsListI_USER: TStringField;
    Db_DocsListI_DATE: TDateTimeField;
    Db_DocsListU_USER: TStringField;
    Db_DocsListDATE_START_ROUTE: TDateTimeField;
    Db_DocsListDATE_END_ROUTE: TDateTimeField;
    Db_DocsListSZ_DEP_NUMBER: TStringField;
    procedure FormShow(Sender: TObject);
    procedure Btn_SignClick(Sender: TObject);
  private
    { Private declarations }
    FDocHeaderId: Integer;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; DocHeaderId: Integer);
    property DocHeaderId: Integer read FDocHeaderId;
  end;

var
  Form_SzDocSign: TForm_SzDocSign;

implementation

{$R *.dfm}

uses
Udm_main, Sz_Main;

{ TForm_SzDocSign }

procedure TForm_SzDocSign.Btn_SignClick(Sender: TObject);
var
  MessageText: String;
  ButtonSelected: Integer;
  RouteIdToStart: Integer;
begin
  if (Sender=Btn_Cancel)
      and (Mem_Comment.IsEmpty)
  then
  begin
    MessageBox(Handle, 'Укажите причину отказа!', 'Ошибка!', MB_OK  + MB_ICONERROR);
    Exit;
  end;

  if Sender=Btn_Cancel
  then
    MessageText:='Отказать в подписании документа?'
  else if Sender=Btn_Apply
  then
    MessageText:='Подписать документ?';

  with CreateMessageDialog( MessageText, mtConfirmation, mbYesNo)
  do
  try
    TButton( FindComponent( 'Yes' ) ).Caption := 'Да';
    TButton( FindComponent( 'No' ) ).Caption := 'Нет';
    case ShowModal
    of
      mrYes: ButtonSelected := mrYes;
      mrNo: ButtonSelected := mrNo;
    end;
  finally
    Free;
  end;

  if ButtonSelected=mrYes
  then
  begin
    if not Db_DocsListDATE_START_ROUTE.IsNull
    then
    begin
      Db_SingPoints.Edit;
      if Sender=Btn_Apply
      then
        Db_SingPointsSTP_DOC_RESOLUTION_RESULT_ID.AsInteger := Db_PointResultsID_DOC_POSITIVE_RESOLUT.AsInteger
      else if Sender=Btn_Cancel
      then
        Db_SingPointsSTP_DOC_RESOLUTION_RESULT_ID.AsInteger := Db_PointResultsID_DOC_NEGATIVE_RESOLUT.AsInteger;
      Db_SingPoints.Post;

      if Db_SingPoints.UpdatesPending
      then
      begin
        Try
          Db_SingPoints.Session.ApplyUpdates( [Db_SingPoints], True );
        except
         on E : Exception
         do
           ShowMessage(E.ClassName+' '+E.Message);
        End;
      end;
    end
    else if (Db_DocsListDATE_START_ROUTE.IsNull)
             and ((Db_DocsListI_USER.AsString=DM_Main.Session.LogonUsername)
                  or(Pkg_Sz_Price_Req.CallIntegerFunction('f_CheckDocAccess', [Db_DocsListDOC_HEADER_ID.AsInteger,'full'])=1) )
    then
      DM_Main.P_Oracle('mrk.pkg_sz_price_req.p_startroute(indocheaderid => :indocheaderid)',[Db_DocsListDOC_HEADER_ID.AsInteger]);
    Self.ModalResult := mrOk;
  end;
end;

constructor TForm_SzDocSign.Create(AOwner: TComponent; DocHeaderId: Integer);
begin
  inherited Create(AOwner);
  FDocHeaderId:=DocHeaderId;
end;

procedure TForm_SzDocSign.FormShow(Sender: TObject);
begin
  if Db_SingPoints.RecordCount>1 then Lcb_SingPoint.Visible:=True
  else Lcb_SingPoint.Visible:=False;

  if Db_PointResultsNAME_DOC_POSITIVE_RESOLUT.IsNull then Btn_Apply.Caption:='Подписать'
  else Btn_Apply.Caption:=Db_PointResultsNAME_DOC_POSITIVE_RESOLUT.AsString;

  if Db_PointResultsNAME_DOC_NEGATIVE_RESOLUT.IsNull then Btn_Cancel.Visible:=False
  else Btn_Cancel.Caption:=Db_PointResultsNAME_DOC_NEGATIVE_RESOLUT.AsString;

  Self.Caption:= Format('Подписание докумета №%s от %s', [Db_DocsListSZ_DEP_NUMBER.AsString, Db_DocsListSZ_DATE.AsString]);
end;

end.
