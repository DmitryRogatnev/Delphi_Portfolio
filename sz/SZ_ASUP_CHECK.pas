unit SZ_ASUP_CHECK;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Oracle, Data.DB, OracleData,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.StdCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBCtrlsEh, Vcl.Mask, DBLookupEh, SZ_VARIABLES, SZ_USER_LIST, SZ_PRINT, SZ_SEARCH,
  SZ_COMMET_VIEW, SZ_USERS_4_SIGN_ADMIN, SZ_COMMET_CREAT;

type
  TForm40 = class(TForm)
    Panel14: TPanel;
    Label4: TLabel;
    LCB_Contact: TDBLookupComboboxEh;
    E_Det_Name: TDBEditEh;
    E_Det_Num: TDBEditEh;
    E_Sz_Num: TDBEditEh;
    E_Det_Kd: TDBEditEh;
    DBGridEh_SIGN: TDBGridEh;
    DBGridEh_SIGN_CONTENT: TDBGridEh;
    Panel5: TPanel;
    Btn_Comment: TButton;
    SIGN_BTN: TButton;
    Button6: TButton;
    CANCEL_SIGN_BTN: TButton;
    PM_CONTENT: TPopupMenu;
    N21: TMenuItem;
    PM_GRID_SIGN: TPopupMenu;
    N4: TMenuItem;
    N11: TMenuItem;
    N15: TMenuItem;
    TrayIcon1: TTrayIcon;
    Timer3: TTimer;
    ImageList1: TImageList;
    Timer1: TTimer;
    DS_Users: TOracleDataSet;
    FloatField2: TFloatField;
    StringField6: TStringField;
    Data_Users: TDataSource;
    Db_Info_Count: TOracleDataSet;
    Db_Info_CountNUM_STR: TFloatField;
    SimpleSQL: TOracleDataSet;
    Db_Notifications: TOracleDataSet;
    Db_NotificationsSZ_OPT: TFloatField;
    Db_NotificationsSZ_DATE: TDateTimeField;
    Db_NotificationsSZ_USERTYPE: TFloatField;
    Db_NotificationsSZ_OTDEL: TFloatField;
    Db_NotificationsSZ_ID_STR: TFloatField;
    Db_Admin_Notifications: TOracleDataSet;
    Db_Admin_NotificationsID: TFloatField;
    Db_Admin_NotificationsSURNAME: TStringField;
    Db_Admin_NotificationsNAME: TStringField;
    Db_Admin_NotificationsPATRONYMIC: TStringField;
    Db_Admin_NotificationsID_TYPE_USERS: TIntegerField;
    Db_Admin_NotificationsID_TYPE_OTDEL: TIntegerField;
    Db_Admin_NotificationsPHONE: TStringField;
    Db_Admin_NotificationsUSER_ONLINE: TFloatField;
    Db_Admin_NotificationsENTER_DATE: TDateTimeField;
    Db_Admin_NotificationsUSER_NOTIF: TFloatField;
    Db_Admin_NotificationsMESSAGE: TStringField;
    Db_Info_Main: TOracleDataSet;
    Data_Info_Main: TDataSource;
    Data_Sz_Content: TDataSource;
    Db_Sz_Content: TOracleDataSet;
    OraclePackage1: TOraclePackage;
    OraclePackage2: TOraclePackage;
    MainMenu1: TMainMenu;
    dsd1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N20: TMenuItem;
    DBGridEh2: TDBGridEh;
    Db_Main_Appr_Steps: TOracleDataSet;
    Db_Main_Appr_StepsAPPR_STEP_NAME: TStringField;
    Db_Main_Appr_StepsAPPR_STEP_NUM: TStringField;
    Db_Main_Appr_StepsSTATUS: TStringField;
    Db_Main_Appr_StepsRAZRAB_NAME: TStringField;
    Db_Main_Appr_StepsDATE_IN: TDateTimeField;
    Db_Main_Appr_StepsDATE_OUT: TDateTimeField;
    Db_Main_Appr_StepsCEH_NAME: TStringField;
    Data_Main_Appr_Steps: TDataSource;
    N5: TMenuItem;
    Db_Info_MainSZ_ID: TFloatField;
    Db_Info_MainSZ_NUMB: TFloatField;
    Db_Info_MainSZ_DATE: TDateTimeField;
    Db_Info_MainSZ_CONT_Y: TFloatField;
    Db_Info_MainCONTACT: TStringField;
    Db_Info_MainSZ_CONT_Y_DATE: TDateTimeField;
    Db_Info_MainSZ_CONDITION: TFloatField;
    Db_Info_MainSZ_KR: TFloatField;
    Db_Info_MainSZ_TEMA: TStringField;
    Db_Info_MainSZ_ID_CONT: TFloatField;
    Db_Info_MainSZ_FROM_Y: TFloatField;
    Db_Info_MainSZ_FROM: TStringField;
    Db_Info_MainSZ_FROM_Y_DATE: TDateTimeField;
    Db_Info_MainSZ_TO_Y: TFloatField;
    Db_Info_MainSZ_TO: TStringField;
    Db_Info_MainSZ_TO_Y_DATE: TDateTimeField;
    Db_Info_MainSZ_COPY_Y: TFloatField;
    Db_Info_MainSZ_COPY: TStringField;
    Db_Info_MainSZ_COPY_Y_DATE: TDateTimeField;
    Db_Info_MainSTATUS: TStringField;
    Db_Info_MainSTATUS_VALUE: TFloatField;
    Db_Info_MainSZ_FROM_ID: TFloatField;
    Db_Info_MainSZ_TO_ID: TFloatField;
    Db_Info_MainSZ_COPY_ID: TFloatField;
    Db_Info_MainSZ_SEO_NUMB: TFloatField;
    Db_Info_MainSZ_SEO_DATE: TDateTimeField;
    Db_Info_MainSZ_ID_SEO: TFloatField;
    Db_Info_MainSZ_IS_DEL: TFloatField;
    Db_Sz_ContentSZ_NUMB: TFloatField;
    Db_Sz_ContentSZ_DATE: TDateTimeField;
    Db_Sz_ContentSZ_NAME_OB: TStringField;
    Db_Sz_ContentSZ_IBYAL_OB: TStringField;
    Db_Sz_ContentID_CONT: TFloatField;
    Db_Sz_ContentID_STR: TFloatField;
    Db_Sz_ContentSZ_CHECK: TFloatField;
    Db_Sz_ContentSZ_CODE_OB: TStringField;
    Db_Sz_ContentSZ_ID: TFloatField;
    Db_Info_Count_2: TOracleDataSet;
    Db_Info_Count_2NUM_STR: TFloatField;
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure E_Sz_NumChange(Sender: TObject);
    procedure E_Det_NameChange(Sender: TObject);
    procedure E_Det_NumChange(Sender: TObject);
    procedure E_Det_KdChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsd1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Btn_CommentClick(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N21Click(Sender: TObject);
    procedure SIGN_BTNClick(Sender: TObject);
    procedure CANCEL_SIGN_BTNClick(Sender: TObject);
    procedure Db_Info_Count_2AfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
     Exit_Btn_Is_Pushed: Bool;
     New_Sz_Counter: Integer;
  end;

var
  Form40: TForm40;

implementation

{$R *.dfm}
Uses
SZ_Enter;

procedure TForm40.Btn_CommentClick(Sender: TObject);
begin
if not Db_Info_Main.IsEmpty then
    begin
     SZ_COMMET_VIEW.Form6.v_Otdel_type := 1;
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Db_Info_MainSZ_ID.AsInteger);
     DBGridEh_SIGN.SaveBookmark;
     SZ_COMMET_VIEW.Form6.ShowModal;
     DBGridEh_SIGN.RestoreBookmark;
    end;
