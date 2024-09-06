unit ADMIN_CHS_USER_FOR_APPR_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TForm8 = class(TForm)
    DBGridEh1: TDBGridEh;
    DB_APPR_USERS: TOracleDataSet;
    DATA_APPR_USERS: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DB_APPR_USERSNAME_RAZRAB: TStringField;
    DB_APPR_USERSLNUM: TIntegerField;
    DB_APPR_USERSAPPR_STEP: TStringField;
    DB_APPR_USERSZEX: TStringField;
    DB_APPR_USERSPROF: TStringField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Doc_Id :Integer;
    Button_Choose_Pressed :Bool;

  /// <summary> Получение инфо детали по ключевому слову</summary>
  ///  <param name="DET"> String; <br/> Ключевое слово </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_User_Lnum_For_Appr(v_Doc_Id :Integer) :Integer;
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  procedure TForm8.DBGridEh1DblClick(Sender: TObject);
  begin
    Form8.Close;
    Button_Choose_Pressed := True;
  end;

  procedure TForm8.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  begin
   if Key = VK_RETURN then DBGridEh1DblClick(nil);
  end;

  function TForm8.Get_User_Lnum_For_Appr(v_Doc_Id :Integer) :Integer;
  begin
     DB_APPR_USERS.Close;
     DB_APPR_USERS.SetVariable('v_Doc_Id', v_Doc_Id);
     DB_APPR_USERS.Open;
     Form8.ShowModal;
     if Button_Choose_Pressed then
     Begin
       Result := DB_APPR_USERSLNUM.AsInteger;
     End;
  end;

{$ENDRegion 'Основные функции формы'}

end.
