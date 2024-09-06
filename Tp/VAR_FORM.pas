unit VAR_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Oracle, Data.DB, OracleData;

type
  TForm2 = class(TForm)
    SYSTEM_VAR_DB: TOracleDataSet;
    OracleSession1: TOracleSession;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
