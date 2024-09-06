program Filter_Unit;

uses
  Vcl.Forms,
  FilterOption_Form in 'FilterOption_Form.pas' {Form1},
  Filter_DropDown in 'Filter_DropDown.pas' {DropDownForm2: TCustomDropDownFormEh};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDropDownForm2, DropDownForm2);
  Application.Run;
end.
