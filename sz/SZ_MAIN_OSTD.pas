unit SZ_MAIN_OSTD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Oracle, OracleData, SZ_VARIABLES, SZ_COMMET_CREAT,SZ_PRINT, SZ_COMMET_VIEW, SZ_OSTD_CHECK,
  Vcl.AppEvnts, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Menus, ShellApi,
  System.ImageList, Vcl.ImgList, System.UITypes, SZ_LOG, SZ_USER_LIST, Vcl.Mask,
  DBCtrlsEh, DBLookupEh;

type
  TForm13 = class(TForm)
    DS_Users: TOracleDataSet;
    DS_UsersID: TFloatField;
    SimpleSQL: TOracleDataSet;
    OraclePackage2: TOraclePackage;
    OraclePackage1: TOraclePackage;
    TrayIcon1: TTrayIcon;
    Timer1: TTimer;
    DS_NOTIF: TOracleDataSet;
    MainMenu1: TMainMenu;
    dsd1: TMenuItem;
    N1: TMenuItem;
    DBGridEh1: TDBGridEh;
    SZ_CONTENT: TOracleDataSet;
    SZ_CONTENTSZ_NUMB: TFloatField;
    SZ_CONTENTSZ_DATE: TDateTimeField;
    SZ_CONTENTSZ_NAME_OB: TStringField;
    SZ_CONTENTSZ_IBYAL_OB: TStringField;
    SZ_CONTENTID_CONT: TFloatField;
    SZ_CONTENTID_STR: TFloatField;
    SZ_CONTENTSZ_CHECK: TFloatField;
    DS_CONTENT: TDataSource;
    N2: TMenuItem;
    ImageList1: TImageList;
    Panel4: TPanel;
    N3: TMenuItem;
    N4: TMenuItem;
    DS_Admin_NOTIF: TOracleDataSet;
    DS_Admin_NOTIFID: TFloatField;
    DS_Admin_NOTIFSURNAME: TStringField;
    DS_Admin_NOTIFNAME: TStringField;
    DS_Admin_NOTIFPATRONYMIC: TStringField;
    DS_Admin_NOTIFID_TYPE_USERS: TIntegerField;
    DS_Admin_NOTIFID_TYPE_OTDEL: TIntegerField;
    DS_Admin_NOTIFPHONE: TStringField;
    DS_Admin_NOTIFUSER_ONLINE: TFloatField;
    DS_Admin_NOTIFENTER_DATE: TDateTimeField;
    DS_Admin_NOTIFUSER_NOTIF: TFloatField;
    DS_Admin_NOTIFMESSAGE: TStringField;
    N5: TMenuItem;
    N6: TMenuItem;
    PopupMenu1: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    SZ_CONTENTSZ_CODE_OB: TStringField;
    Timer3: TTimer;
    DBGridEh_OUTP: TDBGridEh;
    INFO_MAIN: TOracleDataSet;
    INFO_MAINSZ_ID: TFloatField;
    INFO_MAINSZ_NUMB: TFloatField;
    INFO_MAINSZ_DATE: TDateTimeField;
    INFO_MAINCONTACT: TStringField;
    INFO_MAINSZ_CONDITION: TFloatField;
    INFO_MAINSZ_KR: TFloatField;
    INFO_MAINSZ_FROM: TStringField;
    INFO_MAINSZ_TO: TStringField;
    INFO_MAINSZ_COPY: TStringField;
    INFO_MAINSTATUS: TStringField;
    INFO_MAINSZ_SEO_NUMB: TFloatField;
    INFO_MAINSZ_SEO_DATE: TDateTimeField;
    INFO_MAINSZ_TEMA: TStringField;
    INFO_MAINSZ_ID_CONT: TFloatField;
    INFO_MAINSTATUS_VALUE: TFloatField;
    INFO_MAINSZ_CONT_Y: TFloatField;
    INFO_MAINSZ_CONT_Y_DATE: TDateTimeField;
    INFO_MAINSZ_FROM_Y: TFloatField;
    INFO_MAINSZ_FROM_Y_DATE: TDateTimeField;
    INFO_MAINSZ_TO_Y: TFloatField;
    INFO_MAINSZ_TO_Y_DATE: TDateTimeField;
    INFO_MAINSZ_COPY_Y: TFloatField;
    INFO_MAINSZ_COPY_Y_DATE: TDateTimeField;
    INFO_MAINSZ_FROM_ID: TFloatField;
    DS_INFO_MAIN: TDataSource;
    Panel5: TPanel;
    Btn_Comment: TButton;
    Button5: TButton;
    Button6: TButton;
    Button1: TButton;
    PM_GRID_FOR_SIG: TPopupMenu;
    N9: TMenuItem;
    N10: TMenuItem;
    MenuItem1: TMenuItem;
    N14: TMenuItem;
    USERS_LBL: TLabel;
    CB_Contact: TDBLookupComboboxEh;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    N20: TMenuItem;
    INFO_MAINSZ_TO_ID: TFloatField;
    INFO_MAINSZ_COPY_ID: TFloatField;
    USERS_DATA: TDataSource;
    DS_UsersFIO: TStringField;
    N11: TMenuItem;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label9: TLabel;
    Db_Info_Count_2: TOracleDataSet;
    Db_Info_Count_2NUM_STR: TFloatField;
    Db_Info_Count: TOracleDataSet;
    Db_Info_CountNUM_STR: TFloatField;
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DS_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure dsd1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_ContactKeyValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Db_Info_Count_2AfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    exit_btn_is_pushed :bool;
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses
SZ_Enter, SZ_USERS_4_SIGN_ADMIN;

