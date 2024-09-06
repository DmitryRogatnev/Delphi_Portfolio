unit REG_DOC_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh, DET_CHS_FORM,
  VAR_FORM, Oracle, Data.DB, OracleData,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh,
  TECHNICAL_PROCESS_FORM, DBLookupEh, DBVertGridsEh, MaskUtils, IZD_CHS_FORM;

type
  TForm_Create_Doc = class(TForm)
    Btn_Cancel: TButton;
    Btn_Create: TButton;
    PKG_TP_DOC: TOraclePackage;
    SimpleSQL: TOracleDataSet;
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    Db_Appr_List: TOracleDataSet;
    DATA_APPR_LIST: TDataSource;
    Db_Appr_ListID: TFloatField;
    Db_Appr_ListID_TP_DOC: TFloatField;
    Db_Appr_ListCEH_ID: TFloatField;
    Db_Appr_ListAPPR_STEP_NUM: TStringField;
    Db_Appr_ListAPPR_STEP_NAME: TStringField;
    Db_Appr_ListFLAG_USE: TFloatField;
    Db_Appr_ListCEH_CODE: TStringField;
    LCB_Doc_Type: TDBLookupComboboxEh;
    Db_Liter_Types: TOracleDataSet;
    Data_Liter_Types: TDataSource;
    Db_Doc_Type: TOracleDataSet;
    Data_Doc_Type: TDataSource;
    Db_Main_Info: TOracleDataSet;
    Data_Main_Info: TDataSource;
    DbGrid_Info: TDBVertGridEh;
    LCB_Tp_Type: TDBLookupComboboxEh;
    Db_Tp_Type: TOracleDataSet;
    Data_Tp_Type: TDataSource;
    Db_Tp_TypeTP_TYPE: TStringField;
    Db_Tp_TypeTYPE_NUMBER: TFloatField;
    Db_Flag_Imp_Names: TOracleDataSet;
    Data_Flag_Imp_Names: TDataSource;
    Db_Main_InfoID: TFloatField;
    Db_Main_InfoDOC_NUM: TStringField;
    Db_Main_InfoDET_ID: TFloatField;
    Db_Main_InfoDET_NUM: TStringField;
    Db_Main_InfoDET_NAME: TStringField;
    Db_Main_InfoCEH_ID: TFloatField;
    Db_Main_InfoCEH_CODE: TStringField;
    Db_Main_InfoAUTHOR_LNUM: TFloatField;
    Db_Main_InfoAUTHOR_NAME: TStringField;
    Db_Main_InfoDATA_REG: TDateTimeField;
    Db_Main_InfoDATA_CHANGE: TDateTimeField;
    Db_Main_InfoREASON: TStringField;
    Db_Main_InfoCANCEL_DOC_ID: TFloatField;
    Db_Main_InfoCANCEL_DOC_NUM: TStringField;
    Db_Main_InfoMAIN_DOC_ID: TFloatField;
    Db_Main_InfoMAIN_DOC_NUM: TStringField;
    Db_Main_InfoCANCEL_FLAG: TFloatField;
    Db_Main_InfoCEH_DOCS_FLAG: TFloatField;
    Db_Main_InfoDET_MAR: TStringField;
    Db_Main_InfoDOC_LITER: TStringField;
    Db_Main_InfoDOC_TYPE: TFloatField;
    Db_Main_InfoTP_NUM: TStringField;
    Db_Main_InfoTP_NAME: TStringField;
    Db_Main_InfoTP_WORK_TYPE: TFloatField;
    Db_Main_InfoTP_WORK_TYPE_NAME: TStringField;
    Db_Main_InfoIZD_ID: TFloatField;
    Db_Main_InfoIZD_NAME: TStringField;
    Db_Main_InfoIZD_TYPE: TStringField;
    Db_Main_InfoCOMPLECT_ID: TFloatField;
    Db_Main_InfoTP_TYPE: TFloatField;
    Db_Main_InfoFLAG_IMP: TFloatField;
    Db_Main_InfoACT_NUM: TFloatField;
    Db_Main_InfoACT_DATE: TDateTimeField;
    Db_Main_InfoDOC_HEADER_ID: TFloatField;
    Db_Main_InfoEMPS_ID: TStringField;
    Db_Main_InfoID_DOC_HEADER: TIntegerField;
    Db_Main_InfoDOC_TYPE_ID: TStringField;
    Db_Main_InfoDOC_DATE: TDateTimeField;
    Db_Main_InfoDOC_NUMBER: TStringField;
    Db_Main_InfoCLMN1_VALUE: TStringField;
    Db_Main_InfoCLMN2_VALUE: TStringField;
    Db_Main_InfoCLMN3_VALUE: TStringField;
    Db_Main_InfoCREATE_USER_ID: TStringField;
    Db_Main_InfoCREATE_USER_ID_ADD: TIntegerField;
    Db_Main_InfoCREATE_DATE: TDateTimeField;
    Db_Main_InfoLAST_MOD_USER_ID: TStringField;
    Db_Main_InfoLAST_MOD_USER_ID_ADD: TIntegerField;
    Db_Main_InfoLAST_MOD_DATE: TDateTimeField;
    Db_Main_InfoSRC_DEP_ID: TIntegerField;
    Db_Main_InfoSNDR_DEP_ID: TIntegerField;
    Db_Main_InfoFLAG_IMP_NAME: TStringField;
    Seq_Id_Doc_Header: TOracleQuery;
    Seq_Main_Doc_Id: TOracleQuery;
    procedure Btn_CancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Btn_CreateClick(Sender: TObject);
    procedure LCB_Doc_TypeKeyValueChanged(Sender: TObject);
    procedure DBVertGridEh1Rows2UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBVertGridEh1Rows4UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DbGrid_InfoRows10UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DbGrid_InfoRows6UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DbGrid_InfoRows5UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DbGrid_InfoRows1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DbGrid_InfoRows10OpenDropDownForm(Grid: TCustomDBVertGridEh;
      Column: TFieldRowEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure DbGrid_InfoRows10CloseDropDownForm(Grid: TCustomDBVertGridEh;
      Column: TFieldRowEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Db_Main_InfoNewRecord(DataSet: TDataSet);
    procedure DbGrid_InfoRows11UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DbGrid_InfoRows2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

    v_Det_Id: Integer;
    v_Ceh_Id: Integer;
    v_Cancel_Doc_Id :Integer;
    v_User_Lnum :Integer;
    v_Det_Mar :String;
    v_Edit_Param: String;
    v_New_Id :Integer;
    v_Doc_Id: Integer;
    v_Det_Mar_Is_Chosen :Bool;
    v_Tp_Type: Integer;

    Type Doc = Record
      Doc_Id :Integer;
      Doc_Num :String;
      Doc_Author_Lnum :Integer;
      Doc_Author_Name :String;
      Doc_Det_Mar :String;
    End;


    /// <summary> Очистка списка согласования</summary>
    procedure Clear_Appr_List;

    /// <summary> Очистка инфо документа</summary>
    procedure Clear_Doc_Info;

    /// <summary> Поиск существующих ТП в старой программе </summary>
    ///  <param name="Det_Id"> Integer; <br/> Id детали </param>
    ///  <returns> Id документа :Integer; <br/> </returns>
    function Find_Exist_Old_Tp_For_Det (Det_Id :Integer) :Bool;

    Procedure P_Change_Edit_Param( Edit_Param: String );
  end;

var
  Form_Create_Doc: TForm_Create_Doc;

implementation

{$R *.dfm}

Uses
Main_Form, Udm_Main, Tp_Gen_Chs_Dd_Form;

procedure TForm_Create_Doc.Btn_CancelClick(Sender: TObject);
begin
  Form_Create_Doc.Close;
end;

procedure TForm_Create_Doc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Btn_CreateClick( Btn_Cancel );
end;

procedure TForm_Create_Doc.FormShow(Sender: TObject);
begin
  DB_APPR_LIST.Close;
  If v_Edit_Param = 'EDIT'
  Then
  Begin
    PKG_TP_DOC.CallProcedure( 'P_Get_Doc_Appr_List', [ v_Doc_Id ] );
    DB_APPR_LIST.Open;
  End;
  Db_Liter_Types.Close;
  Db_Liter_Types.Open;
  Db_Tp_Type.Close;
  Db_Tp_Type.Open;
  Db_Doc_Type.Close;
  Db_Doc_Type.Open;
  Db_Main_Info.Close;
  If v_Edit_Param = 'EDIT'
  Then
  Begin
    Db_Main_Info.SetVariable( 'v_Doc_Id', v_Doc_Id );
  End;
  Db_Main_Info.Open;
  Db_Flag_Imp_Names.Close;
  Db_Flag_Imp_Names.Open;
  if v_Edit_Param = 'INSERT'
  Then
  Begin
    v_Det_Id := 0;
    v_Cancel_Doc_Id := 0;
    v_User_Lnum := 0;
    v_New_Id := 0;
    LCB_Doc_Type.KeyValue := 1;
    Clear_Appr_List;
  End;

  If Not Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
  Begin

    P_Change_Edit_Param( v_Edit_Param );

    If ( ( Main_Form.Form_Tech_Proc_Main.User_Otdel_Id = 17 )
        Or ( Main_Form.Form_Tech_Proc_Main.User_Otdel_Id = 2 ) )
        And ( v_Edit_Param = 'INSERT' )
    Then
      LCB_Doc_Type.Enabled := True
    Else
      LCB_Doc_Type.Enabled := False;
  End;

  If v_Edit_Param = 'INSERT'
  Then
  Begin
    Form_Create_Doc.Caption := 'Регистрация документа';
    Btn_Create.Caption := 'Создать';
  End
  Else if v_Edit_Param = 'EDIT'
  Then
  Begin
    Form_Create_Doc.Caption := 'Редактирование документа';
    Btn_Create.Caption := 'Сохранить';
  End;


end;

procedure TForm_Create_Doc.LCB_Doc_TypeKeyValueChanged(Sender: TObject);
var
v_New_Doc_Number,
v_Execute_Ceh_Kode :String;

Button_Selected :Integer;
  i: Integer;

begin
 if LCB_Doc_Type.KeyValue = 1
 then
 Begin
   DbGrid_Info.Rows[8].Visible := False;
   DbGrid_Info.Rows[9].Visible := False;
   DbGrid_Info.Rows[10].Visible := False;
   DbGrid_Info.Rows[5].Visible := False;
   DbGrid_Info.Rows[6].Visible := False;
   DbGrid_Info.Rows[2].Visible := True;
   DbGrid_Info.Rows[3].Visible := True;
   DbGrid_Info.Rows[4].Visible := True;
   LCB_Tp_Type.Visible := False;
   If v_Edit_Param = 'INSERT'
   Then
     Db_Main_InfoDOC_NUM.Clear;
   Db_Main_InfoTP_NUM.Clear;
   Db_Main_InfoTP_NAME.Clear;
   Db_Main_InfoTP_WORK_TYPE.Clear;
   Db_Main_InfoTP_WORK_TYPE_NAME.Clear;
   If DB_APPR_LIST.Active
   Then
   Begin
     Clear_Appr_List;
     DB_APPR_LIST.Refresh;
   End;
 End
 Else if LCB_Doc_Type.KeyValue = 2
 then
 Begin
   DbGrid_Info.Rows[8].Visible := True;
   DbGrid_Info.Rows[9].Visible := True;
   DbGrid_Info.Rows[10].Visible := True;
   DbGrid_Info.Rows[2].Visible := False;
   DbGrid_Info.Rows[3].Visible := False;
   DbGrid_Info.Rows[4].Visible := False;
   DbGrid_Info.Rows[5].Visible := False;
   DbGrid_Info.Rows[6].Visible := False;
   LCB_Tp_Type.Visible := False;

   If v_Edit_Param = 'INSERT'
   Then
     Db_Main_InfoDOC_NUM.Clear;
   Begin
     v_New_Doc_Number := PKG_TP_DOC.CallStringFunction('F_Get_Doc_Num', [ 0, 0, 1, 2 ] );
     Db_Main_Info.Edit;
     Db_Main_InfoDOC_NUM.AsString := v_New_Doc_Number;
   End;
   Db_Main_InfoDET_ID.Clear;
   Db_Main_InfoDET_MAR.Clear;
   Db_Main_InfoDET_NUM.Clear;
   Db_Main_InfoDET_NAME.Clear;
   If DB_APPR_LIST.Active
   Then
   Begin
     PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, '' ] );
     DB_APPR_LIST.Refresh;
   End;
 End
 Else if LCB_Doc_Type.KeyValue = 5
 Then
 Begin
   DbGrid_Info.Rows[8].Visible := True;
   DbGrid_Info.Rows[9].Visible := True;
   DbGrid_Info.Rows[10].Visible := True;
   DbGrid_Info.Rows[2].Visible := False;
   DbGrid_Info.Rows[3].Visible := False;
   DbGrid_Info.Rows[4].Visible := False;
   DbGrid_Info.Rows[5].Visible := True;
   DbGrid_Info.Rows[6].Visible := True;
   LCB_Tp_Type.Visible := True;
     If v_Edit_Param = 'INSERT'
   Then
     Db_Main_InfoDOC_NUM.Clear;
   Begin
     v_New_Doc_Number := PKG_TP_DOC.CallStringFunction('F_Get_Doc_Num', [ 0, 0, 1, 2 ] );
     Db_Main_Info.Edit;
     Db_Main_InfoDOC_NUM.AsString := v_New_Doc_Number;
   End;
   Db_Main_InfoDET_ID.Clear;
   Db_Main_InfoDET_MAR.Clear;
   Db_Main_InfoDET_NUM.Clear;
   Db_Main_InfoDET_NAME.Clear;
   If DB_APPR_LIST.Active
   Then
   Begin
     PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, '' ] );
     DB_APPR_LIST.Refresh;
   End;
 End;
