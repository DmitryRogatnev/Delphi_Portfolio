unit SZ_SEARCH;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, OracleData, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, SZ_VARIABLES,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, SZ_PRINT, SZ_PRINT_SEO, Vcl.Menus;

type
  TForm26 = class(TForm)
    Panel4: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DS_CONTENT_SEO: TDataSource;
    SZ_CONTENT_SEO: TOracleDataSet;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    DBGridEh_Main: TDBGridEh;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    SZ_CONTENT_SEOKD: TStringField;
    SZ_CONTENT_SEONOM: TStringField;
    SZ_CONTENT_SEONAIM: TStringField;
    SZ_CONTENT_SEODTKOR: TDateTimeField;
    SZ_CONTENT_SEOSZ_SEO: TStringField;
    SZ_CONTENT_SEOSZ_SEO_ID: TFloatField;
    SZ_CONTENT_SEOCENA: TFloatField;
    SZ_CONTENT_SEOCENA_DATE_END: TStringField;
    SZ_CONTENT_SEOSZ_OP: TStringField;
    SZ_CONTENT_SEOSZ_OP_ID: TFloatField;
    SZ_CONTENT_SEONEW_NOM: TStringField;
    SZ_CONTENT_SEOSZ_SEO_STATUS: TStringField;
    SZ_CONTENT_SEOSZ_PR_STATUS: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGridEh_MainGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

{$R *.dfm}

//Закрытие по кнопке "Выход"
procedure TForm26.Button1Click(Sender: TObject);
begin
  Form26.Close;
end;

{$Region 'Фильтры таблицы'}

  //Поиск по наименованию
  procedure TForm26.DBGridEh_MainGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  with (Sender as TDBGridEh).DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      if (Column.FieldName='SZ_SEO_STATUS')
          and (Pos('не подпис',AnsiLowerCase(FieldByName(Column.FieldName).AsString))<>0)
      then
      begin
        Background := $00C1B6FF;
        AFont.Color := clRed;
      end
      else if (Column.FieldName='SZ_SEO_STATUS')
          and (FieldByName(Column.FieldName).AsString='Подписана нач. СЭО')
      then
        Background := $0098FB98;

      if (Column.FieldName='SZ_PR_STATUS')
          and (Pos('не подпис',AnsiLowerCase(FieldByName(Column.FieldName).AsString))<>0)
      then
      begin
        Background := $00C1B6FF;
        AFont.Color := clRed;
      end
      else if (Column.FieldName='SZ_PR_STATUS')
          and (not FieldByName(Column.FieldName).IsNull)
      then
        Background := $0098FB98;
    end;
  end;
end;

procedure TForm26.Edit1Change(Sender: TObject);
  begin
     if SZ_CONTENT_SEO.Active then
     begin
       SZ_CONTENT_SEO.SetVariable('vNAIM',Edit1.Text);
       SZ_CONTENT_SEO.Refresh;
     end;
  end;
  //Поиск по чертежному номеру
  procedure TForm26.Edit2Change(Sender: TObject);
  begin
     if SZ_CONTENT_SEO.Active then
     begin
       SZ_CONTENT_SEO.SetVariable('vNOM',Edit2.Text);
       SZ_CONTENT_SEO.Refresh;
     end;
  end;
  //Поиск по коду
  procedure TForm26.Edit3Change(Sender: TObject);
  begin
     if SZ_CONTENT_SEO.Active then
     begin
       SZ_CONTENT_SEO.SetVariable('vKOD',Edit3.Text);
       SZ_CONTENT_SEO.Refresh;
     end;
  end;

{$ENDRegion 'Фильтры таблицы'}

//Запуск формы
procedure TForm26.FormActivate(Sender: TObject);
begin
 SZ_CONTENT_SEO.Close;
 SZ_CONTENT_SEO.SetVariable('vKOD',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KOD_OBR'));
 Edit1.Clear;
 Edit2.Clear;
 Edit3.Clear;
 if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KOD_OBR') <> '' then
 begin
   Edit3.Text := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KOD_OBR');
 end;
 SZ_CONTENT_SEO.Open;
end;

//Очистка переменных датасета при закрытии формы
procedure TForm26.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SZ_CONTENT_SEO.ClearVariables;
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_KOD_OBR','')
end;
//Вывод на печать с/з отдела продаж
procedure TForm26.N1Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', SZ_CONTENT_SEOSZ_OP_ID.AsInteger);
  DBGridEh_Main.SaveBookmark;
  SZ_PRINT.form16.ShowModal;
  DBGridEh_Main.RestoreBookmark;
end;
//Вывод на печать с/з СЭО
procedure TForm26.N2Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', SZ_CONTENT_SEOSZ_SEO_ID.AsInteger);
  DBGridEh_Main.SaveBookmark;
  SZ_PRINT_SEO.form17.ShowModal;
  DBGridEh_Main.RestoreBookmark;
end;

end.
