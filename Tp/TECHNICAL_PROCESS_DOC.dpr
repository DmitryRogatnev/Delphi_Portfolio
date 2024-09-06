program TECHNICAL_PROCESS_DOC;



{$R *.dres}

uses
  Vcl.Forms,
  OracleData,
  Tp_Main_Form in 'Tp_Main_Form.pas' {Form_Tech_Proc_Main},
  Tp_Doc_Info_Form in 'Tp_Doc_Info_Form.pas' {Form_Doc_Info},
  Udm_Main in '..\..\Unit\Udm_Main\Udm_Main.Pas' {DM_Main: TDataModule},
  Tp_Approve_Doc_Form in 'Tp_Approve_Doc_Form.pas' {Form_Approve_Doc},
  Tp_Tech_Proc_Form in 'Tp_Tech_Proc_Form.pas' {Form_Tech_Proc_Info},
  Tp_Oper_Per_Text_Form in 'Tp_Oper_Per_Text_Form.pas' {Form_Oper_Per_Text},
  Tp_Add_Sym_Form in 'Tp_Add_Sym_Form.pas' {Form_Add_Sym},
  Tp_Oper_Files_Form in 'Tp_Oper_Files_Form.pas' {Form_Oper_Files},
  Tp_Det_For_Oper_Per_Form in 'Tp_Det_For_Oper_Per_Form.pas' {Form_Per_Det},
  Tp_Mat_For_Oper_Per_Form in 'Tp_Mat_For_Oper_Per_Form.pas' {Form_Per_Mat},
  Tp_Ins_For_Oper_Per_Form in 'Tp_Ins_For_Oper_Per_Form.pas' {Form_Per_Ins},
  Tp_Osn_For_Oper_Per_Form in 'Tp_Osn_For_Oper_Per_Form.pas' {Form_Per_Osn},
  Tp_Oper_Tk_Param_Form in 'Tp_Oper_Tk_Param_Form.pas' {Form_Oper_TK_Params},
  Tp_Doc_Comm_Form in 'Tp_Doc_Comm_Form.pas' {Form_Doc_Comments},
  Tp_Doc_Files_Form in 'Tp_Doc_Files_Form.pas' {Form_Doc_Files},
  Tp_Detail_Trud_Form in 'Tp_Detail_Trud_Form.pas' {Form_Detail_Trud},
  Tp_Detail_Docs_Connect_Form in 'Tp_Detail_Docs_Connect_Form.pas' {Form_Tp_Connected_Details},
  Tp_Copy_Detail_For_Det_Doc_Form in 'Tp_Copy_Detail_For_Det_Doc_Form.pas' {Form_Copy_Det_From_Rcd},
  Tp_Copy_Oper_For_Det_Doc_Form in 'Tp_Copy_Oper_For_Det_Doc_Form.pas' {Form_Copy_Opers_From_TTP},
  Tp_Complect_Doc_Form in 'Tp_Complect_Doc_Form.pas' {Form_Doc_Complect},
  Tp_Copy_Tech_Proc_Form in 'Tp_Copy_Tech_Proc_Form.pas' {Form_Chose_Doc_For_Copy},
  Tp_Chs_Oper_For_Copy in 'Tp_Chs_Oper_For_Copy.pas' {Form_Chs_Oper_For_Copy},
  Tp_Data_Mode in 'Tp_Data_Mode.pas' {Tp_Dm: TDataModule},
  Gen_Chs_Data_Mod in '..\Gen_Chs_Unit\Gen_Chs_Data_Mod.pas' {DM_Gen_Chs: TDataModule},
  Gen_Chs_Dd_Form in '..\Gen_Chs_Unit\Gen_Chs_Dd_Form.pas' {Drop_D_Form_Gen_Chose: TCustomDropDownFormEh},
  Gen_Chs_Form in '..\Gen_Chs_Unit\Gen_Chs_Form.pas' {Form_Gen_Chose},
  Tp_Data_Changes in 'Tp_Data_Changes.pas' {Form_Tp_Data_Changes},
  Tp_Memo_Text_Drp_D_Form in 'Tp_Memo_Text_Drp_D_Form.pas' {Drop_D_Form_MemoText: TCustomDropDownFormEh},
  Tp_Setup_Time_Calc in 'Tp_Setup_Time_Calc.pas' {Form_Setup_Time_Calc},
  Loading_Form in '..\..\Unit\Loading_Form\Loading_Form.Pas' {Form_Loading},
  Tp_Setup_Time_Calc_Config in 'Tp_Setup_Time_Calc_Config.pas' {Form_Tp_Setup_Time_Calc_Config},
  Tp_Per_Instr_Card in 'Tp_Per_Instr_Card.pas' {Form_Per_Instr_Card},
  Tp_Tech_Proc_DataModule in 'Tp_Tech_Proc_DataModule.pas' {Dm_Tech_Proc: TDataModule},
  Tp_TechProc_List_DataModule in 'Tp_TechProc_List_DataModule.pas' {Dm_TechProc_List: TDataModule},
  Filter_DropDown in '..\Filter_Unit\Filter_DropDown.pas' {DropDown_Filter: TCustomDropDownFormEh},
  FilterOption_Form in '..\Filter_Unit\FilterOption_Form.pas' {Form_OptionFilter},
  Tp_TechProc_Frame in 'Tp_TechProc_Frame.pas' {Frame_TechProc: TFrame},
  Tp_TechProc_DataFrame in 'Tp_TechProc_DataFrame.pas' {FrameData_TechProc: TFrame},
  Tp_TechProc_ListFrame in 'Tp_TechProc_ListFrame.pas' {Frame_TechProc_List: TFrame},
  Tp_TechProc_DocDetListFrame in 'Tp_TechProc_DocDetListFrame.pas' {Frame_Tp_TechProc_DocDetList: TFrame},
  Tp_TechProc_DocDetListDataFrame in 'Tp_TechProc_DocDetListDataFrame.pas' {Frame_Tp_TechProc_DocDetListData: TFrame},
  Tp_TechProc_ComplectFrame in 'Tp_TechProc_ComplectFrame.pas' {Frame_Tp_TechProcComplect: TFrame},
  Dc_Aprvl_Lst_Main_Form in '..\Doc_Approval_List\Dc_Aprvl_Lst_Main_Form.pas' {Form_Main_Dc_Aprvl_L},
  Dc_Aprvl_Lst_Setup_Form in '..\Doc_Approval_List\Dc_Aprvl_Lst_Setup_Form.pas' {Form_Setup_Dc_Arvl_Lst},
  Tp_TechProc_TimeNormHist in 'Tp_TechProc_TimeNormHist.pas' {Form_TechProc_TimeNormHist},
  Tp_TechProc_ChronCards in 'Tp_TechProc_ChronCards.pas' {Form_Tp_ChronCards},
  Tp_TechProc_CoAuthorsForm in 'Tp_TechProc_CoAuthorsForm.pas' {Form_CoAuthors},
  Tp_TechProc_DocTypesConfigForm in 'Tp_TechProc_DocTypesConfigForm.pas' {Form_Doc_TypesConfig};