end;

procedure TForm_Create_Doc.Btn_CreateClick(Sender: TObject);
var
  Button_Selected: Integer;
  v_In_Params, v_Out_Params: TDynVarsEh;
begin
  Try Db_Main_Info.Post Except End;

  Try DB_APPR_LIST.Post Except End;

  If Db_Main_Info.UpdatesPending
  Then
  Begin
    If Sender = Btn_Cancel
    Then
    Begin
      if v_Edit_Param = 'INSERT'
      Then
        Button_Selected := MessageDlg('Документ не зарегистрирован! Зарегистрировать документ?', mtConfirmation, mbOKCancel, 5)
      Else if v_Edit_Param = 'EDIT'
      Then
        Button_Selected := MessageDlg('Документ изменен! Сохранить документ?', mtConfirmation, mbOKCancel, 5);
    End
    Else
    Begin
      if v_Edit_Param = 'INSERT'
      Then
        Button_Selected := MessageDlg('Зарегистрировать документ?', mtConfirmation, mbOKCancel, 5)
      Else if v_Edit_Param = 'EDIT'
      Then
        Button_Selected := MessageDlg('Сохранить документ?', mtConfirmation, mbOKCancel, 5);
    End;
    If Button_Selected = mrOk
    Then
    Begin

      {$Region 'Проверки'}
      If LCB_Doc_Type.KeyValue = 1
      Then
      Begin
        If Not Db_Main_InfoDET_ID.IsNull
        Then
        Begin
         if Db_Main_InfoREASON.IsNull
         Then
         Begin
           MessageDlg('Не указана причина выпуска документа!', mtError, [mbOK], 5);
           Exit;
         End;
        End
        Else
        Begin
          MessageDlg('Не указана деталь!', mtError, [mbOK], 5);
          Exit;
        End;
      End
      Else If ( LCB_Doc_Type.KeyValue = 2 )
               Or ( LCB_Doc_Type.KeyValue = 5 )
      Then
      Begin
        If Not Db_Main_InfoTP_NAME.IsNull
        Then
        Begin
         if Not Db_Main_InfoTP_NUM.IsNull
         Then
         Begin
           if Not Db_Main_InfoTP_WORK_TYPE.IsNull
           Then
           Begin
             if Db_Main_InfoREASON.IsNull
             Then
             Begin
               MessageDlg('Не указана причина выпуска документа!', mtError, [mbOK], 5);
               Exit;
             End;
           End
           Else
           Begin
             MessageDlg( 'Не указан вид работ!', mtError, [mbOK], 5 );
             Exit;
           End;
         End
         Else
         Begin
           MessageDlg( 'Не указано номер ТП!', mtError, [mbOK], 5 );
           Exit;
         End;
        End
        Else
        Begin
          MessageDlg( 'Не указано наименование ТП!', mtError, [mbOK], 5 );
          Exit;
        End;
      End;

      if Db_Main_InfoDOC_LITER.IsNull
      then
      Begin
        MessageDlg( 'Не указана литера!', mtError, [mbOK], 5 );
        Exit;
      End;
      {$EndRegion 'Проверки'}

      v_New_Id := Db_Main_InfoID.AsInteger;
      v_Tp_Type := LCB_Doc_Type.KeyValue;
      v_Det_Mar := Db_Main_InfoDET_MAR.AsString;
      Db_Main_Info.Session.ApplyUpdates( [ Db_Main_Info ], True );
      PKG_TP_DOC.CallProcedure( 'P_Update_Doc_Info', [ Db_Main_InfoID.AsInteger ] );
      ModalResult := mrOk;
    End
    Else if ( Button_Selected = mrCancel )
             And ( Sender = Btn_Cancel )
    Then
    Begin
      Db_Main_Info.Session.CancelUpdates( [ Db_Main_Info ] );
      ModalResult := mrCancel;
    End;
  End;