end;

procedure TForm40.Button6Click(Sender: TObject);
begin
 SZ_VARIABLES.Form20.OracleDataSet1.SetVariable( 'Status', 'Tray' );
 Exit_Btn_Is_Pushed := True;
 if SZ_Enter.Form1.User_is_admin then
 begin
  if SZ_USER_LIST.Form38.Showing then
  begin
    SZ_USER_LIST.Form38.Close;
  end;
 end;
 Form40.Close;
end;

procedure TForm40.CANCEL_SIGN_BTNClick(Sender: TObject);
   var
   buttonSelected :integer;
begin
  buttonSelected := MessageDlg ( 'Вы уверенны что хотите отклонить служебную записку?', mtConfirmation, mbOkCancel, 5 );
  if buttonSelected = mrOk then
  begin
    if not SZ_Enter.Form1.User_is_admin  then // Проверка если пользователь админ
    begin
      SZ_VARIABLES.Form20.OracleDataSet1.SetVariable( 'SZ_ID', Db_Info_MainSZ_ID.AsInteger );
      OraclePackage1.CallProcedure( 'Reject_SZ_by_ID',[ Db_Info_MainSZ_ID.AsInteger,
                                                        SZ_Enter.Form1.User_id,
                                                        1 ] );
      buttonSelected := MessageDlg ( 'Добавить причину отмены подписи с/з?', mtConfirmation, mbOkCancel, 5 );
      if buttonSelected = mrOk then
      begin
         SZ_COMMET_CREAT.Form4.v_Otdel := 1;
         SZ_COMMET_CREAT.Form4.ShowModal; //Форма ввода комментариев
      end;
      Db_Info_Main.Refresh;
    end
    else
    begin
      SZ_VARIABLES.Form20.OracleDataSet1.SetVariable( 'SZ_ID', Db_Info_MainSZ_ID.AsInteger );
      SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 7;
      SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '33';
      SZ_USERS_4_SIGN_ADMIN.Form39.ShowModal;
      OraclePackage1.CallProcedure( 'Reject_SZ_by_ID',[ Db_Info_MainSZ_ID.AsInteger,
                                                        SZ_USERS_4_SIGN_ADMIN.Form39.User_id,
                                                        1 ] );
      Db_Info_Main.Refresh;
    end;
  end;
