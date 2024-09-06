unit SZ_MAIN_HEAD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Oracle, OracleData, SZ_VARIABLES, SZ_COMMET_VIEW, SZ_COMMET_CREAT, SZ_PRINT,
  Vcl.AppEvnts, System.UITypes, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,SZ_PRINT_SEO, SZ_COMMET_VIEW_SEO,
  Vcl.Menus, ShellApi, System.ImageList, Vcl.ImgList, SZ_LOG, SZ_PRINT_SEO_FF,
  Vcl.Mask, DBCtrlsEh, DBLookupEh, SZ_USER_LIST;

type
  TForm12 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    Btn_Comment: TButton;
    Btn_Approve: TButton;
    Button6: TButton;
    Btn_Reject: TButton;
    TabSheet4: TTabSheet;
    SimpleSQL: TOracleDataSet;
    OraclePackage2: TOraclePackage;
    OraclePackage1: TOraclePackage;
    SIGN_INFO: TOracleDataSet;
    DS_SIGN_INFO: TDataSource;
    SEO_INFO: TOracleDataSet;
    DS_SEOINFO: TDataSource;
    Timer1: TTimer;
    SEO_INFO_2: TOracleDataSet;
    INFO_MAIN_2: TOracleDataSet;
    TrayIcon1: TTrayIcon;
    DS_NOTIF: TOracleDataSet;
    MainMenu1: TMainMenu;
    dsd1: TMenuItem;
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
    DS_CONTENT_2: TDataSource;
    SZ_CONTENT_2: TOracleDataSet;
    FloatField7: TFloatField;
    DateTimeField4: TDateTimeField;
    StringField17: TStringField;
    StringField18: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    N1: TMenuItem;
    ImageList1: TImageList;
    H1: TMenuItem;
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
    SZ_CONTENT_2SZ_CODE_OB: TStringField;
    N3: TMenuItem;
    N4: TMenuItem;
    Timer3: TTimer;
    Panel9: TPanel;
    Label17: TLabel;
    Panel16: TPanel;
    Panel2: TPanel;
    Label11: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel1: TPanel;
    Label6: TLabel;
    Label15: TLabel;
    Panel3: TPanel;
    Panel14: TPanel;
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
    DBGridEh_STATUS: TDBGridEh;
    DBGridEh_OUTP: TDBGridEh;
    SZ_CONTENT: TOracleDataSet;
    SZ_CONTENTSZ_NUMB: TFloatField;
    SZ_CONTENTSZ_DATE: TDateTimeField;
    SZ_CONTENTSZ_NAME_OB: TStringField;
    SZ_CONTENTSZ_IBYAL_OB: TStringField;
    SZ_CONTENTID_CONT: TFloatField;
    SZ_CONTENTID_STR: TFloatField;
    SZ_CONTENTSZ_CHECK: TFloatField;
    SZ_CONTENTSZ_CODE_OB: TStringField;
    DS_CONTENT: TDataSource;
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
    DS_INFO_MAIN: TDataSource;
    PM_GRID_FOR_SIG: TPopupMenu;
    N9: TMenuItem;
    N10: TMenuItem;
    N14: TMenuItem;
    PM_GRID_SIGN: TPopupMenu;
    N11: TMenuItem;
    N15: TMenuItem;
    PM_GRID_STATUS: TPopupMenu;
    N12: TMenuItem;
    N16: TMenuItem;
    N5: TMenuItem;
    DBGridEh_SIGN: TDBGridEh;
    SIGN_INFOSZ_ID: TFloatField;
    SIGN_INFOSZ_NUMB: TFloatField;
    SIGN_INFOSZ_DATE: TDateTimeField;
    SIGN_INFOSZ_CONT_Y: TFloatField;
    SIGN_INFOCONTACT: TStringField;
    SIGN_INFOSZ_CONT_Y_DATE: TDateTimeField;
    SIGN_INFOSZ_CONDITION: TFloatField;
    SIGN_INFOSZ_KR: TFloatField;
    SIGN_INFOSZ_TEMA: TStringField;
    SIGN_INFOSZ_ID_CONT: TFloatField;
    SIGN_INFOSZ_FROM_Y: TFloatField;
    SIGN_INFOSZ_FROM: TStringField;
    SIGN_INFOSZ_FROM_Y_DATE: TDateTimeField;
    SIGN_INFOSZ_TO_Y: TFloatField;
    SIGN_INFOSZ_TO: TStringField;
    SIGN_INFOSZ_TO_Y_DATE: TDateTimeField;
    SIGN_INFOSZ_COPY_Y: TFloatField;
    SIGN_INFOSZ_COPY: TStringField;
    SIGN_INFOSZ_COPY_Y_DATE: TDateTimeField;
    SIGN_INFOSTATUS: TStringField;
    SIGN_INFOSZ_FROM_ID: TFloatField;
    SIGN_INFOSZ_SEO_NUMB: TFloatField;
    SIGN_INFOSZ_SEO_DATE: TDateTimeField;
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
    INFO_MAINSZ_CONT_Y: TFloatField;
    INFO_MAINSZ_CONT_Y_DATE: TDateTimeField;
    INFO_MAINSZ_FROM_Y: TFloatField;
    INFO_MAINSZ_FROM_Y_DATE: TDateTimeField;
    INFO_MAINSZ_TO_Y: TFloatField;
    INFO_MAINSZ_TO_Y_DATE: TDateTimeField;
    INFO_MAINSZ_COPY_Y: TFloatField;
    INFO_MAINSZ_COPY_Y_DATE: TDateTimeField;
    INFO_MAINSZ_FROM_ID: TFloatField;
    STATUS_TYPE_DB: TOracleDataSet;
    STATUS_TYPE_DATA: TDataSource;
    OTDEL_TYPE_DB: TOracleDataSet;
    OTDEL_TYPE_DBOTDEL_NAME: TStringField;
    OTDEL_TYPE_DBOTDEL_TYPE: TFloatField;
    OTDEL_TYPE_DATA: TDataSource;
    DBGrid_Content: TDBGridEh;
    N20: TMenuItem;
    DBGridEh_IMP: TDBGridEh;
    DBGridEh1: TDBGridEh;
    PM_GRID_SEO: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    INFO_MAIN_2NUM_4_SIGN: TFloatField;
    SEO_INFO_2NUM_4_SIGN: TFloatField;
    DBGridEh4: TDBGridEh;
    N6: TMenuItem;
    Info_Main_3: TOracleDataSet;
    Info_Main_3NUM_4_SIGN: TFloatField;
    SEO_INFO_3: TOracleDataSet;
    SEO_INFO_3NUM_4_SIGN: TFloatField;
    Panel4: TPanel;
    Label2: TLabel;
    CB_Contact: TDBLookupComboboxEh;
    E_Det_Name_Main: TDBEditEh;
    E_Det_Num_Main: TDBEditEh;
    E_Sz_Num_Main: TDBEditEh;
    Panel6: TPanel;
    Label1: TLabel;
    LCB_Contact_Sign: TDBLookupComboboxEh;
    LCB_Status_Sign: TDBLookupComboboxEh;
    E_Det_Name_Sign: TDBEditEh;
    E_Det_Num_Sign: TDBEditEh;
    E_Sz_Num_Sign: TDBEditEh;
    DBGridEh2: TDBGridEh;
    Db_Sign_Appr_Steps: TOracleDataSet;
    Data_Sign_Appr_Steps: TDataSource;
    Db_Seo_Appr_Steps: TOracleDataSet;
    Data_Seo_Appr_Steps: TDataSource;
    Panel10: TPanel;
    Label4: TLabel;
    LCB_Contact_Seo: TDBLookupComboboxEh;
    E_Det_Name_Seo: TDBEditEh;
    E_Det_Num_Seo: TDBEditEh;
    E_Sz_Num_Seo: TDBEditEh;
    DBGridEh3: TDBGridEh;
    Panel11: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DTP_Date_To: TDateTimePicker;
    DTP_Date_From: TDateTimePicker;
    LCB_Contact_Info: TDBLookupComboboxEh;
    LCB_Otdel: TDBLookupComboboxEh;
    E_Sz_Num_Info: TDBEditEh;
    DS_Users_Seo: TOracleDataSet;
    FloatField1: TFloatField;
    StringField6: TStringField;
    Ds_Users_Info: TOracleDataSet;
    FloatField2: TFloatField;
    StringField7: TStringField;
    DS_Users: TOracleDataSet;
    DS_UsersID: TFloatField;
    DS_UsersFIO: TStringField;
    USERS_DATA: TDataSource;
    Data_Users_Seo: TDataSource;
    Data_Users_Info: TDataSource;
    SIGN_INFOSTATUS_VALUE: TFloatField;
    SIGN_INFOSZ_TO_ID: TFloatField;
    SIGN_INFOSZ_COPY_ID: TFloatField;
    SIGN_INFOSZ_ID_SEO: TFloatField;
    SIGN_INFOSZ_IS_DEL: TFloatField;
    STATUS_TYPE_DBAPPR_STEP_FLAG: TStringField;
    STATUS_TYPE_DBAPPR_STEP_NAME: TStringField;
    Db_Sign_Appr_StepsAPPR_STEP_NAME: TStringField;
    Db_Sign_Appr_StepsAPPR_STEP_NUM: TStringField;
    Db_Sign_Appr_StepsSTATUS: TStringField;
    Db_Sign_Appr_StepsRAZRAB_NAME: TStringField;
    Db_Sign_Appr_StepsDATE_IN: TDateTimeField;
    Db_Sign_Appr_StepsDATE_OUT: TDateTimeField;
    Db_Sign_Appr_StepsCEH_NAME: TStringField;
    Db_Seo_Appr_StepsAPPR_STEP_NAME: TStringField;
    Db_Seo_Appr_StepsAPPR_STEP_NUM: TStringField;
    Db_Seo_Appr_StepsSTATUS: TStringField;
    Db_Seo_Appr_StepsRAZRAB_NAME: TStringField;
    Db_Seo_Appr_StepsDATE_IN: TDateTimeField;
    Db_Seo_Appr_StepsDATE_OUT: TDateTimeField;
    Db_Seo_Appr_StepsCEH_NAME: TStringField;
    procedure Btn_ApproveClick(Sender: TObject);
    procedure Btn_CommentClick(Sender: TObject);
    procedure Btn_RejectClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DS_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure DBGridEh_SIGNGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dsd1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure N4Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh_OUTPGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure CB_ContactKeyValueChanged(Sender: TObject);
    procedure LCB_Status_SignKeyValueChanged(Sender: TObject);
    procedure OTDEL_TYPE_INFO_LCBKeyValueChanged(Sender: TObject);
    procedure DATE_FROMCloseUp(Sender: TObject);
    procedure DATE_TOCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh_STATUSGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh_IMPGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Info_Main_3AfterRefresh(DataSet: TDataSet);
    procedure SEO_INFO_3AfterRefresh(DataSet: TDataSet);
    procedure E_Sz_Num_MainChange(Sender: TObject);
    procedure E_Det_Name_MainChange(Sender: TObject);
    procedure E_Det_Num_MainChange(Sender: TObject);
    procedure E_Sz_Num_SignChange(Sender: TObject);
    procedure E_Det_Name_SignChange(Sender: TObject);
    procedure E_Det_Num_SignChange(Sender: TObject);
    procedure LCB_Contact_SignKeyValueChanged(Sender: TObject);
    procedure LCB_Contact_SeoKeyValueChanged(Sender: TObject);
    procedure LCB_Contact_InfoKeyValueChanged(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
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
  Form12: TForm12;

implementation

{$R *.dfm}

uses
Sz_enter, SZ_USERS_4_SIGN_ADMIN;

{$Region 'Отказ в подписании с/з'}

   procedure TForm12.Btn_RejectClick(Sender: TObject);
   var
   buttonSelected :integer;
  begin
   if pagecontrol1.ActivePage.Caption = 'С/з на подпись'then
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
            SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 2;
            SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '33';
            SZ_USERS_4_SIGN_ADMIN.Form39.ShowModal;
            OraclePackage1.CallProcedure('Reject_SZ_by_ID',[info_mainSZ_ID.AsInteger, SZ_USERS_4_SIGN_ADMIN.Form39.User_id, 1]);
            info_main.Refresh;
          end;
        end;
      end;
   if pagecontrol1.ActivePage.Caption = 'Входящие с/з'then
      begin
        buttonSelected := MessageDlg ('Вы уверенны что хотите отклонить служебную записку?', mtConfirmation, mbOkCancel, 5);
        if buttonSelected = mrOk then
        begin
          if Seo_InfoSZ_TO_Y.AsInteger <> 0 then
          begin
            if not SZ_Enter.Form1.User_is_admin  then // Проверка если пользователь админ
            begin
              SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', SEO_INFOSZ_ID.AsInteger);
              OraclePackage1.CallProcedure('Reject_SZ_by_ID',[Seo_InfoSZ_ID.AsInteger, SZ_Enter.Form1.User_id, 2]);
              buttonSelected := MessageDlg ('Добавить причину отмены подписи с/з?', mtConfirmation, mbOkCancel, 5);
              if buttonSelected = mrOk then
                begin
                   SZ_COMMET_CREAT.Form4.v_Otdel := 2;
                   SZ_COMMET_CREAT.Form4.ShowModal; //Форма ввода комментариев
                end;
              Seo_Info.Refresh;
            end
            else
            begin
              SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
              SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 2;
              SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '33';
              SZ_USERS_4_SIGN_ADMIN.Form39.ShowModal;
              OraclePackage1.CallProcedure('Reject_SZ_by_ID',[info_mainSZ_ID.AsInteger, SZ_USERS_4_SIGN_ADMIN.Form39.User_id, 2]);
              Seo_Info.Refresh;
            end;
          end
          else MessageDlg('Эта служебная записка уже подписана!', MtInformation, [mbOk], 1);
        end;
      end;
  end;

{$ENDRegion 'Отказ в подписании с/з'}

{$Region 'Комментарии'}

procedure TForm12.Btn_CommentClick(Sender: TObject);
 begin
  if pagecontrol1.ActivePage.Caption = 'С/з на подпись'then
  begin
   if not info_main.IsEmpty then
     begin
       SZ_COMMET_VIEW.Form6.v_Otdel_type := 1;
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
       DBGridEh_OUTP.SaveBookmark;
       SZ_COMMET_VIEW.Form6.ShowModal;
       DBGridEh_OUTP.RestoreBookmark;
     end;
  end
  else if pagecontrol1.ActivePage.Caption = 'Подписанные с/з'then
  begin
    if not Sign_Info.IsEmpty then
      begin
         SZ_COMMET_VIEW.Form6.v_Otdel_type := 1;
         SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Sign_InfoSZ_ID.AsInteger);
         DBGridEh_SIGN.SaveBookmark;
         SZ_COMMET_VIEW.Form6.ShowModal;
         DBGridEh_SIGN.RestoreBookmark;
      end;
  end;
  if pagecontrol1.ActivePage.Caption = 'Входящие с/з' then
  begin
    if not Seo_Info.IsEmpty then
      begin
         SZ_COMMET_VIEW.Form6.v_Otdel_type := 2;
         SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_infoSZ_ID.AsInteger);
         DBGridEh_IMP.SaveBookmark;
         SZ_COMMET_VIEW.Form6.ShowModal;
         DBGridEh_IMP.RestoreBookmark;
      end;
   end;

  if pagecontrol1.ActivePage.Caption = 'ИНФО' then //Если таблица ИНФО
   begin
    if not seo_info.IsEmpty then
      begin
         SZ_COMMET_VIEW.Form6.v_Otdel_type := STATUS_SZ_DBOTDEL_TYPE.AsInteger;
         SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', STATUS_SZ_DBSZ_ID.AsInteger);
         DBGridEh_STATUS.SaveBookmark;
         SZ_COMMET_VIEW.Form6.ShowModal;
         DBGridEh_STATUS.RestoreBookmark;
      end;
   end;
 end;

