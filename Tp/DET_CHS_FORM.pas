unit DET_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, VAR_FORM, Oracle;

type
  TForm49 = class(TForm)
    DBGridEh1: TDBGridEh;
    DETAILS_DB: TOracleDataSet;
    DETAILS_DATA: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DETAILS_DBDET: TStringField;
    DETAILS_DBID: TFloatField;
    DETAILS_DBND: TStringField;
    DETAILS_DBMAR: TStringField;
    DETAILS_DBKODD: TStringField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Button_Choose_Pressed :Bool;

    Type Detail = Record
      Det_Id :Integer;
      Det_Num :String;
      Det_Name :String;
      Det_Mar :String;
      Det_Kd: String;
    End;

  /// <summary> Получение инфо детали по ключевому слову</summary>
  ///  <param name="DET"> String; <br/> Ключевое слово </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Det (DET :string) :Detail;

  /// <summary> Получение инфо детали по ID</summary>
  ///  <param name="Det_id"> String; <br/> Id детали </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Det_Info_By_Id (Det_Id :string) :Detail;
  end;

var
  Form49: TForm49;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  function TForm49.Get_Det (DET :string) :Detail;
  begin
   //Подстановка ключевого слова
    DETAILS_DB.Close;
    DETAILS_DB.SetVariable('DET', DET);
    DETAILS_DB.Open;
    v_Button_Choose_Pressed := False;
    //Если результатов поиска больше 1 - го, то выводится окно выбора
    if DETAILS_DB.RecordCount > 1 then
    begin
      Form49.ShowModal;
      if v_Button_Choose_Pressed then
      Begin
        //После закрытия формы выбора, функция передает выбранное значение
        //Выбор в форме осущствляется двойным нажатием, через PopupMenu или нажатием клавиши Enter
        if not DETAILS_DBDET.IsNull then
        begin
          Result.Det_Id := DETAILS_DBID.AsInteger;
          Result.Det_Num := DETAILS_DBDET.AsString;
          Result.Det_Name := DETAILS_DBND.AsString;
          Result.Det_Mar := DETAILS_DBMAR.AsString;
          Result.Det_Kd := DETAILS_DBKODD.AsString;
        end
        else
        begin
          Result.Det_Num := '';
        end;
      End;
    end
    //Если результат 1, то возвращает краткое наименование
    else
    begin
     if not DETAILS_DBDET.IsNull then
      begin
        Result.Det_Id := DETAILS_DBID.AsInteger;
        Result.Det_Num := DETAILS_DBDET.AsString;
        Result.Det_Name := DETAILS_DBND.AsString;
        Result.Det_Mar := DETAILS_DBMAR.AsString;
        Result.Det_Kd := DETAILS_DBKODD.AsString;
      end
      else
      begin
        Result.Det_Num := '';
      end;
    end;
  end;

  //Получение информации о детали по его ID
  function TForm49.Get_Det_Info_By_Id(Det_Id: string) :Detail;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Det_Id', otString);
   SimpleSQL.SetVariable('Det_Id', Det_Id);
   SimpleSQL.SQL.Add('Select t.Det, t.Nd, t.Mar, t.Kodd '
                     + 'From Ogt.Spr_Det t '
                     + 'Where t.Id = :Det_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Det_Num := SimpleSQL.Fields[0].AsString;
   Result.Det_Name := SimpleSQL.Fields[1].AsString;
   Result.Det_Mar := SimpleSQL.Fields[2].AsString;
   Result.Det_Kd := SimpleSQL.Fields[3].AsString;
  end;
{$ENDRegion 'Основные функции формы'}

{$Region 'Выбор значения'}
    //Выбор заключается в закрытии формы на той строке, на которой были произведены следующие действия:
    //Нажатие на "Выбрать"  в PopupMenu
    procedure TForm49.N1Click(Sender: TObject);
    begin
      Form49.DBGridEh1DblClick(nil);
    end;
    //Нажатие на клавишу Enter
    procedure TForm49.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form49.DBGridEh1DblClick(nil);
      end;
    end;
  procedure TForm49.FormShow(Sender: TObject);
  begin
    DBGridEh1.SearchPanel.SearchingText := '';
  end;

//Двойное нажатие мыши на выбранное строке
    procedure TForm49.DBGridEh1DblClick(Sender: TObject);
    begin
     v_Button_Choose_Pressed := True;
     form49.Close;
    end;
{$ENDRegion 'Выбор значения'}

end.