{$Region 'Отказ в подписании с/з'}

 procedure TForm13.Button1Click(Sender: TObject);
 var
 buttonSelected :integer;
 begin
 buttonSelected := MessageDlg ('Вы уверенны что хотите отклонить служебную записку?', mtConfirmation, mbOkCancel, 5);
 if buttonSelected = mrOk then
   begin
    if not SZ_Enter.Form1.User_is_admin  then // Проверка если пользователь админ
    begin
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
     OraclePackage1.CallProcedure('Reject_SZ_by_ID',[info_mainSZ_ID.AsInteger, SZ_Enter.Form1.User_id, 1]);
     buttonSelected := MessageDlg ('Добавить причину отмены подписи с/з?', mtConfirmation, mbOkCancel, 5);
     if buttonSelected = mrOk then
       begin
         SZ_COMMET_CREAT.Form4.v_Otdel := 1;
         SZ_COMMET_CREAT.Form4.ShowModal; //Форма ввода комментариев
       end;
     info_main.Refresh;
    end
    else
    begin
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
     SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 4;
     SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '04';
     SZ_USERS_4_SIGN_ADMIN.Form39.ShowModal;
     OraclePackage1.CallProcedure('Reject_SZ_by_ID',[info_mainSZ_ID.AsInteger, SZ_USERS_4_SIGN_ADMIN.Form39.User_id, 1]);
     info_main.Refresh;
    end;
   end;
 end;

{$ENDRegion 'Отказ в подписании с/з'}

{$Region 'Комментарии'}

  procedure TForm13.Button4Click(Sender: TObject);
  begin
   if not info_main.IsEmpty then
     begin
       SZ_COMMET_VIEW.Form6.v_Otdel_type := 1;
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
       SZ_COMMET_VIEW.Form6.ShowModal;
     end;
  end;

{$ENDRegion 'Комментарии'}

{$Region 'Подписание с/з'}

procedure TForm13.Button5Click(Sender: TObject);
var
  UserAllow, buttonSelected :integer;
begin
buttonSelected := MessageDlg ('Вы уверенны что хотите подписать служебную записку?', mtConfirmation, mbOkCancel, 5);
     if buttonSelected = mrOk then
     begin
       if not SZ_Enter.Form1.User_is_admin  then // Проверка если пользователь админ
       begin
         UserAllow := OraclePackage1.CallIntegerFunction('Change_Status_by_ID',[INFO_MAINSZ_ID.AsInteger, Sz_Enter.Form1.User_Id, 1]); //Меняем статус с/з
         if UserAllow = 1 then //Если подписание прошло успешно, обновляем таблицу
           begin
            DBGridEh_OUTP.StartLoadingStatus('Загрузка данных! Ожидайте...');
            info_main.Refresh;
            DBGridEh_OUTP.FinishLoadingStatus();
           end
           else if UserAllow = 2 then //Если уже подписана, выводим инфо, обновляем таблицу
           begin
            MessageDlg('Эта служебная записка уже подписана!', MtInformation, [mbOk], 1);
            DBGridEh_OUTP.StartLoadingStatus('Загрузка данных! Ожидайте...');
            info_main.Refresh;
            DBGridEh_OUTP.FinishLoadingStatus();
           end;
       end
       else
       begin
         {******************Администратор подписывает за того пользователя, кому копия (на выбор) с/з***************************}
         SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 4;
         SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '04';
         SZ_USERS_4_SIGN_ADMIN.Form39.ShowModal;
         UserAllow := OraclePackage1.CallIntegerFunction('Change_Status_by_ID',[INFO_MAINSZ_ID.AsInteger, SZ_USERS_4_SIGN_ADMIN.Form39.User_id, 1]); //Меняем статус с/з
          if UserAllow = 1 then //Если подписание прошло успешно, обновляем таблицу
             begin
               DBGridEh_OUTP.StartLoadingStatus('Загрузка данных! Ожидайте...');
               info_main.Refresh;
               DBGridEh_OUTP.FinishLoadingStatus();
             end
          else if UserAllow = 2 then //Если уже подписана, выводим инфо, обновляем таблицу
             begin
               MessageDlg('Эта служебная записка уже подписана!', MtInformation, [mbOk], 1);
               DBGridEh_OUTP.StartLoadingStatus('Загрузка данных! Ожидайте...');
               info_main.Refresh;
               DBGridEh_OUTP.FinishLoadingStatus();
             end;
       end;
     end;
