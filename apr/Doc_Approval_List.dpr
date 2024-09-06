program Doc_Approval_List;

uses
  Vcl.Forms,
  Dc_Aprvl_Lst_Main_Form in 'Dc_Aprvl_Lst_Main_Form.pas' {Form_Main_Dc_Aprvl_L},
  Udm_Main in '..\..\Unit\Udm_Main\Udm_Main.Pas' {DM_Main: TDataModule},
  Dc_Aprvl_Lst_Setup_Form in 'Dc_Aprvl_Lst_Setup_Form.pas' {Form_Setup_Dc_Arvl_Lst},
  Gen_Chs_Data_Mod in '..\Gen_Chs_Unit\Gen_Chs_Data_Mod.pas' {DM_Gen_Chs: TDataModule},
  Gen_Chs_Dd_Form in '..\Gen_Chs_Unit\Gen_Chs_Dd_Form.pas' {Drop_D_Form_Gen_Chose: TCustomDropDownFormEh},
  Gen_Chs_Form in '..\Gen_Chs_Unit\Gen_Chs_Form.pas' {Form_Gen_Chose};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Main_Dc_Aprvl_L, Form_Main_Dc_Aprvl_L);
  Application.CreateForm(TDM_Main, DM_Main);
  Application.CreateForm(TForm_Setup_Dc_Arvl_Lst, Form_Setup_Dc_Arvl_Lst);
  Application.CreateForm(TDM_Gen_Chs, DM_Gen_Chs);
  Application.CreateForm(TDrop_D_Form_Gen_Chose, Drop_D_Form_Gen_Chose);
  Application.CreateForm(TForm_Gen_Chose, Form_Gen_Chose);
  Application.Run;
end.
