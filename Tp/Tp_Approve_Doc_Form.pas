unit Tp_Approve_Doc_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  Vcl.Menus, Oracle,
  Tp_Doc_Comm_Form, Tp_Doc_Files_Form, Data.DB, OracleData, DynVarsEh,
  Vcl.Buttons, ToolCtrlsEh, DBGridEh, DBLookupEh, Vcl.ExtCtrls,
  DBGridEhGrouping, DBGridEhToolCtrls, EhLibVCL, GridsEh, DBAxisGridsEh;

type
  TForm_Approve_Doc = class(TForm)
    Main_M_Approve_Doc: TMainMenu;
    Main_M_Approve_Doc_Btn_See_Doc: TMenuItem;
    Main_M_Approve_Doc_Btn_Doc_Files: TMenuItem;
    Main_M_Approve_Doc_Btn_Doc_Comm: TMenuItem;
    PKG_TP_DOC: TOraclePackage;
    Db_Appr_Step_Params: TOracleDataSet;
    Db_Appr_Steps: TOracleDataSet;
    Data_Appr_Steps: TDataSource;
    Db_Doc_Info: TOracleDataSet;
    Db_Doc_InfoDOC_NUM: TStringField;
    Db_Doc_InfoDOC_HEADER_ID: TFloatField;
    Db_Doc_InfoDATE_START_ROUTE: TDateTimeField;
    Pkg_Tech_Proc: TOraclePackage;
    Db_Doc_InfoCREATE_USER_ID: TStringField;
    Panel2: TPanel;
    Btn_Cancel: TButton;
    Btn_Approve: TButton;
    Btn_Exit: TButton;
    Mem_Comment: TDBMemoEh;
    Panel1: TPanel;
    Lcb_Appr_Name: TDBLookupComboboxEh;
    Db_Appr_Step_ParamsDOC_ROUT_POINT_ID: TFloatField;
    Db_Appr_Step_ParamsID_DOC_POSITIVE_RESOLUT: TIntegerField;
    Db_Appr_Step_ParamsNAME_DOC_POSITIVE_RESOLUT: TStringField;
    Db_Appr_Step_ParamsID_DOC_NEGATIVE_RESOLUT: TIntegerField;
    Db_Appr_Step_ParamsNAME_DOC_NEGATIVE_RESOLUT: TStringField;
    Pkg_Doc: TOraclePackage;
    Db_Appr_StepsID_DOC_ROUT_POINT: TIntegerField;
    Db_Appr_StepsDOC_ROUT_ID: TIntegerField;
    Db_Appr_StepsSTP_DOC_ROUT_POINT_ID: TIntegerField;
    Db_Appr_StepsPOINT_POSITION: TStringField;
    Db_Appr_StepsPOINT_NAME: TStringField;
    Db_Appr_StepsRESULT_NOTE: TStringField;
    Db_Appr_StepsSTP_DOC_RESOLUTION_RESULT_ID: TIntegerField;
    procedure Btn_ExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_SignClick(Sender: TObject);
    procedure Main_M_Approve_Doc_Btn_Doc_CommClick(Sender: TObject);
    procedure Main_M_Approve_Doc_Btn_Doc_FilesClick(Sender: TObject);
    procedure Main_M_Approve_Doc_Btn_See_DocClick(Sender: TObject);
    constructor Create(AOwner: TComponent; InDocHeaderId: Integer);
  private
    { Private declarations }
    V_Appr_Params: TDynVarsEh;
    FDocHeaderId: Integer;
  public
    { Public declarations }
    v_User_Lnum: Integer;
  end;

var
  Form_Approve_Doc: TForm_Approve_Doc;

implementation

{$R *.dfm}

Uses
Tp_Main_Form, Udm_Main;

procedure TForm_Approve_Doc.Btn_SignClick(Sender: TObject);
var
  V_Approvment, Button_Selected :Integer;
  V_In_Params: TDynVarsEh;
  V_Comment_Text: String;
  V_Id_Resolution_Result: Integer;
