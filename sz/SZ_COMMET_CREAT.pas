unit SZ_COMMET_CREAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, SZ_VARIABLES,
  Oracle;

type
  TForm4 = class(TForm)
    Panel3: TPanel;
    EComment: TEdit;
    OraclePackage1: TOraclePackage;
    Vazhn_Check: TCheckBox;
    Close_but: TButton;
    Save_but: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Close_butClick(Sender: TObject);
    procedure Save_butClick(Sender: TObject);
    procedure Vazhn_CheckClick(Sender: TObject);
  private
    { Private declarations }
    v_vazhn :integer;
  public
    { Public declarations }
     v_otdel :integer;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
uses
Sz_Commet_View, SZ_ENTER;

procedure TForm4.Close_butClick(Sender: TObject);
begin
  form4.close;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  Vazhn_Check.Checked := false;
  v_vazhn := 0;
  EComment.Clear;
end;

procedure TForm4.Save_butClick(Sender: TObject);
var buttonSelected :integer;
varDate :string;
begin
  varDate := DateTimeToStr(now());
  buttonSelected := MessageDlg ('Добавить комментарий?', mtConfirmation, mbOkCancel, 0);
  if buttonSelected = mrOk then
  begin
    OraclePackage1.CallProcedure('Add_Comment_by_id',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'), EComment.Text, v_otdel, SZ_ENTER.Form1.User_Id, v_vazhn]);
  end;
 form4.Close;
end;

  procedure TForm4.Vazhn_CheckClick(Sender: TObject);
  begin
    if Vazhn_Check.Checked then v_vazhn := 1 else v_vazhn := 0;
  end;

end.
