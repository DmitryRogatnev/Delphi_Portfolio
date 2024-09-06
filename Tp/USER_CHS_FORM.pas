unit USER_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, OracleData, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.Menus, Oracle;

type
  TForm21 = class(TForm)
    DBGridEh1: TDBGridEh;
    USERS_DB: TOracleDataSet;
    USER_DATA: TDataSource;
    USERS_DBNAME_RAZRAB: TStringField;
    USERS_DBPROF: TStringField;
    USERS_DBCEH_ABBREV: TStringField;
    USERS_DBPHONE: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    USERS_DBZEX: TStringField;
    USERS_DBID: TFloatField;
    USERS_DBLNUM: TIntegerField;
    USERS_DBCEH_ID: TFloatField;
    SimpleSQL: TOracleDataSet;
    USERS_DBVIDRAB: TFloatField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vFIO, vReturned_FIO :string;

    Type User = Record
      User_Name :String;
      User_Ceh :String;
      User_Lnum :Integer;
      User_Id :Integer;
      User_Ceh_Kod :String;
      User_Ceh_Id :Integer;
      User_Prof: String;
      User_Vidrab: Integer;
    End;

    /// <summary> Получение Ф.И.О. пользователя по части должности, части фамилии, телефону, отделу</summary>
    ///  <param name="User"> String; <br/> Часть должности, отдела, фамилии, телефон</param>
    ///  <returns> User Record; <br/> Инфо. пользователя </returns>
    function Get_User (FIO :string) :User;

    /// <summary> Получение инфо. пользователя по личному номеру</summary>
    ///  <param name="User_Lnum"> String; <br/> Личный номер пользователя</param>
    ///  <returns> User Record; <br/> Инфо. пользователя </returns>
    function Get_User_Info_By_Lnum (User_Lnum :Integer) :User;
  end;

var
  Form21: TForm21;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Получении Ф.И.О. пользователя по телефону, части фамилии, должности, отделу
  function TForm21.Get_User(FIO: string) :User;
  begin
    //Подстановка ключевого слова
    USERS_DB.Close;
    USERS_DB.ClearVariables;
    USERS_DB.SetVariable('vFIO', FIO);
    USERS_DB.Open;
    //Если результатов поиска больше 1 - го, то выводится окно выбора
    if USERS_DB.RecordCount > 1 then
    begin
      Form21.ShowModal;
      //После закрытия формы выбора, функция передает выбранное значение
      //Выбор в форме осущствляется двойным нажатием, через PopupMenu или нажатием клавиши Enter
      if USERS_DBNAME_RAZRAB.AsString <> '' then
      begin
        result.User_Name := USERS_DBNAME_RAZRAB.AsString;
        result.User_Ceh := USERS_DBCEH_ABBREV.AsString;
        result.User_Lnum := USERS_DBLNUM.AsInteger;
        result.User_Id := USERS_DBID.AsInteger;
        result.User_Ceh_Kod := USERS_DBZEX.AsString;
        result.User_Ceh_Id := USERS_DBCEH_ID.AsInteger;
        Result.User_Prof := USERS_DBPROF.AsString;
        Result.User_Vidrab := USERS_DBVIDRAB.AsInteger;
      end
      else
      begin
        result.User_Name := FIO;
      end;
    end
    else
    //Если результат 1, то возвращает Ф.И.О.
    begin
       if USERS_DBNAME_RAZRAB.AsString <> '' then
      begin
        USERS_DB.First;
        result.User_Name := USERS_DBNAME_RAZRAB.AsString;
        result.User_Ceh := USERS_DBCEH_ABBREV.AsString;
        result.User_Lnum := USERS_DBLNUM.AsInteger;
        result.User_Id := USERS_DBID.AsInteger;
        result.User_Ceh_Kod := USERS_DBZEX.AsString;
        result.User_Ceh_Id := USERS_DBCEH_ID.AsInteger;
        Result.User_Prof := USERS_DBPROF.AsString;
      end
      else
      begin
        result.User_Name := FIO;
      end;
    end;
  end;

  function TForm21.Get_User_Info_By_Lnum(User_Lnum: Integer) :User;
  begin
    SimpleSQL.Close;
    SimpleSQL.DeleteVariables;
    SimpleSQL.SQL.Clear;
    SimpleSQL.DeclareVariable('User_Lnum', otString);
    SimpleSQL.SetVariable('User_Lnum', User_Lnum);
    SimpleSQL.SQL.Add('Select t.Name_Razrab, '
                     + ' (Select a.Ceh_Abbrev From Ogt.Spr_Ceh a Where a.Ceh = t.Zex), '
                     + ' t.Lnum, t.Id, t.Zex, '
                     + ' (Select a.Id From Ogt.Spr_Ceh a Where a.Ceh = t.Zex), '
                     + ' t.Prof, '
                     + ' t.Vidrab '
                     + ' From Ogt.V$Razrab t '
                     + ' Where t.Lnum = :User_Lnum ');
    SimpleSQL.ExecSQL;
    SimpleSQL.Open;
    Result.User_Name := SimpleSQL.Fields[0].AsString;
    Result.User_Ceh := SimpleSQL.Fields[1].AsString;
    Result.User_Lnum := SimpleSQL.Fields[2].AsInteger;
    Result.User_Id := SimpleSQL.Fields[3].AsInteger;
    Result.User_Ceh_Kod := SimpleSQL.Fields[4].AsString;
    Result.User_Ceh_Id := SimpleSQL.Fields[5].AsInteger;
    Result.User_Prof := SimpleSQL.Fields[6].AsString;
    Result.User_Vidrab := SimpleSQL.Fields[7].AsInteger;
  end;
{$ENDRegion 'Основные функции формы'}

{$Region 'Выбор значения'}
    //Выбор заключается в закрытии формы на той строке, на которой были произведены следующие действия:
    //Нажатие на "Выбрать"  в PopupMenu
    procedure TForm21.N1Click(Sender: TObject);
    begin
      form21.DBGridEh1DblClick(nil);
    end;
    //Двойное нажатие мыши на выбранное строке
    procedure TForm21.DBGridEh1DblClick(Sender: TObject);
    begin
     form21.Close;
    end;
    //Нажатие на клавишу Enter
    procedure TForm21.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
        form21.DBGridEh1DblClick(nil);
      end;
    end;
procedure TForm21.FormShow(Sender: TObject);
begin
 DBGridEh1.SearchPanel.SearchingText := '';
end;

{$ENDRegion 'Выбор значения'}

end.
