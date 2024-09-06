unit SZ_NAMECHS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, SZ_VARIABLES,
  OracleData, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm24 = class(TForm)
    DBGrid_MainSZ: TDBGrid;
    DS_NOM: TOracleDataSet;
    DS_NOMKD: TStringField;
    DS_NOMNOM: TStringField;
    DS_NOMNAIM: TStringField;
    DS_NOMDTKOR: TDateTimeField;
    DS_NOMPRIMEN: TStringField;
    DS_NOMNEW_NOM: TStringField;
    DS_NOMMDV: TStringField;
    DS_NOMPRU: TStringField;
    DS_NOMKDZAM: TStringField;
    DS_NOMNOMZAM: TStringField;
    DS_NOMIZD_GR: TStringField;
    DS_NOMPR_IZD: TStringField;
    DS_NOMCOMENT: TStringField;
    DS_NOMNAME_ETIK: TStringField;
    DS_NOMSNPR: TIntegerField;
    DS_NOMID_OGT: TFloatField;
    DS_NOMPROC: TFloatField;
    DS_NOMPR_EL: TStringField;
    DS_INFO: TDataSource;
    Panel2: TPanel;
    Save_but: TButton;
    Close_but: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Save_butClick(Sender: TObject);
    procedure Close_butClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;

implementation

{$R *.dfm}

procedure TForm24.Close_butClick(Sender: TObject);
begin
 form24.Close
end;


procedure TForm24.FormActivate(Sender: TObject);
begin
  form24.Caption := 'Выбор позиции № ';
  form24.Caption := form24.Caption + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('POSITION_NUM');
  DS_NOM.Close;
  DS_NOM.SetVariable('vNOM',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('OB_WNOM'));
  DS_NOM.Open;
end;

procedure TForm24.Save_butClick(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('OB_NAME', DS_NOM.FieldByName('NAIM').AsString);
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('OB_KOD', DS_NOM.FieldByName('KD').AsString);
  form24.Close;
end;

end.
