unit Tp_Det_For_Oper_Per_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.Menus, Data.DB, OracleData, Oracle, EhLibMTE, MemTableDataEh, MemTableEh,
  Tp_TechProc_DataFrame;

type
  TForm_Per_Det = class(TForm)
    Grid_Per_Det: TDBGridEh;
    Pop_M_Per_Det: TPopupMenu;
    Pop_M_Per_Det_Btn_Delete: TMenuItem;
    Main_M_Per_Det: TMainMenu;
    Main_M_Per_Det_Btn_Copy_Det_From_Rcd: TMenuItem;
    Main_M_Per_Det_Btn_Exit: TMenuItem;
    Db_Details_From_Rcd: TOracleDataSet;
    Db_Details_From_RcdDET_ID: TFloatField;
    Db_Details_From_RcdDET_NUM: TStringField;
    Db_Details_From_RcdDET_NAME: TStringField;
    Db_Details_From_RcdKOL: TFloatField;
    Main_M_Per_Det_Btn_Copy_Det_From_Rcd_All: TMenuItem;
    Main_M_Per_Det_Btn_Copy_Det_From_Rcd_Ceh: TMenuItem;
    Main_M_Per_Det_Btn_Copy_Det_From_Rcd_Chs: TMenuItem;
    procedure DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Pop_M_Per_Det_Btn_DeleteClick(Sender: TObject);
    procedure Pop_M_Per_DetPopup(Sender: TObject);
    procedure Main_M_Per_Det_Btn_ExitClick(Sender: TObject);
    procedure Grid_Per_DetKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grid_Per_DetColumns3EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Main_M_Per_Det_Btn_Copy_Det_From_Rcd_CehClick(Sender: TObject);
    procedure Main_M_Per_Det_Btn_Copy_Det_From_Rcd_ChsClick(Sender: TObject);
    procedure Grid_Per_DetGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
     TechProcDataFrame: TFrameData_TechProc;

    Procedure P_Copy_Details( v_In_Params: TDynVarsEh );
  end;

var
  Form_Per_Det: TForm_Per_Det;

implementation

{$R *.dfm}

uses
Tp_Main_Form, Udm_Main;

procedure TForm_Per_Det.DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  var
  v_New_Det_Id :Integer;
  V_In_Det_Params,
  V_Out_Det_Params: TDynVarsEh;
begin
  With Grid_Per_Det.DataSource.DataSet
  Do
  Begin
    if ( (FieldByName('DET_ID').IsNull)
         And ( (Text <> '') Or (VarToStr( Value ) <> '') ) )
       Or ( (Not FieldByName('DET_ID').IsNull)
             And ( (Text <> '') Or (VarToStr( Value ) <> '') )
             And (Text <> FieldByName('DET_NUM').AsString) )
    Then
    Begin
      V_In_Det_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Det_Params.DynVar[ 'Find' ].AsString := 'DET';
      If UseText
      Then
        V_In_Det_Params.DynVar[ 'V_Keyword' ].AsString := Text
      Else
        V_In_Det_Params.DynVar[ 'V_Keyword' ].AsString := VarToStr( Value );
      V_Out_Det_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Det_Params );
      If V_Out_Det_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName('DET_ID').AsInteger := V_Out_Det_Params.DynVar[ 'ID_DET' ].AsInteger;
        Text := V_Out_Det_Params.DynVar[ 'DET_NUM' ].AsString;
        FieldByName('DET_NAME').AsString := V_Out_Det_Params.DynVar[ 'DET_NAME' ].AsString;
        FieldByName('DATAIZM').AsDateTime := Now();
      End;
    End
    Else if (Not FieldByName('DET_ID').IsNull)
            And (Text = '')
    Then
    Begin
      Edit;
      FieldByName('DET_ID').Clear;
      FieldByName('DET_NAME').Clear;
      FieldByName('DATAIZM').AsDateTime := Now();
    End;
  End;
end;

procedure TForm_Per_Det.Grid_Per_DetColumns3EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
  var
  v_New_Det_Id :Integer;
  V_In_Det_Params,
  V_Out_Det_Params: TDynVarsEh;
begin
  With Grid_Per_Det.DataSource.DataSet
  Do
  Begin
    V_In_Det_Params := TDynVarsEh.Create( Application.MainForm );
    v_Out_Det_Params := DM_Main.F_Show_Modal_Form( 'Spravochnik_Of_Details' );
    If V_Out_Det_Params <> Nil
    Then
    Begin
      Edit;
      FieldByName('DET_ID').AsInteger := v_Out_Det_Params.DynVar[ 'ID' ].AsInteger;
      FieldByName('DET_NUM').AsString := v_Out_Det_Params.DynVar[ 'DET' ].AsString;
      FieldByName('DET_NAME').AsString := v_Out_Det_Params.DynVar[ 'ND' ].AsString;
    End;
  End;
end;

procedure TForm_Per_Det.Grid_Per_DetGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Grid_Per_Det.DataSource.DataSet as TMemTableEh
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

procedure TForm_Per_Det.Grid_Per_DetKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ( Key = VK_F5 )
 then
   Self.Close;
end;