{$ENDRegion 'Комментарии'}

{$Region 'Подписание с/з'}

  procedure TForm12.Btn_ApproveClick(Sender: TObject);
   var
    UserAllow, buttonSelected, usersign :integer;
  begin
    if pagecontrol1.ActivePage.Caption = 'С/з на подпись' then
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
         {******************Администратор подписывает за того пользователя (на выбор), от кого с/з***************************}
         SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 2;
         SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '33';
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
    end
    else if pagecontrol1.ActivePage.Caption = 'Входящие с/з' then
    Begin
    buttonSelected := MessageDlg ('Вы уверенны что хотите подписать служебную записку?', mtConfirmation, mbOkCancel, 5);
     if buttonSelected = mrOk then
     begin
       if not SZ_Enter.Form1.User_is_admin  then // Проверка если пользователь админ
       begin
         UserAllow := OraclePackage1.CallIntegerFunction('Change_Status_by_ID',[SEO_INFOSZ_ID.AsInteger, Sz_Enter.Form1.User_Id, 2]); //Меняем статус с/з
         if UserAllow = 1 then //Если подписание прошло успешно, обновляем таблицу
           begin
            DBGridEh_OUTP.StartLoadingStatus('Загрузка данных! Ожидайте...');
            SEO_INFO.Refresh;
            DBGridEh_OUTP.FinishLoadingStatus();
           end
           else if UserAllow = 2 then //Если уже подписана, выводим инфо, обновляем таблицу
           begin
            MessageDlg('Эта служебная записка уже подписана!', MtInformation, [mbOk], 1);
            DBGridEh_OUTP.StartLoadingStatus('Загрузка данных! Ожидайте...');
            SEO_INFO.Refresh;
            DBGridEh_OUTP.FinishLoadingStatus();
           end;
       end
       else
       begin
         {******************Администратор подписывает за того пользователя, кому с/з***************************}
         SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 2;
         SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '33';
         SZ_USERS_4_SIGN_ADMIN.Form39.ShowModal;
         UserAllow := OraclePackage1.CallIntegerFunction('Change_Status_by_ID',[SEO_INFOSZ_ID.AsInteger, SZ_USERS_4_SIGN_ADMIN.Form39.User_id, 2]); //Меняем статус с/з
          if UserAllow = 1 then //Если подписание прошло успешно, обновляем таблицу
             begin
               DBGridEh_OUTP.StartLoadingStatus('Загрузка данных! Ожидайте...');
               SEO_INFO.Refresh;
               DBGridEh_OUTP.FinishLoadingStatus();
             end
          else if UserAllow = 2 then //Если уже подписана, выводим инфо, обновляем таблицу
             begin
               MessageDlg('Эта служебная записка уже подписана!', MtInformation, [mbOk], 1);
               DBGridEh_OUTP.StartLoadingStatus('Загрузка данных! Ожидайте...');
               SEO_INFO.Refresh;
               DBGridEh_OUTP.FinishLoadingStatus();
             end;
       end;
     end;
    end;
  end;

