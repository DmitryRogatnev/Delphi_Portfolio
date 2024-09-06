unit SZ_EDIT_SEO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  SZ_VARIABLES, OracleData, Oracle, Vcl.ComCtrls, SZ_NAMECHS, SZ_ADD_OBR,
  DBGridEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.Mask, DBCtrlsEh, DBLookupEh, Vcl.Menus;

type
  TForm11 = class(TForm)
    Panel3: TPanel;
    SZ_PACKAGE: TOraclePackage;
    SZ_ENTER: TOraclePackage;
    SimpleSQL: TOracleDataSet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ENum_SZ: TEdit;
    EDate: TEdit;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    CheckBox2: TCheckBox;
    FreeFormBox: TGroupBox;
    EFreeFormTop: TEdit;
    GroupBox1: TGroupBox;
    FROM_LCB: TDBLookupComboboxEh;
    GroupBox3: TGroupBox;
    TO_LCB: TDBLookupComboboxEh;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Save_but: TButton;
    Close_but: TButton;
    EDIT_SZ_INFO_DB: TOracleDataSet;
    TO_DB: TOracleDataSet;
    TO_DATA: TDataSource;
    FROM_DATA: TDataSource;
    FROM_DB: TOracleDataSet;
    Info_main: TOracleDataSet;
    Info_mainSZ_NUMB: TFloatField;
    Info_mainSZ_DATE: TDateTimeField;
    Info_mainSZ_NAME_OB: TStringField;
    Info_mainSZ_IBYAL_OB: TStringField;
    Info_mainSZ_COST_W_NDS: TFloatField;
    Info_mainSZ_NDS: TFloatField;
    Info_mainSZ_COST: TFloatField;
    Info_mainID_CONT: TFloatField;
    Info_mainID_STR: TFloatField;
    Info_mainSZ_IMP_NUMB: TFloatField;
    Info_mainSZ_IMP_DATE: TDateTimeField;
    Info_mainSZ_CODE_OB: TStringField;
    Info_mainSZ_DATE_COST: TDateTimeField;
    DS_INFO: TDataSource;
    Delete_BTN: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    EDIT_SZ_INFO_DBSZ_NUMB: TFloatField;
    EDIT_SZ_INFO_DBSZ_DATE: TDateTimeField;
    EDIT_SZ_INFO_DBSZ_FROM_ID: TFloatField;
    EDIT_SZ_INFO_DBSZ_TO_ID: TFloatField;
    EDIT_SZ_INFO_DBSZ_ADD: TStringField;
    EDIT_SZ_INFO_DBSZ_DATA_CENY: TDateTimeField;
    EDIT_SZ_INFO_DBSZ_FREE_FORM: TFloatField;
    EDIT_SZ_INFO_DBSZ_FREE_FORM_TOP: TStringField;
    Info_mainSZ_IMP_ID: TFloatField;
    Info_mainSZ_REPEAT_FLAG: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure Save_butClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Close_butClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Info_mainNewRecord(DataSet: TDataSet);
  private
   freeform_indef :integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}
uses
Sz_enter;

//Подключение/отключение свободного заголовка
procedure TForm11.CheckBox2Click(Sender: TObject);
begin
   if CheckBox2.Checked then
  begin
    FreeFormBox.Visible := true;
    freeform_indef := 1;
  end;
  if not CheckBox2.Checked then
  begin
    FreeFormBox.Visible := false;
    freeform_indef := 0;
  end;
end;
//Окрашивание строк таблицы
procedure TForm11.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
 if not Info_Main.IsEmpty then
    begin
     //Если графа КОД пустая, но в строке указано оборудование
     if (Info_mainSZ_CODE_OB.AsString = '') and ((Info_mainSZ_NAME_OB.AsString <> '') or (Info_mainSZ_IBYAL_OB.AsString <> ''))  then
     begin
       Background := $00C1B6FF; //Цвет фона: розовый
       AFont.Color := clRed; //Цвет шрифта: красный
       AFont.Style := AFont.Style + [fsBold]; //Стиль шрифта: жирный
     end;
     //Если имеются повторяющиеся позиции
     if Info_mainSZ_REPEAT_FLAG.AsInteger = 1 then
     begin
       Background := $00C1B6FF; //Цвет фона: розовый
       AFont.Color := clRed; //Цвет шрифта: красный
       AFont.Style := AFont.Style + [fsBold]; //Стиль шрифта: жирный
     end;
    end;
