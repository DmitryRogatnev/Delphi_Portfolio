unit SZ_CREAT_SEO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, SZ_VARIABLES, OracleData, Oracle,
  Vcl.ComCtrls, System.UITypes, SZ_NAMECHS, SZ_ADD_OBR, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.Menus,
  EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.Mask, DBCtrlsEh, DBLookupEh;

type
  TForm9 = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    EComment: TEdit;
    Panel2: TPanel;
    Save_but: TButton;
    Close_but: TButton;
    OraclePackage1: TOraclePackage;
    OraclePackage2: TOraclePackage;
    SimpleSQL: TOracleDataSet;
    DS_INFO: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ENum_SZ: TEdit;
    EDate: TEdit;
    Vazhn_Check: TCheckBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
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
    CheckBox2: TCheckBox;
    FreeFormBox: TGroupBox;
    EFreeFormTop: TEdit;
    GroupBox1: TGroupBox;
    FROM_LCB: TDBLookupComboboxEh;
    GroupBox3: TGroupBox;
    TO_LCB: TDBLookupComboboxEh;
    TO_DATA: TDataSource;
    FROM_DATA: TDataSource;
    FROM_DB: TOracleDataSet;
    TO_DB: TOracleDataSet;
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Info_mainSZ_IMP_ID: TFloatField;
    Info_mainSZ_REPEAT_FLAG: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure Save_butClick(Sender: TObject);
    procedure Close_butClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Vazhn_CheckClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Info_mainNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
     freeform_indef :integer;
     v_vazhn :integer;
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}
uses
sz_enter;

//Устанавливаем флаг важности комментария если в чекбоксе установлена галка
procedure TForm9.Vazhn_CheckClick(Sender: TObject);
begin
if Vazhn_Check.Checked then v_vazhn := 1 else v_vazhn := 0;
end;
//Подключение/отключение свободного заголовка
procedure TForm9.CheckBox2Click(Sender: TObject);
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
procedure TForm9.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
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
     //Если есть повторяющиеся позиции
     if Info_mainSZ_REPEAT_FLAG.AsInteger = 1 then
     begin
       Background := $00C1B6FF; //Цвет фона: розовый
       AFont.Color := clRed; //Цвет шрифта: красный
       AFont.Style := AFont.Style + [fsBold]; //Стиль шрифта: жирный
     end;
    end;
end;

{$Region 'Закрытие формы'}

  procedure TForm9.Close_butClick(Sender: TObject);
  var buttonSelected :integer;
  begin
    buttonSelected := MessageDlg ('Закрыть?', mtConfirmation, mbOkCancel, 1);
    if buttonSelected = mrOk then
    begin
      OraclePackage1.CallProcedure('DeleteSZNum', [ENum_SZ.Text, 38]);
      form9.Close;
    end;
  end;

{$ENDRegion 'Закрытие формы'}

{$Region 'Добавление, удаление и замена оборудования'}

  //Через двойное нажатие по таблице
  procedure TForm9.DBGrid1DblClick(Sender: TObject);
  begin
    SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ADD_OBR',0);
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_STR_NUM',Info_mainID_STR.AsString);
     SZ_ADD_OBR.Form36.ShowModal;
     if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ADD_OBR') = 1 then
     begin
        if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_STR_NUM') = '' then
        begin
           Info_main.Last;
           Info_main.Insert;
           Info_mainSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR');
           Info_mainSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR');
           Info_mainSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR');
           Info_mainID_STR.AsInteger := info_main.RecordCount + 1;
           Info_main.Post;
           Info_main.Refresh;
        end;
        if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_STR_NUM') <> '' then
         begin
           info_main.Edit;
           Info_main.UpdateRecord;
           Info_mainSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR');
           Info_mainSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR');
           Info_mainSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR');
           Info_main.Post;
           Info_main.Refresh;
        end;
     end;
  end;
  {*************************************************** Через PopupMenu **************************************************}
  //Добавление
  procedure TForm9.N1Click(Sender: TObject);
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
     Info_main.Post; //Сохраняем обновление
     Info_main.Refresh;
    end;
  end;
  //Замена
  procedure TForm9.N2Click(Sender: TObject);
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
  procedure TForm9.N3Click(Sender: TObject);
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

  procedure TForm9.FormShow(Sender: TObject);
  var
  i, count :integer;
  begin
   Info_main.Close;
   Info_main.Open;
   SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('POSITION_NUM',otString);
   SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_WNOM',otString);
   SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_NAME',otString);
   SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_KOD',otString);
   From_DB.Close;
   From_DB.Open;
   To_Db.Close;
   To_Db.Open;
   EDate.Text:=DateToStr(now());
   ENum_SZ.Text := IntToStr(OraclePackage1.CallIntegerFunction('GetNextNum',[Edate.Text,38]));
   FreeFormBox.Visible := false;
   freeform_indef := 0;
   v_vazhn := 0;
   DateTimePicker1.Date := now();
   EComment.Clear;
   //Установка значений по умолчанию
   TO_LCB.KeyValue := 333301;
  end;

procedure TForm9.Info_mainNewRecord(DataSet: TDataSet);
begin
  if Info_mainID_STR.AsInteger = 0 then Info_mainID_STR.AsInteger := info_main.RecordCount + 1;
end;

{$ENDRegion 'Открытие формы'}

{$Region 'Сохранение с/з'}

  procedure TForm9.Save_butClick(Sender: TObject);
  var buttonSelected :integer;
  Exit_sz_Id :integer;
  v_Repeat_objects_is_exist :bool;
  begin
    Exit_sz_Id := 0;
    buttonSelected := MessageDlg ('Закрыть?', mtConfirmation, mbOkCancel, 1);
    if buttonSelected = mrOk then
    begin
       v_Repeat_objects_is_exist := OraclePackage1.CallBooleanFunction('Find_Repeat_Objects_in_SZ', []);
       if not v_Repeat_objects_is_exist then
       begin
         if FROM_LCB.Text <> '' then //Проверка что выбран подписант
         begin
           if TO_LCB.Text <> '' then //Проверка что выбран получатель
           begin
           if not info_main.IsEmpty then
             begin
               info_main.Edit;
               info_main.Post;
               try info_main.Post;
               except end;
               Exit_sz_Id := OraclePackage1.CallIntegerFunction('Set_New_SZ_of_SEO_by_ID', [ENum_SZ.Text, EDate.Text, FROM_LCB.KeyValue, TO_LCB.KeyValue,
               Sz_Enter.Form1.User_Id, (Edit1.Text + ' ' + ComboBox1.Text), DateToStr(DateTimePicker1.Date), EFreeFormTop.Text, freeform_indef]);
               if EComment.Text <> '' then
               begin
                 //Добавляем комментарий, если указан
                 OraclePackage1.CallProcedure('Add_Comment_by_id',[Exit_sz_Id, EComment.Text, 2, SZ_ENTER.Form1.User_Id, v_vazhn]);
               end;
               if Exit_sz_Id <> 0 then form9.Close;
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
  end;

{$ENDRegion 'Сохранение с/з'}

end.
