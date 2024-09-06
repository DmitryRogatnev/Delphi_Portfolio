unit Tp_Mat_For_Oper_Per_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  OracleData, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Menus, EhLibMTE, MemTableDataEh, MemTableEh,
  Oracle, Tp_TechProc_DataFrame;

type
  TForm_Per_Mat = class(TForm)
    Grid_Per_Mat: TDBGridEh;
    Pop_M_Per_Mat: TPopupMenu;
    Pop_M_Btn_Delete: TMenuItem;
    Main_M_Per_Mat: TMainMenu;
    Main_M_Per_Mat_Btn_Copy_Mat_From_Rcd: TMenuItem;
    Main_M_Per_Mat_Btn_Exit: TMenuItem;
    PKG_TP_DOC: TOraclePackage;
    Db_Norm_Mat_Det: TOracleDataSet;
    Db_Norm_Mat_DetMAT_ID: TFloatField;
    Db_Norm_Mat_DetMAT_NAME: TStringField;
    Db_Norm_Mat_DetNORMA_MIN: TFloatField;
    Db_Norm_Mat_DetED_ID: TFloatField;
    Db_Norm_Mat_DetED_NAME: TStringField;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Pop_M_Btn_DeleteClick(Sender: TObject);
    procedure DBGridEh1Columns4UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Pop_M_Per_MatPopup(Sender: TObject);
    procedure Main_M_Per_Mat_Btn_ExitClick(Sender: TObject);
    procedure Grid_Per_MatKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Grid_Per_MatGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Per_Id :Integer;
    v_Per_Razrab :Integer;
    v_Edit_Flag :Integer;
    v_Doc_Id: Integer;
    Form_Is_Changed: Bool;
     TechProcDataFrame: TFrameData_TechProc;

    Procedure P_Copy_Materials( v_In_Params: TDynVarsEh );
  end;

var
  Form_Per_Mat: TForm_Per_Mat;

implementation

{$R *.dfm}

Uses
Tp_Main_Form, Udm_Main;

procedure TForm_Per_Mat.DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
var
  v_New_Mat_Id :Integer;
  V_In_Params, V_In_Ed_Params,
  v_Out_Mat_Params,
  v_Out_Ed_Params: TDynVarsEh;
begin
  With Grid_Per_Mat.DataSource.DataSet
  Do
  Begin
    if ( ( FieldByName( 'MAT_ID').IsNull )
        And ( (Text <> '') Or (VarToStr( Value ) <> '') ) )
        Or ( ( Not FieldByName( 'MAT_ID').IsNull )
              And ( (Text <> '') Or (VarToStr( Value ) <> '') )
              And ( FieldByName( 'MAT_NAME').AsString <> Text ) )
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Ed_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'MAT';
      If UseText
      Then
        v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text
      Else
        v_In_Params.DynVar[ 'V_Keyword' ].AsString := VarToStr( Value );
      v_Out_Mat_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      If v_Out_Mat_Params <> Nil
      Then
      Begin
        V_In_Ed_Params.DynVar[ 'Find' ].AsString := 'ED';
        V_In_Ed_Params.DynVar[ 'V_Keyword' ].AsString := v_Out_Mat_Params.DynVar[ 'CODE_ED' ].AsString;
        v_Out_Ed_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Ed_Params );
        Edit;
        FieldByName( 'MAT_ID').AsInteger := v_Out_Mat_Params.DynVar[ 'ID_MAT' ].AsInteger;
        Text := v_Out_Mat_Params.DynVar[ 'NAME_MAT' ].AsString;
        FieldByName( 'ED_ID' ).AsInteger := v_Out_Ed_Params.DynVar[ 'ID_ED' ].AsInteger;
        FieldByName( 'ED_NAME' ).AsString := v_Out_Ed_Params.DynVar[ 'ED_CODE' ].AsString;
      End;
    End
    Else if ( Not FieldByName('MAT_ID').IsNull )
             And ( Text = '' )
    Then
    Begin
      Edit;
      FieldByName( 'MAT_ID').Clear;
      FieldByName( 'ED_ID' ).Clear;
      FieldByName( 'ED_NAME' ).Clear;
    End;
  End;
end;

procedure TForm_Per_Mat.DBGridEh1Columns4UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
Begin
  With Grid_Per_Mat.DataSource.DataSet
  Do
  Begin
    If ( ( Text <> '' )
        And ( FieldByName( 'ED_ID' ).IsNull ) )
        Or ( ( Text <> '' )
              And ( Not FieldByName( 'ED_ID' ).IsNull )
              And ( FieldByName( 'ED_NAME' ).AsString <> Text ) )
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'ED';
      v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName( 'ED_ID' ).AsInteger := v_Out_Params.DynVar[ 'ID_ED' ].AsInteger;
        Text := v_Out_Params.DynVar[ 'ED_CODE' ].AsString;
      End;
    End
    Else if ( Text = '' )
         And ( Not FieldByName( 'ED_ID' ).IsNull )
    Then
    Begin
      Edit;
      FieldByName( 'ED_ID' ).Clear;
    End;
  End;
end;

procedure TForm_Per_Mat.Grid_Per_MatGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Grid_Per_Mat.DataSource.DataSet as TMemTableEh
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

procedure TForm_Per_Mat.Grid_Per_MatKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ( Key = VK_F5 )
 then
    Self.Close;
end;

procedure TForm_Per_Mat.FormClose(Sender: TObject; var Action: TCloseAction);
Var
  i: Integer;
begin
  Try Grid_Per_Mat.DataSource.DataSet.Post Except End;
  With Grid_Per_Mat.DataSource.DataSet as TMemTableEh
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
          if Rec[i].DataValues['MAT_ID', dvvValueEh] = Null
          then
            Rec[i].MergeChanges;
        End;
      End;
    Finally
      EnableControls;
    End;
  End;
