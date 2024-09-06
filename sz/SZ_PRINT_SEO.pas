unit SZ_PRINT_SEO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, OracleData,
  Oracle, frxClass, frxDBSet, SZ_VARIABLES;

type
  TForm17 = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset6: TfrxDBDataset;
    DS_USER: TOracleDataSet;
    DS_USERID: TFloatField;
    DS_USERSURNAME: TStringField;
    DS_USERNAME: TStringField;
    DS_USERPATRONYMIC: TStringField;
    DS_USERPASSWORD: TStringField;
    DS_USERID_TYPE_USERS: TIntegerField;
    DS_USERID_TYPE_OTDEL: TIntegerField;
    DS_USERSTATUS: TIntegerField;
    DS_USERHEADS: TIntegerField;
    DS_USERSIGNBMP: TBlobField;
    DS_USERSIGNBMP1: TBlobField;
    DS_USERPHONE: TStringField;
    DS_SZ_IMP: TOracleDataSet;
    DS_SIGN: TOracleDataSet;
    DS_SIGNSIGNBMP: TBlobField;
    Timer1: TTimer;
    OraclePackage1: TOraclePackage;
    OraclePackage2: TOraclePackage;
    Content: TOracleDataSet;
    frx_CONTENT: TfrxDBDataset;
    ContentSZ_NUMB: TFloatField;
    ContentSZ_DATE: TDateTimeField;
    ContentSZ_NAME_OB: TStringField;
    ContentSZ_IBYAL_OB: TStringField;
    ContentSZ_COST_W_NDS: TFloatField;
    ContentSZ_NDS: TFloatField;
    ContentSZ_COST: TFloatField;
    ContentID_CONT: TFloatField;
    ContentID_STR: TFloatField;
    ContentSZ_IMP_NUMB: TFloatField;
    ContentSZ_IMP_DATE: TDateTimeField;
    ContentSZ_CODE_OB: TStringField;
    ContentSZ_DATE_COST: TDateTimeField;
    DB_COMM: TOracleDataSet;
    DB_COMMUSER_TYPE: TStringField;
    DB_COMMRWN: TFloatField;
    DB_COMMAVTOR: TStringField;
    DB_COMMCOMMENT_TEXT: TStringField;
    DB_COMMDATA_COMM: TStringField;
    DATA_COMM: TfrxDBDataset;
    INFO_MAIN: TOracleDataSet;
    frxDB_MAIN: TfrxDBDataset;
    DS_NACH: TOracleDataSet;
    frxDB_NACH: TfrxDBDataset;
    DS_SZ_IMPSZ_IMP_LIST: TStringField;
    DS_NACHPROF: TStringField;
    DS_NACHFIO: TStringField;
    INFO_MAINSZ_ID: TFloatField;
    INFO_MAINSZ_NUMB: TFloatField;
    INFO_MAINSZ_DATE: TDateTimeField;
    INFO_MAINCONTACT: TStringField;
    INFO_MAINSZ_CONDITION: TFloatField;
    INFO_MAINSZ_ID_CONT: TFloatField;
    INFO_MAINSZ_CONT_Y: TFloatField;
    INFO_MAINSZ_CONT_Y_DATE: TDateTimeField;
    INFO_MAINSZ_FROM_Y: TFloatField;
    INFO_MAINSZ_FROM: TStringField;
    INFO_MAINSZ_FROM_Y_DATE: TDateTimeField;
    INFO_MAINSZ_FROM_ID: TFloatField;
    INFO_MAINSZ_TO_Y: TFloatField;
    INFO_MAINSZ_TO: TStringField;
    INFO_MAINSZ_TO_Y_DATE: TDateTimeField;
    INFO_MAINSZ_TO_ID: TFloatField;
    INFO_MAINSZ_ADD: TStringField;
    INFO_MAINSZ_FREE_FORM_TOP: TStringField;
    INFO_MAINSZ_FREE_FORM: TFloatField;
    INFO_MAINSZ_PRICE_INDF: TFloatField;
    INFO_MAINSZ_ASUP_INDF: TFloatField;
    INFO_MAINSZ_DATA_CENY: TDateTimeField;
    INFO_MAINSTATUS: TStringField;
    INFO_MAINSTATUS_VALUE: TFloatField;
    INFO_MAINSZ_DATA_COST: TDateTimeField;
    ContentSZ_ID: TFloatField;
    ContentSZ_IMP_ID: TFloatField;
    ContentID: TFloatField;
    ContentDATE_CHANGE: TDateTimeField;
    ContentNDS_COST: TFloatField;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

procedure TForm17.FormShow(Sender: TObject);
begin
  Info_main.Close;
  Info_main.SetVariable('VID', SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'));
  Info_main.Open;
  DS_SIGN.Close;
  DS_SIGN.Open;
  DB_COMM.Close;
  DB_COMM.Open;
  CONTENT.Close;
  CONTENT.Open;
  DS_USER.Close;
  DS_USER.Open;
  DS_NACH.Close;
  DS_NACH.Open;
  DS_SZ_IMP.Close;
  DS_SZ_IMP.Open;
  frxReport1.ShowReport;
  Timer1.Enabled := true;
end;

procedure TForm17.Timer1Timer(Sender: TObject);
begin
 form17.Close;
end;

end.
