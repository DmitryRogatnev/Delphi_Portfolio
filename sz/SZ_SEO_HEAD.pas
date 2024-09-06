unit SZ_SEO_HEAD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,SZ_VARIABLES, SZ_COMMET_VIEW_SEO, SZ_COMMET_CREAT, SZ_PRINT_SEO,
  Data.DB, Oracle, OracleData, Vcl.Grids, Vcl.DBGrids, Vcl.AppEvnts,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Menus, System.ImageList, Vcl.ImgList, ShellApi, System.UITypes, SZ_LOG,  SZ_PRINT_SEO_FF,
  SZ_COMMET_VIEW, Vcl.Mask, DBCtrlsEh, DBLookupEh, SZ_USER_LIST;

type
  TForm18 = class(TForm)
    PageControl1: TPageControl;
    EXP_SZ: TTabSheet;
    CONTROL_INFO: TPanel;
    INM_SZ: TTabSheet;
    OraclePackage2: TOraclePackage;
    OraclePackage1: TOraclePackage;
    DS_SEOSIGN: TDataSource;
    SimpleSQL: TOracleDataSet;
    TrayIcon1: TTrayIcon;
    Timer1: TTimer;
    SEO_INFO_2: TOracleDataSet;
    MainMenu1: TMainMenu;
    N211: TMenuItem;
    DS_CONTENT_2: TDataSource;
    DS_CONTENT_SEO: TDataSource;
    DS_NOTIF: TOracleDataSet;
    C1: TMenuItem;
    ImageList1: TImageList;
    N1: TMenuItem;
    N2: TMenuItem;
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
    N3: TMenuItem;
    N4: TMenuItem;
    Timer3: TTimer;
    Panel5: TPanel;
    Btn_Comment: TButton;
    SIGN_BTN: TButton;
    Button6: TButton;
    CANCEL_SIGN_BTN: TButton;
    DBGridEh_IMP_CONTENT: TDBGridEh;
    DBGridEh_IMP: TDBGridEh;
    Panel1: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel3: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DBGridEh_SIGN: TDBGridEh;
    DBGridEh2: TDBGridEh;
    STATUS_TYPE_DB: TOracleDataSet;
    STATUS_TYPE_DATA: TDataSource;
    SEO_INFO: TOracleDataSet;
    SEO_INFOSZ_ID: TFloatField;
    SEO_INFOSZ_NUMB: TFloatField;
    SEO_INFOSZ_DATE: TDateTimeField;
    SEO_INFOCONTACT: TStringField;
    SEO_INFOSZ_CONDITION: TFloatField;
    SEO_INFOSZ_ID_CONT: TFloatField;
    SEO_INFOSZ_CONT_Y: TFloatField;
    SEO_INFOSZ_CONT_Y_DATE: TDateTimeField;
    SEO_INFOSZ_FROM_Y: TFloatField;
    SEO_INFOSZ_FROM: TStringField;
    SEO_INFOSZ_FROM_Y_DATE: TDateTimeField;
    SEO_INFOSZ_FROM_ID: TFloatField;
    SEO_INFOSZ_TO_Y: TFloatField;
    SEO_INFOSZ_TO: TStringField;
    SEO_INFOSZ_TO_Y_DATE: TDateTimeField;
    SEO_INFOSZ_TO_ID: TFloatField;
    SEO_INFOSZ_ADD: TStringField;
    SEO_INFOSZ_FREE_FORM_TOP: TStringField;
    SEO_INFOSZ_FREE_FORM: TFloatField;
    SEO_INFOSZ_PRICE_INDF: TFloatField;
    SEO_INFOSTATUS: TStringField;
    SEO_INFOSTATUS_VALUE: TFloatField;
    DS_SEOINFO: TDataSource;
    SEO_SIGN: TOracleDataSet;
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
    SZ_CONTENT_SEO_2: TOracleDataSet;
    FloatField15: TFloatField;
    DateTimeField6: TDateTimeField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    DateTimeField7: TDateTimeField;
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
    SEO_INFO_2NUM_STR: TFloatField;
    TabSheet1: TTabSheet;
    DBGridEh_STATUS: TDBGridEh;
    STATUS_SZ_DB: TOracleDataSet;
    STATUS_SZ_DBSZ_NUMB: TFloatField;
    STATUS_SZ_DBSZ_DATE: TDateTimeField;
    STATUS_SZ_DBSZ_CONDITION: TFloatField;
    STATUS_SZ_DBID_STR: TFloatField;
    STATUS_SZ_DBSZ_INF_DATE: TDateTimeField;
    STATUS_SZ_DBAVTOR_MESSAGE: TStringField;
    STATUS_SZ_DBAVTOR_SZ: TStringField;
    STATUS_SZ_DBSTATUS: TStringField;
    STATUS_SZ_DBSZ_ID: TFloatField;
    STATUS_SZ_DBOTDEL_TYPE: TFloatField;
    STATUS_SZ_DATA: TDataSource;
    N20: TMenuItem;
    PM_GRID_FOR_SIG: TPopupMenu;
    N9: TMenuItem;
    N10: TMenuItem;
    MenuItem1: TMenuItem;
    N14: TMenuItem;
    PM_GRID_SIGN: TPopupMenu;
    N11: TMenuItem;
    N15: TMenuItem;
    PM_GRID_STATUS: TPopupMenu;
    N12: TMenuItem;
    N16: TMenuItem;
    SEO_INFO_3: TOracleDataSet;
    SEO_INFO_3NUM_STR: TFloatField;
    Panel4: TPanel;
    Label1: TLabel;
    LCB_Contact_Main: TDBLookupComboboxEh;
    E_Det_Name_Main: TDBEditEh;
    E_Det_Num_Main: TDBEditEh;
    E_Sz_Num_Main: TDBEditEh;
    Panel14: TPanel;
    Label4: TLabel;
    LCB_Contact_Seo: TDBLookupComboboxEh;
    LCB_Status_Seo: TDBLookupComboboxEh;
    E_Det_Name_Seo: TDBEditEh;
    E_Det_Num_Seo: TDBEditEh;
    E_Sz_Num_Seo: TDBEditEh;
    Grid_Appr_Steps: TDBGridEh;
    Panel8: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DTP_Date_To: TDateTimePicker;
    DTP_Date_From: TDateTimePicker;
    LCB_Contact_Info: TDBLookupComboboxEh;
    LCB_Otdel: TDBLookupComboboxEh;
    E_Sz_Num_Info: TDBEditEh;
    Db_Seo_Appr_Steps: TOracleDataSet;
    Db_Seo_Appr_StepsAPPR_STEP_NAME: TStringField;
    Db_Seo_Appr_StepsAPPR_STEP_NUM: TStringField;
    Db_Seo_Appr_StepsSTATUS: TStringField;
    Db_Seo_Appr_StepsRAZRAB_NAME: TStringField;
    Db_Seo_Appr_StepsDATE_IN: TDateTimeField;
    Db_Seo_Appr_StepsDATE_OUT: TDateTimeField;
    Db_Seo_Appr_StepsCEH_NAME: TStringField;
    Data_Seo_Appr_Steps: TDataSource;
    OTDEL_TYPE_DB: TOracleDataSet;
    OTDEL_TYPE_DBOTDEL_NAME: TStringField;
    OTDEL_TYPE_DBOTDEL_TYPE: TFloatField;
    OTDEL_TYPE_DATA: TDataSource;
    Ds_Users_Info: TOracleDataSet;
    FloatField3: TFloatField;
    StringField7: TStringField;
    Data_Users_Info: TDataSource;
    DS_Users_Seo: TOracleDataSet;
    FloatField2: TFloatField;
    StringField6: TStringField;
    Data_Users_Seo: TDataSource;
    STATUS_TYPE_DBAPPR_STEP_FLAG: TStringField;
    STATUS_TYPE_DBAPPR_STEP_NAME: TStringField;
    E_Det_Code_Main: TDBEditEh;
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N211Click(Sender: TObject);
    procedure DS_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure N4Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CANCEL_SIGN_BTNClick(Sender: TObject);
    procedure Btn_CommentClick(Sender: TObject);
    procedure SIGN_BTNClick(Sender: TObject);
    procedure DATE_FROMCloseUp(Sender: TObject);
    procedure DATE_TOCloseUp(Sender: TObject);
    procedure DBGridEh_STATUSGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SEO_INFO_3AfterRefresh(DataSet: TDataSet);
    procedure E_Sz_Num_MainChange(Sender: TObject);
    procedure E_Det_Name_MainChange(Sender: TObject);
    procedure E_Det_Num_MainChange(Sender: TObject);
    procedure LCB_Contact_MainKeyValueChanged(Sender: TObject);
    procedure E_Sz_Num_SeoChange(Sender: TObject);
    procedure E_Det_Name_SeoChange(Sender: TObject);
    procedure E_Det_Num_SeoChange(Sender: TObject);
    procedure LCB_Contact_SeoKeyValueChanged(Sender: TObject);
    procedure LCB_Status_SeoKeyValueChanged(Sender: TObject);
    procedure E_Sz_Num_InfoChange(Sender: TObject);
    procedure LCB_OtdelKeyValueChanged(Sender: TObject);
    procedure Grid_Appr_StepsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   exit_btn_is_pushed :bool;

    /// <summary> Определение наличия у с/з СЭО свободной формы</summary>
		/// <param name="Sz_Id"> Integer; <br/>  ID с/з   </param>
    /// <returns> Bool <br/> </returns>
    function Is_SZ_have_free_form(Sz_Id :integer) :bool;
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