{$ENDRegion 'Подписание с/з'}

{$Region 'Фильтры таблиц'}

  procedure TForm12.CB_ContactKeyValueChanged(Sender: TObject);
  begin
    if CB_Contact.Text <> 'ВСЕ'
    then
    begin
      DBGridEh_SIGN.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
      Info_Main.SetVariable( 'vContact', CB_Contact.Text );
      if Info_Main.Active then
      begin
        Info_Main.Refresh;
      end;
      DBGridEh_SIGN.FinishLoadingStatus();
    end
    else if CB_Contact.Text = 'ВСЕ' then
    begin
      DBGridEh_SIGN.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
      Info_Main.SetVariable( 'vContact', '%' );
      if Info_Main.Active then
      begin
        Info_Main.Refresh;
      end;
      DBGridEh_SIGN.FinishLoadingStatus();
    end;
  end;
  //Дата "С" для ИНФО
  procedure TForm12.DATE_FROMCloseUp(Sender: TObject);
  begin
    if PageControl1.ActivePage.Caption = 'ИНФО' then
      begin
        DBGridEh_STATUS.StartLoadingStatus('Загрузка данных! Ожидайте...');
        STATUS_SZ_DB.SetVariable( 'DATE_FROM',DateToStr( DTP_Date_From.Date ) );
        STATUS_SZ_DB.Refresh;
        DBGridEh_STATUS.FinishLoadingStatus();
      end;
  end;
  // Дата "ПО" для ИНФО
  procedure TForm12.DATE_TOCloseUp(Sender: TObject);
  begin
  if PageControl1.ActivePage.Caption = 'ИНФО' then
    begin
      DBGridEh_STATUS.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
      STATUS_SZ_DB.SetVariable( 'DATE_TO',DateToStr( DTP_Date_To.Date ) );
      STATUS_SZ_DB.Refresh;
      DBGridEh_STATUS.FinishLoadingStatus();
    end;
  end;
  //Фильтр по номеру с/з
  //Установка наименования