end;

procedure TForm_Create_Doc.Clear_Appr_List;
begin
 SimpleSQL.Close;
 SimpleSQL.DeleteVariables;
 SimpleSQL.SQL.Clear;
 SimpleSQL.SQL.Add('Delete '
                    + ' From Ogt.Spr_Tp_Appr_List_Temp t ');
 SimpleSQL.ExecSQL;
 SimpleSQL.Open;
 SimpleSQL.Close;
end;

Procedure TForm_Create_Doc.Clear_Doc_Info;
begin
 SimpleSQL.Close;
 SimpleSQL.DeleteVariables;
 SimpleSQL.SQL.Clear;
 SimpleSQL.SQL.Add('Delete '
                    + ' From Ogt.Spr_Tp_Doc_Temp t ');
 SimpleSQL.ExecSQL;
 SimpleSQL.Open;
 SimpleSQL.Close;
end;

procedure TForm_Create_Doc.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
 if not DB_APPR_LIST.IsEmpty then
 Begin
   if DB_APPR_LISTAPPR_STEP_NUM.AsString = '002' then Background := $0000D7FF
   Else if DB_APPR_LISTAPPR_STEP_NUM.AsString = '003' then Background := $00DEC4B0
   Else if DB_APPR_LISTAPPR_STEP_NUM.AsString = '004' then Background := $00EEEEAF
   Else if DB_APPR_LISTAPPR_STEP_NUM.AsString = '006' then Background := $00E6D8AD;
 End;
