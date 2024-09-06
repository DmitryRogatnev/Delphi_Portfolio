unit SZ_ASUP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.Menus, OracleData, Oracle, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls, SZ_PRINT_SEO, SZ_VARIABLES, SZ_PRINT_SEO_FF,
  SZ_SEARCH, SZ_COMMET_VIEW, SZ_USER_LIST, DBCtrlsEh, Vcl.Mask, DBLookupEh;

type
  TForm25 = class(TForm)
    OraclePackage1: TOraclePackage;
    SimpleSQL: TOracleDataSet;
    OraclePackage2: TOraclePackage;
    Timer1: TTimer;
    DS_NOTIF: TOracleDataSet;
    MainMenu1: TMainMenu;
    dsd1: TMenuItem;
    ImageList1: TImageList;
    TrayIcon1: TTrayIcon;
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
    SEO_INFO_2: TOracleDataSet;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Timer3: TTimer;
    Panel1: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Panel3: TPanel;
    Panel10: TPanel;
    Panel5: TPanel;
    Btn_Comment: TButton;
    SIGN_BTN: TButton;
    Button6: TButton;
    DBGridEh_SIGN: TDBGridEh;
    DBGridEh_SIGN_CONTENT: TDBGridEh;
    SEO_SIGN: TOracleDataSet;
    SEO_SIGNSZ_ID: TFloatField;
    SEO_SIGNSZ_NUMB: TFloatField;
    SEO_SIGNSZ_DATE: TDateTimeField;
    SEO_SIGNCONTACT: TStringField;
    SEO_SIGNSZ_CONDITION: TFloatField;
    SEO_SIGNSZ_ID_CONT: TFloatField;
    SEO_SIGNSZ_CONT_Y: TFloatField;
    SEO_SIGNSZ_CONT_Y_DATE: TDateTimeField;
    SEO_SIGNSZ_FROM_Y: TFloatField;
    SEO_SIGNSZ_FROM: TStringField;
    SEO_SIGNSZ_FROM_Y_DATE: TDateTimeField;
    SEO_SIGNSZ_FROM_ID: TFloatField;
    SEO_SIGNSZ_TO_Y: TFloatField;
    SEO_SIGNSZ_TO: TStringField;
    SEO_SIGNSZ_TO_Y_DATE: TDateTimeField;
    SEO_SIGNSZ_TO_ID: TFloatField;
    SEO_SIGNSZ_ADD: TStringField;
    SEO_SIGNSZ_FREE_FORM_TOP: TStringField;
    SEO_SIGNSZ_FREE_FORM: TFloatField;
    SEO_SIGNSZ_PRICE_INDF: TFloatField;
    SEO_SIGNSTATUS: TStringField;
    SEO_SIGNSTATUS_VALUE: TFloatField;
    DS_SEOSIGN: TDataSource;
    DS_CONTENT_SEO: TDataSource;
    SZ_CONTENT_SEO: TOracleDataSet;
    SZ_CONTENT_SEOSZ_NUMB: TFloatField;
    SZ_CONTENT_SEOSZ_DATE: TDateTimeField;
    SZ_CONTENT_SEOSZ_NAME_OB: TStringField;
    SZ_CONTENT_SEOSZ_IBYAL_OB: TStringField;
    SZ_CONTENT_SEOSZ_COST_W_NDS: TFloatField;
    SZ_CONTENT_SEOSZ_NDS: TFloatField;
    SZ_CONTENT_SEOSZ_COST: TFloatField;
    SZ_CONTENT_SEOID_CONT: TFloatField;
    SZ_CONTENT_SEOID_STR: TFloatField;
    SZ_CONTENT_SEOSZ_IMP_NUMB: TFloatField;
    SZ_CONTENT_SEOSZ_IMP_DATE: TDateTimeField;
    SZ_CONTENT_SEOSZ_CODE_OB: TStringField;
    SEO_INFO_2NUM_STR: TFloatField;
    SEO_SIGNSZ_ASUP_INDF: TFloatField;
    PM_CONTENT: TPopupMenu;
    N21: TMenuItem;
    PM_GRID_SIGN: TPopupMenu;
    N11: TMenuItem;
    N15: TMenuItem;
    N4: TMenuItem;
    N20: TMenuItem;
    DS_NOTIFSZ_OPT: TFloatField;
    DS_NOTIFSZ_DATE: TDateTimeField;
    DS_NOTIFSZ_USERTYPE: TFloatField;
    DS_NOTIFSZ_OTDEL: TFloatField;
    DS_NOTIFSZ_ID_STR: TFloatField;
    Panel14: TPanel;
    Label4: TLabel;
    LCB_Contact_Seo: TDBLookupComboboxEh;
    E_Det_Name_Seo: TDBEditEh;
    E_Det_Num_Seo: TDBEditEh;
    E_Sz_Num_Seo: TDBEditEh;
    E_Det_Kd_Seo: TDBEditEh;
    Not_In_Asup_Check: TCheckBox;
    DS_Users_Seo: TOracleDataSet;
    FloatField2: TFloatField;
    StringField6: TStringField;
    Data_Users_Seo: TDataSource;
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dsd1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DS_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_CommentClick(Sender: TObject);
    procedure DBGridEh_SIGN_CONTENTDblClick(Sender: TObject);
    procedure Not_In_Asup_CheckClick(Sender: TObject);
    procedure E_Sz_Num_SeoChange(Sender: TObject);
    procedure E_Det_Name_SeoChange(Sender: TObject);
    procedure E_Det_Num_SeoChange(Sender: TObject);
    procedure E_Det_Kd_SeoChange(Sender: TObject);
    procedure LCB_Contact_SeoKeyValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     exit_btn_is_pushed :bool;
     new_sz_counter :integer;
  end;

