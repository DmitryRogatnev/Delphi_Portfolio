unit SZ_USERS_4_SIGN_ADMIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SZ_VARIABLES, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Menus;

type
  TForm39 = class(TForm)
    DBGridEh1: TDBGridEh;
    SZ_USERS: TOracleDataSet;
    SZ_USERS_DATA: TDataSource;
    SZ_USERSFIO: TStringField;
    SZ_USERSPROF: TStringField;
    SZ_USERSID: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_user_type :integer;
    v_ceh :string;
    User_id :integer;
  end;

var
  Form39: TForm39;

implementation

{$R *.dfm}

procedure TForm39.DBGridEh1DblClick(Sender: TObject);
begin
  User_id := SZ_USERSID.AsInteger;
  Form39.Close;
end;

procedure TForm39.FormShow(Sender: TObject);
begin
 SZ_USERS.Close;
 SZ_USERS.SetVariable('v_user_type', v_user_type);
 SZ_USERS.SetVariable('v_ceh', v_ceh);
 SZ_USERS.Open;
end;

end.
