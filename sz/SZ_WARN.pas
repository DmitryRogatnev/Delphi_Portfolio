unit SZ_WARN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, SZ_VARIABLES,
  Data.DB, OracleData;

type
  TForm21 = class(TForm)
    MWarnINFO: TRichEdit;
    WARN_INFO: TOracleDataSet;
    WARN_INFOSZ_NAME_OB: TStringField;
    WARN_INFOSZ_IBYAL_OB: TStringField;
    WARN_INFOSZ_NUMB: TFloatField;
    WARN_INFOSZ_DATE: TStringField;
    WARN_INFOSZ_CONTACT: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure Close_butClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

{$R *.dfm}

procedure TForm21.Close_butClick(Sender: TObject);
begin
 Form21.Close;
end;

procedure TForm21.FormActivate(Sender: TObject);
var
i :integer;
begin
  Warn_INFO.Close;
  Warn_INFO.Open;
  MWarnINFO.Clear;
  for i := 1  to Warn_INFO.RecordCount do
  begin
    MWarnINFO.SelAttributes.Color := clWindowText;
    MWarnINFO.SelAttributes.Height := 11;
    MWarnINFO.Lines.Add(IntToStr(i) + '.' + ' '
    + Warn_INFO.FieldByName('SZ_NAME_OB').AsString + ' '
    + Warn_INFO.FieldByName('SZ_IBYAL_OB').AsString + ' '
    + 'уже имеетс€ в с/з є' + Warn_INFO.FieldByName('SZ_NUMB').AsString + ' ' + 'от'
    + ' '+ Warn_INFO.FieldByName('SZ_DATE').AsString + ' ' +  '('+ '»сп.' + ' '  + Warn_INFO.FieldByName('SZ_CONTACT').AsString + ')');
    Warn_INFO.Next;
  end;

end;

end.