uses
SZ_ENTER, SZ_USERS_4_SIGN_ADMIN;

{$Region 'Комментарии'}

  procedure TForm18.Btn_CommentClick(Sender: TObject);
  begin
    if pagecontrol1.ActivePage.Caption = 'С/з на подпись'then
    begin
     if not Seo_Info.IsEmpty then
     begin
      SZ_COMMET_VIEW.Form6.v_Otdel_type := 2;
      SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_InfoSZ_ID.AsInteger);
      DBGridEh_IMP.SaveBookmark;
      SZ_COMMET_VIEW.Form6.ShowModal;
      DBGridEh_IMP.RestoreBookmark;
     end;
    end;
    if pagecontrol1.ActivePage.Caption = 'Подписанные с/з'then
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
    if pagecontrol1.ActivePage.Caption = 'ИНФО'then
    begin
     if not Status_SZ_DB.IsEmpty then
     begin
      SZ_COMMET_VIEW.Form6.v_Otdel_type := 2;
      SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Status_SZ_DBSZ_ID.AsInteger);
      DBGridEh_SIGN.SaveBookmark;
      SZ_COMMET_VIEW.Form6.ShowModal;
      DBGridEh_SIGN.RestoreBookmark;
     end;
    end;
  end;

{$ENDRegion 'Комментарии'}