{$R *.res}
//{$R SQL_lists\SQL_lists.RES}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Tech_Proc_Main, Form_Tech_Proc_Main);
  Application.CreateForm(TForm_Tp_ChronCards, Form_Tp_ChronCards);
  Application.CreateForm(TForm_Doc_TypesConfig, Form_Doc_TypesConfig);
  //Application.CreateForm(TForm_CoAuthors, Form_CoAuthors);
  //Application.CreateForm(TForm_TechProc_TimeNormHist, Form_TechProc_TimeNormHist);
  //Application.CreateForm(TForm_Doc_Info, Form_Doc_Info);
  Application.CreateForm(TDM_Main, DM_Main);
  //Application.CreateForm(TForm_Approve_Doc, Form_Approve_Doc);
  //Application.CreateForm(TForm_Doc_Comments, Form_Doc_Comments);
  //Application.CreateForm(TForm_Doc_Files, Form_Doc_Files);
  Application.CreateForm(TForm_Detail_Trud, Form_Detail_Trud);
  //Application.CreateForm(TForm_Copy_Det_From_Rcd, Form_Copy_Det_From_Rcd);
  //Application.CreateForm(TForm_Copy_Opers_From_TTP, Form_Copy_Opers_From_TTP);
  Application.CreateForm(TForm_Doc_Complect, Form_Doc_Complect);
  Application.CreateForm(TForm_Chose_Doc_For_Copy, Form_Chose_Doc_For_Copy);
  Application.CreateForm(TTp_Dm, Tp_Dm);
  Application.CreateForm(TDM_Gen_Chs, DM_Gen_Chs);
  //Application.CreateForm(TForm_Gen_Chose, Form_Gen_Chose);
  //Application.CreateForm(TDrop_D_Form_Gen_Chose, Drop_D_Form_Gen_Chose);
  Application.CreateForm(TForm_Tp_Data_Changes, Form_Tp_Data_Changes);
  Application.CreateForm(TDrop_D_Form_MemoText, Drop_D_Form_MemoText);
  Application.CreateForm(TForm_Main_Dc_Aprvl_L, Form_Main_Dc_Aprvl_L);
  Application.CreateForm(TForm_Setup_Dc_Arvl_Lst, Form_Setup_Dc_Arvl_Lst);
  //Application.CreateForm(TForm_Setup_Time_Calc, Form_Setup_Time_Calc);
  Application.CreateForm(TForm_Loading, Form_Loading);
  Application.CreateForm(TForm_Tp_Setup_Time_Calc_Config, Form_Tp_Setup_Time_Calc_Config);
  Application.CreateForm(TForm_Per_Instr_Card, Form_Per_Instr_Card);
  Application.Run;
end.
