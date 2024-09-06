unit SZ_MAIN_SEO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, SZ_VARIABLES, SZ_COMMET_VIEW, SZ_COMMET_CREAT, SZ_PRINT_SEO,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Oracle, OracleData, SZ_CREAT_SEO, SZ_EDIT_SEO, SZ_PRINT,SZ_SEO_IMPORT, SZ_COMMET_VIEW_SEO,
  Vcl.AppEvnts, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Menus, ShellApi,
  System.ImageList, Vcl.ImgList, System.UITypes, SZ_CHS_PRNT,  SZ_PRINT_4S_SEO, SZ_LOG,
  SZ_PRINT_SEO_FF, SZ_PRINT_SEO_FF_4S, Vcl.Mask, DBCtrlsEh, SZ_USER_LIST,
  DBLookupEh;

type
  TForm14 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    SimpleSQL: TOracleDataSet;
    OraclePackage2: TOraclePackage;
    OraclePackage1: TOraclePackage;
    DS_SEOINFO: TDataSource;
    DS_SIGN_INFO: TDataSource;
    SIGN_INFO: TOracleDataSet;
    SEO_INFO: TOracleDataSet;
    Timer1: TTimer;
    TrayIcon1: TTrayIcon;
    DS_NOTIF: TOracleDataSet;
    DBGridEh_SIGN: TDBGridEh;
    DBGridEh_OUTP: TDBGridEh;
    MainMenu1: TMainMenu;
    N211: TMenuItem;
    N2ws1: TMenuItem;
    dsd1: TMenuItem;
    N1: TMenuItem;
    DS_CONTENT: TDataSource;
    DS_CONTENT_SEO: TDataSource;
    SZ_CONTENT: TOracleDataSet;
    SZ_CONTENTSZ_NUMB: TFloatField;
    SZ_CONTENTSZ_DATE: TDateTimeField;
    SZ_CONTENTSZ_NAME_OB: TStringField;
    SZ_CONTENTSZ_IBYAL_OB: TStringField;
    SZ_CONTENTID_CONT: TFloatField;
    SZ_CONTENTID_STR: TFloatField;
    SZ_CONTENTSZ_CHECK: TFloatField;
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
    INFO_MAIN_2: TOracleDataSet;
    SZ_CONTENT_2: TOracleDataSet;
    FloatField5: TFloatField;
    DateTimeField3: TDateTimeField;
    StringField13: TStringField;
    StringField14: TStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    DS_CONTENT_2: TDataSource;
    BALLONLOG: TOracleDataSet;
    N2: TMenuItem;
    ImageList1: TImageList;
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
    Timer3: TTimer;
    DBGridEh_IMP: TDBGridEh;
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
    SIGN_BTN: TButton;
    Button6: TButton;
    CANCEL_SIGN_BTN: TButton;
    DBGrid_Content: TDBGridEh;
    Panel7: TPanel;
    Label17: TLabel;
    Panel16: TPanel;
    STATUS_TYPE_DATA: TDataSource;
    STATUS_TYPE_DB: TOracleDataSet;
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
    SIGN_INFOSTATUS_VALUE: TFloatField;
    SIGN_INFOSZ_FROM_ID: TFloatField;
    SIGN_INFOSZ_TO_ID: TFloatField;
    SIGN_INFOSZ_COPY_ID: TFloatField;
    SIGN_INFOSZ_SEO_NUMB: TFloatField;
    SIGN_INFOSZ_SEO_DATE: TDateTimeField;
    DBGridEh3: TDBGridEh;
    Panel2: TPanel;
    Label8: TLabel;
    Panel8: TPanel;
    Label9: TLabel;
    Panel9: TPanel;
    DBGridEh4: TDBGridEh;
    Panel1: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Panel3: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel13: TPanel;
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
    INFO_MAINSZ_TO_ID: TFloatField;
    INFO_MAINSZ_COPY_ID: TFloatField;
    BALLONLOGSZ_NUMB: TFloatField;
    BALLONLOGSZ_DATE: TDateTimeField;
    BALLONLOGSZ_CONDITION: TFloatField;
    BALLONLOGID_STR: TFloatField;
    BALLONLOGSZ_INF_DATE: TDateTimeField;
    BALLONLOGUSER_ID: TFloatField;
    BALLONLOGSZ_ID: TFloatField;
    Ballon_Log_Counter: TOracleDataSet;
    Ballon_Log_CounterNUM_OF_STR: TFloatField;
    INFO_MAIN_2NUM_STR: TFloatField;
    PM_GRID_SIGN: TPopupMenu;
    N11: TMenuItem;
    N15: TMenuItem;
    PM_GRID_FOR_SIG: TPopupMenu;
    N9: TMenuItem;
    N10: TMenuItem;
    MenuItem1: TMenuItem;
    N14: TMenuItem;
    PM_GRID_STATUS: TPopupMenu;
    N12: TMenuItem;
    N16: TMenuItem;
    N7: TMenuItem;
    SIGN_INFOSZ_ID_SEO: TFloatField;
    SIGN_INFOSZ_SEO_STATUS_VALUE: TFloatField;
    SIGN_INFOSZ_SEO_STATUS: TStringField;
    Panel6: TPanel;
    Label2: TLabel;
    N20: TMenuItem;
    N13: TMenuItem;
    SEO_INFOSZ_ASUP_INDF: TFloatField;
    SEO_INFOSZ_DATA_CENY: TDateTimeField;
    INFO_MAIN_3: TOracleDataSet;
    INFO_MAIN_3NUM_STR: TFloatField;
    PM_GRID_OUTP: TPopupMenu;
    MenuItem2: TMenuItem;
    N8: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    PM_GRID_OUTP_LIST: TPopupMenu;
    N17: TMenuItem;
    SZ_CONTENT_SEOID: TFloatField;
    Panel4: TPanel;
    Label1: TLabel;
    LCB_Contact_Main: TDBLookupComboboxEh;
    E_Det_Name_Main: TDBEditEh;
    E_Det_Num_Main: TDBEditEh;
    E_Sz_Num_Main: TDBEditEh;
    Panel12: TPanel;
    Label3: TLabel;
    LCB_Contact_Sign: TDBLookupComboboxEh;
    E_Det_Name_Sign: TDBEditEh;
    E_Det_Num_Sign: TDBEditEh;
    E_Sz_Num_Sign: TDBEditEh;
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
    Panel14: TPanel;
    Label4: TLabel;
    LCB_Contact_Seo: TDBLookupComboboxEh;
    LCB_Status_Seo: TDBLookupComboboxEh;
    E_Det_Name_Seo: TDBEditEh;
    E_Det_Num_Seo: TDBEditEh;
    E_Sz_Num_Seo: TDBEditEh;
    DBGridEh1: TDBGridEh;
    Panel15: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DTP_Date_To: TDateTimePicker;
    DTP_Date_From: TDateTimePicker;
    LCB_Contact_Info: TDBLookupComboboxEh;
    LCB_Otdel: TDBLookupComboboxEh;
    E_Sz_Num_Info: TDBEditEh;
    Ds_Users: TOracleDataSet;
    FloatField1: TFloatField;
    StringField1: TStringField;
    DS_Users_Seo: TOracleDataSet;
    FloatField2: TFloatField;
    StringField6: TStringField;
    Ds_Users_Info: TOracleDataSet;
    FloatField3: TFloatField;
    StringField7: TStringField;
    Data_Users: TDataSource;
    Data_Users_Seo: TDataSource;
    Data_Users_Info: TDataSource;
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
    SZ_CONTENTSZ_CODE_OB: TStringField;
    SZ_CONTENT_2SZ_CODE_OB: TStringField;
    SZ_CONTENT_SEOSZ_CODE_OB: TStringField;
    procedure FormShow(Sender: TObject);
    procedure SIGN_BTNClick(Sender: TObject);
    procedure CANCEL_SIGN_BTNClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Btn_CommentClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DS_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGridEh_OUTPGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh_SIGNGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N211Click(Sender: TObject);
    procedure dsd1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BALLONLOGAfterRefresh(DataSet: TDataSet);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure N6Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh_OUTPDblClick(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh_STATUSGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure INFO_MAIN_3AfterRefresh(DataSet: TDataSet);
    procedure N17Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure E_Sz_Num_MainChange(Sender: TObject);
    procedure E_Det_Name_MainChange(Sender: TObject);
    procedure E_Det_Num_MainChange(Sender: TObject);
    procedure E_Sz_Num_SignChange(Sender: TObject);
    procedure E_Det_Name_SignChange(Sender: TObject);
    procedure E_Det_Num_SignChange(Sender: TObject);
    procedure LCB_Contact_SignKeyValueChanged(Sender: TObject);
    procedure E_Sz_Num_SeoChange(Sender: TObject);
    procedure E_Det_Name_SeoChange(Sender: TObject);
    procedure E_Det_Num_SeoChange(Sender: TObject);
    procedure LCB_Contact_SeoKeyValueChanged(Sender: TObject);
    procedure LCB_Status_SeoKeyValueChanged(Sender: TObject);
    procedure E_Sz_Num_InfoChange(Sender: TObject);
    procedure LCB_OtdelKeyValueChanged(Sender: TObject);
    procedure DTP_Date_FromCloseUp(Sender: TObject);
    procedure DTP_Date_ToCloseUp(Sender: TObject);
    procedure LCB_Contact_InfoKeyValueChanged(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure LCB_Contact_MainKeyValueChanged(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure DBGrid_ContentGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    exit_btn_is_pushed :bool;
    num_str_log :integer;

    /// <summary> ����������� ������� � �/� ��� ��������� �����</summary>
		/// <param name="Sz_Id"> Integer; <br/>  ID �/�   </param>
    /// <returns> Bool <br/> </returns>
    function Is_SZ_have_free_form(Sz_Id :integer) :bool;

    /// <summary> ����������� ������� �/� � ���� </summary>
		/// <param name="Sz_Id"> Integer; <br/>  ID �/�   </param>
    /// <returns> Bool <br/> </returns>
    function Is_SZ_Exist(Sz_Id :integer) :bool;

    /// <summary> ����������� ����������� �������������� �/� ��� ������������ </summary>
		/// <param name="Sz_Id"> Integer; <br/>  ID �/�   </param>
    /// <returns> Bool <br/> </returns>
    function Can_SZ_Edit(Sz_Id :integer) :integer;

    /// <summary> ��������� ���� �� ����� �� ��� �/� ������ ������ </summary>
		/// <param name="Sz_Id"> Integer; <br/>  ID �/�   </param>
    /// <returns> String <br/>  -  ����� �/� ���, � ���� ���� �� 0 </returns>
    function Is_SZ_Have_Answer(Sz_Id :integer) :string;
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}
uses
SZ_Enter,SZ_USERS_4_SIGN_ADMIN;

{$Region '����� � ���������� �/�'}

  procedure TForm14.CANCEL_SIGN_BTNClick(Sender: TObject);
    var
   buttonSelected :integer;
  begin
   if pagecontrol1.ActivePage.Caption = '�/� �� �������'then
      begin
        buttonSelected := MessageDlg ('�� �������� ��� ������ ��������� ��������� �������?', mtConfirmation, mbOkCancel, 5);
          if buttonSelected = mrOk then
          begin
            if not SZ_Enter.Form1.User_is_admin  then // �������� ���� ������������ �����
            begin
              SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
              OraclePackage1.CallProcedure('Reject_SZ_by_ID',[info_mainSZ_ID.AsInteger, SZ_Enter.Form1.User_id, 1]);
              buttonSelected := MessageDlg ('�������� ������� ������ ������� �/�?', mtConfirmation, mbOkCancel, 5);
              if buttonSelected = mrOk then
                begin
                   SZ_COMMET_CREAT.Form4.v_Otdel := 1;
                   SZ_COMMET_CREAT.Form4.ShowModal; //����� ����� ������������
                end;
                info_main.Refresh;
            end
            else
            begin
              SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
              SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 3;
              SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '38';
              SZ_USERS_4_SIGN_ADMIN.Form39.ShowModal;
              OraclePackage1.CallProcedure('Reject_SZ_by_ID',[info_mainSZ_ID.AsInteger, SZ_USERS_4_SIGN_ADMIN.Form39.User_id, 1]);
              info_main.Refresh;
            end;
          end;
      end;
  end;

{$ENDRegion '����� � ���������� �/�'}

{$Region '���������� �/�'}

procedure TForm14.SIGN_BTNClick(Sender: TObject);
var
  UserAllow, buttonSelected :integer;
begin
  if pagecontrol1.ActivePage.Caption = '�/� �� �������'then
  begin
     buttonSelected := MessageDlg ('�� �������� ��� ������ ��������� ��������� �������?', mtConfirmation, mbOkCancel, 5);
     if buttonSelected = mrOk then
     begin
       if not SZ_Enter.Form1.User_is_admin  then // �������� ���� ������������ �����
       begin
         UserAllow := OraclePackage1.CallIntegerFunction('Change_Status_by_ID',[INFO_MAINSZ_ID.AsInteger, Sz_Enter.Form1.User_Id, 1]); //������ ������ �/�
         if UserAllow = 1 then //���� ���������� ������ �������, ��������� �������
           begin
            DBGridEh_IMP.StartLoadingStatus('�������� ������! ��������...');
            info_main.Refresh;
            DBGridEh_IMP.FinishLoadingStatus();
           end
           else if UserAllow = 2 then //���� ��� ���������, ������� ����, ��������� �������
           begin
            MessageDlg('��� ��������� ������� ��� ���������!', MtInformation, [mbOk], 1);
            DBGridEh_IMP.StartLoadingStatus('�������� ������! ��������...');
            info_main.Refresh;
            DBGridEh_IMP.FinishLoadingStatus();
           end;
       end
       else
       begin
         {******************������������� ����������� �� ���� ������������, ���� �/�***************************}
         SZ_USERS_4_SIGN_ADMIN.Form39.v_user_type := 3;
         SZ_USERS_4_SIGN_ADMIN.Form39.v_ceh := '38';
         SZ_USERS_4_SIGN_ADMIN.Form39.ShowModal;
         UserAllow := OraclePackage1.CallIntegerFunction('Change_Status_by_ID',[INFO_MAINSZ_ID.AsInteger, SZ_USERS_4_SIGN_ADMIN.Form39.User_id, 1]); //������ ������ �/�
         if UserAllow = 1 then //���� ���������� ������ �������, ��������� �������
           begin
             DBGridEh_IMP.StartLoadingStatus('�������� ������! ��������...');
             info_main.Refresh;
             DBGridEh_IMP.FinishLoadingStatus();
           end
         else if UserAllow = 2 then //���� ��� ���������, ������� ����, ��������� �������
           begin
             MessageDlg('��� ��������� ������� ��� ���������!', MtInformation, [mbOk], 1);
             DBGridEh_IMP.StartLoadingStatus('�������� ������! ��������...');
             info_main.Refresh;
             DBGridEh_IMP.FinishLoadingStatus();
           end;
       end;
     end;
  end;
  if pagecontrol1.ActivePage.Caption = '��������� �/�'then
  begin
    buttonSelected := MessageDlg ('�� �������� ��� ������ ��������� ��������� �������?', mtConfirmation, mbOkCancel, 5);
     if buttonSelected = mrOk then
     begin
       if not SZ_Enter.Form1.User_is_admin  then // �������� ���� ������������ �����
       begin
         if SEO_INFOSZ_ID_CONT.AsInteger = Sz_Enter.Form1.User_Id then
         begin
           UserAllow := OraclePackage1.CallIntegerFunction('Change_Status_by_ID',[SEO_INFOSZ_ID.AsInteger, Sz_Enter.Form1.User_Id, 2]); //������ ������ �/�
           if UserAllow = 1 then //���� ���������� ������ �������, ��������� �������
             begin
              DBGridEh_OUTP.StartLoadingStatus('�������� ������! ��������...');
              Seo_Info.Refresh;
              DBGridEh_OUTP.FinishLoadingStatus();
             end
             else if UserAllow = 2 then //���� ��� ���������, ������� ����, ��������� �������
             begin
              MessageDlg('��� ��������� ������� ��� ���������!', MtInformation, [mbOk], 1);
              DBGridEh_OUTP.StartLoadingStatus('�������� ������! ��������...');
              Seo_Info.Refresh;
              DBGridEh_OUTP.FinishLoadingStatus();
             end;
         end
         else
         begin
           MessageDlg('� ��� ���� �� ���������� ����� ��������� �������!', MtInformation, [mbOk], 1);
           Seo_Info.Refresh;
         end;
       end
       else
       begin
         {******************������������� ����������� �� ���� ������������, ���� �/�***************************}
        UserAllow := OraclePackage1.CallIntegerFunction('Change_Status_by_ID',[SEO_INFOSZ_ID.AsInteger,  SEO_INFOSZ_ID_CONT.AsInteger, 2]); //������ ������ �/�
         if UserAllow = 1 then //���� ���������� ������ �������, ��������� �������
           begin
             DBGridEh_OUTP.StartLoadingStatus('�������� ������! ��������...');
             Seo_Info.Refresh;
             DBGridEh_OUTP.FinishLoadingStatus();
           end
         else if UserAllow = 2 then //���� ��� ���������, ������� ����, ��������� �������
           begin
             MessageDlg('��� ��������� ������� ��� ���������!', MtInformation, [mbOk], 1);
             DBGridEh_OUTP.StartLoadingStatus('�������� ������! ��������...');
             Seo_Info.Refresh;
             DBGridEh_OUTP.FinishLoadingStatus();
           end;
       end;
     end;
  end;
end;

{$ENDRegion '���������� �/�'}

{$Region '�����������'}
  //����������� � ��������� ������� �/�
  procedure TForm14.BALLONLOGAfterRefresh(DataSet: TDataSet);
  var
  condition:integer;
  begin
   {***� ������ ������� ����� ������������, ������� ���� ����� ���������� ������� ����������� (num_str_log), � ����� �����������
   � ��������� ������ (ballon_Log_CounterNum_of_Str.AsInteger - ����������� ������ �������)***************************************}
   if num_str_log <> ballon_Log_CounterNum_of_Str.AsInteger then //���� ����� �� ���������, ������ ��������� ����� �����������
   begin
   BallonLog.Refresh; //��������� ������� � ������������� (��� �������� ��� ��������� ������ ��������� �����������)
   condition := ballonlogSZ_CONDITION.AsInteger; //���������� ��� �����������
    case condition of
       1: //���� ����������� � ���, ��� �/� ��������� ������������� �������������
       begin
        if Form14.Is_SZ_Exist(BALLONLOGSZ_ID.AsInteger) then //��������� ��� ��� ����������� ������� �� �/� ������������
          begin
            TrayIcon1.Visible := true; //���������� ������ ����������� � ����
            TrayIcon1.BalloonHint := '�/� � ' + ballonlogSZ_NUMB.AsString +' �� ' + ballonlogSZ_DATE.AsString + ' ��������� ������������� �������������.' + '  ('+ ballonlogSZ_INF_DATE.AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[ballonlogUSER_ID.AsString]) + ')';
            TrayIcon1.ShowBalloonHint; //���������� �����������
            num_str_log := ballon_Log_CounterNum_of_Str.AsInteger; //��������� ����������
            Seo_Info.Refresh; //��������� �������
            Sleep(2000); //���� 2 ���, ����� ����������� �� ������� �����������
            TrayIcon1.Visible := false; //�������� ������ ����������� � ����
          end;
       end;
       {****************��� ��������� ����� ����������� ��� ���������� ������ �������� ����� ���������}
       2: //����������� � ���, ��� �/� ��������� �����������
       begin
        if num_str_log <> ballonlog.RecordCount  then
        begin
           if Form14.Is_SZ_Exist(BALLONLOGSZ_ID.AsInteger) then
          begin
            TrayIcon1.Visible := true;
            TrayIcon1.BalloonHint := '�/� � ' + ballonlogSZ_NUMB.AsString +' �� ' + ballonlogSZ_DATE.AsString + '   ���������.' + '  ('+ ballonlogSZ_INF_DATE.AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[ballonlogUSER_ID.AsString]) + ')';
            TrayIcon1.ShowBalloonHint;
            num_str_log := ballon_Log_CounterNum_of_Str.AsInteger;
            Seo_Info.Refresh;
            Sleep(2000);
            TrayIcon1.Visible := false;
          end;
        end;
       end;
       -1://����������� � ���, ��� �/� ���������
       begin
        if num_str_log <> ballonlog.RecordCount  then
        begin
          if Form14.Is_SZ_Exist(BALLONLOGSZ_ID.AsInteger) then
          begin
            TrayIcon1.Visible := true;
            TrayIcon1.BalloonHint := '�/� � ' + ballonlogSZ_NUMB.AsString +' �� ' + ballonlogSZ_DATE.AsString + '   ���������.' + '  ('+ ballonlogSZ_INF_DATE.AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[ballonlogUSER_ID.AsString]) + ')';
            TrayIcon1.ShowBalloonHint;
            num_str_log := ballon_Log_CounterNum_of_Str.AsInteger;
            Seo_Info.Refresh;
            Sleep(2000);
            TrayIcon1.Visible := false;
          end;
        end;
       end;
    end;
   end;
  end;
  //����������� ������
  procedure TForm14.DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
  begin
    if DS_Admin_NOTIFUSER_NOTIF.AsInteger = 1 then //���� ��� ��������� ��������������
    begin
      Timer1.Enabled := false; //������������� ������ ���������� �������� �����������
      MessageDlg (DS_Admin_NOTIFNAME.AsString + ', ' + DS_Admin_NOTIFMESSAGE.AsString, MtInformation, [mbOk], 1); //������� ���������
      {*************************** ������ ��������� <��� ������������>, <����� ����������> ***************************}
      OraclePackage1.CallProcedure('ReadMessage',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]); //�������� ��� ���������� ���������
      Timer1.Enabled := true; //��������� ������ ���������� �������� �����������
    end;
    if DS_Admin_NOTIFUSER_NOTIF.AsInteger = 2 then //���� ��� ��������� � ��������� (������ �������������� ����������)
    begin
      Timer1.Enabled := false; //������������� ������ ���������� �������� �����������
      Timer3.Enabled := true; //��������� ������ ���������� (����� 5 �����)
      MessageDlg (DS_Admin_NOTIFNAME.AsString + ', ' + DS_Admin_NOTIFMESSAGE.AsString, MtInformation, [mbOk], 1); //���������� ������������ � ���, ��� ��������� ����� �������
      OraclePackage1.CallProcedure('ReadMessage',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]); //�������� ��� ���������� ���������
      Timer1.Enabled := true; //��������� ������ ���������� �������� �����������
    end;
  end;
  //����������� � ����� �/� �� ����������
  procedure TForm14.DS_NOTIFAfterRefresh(DataSet: TDataSet);
  begin
  if ds_notif.FieldByName('SZ_OPT').AsInteger = 1 then
    begin
      Timer1.Enabled := false; //������������� ������ ���������� �������� �����������
      TrayIcon1.Visible := true; //���������� ������ ����
      TrayIcon1.Animate := true; //�������� �������� (�������� ������� ������)
      TrayIcon1.BalloonHint := '� ��� ����� �/� �� �������!' + '(' + ds_notif.FieldByName('SZ_DATE').AsString + ')';
      TrayIcon1.ShowBalloonHint;
      OraclePackage1.CallProcedure('DeleteNotif',['4','33']);
      TrayIcon1.Animate := false; //��������� ��������
      TrayIcon1.IconIndex := 0; //������������� ������ �������� � ������
      Sleep(2000); //���� 2 ���, ����� ����������� �� ������� �����������
      TrayIcon1.Visible := false; //�������� ������ ����
      Timer1.Enabled := true; //��������� ������ ���������� �������� �����������
      info_main.Refresh;
    end;
  end;