{$Region 'Отказ в подписании с/з'}

procedure TForm18.CANCEL_SIGN_BTNClick(Sender: TObject);
var buttonSelected :integer;
begin
if pagecontrol1.ActivePage.Caption = 'С/з на подпись'then
      begin
        buttonSelected := MessageDlg ('Вы уверенны что хотите отклонить служебную записку?', mtConfirmation, mbOkCancel, 5);
          if buttonSelected = mrOk then
          begin
            if not SZ_Enter.Form1.User_is_admin  then // Проверка если пользователь админ
            begin
              SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_InfoSZ_ID.AsInteger);
              OraclePackage1.CallProcedure('Reject_SZ_by_ID',[Seo_InfoSZ_ID.AsInteger, SZ_Enter.Form1.User_id, 2]);
              buttonSelected := MessageDlg ('Добавить причину отмены подписи с/з?', mtConfirmation, mbOkCancel, 5);
              if buttonSelected = mrOk then
                begin
                   SZ_COMMET_CREAT.Form4.v_Otdel := 1;
                   SZ_COMMET_CREAT.Form4.ShowModal; //Форма ввода комментариев
                end;
                Seo_Info.Refresh;
            end
            else
            begin
              SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_InfoSZ_ID.AsInteger);
              SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 2;
              SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '38';
              SZ_USERS_4_SIGN_ADMIN.Form39.ShowModal;
              OraclePackage1.CallProcedure('Reject_SZ_by_ID',[Seo_InfoSZ_ID.AsInteger, SZ_USERS_4_SIGN_ADMIN.Form39.User_id, 2]);
              Seo_Info.Refresh;
            end;
          end;
      end;
end;

{$ENDRegion 'Отказ в подписании с/з'}

{$Region 'Подписание с/з'}
procedure TForm18.SIGN_BTNClick(Sender: TObject);
var
  UserAllow, buttonSelected :integer;
