unit Tp_Copy_Oper_For_Det_Doc_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBGridEh, Data.DB, Oracle, DBCtrlsEh,
  Vcl.StdCtrls, Vcl.Mask, DBLookupEh, OracleData, EhLibVCL, GridsEh,
  DBAxisGridsEh, Vcl.ExtCtrls, EhLibMTE, MemTableDataEh,
  MemTableEh, DataDriverEh, Vcl.Menus;

type
  TForm_Copy_Opers_From_TTP = class(TForm)
    Panel1: TPanel;
    COPY_1_Check: TCheckBox;
    COPY_2_Check: TCheckBox;
    COPY_BTN: TButton;
    EXIT_BTN: TButton;
    Grid_Operations: TDBGridEh;
    Btn_Chose_All: TButton;
    Btn_Unchose_All: TButton;
    Pop_M_Operations_For_Copy: TPopupMenu;
    Pop_M_Operations_For_Copy_Btn_Chose: TMenuItem;
    Pop_M_Operations_For_Copy_Btn_UnChose: TMenuItem;
    procedure EXIT_BTNClick(Sender: TObject);
    procedure COPY_1_CheckClick(Sender: TObject);
    procedure COPY_2_CheckClick(Sender: TObject);
    procedure Btn_Chose_AllClick(Sender: TObject);
    procedure Btn_Unchose_AllClick(Sender: TObject);
    procedure COPY_BTNClick(Sender: TObject);
    procedure Pop_M_Operations_For_Copy_Btn_ChoseClick(Sender: TObject);
    procedure Pop_M_Operations_For_Copy_Btn_UnChoseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Doc_Id: Integer;
    v_Main_Doc_Id: Integer;
    v_Function_of_Copy: Integer;
    v_Det_Id: Integer;
    v_Det_Row_Id: Integer;
  end;

var
  Form_Copy_Opers_From_TTP: TForm_Copy_Opers_From_TTP;

implementation

{$R *.dfm}

Uses
Tp_Main_Form, Udm_Main, Tp_Detail_Docs_Connect_Form, Tp_Complect_Doc_Form, Tp_TechProc_List_DataModule;

procedure TForm_Copy_Opers_From_TTP.Btn_Chose_AllClick(Sender: TObject);
begin
  Grid_Operations.Selection.SelectAll;
end;

procedure TForm_Copy_Opers_From_TTP.Btn_Unchose_AllClick(Sender: TObject);
begin
  Grid_Operations.Selection.Clear;
end;

procedure TForm_Copy_Opers_From_TTP.COPY_1_CheckClick(Sender: TObject);
begin
  if COPY_1_Check.Checked then
  Begin
    COPY_2_Check.Checked := False;
    v_Function_of_Copy := 1;
  End;
end;

procedure TForm_Copy_Opers_From_TTP.COPY_2_CheckClick(Sender: TObject);
begin
  if COPY_2_Check.Checked then
  Begin
    COPY_1_Check.Checked := False;
    v_Function_of_Copy := 2;
  End;
end;

procedure TForm_Copy_Opers_From_TTP.COPY_BTNClick(Sender: TObject);
Var
  v_User_Lnum: Integer;
  v_Button_Selected: Integer;
begin
  If Grid_Operations.Selection.SelectionType = gstNon
  Then
  Begin
    MessageDlg ( 'Ничего не выбрано!', MtError, [mbOK], 1 );
    Exit;
  End;

  v_Button_Selected := MessageDlg( 'Скопировать выбранные операции?', mtConfirmation, mbOKCancel, 5 );
  if v_Button_Selected = mrOk
  Then
  Begin
    If ( COPY_1_Check.Checked )
        Or ( COPY_2_Check.Checked )
    Then
    Begin
      If Not Tp_Main_form.Form_Tech_Proc_Main.User_Admin
      Then
      Begin
        ModalResult := mrOk;
      End
      Else If Tp_Main_form.Form_Tech_Proc_Main.User_Admin
      Then
      Begin
        ModalResult := mrOk;
      End;
    End
    Else MessageDlg ( 'Выберите формат копирования!', MtError, [mbOK], 1 );
  End;
end;

procedure TForm_Copy_Opers_From_TTP.Pop_M_Operations_For_Copy_Btn_ChoseClick(
  Sender: TObject);
begin
  Tp_Detail_Docs_Connect_Form.Form_Tp_Connected_Details.P_Set_Flag_InDBGridEh( Grid_Operations, 1);
end;

procedure TForm_Copy_Opers_From_TTP.Pop_M_Operations_For_Copy_Btn_UnChoseClick(
  Sender: TObject);
begin
  Tp_Detail_Docs_Connect_Form.Form_Tp_Connected_Details.P_Set_Flag_InDBGridEh( Grid_Operations, 1);
end;

procedure TForm_Copy_Opers_From_TTP.EXIT_BTNClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
