unit SZ_VARIABLES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, OracleData, Oracle,
  Vcl.ExtCtrls;

type
  TForm20 = class(TForm)
    OracleDataSet1: TOracleDataSet;
    OracleSession1: TOracleSession;
    procedure FormActivate(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation

{$R *.dfm}

procedure TForm20.FormActivate(Sender: TObject);
begin
OracleDataSet1.Close;
OracleDataSet1.Open;
end;

procedure TForm20.TrayIcon1Click(Sender: TObject);
begin
  form20.Visible := true;
  form20.WindowState := wsNormal;
end;

end.