begin
 if pagecontrol1.ActivePage.Caption = 'С/з на подпись'then
  begin
     buttonSelected := MessageDlg ('Вы уверенны что хотите подписать служебную записку?', mtConfirmation, mbOkCancel, 5);
     if buttonSelected = mrOk then
     begin
       if not SZ_Enter.Form1.User_is_admin  then // Проверка если пользователь админ
       begin
         UserAllow := OraclePackage1.CallIntegerFunction('Change_Status_by_ID',[Seo_InfoSZ_ID.AsInteger, Sz_Enter.Form1.User_Id, 2]); //Меняем статус с/з
         if UserAllow = 1 then //Если подписание прошло успешно, обновляем таблицу
           begin
            OraclePackage1.CallProcedure('Set_SEO_SZ_Numb_to_OP_by_ID', [Seo_InfoSZ_ID.AsInteger]);
            OraclePackage1.CallProcedure('Set_Prices_In_SEO_by_ID', [Seo_InfoSZ_ID.AsInteger]);
            DBGridEh_IMP.StartLoadingStatus('Загрузка данных! Ожидайте...');
            Seo_Info.Refresh;
            DBGridEh_IMP.FinishLoadingStatus();
           end
           else if UserAllow = 2 then //Если уже подписана, выводим инфо, обновляем таблицу
           begin
            MessageDlg('Эта служебная записка уже подписана!', MtInformation, [mbOk], 1);
            DBGridEh_IMP.StartLoadingStatus('Загрузка данных! Ожидайте...');
            Seo_Info.Refresh;
            DBGridEh_IMP.FinishLoadingStatus();
           end;
       end
       else
       begin
         {******************Администратор подписывает за того пользователя, кому с/з***************************}
         SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 2;
         SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '38';
         SZ_USERS_4_SIGN_ADMIN.Form39.ShowModal;
         UserAllow := OraclePackage1.CallIntegerFunction('Change_Status_by_ID',[Seo_InfoSZ_ID.AsInteger, SZ_USERS_4_SIGN_ADMIN.Form39.User_id, 2]); //Меняем статус с/з
         if UserAllow = 1 then //Если подписание прошло успешно, обновляем таблицу
           begin
             OraclePackage1.CallProcedure('Set_SEO_SZ_Numb_to_OP_by_ID', [Seo_InfoSZ_ID.AsInteger]);
             DBGridEh_IMP.StartLoadingStatus('Загрузка данных! Ожидайте...');
             Seo_Info.Refresh;
             DBGridEh_IMP.FinishLoadingStatus();
           end
         else if UserAllow = 2 then //Если уже подписана, выводим инфо, обновляем таблицу
           begin
             MessageDlg('Эта служебная записка уже подписана!', MtInformation, [mbOk], 1);
             DBGridEh_IMP.StartLoadingStatus('Загрузка данных! Ожидайте...');
             Seo_Info.Refresh;
             DBGridEh_IMP.FinishLoadingStatus();
           end;
       end;
     end;
  end;
end;

{$ENDRegion 'Подписание с/з'}

{$Region 'Фильтры таблиц'}
  //Фильтр по исполнителю

  //Дата С в ИНФО
  procedure TForm18.DATE_FROMCloseUp(Sender: TObject);
  begin
    if PageControl1.ActivePage.Caption = 'ИНФО' then
    begin
     DBGridEh_STATUS.StartLoadingStatus('Загрузка данных! Ожидайте...');
     STATUS_SZ_DB.SetVariable( 'DATE_FROM', DateToStr( DTP_Date_From.Date ) );
     STATUS_SZ_DB.Refresh;
      DBGridEh_STATUS.FinishLoadingStatus();
    end;
  end;
  //Дата ПО в ИНФО
  procedure TForm18.DATE_TOCloseUp(Sender: TObject);
  begin
    if PageControl1.ActivePage.Caption = 'ИНФО' then
    begin
     DBGridEh_STATUS.StartLoadingStatus('Загрузка данных! Ожидайте...');
     STATUS_SZ_DB.SetVariable( 'DATE_TO', DateToStr( DTP_Date_To.Date ) );
     STATUS_SZ_DB.Refresh;
     DBGridEh_STATUS.FinishLoadingStatus();
    end;
  end;
  //Фильтр по номеру с/з
  procedure TForm18.E_Det_Name_MainChange(Sender: TObject);
  begin
   Seo_Info.SetVariable( 'vNaim', E_Det_Name_Main.Text );
   if Seo_Info.Active
   then
     Seo_Info.Refresh;
  end;

  procedure TForm18.E_Det_Name_SeoChange(Sender: TObject);
begin
   Seo_Sign.SetVariable( 'vNaim', E_Det_Name_Seo.Text );
   if Seo_Sign.Active
   then
     Seo_Sign.Refresh;
end;

  procedure TForm18.E_Det_Num_MainChange(Sender: TObject);
  begin
   Seo_Info.SetVariable( 'vNom', E_Det_Num_Main.Text );
   if Seo_Info.Active
   then
     Seo_Info.Refresh;
  end;

  procedure TForm18.E_Det_Num_SeoChange(Sender: TObject);
  begin
   Seo_Sign.SetVariable( 'vNom', E_Det_Num_Seo.Text );
   if Seo_Sign.Active
   then
     Seo_Sign.Refresh;
  end;

  procedure TForm18.E_Sz_Num_InfoChange(Sender: TObject);
begin
  STATUS_SZ_DB.SetVariable( 'vNum', E_Sz_Num_Info.Text );
  if STATUS_SZ_DB.Active
  then
    STATUS_SZ_DB.Refresh;
end;

procedure TForm18.E_Sz_Num_MainChange(Sender: TObject);
  begin
    seo_info.SetVariable( 'vNum', E_Sz_Num_Main.Text );
    if Seo_Info.Active
    then
      seo_info.Refresh;
  end;