procedure TForm14.DTP_Date_FromCloseUp(Sender: TObject);
begin
  DBGridEh_STATUS.StartLoadingStatus('�������� ������! ��������...');
  STATUS_SZ_DB.SetVariable('DATE_FROM',DateToStr(DTP_Date_From.Date));
  if STATUS_SZ_DB.Active
  then
    STATUS_SZ_DB.Refresh;
  DBGridEh_STATUS.FinishLoadingStatus();
end;

procedure TForm14.DTP_Date_ToCloseUp(Sender: TObject);
begin
  DBGridEh_STATUS.StartLoadingStatus('�������� ������! ��������...');
  STATUS_SZ_DB.SetVariable('DATE_TO',DateToStr(DTP_Date_To.Date));
  if STATUS_SZ_DB.Active
  then
    STATUS_SZ_DB.Refresh;
  DBGridEh_STATUS.FinishLoadingStatus();
end;

{$ENDRegion '�����������'}

{$Region '�����������'}

  procedure TForm14.Btn_CommentClick(Sender: TObject);
  begin
     if pagecontrol1.ActivePage.Caption = '�/� �� �������'then
    begin
    if not info_main.IsEmpty then
     begin
       SZ_COMMET_VIEW.Form6.v_Otdel_type := 1;
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
       DBGridEh_IMP.SaveBookmark;
       SZ_COMMET_VIEW.Form6.ShowModal;
       DBGridEh_IMP.RestoreBookmark;
     end;
    end
    else if pagecontrol1.ActivePage.Caption = '�/� �������� � ������'then
    begin
    if not sign_info.IsEmpty then
     begin
       SZ_COMMET_VIEW.Form6.v_Otdel_type := 1;
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Sign_InfoSZ_ID.AsInteger);
       DBGridEh_SIGN.SaveBookmark;
       SZ_COMMET_VIEW.Form6.ShowModal;
       DBGridEh_SIGN.RestoreBookmark;
     end;
    end
    else if pagecontrol1.ActivePage.Caption = '��������� �/�'then
    begin
    if not seo_info.IsEmpty then
     begin
       SZ_COMMET_VIEW.Form6.v_Otdel_type := 2;
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_InfoSZ_ID.AsInteger);
       DBGridEh_OUTP.SaveBookmark;
       SZ_COMMET_VIEW.Form6.ShowModal;
       DBGridEh_OUTP.RestoreBookmark;
     end;
    end;
  end;

