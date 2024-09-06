unit Tp_Doc_Comm_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBGridEh, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask,
  DBCtrlsEh, DBLookupEh, EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.ExtCtrls,
  Data.DB, OracleData, Oracle, Tp_Doc_Files_Form, MemTableDataEh, MemTableEh, EhLibMTE, DataDriverEh,
  System.ImageList, Vcl.ImgList;

type
  TForm_Doc_Comments = class(TForm)
    Grid_Comments: TDBGridEh;
    Main_M_Comments: TMainMenu;
    Main_M_Comments_Btn_Add: TMenuItem;
    Main_M_Comments_Btn_See: TMenuItem;
    Main_M_Comments_Btn_Files: TMenuItem;
    Main_M_Comments_Exit: TMenuItem;
    Main_M_Comments_Btn_See_Main_Doc: TMenuItem;
    Main_M_Comments_Btn_See_Doc: TMenuItem;
    Db_Comments: TOracleDataSet;
    Data_Comments: TDataSource;
    PKG_TP_DOC: TOraclePackage;
    Pop_M_Comments: TPopupMenu;
    Pop_M_Comments_Btn_Add: TMenuItem;
    Driver_Comments: TDataSetDriverEh;
    MemT_Comments: TMemTableEh;
    Pop_M_Comments_Btn_Answer: TMenuItem;
    Seq_Db_Comments: TOracleQuery;
    MemT_CommentsID: TFloatField;
    MemT_CommentsQUES_ID: TFloatField;
    MemT_CommentsID_DOC_TP: TFloatField;
    MemT_CommentsDOC_NUM: TStringField;
    MemT_CommentsMAIN_DOC_ID: TFloatField;
    MemT_CommentsDOC_COMM: TStringField;
    MemT_CommentsCEH_ID: TFloatField;
    MemT_CommentsCEH_CODE: TStringField;
    MemT_CommentsRAZRAB: TFloatField;
    MemT_CommentsRAZRAB_NAME: TStringField;
    MemT_CommentsUSER_ID_INS: TStringField;
    MemT_CommentsDATE_COMM: TDateTimeField;
    MemT_CommentsUSER_ID_CORR: TStringField;
    MemT_CommentsDATE_CHANGE: TDateTimeField;
    Pop_M_Comments_Btn_Delete: TMenuItem;
    ImageList1: TImageList;
    Main_M_Comments_Btn_Save: TMenuItem;
    MemT_CommentsDOC_TP_ID_VERS: TIntegerField;
    MemT_CommentsDOC_HEADER_ID: TIntegerField;
    procedure Main_M_Comments_ExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Main_M_Comments_Btn_AddClick(Sender: TObject);
    procedure Main_M_Comments_Btn_See_Main_DocClick(Sender: TObject);
    procedure Main_M_Comments_Btn_See_DocClick(Sender: TObject);
    procedure Grid_CommentsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Main_M_Comments_Btn_FilesClick(Sender: TObject);
    procedure MemT_CommentsNewRecord(DataSet: TDataSet);
    procedure Pop_M_Comments_Btn_AnswerClick(Sender: TObject);
    procedure MemT_CommentsBeforeEdit(DataSet: TDataSet);
    procedure Pop_M_CommentsPopup(Sender: TObject);
    procedure Grid_CommentsColumns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Main_M_Comments_Btn_SaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Pop_M_Comments_Btn_DeleteClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FDocHeaderId: Integer;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; InDocHeaderId: Integer);
  end;

var
  Form_Doc_Comments: TForm_Doc_Comments;

implementation

{$R *.dfm}

uses

Udm_Main, Tp_Main_Form;

procedure TForm_Doc_Comments.Grid_CommentsColumns2EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  Main_M_Comments_Btn_SaveClick( Grid_Comments.Columns[2].EditButtons[0] );
end;

procedure TForm_Doc_Comments.Grid_CommentsGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
 if not MemT_Comments.IsEmpty then
 Begin
   If ( Pos ( 'Отказ', MemT_CommentsDOC_COMM.AsString ) <> 0 ) Then
   Begin
     Background := $00C1B6FF;
     AFont.Color := clRed;
   End;
 End;
end;

constructor TForm_Doc_Comments.Create(AOwner: TComponent;
  InDocHeaderId: Integer);
begin
  inherited Create(AOwner);
  FDocHeaderId:=InDocHeaderId;
end;

procedure TForm_Doc_Comments.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Main_M_Comments_Btn_SaveClick( Main_M_Comments_Exit );
end;

procedure TForm_Doc_Comments.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Main_M_Comments_Btn_SaveClick(Main_M_Comments_Exit);
end;

procedure TForm_Doc_Comments.FormShow(Sender: TObject);
  var
  v_In_Params, v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'DOC';
  v_In_Params.DynVar[ 'Filter' ].AsString :=Format('Doc_Header_Id =%d', [FDocHeaderId]);
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  MemT_Comments.Close;
    DB_COMMENTS.SetVariable( 'In_Doc_Header_Id', FDocHeaderId );
  MemT_Comments.Open;
  Self.Caption := 'Комментарии к документу '
                     + v_Out_Params.DynVar[ 'VSB_NUM_DOC' ].AsString;
end;

procedure TForm_Doc_Comments.MemT_CommentsBeforeEdit(DataSet: TDataSet);
begin
  if Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
  Begin
    If MemT_CommentsRAZRAB.AsInteger <> Tp_Main_Form.Form_Tech_Proc_Main.User_lnum
    Then
      Abort;
  End;