procedure TForm18.E_Sz_Num_SeoChange(Sender: TObject);
begin
   Seo_Sign.SetVariable( 'vNum', E_Sz_Num_Seo.Text );
   if Seo_Sign.Active
   then
     Seo_Sign.Refresh;
end;

{$ENDRegion 'Фильтры таблиц'}

{$Region 'Окрашивание таблицы'}

procedure TForm18.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not SEO_Sign.IsEmpty then
    begin
      case SEO_SignSZ_CONDITION.AsInteger of
          1:
          begin
            AFont.Color := clBlue;
          end;

          2:
          begin
             AFont.Color := clGreen;
          end;

          -1:
          begin
            AFont.Color := clRed; //Отклонена - красный
            AFont.Style := AFont.Style + [fsBold];
            Background := $00C1B6FF;
          end;
      end;
    end;
end;

procedure TForm18.DBGridEh_STATUSGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if not STATUS_SZ_DB.IsEmpty then
    begin
      case STATUS_SZ_DBSZ_CONDITION.AsInteger of //Окрашивание в зависимости от статуса
        2: //Если сообщение о том, что с/з подписана, то цвет текста строки синий
        begin
         AFont.Color := clBlue;
        end;
        -1: //Если сообщение о том, что с/з отклонена, то цвет текста строки красный, стиль шрифта "Жирный"
        begin
          AFont.Color := clRed;
          AFont.Style := AFont.Style + [fsBold];
          Background := $00C1B6FF;
        end;
      end;
    end;
end;

{$ENDRegion 'Окрашивание таблицы'}

{$Region 'Уведомления'}

//Уведомления админа
procedure TForm18.DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
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
//Уведомления о новых с/з на подписание
procedure TForm18.DS_NOTIFAfterRefresh(DataSet: TDataSet);
begin
  if ds_notif.FieldByName('SZ_OPT').AsInteger = 1 then
  begin
      Timer1.Enabled := false; //Останавливаем таймер обновления датасета уведомлений
      TrayIcon1.Visible := true; //Показываем значок трея
      TrayIcon1.Animate := true; //Включаем анимацию (имитация мигания значка)
      TrayIcon1.BalloonHint := 'У Вас новая с/з на подпись!' + '(' + ds_notif.FieldByName('SZ_DATE').AsString + ')';
      TrayIcon1.ShowBalloonHint;
      OraclePackage1.CallProcedure('DeleteNotif',['6','38']);
      TrayIcon1.Animate := false; //Выключаем анимацию
      TrayIcon1.IconIndex := 0; //Устанавливаем индекс картинку в начало
      Sleep(2000); //Ждем 2 сек, чтобы уведомление не пропало моментально
      TrayIcon1.Visible := false; //Скрываем значок трея
      Timer1.Enabled := true; //Запускаем таймер обновления датасета уведомлений
      Seo_Info.Refresh;
  end;
end;

{$ENDRegion 'Уведомления'}

