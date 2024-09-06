unit SZ_CHS_PRNT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SZ_VARIABLES;

type
  TForm27 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form27: TForm27;

implementation

{$R *.dfm}

procedure TForm27.Button1Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_CHS_PRNT',0);
  form27.Close;
end;

procedure TForm27.Button2Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_CHS_PRNT',1);
  form27.Close;
end;

end.
