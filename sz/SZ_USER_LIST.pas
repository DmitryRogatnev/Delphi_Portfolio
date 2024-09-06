unit SZ_USER_LIST;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SZ_VARIABLES, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, SZ_ADMIN_MES, Vcl.Menus, Oracle;

type
  TForm38 = class(TForm)
    DBGridEh3: TDBGridEh;
    UsersOnline: TOracleDataSet;
    UsersOnlineFIO: TStringField;
    UsersOnlinePHONE: TStringField;
    UsersOnlineUSER_ONLINE: TFloatField;
    UsersOnlineENTER_DATE: TDateTimeField;
    UsersOnlineUSER_NOTIF: TFloatField;
    UsersOnlineMESSAGE: TStringField;
    UsersOnlineTERMINAL: TStringField;
    UsersOnlineID: TFloatField;
    UsersOnlineSURNAME: TStringField;
    UsersOnlineNAME: TStringField;
    UsersOnlinePATRONYMIC: TStringField;
    UsersOnlineID_TYPE_USERS: TIntegerField;
    UsersOnlineID_TYPE_OTDEL: TIntegerField;
    DS_USERSONLINE: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    OraclePackage1: TOraclePackage;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form38: TForm38;

implementation

{$R *.dfm}
Uses
SZ_Enter;

procedure TForm38.DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not UsersOnline.IsEmpty then //Только если таблица не пуста
    begin
       case UsersOnlineUser_notif.AsInteger of //Если пользователь получил сообщение, но не прочитал (не нажал ОК в диалоговом окне)
          1:  //то цвет фона строки, желтый
           begin
              Background := clLime;
           end;
       end;
    end;
end;

procedure TForm38.FormShow(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('CHOSEN_USER_ID',otString);
  UsersOnline.Close;
  UsersOnline.Open;
end;

procedure TForm38.N1Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('CHOSEN_USER_ID', UsersOnlineID.AsString);
  UsersOnline.Refresh;
  SZ_ADMIN_MES.Form31.ShowModal;
  UsersOnline.Refresh;
end;

procedure TForm38.N2Click(Sender: TObject);
begin
  OraclePackage1.CallProcedure('SendMessage', [1111, 1, '']);
  UsersOnline.Refresh;
end;

procedure TForm38.N3Click(Sender: TObject);
begin
  OraclePackage1.CallProcedure('SendMessage', [1111, 3, '']);
  UsersOnline.Refresh;
end;

procedure TForm38.N4Click(Sender: TObject);
begin
  UsersOnline.Refresh;
end;

procedure TForm38.N5Click(Sender: TObject);
begin
  OraclePackage1.CallProcedure('SendMessage', [UsersOnlineID.AsInteger, 3, '']);
  UsersOnline.Refresh;
end;

end.
