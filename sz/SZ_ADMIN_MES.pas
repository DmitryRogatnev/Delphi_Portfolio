unit SZ_ADMIN_MES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SZ_VARIABLES, Data.DB, OracleData,
  Vcl.StdCtrls, Oracle, DBGridEh, Vcl.Mask, DBCtrlsEh, DBLookupEh;

type
  TForm31 = class(TForm)
    EMessage: TEdit;
    Button1: TButton;
    Button2: TButton;
    DS_Users: TOracleDataSet;
    OraclePackage2: TOraclePackage;
    OraclePackage1: TOraclePackage;
    USER_LCB: TDBLookupComboboxEh;
    USERS_DATA: TDataSource;
    DS_UsersID: TFloatField;
    DS_UsersFIO: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form31: TForm31;

implementation

{$R *.dfm}

procedure TForm31.Button1Click(Sender: TObject);
begin
  OraclePackage1.CallProcedure('SendMessage', [USER_LCB.KeyValue, 2, EMessage.Text]);
  form31.Close;
end;

procedure TForm31.Button2Click(Sender: TObject);
begin
  form31.Close;
end;

procedure TForm31.FormActivate(Sender: TObject);
var
count,i:integer;
begin
  EMessage.Clear;
  DS_Users.Close;
  DS_Users.Open;
  if  SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('CHOSEN_USER_ID') <> '' then
  begin
    USER_LCB.KeyValue := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('CHOSEN_USER_ID');  
  end;
  
end;

end.