procedure TForm_Per_Det.FormClose(Sender: TObject; var Action: TCloseAction);
Var
  i: Integer;
begin
  Try Grid_Per_Det.DataSource.DataSet.Post Except End;
  With Grid_Per_Det.DataSource.DataSet as TMemTableEh
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
          if Rec[i].DataValues['DET_ID', dvvValueEh] = Null
          then
            Rec[i].MergeChanges;
        End;
      End;
    Finally
      EnableControls;
    End;
  End;
end;

procedure TForm_Per_Det.FormShow(Sender: TObject);
begin
  Grid_Per_Det.DataSource := TechProcDataFrame.Data_Per_Details;
  Grid_Per_Det.SearchPanel.SearchingText := '';
end;

procedure TForm_Per_Det.Pop_M_Per_Det_Btn_DeleteClick(Sender: TObject);
begin
  Form_Tech_Proc_Main.P_DeleteFromDBGridEh(Grid_Per_Det);
end;

procedure TForm_Per_Det.Main_M_Per_Det_Btn_ExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_Per_Det.Main_M_Per_Det_Btn_Copy_Det_From_Rcd_CehClick(Sender: TObject);
var
  Button_Selected: Integer;
  v_In_Params: TDynVarsEh;
begin
  Button_Selected := MessageDlg( 'Скопировать данные о деталях из расцеховки?'
                                  + #13#10
                                  + 'Детали, указанные ранее, буду удалены!',
                                  mtConfirmation,
                                  mbOKCancel,
                                  5 );
  if Button_Selected = mrOk then
  Begin
    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Params.DynVar[ 'v_Det_Id' ].AsInteger := TechProcDataFrame.Db_Doc_Info.FieldByName('Det_Id').AsInteger;
    If Sender = Main_M_Per_Det_Btn_Copy_Det_From_Rcd_Ceh
    Then
      v_In_Params.DynVar[ 'v_Ceh_Code' ].AsString := TechProcDataFrame.MemT_Doc_Parts.FieldByName('Ceh_Code').AsString;
    P_Copy_Details( v_In_Params );
  End;
end;

procedure TForm_Per_Det.Main_M_Per_Det_Btn_Copy_Det_From_Rcd_ChsClick(
  Sender: TObject);
  Var
    Vl_In_Params, Vl_Out_Params: TDynVarsEh;
begin
  Vl_In_Params := TDynVarsEh.Create( Application.MainForm );
  Vl_In_Params.DynVar['Find'].AsString := 'DET_RCD';
  Vl_In_Params.DynVar['Filter'].AsString := ' a.Uz = ' + TechProcDataFrame.Db_Doc_Info.FieldByName('Det_Id').AsString
                                              + ' And a.Kol > 0 ';
  Vl_In_Params.DynVar[ 'MultiSelect' ].AsBoolean := True;
  Vl_Out_Params := Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Params );
  If Vl_Out_Params <> Nil
  Then
  Begin
    Form_Tech_Proc_Main.P_Copy_In_DataSet_From_Buffer( TechProcDataFrame.MemT_Per_Details );
  End;
end;

procedure TForm_Per_Det.Pop_M_Per_DetPopup(Sender: TObject);
begin
 if (Grid_Per_Det.DataSource.DataSet as TMemTableEh).ReadOnly Then Pop_M_Per_Det_Btn_Delete.Enabled := False
 Else if Not (Grid_Per_Det.DataSource.DataSet as TMemTableEh).ReadOnly then Pop_M_Per_Det_Btn_Delete.Enabled := True;
end;

Procedure TForm_Per_Det.P_Copy_Details(v_In_Params: TDynVarsEh);
  Var
  v_Row_Counter: Integer;
begin
  With Grid_Per_Det.DataSource.DataSet as TMemTableEh
  Do
  Begin
    DisableControls;
    Grid_Per_Det.StartLoadingStatus( 'Загрузка данных...' );
    Try

      {$Region 'Очистка'}
        First;
        For v_Row_Counter := 1 to RecordCount
        Do
        Begin
          Delete;
        End;
      {$EndRegion 'Очистка'}

      Db_Details_From_Rcd.Close;
      Db_Details_From_Rcd.ClearVariables;
      Db_Details_From_Rcd.SetVariable( 'v_Det_Id', v_In_Params.DynVar[ 'v_Det_Id' ].AsString );
      If Not v_In_Params.DynVar[ 'v_Ceh_Code' ].IsNull
      Then
        Db_Details_From_Rcd.SetVariable( 'v_Ceh_Code', v_In_Params.DynVar[ 'v_Ceh_Code' ].AsString )
      Else
        Db_Details_From_Rcd.SetVariable( 'v_Ceh_Code', '%' );
      Db_Details_From_Rcd.Open;

      Db_Details_From_Rcd.First;
      For v_Row_Counter := 1 to Db_Details_From_Rcd.RecordCount
      Do
      Begin
        Append;
        CopyFields( Db_Details_From_Rcd );
        Post;
        Db_Details_From_Rcd.Next;
      End;
    Finally
      EnableControls;
      Grid_Per_Det.FinishLoadingStatus();
    End;
   End;
end;

end.
