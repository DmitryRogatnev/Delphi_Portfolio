unit Tp_Detail_Doc_Oper_Param_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  OracleData, EhLibVCL, GridsEh, DBAxisGridsEh, DBVertGridsEh, DynVarsEh;

type
  TForm_Oper_Param = class(TForm)
    VGrid_Oper_Params: TDBVertGridEh;
    Db_Time_Edizm: TOracleDataSet;
    Data_Time_Edizm: TDataSource;
    Db_Chosen_Params: TOracleDataSet;
    Data_Chosen_Params: TDataSource;
    Db_Colors: TOracleDataSet;
    Db_ColorsID: TFloatField;
    Db_ColorsCOLOR_NAME: TStringField;
    Data_Colors: TDataSource;
    Db_Chosen_ParamsPARAM: TStringField;
    procedure DBVertGridEh1Rows0UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBVertGridEh1Rows1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBVertGridEh1Rows13UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBVertGridEh1Rows16UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBVertGridEh1Rows19UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBVertGridEh1Rows15UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBVertGridEh1Rows17UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_Is_Changed: Bool;
    v_Code_Prof_Is_Chosen: Bool;
    v_Det_Id: Integer;
    v_Doc_Id: Integer;
    v_Oper_Id: Integer;
    v_Main_Doc_Id: Integer;
  end;

var
  Form_Oper_Param: TForm_Oper_Param;

implementation

{$R *.dfm}
Uses
Tp_Detail_Docs_Connect_Form, Udm_Main, Tp_Main_Form;

