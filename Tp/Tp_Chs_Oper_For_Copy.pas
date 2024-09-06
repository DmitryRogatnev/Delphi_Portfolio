unit Tp_Chs_Oper_For_Copy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm_Chs_Oper_For_Copy = class(TForm)
    Grid_Chosen_Opers: TDBGridEh;
    Panel1: TPanel;
    S_Btn_Accept: TSpeedButton;
    S_Btn_Cancel: TSpeedButton;
    DBGridEh1: TDBGridEh;
    procedure S_Btn_AcceptClick(Sender: TObject);
    procedure S_Btn_CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Chs_Oper_For_Copy: TForm_Chs_Oper_For_Copy;

implementation

{$R *.dfm}

Uses
Tp_Tech_Proc_Form, Tp_Data_Mode;

procedure TForm_Chs_Oper_For_Copy.S_Btn_AcceptClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TForm_Chs_Oper_For_Copy.S_Btn_CancelClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

end.
