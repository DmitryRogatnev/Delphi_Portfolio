unit Tp_Memo_Text_Drp_D_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DropDownFormEh, Dialogs, DynVarsEh, ToolCtrlsEh, Vcl.StdCtrls, Vcl.Mask,
  DBCtrlsEh, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TDrop_D_Form_MemoText = class(TCustomDropDownFormEh)
    Panel1: TPanel;
    Mem_Text: TDBMemoEh;
    Bnt_Apply: TButton;
    Btn_Cancel: TButton;
    Btn_Zoom_Pls: TButton;
    Btn_Zoom_Mins: TButton;
    procedure Btn_Zoom_PlsClick(Sender: TObject);
    procedure Btn_Zoom_MinsClick(Sender: TObject);
    procedure CustomDropDownFormEhInitForm(Sender: TCustomDropDownFormEh;
      DynParams: TDynVarsEh);
    procedure CustomDropDownFormEhReturnParams(Sender: TCustomDropDownFormEh;
      DynParams: TDynVarsEh);
    procedure Bnt_ApplyClick(Sender: TObject);
    procedure Btn_CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function GetGlobalRef: TCustomDropDownFormEh; override;
  end;

var
  Drop_D_Form_MemoText: TDrop_D_Form_MemoText;

implementation

{$R *.dfm}

Uses
Tp_Main_Form;

procedure TDrop_D_Form_MemoText.Bnt_ApplyClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
  Self.Close;
end;

procedure TDrop_D_Form_MemoText.Btn_CancelClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
  Self.Close;
end;

procedure TDrop_D_Form_MemoText.Btn_Zoom_MinsClick(Sender: TObject);
begin
  Mem_Text.Font.Size := Mem_Text.Font.Size - 1;
end;

procedure TDrop_D_Form_MemoText.Btn_Zoom_PlsClick(Sender: TObject);
begin
  Mem_Text.Font.Size := Mem_Text.Font.Size + 1;
end;

procedure TDrop_D_Form_MemoText.CustomDropDownFormEhInitForm(
  Sender: TCustomDropDownFormEh; DynParams: TDynVarsEh);
begin
  Mem_Text.Text := DynParams['Text'].AsString;
end;

procedure TDrop_D_Form_MemoText.CustomDropDownFormEhReturnParams(
  Sender: TCustomDropDownFormEh; DynParams: TDynVarsEh);
begin
  DynParams['Text'].AsString := Mem_Text.Text;
end;

class function TDrop_D_Form_MemoText.GetGlobalRef: TCustomDropDownFormEh;
begin
  if Drop_D_Form_MemoText = nil then
    Application.CreateForm(TDrop_D_Form_MemoText, Drop_D_Form_MemoText);
  Result := Drop_D_Form_MemoText;
end;

initialization
  RegisterClass(TDrop_D_Form_MemoText);

end.