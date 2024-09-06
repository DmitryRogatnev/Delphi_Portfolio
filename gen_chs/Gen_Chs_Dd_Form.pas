unit Gen_Chs_Dd_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DropDownFormEh, Dialogs, DynVarsEh, ToolCtrlsEh, DBGridEhGrouping,
  DBGridEhToolCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Buttons,
  Vcl.ExtCtrls, EhLibMTE, Oracle, OracleData, Data.DB, Gen_Chs_Data_Mod;

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
    DataModule: TDM_Gen_Chs;
    class function GetGlobalRef: TCustomDropDownFormEh; override;

  end;

var
  Drop_D_Form_Gen_Chose: TDrop_D_Form_Gen_Chose;

implementation

{$R *.dfm}

procedure TDrop_D_Form_Gen_Chose.CustomDropDownFormEhInitForm(
  Sender: TCustomDropDownFormEh; DynParams: TDynVarsEh);
var
  I: Integer;
  Columns_Str: String;
  Titles_Str: String;
  Columns_Arr: TStringList;
  Titles_Arr, VariablesList: TStringList;
  New_Grid_Field: TField;
  V_Index: Integer;
begin
  DataModule := Application.FindComponent('DM_Gen_Chs') as TDM_Gen_Chs;
  Grid_List.DataSource := DataModule.Data_Gen_Chose;

  Columns_Arr := TStringList.Create;
  Titles_Arr := TStringList.Create;

  If DynParams.DynVar['SQL'].IsNull
  Then
  Begin
    MessageDlg( 'Не указан текст SQL!', mtError, [mbOK], 5 );
    Abort;
  End;


  If Not DynParams.DynVar['Columns'].IsNull
  Then
  Begin
    Columns_Str := DynParams.DynVar['Columns'].AsString;
    Columns_Arr.Delimiter:=';';
    Columns_Arr.StrictDelimiter:=True;
    Columns_Arr.DelimitedText:=Columns_Str;
  End;
  //Названия колонок
  If Not DynParams.DynVar['Titles'].IsNull
  Then
  Begin
    Titles_Str := DynParams.DynVar['Titles'].AsString;
    Titles_Arr.Delimiter:=';';
    Titles_Arr.StrictDelimiter:=True;
    Titles_Arr.DelimitedText:=Titles_Str;
  End;


  With DataModule
  Do
  Begin
    MemT_Gen_Chose.Close;
    Db_Gen_Chose.DeleteVariables;
    Db_Gen_Chose.SQL.Clear;
    VariablesList:=TStringList.Create;
    VariablesList:=Oracle.FindVariables(DynParams.DynVar['SQL'].AsString, False);
    for i :=0 to VariablesList.Count-1
    do
    begin
      Db_Gen_Chose.DeclareVariable(VariablesList[i], otString );
      if not DynParams.DynVar[VariablesList[i]].IsNull
      then
      begin
        Db_Gen_Chose.SetVariable(VariablesList[i], DynParams.DynVar[VariablesList[i]].AsString);
      end{
      else
      begin
        MessageBox(Application.Handle, PChar(Format('Укажите переменную %s', [VariablesList[i]])), 'Ошибка!Не указана переменная', MB_OK  + MB_ICONERROR);
        Exit;
      end;}
    end;
    Db_Gen_Chose.SQL.Add( DynParams.DynVar['SQL'].AsString );
    Db_Gen_Chose.ExecSQL;
    MemT_Gen_Chose.Open;

    Grid_List.Columns.Clear;
    For I := 0 To Columns_Arr.Count-1
    Do
    Begin
      New_Grid_Field := Db_Gen_Chose.FindField(Trim(Columns_Arr[i]));
      if New_Grid_Field <> Nil
      Then
      Begin
        With Grid_List.Columns.Add
        Do
        Begin
          FieldName := New_Grid_Field.DisplayName;
          Title.Caption := Trim(Titles_Arr[i]);
          Title.TitleButton := True;
          If Width >= 300
          Then
              Width := 300
          Else if Width < 50
          Then
            Width := 50;
        End;
      End;
    End;
  End;
end;

procedure TDrop_D_Form_Gen_Chose.CustomDropDownFormEhReturnParams(
  Sender: TCustomDropDownFormEh; DynParams: TDynVarsEh);
var
  I: Integer;
begin
  With DataModule
  Do
  Begin
    For I := 0 To Db_Gen_Chose.FieldCount - 1
    Do
    Begin
      DynParams.DynVar[ Db_Gen_Chose.Fields[i].DisplayName ].AsString := MemT_Gen_Chose.FieldByName( Db_Gen_Chose.Fields[i].DisplayName ).AsString;
    End;
  End;
end;

class function TDrop_D_Form_Gen_Chose.GetGlobalRef: TCustomDropDownFormEh;
begin
  if Drop_D_Form_Gen_Chose = nil then
    Application.CreateForm(TDrop_D_Form_Gen_Chose, Drop_D_Form_Gen_Chose);
  Result := Drop_D_Form_Gen_Chose;
end;

procedure TDrop_D_Form_Gen_Chose.S_Btn_AcceptClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
  Close;
end;

procedure TDrop_D_Form_Gen_Chose.S_Btn_CancelClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
  Close;
end;

initialization
  RegisterClass(TDrop_D_Form_Gen_Chose);


end.