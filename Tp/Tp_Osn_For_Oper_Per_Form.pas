unit Tp_Osn_For_Oper_Per_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, EhLibMTE, MemTableDataEh, MemTableEh, Tp_TechProc_DataFrame;

type
  TForm_Per_Osn = class(TForm)
    Grid_Per_Osn: TDBGridEh;
    Pop_M_Per_Osn: TPopupMenu;
    Pop_M_Per_Osn_Btn_Delete: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Pop_M_Per_Osn_Btn_DeleteClick(Sender: TObject);
    procedure Pop_M_Per_OsnPopup(Sender: TObject);
    procedure Grid_Per_OsnKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Grid_Per_OsnGetCellParams(Sender: TObject; Column: TColumnEh;
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
  Form_Per_Osn: TForm_Per_Osn;

implementation

{$R *.dfm}

uses

Tp_Main_Form, Udm_Main;

procedure TForm_Per_Osn.DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
begin
  with (Sender as TDBGridColumnEh).Grid.DataSource.DataSet
  do
  Begin
    if ((Text <> '') Or (VarToStr( Value ) <> '') )
         And ( Text <> FieldByName((Sender as TDBGridColumnEh).FieldName).AsString )
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'OSN';
      if (Sender as TDBGridColumnEh).FieldName='SHOSN_NAME'
      then
        V_In_Params.DynVar['Filter'].AsString:=Format(' Lower(Nosn) Like ''%%''||Lower(''%s'')||''%%'' ', [Text])
      else if (Sender as TDBGridColumnEh).FieldName='SHOSN_NUM'
      then
        V_In_Params.DynVar['Filter'].AsString:=Format(' Lower(Shosn) Like ''%%''||Lower(''%s'')||''%%'' ', [Text]);
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName('SHOSN_ID').AsInteger := v_Out_Params.DynVar[ 'ID_OSN' ].AsInteger;
        FieldByName('SHOSN_NUM').AsString := v_Out_Params.DynVar[ 'NUM_OSN' ].AsString;
        FieldByName('SHOSN_NAME').AsString := v_Out_Params.DynVar[ 'NAME_OSN' ].AsString;
        if (Sender as TDBGridColumnEh).FieldName='SHOSN_NAME'
        then
          Text:= v_Out_Params.DynVar[ 'NAME_OSN' ].AsString
        else if (Sender as TDBGridColumnEh).FieldName='SHOSN_NUM'
        then
          Text:=v_Out_Params.DynVar[ 'NUM_OSN' ].AsString;
      End
      Else
        Text:=FieldByName((Sender as TDBGridColumnEh).FieldName).AsString;
    End
    Else
      Text:=FieldByName((Sender as TDBGridColumnEh).FieldName).AsString;
  End;
end;

procedure TForm_Per_Osn.Grid_Per_OsnGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Grid_Per_Osn.DataSource.DataSet as TMemTableEh
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

procedure TForm_Per_Osn.Grid_Per_OsnKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ( Key = VK_F5 )
 then
   Self.Close;
end;

procedure TForm_Per_Osn.FormClose(Sender: TObject; var Action: TCloseAction);
Var
  i: Integer;
begin
  Try Grid_Per_Osn.DataSource.DataSet.Post Except End;
  With Grid_Per_Osn.DataSource.DataSet as TMemTableEh
  Do
  Begin
    DisableControls;
    Try
      With RecordsView
      Do
      Begin
        For I := 0 to Count - 1
        Do
        Begin
          if Rec[i].DataValues['SHOSN_ID', dvvValueEh] = Null
          then
            Rec[i].MergeChanges;
        End;
      End;
    Finally
      EnableControls;
    End;
  End;
end;

procedure TForm_Per_Osn.FormShow(Sender: TObject);
begin
  Grid_Per_Osn.DataSource := TechProcDataFrame.Data_Per_Osnast;
  Grid_Per_Osn.SearchPanel.SearchingText := '';
end;

procedure TForm_Per_Osn.Pop_M_Per_Osn_Btn_DeleteClick(Sender: TObject);
begin
  Tp_Main_Form.Form_Tech_Proc_Main.P_DeleteFromDBGridEh( Grid_Per_Osn );
end;

procedure TForm_Per_Osn.Pop_M_Per_OsnPopup(Sender: TObject);
begin
 if (Grid_Per_Osn.DataSource.DataSet as TMemTableEh).ReadOnly Then Pop_M_Per_Osn_Btn_Delete.Enabled := False
 Else if Not (Grid_Per_Osn.DataSource.DataSet as TMemTableEh).ReadOnly then Pop_M_Per_Osn_Btn_Delete.Enabled := True;
end;

end.
