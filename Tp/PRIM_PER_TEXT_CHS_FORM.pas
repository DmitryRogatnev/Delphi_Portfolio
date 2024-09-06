unit PRIM_PER_TEXT_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  Vcl.ExtCtrls;

type
  TForm24 = class(TForm)
    DBGridEh1: TDBGridEh;
    DB_PRIM_TEXT: TOracleDataSet;
    DB_PRIM_TEXTPRIM: TStringField;
    DATA_PRIM_TEXT: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    Panel1: TPanel;
    E_KEYWORD: TDBEditEh;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure E_KEYWORDChange(Sender: TObject);
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
  Form24: TForm24;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  procedure TForm24.DBGridEh1DblClick(Sender: TObject);
  begin
    Form24.Close;
    Button_Choose_Pressed := True;
  end;

  procedure TForm24.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  begin
   if Key = VK_RETURN then DBGridEh1DblClick(nil);
  end;

  procedure TForm24.E_KEYWORDChange(Sender: TObject);
  begin
    DB_PRIM_TEXT.SetVariable('v_KeyWord', E_KEYWORD.Text);
    if DB_PRIM_TEXT.Active
    then
      DB_PRIM_TEXT.Refresh;
  end;

  procedure TForm24.FormShow(Sender: TObject);
  begin
   E_KEYWORD.Clear;
  end;

function TForm24.Get_Prim_Text :String;
  begin
     DB_PRIM_TEXT.Close;
     DB_PRIM_TEXT.Open;
     Form24.ShowModal;
     if Button_Choose_Pressed then
     Begin
       Result := DB_PRIM_TEXTPRIM.AsString;
     End;
  end;

{$ENDRegion 'Основные функции формы'}

end.
