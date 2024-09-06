unit SZ_ADD_OBR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, OracleData,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, SZ_VARIABLES, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh;

type
  TForm36 = class(TForm)
    SZ_CONTENT_SEO: TOracleDataSet;
    DS_CONTENT_SEO: TDataSource;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    DBGridEh_Main: TDBGridEh;
    SZ_CONTENT_SEOKD: TStringField;
    SZ_CONTENT_SEONOM: TStringField;
    SZ_CONTENT_SEONAIM: TStringField;
    SZ_CONTENT_SEODTKOR: TDateTimeField;
    SZ_CONTENT_SEOSZ_SEO: TStringField;
    SZ_CONTENT_SEOSZ_SEO_ID: TFloatField;
    SZ_CONTENT_SEOCENA: TFloatField;
    SZ_CONTENT_SEOCENA_DATE_END: TStringField;
    SZ_CONTENT_SEOSZ_OP: TStringField;
    SZ_CONTENT_SEOSZ_OP_ID: TFloatField;
    SZ_CONTENT_SEONEW_NOM: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form36: TForm36;

implementation

{$R *.dfm}

procedure TForm36.Button1Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_NAME_OBR',SZ_CONTENT_SEONAIM.AsString);
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_NOMER_OBR',SZ_CONTENT_SEONEW_NOM.AsString);
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_KD_OBR',SZ_CONTENT_SEOKD.AsString);
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ADD_OBR',1);
  form36.Close;
end;

procedure TForm36.Button2Click(Sender: TObject);
begin
 form36.Close;
end;

procedure TForm36.Edit1Change(Sender: TObject);
begin
  if SZ_CONTENT_SEO.Active then
  begin
     SZ_CONTENT_SEO.SetVariable('vNAIM',Edit1.Text);
     SZ_CONTENT_SEO.Refresh;
  end;
end;

procedure TForm36.Edit2Change(Sender: TObject);
begin
  if SZ_CONTENT_SEO.Active then
     begin
       SZ_CONTENT_SEO.SetVariable('vNOM',Edit2.Text);
       SZ_CONTENT_SEO.Refresh;
     end;
end;

procedure TForm36.Edit3Change(Sender: TObject);
begin
  if SZ_CONTENT_SEO.Active then
     begin
       SZ_CONTENT_SEO.SetVariable('vKOD',Edit3.Text);
       SZ_CONTENT_SEO.Refresh;
     end;
end;

procedure TForm36.FormActivate(Sender: TObject);
begin
 SZ_CONTENT_SEO.Close;
 Edit1.Clear;
 Edit2.Clear;
 Edit3.Clear;
 SZ_CONTENT_SEO.ClearVariables;
 SZ_CONTENT_SEO.Open;
end;

end.