end;

procedure TForm40.DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
 if not Db_Main_Appr_Steps.IsEmpty then
 Begin
   if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '002' then Background := $00EEEEAF
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '003' then Background := $0000D7FF
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '004' then Background := $0000D7FF
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '001' then Background := $00E6D8AD
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '006' then Background := $00E6D8AD
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '007' then Background := $00CBC0FF
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '005' then Background := $00CBC0FF;

   if ( Db_Main_Appr_StepsSTATUS.AsString = 'Согласован' )
            And ( Column.FieldName = 'STATUS' ) then Background := $0098FB98
   else if ( Pos ( 'Отказ', Db_Main_Appr_StepsSTATUS.AsString ) <> 0 ) then
   Begin
    Background := $00C1B6FF;
    AFont.Color := clRed;
   End
   else if ( Pos ( 'На рассмотр', Db_Main_Appr_StepsSTATUS.AsString ) <> 0 )
            And ( Column.FieldName = 'STATUS' ) then Background := $0000D7FF
   else if ( Db_Main_Appr_StepsSTATUS.AsString = 'Не получен' )
            And ( Column.FieldName = 'STATUS' ) then Background := clWhite;
 End;
end;

procedure TForm40.Db_Info_Count_2AfterRefresh(DataSet: TDataSet);
begin
  Db_Info_Main.Refresh;
  TrayIcon1.Visible := true; //Показываем значок трея
  TrayIcon1.Animate := true; //Включаем анимацию (имитация мигания значка)
  TrayIcon1.BalloonHint := 'У Вас новая с/з на подпись!' + '(' + DateTimeToStr( Now() ) + ')';
  TrayIcon1.ShowBalloonHint;
  TrayIcon1.Animate := false; //Выключаем анимацию
  TrayIcon1.IconIndex := 0; //Устанавливаем индекс картинку в начало
end;

procedure TForm40.dsd1Click(Sender: TObject);
begin
 if not Db_Info_Main.IsEmpty then
   begin
      SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Db_Info_MainSZ_ID.AsInteger);
      DBGridEh_SIGN.SaveBookmark;
      SZ_PRINT.Form16.ShowModal;
      DBGridEh_SIGN.RestoreBookmark;
   end;