procedure TForm12.E_Det_Name_MainChange(Sender: TObject);
begin
   Info_main.SetVariable( 'vNaim',E_Det_Name_Main.Text );
   If Info_Main.Active
   Then
     INFO_MAIN.Refresh;
end;

procedure TForm12.E_Det_Name_SignChange(Sender: TObject);
begin
   Sign_Info.SetVariable('vNaim',E_Det_Name_Sign.Text);
   if SIGN_INFO.Active
   Then
     Sign_info.Refresh;
end;

procedure TForm12.E_Det_Num_MainChange(Sender: TObject);
begin
   Info_main.SetVariable( 'vNom',E_Det_Num_Main.Text );
   If Info_Main.Active
   Then
     INFO_MAIN.Refresh;
end;

procedure TForm12.E_Det_Num_SignChange(Sender: TObject);
begin
   Sign_Info.SetVariable('vNom',E_Det_Num_Sign.Text);
   if SIGN_INFO.Active
   Then
     Sign_info.Refresh;
end;

procedure TForm12.E_Sz_Num_MainChange(Sender: TObject);
begin
   Info_main.SetVariable( 'vNom',E_Sz_Num_Main.Text );
   If Info_Main.Active
   Then
     INFO_MAIN.Refresh;
end;

procedure TForm12.E_Sz_Num_SignChange(Sender: TObject);
begin
   Sign_info.SetVariable( 'vNom', E_Sz_Num_Sign.Text );
   if SIGN_INFO.Active
   Then
     Sign_info.Refresh;
end;

//Смена отдела в ИНФО
  procedure TForm12.OTDEL_TYPE_INFO_LCBKeyValueChanged(Sender: TObject);
  begin
    DBGridEh_STATUS.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
    STATUS_SZ_DB.SetVariable( 'vOtdeltype', LCB_Otdel.KeyValue );
    if LCB_Otdel.KeyValue = 1 then // также меняется и набор исполнтелей в комбобоксе "Исполнитель"
    begin
      DS_Users_Info.SetVariable( 'v_User_Type', 1 );
      DS_Users_Info.Refresh;
    end
    else if LCB_Otdel.KeyValue = 2 then
    begin
      DS_Users_Info.SetVariable( 'v_User_Type', 3 );
      DS_Users_Info.Refresh;
    end;
    if STATUS_SZ_DB.Active then
    begin
      STATUS_SZ_DB.Refresh;
    end;
    DBGridEh_STATUS.FinishLoadingStatus();
  end;
  //Фильтр по статусу для таблицы "Подписанные с/з"
procedure TForm12.LCB_Contact_InfoKeyValueChanged(Sender: TObject);
begin
  if LCB_Contact_Info.Text <> 'ВСЕ'
  then
  begin
    DBGridEh_STATUS.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
    STATUS_SZ_DB.SetVariable( 'vContact', LCB_Contact_Info.Text );
    if STATUS_SZ_DB.Active then
    begin
      STATUS_SZ_DB.Refresh;
    end;
    DBGridEh_STATUS.FinishLoadingStatus();
  end
  else if LCB_Contact_Info.Text = 'ВСЕ' then
  begin
    DBGridEh_STATUS.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
    STATUS_SZ_DB.SetVariable( 'vContact', '%' );
    if STATUS_SZ_DB.Active then
    begin
      STATUS_SZ_DB.Refresh;
    end;
    DBGridEh_STATUS.FinishLoadingStatus();
  end;
