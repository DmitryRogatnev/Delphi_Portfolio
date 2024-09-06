program Doc_Comm;

uses
  Vcl.Forms,
  Dc_Comm_MainForm in 'Dc_Comm_MainForm.pas' {Form_Main_Dc_Comm},
  Udm_Main in '..\..\Unit\Udm_Main\Udm_Main.Pas' {DM_Main: TDataModule},
  Dc_Comm_FilesForm in 'Dc_Comm_FilesForm.pas' {Form_Dc_Comm_Files},
  Gen_Chs_Data_Mod in '..\Gen_Chs_Unit\Gen_Chs_Data_Mod.pas' {DM_Gen_Chs: TDataModule},
  Gen_Chs_Dd_Form in '..\Gen_Chs_Unit\Gen_Chs_Dd_Form.pas' {Drop_D_Form_Gen_Chose: TCustomDropDownFormEh},
  Gen_Chs_Form in '..\Gen_Chs_Unit\Gen_Chs_Form.pas' {Form_Gen_Chose};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Main_Dc_Comm, Form_Main_Dc_Comm);
  Application.CreateForm(TDM_Main, DM_Main);
  Application.CreateForm(TForm_Dc_Comm_Files, Form_Dc_Comm_Files);
  Application.CreateForm(TDM_Gen_Chs, DM_Gen_Chs);
  Application.CreateForm(TDrop_D_Form_Gen_Chose, Drop_D_Form_Gen_Chose);
  Application.CreateForm(TForm_Gen_Chose, Form_Gen_Chose);
  Application.Run;
end.
