unit SZ_CREAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.UITypes, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, OracleData, Oracle, SZ_VARIABLES, SZ_WARN, SZ_NAMECHS, SZ_GOZ_EXP, SZ_ADD_OBR,
  DBGridEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.Mask, DBCtrlsEh, DBLookupEh, Vcl.Menus;

type
  TForm8 = class(TForm)
    Panel2: TPanel;
    Btn_Save: TButton;
    Btn_Cancel: TButton;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Db_Sz_Content: TOracleDataSet;
    SimpleSQL: TOracleDataSet;
    OraclePackage1: TOraclePackage;
    OraclePackage2: TOraclePackage;
    Data_Sz_Content: TDataSource;
    Vazhn_Check: TCheckBox;
    DS_NOM: TOracleDataSet;
    DS_NOMKD: TStringField;
    DS_NOMNOM: TStringField;
    DS_NOMNAIM: TStringField;
    DS_NOMDTKOR: TDateTimeField;
    DS_NOMPRIMEN: TStringField;
    DS_NOMNEW_NOM: TStringField;
    DS_NOMMDV: TStringField;
    DS_NOMPRU: TStringField;
    DS_NOMKDZAM: TStringField;
    DS_NOMNOMZAM: TStringField;
    DS_NOMIZD_GR: TStringField;
    DS_NOMPR_IZD: TStringField;
    DS_NOMCOMENT: TStringField;
    DS_NOMNAME_ETIK: TStringField;
    DS_NOMSNPR: TIntegerField;
    DS_NOMID_OGT: TFloatField;
    DS_NOMPROC: TFloatField;
    DS_NOMPR_EL: TStringField;
    DS_Users: TOracleDataSet;
    DS_UsersID: TFloatField;
    DS_UsersSURNAME: TStringField;
    DS_UsersNAME: TStringField;
    DS_UsersPATRONYMIC: TStringField;
    DS_UsersPASSWORD: TStringField;
    DS_UsersID_TYPE_USERS: TIntegerField;
    DS_UsersID_TYPE_OTDEL: TIntegerField;
    DS_UsersSTATUS: TIntegerField;
    DS_UsersHEADS: TIntegerField;
    DS_UsersSIGNBMP: TBlobField;
    DS_UsersSIGNBMP1: TBlobField;
    DS_UsersPHONE: TStringField;
    DS_UsersUSER_ONLINE: TFloatField;
    DS_UsersENTER_DATE: TDateTimeField;
    DS_UsersUSER_ADMIN: TFloatField;
    DS_UsersAUTO_LOAD: TFloatField;
    DS_UsersID_TYPE_HEADS: TIntegerField;
    DS_UsersFIO: TStringField;
    FROM_LCB: TDBLookupComboboxEh;
    DBGridEh1: TDBGridEh;
    TO_LCB: TDBLookupComboboxEh;
    COPY_LCB: TDBLookupComboboxEh;
    FROM_DB: TOracleDataSet;
    FROM_DATA: TDataSource;
    TO_DB: TOracleDataSet;
    TO_DATA: TDataSource;
    COPY_DATA: TDataSource;
    COPY_DB: TOracleDataSet;
    COPY_DBUSER_TO: TStringField;
    COPY_DBID: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Db_Sz_ContentID_POS: TFloatField;
    Db_Sz_ContentSZ_ID: TFloatField;
    Db_Sz_ContentSZ_NUMB: TFloatField;
    Db_Sz_ContentSZ_DATE: TDateTimeField;
    Db_Sz_ContentID_STR: TFloatField;
    Db_Sz_ContentID_CONT: TFloatField;
    Db_Sz_ContentSZ_NAME_OB: TStringField;
    Db_Sz_ContentSZ_IBYAL_OB: TStringField;
    Db_Sz_ContentSZ_CODE_OB: TStringField;
    Db_Sz_ContentSZ_CHECK: TFloatField;
    Db_Sz_ContentDATE_INS: TDateTimeField;
    Db_Sz_ContentUSER_ID_INS: TStringField;
    Db_Sz_ContentEMP_ID_INS: TFloatField;
    Db_Sz_ContentDATE_CHANGE: TDateTimeField;
    Db_Sz_ContentUSER_ID_COR: TStringField;
    Db_Sz_ContentEMP_ID_COR: TFloatField;
    Data_Sz_Info: TDataSource;
    E_SZ_Num: TDBEditEh;
    E_Sz_Date: TDBEditEh;
    E_Sz_Tema: TDBEditEh;
    Check_KR: TDBCheckBoxEh;
    E_Comment: TDBEditEh;
    Db_Sz_For_Copy: TOracleDataSet;
    Db_Sz_For_CopySZ_NAME_OB: TStringField;
    Db_Sz_For_CopySZ_IBYAL_OB: TStringField;
    Db_Sz_For_CopySZ_CODE_OB: TStringField;
    Db_Sz_Info: TOracleDataSet;
    Db_Sz_InfoSZ_ID: TFloatField;
    Db_Sz_InfoSZ_NUMB: TFloatField;
    Db_Sz_InfoSZ_DATE: TDateTimeField;
    Db_Sz_InfoSZ_CONT_Y: TFloatField;
    Db_Sz_InfoCONTACT: TStringField;
    Db_Sz_InfoSZ_CONT_Y_DATE: TDateTimeField;
    Db_Sz_InfoSZ_CONDITION: TFloatField;
    Db_Sz_InfoSZ_KR: TFloatField;
    Db_Sz_InfoSZ_TEMA: TStringField;
    Db_Sz_InfoSZ_ID_CONT: TFloatField;
    Db_Sz_InfoSZ_FROM_Y: TFloatField;
    Db_Sz_InfoSZ_FROM: TStringField;
    Db_Sz_InfoSZ_FROM_Y_DATE: TDateTimeField;
    Db_Sz_InfoSZ_TO_Y: TFloatField;
    Db_Sz_InfoSZ_TO: TStringField;
    Db_Sz_InfoSZ_TO_Y_DATE: TDateTimeField;
    Db_Sz_InfoSZ_COPY_Y: TFloatField;
    Db_Sz_InfoSZ_COPY: TStringField;
    Db_Sz_InfoSZ_COPY_Y_DATE: TDateTimeField;
    Db_Sz_InfoSTATUS: TStringField;
    Db_Sz_InfoSTATUS_VALUE: TFloatField;
    Db_Sz_InfoSZ_FROM_ID: TFloatField;
    Db_Sz_InfoSZ_TO_ID: TFloatField;
    Db_Sz_InfoSZ_COPY_ID: TFloatField;
    Db_Sz_InfoSZ_SEO_NUMB: TFloatField;
    Db_Sz_InfoSZ_SEO_DATE: TDateTimeField;
    Db_Sz_InfoSZ_ID_SEO: TFloatField;
    Db_Sz_InfoSZ_IS_DEL: TFloatField;
    Tm_Boot: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Btn_CancelClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure OSTD_CheckClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure COPY_LCBKeyValueChanged(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Vazhn_CheckClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Db_Sz_ContentNewRecord(DataSet: TDataSet);
    procedure Db_Sz_InfoNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Tm_BootTimer(Sender: TObject);
    procedure E_Sz_TemaOpenDropDownForm(EditControl: TControl;
      Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure E_Sz_TemaCloseDropDownForm(EditControl: TControl;
      Button: TEditButtonEh; Accept: Boolean; DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
  private
    { Private declarations }
  public
    { Public declarations }
    isKR :integer;
    v_Id_Sz: Integer;
    v_vazhn :integer;
    Copying_Process :bool;
    Copying_Doc_Id :integer;

    Procedure P_Copy_Sz( v_Id_Sz_For_Copy: Integer );
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}
uses
SZ_Enter, Udm_Main, Gen_Chs_Dd_Form;

//Установка флага "Без согласования с ОТСД"
procedure TForm8.OSTD_CheckClick(Sender: TObject);
begin
  if Db_Sz_Info.Active
  Then
  Begin
    if Check_KR.Checked then //Если галка в чекбоксе установлена
    begin
     COPY_LCB.KeyValue := 499999; //Устанавлиеваем в Локап "Копия" значение "-"
    end
    else if not Check_KR.Checked then //Если галка в чекбоксе не установлена
    begin
     COPY_DB.First;  //Устанавлиеваем в Локап "Копия" первое значение из списка подписантов в ОСТД
     COPY_LCB.Text := COPY_DBUSER_TO.AsString;
    end;
  End;
end;
//Установка флага о том, что комментарий важен
procedure TForm8.Vazhn_CheckClick(Sender: TObject);
begin
  if Vazhn_Check.Checked then v_vazhn := 1 else v_vazhn := 0; //Устанавливаем флаг важности комментария если в чекбоксе установлена галка
end;
//Если в Локапе выбрано значение "-"
procedure TForm8.COPY_LCBKeyValueChanged(Sender: TObject);
begin
  if Db_Sz_Info.Active
  Then
  Begin
    if COPY_LCB.KeyValue = 499999 then //то
    begin
      isKR := 1; //Устанавливаем флаг о том, что "Без согласования с ОТСД"
      Check_KR.Checked := true; //Устанавливаем галочку в чекбоксе "Без согласования с ОТСД"
    end
    else //в противном случае
    begin
      isKR := 0; //Снимаем флаг о том, что "Без согласования с ОТСД"
      Check_KR.Checked := false; //Снимаем галочку в чекбоксе "Без согласования с ОТСД"
    end;
  End;
end;

{$Region 'Добавление, удаление и замена оборудования'}
  //Через двойное нажатие по таблице
  procedure TForm8.DBGrid1DblClick(Sender: TObject);
  begin
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ADD_OBR',0); //Перемееная для проверки на то, что оборудование было выбрано
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_STR_NUM',Db_Sz_ContentID_STR.AsString); //Номер строки для обновления
     SZ_ADD_OBR.Form36.ShowModal; //Показываем форму выбора оборудования
     if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ADD_OBR') = 1 then //Если оборудование было выборно
     begin
        if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_STR_NUM') = '' then //Если это новая строка
        begin
           Db_Sz_Content.Last; //Добавляем в конец списка
           Db_Sz_Content.Edit;
           Db_Sz_Content.Insert;
           Db_Sz_ContentSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //Указываем наименование
           Db_Sz_ContentSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //Указываем ИБЯЛ
           Db_Sz_ContentSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //Указываем код
           Db_Sz_ContentID_STR.AsInteger := Db_Sz_Content.RecordCount + 1; //Указываем номер строки (общий + 1)
           Db_Sz_Content.Post; //Сохраняем обновление
           Db_Sz_Content.Refresh;
        end;
        if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_STR_NUM') <> '' then //Если была выбрана строка для замены
         begin
           Db_Sz_Content.Edit;
           Db_Sz_Content.UpdateRecord; //Обновляем строку
           Db_Sz_ContentSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //-/-
           Db_Sz_ContentSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //-/-
           Db_Sz_ContentSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //-/-
           Db_Sz_Content.Post; //Сохраняем обновление
           Db_Sz_Content.Refresh;
        end;
     end;
  end;
  //Через PopupMenu
  procedure TForm8.N1Click(Sender: TObject);
  begin
   SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ADD_OBR',0);
   SZ_ADD_OBR.Form36.ShowModal; //Показываем форму выбора оборудования
    if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ADD_OBR') = 1 then //Если оборудование было выборно
     begin
       Db_Sz_Content.Last; //Добавляем в конец списка
       Db_Sz_Content.Edit;
       Db_Sz_Content.Insert;
       Db_Sz_ContentSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //Указываем наименование
       Db_Sz_ContentSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //Указываем ИБЯЛ
       Db_Sz_ContentSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //Указываем код
       Db_Sz_ContentID_STR.AsInteger := Db_Sz_Content.RecordCount + 1; //Указываем номер строки (общий + 1)
       Db_Sz_Content.Post; //Сохраняем обновление
       Db_Sz_Content.Refresh;
     end;
  end;
  //Через PopupMenu
  procedure TForm8.N2Click(Sender: TObject);
  begin
    if  Db_Sz_ContentID_STR.AsString <> '' then //Если была выбрана строка для замены
    begin
      SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ADD_OBR',0);
      SZ_ADD_OBR.Form36.ShowModal; //Показываем форму выбора оборудования
      if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ADD_OBR') = 1 then //Если оборудование было выборно
       begin
            Db_Sz_Content.Edit;
            Db_Sz_Content.UpdateRecord; //Обновляем строку
            Db_Sz_ContentSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //-/-
            Db_Sz_ContentSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //-/-
            Db_Sz_ContentSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //-/-
            Db_Sz_Content.Post; //Сохраняем обновление
            Db_Sz_Content.Refresh;
       end;
    end;
  end;
procedure TForm8.N3Click(Sender: TObject);
  var buttonSelected :integer;
begin
    Db_Sz_Content.Edit;
    buttonSelected := MessageDlg ('Удалить ' + Db_Sz_ContentSZ_NAME_OB.AsString + '?', mtConfirmation, mbOkCancel, 5);
    if buttonSelected = mrOk then
    begin
      Db_Sz_Content.Delete;
    end;
end;

{$ENDRegion 'Добавление, удаление и замена оборудования'}

{$Region 'Окрашивание формы'}

  procedure TForm8.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
    AFont: TFont; var Background: TColor; State: TGridDrawState);
  begin
    if not Db_Sz_Content.IsEmpty then
    begin
     //Если графа КОД пустая, но в строке указано оборудование
     if (Db_Sz_ContentSZ_CODE_OB.AsString = '') and ((Db_Sz_ContentSZ_NAME_OB.AsString <> '') or (Db_Sz_ContentSZ_IBYAL_OB.AsString <> ''))  then
     begin
       Background := $00C1B6FF; //Цвет фона: розовый
       AFont.Color := clRed; //Цвет шрифта: красный
       AFont.Style := AFont.Style + [fsBold]; //Стиль шрифта: жирный
     end;
    end;
  end;

procedure TForm8.Db_Sz_InfoNewRecord(DataSet: TDataSet);
begin
  Db_Sz_InfoSZ_ID_CONT.AsInteger := SZ_ENTER.Form1.User_Id;
end;

procedure TForm8.E_Sz_TemaCloseDropDownForm(EditControl: TControl;
  Button: TEditButtonEh; Accept: Boolean; DropDownForm: TCustomForm;
  DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
     And (DynParams <> Nil)
  Then
  Begin
    E_Sz_Tema.Text := DynParams.DynVar['Sz_Tema'].AsString;
  End;
end;

procedure TForm8.E_Sz_TemaOpenDropDownForm(EditControl: TControl;
  Button: TEditButtonEh; var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar[ 'Find' ].AsString := 'Tema';
  DynParams := SZ_Enter.Form1.F_Gen_SQL_Params_For_Chs_Form( DynParams );
end;

{$ENDRegion 'Окрашивание формы'}

{$Region 'Открытие формы'}

  procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Btn_SaveClick( Btn_Cancel );
  end;

procedure TForm8.FormShow(Sender: TObject);
  begin
   //Объявление переменных
   SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('POSITION_NUM',otString);
   SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_WNOM',otString);
   SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_NAME',otString);
   SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_KOD',otString);
   SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_DATE',otString);
   SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_NUMB',otInteger);
   //Открытие датасетов
   Db_Sz_Info.Close;
   Db_Sz_Info.SetVariable( 'Id_Sz', v_Id_Sz );
   Ds_Users.Close;
   Ds_users.Open;
   FROM_DB.Close;
   FROM_DB.Open;
   TO_DB.Close;
   TO_DB.Open;
   COPY_DB.Close;
   COPY_DB.Open;
   Ds_NOM.Close;
   Ds_NOM.Open;
   Db_Sz_Info.Open;
   Db_Sz_Content.Close;
   Db_Sz_Content.SetVariable( 'Id_Sz', v_Id_Sz );
   Db_Sz_Content.Open;
   If v_Id_Sz <> 0
   Then
   Begin
     Form8.Caption := 'Редактирование с/з';
     Panel5.Visible := False;
   End
   Else
   Begin
     Form8.Caption := 'Создание с/з';
     Panel5.Visible := True;
     E_Comment.Clear;
     //Устанавливаем дату
     E_Sz_Date.Text:=DateToStr(now());
     //Получение номера с/з
     E_SZ_Num.Text := IntToStr(OraclePackage1.CallIntegerFunction( 'GetNextNum',[ E_Sz_Date.Text,33 ] ) );
     Vazhn_Check.Checked := false;
     //Установка значений по умолчанию
     TO_LCB.KeyValue := 383801;
     COPY_LCB.KeyValue := 757501;
     v_vazhn := 0;
   End;
   if Copying_Process
   Then
   Begin
     P_Copy_Sz( Copying_Doc_Id );
   End;
  end;



procedure TForm8.Db_Sz_ContentNewRecord(DataSet: TDataSet);
begin
  Db_Sz_ContentID_STR.AsInteger := Db_Sz_Content.RecordCount + 1;
  Db_Sz_ContentSZ_ID.AsInteger := Db_Sz_InfoSZ_ID.AsInteger;
  Db_Sz_ContentID_CONT.AsInteger := SZ_Enter.Form1.User_Id;
end;

{$ENDRegion 'Открытие формы'}

{$Region 'Закрытие формы'}
 //Через кнопку
 procedure TForm8.Btn_CancelClick(Sender: TObject);
  begin
    Form8.Close;
  end;
{$ENDRegion 'Закрытие формы'}

{$Region 'Сохранение с/з'}

  procedure TForm8.Btn_SaveClick(Sender: TObject);
  var buttonSelected :integer;
  begin
    Try Db_Sz_Info.Post; Except End;
    Try Db_Sz_Content.Post; Except End;

   if Sender = Btn_Cancel
    Then
      ButtonSelected := MessageDlg ('Данные не сохранены! Сохранить?', mtConfirmation, mbOkCancel, 5)
    Else
      ButtonSelected := MessageDlg ('Сохранить?', mtConfirmation, mbOkCancel, 5);
    If buttonSelected = mrOk
    Then
    begin
      If ( Db_Sz_Info.UpdatesPending )
          Or ( Db_Sz_Content.UpdatesPending )
      Then
      Begin

        {$Region 'Проверки'}
        If Db_Sz_InfoSZ_FROM_ID.IsNull
        Then //Проверка что выбран подписант
        Begin
          MessageDlg( 'Не указан подписант с/з!', MtError, [mbOk], 1 );
          Exit;
        End;

        If Db_Sz_InfoSZ_TO_ID.IsNull
        Then //Проверка что выбран получатель
        Begin
          MessageDlg( 'Не указан получатель с/з!', MtError, [mbOk], 1 );
          Exit;
        End;

        If Db_Sz_InfoSZ_COPY_ID.IsNull
        Then
        Begin
          MessageDlg( 'Не указано кому необходима копия с/з! Если копия не нужна укажите ''-''.', MtError, [mbOk], 1 );
          Exit;
        End;
        If Db_Sz_Content.IsEmpty
        Then //Проверка что указано оборудование
        Begin
          MessageDlg('Не указано оборудование!', MtError, [mbOk], 1);
          Exit;
        End;
    {$EndRegion 'Проверки'}

        Db_Sz_Info.Session.ApplyUpdates( [ Db_Sz_Info ], True );
        Db_Sz_Content.Session.ApplyUpdates( [ Db_Sz_Content ], True );
        if (E_Comment.Text <> '')
            And ( E_Comment.Visible )
        Then
        begin
           //Добавляем комментарий, если указан
           OraclePackage1.CallProcedure('Add_Comment_by_id',[ Db_Sz_InfoSZ_ID.AsInteger, E_Comment.Text, 1, SZ_ENTER.Form1.User_Id, v_vazhn]);
        end;
        ModalResult := mrOk;
      End;
    end
    Else if ( buttonSelected = mrCancel )
            And ( Sender = Btn_Cancel )
    Then
    Begin
      Db_Sz_Info.Session.CancelUpdates( [ Db_Sz_Info ] );
      Db_Sz_Content.Session.CancelUpdates( [ Db_Sz_Content ] );
      ModalResult := mrCancel;
    End;
  end;

{$ENDRegion 'Сохранение с/з'}

Procedure TForm8.P_Copy_Sz(v_Id_Sz_For_Copy: Integer);
var
  I: Integer;
begin
  Db_Sz_For_Copy.Close;
  Db_Sz_For_Copy.SetVariable('Id_Sz_Copy', v_Id_Sz_For_Copy);
  Db_Sz_For_Copy.Open;

  Db_Sz_Content.First;
  For I := 1 to Db_Sz_Content.RecordCount
  Do
  Begin
    Try
      Db_Sz_Content.Delete
    Finally
      Db_Sz_Content.Next
    End;
  End;

  Db_Sz_For_Copy.First;
  For I := 1 to Db_Sz_For_Copy.RecordCount
  Do
  Begin
    Db_Sz_Content.Append;
    Db_Sz_Content.CopyFields( Db_Sz_For_Copy );
    Db_Sz_For_Copy.Next;
  End;

end;

procedure TForm8.Tm_BootTimer(Sender: TObject);
begin
   Tm_Boot.Enabled := False;
end;

end.
