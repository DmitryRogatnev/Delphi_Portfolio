unit DET_CHS_FROM_RCD_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, Oracle, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TForm52 = class(TForm)
    DBGridEh1: TDBGridEh;
    DETAILS_DB: TOracleDataSet;
    DETAILS_DATA: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DETAILS_DBID: TFloatField;
    DETAILS_DBID_DOC_TP: TFloatField;
    DETAILS_DBDET_ID: TFloatField;
    DETAILS_DBDATE_CHANGE: TDateTimeField;
    DETAILS_DBDET_NUM: TStringField;
    DETAILS_DBDET_NAME: TStringField;
    DETAILS_DBFLAG: TFloatField;
    DETAILS_DBMAR: TStringField;
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
    End;

  /// <summary> Получение инфо детали по ключевому слову</summary>
  ///  <param name="v_KeyWord"> String; <br/> Ключевое слово </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name) </returns>
  Function Get_Det_Info_By_KeyWord (v_KeyWord: String): Detail;

  /// <summary> Получение инфо детали по ID</summary>
  ///  <param name="Det_id"> String; <br/> Id детали </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  Function Get_Det_Info_By_Id (Det_Id: Integer): Detail;
  end;

var
  Form52: TForm52;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  function TForm52.Get_Det_Info_By_KeyWord (v_KeyWord: String): Detail;
  begin
   //Подстановка ключевого слова
    DETAILS_DB.Close;
    DETAILS_DB.SetVariable( 'v_KeyWord', v_KeyWord );
    DETAILS_DB.Open;
    v_Button_Choose_Pressed := False;
    //Если результатов поиска больше 1 - го, то выводится окно выбора
    if DETAILS_DB.RecordCount > 1 then
    begin
      Form52.ShowModal;
      if v_Button_Choose_Pressed then
      Begin
        //После закрытия формы выбора, функция передает выбранное значение
        //Выбор в форме осущствляется двойным нажатием, через PopupMenu или нажатием клавиши Enter
        if not DETAILS_DBDET_ID.IsNull then
        begin
          Result.Det_Id := DETAILS_DBDET_ID.AsInteger;
          Result.Det_Num := DETAILS_DBDET_NUM.AsString;
          Result.Det_Name := DETAILS_DBDET_NAME.AsString;
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
      if not DETAILS_DBDET_ID.IsNull then
      begin
        Result.Det_Id := DETAILS_DBDET_ID.AsInteger;
        Result.Det_Num := DETAILS_DBDET_NUM.AsString;
        Result.Det_Name := DETAILS_DBDET_NAME.AsString;
      end
      else
      begin
        Result.Det_Num := '';
      end;
    end;
  end;

  //Получение информации о детали по его ID
  Function TForm52.Get_Det_Info_By_Id( Det_Id: Integer ): Detail;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Det_Id', otString);
   SimpleSQL.SetVariable('Det_Id', Det_Id);
   SimpleSQL.SQL.Add('Select t.Det, t.Nd, t.Mar '
                     + 'From Ogt.TP_GKTTP_DET_DLP_COPY t '
                     + 'Where t.Id = :Det_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Det_Num := SimpleSQL.Fields[0].AsString;
   Result.Det_Name := SimpleSQL.Fields[1].AsString;
  end;
{$ENDRegion 'Основные функции формы'}

{$Region 'Выбор значения'}
    //Выбор заключается в закрытии формы на той строке, на которой были произведены следующие действия:
    //Нажатие на "Выбрать"  в PopupMenu
    procedure TForm52.N1Click(Sender: TObject);
    begin
      Form52.DBGridEh1DblClick(nil);
    end;
    //Нажатие на клавишу Enter
    procedure TForm52.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form52.DBGridEh1DblClick(nil);
      end;
    end;

    procedure TForm52.FormShow(Sender: TObject);
    begin
      DBGridEh1.SearchPanel.SearchingText := '';
    end;

//Двойное нажатие мыши на выбранное строке
    procedure TForm52.DBGridEh1DblClick(Sender: TObject);
    begin
     v_Button_Choose_Pressed := True;
     Form52.Close;
    end;
{$ENDRegion 'Выбор значения'}


end.
