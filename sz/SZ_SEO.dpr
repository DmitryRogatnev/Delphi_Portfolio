program SZ_SEO;

{$R *.dres}

uses
  Vcl.Forms,
  OracleData,
  SZ_ENTER in 'SZ_ENTER.pas' {Form1},
  SZ_MAIN in 'SZ_MAIN.pas' {Form_Sz_Main},
  SZ_CHOOSE_STR in 'SZ_CHOOSE_STR.pas' {Form3},
  SZ_COMMET_CREAT in 'SZ_COMMET_CREAT.pas' {Form4},
  SZ_COMMET_EDIT in 'SZ_COMMET_EDIT.pas' {Form5},
  SZ_COMMET_VIEW in 'SZ_COMMET_VIEW.pas' {Form6},
  SZ_COMMET_VIEW_SEO in 'SZ_COMMET_VIEW_SEO.pas' {Form7},
  SZ_CREAT in 'SZ_CREAT.pas' {Form8},
  SZ_CREAT_SEO in 'SZ_CREAT_SEO.pas' {Form9},
  SZ_EDIT in 'SZ_EDIT.pas' {Form10},
  SZ_EDIT_SEO in 'SZ_EDIT_SEO.pas' {Form11},
  SZ_MAIN_HEAD in 'SZ_MAIN_HEAD.pas' {Form12},
  SZ_MAIN_OSTD in 'SZ_MAIN_OSTD.pas' {Form13},
  SZ_MAIN_SEO in 'SZ_MAIN_SEO.pas' {Form14},
  SZ_OSTD_CHECK in 'SZ_OSTD_CHECK.pas' {Form15},
  SZ_PRINT in 'SZ_PRINT.pas' {Form16},
  SZ_PRINT_SEO in 'SZ_PRINT_SEO.pas' {Form17},
  SZ_SEO_HEAD in 'SZ_SEO_HEAD.pas' {Form18},
  SZ_SEO_IMPORT in 'SZ_SEO_IMPORT.pas' {Form19},
  SZ_VARIABLES in 'SZ_VARIABLES.pas' {Form20},
  SZ_WARN in 'SZ_WARN.pas' {Form21},
  SZ_MARKETING in 'SZ_MARKETING.pas' {Form22},
  SZ_ADMIN in 'SZ_ADMIN.pas' {Form23},
  SZ_NAMECHS in 'SZ_NAMECHS.pas' {Form24},
  SZ_ASUP in 'SZ_ASUP.pas' {Form25},
  SZ_SEARCH in 'SZ_SEARCH.pas' {Form26},
  SZ_CHS_PRNT in 'SZ_CHS_PRNT.pas' {Form27},
  SZ_PRINT_4S in 'SZ_PRINT_4S.pas' {Form28},
  SZ_PRINT_4S_SEO in 'SZ_PRINT_4S_SEO.pas' {Form29},
  SZ_LOG in 'SZ_LOG.pas' {Form30},
  SZ_ADMIN_MES in 'SZ_ADMIN_MES.pas' {Form31},
  SZ_PRINT_SEO_FF in 'SZ_PRINT_SEO_FF.pas' {Form32},
  SZ_PRINT_SEO_FF_4S in 'SZ_PRINT_SEO_FF_4S.pas' {Form33},
  SZ_GOZ_EXP in 'SZ_GOZ_EXP.pas' {Form34},
  SZ_SEO_STREDIT in 'SZ_SEO_STREDIT.pas' {Form35},
  SZ_ADD_OBR in 'SZ_ADD_OBR.pas' {Form36},
  SZ_CHS_DOL in 'SZ_CHS_DOL.pas' {Form37},
  Udm_Main in '..\..\Unit\Udm_Main\Udm_Main.Pas' {DM_Main: TDataModule},
  SZ_USER_LIST in 'SZ_USER_LIST.pas' {Form38},
  SZ_USERS_4_SIGN_ADMIN in 'SZ_USERS_4_SIGN_ADMIN.pas' {Form39},
  SZ_ASUP_CHECK in 'SZ_ASUP_CHECK.pas' {Form40},
  Sz_DocsList_Frame in 'Sz_DocsList_Frame.pas' {Frame_DocsList: TFrame},
  Sz_FramesTemplates_Data in 'Sz_FramesTemplates_Data.pas' {Data_Templates: TDataModule},
  Gen_Chs_Data_Mod in '..\..\Project\Gen_Chs_Unit\Gen_Chs_Data_Mod.pas' {DM_Gen_Chs: TDataModule},
  Gen_Chs_Dd_Form in '..\..\Project\Gen_Chs_Unit\Gen_Chs_Dd_Form.pas' {Drop_D_Form_Gen_Chose: TCustomDropDownFormEh},
  Gen_Chs_Form in '..\..\Project\Gen_Chs_Unit\Gen_Chs_Form.pas' {Form_Gen_Chose},
  Sz_DocAppr_DForm in 'Sz_DocAppr_DForm.pas' {DForm_DocAppr: TCustomDropDownFormEh},
  Sz_DocSign in 'Sz_DocSign.pas' {Form_SzDocSign},
  Sz_DocFrame in 'Sz_DocFrame.pas' {Frame_Doc: TFrame},
  UWorkWithBuffer in 'UWorkWithBuffer.pas',
  Sz_DocReportData in 'Sz_DocReportData.pas' {Dm_ReportData: TDataModule},
  Dc_Comm_FilesDdForm in '..\..\Project\Doc_Comm\Dc_Comm_FilesDdForm.pas' {Drop_D_Dc_Comm_Files: TCustomDropDownFormEh},
  Dc_Comm_FilesForm in '..\..\Project\Doc_Comm\Dc_Comm_FilesForm.pas' {Form_Dc_Comm_Files},
  Dc_Comm_MainForm in '..\..\Project\Doc_Comm\Dc_Comm_MainForm.pas' {Form_Main_Dc_Comm},
  UnitDefaultFunctions in 'UnitDefaultFunctions.pas',
  Sz_DocEditRights_Form in 'Sz_DocEditRights_Form.pas' {Form_DocEditRights};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'База запросов стоимости оборудования';
  Application.CreateForm(TForm_Sz_Main, Form_Sz_Main);
  Application.CreateForm(TDM_Gen_Chs, DM_Gen_Chs);
  Application.CreateForm(TDrop_D_Dc_Comm_Files, Drop_D_Dc_Comm_Files);
  Application.CreateForm(TForm_DocEditRights, Form_DocEditRights);
  //Application.CreateForm(TForm_Dc_Comm_Files, Form_Dc_Comm_Files);
  //Application.CreateForm(TForm_Main_Dc_Comm, Form_Main_Dc_Comm);
  // Application.CreateForm(TDrop_D_Form_Gen_Chose, Drop_D_Form_Gen_Chose);
  //Application.CreateForm(TForm_Gen_Chose, Form_Gen_Chose);
  //Application.CreateForm(TDForm_DocAppr, DForm_DocAppr);
  //Application.CreateForm(TForm_SzDocSign, Form_SzDocSign);
  Application.CreateForm(TDm_ReportData, Dm_ReportData);
  //Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TForm17, Form17);
  Application.CreateForm(TForm18, Form18);
  Application.CreateForm(TForm19, Form19);
  Application.CreateForm(TForm20, Form20);
  Application.CreateForm(TForm21, Form21);
  Application.CreateForm(TForm22, Form22);
  Application.CreateForm(TForm23, Form23);
  Application.CreateForm(TForm24, Form24);
  Application.CreateForm(TForm25, Form25);
  Application.CreateForm(TForm26, Form26);
  Application.CreateForm(TForm27, Form27);
  Application.CreateForm(TForm28, Form28);
  Application.CreateForm(TForm29, Form29);
  Application.CreateForm(TForm30, Form30);
  Application.CreateForm(TForm31, Form31);
  Application.CreateForm(TForm32, Form32);
  Application.CreateForm(TForm33, Form33);
  Application.CreateForm(TForm34, Form34);
  Application.CreateForm(TForm35, Form35);
  Application.CreateForm(TForm36, Form36);
  Application.CreateForm(TForm37, Form37);
  Application.CreateForm(TDM_Main, DM_Main);
  Application.CreateForm(TForm38, Form38);
  Application.CreateForm(TForm39, Form39);
  Application.CreateForm(TForm40, Form40);
  Application.CreateForm(TDM_Gen_Chs, DM_Gen_Chs);
  //Application.CreateForm(TDrop_D_Form_Gen_Chose, Drop_D_Form_Gen_Chose);
  //Application.CreateForm(TForm_Gen_Chose, Form_Gen_Chose);
  Application.CreateForm(TData_Templates, Data_Templates);
  Application.Run;
end.