end;

{$ENDRegion 'Подписание с/з'}

{$Region 'Фильтры таблиц'}

  //Фильтр по Исполнителю
  procedure TForm13.CB_ContactKeyValueChanged(Sender: TObject);
  begin
   if CB_Contact.Text <> 'ВСЕ' then
     begin
      DBGridEh_OUTP.StartLoadingStatus('Загрузка данных! Ожидайте...');
      info_main.SetVariable('vContact',CB_Contact.Text);
      if info_main.Active then
        begin
          info_main.Refresh;
        end;
      DBGridEh_OUTP.FinishLoadingStatus();
     end
   else if CB_Contact.Text = 'ВСЕ' then
     begin
      DBGridEh_OUTP.StartLoadingStatus('Загрузка данных! Ожидайте...');
      info_main.SetVariable('vContact','%');
      if info_main.Active then
        begin
          info_main.Refresh;
        end;
      DBGridEh_OUTP.FinishLoadingStatus();
     end;
  end;
  //Фильтр по номеру с/з
  procedure TForm13.Edit1Change(Sender: TObject);
  begin
   Info_main.SetVariable('vNum',Edit1.Text);
   Info_main.Refresh;
  end;
  //Установка наименования
  procedure TForm13.Edit2Change(Sender: TObject);
  begin
   Info_main.SetVariable('vNaim',Edit2.Text);
   Info_main.Refresh;
  end;
  //Установка чертежного номера
  procedure TForm13.Edit3Change(Sender: TObject);
  begin
   Info_main.SetVariable('vNom',Edit3.Text);
   Info_main.Refresh;
  end;

{$ENDRegion 'Фильтры таблиц'}

{$Region 'Окрашивание формы'}

procedure TForm13.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not DBGridEh1.DataSource.DataSet.IsEmpty then //Окрашивание таблицы состава с/з
    begin
      case DBGridEh1.DataSource.DataSet.FieldByName('SZ_CHECK').Value of
          1:
          begin
            AFont.Color := clGreen; //Оборудование принято - зеленый
          end;
          0:
          begin
           AFont.Color := clRed;  // Если нет, то красный
           AFont.Style := AFont.Style + [fsBold];
           Background := $00C1B6FF;
          end;
        end;
    end;
end;

procedure TForm13.Db_Info_Count_2AfterRefresh(DataSet: TDataSet);
begin
  Info_Main.Refresh;
  TrayIcon1.Visible := true; //Показываем значок трея
  TrayIcon1.Animate := true; //Включаем анимацию (имитация мигания значка)
  TrayIcon1.BalloonHint := 'У Вас новая с/з на подпись!' + '(' + DateTimeToStr( Now() ) + ')';
  TrayIcon1.ShowBalloonHint;
  TrayIcon1.Animate := false; //Выключаем анимацию
  TrayIcon1.IconIndex := 0; //Устанавливаем индекс картинку в начало
end;

{$ENDRegion 'Окрашивание формы'}

{$Region 'Вывод на печать'}

  procedure TForm13.dsd1Click(Sender: TObject);
  begin
    if not info_main.IsEmpty then
    begin
      if not info_main.IsEmpty then //Только если таблица не пуста
      begin
        SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
        SZ_PRINT.form16.ShowModal;
      end;
    end;
  end;

{$ENDRegion 'Вывод на печать'}

{$Region 'Открытие формы'}

