unit Tp_Gen_Chs_Dd_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DropDownFormEh, Dialogs, DynVarsEh, ToolCtrlsEh, DBGridEhGrouping,
  DBGridEhToolCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Buttons,
  Vcl.ExtCtrls, EhLibMTE, Oracle;

type
  TDrop_D_Form_Gen_Chose = class(TCustomDropDownFormEh)
    Panel1: TPanel;
    S_Btn_Accept: TSpeedButton;
    S_Btn_Cancel: TSpeedButton;
    Grid_List: TDBGridEh;
    procedure CustomDropDownFormEhInitForm(Sender: TCustomDropDownFormEh;
      DynParams: TDynVarsEh);
    procedure S_Btn_AcceptClick(Sender: TObject);
    procedure S_Btn_CancelClick(Sender: TObject);
    procedure CustomDropDownFormEhReturnParams(Sender: TCustomDropDownFormEh;
      DynParams: TDynVarsEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Drop_D_Form_Gen_Chose: TDrop_D_Form_Gen_Chose;

implementation

{$R *.dfm}

Uses

Tp_Main_Form;

procedure TDrop_D_Form_Gen_Chose.CustomDropDownFormEhInitForm(
  Sender: TCustomDropDownFormEh; DynParams: TDynVarsEh);
var
  I: Integer;
begin
  With Tp_Main_Form.Form_Tech_Proc_Main
  Do
  Begin
    MemT_Gen_Chose.Close;
    Db_Gen_Chose.DeleteVariables;
    Db_Gen_Chose.SQL.Clear;
    If Not DynParams.DynVar[ 'V_Keyword'].IsNull
    Then
    Begin
      Db_Gen_Chose.DeclareVariable( 'V_Keyword', otString );
      Db_Gen_Chose.SetVariable( 'V_Keyword', DynParams.DynVar[ 'V_Keyword'].AsString );
    End;
    Db_Gen_Chose.SQL.Add( DynParams.DynVar['v_SQL_Text'].AsString );
    Db_Gen_Chose.ExecSQL;
    MemT_Gen_Chose.Open;
  End;
  Grid_List.Columns.Clear;
  For I := 0 To Tp_Main_Form.Form_Tech_Proc_Main.Db_Gen_Chose.FieldCount - 1
  Do
  Begin
    If  Pos('VSB_', Tp_Main_Form.Form_Tech_Proc_Main.Db_Gen_Chose.Fields[i].DisplayName) <> 0
    Then
    Begin
      With Grid_List.Columns.Add
      Do
      Begin
        FieldName := Tp_Main_Form.Form_Tech_Proc_Main.Db_Gen_Chose.Fields[i].DisplayName;
        Title.TitleButton := True;
        If Tp_Main_Form.Form_Tech_Proc_Main.Db_Gen_Chose.Fields[i].Size >= 100
        Then
          Width := 300
        Else if Tp_Main_Form.Form_Tech_Proc_Main.Db_Gen_Chose.Fields[i].Size < 25
        Then
          Width := 50
      End;
    End;
  End;
end;

procedure TDrop_D_Form_Gen_Chose.CustomDropDownFormEhReturnParams(
  Sender: TCustomDropDownFormEh; DynParams: TDynVarsEh);
var
  I: Integer;
begin
  For I := 0 To Tp_Main_Form.Form_Tech_Proc_Main.Db_Gen_Chose.FieldCount - 1
  Do
  Begin
    DynParams.DynVar[ Tp_Main_Form.Form_Tech_Proc_Main.Db_Gen_Chose.Fields[i].DisplayName ].AsString := Tp_Main_Form.Form_Tech_Proc_Main.MemT_Gen_Chose.FieldByName( Tp_Main_Form.Form_Tech_Proc_Main.Db_Gen_Chose.Fields[i].DisplayName ).AsString;
  End;
end;

procedure TDrop_D_Form_Gen_Chose.S_Btn_AcceptClick(Sender: TObject);
begin
  ModalResult := mrOk;
  Close;
end;

procedure TDrop_D_Form_Gen_Chose.S_Btn_CancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close;
end;

end.