unit PRIM_VTP_OPER_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, OracleData, Vcl.StdCtrls,
  Vcl.Mask, DBCtrlsEh, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TForm48 = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    E_KEYWORD: TDBEditEh;
    DB_PRIM_TEXT: TOracleDataSet;
    DATA_PRIM_TEXT: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DB_PRIM_TEXTPRIM: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure E_KEYWORDChange(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Button_Choose_Pressed :Bool;

  /// <summary> Список уникальных ТТ</summary>
  /// <returns> Tt_Text; String <br/>   </returns>
  function Get_Prim_Text :String;
  end;

var
  Form48: TForm48;

implementation

{$R *.dfm}

procedure TForm48.DBGridEh1DblClick(Sender: TObject);
begin
  Form48.Close;
  Button_Choose_Pressed := True;
end;

procedure TForm48.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then DBGridEh1DblClick(nil);
end;

procedure TForm48.E_KEYWORDChange(Sender: TObject);
begin
  DB_PRIM_TEXT.SetVariable('v_KeyWord', E_KEYWORD.Text);
  if DB_PRIM_TEXT.Active
  then
    DB_PRIM_TEXT.Refresh;
end;

procedure TForm48.FormShow(Sender: TObject);
begin
   E_KEYWORD.Clear;
end;

function TForm48.Get_Prim_Text :String;
  begin
     DB_PRIM_TEXT.Close;
     DB_PRIM_TEXT.Open;
     Form48.ShowModal;
     if Button_Choose_Pressed then
     Begin
       Result := DB_PRIM_TEXTPRIM.AsString;
     End;
  end;

end.