{$ENDRegion '�����������'}

{$Region '����������� ������'}
  //������� �/� �� ����������
  procedure TForm14.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
    AFont: TFont; var Background: TColor; State: TGridDrawState);
  begin
    if not Info_Main.IsEmpty then
      begin
        case Info_MainSZ_KR.AsInteger of //�/� �� �� ��� ���
          1:
          begin
           Background := clGradientInactiveCaption;
          end;
          0:
          begin
           Background := clWindow;
          end;
        end;
      end;
  end;
  //������� ��������� �/�
  procedure TForm14.DBGridEh_OUTPGetCellParams(Sender: TObject; Column: TColumnEh;
    AFont: TFont; var Background: TColor; State: TGridDrawState);
  begin
    if not SEO_INFO.IsEmpty then
      begin
        case SEO_INFOSZ_CONDITION.AsInteger of //� ����������� �� �������
            1:
            begin
               AFont.Color := clBlue; //��������� - �����
            end;

            2:
            begin
               AFont.Color := clGreen; //�� ������ ���������� - �������
            end;

            -1:
            begin
               AFont.Color := clRed; //��������� - �������
               AFont.Style := AFont.Style + [fsBold];
               Background := $00C1B6FF;
            end;
            0:
            begin
               AFont.Color := clWindowText; //�� ��������� - ������
            end;
          end;
      end;
  end;
  //������� �/� � ������
  procedure TForm14.DBGridEh_SIGNGetCellParams(Sender: TObject; Column: TColumnEh;
    AFont: TFont; var Background: TColor; State: TGridDrawState);
  begin
    if not SIGN_INFO.IsEmpty then
      begin
        if SIGN_INFOSZ_SEO_STATUS_VALUE.AsInteger = 2 then //���� �/� ��������� � �����, �� ����� ��� �� �����
         begin
          AFont.Color := clWindowText;
         end
         else if SIGN_INFOSZ_SEO_STATUS_VALUE.AsInteger = 3 then //���� ��� ����������
         begin
          AFont.Color := clGreen;
         end
         else if SIGN_INFOSZ_SEO_STATUS_VALUE.AsInteger = 1 then //��� �� ��������� � �����
         begin
          AFont.Color := clGray;
          AFont.Style := AFont.Style + [fsItalic];
         end;
      end;
  end;
  //������� ����
  procedure TForm14.DBGridEh_STATUSGetCellParams(Sender: TObject;
    Column: TColumnEh; AFont: TFont; var Background: TColor;
    State: TGridDrawState);
  begin
    if not STATUS_SZ_DB.IsEmpty then
    begin
      case STATUS_SZ_DBSZ_CONDITION.AsInteger of //����������� � ����������� �� �������
        2: //���� ��������� � ���, ��� �/� ���������, �� ���� ������ ������ �����
        begin
         AFont.Color := clBlue;
        end;
        -1: //���� ��������� � ���, ��� �/� ���������, �� ���� ������ ������ �������, ����� ������ "������"
        begin
          AFont.Color := clRed;
          AFont.Style := AFont.Style + [fsBold];
          Background := $00C1B6FF;
        end;
      end;
    end;
  end;