end;

procedure TForm_Create_Doc.DbGrid_InfoRows10CloseDropDownForm(Grid: TCustomDBVertGridEh;
  Column: TFieldRowEh; Button: TEditButtonEh; Accept: Boolean;
  DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  if Accept
  Then
  Begin
    Db_Main_InfoTP_WORK_TYPE.AsInteger := DynParams.DynVar[ 'WORK_TYPE_ID' ].AsInteger;
    Db_Main_InfoTP_WORK_TYPE_NAME.AsString := DynParams.DynVar[ 'VSB_WORK_TYPE_NAME' ].AsString;
    If LCB_Doc_Type.KeyValue = 2
    Then
      Db_Main_InfoTP_NUM.AsString := PKG_TP_DOC.CallStringFunction( 'F_Get_Tp_Num', [ DynParams.DynVar[ 'WORK_TYPE_ID' ].AsInteger,
                                                                                      LCB_Doc_Type.KeyValue,
                                                                                      1 ] )
    Else if LCB_Doc_Type.KeyValue = 5
    Then
      Db_Main_InfoTP_NUM.AsString := PKG_TP_DOC.CallStringFunction( 'F_Get_Complect_Num', [ DynParams.DynVar[ 'WORK_TYPE_ID' ].AsInteger,
                                                                                            LCB_Tp_Type.KeyValue ] )
  End;
end;

procedure TForm_Create_Doc.DbGrid_InfoRows10OpenDropDownForm(Grid: TCustomDBVertGridEh;
  Column: TFieldRowEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
  DynParams: TDynVarsEh);
begin
  DynParams.DynVar[ 'v_Find' ].AsString := 'WORK_TYPE';
end;

procedure TForm_Create_Doc.DbGrid_InfoRows10UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  var
  v_Cancel_Doc_Id, I: Integer;
  v_New_Doc_Number,
  v_Execute_Ceh_Kode :String;
  v_In_Params,
  v_Out_Det_Mar_Params,
  v_Out_Cancel_Doc_Params,
  v_Out_Main_Doc_Params: TDynVarsEh;
begin
 If ( ( Text <> '' )
      And ( Db_Main_InfoCANCEL_DOC_ID.IsNull ) )
     Or ( ( Text <> '' )
          And ( Not Db_Main_InfoCANCEL_DOC_ID.IsNull )
          And ( Text <> Db_Main_InfoCANCEL_DOC_NUM.AsString ) )
 Then
 Begin
   v_In_Params := TDynVarsEh.Create( Application.MainForm );
   v_In_Params.DynVar[ 'v_Find' ].AsString := 'DOC';
   v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
   v_Out_Cancel_Doc_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
   If Not v_Out_Cancel_Doc_Params.DynVar[ 'ID_DOC' ].IsNull
   Then
   Begin
     Db_Main_Info.Edit;
     Db_Main_InfoCANCEL_DOC_ID.AsInteger := v_Out_Cancel_Doc_Params.DynVar[ 'ID_DOC' ].AsInteger;
     Text := v_Out_Cancel_Doc_Params.DynVar[ 'VSB_NUM_DOC' ].AsString;
   End;
   if LCB_Doc_Type.KeyValue = 1
   Then
   Begin
     Db_Main_InfoDET_ID.AsInteger := v_Out_Cancel_Doc_Params.DynVar[ 'ID_DET' ].AsInteger;
     Db_Main_InfoDET_NUM.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'VSB_ADDIT_INFO_NUM' ].AsString;
     Db_Main_InfoDET_NAME.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'VSB_ADDIT_INFO_NAME' ].AsString;
     Db_Main_InfoDET_MAR.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'VSB_SEC_ADDIT_INFO' ].AsString;
     PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, Db_Main_InfoDET_MAR.AsString ] );
     DB_APPR_LIST.Close;
     DB_APPR_LIST.Open;
   End;
 End
 Else if ( Text = '' )
         And ( Not Db_Main_InfoCANCEL_DOC_ID.IsNull )
 Then
 Begin
   Db_Main_Info.Edit;
   Db_Main_InfoDET_ID.Clear;
   Db_Main_InfoDET_NUM.Clear;
   Db_Main_InfoDET_NAME.Clear;
   Db_Main_InfoDET_MAR.Clear;
   Db_Main_InfoCANCEL_DOC_ID.Clear;
 End;
end;

procedure TForm_Create_Doc.DbGrid_InfoRows11UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  Var
    v_In_Params, v_Out_Params: TDynVarsEh;
