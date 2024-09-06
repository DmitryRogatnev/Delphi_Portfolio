unit Tp_Copy_Detail_For_Det_Doc_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, OracleData, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, DBCtrlsEh,
  DBLookupEh, Oracle, EhLibMTE, MemTableDataEh, MemTableEh,
  DataDriverEh, Vcl.Menus;

type
  TForm_Copy_Det_From_Rcd = class(TForm)
    Panel1: TPanel;
    COPY_1_Check: TCheckBox;
    COPY_2_Check: TCheckBox;
    COPY_BTN: TButton;
    EXIT_BTN: TButton;
    Grid_Details: TDBGridEh;
    Btn_Chose_All: TButton;
    Btn_Unchose_All: TButton;
    Pop_M_Details_For_Copy: TPopupMenu;
    Pop_M_Details_For_Copy_Btn_Chose: TMenuItem;
    Pop_M_Details_For_Copy_Btn_UnChose: TMenuItem;
    procedure EXIT_BTNClick(Sender: TObject);
    procedure Grid_DetailsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure COPY_BTNClick(Sender: TObject);
    procedure COPY_1_CheckClick(Sender: TObject);
    procedure COPY_2_CheckClick(Sender: TObject);
    procedure Btn_Chose_AllClick(Sender: TObject);
    procedure Btn_Unchose_AllClick(Sender: TObject);
    procedure Pop_M_Details_For_Copy_Btn_ChoseClick(Sender: TObject);
    procedure Pop_M_Details_For_Copy_Btn_UnChoseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Doc_Id: Integer;
    v_Main_Doc_Id: Integer;
    v_Function_of_Copy: Integer;
  end;

var
  Form_Copy_Det_From_Rcd: TForm_Copy_Det_From_Rcd;

implementation

{$R *.dfm}
uses
Tp_Main_Form, Udm_Main, Tp_Detail_Docs_Connect_Form, Tp_TechProc_List_DataModule;

procedure TForm_Copy_Det_From_Rcd.Btn_Chose_AllClick(Sender: TObject);
var
  I: Integer;
begin
  With Grid_Details.DataSource.DataSet
  Do
  Begin
    Try Post Except End;
    First;
    For I := 1 to RecordCount
    Do
    Begin
      Edit;
      FieldByName( 'FLAG' ).AsInteger := 1;
      Post;
      Next;
    End;
  End;
end;

procedure TForm_Copy_Det_From_Rcd.Btn_Unchose_AllClick(Sender: TObject);
var
  I: Integer;
begin
  With Grid_Details.DataSource.DataSet
  Do
  Begin
    Try Post Except End;
    First;
    For I := 1 to RecordCount
    Do
    Begin
      Edit;
      FieldByName( 'FLAG' ).AsInteger := 0;
      Post;
      Next;
    End;
  End;
end;

procedure TForm_Copy_Det_From_Rcd.COPY_1_CheckClick(Sender: TObject);
begin
  if COPY_1_Check.Checked then
  Begin
    COPY_2_Check.Checked := False;
    v_Function_of_Copy := 1;
  End;
end;

procedure TForm_Copy_Det_From_Rcd.COPY_2_CheckClick(Sender: TObject);
begin
  if COPY_2_Check.Checked then
  Begin
    COPY_1_Check.Checked := False;
    v_Function_of_Copy := 2;
  End;
end;

procedure TForm_Copy_Det_From_Rcd.COPY_BTNClick(Sender: TObject);
Var
  v_User_Lnum: Integer;
  v_Button_Selected: Integer;
begin
  Try Grid_Details.DataSource.DataSet.Post Except End;
  v_Button_Selected := MessageDlg( 'Скопировать выбранные детали?', mtConfirmation, mbOKCancel, 5 );
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

procedure TForm_Copy_Det_From_Rcd.Grid_DetailsGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if Not Grid_Details.DataSource.DataSet.IsEmpty
  Then
  Begin
    if Grid_Details.DataSource.DataSet.FieldByName('FLAG').AsInteger = 1
    Then
      Background := clInfoBk
    Else
      Background := clWindow;
  End;
end;

procedure TForm_Copy_Det_From_Rcd.EXIT_BTNClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TForm_Copy_Det_From_Rcd.Pop_M_Details_For_Copy_Btn_ChoseClick(
  Sender: TObject);
begin
  Tp_Detail_Docs_Connect_Form.Form_Tp_Connected_Details.P_Set_Flag_InDBGridEh( Grid_Details, 1);
end;

procedure TForm_Copy_Det_From_Rcd.Pop_M_Details_For_Copy_Btn_UnChoseClick(
  Sender: TObject);
begin
  Tp_Detail_Docs_Connect_Form.Form_Tp_Connected_Details.P_Set_Flag_InDBGridEh( Grid_Details, 0 );
end;

end.
