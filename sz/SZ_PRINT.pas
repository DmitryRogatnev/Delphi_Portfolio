unit SZ_PRINT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, OracleData,
  Oracle, frxClass, frxDBSet, SZ_VARIABLES;

type
  TForm16 = class(TForm)
    frxReport1: TfrxReport;
    frxDB_MAIN: TfrxDBDataset;
    frxDB_NACH: TfrxDBDataset;
    frxDB_USER: TfrxDBDataset;
    SIGN_IMAGES_DATA: TfrxDBDataset;
    frxDBCONTENT: TfrxDBDataset;
    INFO_MAIN: TOracleDataSet;
    DS_NACH: TOracleDataSet;
    DS_USER: TOracleDataSet;
    DB_SIGN_IMAGES: TOracleDataSet;
    Info_Content: TOracleDataSet;
    Timer1: TTimer;
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
    OraclePackage1: TOraclePackage;
    OraclePackage2: TOraclePackage;
    DB_COMM: TOracleDataSet;
    DATA_COMM: TfrxDBDataset;
    DB_SIGN_IMAGESCOPY_SIGN: TBlobField;
    DB_SIGN_IMAGESFROM_SIGN: TBlobField;
    DB_SIGN_IMAGESTO_SIGN: TBlobField;
    DB_SIGN_IMAGESAVTOR_SIGN: TBlobField;
    Info_ContentSZ_NUMB: TFloatField;
    Info_ContentSZ_DATE: TDateTimeField;
    Info_ContentSZ_NAME_OB: TStringField;
    Info_ContentSZ_IBYAL_OB: TStringField;
    Info_ContentID_CONT: TFloatField;
    Info_ContentID_STR: TFloatField;
    Info_ContentSZ_CHECK: TFloatField;
    Info_ContentSZ_CODE_OB: TStringField;
    Info_ContentSZ_ID: TFloatField;
    DB_COMMUSER_TYPE: TStringField;
    DB_COMMRWN: TFloatField;
    DB_COMMAVTOR: TStringField;
    DB_COMMCOMMENT_TEXT: TStringField;
    DB_COMMDATA_COMM: TStringField;
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
    DS_NACHPROF: TStringField;
    DS_NACHFIO: TStringField;
    INFO_MAINSZ_FROM_Y_DATE: TDateTimeField;
    INFO_MAINSZ_TO_Y_DATE: TDateTimeField;
    INFO_MAINSZ_COPY_Y_DATE: TDateTimeField;
    INFO_MAINSZ_CONT_Y_DATE: TDateTimeField;
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
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

procedure TForm16.FormShow(Sender: TObject);
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
  DB_Sign_Images.Close;
  DB_Sign_Images.Open;
  Info_content.Close;
  Info_content.Open;
  Db_Sz_Appr_Steps.Close;
  Db_Sz_Appr_Steps.Open;
  frxReport1.ShowReport();
  Timer1.Enabled := true;
end;

procedure TForm16.Timer1Timer(Sender: TObject);
begin
  Form16.Close;
end;

end.
