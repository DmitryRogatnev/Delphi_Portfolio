unit SZ_MARKETING;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, Vcl.ExtCtrls, OracleData,
  Oracle, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ComCtrls, SZ_VARIABLES, SZ_PRINT_SEO, SZ_PRINT_SEO_FF, SZ_SEARCH, SZ_COMMET_VIEW, SZ_USER_LIST,
  DBCtrlsEh, Vcl.Mask, DBLookupEh;

type
  TForm22 = class(TForm)
    OraclePackage1: TOraclePackage;
    SimpleSQL: TOracleDataSet;
    OraclePackage2: TOraclePackage;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    dsd1: TMenuItem;
    N1: TMenuItem;
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
    N2: TMenuItem;
    N3: TMenuItem;
    Timer3: TTimer;
    Panel5: TPanel;
    Btn_Comment: TButton;
    Button6: TButton;
    DBGridEh_SIGN: TDBGridEh;
    DBGridEh_SIGN_CONTENT: TDBGridEh;
    PM_GRID_SIGN: TPopupMenu;
    N11: TMenuItem;
    N15: TMenuItem;
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
    DS_CONTENT_SEO: TDataSource;
    N20: TMenuItem;
    SZ_CONTENT_SEOSZ_CODE_OB: TStringField;
    PM_CONTENT: TPopupMenu;
    N21: TMenuItem;
    Panel14: TPanel;
    Label4: TLabel;
    LCB_Contact_Seo: TDBLookupComboboxEh;
    E_Det_Name_Seo: TDBEditEh;
    E_Det_Num_Seo: TDBEditEh;
    E_Sz_Num_Seo: TDBEditEh;
    DS_Users_Seo: TOracleDataSet;
    FloatField2: TFloatField;
    StringField6: TStringField;
    Data_Users_Seo: TDataSource;
    E_Det_Kd_Seo: TDBEditEh;
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure dsd1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Btn_CommentClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh_SIGN_CONTENTDblClick(Sender: TObject);
    procedure E_Sz_Num_SeoChange(Sender: TObject);
    procedure E_Det_Name_SeoChange(Sender: TObject);
    procedure E_Det_Num_SeoChange(Sender: TObject);
    procedure E_Det_Kd_SeoChange(Sender: TObject);
    procedure LCB_Contact_SeoKeyValueChanged(Sender: TObject);
    procedure N20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation

{$R *.dfm}

uses
SZ_Enter;

{$Region 'Комментарии'}

  procedure TForm22.Btn_CommentClick(Sender: TObject);
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

{$ENDRegion 'Комментарии'}

{$Region 'Закрытие формы'}
//Через кнопку
procedure TForm22.Button6Click(Sender: TObject);
begin
  OraclePackage1.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']);
  if SZ_Enter.Form1.User_is_admin then
  begin
   if SZ_USER_LIST.Form38.Showing then //Если показывается таблица пользователей онлайн, то ее закрываем
   begin
    SZ_USER_LIST.Form38.Close;
   end;
  end;
  form22.Close;
end;

procedure TForm22.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OraclePackage1.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']);
  if SZ_Enter.Form1.User_is_admin then
  begin
   if SZ_USER_LIST.Form38.Showing then //Если показывается таблица пользователей онлайн, то ее закрываем
   begin
    SZ_USER_LIST.Form38.Close;
   end;
  end;
end;

{$ENDRegion 'Закрытие формы'}

{$Region 'Вывод на печать'}

  procedure TForm22.dsd1Click(Sender: TObject);
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

{$ENDRegion 'Вывод на печать'}

{$Region 'Уведомления'}

  procedure TForm22.DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
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
{$ENDRegion 'Уведомления'}

{$Region 'Открытие формы'}