{$Region 'Открытие формы'}

  procedure TForm18.FormShow(Sender: TObject);
  begin
    DBGridEh_IMP.StartLoadingStatus('Загрузка данных! Ожидайте...');
    DBGridEh_IMP_CONTENT.StartLoadingStatus('Загрузка данных! Ожидайте...');
    //Объявляем переменные
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_ID',otInteger);
    form18.WindowState := wsNormal;
    form18.FormStyle := fsStayOnTop;
    form18.FormStyle := fsNormal;
    form18.Caption := 'База запросов стоимости оборудования' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_PROG_VERSION');
    {****************************************** Отрываем датасеты *****************************************}
    //С/з на подписание
    Seo_Info.Close;
    Seo_Info.Open;
    //Подписанные
    Seo_Sign.Close;
    Seo_Sign.Open;
    //Состав с/з на подписание
    sz_content_seo.Close;
    sz_content_seo.Open;
    //Состав с/з подписанные
    sz_content_seo_2.Close;
    sz_content_seo_2.Open;
    //Увдомления админа
    ds_admin_notif.Close;
    ds_admin_notif.SetVariable( 'vId',SZ_Enter.Form1.User_Id );
    ds_admin_notif.open;
    //Возможные статусы
    Status_Type_DB.Close;
    Status_Type_DB.Open;
    //Исполнители
    DS_Users_Seo.Close;
    DS_Users_Seo.Open;
    DS_Users_Info.Close;
    DS_Users_Info.SetVariable( 'v_User_Type', '3' );
    Ds_Users_Info.Open;
    //Увдомления о новых с/з на подписание
    ds_notif.Close;
    ds_notif.Open;
    //Кол-во с/з на подписание - обновляется каждую сек
    Seo_Info_2.Close;
    seo_info_2.Open;
    //Кол-во с/з на подписание - обновляется после обновления ..._2
    Seo_Info_3.Close;
    seo_info_3.Open;
    //Таблица ИНФО
    Status_SZ_DB.Close;
    DTP_Date_To.Date := now ();
    DTP_Date_From.Date := IncMonth(Now(),-2);
    STATUS_SZ_DB.SetVariable( 'DATE_FROM', DateToStr( DTP_Date_From.Date ) );
    STATUS_SZ_DB.SetVariable( 'DATE_TO', DateToStr( DTP_Date_To.Date ) );
    Status_SZ_DB.Open;
    Db_Seo_Appr_Steps.Close;
    Db_Seo_Appr_Steps.Open;
    OTDEL_TYPE_DB.Close;
    OTDEL_TYPE_DB.Open;
    {*********************************************************************************************************************************}
    TrayIcon1.Visible := true;
    Timer1.Enabled := true;
    Timer3.Enabled := false;
    LCB_Contact_Main.Text := 'ВСЕ';
    //LCB_Contact_Seo.Text := 'ВСЕ';
    LCB_Contact_Info.Text := 'ВСЕ';
    //LCB_Status_Seo.Text := 'ВСЕ';
    E_Sz_Num_Seo.Clear;
    E_Sz_Num_Main.Clear;
    E_Sz_Num_Info.Clear;
    E_Det_Name_Main.Clear;
    E_Det_Num_Main.Clear;
    E_Det_Name_Seo.Clear;
    E_Det_Num_Seo.Clear;
    E_Det_Code_Main.Clear;
    //Если пользователь админ
    if SZ_Enter.Form1.User_is_admin then
    begin
     SZ_USER_LIST.Form38.Show; //Показывает таблицу пользователей, которые онлайн
     N20.Visible := true; // Показываем кнопку для открытия списка пользователей онлайн (если закрыли)
    end;
  //   if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')])) = 1 then
  //   begin
  //      N4.Checked := true;
  //   end;
    DBGridEh_IMP.FinishLoadingStatus;
    DBGridEh_IMP_CONTENT.FinishLoadingStatus();
  end;

procedure TForm18.Grid_Appr_StepsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if not Db_Seo_Appr_Steps.IsEmpty then
 Begin
   if Db_Seo_Appr_StepsAPPR_STEP_NUM.AsString = '002' then Background := $00EEEEAF
   Else if Db_Seo_Appr_StepsAPPR_STEP_NUM.AsString = '003' then Background := $0000D7FF
   Else if Db_Seo_Appr_StepsAPPR_STEP_NUM.AsString = '004' then Background := $0000D7FF
   Else if Db_Seo_Appr_StepsAPPR_STEP_NUM.AsString = '001' then Background := $00E6D8AD
   Else if Db_Seo_Appr_StepsAPPR_STEP_NUM.AsString = '006' then Background := $00E6D8AD
   Else if Db_Seo_Appr_StepsAPPR_STEP_NUM.AsString = '007' then Background := $00CBC0FF
   Else if Db_Seo_Appr_StepsAPPR_STEP_NUM.AsString = '005' then Background := $00CBC0FF;

   if ( Db_Seo_Appr_StepsSTATUS.AsString = 'Согласован' )
            And ( Column.FieldName = 'STATUS' ) then Background := $0098FB98
   else if ( Pos ( 'Отказ', Db_Seo_Appr_StepsSTATUS.AsString ) <> 0 ) then
   Begin
    Background := $00C1B6FF;
    AFont.Color := clRed;
   End
   else if ( Pos ( 'На рассмотр', Db_Seo_Appr_StepsSTATUS.AsString ) <> 0 )
            And ( Column.FieldName = 'STATUS' ) then Background := $0000D7FF
   else if ( Db_Seo_Appr_StepsSTATUS.AsString = 'Не получен' )
            And ( Column.FieldName = 'STATUS' ) then Background := clWhite;
 End;
end;

{$ENDRegion 'Открытие формы'}

{$Region 'Закрытие формы'}

  procedure TForm18.FormClose(Sender: TObject; var Action: TCloseAction);
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
      form18.Close;
    end;
  end;
  //Через кнопку
  procedure TForm18.Button6Click(Sender: TObject);
  begin
    SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Tray');
    if SZ_Enter.Form1.User_is_admin then
      begin
       if SZ_USER_LIST.Form38.Showing then //Если показывается таблица пользователей онлайн, то ее закрываем
       begin
         SZ_USER_LIST.Form38.Close;
       end;
      end;
    form18.Close;
  end;

{$ENDRegion 'Закрытие формы'}

