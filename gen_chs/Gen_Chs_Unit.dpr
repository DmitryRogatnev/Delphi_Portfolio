program Gen_Chs_Unit;

uses
  Vcl.Forms,
  Gen_Chs_Data_Mod in 'Gen_Chs_Data_Mod.pas' {DM_Gen_Chs: TDataModule},
  Udm_Main in 'C:\acd\Source\Delphi\Unit\Udm_Main\Udm_Main.Pas' {DM_Main: TDataModule},
  Gen_Chs_Dd_Form in 'Gen_Chs_Dd_Form.pas' {Drop_D_Form_Gen_Chose: TCustomDropDownFormEh},
  Gen_Chs_Form in 'Gen_Chs_Form.pas' {Form_Gen_Chose};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Gen_Chs, DM_Gen_Chs);
  Application.CreateForm(TDM_Main, DM_Main);
  Application.CreateForm(TDrop_D_Form_Gen_Chose, Drop_D_Form_Gen_Chose);
  Application.CreateForm(TForm_Gen_Chose, Form_Gen_Chose);
  Application.Run;
end.
