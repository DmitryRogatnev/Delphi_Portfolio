unit EDIT_DOC_INFO_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, OracleData, Oracle, Vcl.StdCtrls,
  Vcl.Mask, DBCtrlsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,  REASON_CHS_FORM,
  DBLookupEh, DBVertGridsEh, VAR_FORM;

type
  TForm39 = class(TForm)
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    BTN_CANCEL: TButton;
    PKG_TP_DOC: TOraclePackage;
    SimpleSQL: TOracleDataSet;
    DB_APPR_LIST: TOracleDataSet;
    DB_APPR_LISTID: TFloatField;
    DB_APPR_LISTID_TP_DOC: TFloatField;
    DB_APPR_LISTCEH_ID: TFloatField;
    DB_APPR_LISTAPPR_STEP_NUM: TStringField;
    DB_APPR_LISTAPPR_STEP_NAME: TStringField;
    DB_APPR_LISTFLAG_USE: TFloatField;
    DB_APPR_LISTCEH_CODE: TStringField;
    DATA_APPR_LIST: TDataSource;
    Db_Liter_Types: TOracleDataSet;
    Data_Liter_Types: TDataSource;
    DbGrid_Info: TDBVertGridEh;
    DB_Work_Type: TOracleDataSet;
    DB_Work_TypeWORK_TYPE_NAME: TStringField;
    Data_Work_Type: TDataSource;
    Db_Main_Info: TOracleDataSet;
    Data_Main_Info: TDataSource;
    Db_Flag_Imp_Names: TOracleDataSet;
    Data_Flag_Imp_Names: TDataSource;
    DB_APPR_LISTGROUP_ID: TFloatField;
    DB_APPR_LISTGR_DEP_ID: TIntegerField;
    Db_Main_InfoID: TFloatField;
    Db_Main_InfoDOC_NUM: TStringField;
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
    Db_Main_InfoDET_ID: TFloatField;
    Db_Main_InfoDET_NUM: TStringField;
    Db_Main_InfoDET_NAME: TStringField;
    Db_Main_InfoDET_MAR: TStringField;
    Db_Main_InfoCEH_ID: TFloatField;
    Db_Main_InfoCEH_CODE: TStringField;
    Db_Main_InfoAUTHOR_LNUM: TFloatField;
    Db_Main_InfoAUTHOR_NAME: TStringField;
    Db_Main_InfoDATA_REG: TDateTimeField;
    Db_Main_InfoREASON: TStringField;
    Db_Main_InfoCANCEL_DOC_ID: TFloatField;
    Db_Main_InfoMAIN_DOC_ID: TFloatField;
    Db_Main_InfoCANCEL_FLAG: TFloatField;
    Db_Main_InfoCEH_DOCS_FLAG: TFloatField;
    Db_Main_InfoACT_NUM: TFloatField;
    Db_Main_InfoACT_DATE: TDateTimeField;
    Db_Main_InfoDOC_HEADER_ID: TFloatField;
    Db_Main_InfoEMPS_ID: TStringField;
    Db_Main_InfoPROJECT_FLAG: TIntegerField;
    Db_Main_InfoUSER_INSERT: TStringField;
    Db_Main_InfoDATE_INSERT: TDateTimeField;
    Db_Main_InfoUSER_CHANGE: TStringField;
    Db_Main_InfoDATA_CHANGE: TDateTimeField;
    procedure BTN_CANCELClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure DB_APPR_LISTAfterEdit(DataSet: TDataSet);
    procedure Db_Main_InfoAfterEdit(DataSet: TDataSet);
    procedure DbGrid_InfoRows4UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DbGrid_InfoRows2UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DbGrid_InfoRows0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DbGrid_InfoRows3UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Doc_Id: Integer;
    v_Doc_Num: String;
    Form_Is_Changed: Bool;

    /// <summary> Получение Id вида работы по его коду </summary>
    ///  <param name="Work_Type_Kode"> Integer; <br/> Код вида работа ( "(код) наименование" ) </param>
    ///  <returns> Id Вида Работы: Integer; <br/> </returns>
    Function F_Get_Work_Type_Id_By_Kode ( Work_Type_Kode: String ): Integer;
  end;

var
  Form39: TForm39;

implementation

{$R *.dfm}
Uses
Udm_Main, Tp_Main_Form;

procedure TForm39.BTN_CANCELClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TForm39.Button1Click(Sender: TObject);