begin
  If Not Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
    Abort;
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'v_Find' ].AsString := 'USERS';
  v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
  v_Out_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If Not v_Out_Params.DynVar[ 'EMP_ID' ].IsNull
  Then
  Begin
    Db_Main_InfoAUTHOR_LNUM.AsInteger := v_Out_Params.DynVar[ 'EMP_ID' ].AsInteger;
    Db_Main_InfoAUTHOR_NAME.AsString := v_Out_Params.DynVar[ 'VSB_EMP_FIO' ].AsString;
    Db_Main_InfoCEH_ID.AsInteger := v_Out_Params.DynVar[ 'CEH_ID' ].AsInteger;
  End;
end;

procedure TForm_Create_Doc.DbGrid_InfoRows1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
  Var
    V_In_Params, v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'v_Find' ].AsString := 'REASON';
  v_Out_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If Not v_Out_Params.DynVar[ 'VSB_REASON' ].IsNull
  Then
    Db_Main_Info.Edit;
    Db_Main_InfoREASON.AsString := v_Out_Params.DynVar[ 'VSB_REASON' ].AsString;
end;

procedure TForm_Create_Doc.DbGrid_InfoRows2EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
  Var
  v_New_Doc_Number,
  v_Execute_Ceh_Kode :String;
  V_In_Params,
  v_Out_Det_Params,
  v_Out_Det_Mar_Params,
  v_Out_Cancel_Doc_Params,
  v_Out_Main_Doc_Params: TDynVarsEh;

  Button_Selected :Integer;
    i: Integer;
begin
  v_Out_Det_Params := DM_Main.F_Show_Modal_Form( 'Spravochnik_Of_Details' );
  if v_Out_Det_Params <> Nil
  Then
  Begin
    Db_Main_Info.Edit;
    V_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_Det_Id := v_Out_Det_Params.DynVar[ 'ID' ].AsInteger;
    Db_Main_InfoDET_ID.AsInteger := v_Out_Det_Params.DynVar[ 'ID' ].AsInteger;
    Db_Main_InfoDET_NUM.AsString := v_Out_Det_Params.DynVar[ 'DET' ].AsString;
    Db_Main_InfoDET_NAME.AsString := v_Out_Det_Params.DynVar[ 'ND' ].AsString;
    if Db_Main_InfoCANCEL_DOC_NUM.AsString <> '' then Db_Main_InfoCANCEL_DOC_NUM.Clear;
    If v_Det_Id <> 0
    Then
    Begin
      v_New_Doc_Number := PKG_TP_DOC.CallStringFunction( 'F_Get_Doc_Num', [ v_Det_Id,
                                                                            Db_Main_InfoCEH_ID.AsInteger,
                                                                            0,
                                                                            1 ] );
      if v_New_Doc_Number <> '0' then Db_Main_InfoDOC_NUM.AsString := v_New_Doc_Number
      Else if v_New_Doc_Number = '0' then
      Begin
        Button_Selected := MessageDlg ( 'Для этой детали уже имеется документ!'
                                         + #13#10
                                         + 'Аннулировать его?',
                                         mtConfirmation,
                                         mbOKCancel, 5 );
        if Button_Selected = mrOk then
        Begin
          V_In_Params.DynVar[ 'v_Find' ].AsString := 'DOC';
          V_In_Params.DynVar[ 'V_Filter' ].AsString := ' Det_Id = ' + IntToStr( v_Det_Id );
          v_Out_Cancel_Doc_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
          If Not v_Out_Cancel_Doc_Params.DynVar[ 'ID_DOC' ].IsNull
          Then
          Begin
            Db_Main_InfoCANCEL_DOC_ID.AsInteger := v_Out_Cancel_Doc_Params.DynVar[ 'ID_DOC' ].AsInteger;
            Db_Main_InfoCANCEL_DOC_NUM.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'VSB_NUM_DOC' ].AsString;
            v_New_Doc_Number := PKG_TP_DOC.CallStringFunction( 'F_Get_Doc_Num', [ v_Det_Id,
                                                                                  Db_Main_InfoCEH_ID.AsInteger,
                                                                                  1,
                                                                                  1 ] );
            If v_New_Doc_Number <> '0'
            Then Db_Main_InfoDOC_NUM.AsString := v_New_Doc_Number;
          End;
        End
        Else
        Begin
          v_Det_Id := 0;
          Db_Main_InfoDET_ID.Clear;
          Db_Main_InfoDET_NUM.Clear;
          Db_Main_InfoDET_NAME.Clear;
          Text := '';
          Exit;
        End;
      End;
      If Find_Exist_Old_Tp_For_Det ( v_Det_Id )
      Then
        MessageDlg( 'Для данной детали имеется ТП в старом ПО!', mtInformation, [ mbOK ], 5 );
      If Db_Main_InfoCEH_ID.AsInteger <> 17
      Then
      Begin
        V_In_Params.DynVar[ 'v_Find' ].AsString := 'DOC';
        V_In_Params.DynVar[ 'V_Filter' ].AsString := ' Det_Id = ' + IntToStr( v_Det_Id )
                                                     + ' And Main_Doc_Id Is Null '
                                                     + ' And Cancel_Flag = 0 ';
        v_Out_Main_Doc_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
        If v_Out_Main_Doc_Params.DynVar[ 'ID_DOC' ].IsNull
        Then
        Begin
          V_In_Params.DynVar[ 'v_Find' ].AsString := 'DET_MAR';
          V_In_Params.DynVar[ 'V_Filter' ].AsString := ' Id_Det = ' + IntToStr( v_Det_Id );
          v_Out_Det_Mar_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
          If Not v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].IsNull
          Then
          Begin
            Db_Main_InfoDET_MAR.AsString := v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].AsString;
            v_Det_Mar := v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].AsString;
            if PKG_TP_DOC.CallIntegerFunction('F_Count_Uniq_Depart_In_Mar', [ v_Det_Mar ]) > 1
            Then
            Begin
              Seq_Main_Doc_Id.Execute;
              Db_Main_InfoMAIN_DOC_ID.AsInteger := Seq_Main_Doc_Id.FieldAsInteger(0);
            End;
          End;
        End
        Else If Not v_Out_Main_Doc_Params.DynVar[ 'ID_DOC' ].IsNull
        Then
        Begin
          v_Det_Mar := v_Out_Main_Doc_Params.DynVar[ 'VSB_SEC_ADDIT_INFO' ].AsString;
          Db_Main_InfoDET_MAR.AsString := v_Out_Main_Doc_Params.DynVar[ 'VSB_SEC_ADDIT_INFO' ].AsString;
          Db_Main_InfoMAIN_DOC_ID.AsInteger := v_Out_Main_Doc_Params.DynVar[ 'ID_DOC' ].AsInteger;
          Db_Main_InfoMAIN_DOC_NUM.AsString := v_Out_Main_Doc_Params.DynVar[ 'VSB_NUM_DOC' ].AsString;
        End;
      End
      Else if Db_Main_InfoCEH_ID.AsInteger = 17
      Then
      Begin
        V_In_Params.DynVar[ 'v_Find' ].AsString := 'DET_MAR';
        V_In_Params.DynVar[ 'V_Filter' ].AsString := ' Id_Det = ' + IntToStr( v_Det_Id );
        v_Out_Det_Mar_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
        If Not v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].IsNull
        Then
        Begin
          Db_Main_InfoDET_MAR.AsString := v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].AsString;
          v_Det_Mar := v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].AsString;
        End;
      End;

      PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, v_Det_Mar ] );
      DB_APPR_LIST.Close;
      DB_APPR_LIST.Open;
    End;
  End;