procedure TForm14.DBGrid_ContentGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with  Column.Grid.DataSource.DataSet
  do
  begin
    if not IsEmpty then //������ ���� ������� �� �����
    begin
      case FieldByName('SZ_CHECK').AsInteger of //����������� ������ ����� � ����������� �� ������� ���� (���� �� ����� ������������ � ��������� ��� ���)
        1: //���� ����� ������������ � ��������� ���� ����, �� ���� �������
        begin
          AFont.Color := clGreen;
        end;
        0: //���� ���, �� �������
        begin
          AFont.Color := clRed;
          AFont.Style := AFont.Style + [fsBold];
          Background := $00C1B6FF;
        end;
      end;
    end;
  end;
end;

{$ENDRegion '����������� ������'}

{$Region '������� ������'}

procedure TForm14.E_Det_Name_MainChange(Sender: TObject);
begin
 Info_main.SetVariable( 'vNaim', E_Det_Name_Main.Text );
 if Info_Main.Active
 then
   Info_main.Refresh;
end;

procedure TForm14.E_Det_Name_SeoChange(Sender: TObject);
begin
 SEO_INFO.SetVariable( 'vNaim', E_Det_Name_Seo.Text );
 if SEO_INFO.Active
 then
   SEO_INFO.Refresh;
end;