end;

procedure TForm12.LCB_Contact_SeoKeyValueChanged(Sender: TObject);
begin
  if LCB_Contact_Seo.Text <> 'ВСЕ'
  then
  begin
    DBGridEh_IMP.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
    Seo_Info.SetVariable( 'vContact', LCB_Contact_Seo.Text );
    if Seo_Info.Active then
    begin
      Seo_Info.Refresh;
    end;
    DBGridEh_IMP.FinishLoadingStatus();
  end
  else if LCB_Contact_Seo.Text = 'ВСЕ' then
  begin
    DBGridEh_IMP.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
    Seo_Info.SetVariable( 'vContact', '%' );
    if Seo_Info.Active then
    begin
      Seo_Info.Refresh;
    end;
    DBGridEh_IMP.FinishLoadingStatus();
  end;
end;

procedure TForm12.LCB_Contact_SignKeyValueChanged(Sender: TObject);
begin
  if LCB_Contact_Sign.Text <> 'ВСЕ'
  then
  begin
    DBGridEh_SIGN.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
    Sign_Info.SetVariable( 'vContact', LCB_Contact_Sign.Text );
    if Sign_Info.Active then
    begin
      Sign_Info.Refresh;
    end;
    DBGridEh_SIGN.FinishLoadingStatus();
  end
  else if LCB_Contact_Sign.Text = 'ВСЕ' then
  begin
    DBGridEh_SIGN.StartLoadingStatus( 'Загрузка данных! Ожидайте...' );
    Sign_Info.SetVariable( 'vContact', '%' );
    if Sign_Info.Active then
    begin
      Sign_Info.Refresh;
    end;
    DBGridEh_SIGN.FinishLoadingStatus();
  end;
end;

procedure TForm12.LCB_Status_SignKeyValueChanged(Sender: TObject);
  begin
    DBGridEh_SIGN.StartLoadingStatus('Загрузка данных! Ожидайте...');
    SIGN_INFO.SetVariable('v_Appr_Step', LCB_Contact_Sign.KeyValue);
    if SIGN_INFO.Active
    Then
      SIGN_INFO.Refresh;
    DBGridEh_SIGN.FinishLoadingStatus();
  end;
{$ENDRegion 'Фильтры таблиц'}

{$Region 'Окрашивание формы'}

   //Окрашивание "Подписанные с/з"
   procedure TForm12.DBGridEh_SIGNGetCellParams(Sender: TObject; Column: TColumnEh;
   AFont: TFont; var Background: TColor; State: TGridDrawState);
    begin
      if not SIGN_INFO.IsEmpty then //Только если таблица не пуста
       begin
         case SIGN_INFOSTATUS_VALUE.AsInteger of //Окрашивание текста строк в зависимости от статуса
           5: //Если служебка принята в СЭО, то цвет синий
           begin
            AFont.Color := clBlue;
           end;
           6: //Если служебка отклонена, то цвет красный
           begin
            AFont.Color := clRed;
            AFont.Style := AFont.Style + [fsBold];
            Background := $00C1B6FF;
           end;
           0: //Пока не подписана исполнителем
           begin
            AFont.Color := clWindowText;
           end;
           else //Если служебка еще на стадии подписании (После того как подписал исполнитель и пока не подпишет СЭО), то цвет зеленый
           begin
            AFont.Color := clGreen;
           end;
         end;

         case SIGN_INFOSZ_KR.AsInteger of //Окрашивание фона строки, если
           1: //Служебка не проходит согласование с ОСТД (для ПГС или изделий по КР), то цвет фона голубой
           begin
            Background := clGradientInactiveCaption;
           end;
         end;
       end;
    end;
  //Окрашивание ИНФО
  procedure TForm12.DBGridEh_STATUSGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
  begin
    if not STATUS_SZ_DB.IsEmpty then  //Только если таблица не пуста
        begin
          if LCB_Otdel.KeyValue = 1 then
          begin

             case  STATUS_SZ_DBSZ_CONDITION.AsInteger of //Окрашивание в зависимости от статуса
                  3: //Если сообщение о том, что с/з подписана, то цвет текста строки синий
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
          end
          else if LCB_Otdel.KeyValue = 2 then
          begin
             case  STATUS_SZ_DBSZ_CONDITION.AsInteger of //Окрашивание в зависимости от статуса
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
          end
        end;
  end;

  procedure TForm12.DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
  begin
   if not Db_Sign_Appr_Steps.IsEmpty then
   Begin
     if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '002' then Background := $00EEEEAF
     Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '003' then Background := $0000D7FF
     Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '004' then Background := $0000D7FF
     Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '001' then Background := $00E6D8AD
     Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '006' then Background := $00E6D8AD
     Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '007' then Background := $00CBC0FF
     Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '005' then Background := $00CBC0FF;

     if ( Db_Sign_Appr_StepsSTATUS.AsString = 'Согласован' )
              And ( Column.FieldName = 'STATUS' ) then Background := $0098FB98
     else if ( Pos ( 'Отказ', Db_Sign_Appr_StepsSTATUS.AsString ) <> 0 ) then
     Begin
      Background := $00C1B6FF;
      AFont.Color := clRed;
     End
     else if ( Pos ( 'На рассмотр', Db_Sign_Appr_StepsSTATUS.AsString ) <> 0 )
              And ( Column.FieldName = 'STATUS' ) then Background := $0000D7FF
     else if ( Db_Sign_Appr_StepsSTATUS.AsString = 'Не получен' )
              And ( Column.FieldName = 'STATUS' ) then Background := clWhite;
   End;
  end;

procedure TForm12.DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
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