end;

procedure TForm_Create_Doc.DbGrid_InfoRows5UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  Var
    v_In_Params, v_Out_Params: TDynVarsEh;
begin
  If ( ( Text <> '' )
      And ( Db_Main_InfoIZD_ID.IsNull ) )
      Or ( (Text <> '' )
           And ( Not Db_Main_InfoIZD_ID.IsNull )
           And ( Db_Main_InfoIZD_NAME.AsString <> Text ) )
  Then
  Begin
    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Params.DynVar[ 'v_Find' ].AsString := 'IZD';
    v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
    v_Out_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
    If Not v_Out_Params.DynVar[ 'ID_IZD' ].IsNull
    Then
    Begin
      Db_Main_Info.Edit;
      Db_Main_InfoIZD_ID.AsInteger := v_Out_Params.DynVar[ 'ID_IZD' ].AsInteger;
      Text := v_Out_Params.DynVar[ 'VSB_IZD' ].AsString;
      Db_Main_InfoIZD_TYPE.AsString := v_Out_Params.DynVar[ 'VSB_IZD_ND' ].AsString;
    End;
  End
  Else If (Text = '' )
      And ( Not Db_Main_InfoIZD_ID.IsNull )
  Then
  Begin
   Db_Main_Info.Edit;
   Db_Main_InfoIZD_ID.Clear;
   Db_Main_InfoIZD_TYPE.Clear;
  End;
end;

procedure TForm_Create_Doc.DbGrid_InfoRows6UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  Var
  v_Numeric_Part: String;
  i: Integer;
begin
 if Db_Main_InfoTP_WORK_TYPE.IsNull
 Then
   Text := ''
 Else
  if Length( Text ) < 6
  Then
    Text := Copy ( Db_Main_InfoTP_NUM.AsString, 1, 6 )
  Else if ( Length( Text ) > 6 )
          And ( Length ( Text ) < 11 )
  Then
  Begin
    v_Numeric_Part := Copy ( Text, ( Pos ( '.', Text ) + 1 ) );
    While Length( v_Numeric_Part ) < 5
    Do
    Begin
      v_Numeric_Part := '0' + v_Numeric_Part;
    End;
    Text := Copy ( Db_Main_InfoTP_NUM.AsString, 1, 6 ) + v_Numeric_Part;
  End;
end;

procedure TForm_Create_Doc.DBVertGridEh1Rows2UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
var
v_New_Doc_Number,
v_Execute_Ceh_Kode :String;
V_In_Params,
v_Out_Det_Mar_Params,
v_Out_Cancel_Doc_Params,
v_Out_Main_Doc_Params: TDynVarsEh;

Button_Selected :Integer;
  i: Integer;