procedure TForm14.E_Det_Name_SignChange(Sender: TObject);
begin
 SIGN_INFO.SetVariable( 'vNaim', E_Det_Name_Sign.Text );
 if SIGN_INFO.Active
 then
   SIGN_INFO.Refresh;
end;

procedure TForm14.E_Det_Num_MainChange(Sender: TObject);
begin
 Info_main.SetVariable( 'vNom', E_Det_Num_Main.Text );
 if Info_Main.Active
 then
   Info_main.Refresh;
end;

procedure TForm14.E_Det_Num_SeoChange(Sender: TObject);
begin
 SEO_INFO.SetVariable( 'vNom', E_Det_Num_Seo.Text );
 if SEO_INFO.Active
 then
   SEO_INFO.Refresh;
end;

procedure TForm14.E_Det_Num_SignChange(Sender: TObject);
begin
 SIGN_INFO.SetVariable( 'vNom', E_Det_Num_Sign.Text );
 if SIGN_INFO.Active
 then
   SIGN_INFO.Refresh;
end;

procedure TForm14.E_Sz_Num_InfoChange(Sender: TObject);
begin
 STATUS_SZ_DB.SetVariable( 'vNum', E_Sz_Num_Info.Text );
 if STATUS_SZ_DB.Active
 then
   STATUS_SZ_DB.Refresh;
end;

procedure TForm14.E_Sz_Num_MainChange(Sender: TObject);
begin
 Info_main.SetVariable( 'vNum', E_Sz_Num_Main.Text );
 if Info_Main.Active
 then
   Info_main.Refresh;
end;

procedure TForm14.E_Sz_Num_SeoChange(Sender: TObject);
begin
 SEO_INFO.SetVariable( 'vNum', E_Sz_Num_Seo.Text );
 if SEO_INFO.Active
 then
   SEO_INFO.Refresh;
end;

procedure TForm14.E_Sz_Num_SignChange(Sender: TObject);
begin
 SIGN_INFO.SetVariable( 'vNum', E_Sz_Num_Sign.Text );
 if SIGN_INFO.Active
 then
   SIGN_INFO.Refresh;
end;

{$ENDRegion '������� ������'}

{$Region '������ � �/� - ��������, ��������������, ���������� � �����'}

  //��������������
  procedure TForm14.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
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

   if ( Db_Seo_Appr_StepsSTATUS.AsString = '����������' )
            And ( Column.FieldName = 'STATUS' ) then Background := $0098FB98
   else if ( Pos ( '�����', Db_Seo_Appr_StepsSTATUS.AsString ) <> 0 ) then
   Begin
    Background := $00C1B6FF;
    AFont.Color := clRed;
   End
   else if ( Pos ( '�� ��������', Db_Seo_Appr_StepsSTATUS.AsString ) <> 0 )
            And ( Column.FieldName = 'STATUS' ) then Background := $0000D7FF
   else if ( Db_Seo_Appr_StepsSTATUS.AsString = '�� �������' )
            And ( Column.FieldName = 'STATUS' ) then Background := clWhite;
 End;
end;

procedure TForm14.DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
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

   if ( Db_Main_Appr_StepsSTATUS.AsString = '����������' )
            And ( Column.FieldName = 'STATUS' ) then Background := $0098FB98
   else if ( Pos ( '�����', Db_Main_Appr_StepsSTATUS.AsString ) <> 0 ) then
   Begin
    Background := $00C1B6FF;
    AFont.Color := clRed;
   End
   else if ( Pos ( '�� ��������', Db_Main_Appr_StepsSTATUS.AsString ) <> 0 )
            And ( Column.FieldName = 'STATUS' ) then Background := $0000D7FF
   else if ( Db_Main_Appr_StepsSTATUS.AsString = '�� �������' )
            And ( Column.FieldName = 'STATUS' ) then Background := clWhite;
 End;

end;

procedure TForm14.DBGridEh_OUTPDblClick(Sender: TObject);
  var
   anotherUser, headsign :integer;
  begin
   if PageControl1.ActivePage.Caption = '��������� �/�'  then
   begin
   if not seo_info.IsEmpty then
     begin
        if not SZ_Enter.Form1.User_is_admin  then // �������� ���� ������������ �����
        begin
          if Form14.Can_SZ_Edit(seo_infoSZ_ID.AsInteger) = 3 then
          begin
           SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', seo_infoSZ_ID.AsInteger);
           DBGridEh_OUTP.SaveBookmark;
           SZ_EDIT_SEO.Form11.ShowModal;
           Seo_Info.Refresh;
           DBGridEh_OUTP.RestoreBookmark;
         end
         else if Form14.Can_SZ_Edit(seo_infoSZ_ID.AsInteger) = 2 then
         begin
           MessageDlg('��������� ������� ��� ��������� ����������� ������ ������������� - �������������� �� ��������!', MtError, [mbOk], 1);
         end
         else if Form14.Can_SZ_Edit(seo_infoSZ_ID.AsInteger) = 1 then
         begin
           MessageDlg('�������������� ����� ��������� ������� ���������!', MtError, [mbOk], 1);
         end;
        end
        else
        begin
          if Form14.Can_SZ_Edit(seo_infoSZ_ID.AsInteger) <> 2 then
            begin
              SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', seo_infoSZ_ID.AsInteger);
              DBGridEh_OUTP.SaveBookmark;
              SZ_EDIT_SEO.Form11.ShowModal;
              Seo_Info.Refresh;
              DBGridEh_OUTP.RestoreBookmark;
            end
          else if Form14.Can_SZ_Edit(seo_infoSZ_ID.AsInteger) = 2 then
             {**����� �� ����� ������� ������������, ���������������� ����� ������������� ������ ���� �� �������� ��������� �������������**}
            begin
             MessageDlg('��������� ������� ��� ��������� ����������� ������ ������������� - �������������� �� ��������!', MtError, [mbOk], 1);
            end;
        end;
     end;
   end;
  end;
  //���������� �/� � �����
  procedure TForm14.N17Click(Sender: TObject);
  var
  buttonSelected :integer;
  begin
    if (SEO_INFOSTATUS_VALUE.AsString = '2') Or (SEO_INFOSTATUS_VALUE.AsString = '3') Or (SZ_Enter.Form1.User_is_admin)  then
    Begin
      buttonSelected := MessageDlg ('��������� ��������� ������������ � ��������� ������� ����?', mtConfirmation, mbOkCancel, 5);
     if buttonSelected = mrOk then
     begin
      OraclePackage1.CallProcedure('Set_Price_In_SEO_by_ID_Str', [SZ_CONTENT_SEOID.AsInteger]);
     end;
    End
    Else  MessageDlg('��������� ������� ��� �� ��������� �������!', MtError, [mbOk], 1);
  end;