procedure TForm12.DBGridEh_IMPGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
  begin
    if not SEO_INFO.IsEmpty then
    begin
      if SEO_INFOSZ_TO_Y.AsInteger <> 0 then AFont.Color := clBlue else AFont.Color := clWindowText;
    end;
  end;
  //Окрашивание таблицы "С/з на подпись"
  procedure TForm12.DBGridEh_OUTPGetCellParams(Sender: TObject; Column: TColumnEh;
   AFont: TFont; var Background: TColor; State: TGridDrawState);
  begin
     if not INFO_MAIN.IsEmpty then //Только если таблица не пуста
      begin
        case INFO_MAINSZ_KR.AsInteger of //Окрашивание фона строки, если
          1: //Служебка не проходит согласование с ОСТД (для ПГС или изделий по КР), то цвет фона голубой
          begin
            Background := clGradientInactiveCaption;
          end;
          0: //В остальных случаях цвет фона белый
          begin
            Background := clWindow;
          end;
        end;
      end;
  end;

{$ENDRegion 'Окрашивание формы'}

{$Region 'Вывод на печать'}

  procedure TForm12.dsd1Click(Sender: TObject);
  begin
     if pagecontrol1.ActivePage.Caption = 'С/з на подпись'then
    begin
      if not info_main.IsEmpty then
      begin
        SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
        DBGridEh_OUTP.SaveBookmark;
        SZ_PRINT.form16.ShowModal;
        DBGridEh_OUTP.RestoreBookmark;
      end;
    end
    else if pagecontrol1.ActivePage.Caption = 'Подписанные с/з'then
    begin
      if not Sign_info.IsEmpty then
      begin
        SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Sign_InfoSZ_ID.AsInteger);
        DBGridEh_SIGN.SaveBookmark;
        SZ_PRINT.form16.ShowModal;
        DBGridEh_SIGN.RestoreBookmark;
      end;
    end;
     if pagecontrol1.ActivePage.Caption = 'Входящие с/з' then
    begin
      if not seo_info.IsEmpty then
      begin
       if seo_info.FieldByName('SZ_FREE_FORM').AsInteger = 0 then // Если с/з с шаблонным заголовком
         begin
           SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_infoSZ_ID.AsInteger);
           DBGridEh_IMP.SaveBookmark;
           SZ_PRINT_SEO.form17.ShowModal;
           DBGridEh_IMP.RestoreBookmark;
         end
       else if seo_info.FieldByName('SZ_FREE_FORM').AsInteger = 1 then // Если с/з с заголовком заполняемым исполнителем
         begin
           SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_infoSZ_ID.AsInteger);
           DBGridEh_IMP.SaveBookmark;
           SZ_PRINT_SEO_FF.Form32.ShowModal;
           DBGridEh_IMP.RestoreBookmark;
         end;
      end;
    end
    else if pagecontrol1.ActivePage.Caption = 'ИНФО' then //Таблица ИНФО
    begin
      if not STATUS_SZ_DB.IsEmpty then //Только если таблица не пуста
      begin
       if STATUS_SZ_DBOTDEL_TYPE.AsInteger = 1 then //Если с/з отдела продаж
       begin
         SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
         DBGridEh_STATUS.SaveBookmark;
         SZ_PRINT.form16.ShowModal;
         DBGridEh_STATUS.RestoreBookmark;
       end
       else if STATUS_SZ_DBOTDEL_TYPE.AsInteger = 2 then //Если с/з СЭО
       begin
         if not Form12.Is_SZ_have_free_form(STATUS_SZ_DBSZ_ID.AsInteger) then // Если с/з с шаблонным заголовком
         begin
           SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', STATUS_SZ_DBSZ_ID.AsInteger);
           DBGridEh_STATUS.SaveBookmark;
           SZ_PRINT_SEO.form17.ShowModal;
           DBGridEh_STATUS.RestoreBookmark;
         end
         else if Form12.Is_SZ_have_free_form(STATUS_SZ_DBSZ_ID.AsInteger) then // Если с/з с заголовком заполняемым исполнителем
         begin
           SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', STATUS_SZ_DBSZ_ID.AsInteger);
           DBGridEh_STATUS.SaveBookmark;
           SZ_PRINT_SEO_FF.Form32.ShowModal;
           DBGridEh_STATUS.RestoreBookmark;
         end;
       end;
      end;
    end;
  end;

{$ENDRegion 'Вывод на печать'}

{$Region 'Уведомления админа'}
//Получение сообщения
  procedure TForm12.DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
  begin
    if DS_Admin_NOTIF.FieldByName('USER_NOTIF').AsInteger = 1 then //Если это сообщение информационное
    begin
      Timer1.Enabled := false; //Останавливаем таймер обновления датасета уведомлений
      MessageDlg (DS_Admin_NOTIFNAME.AsString + ', ' + DS_Admin_NOTIFMESSAGE.AsString, MtInformation, [mbOk], 1); //выводим сообщение
      {*************************** Формат сообщения <Имя пользователя>, <Текст увдомления> ***************************}
      OraclePackage1.CallProcedure('ReadMessage',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]); //Отмечаем что увдомление прочитано
      Timer1.Enabled := true; //Запускаем таймер обновления датасета уведомлений
    end;
    if DS_Admin_NOTIF.FieldByName('USER_NOTIF').AsInteger = 2 then //Если это сообщение с действием (обычно принудительное отключение)
    begin
      Timer1.Enabled := false; //Останавливаем таймер обновления датасета уведомлений
      Timer3.Enabled := true; //Запускаем таймер выключение (через 5 минут)
      MessageDlg (DS_Admin_NOTIFNAME.AsString + ', ' + DS_Admin_NOTIFMESSAGE.AsString, MtInformation, [mbOk], 1); //Уведомляем пользователя о том, что программа будет закрыта
      OraclePackage1.CallProcedure('ReadMessage',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]); //Отмечаем что увдомление прочитано
      Timer1.Enabled := true; //Запускаем таймер обновления датасета уведомлений
    end;
  end;

{$ENDRegion 'Уведомления админа'}