procedure TForm22.FormShow(Sender: TObject);
begin
  DBGridEh_SIGN.StartLoadingStatus('Загрузка данных! Ожидайте...');
  DBGridEh_SIGN_CONTENT.StartLoadingStatus('Загрузка данных! Ожидайте...');
  //Объявляем переменные
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_ID',otInteger);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_CHS_PRNT',otInteger);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_KOD_OBR',otString);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_NAME_OBR',otString);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_NOMER_OBR',otString);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_KD_OBR',otString);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_ADD_OBR',otInteger);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_STR_NUM',otString);
  form20.Caption := 'База запросов стоимости оборудования' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_PROG_VERSION');
 {****************************************** Отрываем датасеты *****************************************}
  //Подписанные
  Seo_Sign.Close;
  Seo_Sign.Open;
  //Состав с/з
  sz_content_seo.Close;
  sz_content_seo.Open;
  //Уведомления админа
  ds_admin_notif.Close;
  ds_admin_notif.SetVariable('vId',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'));
  ds_admin_notif.open;
  //
  DS_Users_Seo.Close;
  DS_Users_Seo.Open;
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
//  if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')])) = 1 then
//   begin
//      N3.Checked := true;
//   end;
  DBGridEh_SIGN.FinishLoadingStatus();
  DBGridEh_SIGN_CONTENT.FinishLoadingStatus();
end;
{$ENDRegion 'Открытие формы'}

{$Region 'Поиск чертежного номера'}

  procedure TForm22.N1Click(Sender: TObject);
  begin
    SZ_SEARCH.Form26.ShowModal;
  end;
  procedure TForm22.N20Click(Sender: TObject);
begin
     if not SZ_USER_LIST.Form38.Showing
     then
       SZ_USER_LIST.Form38.Show //Показать список пользователей
     Else if SZ_USER_LIST.Form38.Showing
     then
       SZ_USER_LIST.Form38.SetFocus //Показать список пользователей

end;

{****По двойному нажатию на оборудование в составе с/з открывается окно поиска чертежного №, в котором найдено это оборудование
  необходимо для поиска с/з СЭО (либо отдела продаж) в котором находится данное оборудование*****}
  procedure TForm22.DBGridEh_SIGN_CONTENTDblClick(Sender: TObject);
  begin
    SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_KOD_OBR',SZ_CONTENT_SEOSZ_CODE_OB.AsString);
    SZ_SEARCH.Form26.ShowModal;
  end;

{$ENDRegion 'Поиск чертежног номера'}

procedure TForm22.N3Click(Sender: TObject);
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
//Уведомление
procedure TForm22.Timer1Timer(Sender: TObject);
begin
  DS_Admin_NOTIF.Refresh;
end;
//Принудительное отключение
procedure TForm22.Timer3Timer(Sender: TObject);
begin
  OraclePackage1.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']);
  Application.Terminate;
end;

{$ENDRegion 'Таймеры'}

{$Region 'Фильтры по оборудованию'}
procedure TForm22.E_Det_Kd_SeoChange(Sender: TObject);
begin
  SEO_SIGN.SetVariable('vKOD', E_Det_Kd_Seo.Text);
 if SEO_SIGN.Active then
 Begin
  SEO_SIGN.Refresh;
 End;
end;

procedure TForm22.E_Det_Name_SeoChange(Sender: TObject);
begin
 SEO_SIGN.SetVariable('vNAIM', E_Det_Name_Seo.Text);
 if SEO_SIGN.Active then
 Begin
  SEO_SIGN.Refresh;
 End;
end;

procedure TForm22.E_Det_Num_SeoChange(Sender: TObject);
begin
 SEO_SIGN.SetVariable('vNOM', E_Det_Num_Seo.Text);
 if SEO_SIGN.Active then
 Begin
  SEO_SIGN.Refresh;
 End;
end;

procedure TForm22.E_Sz_Num_SeoChange(Sender: TObject);
begin
 SEO_SIGN.SetVariable( 'v_Sz_Num', E_Sz_Num_Seo.Text );
 if SEO_SIGN.Active
 then
   SEO_SIGN.Refresh;
end;

procedure TForm22.LCB_Contact_SeoKeyValueChanged(Sender: TObject);
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

{$ENDRegion 'Фильтры по оборудованию'}

end.