begin
   Db_Main_Info.Edit;
   If ( ( Text <> '' )
       And ( Db_Main_InfoDET_ID.IsNull ) )
      Or ( ( Text <> '' )
          And ( Not Db_Main_InfoDET_ID.IsNull )
          And ( Text <> Db_Main_InfoDET_NUM.AsString ) )
   Then
   Begin
      V_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_Det_Id := DET_CHS_FORM.Form49.Get_Det( Text ).Det_Id;
      Db_Main_InfoDET_ID.AsInteger := v_Det_Id;
      Text := DET_CHS_FORM.Form49.Get_Det_Info_By_Id( IntToStr( v_Det_Id ) ).Det_Num;
      Db_Main_InfoDET_NAME.AsString := DET_CHS_FORM.Form49.Get_Det_Info_By_Id( IntToStr( v_Det_Id ) ).Det_Name;
      if Db_Main_InfoCANCEL_DOC_NUM.AsString <> '' then Db_Main_InfoCANCEL_DOC_NUM.Clear;
      If v_Det_Id <> 0
      Then
      Begin
        v_New_Doc_Number := PKG_TP_DOC.CallStringFunction( 'F_Get_Doc_Num', [ v_Det_Id,
                                                                              Db_Main_InfoCEH_ID.AsInteger,
                                                                              0,
                                                                              1 ] );
        if v_New_Doc_Number <> '0' then Db_Main_InfoDOC_NUM.AsString := v_New_Doc_Number
        Else if v_New_Doc_Number = '0' then
        Begin
          Button_Selected := MessageDlg ( 'Для этой детали уже имеется документ!'
                                           + #13#10
                                           + 'Аннулировать его?',
                                           mtConfirmation,
                                           mbOKCancel, 5 );
          if Button_Selected = mrOk then
          Begin
            V_In_Params.DynVar[ 'v_Find' ].AsString := 'DOC';
            V_In_Params.DynVar[ 'V_Filter' ].AsString := ' Det_Id = ' + IntToStr( v_Det_Id );
            v_Out_Cancel_Doc_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
            If Not v_Out_Cancel_Doc_Params.DynVar[ 'ID_DOC' ].IsNull
            Then
            Begin
              Db_Main_InfoCANCEL_DOC_ID.AsInteger := v_Out_Cancel_Doc_Params.DynVar[ 'ID_DOC' ].AsInteger;
              Db_Main_InfoCANCEL_DOC_NUM.AsString := v_Out_Cancel_Doc_Params.DynVar[ 'VSB_NUM_DOC' ].AsString;
              v_New_Doc_Number := PKG_TP_DOC.CallStringFunction( 'F_Get_Doc_Num', [ v_Det_Id,
                                                                                    Db_Main_InfoCEH_ID.AsInteger,
                                                                                    1,
                                                                                    1 ] );
              If v_New_Doc_Number <> '0'
              Then Db_Main_InfoDOC_NUM.AsString := v_New_Doc_Number;
            End;
          End
          Else
          Begin
            v_Det_Id := 0;
            Db_Main_InfoDET_ID.Clear;
            Db_Main_InfoDET_NUM.Clear;
            Db_Main_InfoDET_NAME.Clear;
            Text := '';
            Exit;
          End;
        End;
        If Find_Exist_Old_Tp_For_Det ( v_Det_Id )
        Then
          MessageDlg( 'Для данной детали имеется ТП в старом ПО!', mtInformation, [ mbOK ], 5 );
        If Db_Main_InfoCEH_ID.AsInteger <> 17
        Then
        Begin
          V_In_Params.DynVar[ 'v_Find' ].AsString := 'DOC';
          V_In_Params.DynVar[ 'V_Filter' ].AsString := ' Det_Id = ' + IntToStr( v_Det_Id )
                                                       + ' And Main_Doc_Id Is Null '
                                                       + ' And Cancel_Flag = 0 ';
          v_Out_Main_Doc_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
          If v_Out_Main_Doc_Params.DynVar[ 'ID_DOC' ].IsNull
          Then
          Begin
            V_In_Params.DynVar[ 'v_Find' ].AsString := 'DET_MAR';
            V_In_Params.DynVar[ 'V_Filter' ].AsString := ' Id_Det = ' + IntToStr( v_Det_Id );
            v_Out_Det_Mar_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
            If Not v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].IsNull
            Then
            Begin
              Db_Main_InfoDET_MAR.AsString := v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].AsString;
              v_Det_Mar := v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].AsString;
              if PKG_TP_DOC.CallIntegerFunction('F_Count_Uniq_Depart_In_Mar', [ v_Det_Mar ]) > 1
              Then
              Begin
                Seq_Main_Doc_Id.Execute;
                Db_Main_InfoMAIN_DOC_ID.AsInteger := Seq_Main_Doc_Id.FieldAsInteger(0);
              End;
            End;
          End
          Else If Not v_Out_Main_Doc_Params.DynVar[ 'ID_DOC' ].IsNull
          Then
          Begin
            v_Det_Mar := v_Out_Main_Doc_Params.DynVar[ 'VSB_SEC_ADDIT_INFO' ].AsString;
            Db_Main_InfoDET_MAR.AsString := v_Out_Main_Doc_Params.DynVar[ 'VSB_SEC_ADDIT_INFO' ].AsString;
            Db_Main_InfoMAIN_DOC_ID.AsInteger := v_Out_Main_Doc_Params.DynVar[ 'ID_DOC' ].AsInteger;
            Db_Main_InfoMAIN_DOC_NUM.AsString := v_Out_Main_Doc_Params.DynVar[ 'VSB_NUM_DOC' ].AsString;
          End;
        End
        Else if Db_Main_InfoCEH_ID.AsInteger = 17
        Then
        Begin
          V_In_Params.DynVar[ 'v_Find' ].AsString := 'DET_MAR';
          V_In_Params.DynVar[ 'V_Filter' ].AsString := ' Id_Det = ' + IntToStr( v_Det_Id );
          v_Out_Det_Mar_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
          If Not v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].IsNull
          Then
          Begin
            Db_Main_InfoDET_MAR.AsString := v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].AsString;
            v_Det_Mar := v_Out_Det_Mar_Params.DynVar[ 'VSB_MAR' ].AsString;
          End;
        End;

        PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, v_Det_Mar ] );
        DB_APPR_LIST.Close;
        DB_APPR_LIST.Open;
      End;
   End
   Else if ( Text = '' )
            And ( Not Db_Main_InfoDET_ID.IsNull )
   Then
   Begin
     v_Det_Id := 0;
     Db_Main_InfoDET_ID.Clear;
     Db_Main_InfoDET_NAME.Clear;
     Db_Main_InfoDET_MAR.Clear;
   End;
end;

procedure TForm_Create_Doc.DBVertGridEh1Rows4UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  var
  v_Execute_Ceh_Kode :String;
  v_In_Params, v_Out_Params: TDynVarsEh;

  Button_Selected :Integer;
  i: Integer;
begin
  if Db_Main_InfoDET_ID.IsNull Then Abort
  Else if ( Text <> '' )
         And ( Not Db_Main_InfoDET_ID.IsNull )
  Then
  Begin
    V_In_Params.DynVar[ 'v_Find' ].AsString := 'DET_MAR';
    V_In_Params.DynVar[ 'V_Filter' ].AsString := ' Id_Det = ' + IntToStr( v_Det_Id );
    v_Out_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
    If Not v_Out_Params.DynVar[ 'VSB_MAR' ].IsNull
    Then
    Begin
      Db_Main_Info.Edit;
      Db_Main_InfoDET_MAR.AsString := v_Out_Params.DynVar[ 'VSB_MAR' ].AsString;
      PKG_TP_DOC.CallProcedure( 'P_Get_New_Appr_List', [ LCB_Doc_Type.KeyValue, v_Out_Params.DynVar[ 'VSB_MAR' ].AsString ] );
      DB_APPR_LIST.Close;
      DB_APPR_LIST.Open;
    End;
  End;