{$Region 'Уведомление о новых с/з на подпись'}

  procedure TForm12.DS_NOTIFAfterRefresh(DataSet: TDataSet);
  begin
  ds_notif.First; //уведомления о новых с/з на подписание
  if ds_notif.FieldByName('SZ_OPT').AsInteger = 1 then
    begin
      Timer1.Enabled := false; //Остановка таймена на обновление
      TrayIcon1.Visible := true; //Включаем анимацию мигания значка
      TrayIcon1.Animate := true;
      TrayIcon1.BalloonHint := 'У Вас новая с/з на подпись!' + '(' + ds_notif.FieldByName('SZ_DATE').AsString + ')';
      TrayIcon1.ShowBalloonHint;  //Показываем уведомление
      OraclePackage1.CallProcedure('DeleteNotif',['2','33']); //Прочитываем
      TrayIcon1.Animate := false;
      TrayIcon1.IconIndex := 0;
      Timer1.Enabled := true; //Запускаем таймер на обновление
      info_main.Refresh; //Обновляем таблицу "С/з на подпись"
    end;
  ds_notif.Last; //Уведомление о новых с/з от СЭО
  if ds_notif.FieldByName('SZ_OPT').AsInteger = 1 then
    begin
      TrayIcon1.Visible := true;
      TrayIcon1.Animate := true;
      TrayIcon1.BalloonHint := 'У Вас новая с/з на подпись от СЭО!' + '(' + ds_notif.FieldByName('SZ_DATE').AsString + ')';
      TrayIcon1.ShowBalloonHint;
      OraclePackage1.CallProcedure('DeleteNotif',['3','33']);
      TrayIcon1.Animate := false;
      TrayIcon1.IconIndex := 0;
      seo_info.Refresh;
    end;
  end;

{$ENDRegion 'Уведомление о новых с/з на подпись'}

{$Region 'Открытие формы'}

  procedure TForm12.FormShow(Sender: TObject);
  begin
    DBGridEh_OUTP.StartLoadingStatus('Загрузка данных! Ожидайте...');
    DBGrid_Content.StartLoadingStatus('Загрузка данных! Ожидайте...');
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_DATE',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_NUMB',otInteger);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_ID',otInteger);
    //Показываем форму поверх всех окон
    form12.WindowState := wsNormal;
    form12.FormStyle := fsStayOnTop;
    form12.FormStyle := fsNormal;
    form12.Caption := 'База запросов стоимости оборудования' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_PROG_VERSION');
    //Открываем датасеты
    sz_content.Close;
    sz_content.Open;
    sz_content_2.Close;
    sz_content_2.Open;
    sz_content_seo.Close;
    sz_content_seo.Open;
    info_main.Close;
    info_main.Open;
    sign_info.Close;
    sign_info.Open;
    seo_info.Close;
    seo_info.open;
    seo_info_2.Close;
    seo_info_2.Open;
    seo_info_3.Close;
    seo_info_3.Open;
    info_main_2.Close;
    info_main_2.Open;
    info_main_3.Close;
    info_main_3.Open;
    ds_notif.Close;
    ds_admin_notif.Close;
    Status_type_db.Close;
    Status_Type_db.Open;
    Otdel_type_db.Close;
    Otdel_type_db.Open;
    ds_notif.Open;
    ds_admin_notif.SetVariable('vId',Sz_Enter.Form1.User_Id);
    ds_admin_notif.open;
    DS_Users_Info.Close;
    DS_Users_Info.SetVariable('v_User_Type', 1);
    DS_Users_Info.Open;
    DS_Users_Seo.Close;
    DS_Users_Seo.Open;
    DS_Users.Close;
    DS_Users.Open;
    CB_Contact.Text := 'ВСЕ';
  //  if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')])) = 1 then
  //   begin
  //      N4.Checked := true;
  //   end;
   //Если пользователь админ
    if SZ_Enter.Form1.User_is_admin then
    begin
     SZ_USER_LIST.Form38.Show; //Показывает таблицу пользователей, которые онлайн
     N20.Visible := true; // Показываем кнопку для открытия списка пользователей онлайн (если закрыли)
    end;
    STATUS_SZ_DB.Close;
    LCB_Otdel.KeyValue := 1;
    DTP_Date_To.Date := now ();
    DTP_Date_From.Date := IncMonth(Now(),-2);
    STATUS_SZ_DB.SetVariable( 'DATE_FROM', DateToStr( DTP_Date_From.Date ) );
    STATUS_SZ_DB.SetVariable( 'DATE_TO', DateToStr( DTP_Date_To.Date ) );
    STATUS_SZ_DB.Open;
    E_Sz_Num_Main.Clear;
    E_Sz_Num_Seo.Clear;
    E_Sz_Num_Info.Clear;
    E_Sz_Num_Sign.Clear;
    E_Det_Name_Main.Clear;
    E_Det_Num_Main.Clear;
    E_Det_Name_Seo.Clear;
    E_Det_Num_Seo.Clear;
    E_Det_Name_Sign.Clear;
    E_Det_Num_Sign.Clear;
    Db_Sign_Appr_Steps.Close;
    Db_Sign_Appr_Steps.Open;
    Db_Seo_Appr_Steps.Close;
    Db_Seo_Appr_Steps.Open;
    Timer1.Enabled := true;
    Timer3.Enabled := false;
    DBGridEh_OUTP.FinishLoadingStatus();
    DBGrid_Content.FinishLoadingStatus();
  end;

{$ENDRegion 'Открытие формы'}

{$Region 'Закрытие формы'}

  procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
  if not exit_btn_is_pushed then
    begin
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Tray');
     if SZ_Enter.Form1.User_is_admin then
       begin
        if SZ_USER_LIST.Form38.Showing then //Если показывается таблица пользователей онлайн, то ее закрываем
        begin
          SZ_USER_LIST.Form38.Close;
        end;
       end;
     form12.Close;
    end;
  end;
  //Через кнопку "Выход"
  procedure TForm12.Button6Click(Sender: TObject);
  begin
    SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Tray');
    if SZ_Enter.Form1.User_is_admin then
    begin
     if SZ_USER_LIST.Form38.Showing then //Если показывается таблица пользователей онлайн, то ее закрываем
      begin
        SZ_USER_LIST.Form38.Close;
      end;
    end;
    form12.Close;
  end;

