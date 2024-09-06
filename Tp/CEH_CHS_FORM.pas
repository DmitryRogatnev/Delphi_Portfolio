unit CEH_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Oracle;

type
  TForm41 = class(TForm)
    DBGridEh1: TDBGridEh;
    SimpleSQL: TOracleDataSet;
    Db_Ceh: TOracleDataSet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Data_Ceh: TDataSource;
    Db_CehID: TFloatField;
    Db_CehCEH: TStringField;
    Db_CehCEH_ABBREV: TStringField;
    Db_CehCEH_NAIM: TStringField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Button_Choose_Pressed :Bool;

    Type Otdel = Record
      Otdel_Id: Integer;
      Otdel_Code: String;
      Otdel_Abbrev: String;
      Otdel_Name: String;
    End;

  /// <summary> Получение инфо отдела по ключевому слову</summary>
  ///  <param name="v_KeyWord"> String; <br/> Ключевое слово </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Otdel_Info (v_KeyWord: String): Otdel;

  /// <summary> Получение инфо детали по ID</summary>
  ///  <param name="Det_id"> String; <br/> Id детали </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Otdel_Info_By_Id (Otdel_Id :Integer): Otdel;
  end;

var
  Form41: TForm41;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  Function TForm41.Get_Otdel_Info ( v_KeyWord: String ): Otdel;
  begin
    //Подстановка ключевого слова
    Db_Ceh.Close;
    Db_Ceh.SetVariable( 'v_KeyWord', v_KeyWord );
    Db_Ceh.Open;
    Button_Choose_Pressed := False;
    //Если результатов поиска больше 1 - го, то выводится окно выбора
    if Db_Ceh.RecordCount > 1 then
    begin
      Form41.ShowModal;
      if Button_Choose_Pressed then
      Begin
        //После закрытия формы выбора, функция передает выбранное значение
        //Выбор в форме осущствляется двойным нажатием, через PopupMenu или нажатием клавиши Enter
        if Not Db_CehID.IsNull then
        begin
          Result.Otdel_Id := Db_CehID.AsInteger;
          Result.Otdel_Code := Db_CehCEH.AsString;
          Result.Otdel_Abbrev := Db_CehCEH_ABBREV.AsString;
          Result.Otdel_Name := Db_CehCEH_NAIM.AsString;
        end
        else
        begin
          Result.Otdel_Code := '';
        end;
      end
    end
    //Если результат 1, то возвращает краткое наименование
    else
    begin
      if not Db_CehID.IsNull then
      begin
        Result.Otdel_Id := Db_CehID.AsInteger;
        Result.Otdel_Code := Db_CehCEH.AsString;
        Result.Otdel_Abbrev := Db_CehCEH_ABBREV.AsString;
        Result.Otdel_Name := Db_CehCEH_NAIM.AsString;
        end
        else
      begin
        Result.Otdel_Code := '';
      end;
    end;
  end;

  //Получение информации о детали по его ID
  function TForm41.Get_Otdel_Info_By_Id (Otdel_Id: Integer): Otdel;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable( 'Otdel_Id', otString);
   SimpleSQL.SetVariable('Otdel_Id', Otdel_Id);
   SimpleSQL.SQL.Add( ' Select t.Id, t.Ceh, t.Ceh_Abbrev, '
                      + ' t.Ceh_Naim '
                      + ' From Ogt.Spr_Ceh t '
                      + ' Where t.Id = :Otdel_Id ' );
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Otdel_Id := SimpleSQL.Fields[0].AsInteger;
   Result.Otdel_Code := SimpleSQL.Fields[1].AsString;
   Result.Otdel_Abbrev := SimpleSQL.Fields[2].AsString;
   Result.Otdel_Name := SimpleSQL.Fields[3].AsString;
   SimpleSQL.Close;
  end;
{$ENDRegion 'Основные функции формы'}

{$Region 'Выбор значения'}
    //Выбор заключается в закрытии формы на той строке, на которой были произведены следующие действия:
    //Нажатие на "Выбрать"  в PopupMenu
    procedure TForm41.N1Click(Sender: TObject);
    begin
      Form41.DBGridEh1DblClick(nil);
    end;
    //Нажатие на клавишу Enter
    procedure TForm41.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form41.DBGridEh1DblClick(nil);
      end;
    end;

    procedure TForm41.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//Двойное нажатие мыши на выбранное строке
    procedure TForm41.DBGridEh1DblClick(Sender: TObject);
    begin
     Button_Choose_Pressed := True;
     form41.Close;
    end;
{$ENDRegion 'Выбор значения'}

end.
