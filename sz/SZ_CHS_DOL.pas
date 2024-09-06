unit SZ_CHS_DOL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SZ_VARIABLES, Data.DB, OracleData,
  Vcl.StdCtrls;

type
  TForm37 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    USERS_DBA: TOracleDataSet;
    USERS_DBAID: TFloatField;
    USERS_DBASURNAME: TStringField;
    USERS_DBANAME: TStringField;
    USERS_DBAPATRONYMIC: TStringField;
    USERS_DBAPASSWORD: TStringField;
    USERS_DBAID_TYPE_USERS: TIntegerField;
    USERS_DBAID_TYPE_OTDEL: TIntegerField;
    USERS_DBASTATUS: TIntegerField;
    USERS_DBAHEADS: TIntegerField;
    USERS_DBASIGNBMP: TBlobField;
    USERS_DBASIGNBMP1: TBlobField;
    USERS_DBAPHONE: TStringField;
    USERS_DBAUSER_ONLINE: TFloatField;
    USERS_DBAENTER_DATE: TDateTimeField;
    USERS_DBAUSER_ADMIN: TFloatField;
    USERS_DBAAUTO_LOAD: TFloatField;
    USERS_DBAID_TYPE_HEADS: TIntegerField;
    USERS_DBAID_MF: TIntegerField;
    USERS_DBAID_SR_SCL: TIntegerField;
    USERS_DBAID_TYPE_DOP: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form37: TForm37;

implementation

{$R *.dfm}

procedure TForm37.Button1Click(Sender: TObject);
begin
 SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('UserType', USERS_DBAID_TYPE_USERS.AsInteger);
 form37.Close;
end;

procedure TForm37.Button2Click(Sender: TObject);
begin
 SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('UserType', USERS_DBAID_TYPE_DOP.AsInteger);
 form37.Close;
end;

procedure TForm37.FormActivate(Sender: TObject);
var
vdolzh, votdel, vdolzh2 :string;
begin
 USERS_DBA.Close;
 USERS_DBA.Open;
 USERS_DBA.SetVariable('vId', SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'));
 USERS_DBA.Refresh;
 case USERS_DBAID_TYPE_OTDEL.AsInteger of
  33:
    begin
      votdel := 'отдела продаж';
    end;
  38:
    begin
      votdel := 'СЭО';
    end;
  1:
    begin
      votdel := 'АСУПиИТ';
    end;
  40:
    begin
      votdel := 'ОСТД';
    end;
  34:
    begin
      votdel := 'ОПиПР';
    end;
  32:
    begin
      votdel := 'отдела маркетинга';
    end;
 end;

 case USERS_DBAID_TYPE_USERS.AsInteger of
  1,3,4,5:
    begin
      vdolzh := 'Сотрудник';
    end;
  2:
    begin
      vdolzh := 'Подписант';
    end;
 end;

  case USERS_DBAID_TYPE_DOP.AsInteger of
  1,3,4,5:
    begin
      vdolzh2 := 'Сотрудник';
    end;
  2:
    begin
      vdolzh2 := 'Подписант';
    end;
 end;
   Button1.Caption := vdolzh + ' ' +  votdel;
   Button2.Caption := vdolzh2 + ' ' +  votdel;
end;

end.
