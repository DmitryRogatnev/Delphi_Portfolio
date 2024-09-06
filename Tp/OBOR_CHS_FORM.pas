unit OBOR_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Oracle, VAR_FORM;

type
  TForm14 = class(TForm)
    DBGridEh1: TDBGridEh;
    DB_OBOR: TOracleDataSet;
    DATA_OBOR: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DB_OBOROBORID: TFloatField;
    DB_OBOROBOR: TStringField;
    DB_OBORCEH: TStringField;
    DB_OBORKOL: TIntegerField;
    DB_OBORPR: TIntegerField;
    DB_OBORUCH: TStringField;
    DB_OBORCEH_KOD: TStringField;
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

    Type Equipment = Record
      Equipment_Id :Integer;
      Equipment_Name :String;
      Equipment_Mark :String;
    End;

  /// <summary> Получение инфо материала по ключевому слову</summary>
  ///  <param name="TTP"> String; <br/> Ключевое слово </param>
  ///  <returns> Equipment; Record; <br/>  (Equipment_Id, Equipment_Name, Equipment_Mark) </returns>
  function Get_Equipment_Info (OBOR: String; Ceh: String) :Equipment;

  /// <summary> Получение инфо детали по ID</summary>
  ///  <param name="OBOR_id"> String; <br/> Id детали </param>
  ///  <returns> Equipment; Record; <br/>  (Equipment_Id, Equipment_Name, Equipment_Mark) </returns>
  function Get_Equipment_Info_By_Id (OBOR_Id :integer) :Equipment;
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  function TForm14.Get_Equipment_Info (OBOR: String; Ceh: String) :Equipment;
  begin
   //Подстановка ключевого слова
    DB_OBOR.Close;
    DB_OBOR.SetVariable('OBOR', OBOR);
    DB_OBOR.SetVariable('v_Ceh', Ceh);
    DB_OBOR.Open;
    Form14.Caption := Form14.Caption + ' по цеху №' + Ceh;
    v_Button_Choose_Pressed := False;
    //Если результатов поиска больше 1 - го, то выводится окно выбора
    if DB_OBOR.RecordCount > 1 then
    begin
      Form14.ShowModal;
      if v_Button_Choose_Pressed then
      Begin
        //После закрытия формы выбора, функция передает выбранное значение
        //Выбор в форме осущствляется двойным нажатием, через PopupMenu или нажатием клавиши Enter
        if not DB_OBOROBORID.IsNull then
        begin
         Result.Equipment_Id := DB_OBOROBORID.AsInteger;
         Result.Equipment_Name := DB_OBOROBOR.AsString;
        end
        else
        begin
         Result.Equipment_Name := '';
        end;
      End;
    end
    //Если результат 1, то возвращает краткое наименование
    else
    begin
      if not DB_OBOROBORID.IsNull then
      begin
       Result.Equipment_Id := DB_OBOROBORID.AsInteger;
       Result.Equipment_Name := DB_OBOROBOR.AsString;
      end
      else
      begin
       Result.Equipment_Name := '';
      end;
    end;
  end;

  //Получение информации о детали по его ID
  function TForm14.Get_Equipment_Info_By_Id (OBOR_Id :integer) :Equipment;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Obor_Id', otString);
   SimpleSQL.SetVariable('Obor_Id', OBOR_Id);
   SimpleSQL.SQL.Add('Select t.OborId, t.Obor '
                     + 'From Ogt.OPP_SPR_OBOR_TXT t '
                     + 'Where t.OborId = :Obor_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Equipment_Name := SimpleSQL.Fields[1].AsString;
  end;
{$ENDRegion 'Основные функции формы'}

{$Region 'Выбор значения'}
    //Выбор заключается в закрытии формы на той строке, на которой были произведены следующие действия:
    //Нажатие на "Выбрать"  в PopupMenu
    procedure TForm14.N1Click(Sender: TObject);
    begin
      Form14.DBGridEh1DblClick(nil);
    end;
    //Нажатие на клавишу Enter
    procedure TForm14.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form14.DBGridEh1DblClick(nil);
      end;
    end;
    procedure TForm14.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//Двойное нажатие мыши на выбранное строке
    procedure TForm14.DBGridEh1DblClick(Sender: TObject);
    begin
     v_Button_Choose_Pressed := True;
     form14.Close;
    end;
{$ENDRegion 'Выбор значения'}


end.
