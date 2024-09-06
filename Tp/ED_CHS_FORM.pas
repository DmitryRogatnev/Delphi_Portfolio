unit ED_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, VAR_FORM, Oracle;

type
  TForm51 = class(TForm)
    DBGridEh1: TDBGridEh;
    ED_DB: TOracleDataSet;
    ED_DATA: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    ED_DBID: TFloatField;
    ED_DBED: TStringField;
    ED_DBED_NAIM: TStringField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Type Edizm = Record
      Edizm_Id :Integer;
      Edizm_Name :String;
      Edizm_Kod :String;
    End;

  /// <summary> Получение инфо материала по ключевому слову</summary>
  ///  <param name="ED"> String; <br/> Ключевое слово </param>
  ///  <returns> Edizm; Record; <br/>  (Edizm_Id, Edizm_Name, Edizm_Kod) </returns>
  function Get_Edizm_Info (ED :string) :Edizm;

  /// <summary> Получение инфо детали по ID</summary>
  ///  <param name="Mat_id"> String; <br/> Id детали </param>
  ///  <returns> Material; Record; <br/>  (Mat_Id, Mat_Name, Mat_Kod) </returns>
  function Get_Edizm_Info_By_Id (Ed_Id :string) :Edizm;
  end;

var
  Form51: TForm51;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  function TForm51.Get_Edizm_Info (ED :string) :Edizm;
  begin
   //Подстановка ключевого слова
    ED_DB.Close;
    ED_DB.SetVariable('ED', ED);
    ED_DB.Open;
    //Если результатов поиска больше 1 - го, то выводится окно выбора
    if ED_DB.RecordCount > 1 then
    begin
      Form51.ShowModal;
      //После закрытия формы выбора, функция передает выбранное значение
      //Выбор в форме осущствляется двойным нажатием, через PopupMenu или нажатием клавиши Enter
      if not ED_DBID.IsNull then
      begin
       Result.Edizm_Id := ED_DBID.AsInteger;
       Result.Edizm_Name := ED_DBED_NAIM.AsString;
       Result.Edizm_Kod := ED_DBED.AsString;
      end
      else
      begin
       Result.Edizm_Kod := ED_DBED.AsString;
      end;
    end
    //Если результат 1, то возвращает краткое наименование
    else
    begin
     if not ED_DBID.IsNull then
      begin
       Result.Edizm_Id := ED_DBID.AsInteger;
       Result.Edizm_Name := ED_DBED_NAIM.AsString;
       Result.Edizm_Kod := ED_DBED.AsString;
      end
      else
      begin
       Result.Edizm_Kod := ED_DBED.AsString;
      end;
    end;
  end;

  //Получение информации о детали по его ID
  function TForm51.Get_Edizm_Info_By_Id (Ed_Id :string) :Edizm;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Ed_Id', otString);
   SimpleSQL.SetVariable('Ed_Id', Ed_Id);
   SimpleSQL.SQL.Add('Select t.Ed, t.Ed_Naim '
                     + 'From Ogt.Spr_Ed t '
                     + 'Where t.Id = :Ed_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Edizm_Kod := SimpleSQL.Fields[0].AsString;
   Result.Edizm_Name := SimpleSQL.Fields[1].AsString;
  end;
{$ENDRegion 'Основные функции формы'}

{$Region 'Выбор значения'}
    //Выбор заключается в закрытии формы на той строке, на которой были произведены следующие действия:
    //Нажатие на "Выбрать"  в PopupMenu
    procedure TForm51.N1Click(Sender: TObject);
    begin
      Form51.DBGridEh1DblClick(nil);
    end;
    //Нажатие на клавишу Enter
    procedure TForm51.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form51.DBGridEh1DblClick(nil);
      end;
    end;
    procedure TForm51.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//Двойное нажатие мыши на выбранное строке
    procedure TForm51.DBGridEh1DblClick(Sender: TObject);
    begin
     form51.Close;
    end;
{$ENDRegion 'Выбор значения'}
end.
