unit Tp_Gen_Chs_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, EhLibMTE, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Buttons, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.Menus;

type
  TForm_Gen_Chose = class(TForm)
    Grid_List: TDBGridEh;
    Panel1: TPanel;
    S_Btn_Accept: TSpeedButton;
    S_Btn_Cancel: TSpeedButton;
    Pop_M_Gen_Chose: TPopupMenu;
    Pop_M_Gen_Chose_Btn_Select: TMenuItem;
    procedure S_Btn_AcceptClick(Sender: TObject);
    procedure S_Btn_CancelClick(Sender: TObject);
    procedure Grid_ListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Grid_ListDblClick(Sender: TObject);
    procedure Pop_M_Gen_Chose_Btn_SelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Gen_Chose: TForm_Gen_Chose;

implementation

{$R *.dfm}

Uses

Tp_Main_Form;

procedure TForm_Gen_Chose.Grid_ListDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TForm_Gen_Chose.Grid_ListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_RETURN
  Then
    ModalResult := mrOk;

  If Key = VK_ESCAPE
  Then
    ModalResult := mrCancel;

end;

procedure TForm_Gen_Chose.Pop_M_Gen_Chose_Btn_SelectClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TForm_Gen_Chose.S_Btn_AcceptClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TForm_Gen_Chose.S_Btn_CancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
