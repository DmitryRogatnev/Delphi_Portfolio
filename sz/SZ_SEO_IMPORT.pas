unit SZ_SEO_IMPORT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Oracle, OracleData, SZ_CREAT_SEO, SZ_VARIABLES,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.Menus,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TForm19 = class(TForm)
    SZ_ENTER: TOraclePackage;
    SZ_PACKAGE: TOraclePackage;
    SimpleSQL: TOracleDataSet;
    Timer1: TTimer;
    SEO_INFO: TOracleDataSet;
    SEO_INFOSZ_ID: TFloatField;
    SEO_INFOSZ_NUMB: TFloatField;
    SEO_INFOSZ_DATE: TDateTimeField;
    SEO_INFOCONTACT: TStringField;
    SEO_INFOSZ_CONDITION: TFloatField;
    SEO_INFOSZ_ID_CONT: TFloatField;
    SEO_INFOSZ_CONT_Y: TFloatField;
    SEO_INFOSZ_CONT_Y_DATE: TDateTimeField;
    SEO_INFOSZ_FROM_Y: TFloatField;
    SEO_INFOSZ_FROM: TStringField;
    SEO_INFOSZ_FROM_Y_DATE: TDateTimeField;
    SEO_INFOSZ_FROM_ID: TFloatField;
    SEO_INFOSZ_TO_Y: TFloatField;
    SEO_INFOSZ_TO: TStringField;
    SEO_INFOSZ_TO_Y_DATE: TDateTimeField;
    SEO_INFOSZ_TO_ID: TFloatField;
    SEO_INFOSZ_ADD: TStringField;
    SEO_INFOSZ_FREE_FORM_TOP: TStringField;
    SEO_INFOSZ_FREE_FORM: TFloatField;
    SEO_INFOSZ_PRICE_INDF: TFloatField;
    SEO_INFOSTATUS: TStringField;
    SEO_INFOSTATUS_VALUE: TFloatField;
    DS_SEOINFO: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    DBGridEh_OUTP: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

{$R *.dfm}

procedure TForm19.FormShow(Sender: TObject);
begin
 Seo_info.Close;
 seo_info.Open;
 Timer1.Enabled := false;
end;

procedure TForm19.N1Click(Sender: TObject);
var buttonSelected :integer;
begin
buttonSelected := MessageDlg ('Добавить в отчет?', mtConfirmation, mbOkCancel, 5);
  if buttonSelected = mrOk then
  begin
    if Seo_InfoSZ_CONT_Y.AsInteger <> 0 then
      begin
        MessageDlg('Служебная записка уже подписана!', MtError, [mbOk], 1);
      end
      else
      begin
        SZ_PACKAGE.CallProcedure('Copy_OP_SZ_to_SEO_by_ID',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'), SEO_INFOSZ_ID.AsInteger, 2]);
        seo_info.Refresh;
        form19.Close
      end;
  end;
end;

procedure TForm19.N2Click(Sender: TObject);
var buttonSelected :integer;
begin
  buttonSelected := MessageDlg ('Создать отчет?', mtConfirmation, mbOkCancel, 5);
  if buttonSelected = mrOk then
  begin
    SZ_PACKAGE.CallProcedure('Copy_OP_SZ_to_SEO_by_ID',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'), SEO_INFOSZ_ID.AsInteger, 1]);
    SZ_CREAT_SEO.Form9.ShowModal;
    seo_info.Refresh;
    Timer1.Enabled := true;
  end;
end;

procedure TForm19.Timer1Timer(Sender: TObject);
begin
 form19.Close;
end;

end.
