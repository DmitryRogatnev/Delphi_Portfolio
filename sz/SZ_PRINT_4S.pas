unit SZ_PRINT_4S;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Data.DB, frxDBSet, OracleData,SZ_VARIABLES,
  Vcl.ExtCtrls, Oracle;

type
  TForm28 = class(TForm)
    Timer1: TTimer;
    OraclePackage1: TOraclePackage;
    OraclePackage2: TOraclePackage;
    frxReport1: TfrxReport;
    DB_COMM: TOracleDataSet;
    DB_COMMUSER_TYPE: TStringField;
    DB_COMMRWN: TFloatField;
    DB_COMMAVTOR: TStringField;
    DB_COMMCOMMENT_TEXT: TStringField;
    DB_COMMDATA_COMM: TStringField;
    DATA_COMM: TfrxDBDataset;
    frxDB_MAIN: TfrxDBDataset;
    INFO_MAIN: TOracleDataSet;
    INFO_MAINSZ_ID: TFloatField;
    INFO_MAINSZ_NUMB: TFloatField;
    INFO_MAINSZ_DATE: TDateTimeField;
    INFO_MAINCONTACT: TStringField;
    INFO_MAINSZ_CONDITION: TFloatField;
    INFO_MAINSZ_KR: TFloatField;
    INFO_MAINSZ_TEMA: TStringField;
    INFO_MAINSZ_ID_CONT: TFloatField;
    INFO_MAINSZ_FROM: TStringField;
    INFO_MAINSZ_TO: TStringField;
    INFO_MAINSZ_COPY: TStringField;
    INFO_MAINSTATUS: TStringField;
    INFO_MAINSZ_SEO_NUMB: TFloatField;
    INFO_MAINSZ_SEO_DATE: TDateTimeField;
    INFO_MAINSZ_FROM_ID: TFloatField;
    INFO_MAINSZ_FROM_Y_DATE: TDateTimeField;
    INFO_MAINSZ_TO_Y_DATE: TDateTimeField;
    INFO_MAINSZ_COPY_Y_DATE: TDateTimeField;
    INFO_MAINSZ_CONT_Y_DATE: TDateTimeField;
    DS_NACH: TOracleDataSet;
    DS_NACHPROF: TStringField;
    DS_NACHFIO: TStringField;
    frxDB_NACH: TfrxDBDataset;
    frxDB_USER: TfrxDBDataset;
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
    Info_Content: TOracleDataSet;
    Info_ContentSZ_NUMB: TFloatField;
    Info_ContentSZ_DATE: TDateTimeField;
    Info_ContentSZ_NAME_OB: TStringField;
    Info_ContentSZ_IBYAL_OB: TStringField;
    Info_ContentID_CONT: TFloatField;
    Info_ContentID_STR: TFloatField;
    Info_ContentSZ_CHECK: TFloatField;
    Info_ContentSZ_CODE_OB: TStringField;
    Info_ContentSZ_ID: TFloatField;
    frxDBCONTENT: TfrxDBDataset;
    Db_Sz_Appr_Steps: TOracleDataSet;
    Data_Sz_Appr_Steps: TfrxDBDataset;
    Info_ContentDATE_CHANGE: TDateTimeField;
    Info_ContentID_POS: TFloatField;
    Info_ContentUSER_ID_INS: TStringField;
    Info_ContentUSER_ID_COR: TStringField;
    Info_ContentDATE_INS: TDateTimeField;
    Info_ContentEMP_ID_INS: TFloatField;
    Info_ContentEMP_ID_COR: TFloatField;
    Info_ContentSZ_CHECKFLAG: TStringField;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form28: TForm28;

implementation

{$R *.dfm}

procedure TForm28.FormShow(Sender: TObject);
begin
  Info_main.Close;
  Info_main.SetVariable('VID', SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'));
  Info_main.Open;
  DB_COMM.Close;
  DB_COMM.Open;
  DS_NACH.Close;
  DS_NACH.Open;
  DS_User.Close;
  DS_User.Open;
  Info_content.Close;
  Info_content.Open;
  frxReport1.ShowReport();
  Timer1.Enabled := true;
end;

procedure TForm28.Timer1Timer(Sender: TObject);
begin
  Form28.Close;
end;

end.