var
Button_Selected: Integer;
begin
  try Db_Main_Info.Post
  except end;

  try DB_APPR_LIST.Post
  except end;

  if Db_Main_InfoDOC_TYPE.AsInteger = 1
  then
  Begin
    if Db_Main_InfoREASON.IsNull
    Then
    Begin
      MessageDlg('Не указана причина выпуска документа!', mtError, [mbOK], 5);
      Exit;
    End;
  End
  Else if Db_Main_InfoDOC_TYPE.AsInteger = 2 then
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

  Button_Selected := MessageDlg( 'Сохранить изменения?', mtConfirmation, mbOKCancel, 5 );
  if Button_Selected = mrOk
  Then
  Begin
      PKG_TP_DOC.CallProcedure( 'P_Update_Doc_Info', [ v_Doc_Id ] );
      Form_Is_Changed := False;
      ModalResult := mrOk;
  End;
  
end;

procedure TForm39.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
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

procedure TForm39.DbGrid_InfoRows0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
  Var
    V_In_Params, v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'v_Find' ].AsString := 'REASON';
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If v_Out_Params <> Nil
  Then
    Db_Main_Info.Edit;
    Db_Main_InfoREASON.AsString := v_Out_Params.DynVar[ 'REASON' ].AsString;
end;

procedure TForm39.DbGrid_InfoRows2UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
begin
  If Text = 'П'
  Then
  Begin
    Db_Main_Info.Edit;
    Db_Main_InfoPROJECT_FLAG.AsInteger := 1;
    Db_Main_InfoDOC_NUM.AsString := Db_Main_InfoDOC_NUM.AsString
                                    + ' П';
  End
  Else
  Begin
    Db_Main_Info.Edit;
    Db_Main_InfoPROJECT_FLAG.AsInteger := 0;
    Db_Main_InfoDOC_NUM.AsString := Copy( Db_Main_InfoDOC_NUM.AsString,
                                          0,
                                          Pos(' П', Db_Main_InfoDOC_NUM.AsString ) - 1  );
  End;

end;

procedure TForm39.DbGrid_InfoRows3UpdateData(Sender: TObject; var Text: string;
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

procedure TForm39.DbGrid_InfoRows4UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
begin
  Db_Main_Info.Edit;
  Db_Main_InfoTP_WORK_TYPE.AsInteger := F_Get_Work_Type_Id_By_Kode( Text );
  Db_Main_InfoTP_NUM.AsString := PKG_TP_DOC.CallStringFunction( 'F_Get_Tp_Num', [ Db_Main_InfoTP_WORK_TYPE.AsInteger,
                                                                                  Db_Main_InfoDOC_TYPE.AsInteger,
                                                                                  1 ] );
end;

procedure TForm39.DB_APPR_LISTAfterEdit(DataSet: TDataSet);
begin
  Form_Is_Changed := True;
end;

procedure TForm39.Db_Main_InfoAfterEdit(DataSet: TDataSet);
begin
  Form_Is_Changed := True;
end;

procedure TForm39.FormShow(Sender: TObject);
begin
  Form39.Caption := 'Изменение информации по документу ' + v_Doc_Num;
  DB_APPR_LIST.Close;
    PKG_TP_DOC.CallProcedure( 'P_Get_Doc_Appr_List', [ v_Doc_Id ] );
  DB_APPR_LIST.Open;
  Db_Liter_Types.Close;
  Db_Liter_Types.Open;
  DB_Work_Type.Close;
  DB_Work_Type.Open;
  Db_Flag_Imp_Names.Close;
  Db_Flag_Imp_Names.Open;
  Db_Main_Info.Close;
    PKG_TP_DOC.CallProcedure( 'P_Get_Doc_To_Edit', [ v_Doc_Id ] );
  Db_Main_Info.Open;
  Form_Is_Changed := False;
end;

Function TForm39.F_Get_Work_Type_Id_By_Kode( Work_Type_Kode: String ): Integer;
Begin
 SimpleSQL.Close;
 SimpleSQL.DeleteVariables;
 SimpleSQL.SQL.Clear;
 SimpleSQL.DeclareVariable( 'v_Work_Type_Kode', otString );
 SimpleSQL.SetVariable( 'v_Work_Type_Kode', Work_Type_Kode );
 SimpleSQL.SQL.Add('Select t.Num '
                    + ' From Ogt.SPR_GR_VID_RAB t '
                    + ' Where ''(''||t.Num_Gr_Vid_Rab||'') ''||t.Name_Gr_Vid_Rab = :v_Work_Type_Kode ');
 SimpleSQL.ExecSQL;
 SimpleSQL.Open;
 Result := SimpleSQL.Fields[0].AsInteger;
 SimpleSQL.Close;
End;

end.
