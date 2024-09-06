unit Tp_Add_Sym_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls;

type
  TForm_Add_Sym = class(TForm)
    ListView1: TListView;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure ListView1DblClick(Sender: TObject);
    procedure ListView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Button_Choose_Pressed :Bool;

  /// <summary> Получение инфо детали по ключевому слову</summary>
  ///  <param name="DET"> String; <br/> Ключевое слово </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Spec_Symbol :String;
  end;

var
  Form_Add_Sym: TForm_Add_Sym;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  procedure TForm_Add_Sym.ListView1DblClick(Sender: TObject);
  begin
    Self.Close;
    Button_Choose_Pressed := True;
  end;

  procedure TForm_Add_Sym.ListView1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  begin
   if Key = VK_RETURN then ListView1DblClick(nil);
  end;

  function TForm_Add_Sym.Get_Spec_Symbol :String;
  var
  i :Integer;
  begin
    for I := 32 to 255 do
    ListView1.Items.Add.Caption := Char(I);
    Self.ShowModal;
    if Button_Choose_Pressed then
    Begin
      Result := ListView1.ItemFocused.Caption;
    End;
  end;

{$ENDRegion 'Основные функции формы'}
end.
