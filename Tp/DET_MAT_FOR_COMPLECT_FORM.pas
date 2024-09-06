unit DET_MAT_FOR_COMPLECT_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Oracle, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TForm57 = class(TForm)
    DBGridEh1: TDBGridEh;
    DB_DET_MAT: TOracleDataSet;
    DB_DET_MATID: TFloatField;
    DB_DET_MATMAT_NAME: TStringField;
    DB_DET_MATMAT_KOD: TStringField;
    DB_DET_MATMAT_ED: TStringField;
    DATA_DET_MAT: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  /// <summary> Получение инфо детали по ключевому слову</summary>
  ///  <param name="v_Doc_KeyWord"> String; <br/> Ключевое слово </param>
  ///  <returns> Mar_Id; String; <br/> </returns>
  function Get_Det_Mat_By_Det_Id ( v_Det_Id :Integer;
                                   v_Ceh_Id :String )  :Integer;

  end;

var
  Form57: TForm57;

implementation

{$R *.dfm}

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  function TForm57.Get_Det_Mat_By_Det_Id ( v_Det_Id: Integer;
                                           v_Ceh_Id: String ): Integer;
  begin
   //Подстановка ключевого слова
    DB_DET_MAT.Close;
    DB_DET_MAT.SetVariable( 'v_Det_Id', v_Det_Id );
    DB_DET_MAT.SetVariable( 'v_Ceh_Id', v_Ceh_Id );
    DB_DET_MAT.Open;
    //Если результатов поиска больше 1 - го, то выводится окно выбора
    if DB_DET_MAT.RecordCount > 1 then
    begin
      Form57.ShowModal;
      //После закрытия формы выбора, функция передает выбранное значение
      //Выбор в форме осущствляется двойным нажатием, через PopupMenu или нажатием клавиши Enter
      if not DB_DET_MATID.IsNull then
      begin
        Result := DB_DET_MATID.AsInteger;
      end
      else
      begin
        Result := 0;
      end;
    end
    //Если результат 1, то возвращает краткое наименование
    else
    begin
     if not DB_DET_MATID.IsNull then
      begin
        Result := DB_DET_MATID.AsInteger;
      end
      else
      begin
        Result := 0;
      end;
    end;
  end;

{$ENDRegion 'Основные функции формы'}

{$Region 'Выбор значения'}
    //Выбор заключается в закрытии формы на той строке, на которой были произведены следующие действия:
    //Нажатие на "Выбрать"  в PopupMenu
    procedure TForm57.N1Click(Sender: TObject);
    begin
      Form57.DBGridEh1DblClick(nil);
    end;
    //Нажатие на клавишу Enter
    procedure TForm57.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form57.DBGridEh1DblClick(nil);
      end;
    end;

    procedure TForm57.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//Двойное нажатие мыши на выбранное строке
    procedure TForm57.DBGridEh1DblClick(Sender: TObject);
    begin
     form57.Close;
    end;
{$ENDRegion 'Выбор значения'}


end.
