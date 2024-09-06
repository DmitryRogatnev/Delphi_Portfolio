unit TT_TEXT_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  Vcl.ExtCtrls;

type
  TForm20 = class(TForm)
    DBGridEh1: TDBGridEh;
    DB_TT_TEXT: TOracleDataSet;
    DATA_TT_TEXT: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DB_TT_TEXTTT: TStringField;
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
  function Get_TT_Text :String;
  end;

var
  Form20: TForm20;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  procedure TForm20.DBGridEh1DblClick(Sender: TObject);
  begin
    Form20.Close;
    Button_Choose_Pressed := True;
  end;

procedure TForm20.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  begin
   if Key = VK_RETURN then DBGridEh1DblClick(nil);
  end;

  procedure TForm20.E_KEYWORDChange(Sender: TObject);
  begin
    DB_TT_TEXT.SetVariable('v_KeyWord', E_KEYWORD.Text);
    if DB_TT_TEXT.Active
    then
      DB_TT_TEXT.Refresh;
  end;

  procedure TForm20.FormShow(Sender: TObject);
  begin
   E_KEYWORD.Clear;
  end;

function TForm20.Get_TT_Text :String;
  begin
     DB_TT_TEXT.Close;
     DB_TT_TEXT.Open;
     Form20.ShowModal;
     if Button_Choose_Pressed then
     Begin
       Result := DB_TT_TEXTTT.AsString;
     End;
  end;

{$ENDRegion 'Основные функции формы'}

end.