procedure TForm13.FormShow(Sender: TObject);
var
count, i :integer;
begin
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_ID',otInteger);
  form13.WindowState := wsNormal;
  form13.FormStyle := fsStayOnTop;
  form13.FormStyle := fsNormal;
  form13.Caption := 'База запросов стоимости оборудования' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_PROG_VERSION');
  Info_Main.Close;
  Info_Main.Open;
  DS_Users.Close;
  DS_Users.Open;
  ds_notif.Close;
  ds_notif.Open;
  Db_Info_Count.Close;
  Db_Info_Count.Open;
  Db_Info_Count_2.Close;
  Db_Info_Count_2.Open;
  ds_admin_notif.Close;
  ds_admin_notif.SetVariable('vId',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'));
  ds_admin_notif.open;
  sz_content.Close;
  sz_content.Open;
  Edit1.Clear;
  CB_Contact.Text := 'ВСЕ';
  if SZ_Enter.Form1.User_is_admin then
    begin
     SZ_USER_LIST.Form38.Show; //Показывает таблицу пользователей, которые онлайн
     N20.Visible := true; // Показываем кнопку для открытия списка пользователей онлайн (если закрыли)
    end;
  Timer1.Enabled := true;
  Timer3.Enabled := false;
//  if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')])) = 1 then
//   begin
//      N6.Checked := true;
//   end;
end;

{$ENDRegion 'Открытие формы'}

{$Region 'Закрытие формы'}

//Через кнопку выход
procedure TForm13.Button6Click(Sender: TObject);
begin
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Tray');
  if SZ_Enter.Form1.User_is_admin then
   begin
    if SZ_USER_LIST.Form38.Showing then //Если показывается таблица пользователей онлайн, то ее закрываем
     begin
       SZ_USER_LIST.Form38.Close;
     end;
   end;
  form13.Close;
end;

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if not exit_btn_is_pushed then
  begin
   if SZ_Enter.Form1.User_is_admin then
   begin
    if SZ_USER_LIST.Form38.Showing then //Если показывается таблица пользователей онлайн, то ее закрываем
     begin
       SZ_USER_LIST.Form38.Close;
     end;
   end;
   form13.Close;
  end;
end;

{$ENDRegion 'Закрытие формы'}

{$Region 'Уведомления'}
  //Уведомления админа
  procedure TForm13.DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
  begin
    if DS_Admin_NOTIFUSER_NOTIF.AsInteger = 1 then //Если это сообщение информационное
    begin
      Timer1.Enabled := false; //Останавливаем таймер обновления датасета уведомлений
      MessageDlg (DS_Admin_NOTIFNAME.AsString + ', ' + DS_Admin_NOTIFMESSAGE.AsString, MtInformation, [mbOk], 1); //выводим сообщение
      {*************************** Формат сообщения <Имя пользователя>, <Текст увдомления> ***************************}
      OraclePackage1.CallProcedure('ReadMessage',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]); //Отмечаем что увдомление прочитано
      Timer1.Enabled := true; //Запускаем таймер обновления датасета уведомлений
    end;
    if DS_Admin_NOTIFUSER_NOTIF.AsInteger = 2 then //Если это сообщение с действием (обычно принудительное отключение)
    begin
      Timer1.Enabled := false; //Останавливаем таймер обновления датасета уведомлений
      Timer3.Enabled := true; //Запускаем таймер выключение (через 5 минут)
      MessageDlg (DS_Admin_NOTIFNAME.AsString + ', ' + DS_Admin_NOTIFMESSAGE.AsString, MtInformation, [mbOk], 1); //Уведомляем пользователя о том, что программа будет закрыта
      OraclePackage1.CallProcedure('ReadMessage',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]); //Отмечаем что увдомление прочитано
      Timer1.Enabled := true; //Запускаем таймер обновления датасета уведомлений
    end;
  end;
  //Уведомления о новых с/з
  procedure TForm13.DS_NOTIFAfterRefresh(DataSet: TDataSet);
  begin
    if ds_notif.FieldByName('SZ_OPT').AsInteger = 1 then
    begin
      Timer1.Enabled := false;
      TrayIcon1.Visible := true;
      TrayIcon1.Animate := true;
      TrayIcon1.BalloonHint := 'У Вас новая с/з на подпись!' + '(' + ds_notif.FieldByName('SZ_DATE').AsString + ')';
      TrayIcon1.ShowBalloonHint;
      OraclePackage1.CallProcedure('DeleteNotif',['5','33']);
      TrayIcon1.Animate := false;
      TrayIcon1.IconIndex := 0;
      Timer1.Enabled := true;
      info_main.Refresh;
    end;
  end;
{$ENDRegion 'Уведомления'}

