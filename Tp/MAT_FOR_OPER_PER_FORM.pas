unit MAT_FOR_OPER_PER_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, MAT_CHS_FORM,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  OracleData, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Menus,
  Oracle;

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
    Db_Norm_Mat_DetED_NAME: TStringField;
    Db_Norm_Mat_DetED_ID: TFloatField;
    Db_Norm_Mat_DetNORMA_MIN: TFloatField;
    procedure DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Pop_M_Btn_DeleteClick(Sender: TObject);
    procedure DBGridEh1Columns4UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Pop_M_Per_MatPopup(Sender: TObject);
    procedure Main_M_Per_Mat_Btn_ExitClick(Sender: TObject);
    procedure Main_M_Per_Mat_Btn_Copy_Mat_From_RcdClick(Sender: TObject);
    procedure Grid_Per_MatKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Per_Id :Integer;
    v_Per_Razrab :Integer;
    v_Edit_Flag :Integer;
    v_Det_Id: Integer;
    v_Ceh_Id: Integer;
    v_Ceh_Code: String;
    v_Doc_Id: Integer;
    Form_Is_Changed: Bool;

    Procedure P_Copy_Materials( v_In_Params: TDynVarsEh );
  end;

var
  Form_Per_Mat: TForm_Per_Mat;

implementation

{$R *.dfm}

Uses
Main_Form, Udm_Main, Technical_Process_Form;

procedure TForm_Per_Mat.DBGridEh1Columns1UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
var
  v_New_Mat_Id :Integer;
  V_In_Params,
  v_Out_Params: TDynVarsEh;
begin
  if ( ( Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsMAT_ID.IsNull )
      And ( Text <> '' ) )
      Or ( ( Not Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsMAT_ID.IsNull )
            And ( Text <> '' )
            And ( Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsMAT_NAME.AsString <> Text ) )
  Then
  Begin
    Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_Materials.Edit;
    v_New_Mat_Id := MAT_CHS_FORM.Form50.Get_Mat_Info(Text).Mat_Id;
    Text := MAT_CHS_FORM.Form50.Get_Mat_Info_By_Id(IntToStr(v_New_Mat_Id)).Mat_Name;
    Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsMAT_ID.AsInteger := v_New_Mat_Id;
    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Params.DynVar[ 'v_Find' ].AsString := 'ED';
    v_In_Params.DynVar[ 'V_Keyword' ].AsString := MAT_CHS_FORM.Form50.Get_Mat_Info_By_Id(Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsMAT_ID.AsString).Mat_Ed_Kod;
    v_Out_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
    If Not v_Out_Params.DynVar[ 'ID_ED' ].IsNull
    Then
    Begin
      Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsED_ID.AsInteger := v_Out_Params.DynVar[ 'ID_ED' ].AsInteger;
      Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsED_NAME.AsString := v_Out_Params.DynVar[ 'VSB_ED_CODE' ].AsString;
    End;
  End
  Else if ( Not Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsMAT_ID.IsNull )
           And ( Text = '' )
  Then
  Begin
    Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_Materials.Edit;
    Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsMAT_ID.Clear;
    Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsED_ID.Clear;
    Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsED_NAME.Clear;
  End;
end;

procedure TForm_Per_Mat.DBGridEh1Columns4UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
Begin
  If ( ( Text <> '' )
      And ( Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsED_ID.IsNull ) )
      Or ( ( Text <> '' )
            And ( Not Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsED_ID.IsNull )
            And ( Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsED_NAME.AsString <> Text ) )
  Then
  Begin
    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Params.DynVar[ 'v_Find' ].AsString := 'ED';
    v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
    v_Out_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
    If Not v_Out_Params.DynVar[ 'ID_ED' ].IsNull
    Then
    Begin
      Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_Materials.Edit;
      Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsED_ID.AsInteger := v_Out_Params.DynVar[ 'ID_ED' ].AsInteger;
      Text := v_Out_Params.DynVar[ 'VSB_ED_CODE' ].AsString;
    End;
  End
  Else if ( Text = '' )
       And ( Not Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsED_ID.IsNull )
  Then
  Begin
    Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_Materials.Edit;
    Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_MaterialsED_ID.Clear;
  End;
end;

procedure TForm_Per_Mat.Grid_Per_MatKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ( Key = VK_F5 )
 then
   Form_Per_Mat.Close;
end;

procedure TForm_Per_Mat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Try Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_Materials.Post Except End;
end;

procedure TForm_Per_Mat.FormShow(Sender: TObject);
begin
  Grid_Per_Mat.SearchPanel.SearchingText := '';
end;

procedure TForm_Per_Mat.Pop_M_Btn_DeleteClick(Sender: TObject);
begin
  Main_Form.Form_Tech_Proc_Main.P_DeleteFromDBGridEh( Grid_Per_Mat );
end;

procedure TForm_Per_Mat.Main_M_Per_Mat_Btn_Copy_Mat_From_RcdClick(Sender: TObject);
  var
  Button_Selected: Integer;
  v_In_Params: TDynVarsEh;
begin
  Button_Selected := MessageDlg( 'Скопировать материалы из норм расхода?',
                                  mtConfirmation,
                                  mbOKCancel,
                                  5 );
  if Button_Selected = mrOk then
  Begin
    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Params.DynVar[ 'v_Det_Id' ].AsInteger := v_Det_Id;
    v_In_Params.DynVar[ 'v_Ceh_Code' ].AsString := v_Ceh_Code;
    P_Copy_Materials( v_In_Params );
  End;

end;

procedure TForm_Per_Mat.Main_M_Per_Mat_Btn_ExitClick(Sender: TObject);
begin
  Form_Per_Mat.Close;
end;

procedure TForm_Per_Mat.Pop_M_Per_MatPopup(Sender: TObject);
begin
 if v_Edit_Flag = 1 then Pop_M_Btn_Delete.Enabled := True
 Else if v_Edit_Flag = 0 then Pop_M_Btn_Delete.Enabled := False;
end;

Procedure TForm_Per_Mat.P_Copy_Materials(v_In_Params: TDynVarsEh);
  Var
  v_Row_Counter: Integer;
begin

  {$Region 'Очистка'}
    TECHNICAL_PROCESS_FORM.Form_Tech_Proc_Info.MemT_Per_Materials.First;
    For v_Row_Counter := 1 to TECHNICAL_PROCESS_FORM.Form_Tech_Proc_Info.MemT_Per_Materials.RecordCount
    Do
    Begin
      TECHNICAL_PROCESS_FORM.Form_Tech_Proc_Info.MemT_Per_Materials.Delete;
    End;
  {$EndRegion 'Очистка'}

  Try
    Db_Norm_Mat_Det.Close;
    Grid_Per_Mat.StartLoadingStatus( 'Загрузка данных...' );
    Db_Norm_Mat_Det.ClearVariables;
    Db_Norm_Mat_Det.SetVariable( 'v_Det_Id', v_In_Params.DynVar[ 'v_Det_Id' ].AsString );
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
      Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_Materials.Append;
      Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_Materials.CopyFields( Db_Norm_Mat_Det );
      Technical_Process_Form.Form_Tech_Proc_Info.MemT_Per_Materials.Post;
      Db_Norm_Mat_Det.Next;
    End;
  Finally
    Grid_Per_Mat.FinishLoadingStatus();
  End;
end;

end.