begin

  if ( Mem_Comment.Text = '' )
      And ( Sender = Btn_Cancel )
  then
  Begin
    MessageDlg( 'Укажите причину отказа!', mtError, [mbOK], 5 );
    Exit;
  End;

  If Sender = Btn_Approve
  Then
  Begin
    Button_Selected := MessageDlg( 'Подписать документ?', mtConfirmation, mbOKCancel, 5 );
    V_Id_Resolution_Result := Db_Appr_Step_ParamsID_DOC_POSITIVE_RESOLUT.AsInteger;
  End
  Else if Sender = Btn_Cancel
  Then
  Begin
    Button_Selected := MessageDlg( 'Отказать в подписании документа?', mtConfirmation, mbOKCancel, 5 );
    V_Id_Resolution_Result := Db_Appr_Step_ParamsID_DOC_NEGATIVE_RESOLUT.AsInteger;
  End;
  If Button_Selected = mrOk
  Then
  Begin
    if Not Db_Doc_Info.FieldByName('Date_Start_Route').IsNull
    then
    begin
      Db_Appr_Steps.Edit;
      Db_Appr_Steps.FieldByName('Stp_Doc_Resolution_Result_Id').AsInteger := V_Id_Resolution_Result;
      Db_Appr_Steps.Post;

      if Db_Appr_Steps.UpdatesPending
      then
      begin
        Try
          Db_Appr_Steps.Session.ApplyUpdates( [Db_Appr_Steps], True );
          if Mem_Comment.Text <> ''
          Then
          Begin
            If Sender = Btn_Cancel
            Then
              V_Comment_Text := 'Отказ от согласования. Причина: ' + Mem_Comment.Text
            Else
              V_Comment_Text := Mem_Comment.Text;

            PKG_TP_DOC.CallProcedure( 'P_Set_Comm_To_Doc', [ FDocHeaderId,
                                                             V_Comment_Text ] );
          End;
          If ( Tp_Main_Form.Form_Tech_Proc_Main.Is_Doc_Approved(IntToStr(FDocHeaderId)) )
              And ( Sender = Btn_Approve )
          Then
          Begin
            v_In_Params := TDynVarsEh.Create( Application.MainForm );
            v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := FDocHeaderId;
            v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
            v_In_Params.DynVar[ 'Action' ].AsString := 'Create_Pdf_Copy';
            Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
          End;
        except
         on E : Exception
         do
           ShowMessage(E.ClassName+' '+E.Message);
        End;
      end;
    end
    else if (Db_Doc_Info.FieldByName('Create_User_Id').AsString = DM_Main.Session.LogonUsername)
            or (Pkg_Doc.CallIntegerFunction('F_Check_CoAuthors', [FDocHeaderId])=1)
    then
    begin
      Pkg_Tech_Proc.CallProcedure('P_Start_User_Route', [FDocHeaderId]);
    end;
    Self.ModalResult := mrOk;
  End;
End;

constructor TForm_Approve_Doc.Create(AOwner: TComponent;
  InDocHeaderId: Integer);
begin
  inherited Create(AOwner);
  FDocHeaderId:=InDocHeaderId;
end;

procedure TForm_Approve_Doc.Btn_ExitClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TForm_Approve_Doc.FormShow(Sender: TObject);
Var
 v_In_Params: TDynVarsEh;
begin
  Db_Doc_Info.SetVariable('In_Doc_Header_Id', FDocHeaderId);
  Db_Doc_Info.Active := True;
  Db_Appr_Steps.Active := True;
  Db_Appr_Step_Params.Active := True;
  Self.Caption := 'Согласование документа ' + Db_Doc_Info.FieldByName('Doc_Num').AsString;

  if Db_Doc_Info.FieldByName('Date_Start_Route').IsNull
  then
  begin
    if (Db_Doc_Info.FieldByName('Create_User_Id').AsString <> DM_Main.Session.LogonUsername)
        and (Pkg_Doc.CallIntegerFunction('F_Check_CoAuthors', [FDocHeaderId])=0)
    then
    begin
      Btn_Approve.Enabled := False;
    end;
  end
  else
  begin
    if Db_Appr_Steps.IsEmpty
    then
    begin
      Btn_Approve.Enabled := False;
      Mem_Comment.Enabled := False;
    end;
  end;

  if Db_Appr_Steps.RecordCount <= 1
  then
    Panel1.Visible := False;


  if Not Db_Appr_Step_ParamsNAME_DOC_POSITIVE_RESOLUT.IsNull
  then
    Btn_Approve.Caption := Db_Appr_Step_ParamsNAME_DOC_POSITIVE_RESOLUT.AsString;

  If Not Db_Appr_Step_ParamsID_DOC_NEGATIVE_RESOLUT.IsNull
  Then
  Begin
    Btn_Cancel.Visible := True;
    Btn_Cancel.Caption := Db_Appr_Step_ParamsNAME_DOC_NEGATIVE_RESOLUT.AsString;
  End
  Else
  Begin
    Btn_Cancel.Visible := False;
  End;
end;

procedure TForm_Approve_Doc.Main_M_Approve_Doc_Btn_Doc_FilesClick(Sender: TObject);
begin
  with TForm_Doc_Files.Create(Self, FDocHeaderId)
  do
  begin
    try
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TForm_Approve_Doc.Main_M_Approve_Doc_Btn_Doc_CommClick(Sender: TObject);
begin
  with TForm_Doc_Comments.Create(Self, FDocHeaderId)
  do
  begin
    try
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TForm_Approve_Doc.Main_M_Approve_Doc_Btn_See_DocClick(
  Sender: TObject);
var
v_In_Params, v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := FDocHeaderId;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

end.
