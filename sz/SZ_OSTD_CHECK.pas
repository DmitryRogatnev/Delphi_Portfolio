unit SZ_OSTD_CHECK;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Oracle, OracleData, SZ_VARIABLES, SZ_COMMET_CREAT,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, System.UITypes, Vcl.Menus;

type
  TForm15 = class(TForm)
    Panel2: TPanel;
    Save_but: TButton;
    Close_but: TButton;
    Info_main: TOracleDataSet;
    Info_mainSZ_NUMB: TFloatField;
    Info_mainSZ_DATE: TDateTimeField;
    Info_mainSZ_NAME_OB: TStringField;
    Info_mainSZ_IBYAL_OB: TStringField;
    Info_mainID_CONT: TFloatField;
    Info_mainID_STR: TFloatField;
    Info_mainSZ_CHECK: TFloatField;
    SimpleSQL: TOracleDataSet;
    OraclePackage2: TOraclePackage;
    OraclePackage1: TOraclePackage;
    DS_INFO: TDataSource;
    DBGrid1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure Close_butClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Save_butClick(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
    /// <summary> Получение имени с/з в формате №ЗС-(номер) от (дата) </summary>
		/// <param name="SZ_Id"> Integer; <br/>  ID с/з  </param>
    /// <returns> SZ_Name; String; <br/> </returns>
    function Get_SZ_Name_by_Id(SZ_Id :integer) :String;
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

{$Region 'Изменение статуса оборудования'}

//По нажатию на чекбоксы в таблице
procedure TForm15.DBGrid1CellClick(Column: TColumnEh);
begin
  if Column.FieldName = 'SZ_CHECK' then //Если произошло нажатие на колонку с чекбоксами
  begin
    if Info_MainSZ_CHECK.AsInteger = 0 then //Если галочки в чекбоксе колонки нету, то
    begin
      Form15.N7Click(nil); //Запускаем процедуру по нажатию на кнопку "Принять"
    end
    else if Info_MainSZ_CHECK.AsInteger = 1 then //Если галочка в чекбоксе есть, то
    begin
      Form15.N8Click(nil); //Запускаем процедуру по нажатию на кнопку "Отклонить"
    end;
  end;
end;
//По нажатию на кнопку "Принять"
procedure TForm15.N7Click(Sender: TObject);
begin
  OraclePackage1.CallProcedure('Change_OSTD_Status_by_ID',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'),Info_MainID_STR.AsInteger,1]);
  info_main.Refresh;
end;
//По нажатию на кнопку "Отклонить"
procedure TForm15.N8Click(Sender: TObject);
  var
 buttonSelected :integer;
begin
  OraclePackage1.CallProcedure('Change_OSTD_Status_by_ID',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'),Info_MainID_STR.AsInteger,0]);
  info_main.Refresh;
  buttonSelected := MessageDlg ('Добавить причину отмены позиции (при указании также просьба указывать номер позиции)?', mtConfirmation, mbOkCancel, 5);
    if buttonSelected = mrOk then
    begin
      SZ_COMMET_CREAT.Form4.v_Otdel := 1;
      SZ_COMMET_CREAT.Form4.ShowModal; //Форма ввода комментариев
    end;
end;

{$ENDRegion 'Изменение статуса оборудования'}

{$Region 'Окрашивание формы'}

procedure TForm15.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
if not DBGrid1.DataSource.DataSet.IsEmpty then //Окрашивание грида с составом с/з
    begin
      case DBGrid1.DataSource.DataSet.FieldByName('SZ_CHECK').Value of
          1:
          begin
           AFont.Color := clGreen; //Если оборудование принято, то зеленый
          end;
          0:
          begin
           AFont.Color := clRed; //Если отклонено то цвет красный
           AFont.Style := AFont.Style + [fsBold];
           Background := $00C1B6FF;
          end;
        end;
    end;
end;

{$ENDRegion 'Окрашивание формы'}

//Открытие формы
procedure TForm15.FormActivate(Sender: TObject);
begin
  info_main.Close;
  Info_main.SetVariable('SZ_ID', SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'));
  info_main.Open;
  Form15.Caption := 'Проверка '+ Form15.Get_SZ_Name_by_Id(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'));
end;
//Сохранение
procedure TForm15.Save_butClick(Sender: TObject);
  var
 buttonSelected :integer;
begin
  buttonSelected := MessageDlg ('Сохранить?', mtConfirmation, mbOkCancel, 5);
      if buttonSelected = mrOk then
  begin
    info_main.Session.Commit;
    form15.Close;
  end;
end;
//Закрытие без сохранения
procedure TForm15.Close_butClick(Sender: TObject);
begin
 info_main.Session.CancelUpdates([info_main]);
 form15.Close;
end;

{$Region 'Вспомогательные функции'}
 //Получение имени с/з
  function TForm15.Get_SZ_Name_by_Id(SZ_Id: Integer) :string;
  begin
   SimpleSQL.Close;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeleteVariables;
   SimpleSQL.DeclareVariable('Sz_Id',otinteger);
   SimpleSQL.SetVariable('Sz_Id', SZ_id);
   SimpleSQL.SQL.Add('select (''№ЗС-''||t.sz_numb||'' от ''||t.sz_date) from mrk.SZ_TABLE_TEST t where t.SZ_ID = :SZ_ID');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   result := SimpleSQL.Fields[0].AsString;
  end;
{$ENDRegion 'Вспомогательные функции'}

end.
