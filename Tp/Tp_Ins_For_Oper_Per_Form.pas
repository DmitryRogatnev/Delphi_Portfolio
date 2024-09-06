unit Tp_Ins_For_Oper_Per_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, EhLibMTE, MemTableDataEh, MemTableEh, Tp_TechProc_DataFrame;

type
  TForm_Per_Ins = class(TForm)
    Grid_Per_Ins: TDBGridEh;
    Pop_M_Per_Ins: TPopupMenu;
    Pop_M_Per_Ins_Btn_Delete: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Pop_M_Per_Ins_Btn_DeleteClick(Sender: TObject);
    procedure Pop_M_Per_InsPopup(Sender: TObject);
    procedure Grid_Per_InsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Grid_Per_InsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Per_Id :Integer;
    v_Per_Razrab :Integer;
    v_Edit_Flag :Integer;
    v_Doc_Id: Integer;
     TechProcDataFrame: TFrameData_TechProc;
  end;

var
  Form_Per_Ins: TForm_Per_Ins;

implementation

{$R *.dfm}
uses

Tp_Main_Form, Udm_Main;

procedure TForm_Per_Ins.DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
Begin
  With Grid_Per_Ins.DataSource.DataSet
  Do
  Begin
    If ( ( (Text <> '') Or (VarToStr( Value ) <> '') )
        And ( FieldByName('INSTR_ID').IsNull ) )
        Or ( ( (Text <> '') Or (VarToStr( Value ) <> '') )
              And ( Not FieldByName('INSTR_ID').IsNull )
              And ( FieldByName('INSTR_NAME').AsString <> Text ) )
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'INS';
      If UseText
      Then
        v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text
      Else
        v_In_Params.DynVar[ 'V_Keyword' ].AsString := VarToStr( Value );
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName('INSTR_ID').AsInteger := v_Out_Params.DynVar[ 'ID_INS' ].AsInteger;
        Text := v_Out_Params.DynVar[ 'NAME_INSTR' ].AsString;
      End;
    End
    Else if ( Text = '' )
         And ( Not FieldByName('ID').IsNull )
    Then
    Begin
      Edit;
      FieldByName('INSTR_ID').Clear;
    End;
  End;
end;

procedure TForm_Per_Ins.Grid_Per_InsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Grid_Per_Ins.DataSource.DataSet as TMemTableEh
  do
  begin
    If Not IsEmpty
    Then
    Begin
      if (FieldByName('DOC_TP_VERS_ID').AsString = TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString)
      then
      begin
         if (FieldByName('Rw_Status').AsString = 'deleted')
        Then
        Begin
          Background := $00B5B3FF;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Status').AsString = 'inserted')
        Then
        Begin
          Background := $00A8FFC5;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Status').AsString = 'updated')
        Then
        Begin
          Background := $00A7EDFE;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Vers').AsString = 'old_version')
        Then
        Begin
          Background := clMenu;
          AFont.Color := clGray;
        End
        Else
        Begin
          Background := clWindow;
          AFont.Color := clWindowText;
        End;
      end;
    End;
  End;
end;

procedure TForm_Per_Ins.Grid_Per_InsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ( Key = VK_F5 )
 then
   Self.Close;
end;

procedure TForm_Per_Ins.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Try Grid_Per_Ins.DataSource.DataSet.Post Except End;
end;

procedure TForm_Per_Ins.FormShow(Sender: TObject);
begin
  Grid_Per_Ins.SearchPanel.SearchingText := '';
  Grid_Per_Ins.DataSource := TechProcDataFrame.Data_Per_Instruments;
end;

procedure TForm_Per_Ins.Pop_M_Per_Ins_Btn_DeleteClick(Sender: TObject);
begin
  Tp_Main_Form.Form_Tech_Proc_Main.P_DeleteFromDBGridEh(Grid_Per_Ins);
end;

procedure TForm_Per_Ins.Pop_M_Per_InsPopup(Sender: TObject);
begin
 if (Grid_Per_Ins.DataSource.DataSet as TMemTableEh).ReadOnly Then Pop_M_Per_Ins_Btn_Delete.Enabled := False
 Else if Not (Grid_Per_Ins.DataSource.DataSet as TMemTableEh).ReadOnly then Pop_M_Per_Ins_Btn_Delete.Enabled := True;
end;

end.