end;

procedure TForm_Create_Doc.Db_Main_InfoNewRecord(DataSet: TDataSet);
  var
  v_In_Params, v_Out_Params: TDynVarsEh;
begin
  Seq_Id_Doc_Header.Execute;
  Db_Main_InfoDOC_HEADER_ID.AsInteger := Seq_Id_Doc_Header.FieldAsInteger(0);
  Db_Main_InfoID_DOC_HEADER.AsInteger := Seq_Id_Doc_Header.FieldAsInteger(0);
  Db_Main_InfoDOC_DATE.AsDateTime := Now();
  If Main_Form.Form_Tech_Proc_Main.User_Admin
  Then
  Begin
    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Params.DynVar[ 'v_Find' ].AsString := 'USERS';
    v_Out_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
    If Not v_Out_Params.DynVar[ 'EMP_ID' ].IsNull
    Then
    Begin
      Db_Main_InfoAUTHOR_LNUM.AsInteger := v_Out_Params.DynVar[ 'EMP_ID' ].AsInteger;
      Db_Main_InfoAUTHOR_NAME.AsString := v_Out_Params.DynVar[ 'VSB_EMP_FIO' ].AsString;
      Db_Main_InfoCEH_ID.AsInteger := v_Out_Params.DynVar[ 'CEH_ID' ].AsInteger;
      Db_Main_InfoSRC_DEP_ID.AsInteger := v_Out_Params.DynVar[ 'DEP_ID' ].AsInteger;
    End;
  End
  Else
  Begin
    Db_Main_InfoAUTHOR_LNUM.AsInteger := Main_Form.Form_Tech_Proc_Main.User_lnum;
    Db_Main_InfoCEH_ID.AsInteger := Main_Form.Form_Tech_Proc_Main.User_Otdel_Id;
    v_In_Params := TDynVarsEh.Create( Application.MainForm );
    v_In_Params.DynVar[ 'v_Find' ].AsString := 'USERS';
    v_In_Params.DynVar[ 'V_Filter' ].AsString := ' Emp_Id = ' + IntToStr( Main_Form.Form_Tech_Proc_Main.User_lnum );
    v_Out_Params := Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
    If Not v_Out_Params.DynVar[ 'EMP_ID' ].IsNull
    Then
    Begin
      Db_Main_InfoAUTHOR_NAME.AsString := v_Out_Params.DynVar[ 'VSB_EMP_FIO' ].AsString;
      Db_Main_InfoSRC_DEP_ID.AsInteger := v_Out_Params.DynVar[ 'DEP_ID' ].AsInteger;
    End;
  End;
end;

Function TForm_Create_Doc.Find_Exist_Old_Tp_For_Det( Det_Id: Integer ): Bool;
Var
  v_Flag_Old_Tp_Exist: Integer;
  v_Flag_New_Tp_Exist: Integer;
begin
  SimpleSQL.Close;
  SimpleSQL.DeleteVariables;
  SimpleSQL.SQL.Clear;
  SimpleSQL.DeclareVariable( 'Det_Id', otString );
  SimpleSQL.SetVariable( 'Det_Id', Det_Id );
  SimpleSQL.SQL.Add( ' Select Count ( t.Id ) '
                     + ' From Ogt.Spr_Tp t '
                     + ' Where t.Det = :Det_Id ' );
  SimpleSQL.ExecSQL;
  SimpleSQL.Open;
  v_Flag_Old_Tp_Exist := SimpleSQL.Fields[0].AsInteger;
  SimpleSQL.Close;

  SimpleSQL.Close;
  SimpleSQL.DeleteVariables;
  SimpleSQL.SQL.Clear;
  SimpleSQL.DeclareVariable( 'Det_Id', otString );
  SimpleSQL.SetVariable( 'Det_Id', Det_Id );
  SimpleSQL.SQL.Add( ' Select Count ( t.Id ) '
                     + ' From Ogt.Spr_Tp_Doc t '
                     + ' Where t.Det_Id = :Det_Id '
                     + ' And t.Cancel_Flag = 0 ' );
  SimpleSQL.ExecSQL;
  SimpleSQL.Open;
  v_Flag_New_Tp_Exist := SimpleSQL.Fields[0].AsInteger;
  SimpleSQL.Close;

  If ( v_Flag_Old_Tp_Exist <> 0 )
      And ( v_Flag_New_Tp_Exist = 0 )
  Then
    Result := True
  Else
    Result := False;
end;

Procedure TForm_Create_Doc.P_Change_Edit_Param(Edit_Param: string);
begin
  If Edit_Param = 'INSERT'
  Then
  Begin
    With DbGrid_Info
    Do
    Begin
      FindFieldRow( 'DOC_NUM' ).Visible := True;
      FindFieldRow( 'DET_NUM' ).Visible := True;
      FindFieldRow( 'DET_NAME' ).Visible := True;
      FindFieldRow( 'DET_MAR' ).Visible := True;
      FindFieldRow( 'IZD_NAME' ).Visible := True;
      FindFieldRow( 'IZD_TYPE' ).Visible := True;
      FindFieldRow( 'AUTHOR_NAME' ).Visible := True;
      FindFieldRow( 'CANCEL_DOC_NUM' ).Visible := True;
    End;
  End
  Else if Edit_Param = 'EDIT'
  Then
  Begin
    With DbGrid_Info
    Do
    Begin
      FindFieldRow( 'DOC_NUM' ).Visible := False;
      FindFieldRow( 'DET_NUM' ).Visible := False;
      FindFieldRow( 'DET_NAME' ).Visible := False;
      FindFieldRow( 'DET_MAR' ).Visible := False;
      FindFieldRow( 'IZD_NAME' ).Visible := False;
      FindFieldRow( 'IZD_TYPE' ).Visible := False;
      FindFieldRow( 'AUTHOR_NAME' ).Visible := False;
      FindFieldRow( 'CANCEL_DOC_NUM' ).Visible := False;
    End;
  End;
end;

end.
