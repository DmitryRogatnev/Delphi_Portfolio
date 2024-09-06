unit Gen_Chs_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, EhLibMTE, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Buttons, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.Menus, Gen_Chs_Data_Mod, Data.DB, OracleData,
  MemTableDataEh, MemTableEh, DataDriverEh;

type
  TForm_Gen_Chose = class(TForm)
    Grid_List: TDBGridEh;
    Panel1: TPanel;
    S_Btn_Accept: TSpeedButton;
    S_Btn_Cancel: TSpeedButton;
    Pop_M_Gen_Chose: TPopupMenu;
    Pop_M_Gen_Chose_Btn_Select: TMenuItem;
    OracleDataSet1: TOracleDataSet;
    DataSetDriverEh1: TDataSetDriverEh;
    MemTableEh1: TMemTableEh;
    procedure S_Btn_AcceptClick(Sender: TObject);
    procedure S_Btn_CancelClick(Sender: TObject);
    procedure Grid_ListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Grid_ListDblClick(Sender: TObject);
    procedure Pop_M_Gen_Chose_Btn_SelectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Pop_M_Gen_ChosePopup(Sender: TObject);
  private
    { Private declarations }
    Edit_Flag: Bool;
  public
    { Public declarations }
    DataModule: TDM_Gen_Chs;

  end;

var
  Form_Gen_Chose: TForm_Gen_Chose;

implementation

{$R *.dfm}

procedure TForm_Gen_Chose.FormShow(Sender: TObject);
var
  OracleDataSet: TOracleDataSet;
begin
  OracleDataSet := (((Grid_List.DataSource.DataSet as TMemTableEh).DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet);
  If Pos('ROWID',AnsiUpperCase(OracleDataSet.SQL.Text)) <> 0
  Then
  Begin
    Grid_List.ReadOnly := False;
    Edit_Flag := True;
  End
  Else
  Begin
    Grid_List.ReadOnly := True;
    Edit_Flag := False;
  End;
end;

procedure TForm_Gen_Chose.Grid_ListDblClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TForm_Gen_Chose.Grid_ListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Not Edit_Flag
  Then
  Begin
    If Key = VK_RETURN
    Then
      Self.ModalResult := mrOk;

    If Key = VK_ESCAPE
    Then
      Self.ModalResult := mrCancel;
  End;
end;

procedure TForm_Gen_Chose.Pop_M_Gen_ChosePopup(Sender: TObject);
begin
  if Edit_Flag
  Then
    Abort;
end;

procedure TForm_Gen_Chose.Pop_M_Gen_Chose_Btn_SelectClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TForm_Gen_Chose.S_Btn_AcceptClick(Sender: TObject);
Var
  V_ButtonSelected: Integer;
begin
  If Edit_Flag
  Then
  Begin
    Try DM_Gen_Chs.MemT_Gen_Chose.Post; Except End;

    If DataModule.MemT_Gen_Chose.HasCachedChanges
    Then
    Begin
      If Sender = S_Btn_Accept
      Then
      Begin
        V_ButtonSelected := MessageDlg( 'Сохранить изменения?', mtConfirmation, mbOKCancel, 5 );
      End
      Else if Sender = S_Btn_Cancel
      Then
      Begin
        V_ButtonSelected := MessageDlg( 'Имеются не сохраненные изменения! Сохранить изменения?', mtConfirmation, mbOKCancel, 5 );
      End;

      if V_ButtonSelected = mrOk
      Then
      Begin
        DataModule.MemT_Gen_Chose.ApplyUpdates(0);
        DataModule.MemT_Gen_Chose.MergeChangeLog;
        DataModule.Db_Gen_Chose.Session.ApplyUpdates( [DM_Gen_Chs.Db_Gen_Chose], True );
        Self.ModalResult := mrOk;
      End
      Else if V_ButtonSelected = mrCancel
      Then
      Begin
        DataModule.MemT_Gen_Chose.CancelUpdates;
        DataModule.MemT_Gen_Chose.MergeChangeLog;
        Self.ModalResult := mrCancel;
      End;
    End
    Else Self.Close;
  End
  Else
    Self.ModalResult := mrOk;
end;

procedure TForm_Gen_Chose.S_Btn_CancelClick(Sender: TObject);
begin
  If Edit_Flag
  Then
  Begin
    S_Btn_AcceptClick( S_Btn_Cancel );
  End
  Else
    Self.ModalResult := mrCancel;
end;

end.