procedure TForm14.N1Click(Sender: TObject);
  begin
    if pagecontrol1.ActivePage.Caption = '�/� �� �������'then
    begin
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
       if Form14.Is_SZ_Have_Answer(info_mainSZ_ID.AsInteger) = '0' then
        begin
          SZ_SEO_IMPORT.Form19.ShowModal;
        end
        else
        begin
          MessageDlg ('������ �/� ��� ��������� � ����� � ' + Form14.Is_SZ_Have_Answer(info_mainSZ_ID.AsInteger), MtInformation, [mbOk], 1);
        end;
    end
    else if pagecontrol1.ActivePage.Caption = '�/� �������� � ������'then
    begin
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Sign_InfoSZ_ID.AsInteger);
       if Form14.Is_SZ_Have_Answer(Sign_InfoSZ_ID.AsInteger) = '0' then
        begin
          SZ_SEO_IMPORT.Form19.ShowModal;
        end
        else
        begin
          MessageDlg ('������ �/� ��� ��������� � ����� � ' + Form14.Is_SZ_Have_Answer(Sign_InfoSZ_ID.AsInteger), MtInformation, [mbOk], 1);
        end;
    end;
  end;
  //�������� �/�
  procedure TForm14.N20Click(Sender: TObject);
begin
     if not SZ_USER_LIST.Form38.Showing
     then
       SZ_USER_LIST.Form38.Show //�������� ������ �������������
     Else if SZ_USER_LIST.Form38.Showing
     then
       SZ_USER_LIST.Form38.SetFocus //�������� ������ �������������
end;

procedure TForm14.N211Click(Sender: TObject);
  begin
    SZ_CREAT_SEO.Form9.ShowModal;
    DBGridEh_OUTP.StartLoadingStatus('�������� ������! ��������...');
    DBGridEh4.StartLoadingStatus('�������� ������! ��������...');
    seo_info.Refresh;
    DBGridEh_OUTP.FinishLoadingStatus();
    DBGridEh4.FinishLoadingStatus();
  end;

{$ENDRegion '������ � �/� - ��������, ��������������, ���������� � �����'}

{$Region '����� �� ������'}

  procedure TForm14.dsd1Click(Sender: TObject);
  begin
    if pagecontrol1.ActivePage.Caption = '�/� �� �������'then
    begin
      if not info_main.IsEmpty  then
      begin
        SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', info_mainSZ_ID.AsInteger);
        DBGridEh_IMP.SaveBookmark;
        SZ_PRINT.form16.ShowModal;
        DBGridEh_IMP.RestoreBookmark;
      end;
    end
    else if pagecontrol1.ActivePage.Caption = '�/� �������� � ������'then
    begin
      if not Sign_info.IsEmpty then
      begin
        SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Sign_InfoSZ_ID.AsInteger);
        DBGridEh_SIGN.SaveBookmark;
        SZ_PRINT.form16.ShowModal;
        DBGridEh_SIGN.RestoreBookmark;;
      end;
    end
    else if pagecontrol1.ActivePage.Caption = '��������� �/�'then
    begin
      if not Seo_info.IsEmpty then
      begin
      SZ_CHS_PRNT.Form27.ShowModal;
        if seo_info.FieldByName('SZ_FREE_FORM').AsInteger = 0 then
        begin
        if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_CHS_PRNT') = '0' then
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_infoSZ_ID.AsInteger);
             DBGridEh_OUTP.SaveBookmark;
             SZ_PRINT_SEO.form17.ShowModal;
             DBGridEh_OUTP.RestoreBookmark;
          end
        else if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_CHS_PRNT') = '1' then
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_infoSZ_ID.AsInteger);
             DBGridEh_OUTP.SaveBookmark;
             SZ_PRINT_4S_SEO.Form29.ShowModal;
             DBGridEh_OUTP.RestoreBookmark;
          end;
        end
        else if seo_info.FieldByName('SZ_FREE_FORM').AsInteger = 1 then
        begin
        if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_CHS_PRNT') = '0' then
          begin
            SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_infoSZ_ID.AsInteger);
            DBGridEh_OUTP.SaveBookmark;
            SZ_PRINT_SEO_FF.Form32.ShowModal;
            DBGridEh_OUTP.RestoreBookmark;
          end;
          if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_CHS_PRNT') = '1' then
          begin
            SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', Seo_infoSZ_ID.AsInteger);
            DBGridEh_OUTP.SaveBookmark;
            SZ_PRINT_SEO_FF_4S.Form33.ShowModal;
            DBGridEh_OUTP.RestoreBookmark;
          end;
        end;
      end;
    end
     else if pagecontrol1.ActivePage.Caption = '����'then
    begin
      if not STATUS_SZ_DB.IsEmpty then
      begin
      if not Form14.Is_SZ_have_free_form(STATUS_SZ_DBSZ_ID.AsInteger) then // ���� �/� � ��������� ����������
        begin
          SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', STATUS_SZ_DBSZ_ID.AsInteger);
          DBGridEh_STATUS.SaveBookmark;
          SZ_PRINT_SEO.form17.ShowModal;
          DBGridEh_STATUS.RestoreBookmark;
        end
        else if Form14.Is_SZ_have_free_form(STATUS_SZ_DBSZ_ID.AsInteger) then // ���� �/� � ���������� ����������� ������������
        begin
          SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ID', STATUS_SZ_DBSZ_ID.AsInteger);
          DBGridEh_STATUS.SaveBookmark;
          SZ_PRINT_SEO_FF.Form32.ShowModal;
          DBGridEh_STATUS.RestoreBookmark;
        end;
      end;
    end;
  end;

{$ENDRegion '����� �� ������'}

{$Region '�������� �����'}