{$Region 'Справка'}
  //Памятка
  procedure TForm18.N1Click(Sender: TObject);
  begin
   if FileExists('P:\Памятка пользователя База служебных записок.pdf') then
   begin
     ShellExecute(handle,nil,PChar('P:\Памятка пользователя База служебных записок.pdf'),nil,nil,SW_SHOWNORMAL);
   end;
  end;
  //Лог изменений
  procedure TForm18.N2Click(Sender: TObject);
  begin
     SZ_LOG.Form30.ShowModal;
  end;

{$ENDRegion 'Справка'}

{$Region 'Вывод на печать'}

procedure TForm18.N20Click(Sender: TObject);
begin
     if not SZ_USER_LIST.Form38.Showing
     then
       SZ_USER_LIST.Form38.Show //Показать список пользователей
     Else if SZ_USER_LIST.Form38.Showing
     then
       SZ_USER_LIST.Form38.SetFocus //Показать список пользователей

end;

procedure TForm18.N211Click(Sender: TObject);
begin
   if pagecontrol1.ActivePage.Caption = 'С/з на подпись'then
  begin
    if not Seo_info.IsEmpty then
    begin
      if seo_infoSZ_FREE_FORM.AsInteger = 0 then
        begin
          SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_infoSZ_ID.AsInteger);
          DBGridEh_IMP.SaveBookmark;
          SZ_PRINT_SEO.form17.ShowModal;
          DBGridEh_IMP.RestoreBookmark;
        end;
       if seo_infoSZ_FREE_FORM.AsInteger = 1 then
        begin
          SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_infoSZ_ID.AsInteger);
          DBGridEh_IMP.SaveBookmark;
          SZ_PRINT_SEO_FF.Form32.ShowModal;
          DBGridEh_IMP.RestoreBookmark;
        end;
    end;
  end
  else if pagecontrol1.ActivePage.Caption = 'Подписанные с/з'then
  begin
    if not Seo_sign.IsEmpty then
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
  end
  else if pagecontrol1.ActivePage.Caption = 'ИНФО'then
  begin
    if not STATUS_SZ_DB.IsEmpty then
    begin
     if not Form18.Is_SZ_have_free_form(STATUS_SZ_DBSZ_ID.AsInteger) then // Если с/з с шаблонным заголовком
      begin
        SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', STATUS_SZ_DBSZ_ID.AsInteger);
        DBGridEh_STATUS.SaveBookmark;
        SZ_PRINT_SEO.form17.ShowModal;
        DBGridEh_STATUS.RestoreBookmark;
      end
      else if Form18.Is_SZ_have_free_form(STATUS_SZ_DBSZ_ID.AsInteger) then // Если с/з с заголовком заполняемым исполнителем
      begin
        SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', STATUS_SZ_DBSZ_ID.AsInteger);
        DBGridEh_STATUS.SaveBookmark;
        SZ_PRINT_SEO_FF.Form32.ShowModal;
        DBGridEh_STATUS.RestoreBookmark;
      end;
    end;
  end;
end;

{$ENDRegion 'Вывод на печать'}

procedure TForm18.N4Click(Sender: TObject);
var
  vexit:string;
  begin
//   if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]) = 0)  then
//    begin
//      vexit := 'C:\Users\' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_TERMINAL_NAME') + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SZ_SEO1.lnk';   //\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
//      CopyFile(PChar('\\server\forms\SZ_SEO1.lnk'),PChar(vexit),true);
//      N4.Checked := true;
//      OraclePackage2.CallProcedure('AutoLoad', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), 1]);
//    end
//    else if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]) = 1)  then
//    begin
//      vexit := 'C:\Users\' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_TERMINAL_NAME') + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SZ_SEO1.lnk';
//      DeleteFile(vexit);
//      N4.Checked := false;
//      OraclePackage2.CallProcedure('AutoLoad', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), 0]);
//    end;
  end;

{$Region 'Действия при смене вкладок'}

  procedure TForm18.PageControl1Change(Sender: TObject);
  begin
     if pagecontrol1.ActivePage.Caption = 'С/з на подпись' then
     begin
       seo_info.Refresh;
       SIGN_BTN.Visible := true;
       CANCEL_SIGN_BTN.Visible := true;
     end;
     if pagecontrol1.ActivePage.Caption = 'Подписанные с/з' then
     begin
       seo_sign.Refresh;
       SIGN_BTN.Visible := false;
       CANCEL_SIGN_BTN.Visible := false;
     end;
     if pagecontrol1.ActivePage.Caption = 'ИНФО' then
     begin
       Status_SZ_DB.Refresh;
       SIGN_BTN.Visible := false;
       CANCEL_SIGN_BTN.Visible := false;
     end;
  end;

{$ENDRegion 'Действия при смене вкладок'}

