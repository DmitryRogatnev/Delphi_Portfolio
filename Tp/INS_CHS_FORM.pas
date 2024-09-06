unit INS_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, OracleData, Vcl.Menus, Oracle;

type
  TForm30 = class(TForm)
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DATA_INSTRUMENTS: TDataSource;
    DB_INSTRUMENTS: TOracleDataSet;
    DBGridEh1: TDBGridEh;
    DB_INSTRUMENTSID: TFloatField;
    DB_INSTRUMENTSNAME_INSTR: TStringField;
    PKG_TP_DOC: TOraclePackage;
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

    Type Instrument = Record
      Instr_Id :Integer;
      Instr_Name :String;
    End;

  /// <summary> Получение инфо детали по ключевому слову</summary>
  ///  <param name="DET"> String; <br/> Ключевое слово </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Instr_Info (v_KeyWord :string) :Instrument;

  /// <summary> Получение инфо детали по ID</summary>
  ///  <param name="Det_id"> String; <br/> Id детали </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Instr_Info_By_Id (Instr_Id :Integer) :Instrument;
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  function TForm30.Get_Instr_Info (v_KeyWord :string) :Instrument;
  begin
   //Подстановка ключевого слова
    DB_INSTRUMENTS.Close;
    DB_INSTRUMENTS.SetVariable('v_KeyWord', v_KeyWord);
    DB_INSTRUMENTS.Open;
    Button_Choose_Pressed := False;
    //Если результатов поиска больше 1 - го, то выводится окно выбора
    if DB_INSTRUMENTS.RecordCount > 1 then
    begin
      Form30.ShowModal;
      if Button_Choose_Pressed then
      Begin
        //После закрытия формы выбора, функция передает выбранное значение
        //Выбор в форме осущствляется двойным нажатием, через PopupMenu или нажатием клавиши Enter
        if not DB_INSTRUMENTSID.IsNull then
        begin
         Result.Instr_Id := DB_INSTRUMENTSID.AsInteger;
         Result.Instr_Name := DB_INSTRUMENTSNAME_INSTR.AsString;
        end
        else
        begin
          Result.Instr_Name := '';
        end;
      end
    end
    //Если результат 1, то возвращает краткое наименование
    else
    begin
      if not DB_INSTRUMENTSID.IsNull then
      begin
       Result.Instr_Id := DB_INSTRUMENTSID.AsInteger;
       Result.Instr_Name := DB_INSTRUMENTSNAME_INSTR.AsString;
      end
      else
      begin
        if MessageDlg( 'Совпадений не найдено! Добавить новый инструмент в справочник?', mtConfirmation, mbOKCancel, 0 ) = mrOk
        Then
        Begin
          Result.Instr_Id := PKG_TP_DOC.CallIntegerFunction( 'F_Set_New_Instr ', [v_KeyWord] );
          Result.Instr_Name := v_KeyWord;
        End
        Else
          Result.Instr_Name := '';
      end;
    end;
  end;

  //Получение информации о детали по его ID
  function TForm30.Get_Instr_Info_By_Id (Instr_Id :Integer) :Instrument;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Instr_Id', otString);
   SimpleSQL.SetVariable('Instr_Id', Instr_Id);
   SimpleSQL.SQL.Add('Select t.Id, t.Name_Instr '
                     + 'From Ogt.Spr_Instr t '
                     + 'Where t.Id = :Instr_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Instr_Id := SimpleSQL.Fields[0].AsInteger;
   Result.Instr_Name := SimpleSQL.Fields[1].AsString;
  end;
{$ENDRegion 'Основные функции формы'}

{$Region 'Выбор значения'}
    //Выбор заключается в закрытии формы на той строке, на которой были произведены следующие действия:
    //Нажатие на "Выбрать"  в PopupMenu
    procedure TForm30.N1Click(Sender: TObject);
    begin
      Form30.DBGridEh1DblClick(nil);
    end;
    //Нажатие на клавишу Enter
    procedure TForm30.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form30.DBGridEh1DblClick(nil);
      end;
    end;

    procedure TForm30.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//Двойное нажатие мыши на выбранное строке
    procedure TForm30.DBGridEh1DblClick(Sender: TObject);
    begin
     Button_Choose_Pressed := True;
     form30.Close;
    end;
{$ENDRegion 'Выбор значения'}

end.