{$ENDRegion 'Закрытие формы'}

{$Region 'Справка'}

  procedure TForm12.H1Click(Sender: TObject);
  begin
   if FileExists('P:\Памятка пользователя База служебных записок.pdf') then
     begin
       ShellExecute(handle,nil,PChar('P:\Памятка пользователя База служебных записок.pdf'),nil,nil,SW_SHOWNORMAL);
     end;
  end;

  procedure TForm12.N2Click(Sender: TObject);
  begin
   SZ_LOG.Form30.ShowModal;
  end;

{$ENDRegion 'Справка'}

//Пока не реализовано - Автозагрузка
procedure TForm12.N4Click(Sender: TObject);
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

  procedure TForm12.PageControl1Change(Sender: TObject);
  begin
    if pagecontrol1.ActivePage.Caption = 'С/з на подпись' then
    begin
      info_main.Refresh; //обновление таблицы
      Btn_Approve.Visible := True;
      Btn_Reject.Visible := True;
    end
    else  if pagecontrol1.ActivePage.Caption = 'Подписанные с/з' then
    begin
      sign_info.Refresh; //обновление таблицы
      Btn_Approve.Visible := False;
      Btn_Reject.Visible := False;
    end

  else if pagecontrol1.ActivePage.Caption = 'ИНФО' then
    begin
      STATUS_SZ_DB.Refresh;
      Btn_Approve.Visible := False;
      Btn_Reject.Visible := False;
    end
  else if pagecontrol1.ActivePage.Caption = 'Входящие с/з' then
    begin
      SEO_INFO.Refresh;
      Btn_Approve.Visible := True;
      Btn_Reject.Visible := True;
    end
  end;

{$ENDRegion 'Действия при смене вкладок'}

{$Region 'Таймеры'}

  //Таймер на кол-во с/з на подписи
  procedure TForm12.Timer1Timer(Sender: TObject);
  var
  num_for_sing, num_for_sing_seo :integer;
  begin
    info_main_2.Refresh; //Обновление таблиц с входиящими на подпись с/з через каждую сек
    seo_info_2.Refresh;
    DS_ADMIN_NOTIF.Refresh;
    TrayIcon1.Hint := 'С/з от отдела продаж' + '(' + INFO_MAIN_2NUM_4_SIGN.AsString + ')' + ' ' + 'С/з от СЭО' + '(' + SEO_INFO_2NUM_4_SIGN.AsString + ')';
    if INFO_MAIN_2NUM_4_SIGN.AsInteger or SEO_INFO_2NUM_4_SIGN.AsInteger <> 0 then //Если количество больше 0 то запускается анимация мигания занчка в трее
    begin
     TrayIcon1.Visible := true;
     TrayIcon1.Animate := true;
    end
    else //Если нет, то отключается
    begin
     TrayIcon1.Animate := false;
     TrayIcon1.IconIndex := 0;
     TrayIcon1.Visible := false;
    end;
    if INFO_MAIN_2NUM_4_SIGN.AsInteger <> INFO_MAIN_3NUM_4_SIGN.AsInteger then //Если появилась новая с/з, то обновляем таблицу "С/з на подпись"
    begin
     Info_Main_3.Refresh;
    end;
    if SEO_INFO_2NUM_4_SIGN.AsInteger <> SEO_INFO_3NUM_4_SIGN.AsInteger then //Если появилась новая с/з, то обновляем таблицу "С/з на подпись"
    begin
     Seo_Info_3.Refresh;
    end;
  end;
  //Обновление основных таблиц после изменения кол-ва с/з во вспомогетельных
  procedure TForm12.Info_Main_3AfterRefresh(DataSet: TDataSet);
  begin
    Info_Main.Refresh;
    TrayIcon1.Visible := true; //Показываем значок трея
    TrayIcon1.Animate := true; //Включаем анимацию (имитация мигания значка)
    TrayIcon1.BalloonHint := 'У Вас новая с/з на подпись!' + '(' + DateTimeToStr( Now() ) + ')';
    TrayIcon1.ShowBalloonHint;
    TrayIcon1.Animate := false; //Выключаем анимацию
    TrayIcon1.IconIndex := 0; //Устанавливаем индекс картинку в начало
  end;
  procedure TForm12.SEO_INFO_3AfterRefresh(DataSet: TDataSet);
  begin
    Seo_Info.Refresh;
    TrayIcon1.Visible := true; //Показываем значок трея
    TrayIcon1.Animate := true; //Включаем анимацию (имитация мигания значка)
    TrayIcon1.BalloonHint := 'У Вас новая с/з от СЭО на подпись!' + '(' + DateTimeToStr( Now() ) + ')';
    TrayIcon1.ShowBalloonHint;
    TrayIcon1.Animate := false; //Выключаем анимацию
    TrayIcon1.IconIndex := 0; //Устанавливаем индекс картинку в начало
  end;
  //Таймер на выключение по уведомлению от админа
  procedure TForm12.Timer3Timer(Sender: TObject);
  begin
    OraclePackage1.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']);
    Application.Terminate;
  end;

{$ENDRegion 'Таймеры'}

{$Region 'Вспомогательные функции'}
 //Проверка наличия у с/з
function TForm12.Is_SZ_have_free_form(Sz_Id: Integer) :bool;
begin
  SimpleSQL.Close;
  SimpleSQL.SQL.Clear;
  SimpleSQL.DeclareVariable('Sz_Id',otinteger);
  SimpleSQL.SetVariable('Sz_Id', Sz_Id);
  SimpleSQL.SQL.Add('select t.sz_free_form from mrk.sz_seo_main t where t.SZ_ID = :Sz_Id');
  SimpleSQL.ExecSQL;
  SimpleSQL.Open;
  if SimpleSQL.Fields[0].AsInteger = 1 then result := true else result := false;
end;
{$ENDRegion 'Вспомогательные функции'}

end.
