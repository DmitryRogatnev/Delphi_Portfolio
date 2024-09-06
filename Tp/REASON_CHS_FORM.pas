unit REASON_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Oracle, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    DBGridEh1: TDBGridEh;
    SimpleSQL: TOracleDataSet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    DATA_REASONS: TDataSource;
    DB_REASONS: TOracleDataSet;
    DB_REASONSREASON: TStringField;
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
  function Get_Reason :String;
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  procedure TForm6.DBGridEh1DblClick(Sender: TObject);
  begin
    Form6.Close;
    Button_Choose_Pressed := True;
  end;

  procedure TForm6.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  begin
   if Key = VK_RETURN then DBGridEh1DblClick(nil);
  end;

  procedure TForm6.E_KEYWORDChange(Sender: TObject);
  begin
    DB_REASONS.SetVariable('v_KeyWord', E_KEYWORD.Text);
    if DB_REASONS.Active
    then
      DB_REASONS.Refresh;
  end;

  procedure TForm6.FormShow(Sender: TObject);
  begin
    E_KEYWORD.Clear;
  end;

function TForm6.Get_Reason :String;
  begin
     DB_REASONS.Close;
     DB_REASONS.Open;
     Form6.ShowModal;
     if Button_Choose_Pressed then
     Begin
       Result := DB_REASONSREASON.AsString;
     End;
  end;

{$ENDRegion 'Основные функции формы'}


end.