end;

procedure TForm40.E_Det_KdChange(Sender: TObject);
begin
 Db_Info_Main.SetVariable( 'vKod', E_Det_Kd.Text );
 if Db_Info_Main.Active
 then
   Db_Info_Main.Refresh;
end;

procedure TForm40.E_Det_NameChange(Sender: TObject);
begin
 Db_Info_Main.SetVariable( 'vNaim', E_Det_Name.Text );
 if Db_Info_Main.Active
 then
   Db_Info_Main.Refresh;
end;

procedure TForm40.E_Det_NumChange(Sender: TObject);
begin
 Db_Info_Main.SetVariable( 'vNom', E_Det_Num.Text );
 if Db_Info_Main.Active
 then
   Db_Info_Main.Refresh;
end;

procedure TForm40.E_Sz_NumChange(Sender: TObject);
begin
 Db_Info_Main.SetVariable( 'v_Sz_Num', E_Sz_Num.Text );
 if Db_Info_Main.Active
 then
   Db_Info_Main.Refresh;
end;

procedure TForm40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not Exit_btn_is_pushed then
  begin
   SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Tray'); //При закрытии формы, сворачиваем ее в трей
   if SZ_Enter.Form1.User_is_admin then
   begin
    if SZ_USER_LIST.Form38.Showing then //Если показывается таблица пользователей онлайн, то ее закрываем
    begin
      SZ_USER_LIST.Form38.Close;
    end;
   end;
  end;
end;

procedure TForm40.FormShow(Sender: TObject);
begin
    //Объявляем переменные
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_DATE',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_ID',otInteger);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_CHS_PRNT',otInteger);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_KOD_OBR',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_NAME_OBR',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_NOMER_OBR',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_KD_OBR',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_ADD_OBR',otInteger);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_STR_NUM',otString);
    Form40.Caption := 'База запросов стоимости оборудования' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_PROG_VERSION');
    TrayIcon1.Visible := true;
    Form40.WindowState := wsNormal;
    Form40.FormStyle := fsStayOnTop;
    Form40.FormStyle := fsNormal;
   {****************************************** Отрываем датасеты *****************************************}
    //Основная таблица
    Db_Info_Main.Close;
    Db_Info_Main.Open;
    //Состав
    Db_Sz_Content.Close;
    Db_Sz_Content.Open;
    //Подписание
    Db_Main_Appr_Steps.Close;
    Db_Main_Appr_Steps.Open;
    //Уведомления
    Db_Notifications.Close;
    Db_Notifications.Open;
    //Уведомления админа
    Db_Admin_Notifications.Close;
    Db_Admin_Notifications.Open;
    //Кол-во с/з на подписание
    Db_Info_Count.Close;
    Db_Info_Count.Open;
    //Кол-во с/з на подписание
    Db_Info_Count_2.Close;
    Db_Info_Count_2.Open;
    //Исполнители
    DS_Users.Close;
    DS_Users.Open;
    {*****************************************************************************************************}
    //Если пользователь админ
    if SZ_Enter.Form1.User_is_admin then
    begin
     SZ_USER_LIST.Form38.Show; //Показывает таблицу пользователей, которые онлайн
     N20.Visible := true; // Показываем кнопку для открытия списка пользователей онлайн (если закрыли)
    end;
    Timer1.Enabled := true;
    Timer3.Enabled := false;
    LCB_Contact.Text := 'ВСЕ';
    E_Sz_Num.Clear;
    E_Det_Name.Clear;
    E_Det_Num.Clear;
    E_Det_Kd.Clear;
    New_Sz_Counter := Db_Info_CountNUM_STR.AsInteger;
end;

procedure TForm40.N1Click(Sender: TObject);
begin
    SZ_SEARCH.Form26.ShowModal;
end;