end;

procedure TForm_Per_Mat.FormShow(Sender: TObject);
begin
  Grid_Per_Mat.DataSource := TechProcDataFrame.Data_Per_Materials;
  Grid_Per_Mat.SearchPanel.SearchingText := '';
end;

procedure TForm_Per_Mat.Pop_M_Btn_DeleteClick(Sender: TObject);
begin
  Tp_Main_Form.Form_Tech_Proc_Main.P_DeleteFromDBGridEh( Grid_Per_Mat );
end;

procedure TForm_Per_Mat.Main_M_Per_Mat_Btn_ExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_Per_Mat.N1Click(Sender: TObject);
  var
  Button_Selected: Integer;
  v_In_Params, v_Out_Params: TDynVarsEh;
begin
  Button_Selected := MessageDlg( 'Скопировать материалы из норм расхода?',
                                  mtConfirmation,
                                  mbOKCancel,
                                  5 );
  if Button_Selected = mrOk then
  Begin
    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Params.DynVar[ 'v_Det_Id' ].AsInteger := TechProcDataFrame.Db_Doc_Info.FieldByName('Det_Id').AsInteger;
    v_In_Params.DynVar[ 'v_Ceh_Code' ].AsString := TechProcDataFrame.MemT_Doc_PartsCEH_CODE.AsString;
    v_In_Params.DynVar[ 'Find' ].AsString := 'NORM_MAT_W_TYPE';
    v_In_Params.DynVar[ 'Filter' ].AsString := ' Id_Det = ' + TechProcDataFrame.Db_Doc_Info.FieldByName('Det_Id').AsString
                                                  + ' And Code_Ceh = ''' + TechProcDataFrame.MemT_Doc_Parts.FieldByName('Ceh_Code').AsString + ''' ';
    v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
    If v_Out_Params <> Nil
    Then
      v_In_Params.DynVar[ 'v_Id_Vidrab' ].AsString := v_Out_Params.DynVar[ 'ID_VIDRAB' ].AsString;
    P_Copy_Materials( v_In_Params );
  End;

end;

procedure TForm_Per_Mat.N2Click(Sender: TObject);
  Var
    Vl_In_Params, Vl_Out_Params: TDynVarsEh;
begin
  Vl_In_Params := TDynVarsEh.Create( Application.MainForm );
  Vl_In_Params.DynVar['Find'].AsString := 'DET_NORM_MAT';
  Vl_In_Params.DynVar['Filter'].AsString := ' a.Id_Det = ' + TechProcDataFrame.Db_Doc_Info.FieldByName('Det_Id').AsString
                                              + ' And a.Flag = ''1'' '
                                              + '  And a.Norma > 0 ';
  Vl_In_Params.DynVar[ 'MultiSelect' ].AsBoolean := True;
  Vl_Out_Params := Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Params );
  If Vl_Out_Params <> Nil
  Then
  Begin
    Form_Tech_Proc_Main.P_Copy_In_DataSet_From_Buffer( TechProcDataFrame.MemT_Per_Materials );
  End;
end;

procedure TForm_Per_Mat.Pop_M_Per_MatPopup(Sender: TObject);
begin
 if (Grid_Per_Mat.DataSource.DataSet as TMemTableEh).ReadOnly Then Pop_M_Btn_Delete.Enabled := False
 Else if Not (Grid_Per_Mat.DataSource.DataSet as TMemTableEh).ReadOnly then Pop_M_Btn_Delete.Enabled := True;
end;

Procedure TForm_Per_Mat.P_Copy_Materials(v_In_Params: TDynVarsEh);
  Var
  v_Row_Counter: Integer;
begin
  With Grid_Per_Mat.DataSource.DataSet as TMemTableEh
  Do
  Begin
    DisableControls;
    {$Region 'Очистка'}
      First;
      For v_Row_Counter := 1 to RecordCount
      Do
      Begin
        Delete;
      End;
    {$EndRegion 'Очистка'}

    Try
      Db_Norm_Mat_Det.Close;
      Grid_Per_Mat.StartLoadingStatus( 'Загрузка данных...' );
      Db_Norm_Mat_Det.ClearVariables;
      Db_Norm_Mat_Det.SetVariable( 'v_Det_Id', v_In_Params.DynVar[ 'v_Det_Id' ].AsInteger );
      If Not v_In_Params.DynVar[ 'v_Id_Vidrab' ].IsNull
      Then
        Db_Norm_Mat_Det.SetVariable( 'v_Id_Vidrab', v_In_Params.DynVar[ 'v_Id_Vidrab' ].AsString )
      Else
        Db_Norm_Mat_Det.SetVariable( 'v_Id_Vidrab', '%' );
      If Not v_In_Params.DynVar[ 'v_Ceh_Code' ].IsNull
      Then
        Db_Norm_Mat_Det.SetVariable( 'v_Ceh_Code', v_In_Params.DynVar[ 'v_Ceh_Code' ].AsString )
      Else
        Db_Norm_Mat_Det.SetVariable( 'v_Ceh_Code', '%' );
      Db_Norm_Mat_Det.Open;

      Db_Norm_Mat_Det.First;
      For v_Row_Counter := 1 to Db_Norm_Mat_Det.RecordCount
      Do
      Begin
        Append;
        CopyFields( Db_Norm_Mat_Det );
        Post;
        Db_Norm_Mat_Det.Next;
      End;
    Finally
      EnableControls;
      Grid_Per_Mat.FinishLoadingStatus();
    End;
  End;
end;

end.