procedure TForm14.FormShow(Sender: TObject);
begin
  DBGridEh_OUTP.StartLoadingStatus('�������� ������! ��������...');
  DBGrid_Content.StartLoadingStatus('�������� ������! ��������...');
  //��������� ����������
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_ID',otInteger);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_CHS_PRNT',otInteger);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_ID_STR',otInteger);
  SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_CHS_PRNT',0);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_KOD_OBR',otString);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_NAME_OBR',otString);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_NOMER_OBR',otString);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_KD_OBR',otString);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_ADD_OBR',otInteger);
  SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_STR_NUM',otString);
  form14.WindowState := wsNormal;
  form14.FormStyle := fsStayOnTop;
  form14.FormStyle := fsNormal;
  form14.Caption := '���� �������� ��������� ������������' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_PROG_VERSION');
  {****************************************** �������� �������� *****************************************}
  //�����������
  DS_Users_Info.Close;
  DS_Users_Info.SetVariable('v_User_Type', 3);
  DS_Users_Info.Open;
  Ds_Users.Close;
  Ds_Users.Open;
  DS_Users_Seo.Close;
  DS_Users_Seo.Open;
  //������� ������� �/� ���
  Seo_Info.Close;
  Seo_Info.Open;
  //�������� �/�
  info_main.Close;
  info_main.Open;
  //���-�� �������� (����������� ������ ���.)
  info_main_2.Close;
  info_main_2.Open;
  //���-�� �������� (����������� ���� �� ��������� � .._2)
  info_main_3.Close;
  info_main_3.Open;
  //����������� �/�
  Sign_Info.Close;
  Sign_Info.Open;
  //������ �/� �� �������
  sz_content.Close;
  sz_content.Open;
  //������ ����������� �/�
  sz_content_2.Close;
  sz_content_2.Open;
  //������ �/� ���
  sz_content_seo.Close;
  sz_content_seo.Open;
  //���-�� �����������
  Ballon_Log_Counter.Close;
  Ballon_Log_Counter.Open;
  //����������� � ����� �/�
  ds_notif.Close;
  ds_notif.Open;
  //����������� ������
  ds_admin_notif.Close;
  ds_admin_notif.SetVariable('vId',SZ_Enter.Form1.User_Id);
  ds_admin_notif.open;
  //��������� �������
  Status_Type_DB.Close;
  Status_Type_DB.Open;
  //������� ����
  Status_SZ_DB.Close;
  Status_SZ_DB.Open;
  //����������� � �������� ������� ���������� �/� ���
  ballonlog.Close;
  ballonlog.Open;
  //
  Db_Main_Appr_Steps.Close;
  Db_Main_Appr_Steps.Open;
  Db_Seo_Appr_Steps.Close;
  Db_Seo_Appr_Steps.Open;
  OTDEL_TYPE_DB.Close;
  OTDEL_TYPE_DB.Open;
  {*********************************************************************************************************************************}
  Timer1.Enabled := true;
  Timer3.Enabled := false;
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
  LCB_Contact_Main.Text := '���';
  LCB_Status_Seo.Text := '���';
  LCB_Contact_Sign.Text := '���';
  LCB_Contact_Info.Text := '���';
  LCB_Contact_Seo.Text := OraclePackage2.CallStringFunction('getNameUser',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]);
  LCB_Otdel.KeyValue := 2;
  //���� ������������ �����
  if SZ_Enter.Form1.User_is_admin then
  begin
   SZ_USER_LIST.Form38.Show; //���������� ������� �������������, ������� ������
   N20.Visible := true; // ���������� ������ ��� �������� ������ ������������� ������ (���� �������)
  end;
//   if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')])) = 1 then
//   begin
//      N6.Checked := true;
//   end;
  DTP_Date_To.Date := now ();
  DTP_Date_From.Date := IncMonth(Now(),-2);
  STATUS_SZ_DB.SetVariable('DATE_FROM',DateToStr(DTP_Date_From.Date));
  STATUS_SZ_DB.SetVariable('DATE_TO',DateToStr(DTP_Date_To.Date));
  STATUS_SZ_DB.Refresh;
  DBGridEh_OUTP.FinishLoadingStatus();
  DBGrid_Content.FinishLoadingStatus();
end;

{$ENDRegion '�������� �����'}

{$Region '�������� �����'}

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not  exit_btn_is_pushed then
  begin
    SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Tray');
    if SZ_Enter.Form1.User_is_admin then
    begin
     if SZ_USER_LIST.Form38.Showing then //���� ������������ ������� ������������� ������, �� �� ���������
     begin
       SZ_USER_LIST.Form38.Close;
     end;
    end;
    form14.Close;
  end;
end;
//����� ������
procedure TForm14.Button6Click(Sender: TObject);
begin
 SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Tray');
 if SZ_Enter.Form1.User_is_admin then
  begin
   if SZ_USER_LIST.Form38.Showing then //���� ������������ ������� ������������� ������, �� �� ���������
   begin
     SZ_USER_LIST.Form38.Close;
   end;
  end;
 form14.Close;
end;

{$ENDRegion '�������� �����'}

{$Region '�������'}

  procedure TForm14.N3Click(Sender: TObject);
  begin
   if FileExists('P:\������� ������������ ���� ��������� �������.pdf') then
   begin
    ShellExecute(handle,nil,PChar('P:\������� ������������ ���� ��������� �������.pdf'),nil,nil,SW_SHOWNORMAL);
   end;
  end;

  procedure TForm14.N4Click(Sender: TObject);
  begin
   SZ_LOG.Form30.ShowModal;
  end;

{$ENDRegion '�������'}

procedure TForm14.N6Click(Sender: TObject);
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

{$Region '�������� ��� ����� �������'}

  procedure TForm14.PageControl1Change(Sender: TObject);
  var
  count,i:integer;
  begin
    if pagecontrol1.ActivePage.Caption = '�/� �� �������' then
    begin
      CANCEL_SIGN_BTN.Visible := True;
      SIGN_BTN.Visible := True;
      info_main.Refresh;
    end
    else  if pagecontrol1.ActivePage.Caption = '�/� �������� � ������' then
    begin
      CANCEL_SIGN_BTN.Visible := false;
      SIGN_BTN.Visible := false;
      sign_info.Refresh;
    end

  else if pagecontrol1.ActivePage.Caption = '����' then
    begin
      CANCEL_SIGN_BTN.Visible := false;
      SIGN_BTN.Visible := false;
      STATUS_SZ_DB.Refresh;
    end
  else if pagecontrol1.ActivePage.Caption = '��������� �/�' then
    begin
      CANCEL_SIGN_BTN.Visible := true;
      SIGN_BTN.Visible := true;
      seo_info.Refresh;
    end
  end;

{$ENDRegion '�������� ��� ����� �������'}

{$Region '�������'}
//���������� �����������
procedure TForm14.Timer1Timer(Sender: TObject);
begin
  Ballon_Log_Counter.Refresh;
  info_main_2.Refresh;
  ds_admin_notif.Refresh;
  TrayIcon1.Hint := '�/� �� ������ ������' + '(' + info_main_2NUM_STR.AsString + ')';
  if info_main_2NUM_STR.AsInteger  <> 0 then
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
  if Info_main_2NUM_STR.AsInteger <> Info_main_3NUM_STR.AsInteger then
  begin
    Info_Main_3.Refresh;
  end;
end;
//���������� �������� ������
 procedure TForm14.INFO_MAIN_3AfterRefresh(DataSet: TDataSet);