procedure TForm40.N20Click(Sender: TObject);
begin
     if not SZ_USER_LIST.Form38.Showing
     then
       SZ_USER_LIST.Form38.Show //Показать список пользователей
     Else if SZ_USER_LIST.Form38.Showing
     then
       SZ_USER_LIST.Form38.SetFocus //Показать список пользователей

end;

procedure TForm40.N21Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable( 'SZ_KOD_OBR', Db_Sz_ContentSZ_CODE_OB.AsString);
  SZ_SEARCH.Form26.ShowModal;
end;

procedure TForm40.SIGN_BTNClick(Sender: TObject);
   var
    UserAllow, buttonSelected, usersign :integer;
begin
     buttonSelected := MessageDlg ('Вы уверенны что хотите подписать служебную записку?', mtConfirmation, mbOkCancel, 5);
     if buttonSelected = mrOk then
     begin
       if not SZ_Enter.Form1.User_is_admin  then // Проверка если пользователь админ
       begin
         UserAllow := OraclePackage1.CallIntegerFunction( 'Change_Status_by_ID',[ Db_Info_MainSZ_ID.AsInteger,
                                                                                  Sz_Enter.Form1.User_Id,
                                                                                  1 ] ); //Меняем статус с/з
         if UserAllow = 1 then //Если подписание прошло успешно, обновляем таблицу
           begin
            DBGridEh_SIGN.StartLoadingStatus('Загрузка данных! Ожидайте...');
            Db_Info_Main.Refresh;
            DBGridEh_SIGN.FinishLoadingStatus();
           end
           else if UserAllow = 2 then //Если уже подписана, выводим инфо, обновляем таблицу
           begin
            MessageDlg( 'Эта служебная записка уже подписана!', MtInformation, [mbOk], 1 );
            DBGridEh_SIGN.StartLoadingStatus('Загрузка данных! Ожидайте...');
            Db_Info_Main.Refresh;
            DBGridEh_SIGN.FinishLoadingStatus();
           end;
       end
       else
       begin
         {******************Администратор подписывает за того пользователя (на выбор), от кого с/з***************************}
         SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 7;
         SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '59';
         SZ_USERS_4_SIGN_ADMIN.Form39.ShowModal;
         UserAllow := OraclePackage1.CallIntegerFunction( 'Change_Status_by_ID',[ Db_Info_MainSZ_ID.AsInteger,
                                                                                  SZ_USERS_4_SIGN_ADMIN.Form39.User_id,
                                                                                  1 ] ); //Меняем статус с/з
          if UserAllow = 1 then //Если подписание прошло успешно, обновляем таблицу
           begin
            DBGridEh_SIGN.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
            Db_Info_Main.Refresh;
            DBGridEh_SIGN.FinishLoadingStatus();
           end
          else if UserAllow = 2 then //Если уже подписана, выводим инфо, обновляем таблицу
           begin
            MessageDlg( 'Эта служебная записка уже подписана!', MtInformation, [mbOk], 1 );
            DBGridEh_SIGN.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
            Db_Info_Main.Refresh;
            DBGridEh_SIGN.FinishLoadingStatus();
           end;
       end;
     end;
end;

procedure TForm40.Timer1Timer(Sender: TObject);
begin
  Db_Info_Count.Refresh;
  TrayIcon1.Hint := 'Новые с/з от Отдела продаж' + '(' + Db_Info_CountNUM_STR.AsString + ')';
  Db_Admin_Notifications.Refresh;
  if Db_Info_CountNUM_STR.AsInteger <> 0 then
  begin
   TrayIcon1.Visible := true;
   TrayIcon1.Animate := true;
  end
  else
  begin
   TrayIcon1.Visible := false;
   TrayIcon1.Animate := false;
   TrayIcon1.IconIndex := 0;
  end;
  if Db_Info_Count_2NUM_STR.AsInteger <> Db_Info_CountNUM_STR.AsInteger then
  begin
    Db_Info_Count_2NUM_STR.AsInteger
  end;
end;

procedure TForm40.Timer3Timer(Sender: TObject);
begin
 OraclePackage1.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']); //Указываем время выхода
 Application.Terminate; //Отключаем приложение
end;

end.