var
  Form25: TForm25;

implementation

{$R *.dfm}

uses
SZ_Enter;

{$Region 'Комментарии'}

  procedure TForm25.Btn_CommentClick(Sender: TObject);
  begin
    if not Seo_Sign.IsEmpty then
    begin
     SZ_COMMET_VIEW.Form6.v_Otdel_type := 2;
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_SignSZ_ID.AsInteger);
     DBGridEh_SIGN.SaveBookmark;
     SZ_COMMET_VIEW.Form6.ShowModal;
     DBGridEh_SIGN.RestoreBookmark;
    end;
  end;
 {****** также работает через popupmenu PM_GRID_SIGN **********}
{$ENDRegion 'Комментарии'}

{$Region 'Отметка АСУП'}

procedure TForm25.Button5Click(Sender: TObject);
begin
  OraclePackage1.CallProcedure('Set_In_ASUP_by_ID',[ SEO_SIGNSZ_ID.AsInteger]);
  Seo_Sign.Refresh;
end;
{****** также работает через popupmenu PM_GRID_SIGN **********}
{$ENDRegion 'Отметка АСУП'}

{$Region 'Закрытие формы'}

  //Через кнопку
  procedure TForm25.Button6Click(Sender: TObject);
  begin
   SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Tray');
   if SZ_Enter.Form1.User_is_admin then
   begin
    if SZ_USER_LIST.Form38.Showing then //Если показывается таблица пользователей онлайн, то ее закрываем
    begin
     SZ_USER_LIST.Form38.Close;
    end;
   end;
   form25.Close;
  end;

  procedure TForm25.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
  if not  exit_btn_is_pushed then
    begin
      SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Tray');
       if SZ_Enter.Form1.User_is_admin then
       begin
        if SZ_USER_LIST.Form38.Showing then //Если показывается таблица пользователей онлайн, то ее закрываем
        begin
          SZ_USER_LIST.Form38.Close;
        end;
       end;
      form25.Close;
    end;
  end;

{$ENDRegion 'Закрытие формы'}

{$Region 'Окрашивание таблицы'}

  procedure TForm25.DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
    AFont: TFont; var Background: TColor; State: TGridDrawState);
  begin
  if not Seo_Sign.IsEmpty then
      begin
        case Seo_SignSZ_ASUP_INDF.AsInteger of
            0:
            begin
              Background := clInfoBk;
            end;
            1:
            begin
              Background := clWindow;
            end;
        end;
      end;
  end;

{$ENDRegion 'Окрашивание таблицы'}

{$Region 'Вывод на печать'}

  procedure TForm25.dsd1Click(Sender: TObject);
  begin
   if not Seo_Sign.IsEmpty then
     begin
      if Seo_signSZ_FREE_FORM.AsInteger = 0 then
      begin
        SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_SignSZ_ID.AsInteger);
        DBGridEh_SIGN.SaveBookmark;
        SZ_PRINT_SEO.form17.ShowModal;
        DBGridEh_SIGN.RestoreBookmark;
      end;
      if Seo_signSZ_FREE_FORM.AsInteger = 1 then
      begin
        SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_SignSZ_ID.AsInteger);
        DBGridEh_SIGN.SaveBookmark;
        SZ_PRINT_SEO_FF.Form32.ShowModal;
        DBGridEh_SIGN.RestoreBookmark;
      end;
     end;
  end;
 {****** также работает через popupmenu PM_GRID_SIGN **********}
{$ENDRegion 'Вывод на печать'}