begin
  Info_Main.Refresh;
  TrayIcon1.Visible := true; //���������� ������ ����
  TrayIcon1.Animate := true; //�������� �������� (�������� ������� ������)
  TrayIcon1.BalloonHint := '� ��� ����� �/� �� �������!' + '(' + DateTimeToStr( Now() ) + ')';
  TrayIcon1.ShowBalloonHint;
  TrayIcon1.Animate := false; //��������� ��������
  TrayIcon1.IconIndex := 0; //������������� ������ �������� � ������
end;
//�������������� ���������� �������
procedure TForm14.Timer3Timer(Sender: TObject);
begin
    OraclePackage1.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']);
    Application.Terminate;
end;

{$ENDRegion '�������'}

{$Region '��������������� �������'}
 //�������� ������� � �/�
function TForm14.Is_SZ_have_free_form(Sz_Id: Integer) :bool;
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
 procedure TForm14.LCB_Contact_InfoKeyValueChanged(Sender: TObject);
begin
 if LCB_Contact_Info.Text <> '���' then
 begin
  STATUS_SZ_DB.SetVariable( 'vContact', LCB_Contact_Info.Text );
  if STATUS_SZ_DB.Active
  then
    STATUS_SZ_DB.Refresh;
 end
 else if LCB_Contact_Info.Text = '���' then
 begin
  STATUS_SZ_DB.SetVariable( 'vContact', '%' );
  if STATUS_SZ_DB.Active
  then
    STATUS_SZ_DB.Refresh;
 end;
end;

procedure TForm14.LCB_Contact_SeoKeyValueChanged(Sender: TObject);
begin
 if LCB_Contact_Seo.Text <> '���' then
 begin
  SEO_INFO.SetVariable( 'vContact', LCB_Contact_Seo.Text );
  if SEO_INFO.Active
  then
    SEO_INFO.Refresh;
 end
 else if LCB_Contact_Seo.Text = '���' then
 begin
  SEO_INFO.SetVariable( 'vContact', '%' );
  if SEO_INFO.Active
  then
    SEO_INFO.Refresh;
 end;
end;

procedure TForm14.LCB_Contact_SignKeyValueChanged(Sender: TObject);
begin
 if LCB_Contact_Sign.Text <> '���' then
 begin
  Sign_Info.SetVariable( 'vContact', LCB_Contact_Sign.Text );
  if Sign_Info.Active
  then
    Sign_Info.Refresh;
 end
 else if LCB_Contact_Sign.Text = '���' then
 begin
  Sign_Info.SetVariable( 'vContact', '%' );
  if Sign_Info.Active
  then
    Sign_Info.Refresh;
 end;
end;

procedure TForm14.LCB_OtdelKeyValueChanged(Sender: TObject);
begin
  DBGridEh_STATUS.StartLoadingStatus('�������� ������! ��������...');
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

procedure TForm14.LCB_Status_SeoKeyValueChanged(Sender: TObject);
begin
  SEO_INFO.SetVariable( 'v_Appr_Step', LCB_Status_Seo.KeyValue );
  if SEO_INFO.Active
  then
    SEO_INFO.Refresh;
end;

//������� �/� � ����
function TForm14.Is_SZ_Exist(Sz_Id :integer) :bool;
 begin
  SimpleSQL.Close;
  SimpleSQL.SQL.Clear;
  SimpleSQL.DeclareVariable('Sz_Id',otinteger);
  SimpleSQL.DeclareVariable('User_Id',otinteger);
  SimpleSQL.SetVariable('Sz_Id', Sz_Id);
  SimpleSQL.SetVariable('User_Id', Sz_Enter.Form1.User_Id);
  SimpleSQL.SQL.Add('select count (*) from mrk.sz_seo_main t where t.SZ_ID = :Sz_Id and t.Sz_Id_cont = :User_id');
  SimpleSQL.ExecSQL;
  SimpleSQL.Open;
  if SimpleSQL.Fields[0].AsInteger <> 0 then result := true else result := false;
 end;
 //�������� ����������� �������������� �/�
 function TForm14.Can_SZ_Edit(Sz_Id :integer) :integer;
 begin
  SimpleSQL.Close;
  SimpleSQL.SQL.Clear;
  SimpleSQL.DeleteVariables;
  SimpleSQL.DeclareVariable('Sz_Id',otinteger);
  SimpleSQL.SetVariable('Sz_Id', Sz_Id);
  SimpleSQL.SQL.Add('select t.sz_id_cont from mrk.sz_seo_main t where t.SZ_ID = :Sz_Id');
  SimpleSQL.ExecSQL;
  SimpleSQL.Open;
  if SimpleSQL.Fields[0].AsInteger <> Sz_Enter.Form1.User_Id then result := 1 //������ ������������� �.�. ����� �/�
  else if SimpleSQL.Fields[0].AsInteger = Sz_Enter.Form1.User_Id then
  begin
    SimpleSQL.Close;
    SimpleSQL.SQL.Clear;
    SimpleSQL.DeleteVariables;
    SimpleSQL.DeclareVariable('Sz_Id',otinteger);
    SimpleSQL.SetVariable('Sz_Id', Sz_Id);
    SimpleSQL.SQL.Add('select t.sz_from_y from mrk.sz_seo_main t where t.SZ_ID = :Sz_Id');
    SimpleSQL.ExecSQL;
    SimpleSQL.Open;
    if SimpleSQL.Fields[0].AsInteger <> 0 then result := 2 {������ ������������� �.�. ��� ��������� ����������� �������������}
    else result := 3;
  end;
 end;
procedure TForm14.LCB_Contact_MainKeyValueChanged(Sender: TObject);
begin
 if LCB_Contact_Main.Text <> '���' then
 begin
  INFO_MAIN.SetVariable( 'vContact', LCB_Contact_Main.Text );
  if INFO_MAIN.Active
  then
    INFO_MAIN.Refresh;
 end
 else if LCB_Contact_Main.Text = '���' then
 begin
  INFO_MAIN.SetVariable( 'vContact', '%' );
  if INFO_MAIN.Active
  then
    INFO_MAIN.Refresh;
 end;
end;

function TForm14.Is_SZ_Have_Answer(Sz_Id :integer) :string;
var v_sz_seo_id :integer;
begin
 SimpleSQL.Close;
 SimpleSQL.SQL.Clear;
 SimpleSQL.DeleteVariables;
 SimpleSQL.DeclareVariable('Sz_Id',otinteger);
 SimpleSQL.SetVariable('Sz_Id', Sz_Id);
 SimpleSQL.SQL.Add('select t.sz_id_seo from mrk.sz_table_test t where t.SZ_ID = :Sz_Id');
 SimpleSQL.ExecSQL;
 SimpleSQL.Open;
 if SimpleSQL.Fields[0].AsInteger = 0 then result := '0' {��� ����� �� ���}
 else
 begin
   v_sz_seo_id := SimpleSQL.Fields[0].AsInteger;
   SimpleSQL.Close;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeleteVariables;
   SimpleSQL.DeclareVariable('Sz_Id',otinteger);
   SimpleSQL.SetVariable('Sz_Id', v_sz_seo_id);
   SimpleSQL.SQL.Add('select t.sz_numb, t.sz_date from mrk.sz_table_test t where t.SZ_ID = :Sz_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result := SimpleSQL.Fields[0].AsString + ' �� ' + SimpleSQL.Fields[1].AsString;
 end;
end;
{$ENDRegion '��������������� �������'}

end.