{$Region 'Таймеры'}
  //Обновление уведолмений
  procedure TForm18.Timer1Timer(Sender: TObject);
  var
  num_for_sing_seo :integer;
  begin
    seo_info_2.Refresh;
    TrayIcon1.Hint := 'С/з на подпись' + '(' + Seo_Info_2NUM_STR.AsString + ')';
    ds_notif.Refresh;
    ds_admin_notif.Refresh;
    if Seo_Info_2NUM_STR.AsInteger  <> 0 then
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
    if Seo_Info_2NUM_STR.AsInteger <> Seo_Info_3NUM_STR.AsInteger then
    begin
     seo_info_3.Refresh;
    end;
  end;
  //Обновление основных таблиц после изменения кол-ва с/з во вспомогетельных
  procedure TForm18.SEO_INFO_3AfterRefresh(DataSet: TDataSet);
  begin
    Seo_Info.Refresh;
    TrayIcon1.Visible := true; //Показываем значок трея
    TrayIcon1.Animate := true; //Включаем анимацию (имитация мигания значка)
    TrayIcon1.BalloonHint := 'У Вас новая с/з на подпись!' + '(' + DateTimeToStr( Now() ) + ')';
    TrayIcon1.ShowBalloonHint;
    TrayIcon1.Animate := false; //Выключаем анимацию
    TrayIcon1.IconIndex := 0; //Устанавливаем индекс картинку в начало
  end;
  //Принудительное выключение
  procedure TForm18.Timer3Timer(Sender: TObject);
  begin
    OraclePackage1.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']);
    Application.Terminate;
  end;

{$ENDRegion 'Таймеры'}

{$Region 'Вспомогательные функции'}

 //Проверка наличия у с/з
function TForm18.Is_SZ_have_free_form(Sz_Id: Integer) :bool;
begin
  SimpleSQL.Close;
  SimpleSQL.SQL.Clear;
  SimpleSQL.DeleteVariables;
  SimpleSQL.DeclareVariable('Sz_Id',otInteger);
  SimpleSQL.SetVariable('Sz_Id', Sz_Id);
  SimpleSQL.SQL.Add('select t.sz_free_form from mrk.sz_seo_main t where t.SZ_ID = :Sz_Id');
  SimpleSQL.ExecSQL;
  SimpleSQL.Open;
  if SimpleSQL.Fields[0].AsInteger = 1 then result := true else result := false;
end;

procedure TForm18.LCB_Contact_MainKeyValueChanged(Sender: TObject);
begin
 if LCB_Contact_Main.Text <> 'ВСЕ' then
 Begin
   SEO_INFO.SetVariable( 'vContact', LCB_Contact_Main.KeyValue );
   if SEO_INFO.Active
   Then
     SEO_INFO.Refresh;
 End
 Else if LCB_Contact_Main.Text = 'ВСЕ' then
 Begin
   SEO_INFO.SetVariable( 'vContact', '%' );
   if SEO_INFO.Active
   then
     SEO_INFO.Refresh;
 End;

end;

procedure TForm18.LCB_Contact_SeoKeyValueChanged(Sender: TObject);
begin
 if LCB_Contact_Seo.Text <> 'ВСЕ' then
 Begin
   SEO_SIGN.SetVariable( 'vContact', LCB_Contact_Seo.KeyValue );
   if SEO_SIGN.Active
   Then
     SEO_SIGN.Refresh;
 End
 Else if LCB_Contact_Seo.Text = 'ВСЕ' then
 Begin
   SEO_SIGN.SetVariable( 'vContact', '%' );
   if SEO_SIGN.Active
   then
     SEO_SIGN.Refresh;
 End;

end;

procedure TForm18.LCB_OtdelKeyValueChanged(Sender: TObject);
begin
  DBGridEh_STATUS.StartLoadingStatus('Загрузка данных! Ожидайте...');
  STATUS_SZ_DB.SetVariable( 'vOtdeltype', LCB_Otdel.KeyValue );
  STATUS_SZ_DB.Refresh;
  if LCB_Otdel.KeyValue = 1
  then
  Begin
    Ds_Users_Info.SetVariable('v_User_Type', 1);
    if Ds_Users_Info.Active
    then
      Ds_Users_Info.Refresh;
  End
  Else if LCB_Otdel.KeyValue = 2 then
  Begin
    Ds_Users_Info.SetVariable('v_User_Type', 3);
    if Ds_Users_Info.Active
    then
      Ds_Users_Info.Refresh;
  End;
  DBGridEh_STATUS.FinishLoadingStatus();
end;

procedure TForm18.LCB_Status_SeoKeyValueChanged(Sender: TObject);
begin
  SEO_SIGN.SetVariable( 'v_Appr_Step', LCB_Status_Seo.KeyValue );
  if SEO_SIGN.Active
  then
    SEO_SIGN.Refresh;
end;

{$ENDRegion 'Вспомогательные функции'}

end.
