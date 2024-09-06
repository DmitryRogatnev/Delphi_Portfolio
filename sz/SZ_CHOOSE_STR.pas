unit SZ_CHOOSE_STR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, SZ_VARIABLES,
  Data.DB, OracleData, Oracle;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    SimpleSQL: TOracleDataSet;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
vCount :integer;
begin
  vCount := 0;
   if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('IdOtdel') = 33 then
   begin
    SimpleSQL.Close;
    SimpleSQL.SetVariable('vNum',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
    SimpleSQL.SetVariable('vDate',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'));
    SimpleSQL.SetVariable('ID_STR',Edit1.Text);
    SimpleSQL.SetVariable('vUserID',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'));
    SimpleSQL.SetVariable('vUserType',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserType'));
    SimpleSQL.SQL.Clear;
    SimpleSQL.SQL.Add('select count (*) from mrk.sz_COMMENTARY t WHERE T.SZ_NUMB = :vNum AND T.SZ_DATE = :vDate AND T.SZ_USER_ID = :vUserID AND T.ID_STR = :ID_STR AND T.SZ_TYPE_USER = :vUserType');
    SimpleSQL.ExecSQL;
    SimpleSQL.Open;
    vCount := SimpleSQL.Fields[0].AsInteger;
   end
   else if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('IdOtdel') = 38 then
   begin
    SimpleSQL.Close;
    SimpleSQL.SetVariable('vNum',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
    SimpleSQL.SetVariable('vDate',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'));
    SimpleSQL.SetVariable('ID_STR',StrToInt(Edit1.Text));
    SimpleSQL.SetVariable('vUserID',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'));
    SimpleSQL.SetVariable('vUserType',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserType'));
    SimpleSQL.SQL.Clear;
    SimpleSQL.SQL.Add('select count (*) from mrk.sz_COMMENTARY_SEO t WHERE T.SZ_NUMB = :vNum AND T.SZ_DATE = :vDate AND T.SZ_USER_ID = :vUserID AND T.ID_STR = :ID_STR AND T.SZ_TYPE_USER = :vUserType');
    SimpleSQL.ExecSQL;
    SimpleSQL.Open;
    vCount := SimpleSQL.Fields[0].AsInteger;
   end;
   if vCount <> 0 then
   begin
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('ID_STR', Edit1.Text);
     form3.Close;
   end
   else
   begin
     ShowMessage('Комментария под таким номером не существует!');
   end;

end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  SimpleSQL.DeclareVariable('vNum',otInteger);
  SimpleSQL.DeclareVariable('vDate',otString);
  SimpleSQL.DeclareVariable('ID_STR',otInteger);
  SimpleSQL.DeclareVariable('vUserID',otInteger);
  SimpleSQL.DeclareVariable('vUserType',otInteger);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('ID_STR',otInteger);
  Edit1.Clear;
end;

end.
