unit Tp_Detail_Doc_Det_Param_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  OracleData, EhLibVCL, GridsEh, DBAxisGridsEh, DBVertGridsEh, DynVarsEh;

type
  TForm_Det_Params = class(TForm)
    VGrid_Det_Params: TDBVertGridEh;
    procedure DBVertGridEh1Rows1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VGrid_Det_ParamsRows0UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure VGrid_Det_ParamsRows0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Det_Params: TForm_Det_Params;

implementation

{$R *.dfm}

Uses
Tp_Detail_Docs_Connect_Form, Tp_Main_Form;

procedure TForm_Det_Params.DBVertGridEh1Rows1UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
Begin
  With VGrid_Det_Params.DataSource.DataSet
  Do
  Begin
    If ( ( Text <> '' )
        And ( FieldByName( 'DET_EV_ID' ).IsNull ) )
        Or ( ( Text <> '' )
              And ( Not FieldByName( 'DET_EV_ID' ).IsNull )
              And ( FieldByName( 'DET_EV_CODE' ).AsString <> Text ) )
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'v_Find' ].AsString := 'ED';
      v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName( 'DET_EV_ID' ).AsInteger := v_Out_Params.DynVar[ 'ID_ED' ].AsInteger;
        Text := v_Out_Params.DynVar[ 'ED_CODE' ].AsString;
      End;
    End
    Else if ( Text = '' )
         And ( Not FieldByName( 'DET_EV_ID' ).IsNull )
    Then
    Begin
      Edit;
      FieldByName( 'DET_EV_ID' ).Clear;
    End;
  End;
End;

procedure TForm_Det_Params.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Try VGrid_Det_Params.DataSource.DataSet.Post Except End;
end;

procedure TForm_Det_Params.FormShow(Sender: TObject);
begin
  Form_Det_Params.Caption := 'Параметры для детали '
                             + VGrid_Det_Params.DataSource.DataSet.FieldByName('DET_NUM').AsString
                             + ' '
                             + VGrid_Det_Params.DataSource.DataSet.FieldByName('DET_NAME').AsString;
end;

procedure TForm_Det_Params.VGrid_Det_ParamsRows0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
  var
   V_In_Mat_Params,
   V_Out_Mat_Params: TDynVarsEh;
begin
  With VGrid_Det_Params.DataSource.DataSet
  Do
  Begin
    V_In_Mat_Params := TDynVarsEh.Create( Application.MainForm );
    V_In_Mat_Params.DynVar[ 'v_Find' ].AsString := 'DET_MAT';
    V_In_Mat_Params.DynVar[ 'V_Keyword' ].AsInteger := FieldByName('DET_ID').AsInteger;
    V_Out_Mat_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Mat_Params );
    if V_Out_Mat_Params <> Nil
    Then
    Begin
      Edit;
      FieldByName('DET_MAT_ID').AsInteger := V_Out_Mat_Params.DynVar[ 'ID_MAT' ].AsInteger;
      FieldByName('DET_MAT_NAME').AsString := V_Out_Mat_Params.DynVar[ 'NAME_MAT' ].AsString;
    End;
  End;
end;

procedure TForm_Det_Params.VGrid_Det_ParamsRows0UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  var
   V_In_Mat_Params,
   V_Out_Mat_Params: TDynVarsEh;
begin
  With VGrid_Det_Params.DataSource.DataSet
  Do
  Begin
    if ( (FieldByName('DET_MAT_ID').IsNull)
       And (Text <> '') )
       Or ( (Not FieldByName('DET_MAT_ID').IsNull)
            And (Text <> '')
            And (Text <> FieldByName('DET_MAT_NAME').AsString) )
    Then
    Begin
      V_In_Mat_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Mat_Params.DynVar[ 'v_Find' ].AsString := 'DET_MAT';
      V_In_Mat_Params.DynVar[ 'V_Keyword' ].AsInteger := FieldByName('DET_ID').AsInteger;
      V_Out_Mat_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Mat_Params );
      if V_Out_Mat_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName('DET_MAT_ID').AsInteger := V_Out_Mat_Params.DynVar[ 'ID_MAT' ].AsInteger;
        Text := V_Out_Mat_Params.DynVar[ 'NAME_MAT' ].AsString;
      End;
    End
    Else if (Not FieldByName('DET_MAT_ID').IsNull)
         And (Text = '')
    Then
    Begin
      Edit;
      FieldByName('DET_MAT_ID').Clear;
    End;
  End;
end;

end.