procedure TForm_Oper_Param.DBVertGridEh1Rows0UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    If ( (Text <> '')
        And (FieldByName('OBOR_ID').IsNull) )
        Or ( ( Text <> '' )
            And ( Not FieldByName('OBOR_ID').IsNull )
            And ( Text <> FieldByName('OBOR_NAME').AsString ) )

    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'v_Find' ].AsString := 'OBOR';
      v_In_Params.DynVar[ 'V_Filter' ].AsString := ' Ceh = ''' +  FieldByName('CEH_CODE').AsString + ''' ';
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName( 'OBOR_ID' ).AsString := v_Out_Params.DynVar[ 'ID_OBOR' ].AsString;;
        Text := v_Out_Params.DynVar[ 'OBOR_NAME' ].AsString;
      End;
    End
    Else If ( Text = '' )
         And ( Not FieldByName( 'OBOR_ID' ).IsNull )
    Then
    Begin
      Edit;
      FieldByName( 'OBOR_ID' ).Clear;
    End;
  End;
end;

procedure TForm_Oper_Param.DBVertGridEh1Rows13UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  If VGrid_Oper_Params.DataSource.DataSet.FieldByName('TP_WORK_TYPE').AsInteger = 71
  Then
  Begin
    If VGrid_Oper_Params.DataSource.DataSet.FieldByName('OPER_KDA').IsNull
    Then
    Begin
      MessageDlg( 'Укажите параметр КДА!', mtError, [ mbOk ], 5 );
      Abort;
    End;
  End;
end;

procedure TForm_Oper_Param.DBVertGridEh1Rows15UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    If FieldByName( 'TP_WORK_TYPE' ).AsInteger = 71
    Then
    Begin
      FieldByName('OPER_OPPP_DET').AsFloat := StrToFloat(Text) * FieldByName('OPER_KDA').AsFloat;
    End
    Else
    Begin
      If FieldByName('OPER_COUNT_INS').AsFloat = 0
      Then
      Begin
        MessageDlg( 'Деление на 0! Укажите кол-во присп. (n)!', mtError, [ mbOk ], 5 );
        Abort;
      End;
      FieldByName('OPER_OPPP_DET').AsFloat := (StrToFloat(Text) * FieldByName('OPER_KDA').AsFloat)
                                              / FieldByName('OPER_COUNT_INS').AsFloat;
    End;
  End;
end;

procedure TForm_Oper_Param.DBVertGridEh1Rows16UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    If FieldByName( 'TP_WORK_TYPE' ).AsInteger = 71
    Then
    Begin
      Text := '1';
      FieldByName( 'OPER_OPPP_DET' ).AsFloat := FieldByName( 'OPER_PPPD' ).AsFloat
                                                * FieldByName( 'OPER_KDA' ).AsFloat;
      FieldByName( 'OPER_KDP' ).AsFloat := FieldByName( 'OPER_KDA' ).AsFloat;
    End
    Else
    Begin
      If StrToFloat(Text) = 0
      Then
      Begin
        MessageDlg( 'Деление на 0!', mtError, [ mbOk ], 5 );
        Abort;
      End;
      FieldByName( 'OPER_OPPP_DET' ).AsFloat := ( FieldByName( 'OPER_PPPD' ).AsFloat
                                                  * FieldByName( 'OPER_KDA' ).AsFloat ) / StrToFloat(Text);
      FieldByName( 'OPER_KDP' ).AsFloat := FieldByName( 'OPER_KDA' ).AsFloat / StrToFloat(Text);
    End;
  End;
end;

procedure TForm_Oper_Param.DBVertGridEh1Rows17UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  var
    V_In_Doc_Params,
    V_Out_Doc_Params: TDynVarsEh;
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    if FieldByName( 'TP_WORK_TYPE' ).AsInteger = 71
    Then
    Begin
      V_In_Doc_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Doc_Params.DynVar[ 'v_Find' ].AsString := 'DOC';
      V_In_Doc_Params.DynVar[ 'V_Filter' ].AsString := ' Id = ' + FieldByName( 'MAIN_DOC_ID' ).AsString;
      V_Out_Doc_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Doc_Params );
      If V_Out_Doc_Params <> Nil
      Then
      Begin
        If (  V_Out_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString = '55271.00048' )
           Or ( V_Out_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString = '55271.00014' )
           Or ( V_Out_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString = '55271.00058' )
           Or ( V_Out_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString = '55271.00108' )
           Or ( V_Out_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString = '55271.00018' )
        Then
        Begin
          Text := '2';
        End
        Else
        Begin
          Text := '1';
        End;
      End
      Else
      Begin
        FieldByName( 'OPER_KOID' ).AsFloat := StrToFloat(Text) * FieldByName( 'OPER_KDA' ).AsFloat;
      End;
    End;
  End;
end;

procedure TForm_Oper_Param.DBVertGridEh1Rows19UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  var
    V_In_Doc_Params,
    V_Out_Doc_Params: TDynVarsEh;
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    if FieldByName( 'TP_WORK_TYPE' ).AsInteger = 71
    Then
    Begin
      V_In_Doc_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Doc_Params.DynVar[ 'v_Find' ].AsString := 'DOC';
      V_In_Doc_Params.DynVar[ 'V_Filter' ].AsString := ' Id = ' + FieldByName( 'MAIN_DOC_ID' ).AsString;
      V_Out_Doc_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Doc_Params );
      If V_Out_Doc_Params <> Nil
      Then
      Begin
        If (  V_Out_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString = '55271.00048' )
            Or ( V_Out_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString = '55271.00014' )
            Or ( V_Out_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString = '55271.00058' )
            Or ( V_Out_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString = '55271.00108' )
            Or ( V_Out_Doc_Params.DynVar[ 'ADDIT_INFO_NUM' ].AsString = '55271.00018' )
        Then
        Begin
          FieldByName( 'OPER_KOID' ).AsFloat := StrToFloat(Text) * 2;
        End
        Else
        Begin
          FieldByName( 'OPER_KOID' ).AsFloat := StrToFloat(Text) * 1;
        End;
        FieldByName( 'OPER_KDP' ).AsFloat := StrToFloat(Text) / 1;
        FieldByName( 'OPER_OPPP_DET' ).AsFloat := FieldByName( 'OPER_PPPD' ).AsFloat * StrToFloat(Text);
      end;
    End
    Else
    Begin
      If FieldByName( 'OPER_COUNT_INS' ).AsFloat = 0
      Then
      Begin
        MessageDlg( 'Деление на 0! Укажите кол-во присп. (n)!', mtError, [ mbOk ], 5 );
        Abort;
      End;

      FieldByName( 'OPER_OPPP_DET' ).AsFloat := ( FieldByName( 'OPER_PPPD' ).AsFloat * StrToFloat(Text) ) / FieldByName( 'OPER_COUNT_INS' ).AsFloat;
      FieldByName( 'OPER_KDP' ).AsFloat := StrToFloat(Text) / FieldByName( 'OPER_COUNT_INS' ).AsFloat;
      FieldByName( 'OPER_KOID' ).AsFloat := StrToFloat(Text) * FieldByName( 'OPER_COUNT_BATH' ).AsFloat;
    End;
  End;
end;

procedure TForm_Oper_Param.DBVertGridEh1Rows1UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  Var
    V_In_Params, v_Out_Params: TDynVarsEh;
begin
  With VGrid_Oper_Params.DataSource.DataSet
  Do
  Begin
    If ( Text <> '' )
        And ( Text <> FieldByName( 'PROF_CODE' ).AsString )
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'v_Find' ].AsString := 'KODPROF';
      v_In_Params.DynVar[ 'V_Filter' ].AsString := 'Prof_C.Nc = '''
                                                    + FieldByName( 'CEH_CODE' ).AsString
                                                    + ''' ';
      v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Text := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
        FieldByName( 'OPER_OBOR_EN' ).AsString := 'Ч';
        v_Code_Prof_Is_Chosen := True;
      End;
    End;
  End;
end;

procedure TForm_Oper_Param.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Try VGrid_Oper_Params.DataSource.DataSet.Post Except End;
end;

procedure TForm_Oper_Param.FormShow(Sender: TObject);
begin
  Db_Time_Edizm.Close;
  Db_Time_Edizm.Open;
  Db_Chosen_Params.Close;
  Db_Chosen_Params.Open;
  Db_Colors.Close;
  Db_Colors.Open;
  Form_Oper_Param.Caption := 'Параметры для операции '
                    + VGrid_Oper_Params.DataSource.DataSet.FieldByName( 'OPER_NAME' ).AsString;
end;

end.