{$Region 'Инструменты проверки ОСТД'}
//Открываем и там выбираем, что правильно, а что нет
procedure TForm13.N1Click(Sender: TObject);
var
id_cont :integer;
begin
 SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Info_MainSZ_ID.AsInteger);
 DBGridEh_OUTP.SaveBookmark;
 SZ_OSTD_CHECK.Form15.ShowModal;
 info_main.Refresh;
 DBGridEh_OUTP.RestoreBookmark;
 sz_content.Refresh;
end;
//Через PopupMenu, прямо в таблице состава с/з
//Кнопка "Принять"
procedure TForm13.N7Click(Sender: TObject);
begin
if not sz_content.IsEmpty then
  begin
  OraclePackage1.CallProcedure('Change_OSTD_Status_by_ID',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'),sz_contentID_STR.AsInteger,1]);
  sz_content.Session.Commit;
  sz_content.Refresh;
  end;
end;
//Кнопка "Отклонить"
procedure TForm13.N8Click(Sender: TObject);
var
 buttonSelected :integer;
begin
if not sz_content.IsEmpty then
  begin
  OraclePackage1.CallProcedure('Change_OSTD_Status_by_ID',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'),sz_contentID_STR.AsInteger,0]);
  sz_content.Session.Commit;
  sz_content.Refresh;
  buttonSelected := MessageDlg ('Добавить причину отмены позиции (при указании также просьба указывать номер позиции)?', mtConfirmation, mbOkCancel, 5);
    if buttonSelected = mrOk then
    begin
      SZ_COMMET_CREAT.Form4.v_Otdel := 1;
      SZ_COMMET_CREAT.Form4.ShowModal; //Форма ввода комментариев
    end;
  end;
end;
{$ENDRegion 'Инструменты проверки ОСТД'}

{$Region 'Справка'}

//Открытие памятки
procedure TForm13.N3Click(Sender: TObject);
begin
 if FileExists('P:\Памятка пользователя База служебных записок.pdf') then
   begin
    ShellExecute(handle,nil,PChar('P:\Памятка пользователя База служебных записок.pdf'),nil,nil,SW_SHOWNORMAL);
   end;
end;
//Открытие лога изменений
procedure TForm13.N4Click(Sender: TObject);
begin
 SZ_LOG.Form30.ShowModal;
end;

{$ENDRegion 'Справка'}

procedure TForm13.N6Click(Sender: TObject);
  var
  vexit:string;
  begin
//   if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]) = 0)  then
//    begin
//      vexit := 'C:\Users\' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_TERMINAL_NAME') + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SZ_SEO1.lnk';   //\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
//      CopyFile(PChar('\\server\forms\SZ_SEO1.lnk'),PChar(vexit),true);
//      N6.Checked := true;
//      OraclePackage2.CallProcedure('AutoLoad', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), 1]);
//    end
//    else if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]) = 1)  then
//    begin
//      vexit := 'C:\Users\' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_TERMINAL_NAME') + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SZ_SEO1.lnk';
//      DeleteFile(vexit);
//      N6.Checked := false;
//      OraclePackage2.CallProcedure('AutoLoad', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), 0]);
//    end;
  end;

{$Region 'Таймеры'}
  //Таймер на обновление уведомлений
  procedure TForm13.Timer1Timer(Sender: TObject);
  begin
    DS_ADMIN_NOTIF.Refresh;
    Db_Info_Count.Refresh;
    TrayIcon1.Hint := 'С/з от отдела продаж' + '(' + IntToStr(info_main.RecordCount) + ')';
    if info_main.RecordCount <> 0 then
    begin
     TrayIcon1.Visible := true;
     TrayIcon1.Animate := true;
    end
    else
    begin
     TrayIcon1.Animate := false;
     TrayIcon1.IconIndex := 0;
     TrayIcon1.Visible := false;
    end;
    if Db_Info_Count_2NUM_STR.AsInteger <> Db_Info_CountNUM_STR.AsInteger then
    begin
      Db_Info_Count_2NUM_STR.AsInteger
    end;
  end;
  //Таймер на принудительное отключение
  procedure TForm13.Timer3Timer(Sender: TObject);
  begin
   OraclePackage1.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']);
   Application.Terminate;
  end;

{$ENDRegion 'Таймеры'}

end.