end;

{$Region 'Удаление с/з'}

  procedure TForm11.Button2Click(Sender: TObject);
  var buttonSelected :integer;
  begin
    //Двойная проверка на удаление
      buttonSelected := MessageDlg ('Вы уверенны что хотите удалить данную с/з?', mtConfirmation, mbOkCancel, 5);
      if buttonSelected = mrOk then
      begin
         buttonSelected := MessageDlg ('Вы точно уверенны что хотите удалить данную с/з?', mtConfirmation, mbOkCancel, 5);
         if buttonSelected = mrOk then
         begin
            SZ_PACKAGE.CallProcedure('Delete_SZ_by_ID',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'),2]);
            form11.Close; //После удаления закрываем форму
         end;
      end;
  end;

{$ENDRegion 'Удаление с/з'}

{$Region 'Закрытие формы'}

  procedure TForm11.Close_butClick(Sender: TObject);
  var buttonSelected :integer;
  begin
    buttonSelected := MessageDlg ('Закрыть? Все изменения не будут сохранены!', mtConfirmation, mbOkCancel, 5);
    if buttonSelected = mrOk then
    begin
      form11.Close;
    end;
  end;

{$ENDRegion 'Закрытие формы'}

{$Region 'Добавление, удаление и замена оборудования'}
  //Через двойное нажатие по таблице
  procedure TForm11.DBGrid1DblClick(Sender: TObject);
  begin
      SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ADD_OBR',0); //Переменная для проверки на то, что оборудование было выбрано
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_STR_NUM',Info_mainID_STR.AsString); //Номер строки для обновления
       SZ_ADD_OBR.Form36.ShowModal; //Показываем форму выбора оборудования
       if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ADD_OBR') = 1 then //Если оборудование было выборно
       begin
          if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_STR_NUM') = '' then //Если это новая строка
          begin
             Info_main.Last; //Добавляем в конец списка
             Info_main.Edit;
             Info_main.Insert;
             Info_mainSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //Указываем наименование
             Info_mainSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //Указываем ИБЯЛ
             Info_mainSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //Указываем код
             Info_mainID_STR.AsInteger := info_main.RecordCount + 1; //Указываем номер строки (общий + 1)
             Info_main.Post; //Сохраняем обновление
             Info_main.Refresh;
          end;
          if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_STR_NUM') <> '' then //Если была выбрана строка для замены
           begin
             info_main.Edit;
             Info_main.UpdateRecord; //Обновляем строку
             Info_mainSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //-/-
             Info_mainSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //-/-
             Info_mainSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //-/-
             Info_main.Post; //Сохраняем обновление
             Info_main.Refresh;
          end;
       end;
  end;
{*************************************************** Через PopupMenu **************************************************}
  //Добавление
  procedure TForm11.N1Click(Sender: TObject);
  begin
    SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ADD_OBR',0);
    SZ_ADD_OBR.Form36.ShowModal; //Показываем форму выбора оборудования
    if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ADD_OBR') = 1 then //Если оборудование было выборно
    begin
     Info_main.Last; //Добавляем в конец списка
     Info_main.Edit;
     Info_main.Insert;
     Info_mainSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //Указываем наименование
     Info_mainSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //Указываем ИБЯЛ
     Info_mainSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //Указываем код
     Info_mainID_STR.AsInteger := info_main.RecordCount + 1; //Указываем номер строки (общий + 1)
     Info_main.Post; //Сохраняем
     Info_main.Refresh;
    end;
  end;
  //Замена
  procedure TForm11.N2Click(Sender: TObject);
  begin
    if  Info_mainID_STR.AsString <> '' then //Если была выбрана строка для замены
     begin
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ADD_OBR',0);
       SZ_ADD_OBR.Form36.ShowModal; //Показываем форму выбора оборудования
       if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ADD_OBR') = 1 then //Если оборудование было выборно
       begin
        info_main.Edit;
        Info_main.UpdateRecord; //Обновляем строку
        Info_mainSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //-/-
        Info_mainSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //-/-
        Info_mainSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //-/-
        Info_main.Post; //Сохраняем обновление
        Info_main.Refresh;
       end;
     end;
  end;
  //Удаление
  procedure TForm11.N3Click(Sender: TObject);
    var buttonSelected :integer;
  begin
     info_main.Edit;
     buttonSelected := MessageDlg ('Удалить ' + Info_mainSZ_NAME_OB.AsString + '?', mtConfirmation, mbOkCancel, 5);
     if buttonSelected = mrOk then
     begin
       info_main.Delete;
     end;
  end;

{$ENDRegion 'Добавление, удаление и замена оборудования'}

{$Region 'Открытие формы'}

  procedure TForm11.FormShow(Sender: TObject);
  var
  i, count :integer;
  begin
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('POSITION_NUM',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_WNOM',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_NAME',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_KOD',otString);
    FROM_DB.Close;
    FROM_DB.Open;
    TO_DB.Close;
    TO_DB.Open;
    EDIT_SZ_INFO_DB.Close;
    EDIT_SZ_INFO_DB.SetVariable('vID', SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'));
    EDIT_SZ_INFO_DB.Open;
    SZ_PACKAGE.CallProcedure('Prepare_SZ_to_Edit_by_ID', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'), 2]);
    Info_main.Close;
    Info_main.Open;
    //Устанавливаем локапы
    FROM_LCB.KeyValue := EDIT_SZ_INFO_DBSZ_FROM_ID.AsInteger;
    TO_LCB.KeyValue := EDIT_SZ_INFO_DBSZ_TO_ID.AsInteger;
    //Устанавливаем Эдиты
    ENum_SZ.Text := EDIT_SZ_INFO_DBSZ_NUMB.AsString;
    EDate.Text := EDIT_SZ_INFO_DBSZ_DATE.AsString;
    Edit1.Text := EDIT_SZ_INFO_DBSZ_ADD.AsString;
     if EDIT_SZ_INFO_DBSZ_FREE_FORM.AsInteger = 1 then
    begin
      CheckBox2.Checked := true;
      FreeFormBox.Visible := true;
      EFreeFormTop.Text := EDIT_SZ_INFO_DBSZ_FREE_FORM_TOP.AsString;
      freeform_indef := 1;
    end
    else if EDIT_SZ_INFO_DBSZ_FREE_FORM.AsInteger = 0 then
    begin
      CheckBox2.Checked := false;
      FreeFormBox.Visible := false;
      EFreeFormTop.Clear;
      freeform_indef := 0;
    end;
    DateTimePicker1.Date := EDIT_SZ_INFO_DBSZ_DATA_CENY.AsDateTime;
  end;

procedure TForm11.Info_mainNewRecord(DataSet: TDataSet);
begin
  if Info_mainID_STR.AsInteger = 0 then Info_mainID_STR.AsInteger := info_main.RecordCount + 1;
end;

{$ENDRegion 'Открытие формы'}

{$Region 'Сохранение с/з'}

  procedure TForm11.Save_butClick(Sender: TObject);
  var buttonSelected :integer;
  v_Repeat_objects_is_exist :bool;
  begin
    buttonSelected := MessageDlg ('Сохранить?', mtConfirmation, mbOkCancel, 5);
      if buttonSelected = mrOk then
      begin
         v_Repeat_objects_is_exist := SZ_PACKAGE.CallBooleanFunction('Find_Repeat_Objects_in_SZ', []);
         if not v_Repeat_objects_is_exist then
          begin
           if FROM_LCB.Text <> '' then //Проверка что выбран подписант
           begin
             if TO_LCB.Text <> '' then //Проверка что выбран получатель
             begin
              if not info_main.IsEmpty then //Проверка что указано оборудование
               begin
                info_main.Edit;
                info_main.Post;
                try info_main.Post;
                except end;
                //Обновляем с/з
                SZ_PACKAGE.CallProcedure('Update_SZ_of_SEO_by_ID', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'), ENum_SZ.Text, FROM_LCB.KeyValue, TO_LCB.KeyValue, Edit1.Text, DateToStr(DateTimePicker1.Date), EFreeFormTop.Text, freeform_indef]);
               end
               else
               begin
                 MessageDlg('Не указано оборудование!', MtError, [mbOk], 1);
               end;
             end
             else MessageDlg('Не указан получатель с/з!', MtError, [mbOk], 1);
           end
           else MessageDlg('Не указан подписант с/з!', MtError, [mbOk], 1);
          end
          else
          Begin
           Info_Main.Refresh;
           MessageDlg('Проверьте служебную записку! Имеются повторяющиеся позиции!', MtError, [mbOk], 1);
          End;
      end;
    form11.Close;
  end;

{$ENDRegion 'Сохранение с/з'}

end.