{$Region 'Уведомления'}
  //Уведомления админа
  procedure TForm25.DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
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
  procedure TForm25.DS_NOTIFAfterRefresh(DataSet: TDataSet);
  begin
  ds_notif.Last;
    if ds_notifSZ_OPT.AsInteger = 1 then
    begin
      Timer1.Enabled := false; //Останавливаем таймер обновления датасета уведомлений
      TrayIcon1.Visible := true; //Показываем значок трея
      TrayIcon1.Animate := true; //Включаем анимацию (имитация мигания значка)
      TrayIcon1.BalloonHint := 'У Вас новая с/з от СЭО!' + '(' + ds_notifSZ_DATE.AsString + ')';
      TrayIcon1.ShowBalloonHint;
      OraclePackage1.CallProcedure('DeleteNotif',['3','33']);
      TrayIcon1.Animate := false; //Выключаем анимацию
      TrayIcon1.IconIndex := 0; //Устанавливаем индекс картинку в начало
      Sleep(2000); //Ждем 2 сек, чтобы уведомление не пропало моментально
      TrayIcon1.Visible := false; //Скрываем значок трея
      Timer1.Enabled := true; //Запускаем таймер обновления датасета уведомлений
      Seo_Sign.Refresh;
    end;
  end;
{$ENDRegion 'Уведомления'}

{$Region 'Открытие формы'}

  procedure TForm25.FormShow(Sender: TObject);
  begin
    DBGridEh_SIGN.StartLoadingStatus('Загрузка данных! Ожидайте...');
    DBGridEh_SIGN_CONTENT.StartLoadingStatus('Загрузка данных! Ожидайте...');
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
    Form25.Caption := 'База запросов стоимости оборудования' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_PROG_VERSION');
    TrayIcon1.Visible := true;
    Form25.WindowState := wsNormal;
    Form25.FormStyle := fsStayOnTop;
    Form25.FormStyle := fsNormal;
   {****************************************** Отрываем датасеты *****************************************}
    //Основная таблица
    seo_sign.Close;
    seo_sign.Open;
    //Состав с/з
    sz_content_seo.Close;
    sz_content_seo.Open;
    //Кол-во не отмеченных с/з
    seo_info_2.Close;
    seo_info_2.Open;
    //Уведомления админа
    ds_admin_notif.close;
    ds_admin_notif.SetVariable('vId',SZ_Enter.Form1.User_Id);
    ds_admin_notif.open;
    //Уведомления о новых с/з
    ds_notif.Close;
    ds_notif.open;
    //
    DS_Users_Seo.Close;
    Ds_Users_Seo.Open;
    {*****************************************************************************************************}
    //Если пользователь админ
    if SZ_Enter.Form1.User_is_admin then
    begin
     SZ_USER_LIST.Form38.Show; //Показывает таблицу пользователей, которые онлайн
     N20.Visible := true; // Показываем кнопку для открытия списка пользователей онлайн (если закрыли)
    end;
    Timer1.Enabled := true;
    Timer3.Enabled := false;
    LCB_Contact_Seo.Text := 'ВСЕ';
    E_Sz_Num_Seo.Clear;
    E_Det_Name_Seo.Clear;
    E_Det_Num_Seo.Clear;
    E_Det_Kd_Seo.Clear;
    new_sz_counter := SEO_INFO_2NUM_STR.AsInteger;
  //  if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')])) = 1 then
  //   begin
  //      N3.Checked := true;
  //   end;
    DBGridEh_SIGN.FinishLoadingStatus();
    DBGridEh_SIGN_CONTENT.FinishLoadingStatus();
  end;

{$ENDRegion 'Открытие формы'}

{$Region 'Поиск чертежного №'}

  procedure TForm25.N1Click(Sender: TObject);
  begin
    SZ_SEARCH.Form26.ShowModal;
  end;
  {****По двойному нажатию на оборудование в составе с/з открывается окно поиска чертежного №, в котором найдено это оборудование
  необходимо для поиска с/з СЭО (либо отдела продаж) в котором находится данное оборудование*****}
  procedure TForm25.DBGridEh_SIGN_CONTENTDblClick(Sender: TObject);
  begin
      SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_KOD_OBR',SZ_CONTENT_SEOSZ_CODE_OB.AsString);
      SZ_SEARCH.Form26.ShowModal;
  end;

