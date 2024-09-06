unit PER_TXT_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Menus, OracleData, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  Vcl.ExtCtrls;

type
  TForm17 = class(TForm)
    SimpleSQL: TOracleDataSet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    DATA_PER_TEXT: TDataSource;
    DB_PER_TEXT: TOracleDataSet;
    DBGridEh1: TDBGridEh;
    DB_PER_TEXTPER: TStringField;
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

  /// <summary> Получение инфо детали по ключевому слову</summary>
  ///  <param name="DET"> String; <br/> Ключевое слово </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Per_Text( Oper_Id: Integer ) :String;
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  procedure TForm17.DBGridEh1DblClick(Sender: TObject);
  begin
    Form17.Close;
    Button_Choose_Pressed := True;
  end;

  procedure TForm17.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  begin
   if Key = VK_RETURN then DBGridEh1DblClick(nil);
  end;

  procedure TForm17.E_KEYWORDChange(Sender: TObject);
  begin
    DB_PER_TEXT.SetVariable('v_KeyWord', E_KEYWORD.Text);
    if DB_PER_TEXT.Active
    then
      DB_PER_TEXT.Refresh;
  end;

  procedure TForm17.FormShow(Sender: TObject);
  begin
   E_KEYWORD.Clear;
  end;

function TForm17.Get_Per_Text( Oper_Id: Integer) :String;
  begin
     DB_PER_TEXT.Close;
     DB_PER_TEXT.SetVariable( 'v_Oper_Id', Oper_Id );
     DB_PER_TEXT.Open;
     Form17.ShowModal;
     if Button_Choose_Pressed then
     Begin
       Result := DB_PER_TEXTPER.AsString;
     End;
  end;

{$ENDRegion 'Основные функции формы'}

end.
