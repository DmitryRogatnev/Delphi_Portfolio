unit KODPROF_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Oracle;

type
  TForm_KodProf_Chs = class(TForm)
    DBGridEh1: TDBGridEh;
    DB_KODPROF: TOracleDataSet;
    DATA_KODPROF: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DB_KODPROFKODPROF: TStringField;
    DB_KODPROFPROF: TStringField;
    DB_KODPROFRAZR: TIntegerField;
    DB_KODPROFNC: TStringField;
    DB_KODPROFKVN: TIntegerField;
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
  ///  <param name="v_KeyWord"> String; <br/> Ключевое слово </param>
  ///  <returns> Kodprof; Record; <br/>  (Prof_Code, Prof_Name) </returns>
  Function F_Get_KodProf_Info ( V_In_Params: TDynVarsEh ) :TDynVarsEh;
  end;

var
  Form_KodProf_Chs: TForm_KodProf_Chs;

implementation

{$R *.dfm}

Uses
 Udm_Main;

{$Region 'Основные функции формы'}
  //Функция возврата краткого наименования цеха/отдела по коду или ключевому слову
  Function TForm_KodProf_Chs.F_Get_KodProf_Info ( V_In_Params: TDynVarsEh ) :TDynVarsEh;
  Var
    V_Out_Params: TDynVarsEh;
  begin
    V_Out_Params := TDynVarsEh.Create( Application.MainForm );
   //Подстановка ключевого слова
    DB_KODPROF.Close;
    If Not V_In_Params.DynVar[ 'v_Keyword' ].IsNull
    Then
      DB_KODPROF.SetVariable( 'v_KeyWord', V_In_Params.DynVar[ 'v_Keyword' ].AsString );
    DB_KODPROF.SetVariable( 'v_Ceh_Code', V_In_Params.DynVar[ 'v_Ceh_Code' ].AsString );
    DB_KODPROF.Open;
    //Если результатов поиска больше 1 - го, то выводится окно выбора
    if DB_KODPROF.RecordCount > 1 then
    begin
      If Form_KodProf_Chs.ShowModal = mrOk
      Then
      Begin
        //После закрытия формы выбора, функция передает выбранное значение
        //Выбор в форме осущствляется двойным нажатием, через PopupMenu или нажатием клавиши Enter
        V_Out_Params.DynVar[ 'Kodprof' ].AsString := DB_KODPROFKODPROF.AsString;
        V_Out_Params.DynVar[ 'Prof' ].AsString := DB_KODPROFPROF.AsString;
        V_Out_Params.DynVar[ 'Razr' ].AsString := DB_KODPROFRAZR.AsString;
        V_Out_Params.DynVar[ 'Kvn' ].AsString := DB_KODPROFKVN.AsString;
      end
    end
    //Если результат 1, то возвращает краткое наименование
    else
    begin
      V_Out_Params.DynVar[ 'Kodprof' ].AsString := DB_KODPROFKODPROF.AsString;
      V_Out_Params.DynVar[ 'Prof' ].AsString := DB_KODPROFPROF.AsString;
      V_Out_Params.DynVar[ 'Razr' ].AsString := DB_KODPROFRAZR.AsString;
      V_Out_Params.DynVar[ 'Kvn' ].AsString := DB_KODPROFKVN.AsString;
    end;
    Result :=  V_Out_Params;
  end;

{$ENDRegion 'Основные функции формы'}

{$Region 'Выбор значения'}
    //Выбор заключается в закрытии формы на той строке, на которой были произведены следующие действия:
    //Нажатие на "Выбрать"  в PopupMenu
    procedure TForm_KodProf_Chs.N1Click(Sender: TObject);
    begin
       ModalResult := mrOK;
    end;
    //Нажатие на клавишу Enter
    procedure TForm_KodProf_Chs.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
        ModalResult := mrOK;
      end;
    end;

    procedure TForm_KodProf_Chs.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//Двойное нажатие мыши на выбранное строке
    procedure TForm_KodProf_Chs.DBGridEh1DblClick(Sender: TObject);
    begin
      ModalResult := mrOK;
    end;
{$ENDRegion 'Выбор значения'}

end.