{$ENDRegion 'Поиск чертежного №'}

procedure TForm25.N3Click(Sender: TObject);
var
  vexit:string;
  begin
//   if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]) = 0)  then
//    begin
//      vexit := 'C:\Users\' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_TERMINAL_NAME') + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SZ_SEO1.lnk';   //\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
//      CopyFile(PChar('\\server\forms\SZ_SEO1.lnk'),PChar(vexit),true);
//      N3.Checked := true;
//      OraclePackage2.CallProcedure('AutoLoad', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), 1]);
//    end
//    else if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]) = 1)  then
//    begin
//      vexit := 'C:\Users\' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_TERMINAL_NAME') + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SZ_SEO1.lnk';
//      DeleteFile(vexit);
//      N3.Checked := false;
//      OraclePackage2.CallProcedure('AutoLoad', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), 0]);
//    end;
  end;

{$Region 'Таймеры'}

  procedure TForm25.Timer1Timer(Sender: TObject);
  begin
    seo_info_2.Refresh;
    DS_NOTIF.Refresh;
    TrayIcon1.Hint := 'Новые с/з от СЭО' + '(' + SEO_INFO_2NUM_STR.AsString + ')';
    DS_ADMIN_NOTIF.Refresh;
    if SEO_INFO_2NUM_STR.AsInteger  <> 0 then
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
    if new_sz_counter <> SEO_INFO_2NUM_STR.AsInteger then
    begin
      new_sz_counter := SEO_INFO_2NUM_STR.AsInteger;
      Seo_Sign.Refresh;
    end;
  end;

  procedure TForm25.Timer3Timer(Sender: TObject);
  begin
      OraclePackage1.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']);
      Application.Terminate;
  end;

{$ENDRegion 'Таймеры'}

{$Region 'Фильтры по оборудованию'}

procedure TForm25.LCB_Contact_SeoKeyValueChanged(Sender: TObject);
begin
 if LCB_Contact_Seo.Text <> 'ВСЕ' then
 Begin
   SEO_SIGN.SetVariable( 'v_Contact', LCB_Contact_Seo.KeyValue );
   if SEO_SIGN.Active
   then
     SEO_SIGN.Refresh;
 End
 Else if LCB_Contact_Seo.Text = 'ВСЕ' then
 Begin
   SEO_SIGN.SetVariable( 'v_Contact', '%' );
   if SEO_SIGN.Active
   then
     SEO_SIGN.Refresh;
 End;
end;

procedure TForm25.Not_In_Asup_CheckClick(Sender: TObject);
begin
 if Not_In_Asup_Check.Checked then
 Begin
   Seo_Sign.SetVariable('v_Sz_Asup', '0');
   if Seo_Sign.Active then
   Begin
     Seo_Sign.Refresh;
   End;
 End
 Else if not Not_In_Asup_Check.Checked then
 Begin
   Seo_Sign.SetVariable('v_Sz_Asup', '%');
   if Seo_Sign.Active then
   Begin
     Seo_Sign.Refresh;
   End;
 End;

end;

procedure TForm25.E_Det_Kd_SeoChange(Sender: TObject);
begin
  SEO_SIGN.SetVariable('vKOD', E_Det_Kd_Seo.Text);
 if SEO_SIGN.Active then
 Begin
  SEO_SIGN.Refresh;
 End;
end;

procedure TForm25.E_Det_Name_SeoChange(Sender: TObject);
begin
 SEO_SIGN.SetVariable('vNAIM', E_Det_Name_Seo.Text);
 if SEO_SIGN.Active then
 Begin
  SEO_SIGN.Refresh;
 End;
end;

procedure TForm25.E_Det_Num_SeoChange(Sender: TObject);
begin
 SEO_SIGN.SetVariable('vNOM', E_Det_Num_Seo.Text);
 if SEO_SIGN.Active then
 Begin
  SEO_SIGN.Refresh;
 End;
end;

procedure TForm25.E_Sz_Num_SeoChange(Sender: TObject);
begin
 SEO_SIGN.SetVariable( 'v_Sz_Num', E_Sz_Num_Seo.Text );
 if SEO_SIGN.Active
 then
   SEO_SIGN.Refresh;
end;

{$ENDRegion 'Фильтры по оборудованию'}

end.