end;

procedure TForm_Doc_Comments.MemT_CommentsNewRecord(DataSet: TDataSet);
  var
  v_In_Params, v_Out_Params: TDynVarsEh;
begin
  MemT_CommentsDATE_COMM.AsDateTime := Now();
  MemT_CommentsDATE_CHANGE.AsDateTime := Now();
  Seq_Db_Comments.Execute;
  MemT_CommentsID.AsInteger := Seq_Db_Comments.FieldAsInteger(0);
  MemT_CommentsDOC_HEADER_ID.AsInteger := FDocHeaderId;
  If Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
  Begin
    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Params.DynVar[ 'Find' ].AsString := 'USERS';
    v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
    If v_Out_Params <> Nil
    Then
    Begin
      MemT_CommentsRAZRAB.AsInteger := v_Out_Params.DynVar[ 'EMP_ID' ].AsInteger;
      MemT_CommentsRAZRAB_NAME.AsString := v_Out_Params.DynVar[ 'EMP_FIO' ].AsString;
      MemT_CommentsCEH_ID.AsInteger := v_Out_Params.DynVar[ 'CEH_ID' ].AsInteger;
      MemT_CommentsCEH_CODE.AsString := v_Out_Params.DynVar[ 'DEP_CODE' ].AsString;
    End;
  End
  Else
  Begin
    MemT_CommentsRAZRAB.AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_lnum;
    MemT_CommentsCEH_ID.AsInteger := Tp_Main_Form.Form_Tech_Proc_Main.User_Otdel_Id;
    MemT_CommentsCEH_CODE.AsString := Tp_Main_Form.Form_Tech_Proc_Main.User_Otdel_Kod;
    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Params.DynVar[ 'Find' ].AsString := 'USERS';
    v_In_Params.DynVar[ 'Filter' ].AsString := ' Emp_Id = ' + IntToStr( Tp_Main_Form.Form_Tech_Proc_Main.User_lnum );
    v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
    If Not v_Out_Params.DynVar[ 'EMP_ID' ].IsNull
    Then
    Begin
      MemT_CommentsRAZRAB_NAME.AsString := v_Out_Params.DynVar[ 'EMP_FIO' ].AsString;
    End;
  End;
end;

procedure TForm_Doc_Comments.Pop_M_Comments_Btn_AnswerClick(Sender: TObject);
Var
  v_Ques_Id: Integer;
begin
  v_Ques_Id := MemT_CommentsID.AsInteger;
  MemT_Comments.Insert;
  MemT_CommentsQUES_ID.AsInteger := v_Ques_Id;
end;

procedure TForm_Doc_Comments.Pop_M_Comments_Btn_DeleteClick(Sender: TObject);
begin
  Tp_Main_Form.Form_Tech_Proc_Main.P_DeleteFromDBGridEh( Grid_Comments );
end;

procedure TForm_Doc_Comments.Main_M_Comments_Btn_AddClick(Sender: TObject);
begin
  MemT_Comments.Insert;
end;

procedure TForm_Doc_Comments.Main_M_Comments_Btn_FilesClick(Sender: TObject);
Var
  In_Doc_Id_Indx: Integer;
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

procedure TForm_Doc_Comments.Main_M_Comments_ExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_Doc_Comments.Main_M_Comments_Btn_See_Main_DocClick(Sender: TObject);
  var
  v_In_Params,
  v_In_Doc_Params,
  v_Out_Doc_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Doc_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := FDocHeaderId;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Main_Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TForm_Doc_Comments.Main_M_Comments_Btn_SaveClick(Sender: TObject);
Var
  ButtonSelected: Integer;
begin
  Try MemT_Comments.Post Except End;
  MemT_Comments.ApplyUpdates(0);

  If Db_Comments.UpdatesPending
  Then
  Begin
    If Sender <> Grid_Comments.Columns[2].EditButtons[0]
    Then
    Begin
      If Sender = Main_M_Comments_Exit
      Then
        ButtonSelected := MessageDlg( 'Имеются не сохраненные данные! Сохранить?', mtConfirmation, mbOKCancel, 0 )
      Else
        ButtonSelected := MessageDlg( 'Сохранить данные?', mtConfirmation, mbOKCancel, 0 );
    End;
    If ( ButtonSelected = mrOk )
        Or ( Sender = Grid_Comments.Columns[2].EditButtons[0] )
    Then
    Begin
      Db_Comments.Session.ApplyUpdates( [ Db_Comments ], True );
      Grid_Comments.SaveVertPos( 'ID' );
      MemT_Comments.Refresh;
      Grid_Comments.RestoreVertPos( 'ID' );
    End
    Else if ( ButtonSelected = mrCancel )
            And ( Sender = Main_M_Comments_Exit )
    Then
    Begin
      Db_Comments.Session.CancelUpdates( [ Db_Comments ] );
    End;
  End;

end;

procedure TForm_Doc_Comments.Main_M_Comments_Btn_See_DocClick(Sender: TObject);
  var
  v_In_Params,
  v_In_Doc_Params,
  v_Out_Doc_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Doc_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := FDocHeaderId;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TForm_Doc_Comments.Pop_M_CommentsPopup(Sender: TObject);
begin
  If Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
    Pop_M_Comments_Btn_Delete.Visible := True
  Else
    Pop_M_Comments_Btn_Delete.Visible := False;
end;

end.
