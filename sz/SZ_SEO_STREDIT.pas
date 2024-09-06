unit SZ_SEO_STREDIT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SZ_VARIABLES, Oracle;

type
  TForm35 = class(TForm)
    EName: TEdit;
    ENom: TEdit;
    ECost: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    OraclePackage1: TOraclePackage;
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form35: TForm35;

implementation

{$R *.dfm}

procedure TForm35.Button1Click(Sender: TObject);
var buttonSelected :integer;
begin
buttonSelected := MessageDlg ('Сохранить?', mtConfirmation, mbOkCancel, 5);
  if buttonSelected = mrOk then
  begin
   OraclePackage1.CallProcedure('EditSZSTR',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'), SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'), SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID_STR'),EName.Text, ENom.Text, StrToInt(ECost.Text)]);
   form35.Close;
  end;
end;

procedure TForm35.Button2Click(Sender: TObject);
begin
  form35.Close;
end;

procedure TForm35.FormActivate(Sender: TObject);
begin
  Form35.Caption := 'Редактирование строки № ' + IntToStr(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID_STR')) + ' служебной записки № ' +  IntToStr(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB')) + ' от ' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE');
  EName.Text := OraclePackage1.CallStringFunction('ReturnSZSTR',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'), SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'), SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID_STR'), 1]);
  ENom.Text := OraclePackage1.CallStringFunction('ReturnSZSTR',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'), SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'), SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID_STR'), 2]);
  ECost.Text := OraclePackage1.CallStringFunction('ReturnSZSTR',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'), SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'), SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID_STR'), 3]);
end;

end.
