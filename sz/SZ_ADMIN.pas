unit SZ_ADMIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SZ_VARIABLES, Vcl.StdCtrls;

type
  TForm23 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;

implementation

{$R *.dfm}

procedure TForm23.Button1Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserType','1');
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserOtdel','33');
  form23.close;
end;

procedure TForm23.Button2Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserType','2');
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserOtdel','33');
  form23.close;
end;

procedure TForm23.Button3Click(Sender: TObject);
begin
   SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserType','4');
   SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserOtdel','33');
   form23.close;
end;

procedure TForm23.Button4Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserType','3');
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserOtdel','33');
  form23.close;
end;

procedure TForm23.Button5Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserType','2');
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserOtdel','38');
  form23.close;
end;

procedure TForm23.Button6Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserType','5');
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserOtdel','33');
  form23.close;
end;

procedure TForm23.Button7Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserType','6');
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserOtdel','33');
  form23.close;
end;

procedure TForm23.Button8Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserType','7');
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminUserOtdel','33');
  form23.close;
end;

end.
