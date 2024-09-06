unit DOC_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Oracle;

type
  TForm4 = class(TForm)
    DBGridEh1: TDBGridEh;
    DB_TP_DOCS: TOracleDataSet;
    DATA_TP_DOCS: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DB_TP_DOCSDET_ID: TFloatField;
    DB_TP_DOCSDET_NUM_NAME: TStringField;
    DB_TP_DOCSDET_NUM: TStringField;
    DB_TP_DOCSDET_NAME: TStringField;
    DB_TP_DOCSDOC_NUM: TStringField;
    DB_TP_DOCSID: TFloatField;
    DB_TP_DOCSCEH_ID: TFloatField;
    DB_TP_DOCSCEH_KODE: TStringField;
    DB_TP_DOCSDET_MAR: TStringField;
    DB_TP_DOCSDOC_TYPE: TFloatField;
    DB_TP_DOCSTP_NUM: TStringField;
    DB_TP_DOCSTP_NAME: TStringField;
    DB_TP_DOCSTP_WORK_TYPE: TFloatField;
    DB_TP_DOCSMAIN_DOC_ID: TFloatField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Type Doc_Info = Record
      Doc_Id :Integer;
      Doc_Num :String;
      Doc_Det_Id :Integer;
      Doc_Det_Num :String;
      Doc_Det_Name :String;
      Doc_Ceh_Id :Integer;
      Doc_Ceh_Kode :String;
      Doc_Det_Mar: String;
      Doc_Tp_Type: Integer;
      Doc_Tp_Num: String;
      Doc_Tp_Name: String;
      Doc_Tp_Work_Type_Id: Integer;
      Doc_Main_Doc_Id: Integer;
    End;

  /// <summary> Получение инфо детали по ключевому слову</summary>
  ///  <param name="v_Doc_KeyWord"> String; <br/> Ключевое слово </param>
  ///  <returns> Doc_Info; Record; <br/>  (Doc_Id - Id Документа, <br/>
  ///  Doc_Num - Номер документа,
  ///  Doc_Det_Num - Шифр детали / сборки,
  ///  Doc_Det_Name - Наименование детали / сборки,
  ///  Doc_Ceh_Kode - Цех / отдел)
  /// </returns>
  function Get_Doc_Info_By_KeyWord (v_Doc_KeyWord :string) :Doc_Info;

  /// <summary> Получение инфо детали по ID</summary>
  ///  <param name="Doc_id"> String; <br/> Id детали </param>
  ///  <returns> Doc_Info; Record; <br/>  (Doc_Id - Id Документа, <br/>
  ///  Doc_Num - Номер документа,
  ///  Doc_Det_Num - Шифр детали / сборки,
  ///  Doc_Det_Name - Наименование детали / сборки,
  ///  Doc_Ceh_Kode - Цех / отдел)
  /// </returns>
  function Get_Doc_Info_By_Id (Doc_Id :string) :Doc_Info;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  function TForm4.Get_Doc_Info_By_KeyWord (v_Doc_KeyWord :string) :Doc_Info;
  begin
   //Подстановка ключевого слова
    DB_TP_DOCS.Close;
    DB_TP_DOCS.SetVariable('v_Doc_KeyWord', v_Doc_KeyWord);
    DB_TP_DOCS.Open;
    //Если результатов поиска больше 1 - го, то выводится окно выбора
    if DB_TP_DOCS.RecordCount > 1 then
    begin
      Form4.ShowModal;
      //После закрытия формы выбора, функция передает выбранное значение
      //Выбор в форме осущствляется двойным нажатием, через PopupMenu или нажатием клавиши Enter
      if not DB_TP_DOCSID.IsNull then
      begin
        Result.Doc_Id := DB_TP_DOCSID.AsInteger;
        Result.Doc_Num := DB_TP_DOCSDOC_NUM.AsString;
        Result.Doc_Det_Id := DB_TP_DOCSDET_ID.AsInteger;
        Result.Doc_Det_Num := DB_TP_DOCSDET_NUM.AsString;
        Result.Doc_Det_Name := DB_TP_DOCSDET_NAME.AsString;
        Result.Doc_Ceh_Kode := DB_TP_DOCSCEH_KODE.AsString;
        Result.Doc_Ceh_Id := DB_TP_DOCSCEH_ID.AsInteger;
        Result.Doc_Det_Mar := DB_TP_DOCSDET_MAR.AsString;
        Result.Doc_Tp_Type := DB_TP_DOCSDOC_TYPE.AsInteger;
        Result.Doc_Tp_Num := DB_TP_DOCSTP_NUM.AsString;
        Result.Doc_Tp_Name := DB_TP_DOCSTP_NAME.AsString;
        Result.Doc_Tp_Work_Type_Id := DB_TP_DOCSTP_WORK_TYPE.AsInteger;
        Result.Doc_Main_Doc_Id := DB_TP_DOCSMAIN_DOC_ID.AsInteger;
      end
      else
      begin
        Result.Doc_Num := '';
      end;
    end
    //Если результат 1, то возвращает краткое наименование
    else
    begin
     if not DB_TP_DOCSID.IsNull then
      begin
        Result.Doc_Id := DB_TP_DOCSID.AsInteger;
        Result.Doc_Num := DB_TP_DOCSDOC_NUM.AsString;
        Result.Doc_Det_Id := DB_TP_DOCSDET_ID.AsInteger;
        Result.Doc_Det_Num := DB_TP_DOCSDET_NUM.AsString;
        Result.Doc_Det_Name := DB_TP_DOCSDET_NAME.AsString;
        Result.Doc_Ceh_Kode := DB_TP_DOCSCEH_KODE.AsString;
        Result.Doc_Ceh_Id := DB_TP_DOCSCEH_ID.AsInteger;
        Result.Doc_Det_Mar := DB_TP_DOCSDET_MAR.AsString;
        Result.Doc_Tp_Type := DB_TP_DOCSDOC_TYPE.AsInteger;
        Result.Doc_Tp_Num := DB_TP_DOCSTP_NUM.AsString;
        Result.Doc_Tp_Name := DB_TP_DOCSTP_NAME.AsString;
        Result.Doc_Tp_Work_Type_Id := DB_TP_DOCSTP_WORK_TYPE.AsInteger;
      end
      else
      begin
        Result.Doc_Num := '';
      end;
    end;
  end;

  //Получение информации о детали по его ID
  function TForm4.Get_Doc_Info_By_Id (Doc_Id :string) :Doc_Info;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Doc_Id', otString);
   SimpleSQL.SetVariable('Doc_Id', Doc_Id);
   SimpleSQL.SQL.Add('Select t.Det_Id, '
                     + ' (Select a.Det From Ogt.Spr_Det a Where a.Id = t.Det_Id) as Det_Num, '
                     + ' (Select a.Nd From Ogt.Spr_Det a Where a.Id = t.Det_Id) as Det_Name, '
                     + ' t.Doc_Num, '
                     + ' t.Id, '
                     + ' t.Ceh_Id, '
                     + ' t.Det_Mar, '
                     + ' (Select a.Ceh From Ogt.Spr_Ceh a Where a.Id = t.Ceh_Id) as Ceh_Kode, '
                     + ' t.Doc_Type, '
                     + ' t.Tp_Num, '
                     + ' t.Tp_Name, '
                     + ' t.Tp_Work_Type, '
                     + ' t.Main_Doc_Id '
                     + ' From Ogt.Spr_Tp_Doc t '
                     + ' Where t.Id = :Doc_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Doc_Det_Id := SimpleSQL.Fields[0].AsInteger;
   Result.Doc_Det_Num := SimpleSQL.Fields[1].AsString;
   Result.Doc_Det_Name := SimpleSQL.Fields[2].AsString;
   Result.Doc_Num := SimpleSQL.Fields[3].AsString;
   Result.Doc_Id := SimpleSQL.Fields[4].AsInteger;
   Result.Doc_Ceh_Id := SimpleSQL.Fields[5].AsInteger;
   Result.Doc_Det_Mar := SimpleSQL.Fields[6].AsString;
   Result.Doc_Ceh_Kode := SimpleSQL.Fields[7].AsString;
   Result.Doc_Tp_Type := SimpleSQL.Fields[8].AsInteger;
   Result.Doc_Tp_Num := SimpleSQL.Fields[9].AsString;
   Result.Doc_Tp_Name := SimpleSQL.Fields[10].AsString;
   Result.Doc_Tp_Work_Type_Id := SimpleSQL.Fields[11].AsInteger;
   Result.Doc_Main_Doc_Id := SimpleSQL.Fields[12].AsInteger;
  end;
{$ENDRegion 'Основные функции формы'}

{$Region 'Выбор значения'}
    //Выбор заключается в закрытии формы на той строке, на которой были произведены следующие действия:
    //Нажатие на "Выбрать"  в PopupMenu
    procedure TForm4.N1Click(Sender: TObject);
    begin
      Form4.DBGridEh1DblClick(nil);
    end;
    //Нажатие на клавишу Enter
    procedure TForm4.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form4.DBGridEh1DblClick(nil);
      end;
    end;
    procedure TForm4.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//Двойное нажатие мыши на выбранное строке
    procedure TForm4.DBGridEh1DblClick(Sender: TObject);
    begin
     form4.Close;
    end;
{$ENDRegion 'Выбор значения'}


end.
