unit Tp_Setup_Time_Calc_Config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, OracleData, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.Menus, MemTableDataEh, MemTableEh;

type
  TForm_Tp_Setup_Time_Calc_Config = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter2: TSplitter;
    Panel4: TPanel;
    Splitter3: TSplitter;
    Panel5: TPanel;
    Grid_Dep_Group: TDBGridEh;
    Grid_Obr_Grp_Link: TDBGridEh;
    Grid_Prof_Code_Link: TDBGridEh;
    Grid_Param_Schem: TDBGridEh;
    Db_Dep_Group_Link: TOracleDataSet;
    Data_Dep_Group_Link: TDataSource;
    Db_Dep_Group_LinkID_DEP_GRP_OP_LNK: TFloatField;
    Db_Dep_Group_LinkCEH_ID: TFloatField;
    Db_Dep_Group_LinkCEH_CODE: TStringField;
    Db_Dep_Group_LinkDEP_ID: TIntegerField;
    Db_Dep_Group_LinkGROUP_ID: TFloatField;
    Db_Dep_Group_LinkGROUP_NAME: TStringField;
    Db_Dep_Group_LinkCONST_TIME: TFloatField;
    Db_Dep_Group_LinkCOEFF_FLAG: TStringField;
    Db_Dep_Group_LinkCOEFF_FLAG_NAME: TStringField;
    Db_Obor_Grp_Link: TOracleDataSet;
    Db_Obor_Grp_LinkID_RW_OBR_OP_GRP_LINK: TIntegerField;
    Db_Obor_Grp_LinkOP_GRP_OP_LNK_RW_ID: TIntegerField;
    Db_Obor_Grp_LinkGRP_OBR_RW_ID: TIntegerField;
    Db_Obor_Grp_LinkGRP_OBR_NAME: TStringField;
    Db_Obor_Grp_LinkCONST_TIME: TFloatField;
    Db_Obor_Grp_LinkCOEFF_FLAG: TStringField;
    Db_Obor_Grp_LinkCOEFF_FLAG_NAME: TStringField;
    Data_Obor_Grp_Link: TDataSource;
    Db_Prof_Code_Link: TOracleDataSet;
    Data_Prof_Code_Link: TDataSource;
    Db_Prof_Code_LinkID_ROW: TIntegerField;
    Db_Prof_Code_LinkOP_GR_CH_LINK_RW_ID: TIntegerField;
    Db_Prof_Code_LinkPROF_CODE: TStringField;
    Db_Prof_Code_LinkPROF_NAME: TStringField;
    Db_Param_Schem: TOracleDataSet;
    Db_Dep_Group_LinkCONST_TIME_2: TFloatField;
    Db_Dep_Group_LinkCOEFF_FLAG_2: TStringField;
    Db_Dep_Group_LinkCOEFF_FLAG_2_NAME: TStringField;
    Main_M_Tp_Setup_Time_Calc_Cnfg: TMainMenu;
    Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_Save: TMenuItem;
    Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_Exit: TMenuItem;
    Db_Param_SchemID_RW_TIME_OP_PRM: TIntegerField;
    Db_Param_SchemOP_GRP_OP_LNK_RW_ID: TIntegerField;
    Db_Param_SchemOP_PRM_RW_ID: TIntegerField;
    Db_Param_SchemNAME_PARAM: TStringField;
    Db_Param_SchemTYPE_PARAM: TStringField;
    Db_Param_SchemMIN_VALUE: TFloatField;
    Db_Param_SchemMAX_VALUE: TFloatField;
    Db_Param_SchemCHOSEN_VALUE: TFloatField;
    Db_Param_SchemVL_CH_PRM: TStringField;
    Db_Param_SchemTIME_VALUE: TFloatField;
    Db_Param_SchemDEPENDS_ON: TStringField;
    Db_Param_SchemDEPENDS_ON_ID: TIntegerField;
    Db_Param_SchemDEPENDS_PARAM_NAME: TStringField;
    Data_Param_Schem: TDataSource;
    Db_Param_SchemDEPENDS_ON_NAME: TStringField;
    Splitter4: TSplitter;
    Panel6: TPanel;
    Grid_Grp_Works: TDBGridEh;
    Db_Works: TOracleDataSet;
    Data_Works: TDataSource;
    Db_WorksID_RW_WRK_OP_GRP_LINK: TIntegerField;
    Db_WorksOP_GRP_OP_LNK_RW_ID: TIntegerField;
    Db_WorksWRK_RW_ID: TIntegerField;
    Db_WorksWORK_NAME: TStringField;
    Db_WorksWORK_TIME: TFloatField;
    Db_WorksUSER_INSERT: TStringField;
    Db_WorksDATE_INSERT: TDateTimeField;
    Db_WorksUSER_CHANGE: TStringField;
    Db_WorksDATE_CHANGE: TDateTimeField;
    Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_Dubl: TMenuItem;
    MemTableEh1: TMemTableEh;
    Db_ProfCodes: TOracleDataSet;
    Data_ProfCodes: TDataSource;
    procedure DBGridEh1Columns0OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure DBGridEh1Columns0CloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure DBGridEh1Columns1OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure DBGridEh1Columns1CloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure DBGridEh_Coeff_ColumnOpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure DBGridEh_Coeff_ColumnCloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh3Columns0UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Obr_Grp_LinkColumns0OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Grid_Obr_Grp_LinkColumns0CloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_ExitClick(Sender: TObject);
    procedure Grid_Prof_Code_LinkColumns0OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Grid_Prof_Code_LinkColumns0CloseDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Param_SchemColumns0OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Grid_Param_SchemColumns0CloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Param_SchemColumns3OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Grid_Param_SchemColumns3CloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Param_SchemColumns1UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Param_SchemColumns5OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Grid_Param_SchemColumns4OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Grid_Param_SchemColumns4CloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_SaveClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Db_Obor_Grp_LinkNewRecord(DataSet: TDataSet);
    procedure Db_Prof_Code_LinkNewRecord(DataSet: TDataSet);
    procedure Db_Param_SchemNewRecord(DataSet: TDataSet);
    procedure Grid_Grp_WorksColumns0OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Grid_Grp_WorksColumns0CloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Db_WorksNewRecord(DataSet: TDataSet);
    procedure Grid_Param_SchemColumns5CloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_DublClick(Sender: TObject);
    procedure Grid_Dep_GroupColumns0UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Dep_GroupColumns3UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Tp_Setup_Time_Calc_Config: TForm_Tp_Setup_Time_Calc_Config;

implementation

{$R *.dfm}

uses
Udm_main, Gen_Chs_Dd_Form, Tp_Main_Form, Gen_Chs_Data_Mod;

procedure TForm_Tp_Setup_Time_Calc_Config.DBGridEh1Columns0CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
     And (DynParams <> Nil)
  Then
  Begin
    Db_Dep_Group_Link.Edit;
    Db_Dep_Group_Link.FieldByName('CEH_ID') .AsString := DynParams.DynVar[ 'Id_Ceh' ].AsString;
    Db_Dep_Group_Link.FieldByName('CEH_CODE') .AsString := DynParams.DynVar[ 'Ceh_Code' ].AsString;
  End;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.DBGridEh1Columns0OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar[ 'Find' ].AsString := 'CEH';
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Tp_Setup_Time_Calc_Config.DBGridEh1Columns1CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
     And (DynParams <> Nil)
  Then
  Begin
    Db_Dep_Group_Link.Edit;
    Db_Dep_Group_Link.FieldByName('GROUP_ID') .AsString := DynParams.DynVar[ 'Group_Id' ].AsString;
    Db_Dep_Group_Link.FieldByName('GROUP_NAME') .AsString := DynParams.DynVar[ 'Group_Name' ].AsString;
  End;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.DBGridEh1Columns1OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar[ 'Find' ].AsString := 'TIME_GRP';
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Tp_Setup_Time_Calc_Config.DBGridEh3Columns0UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
  Var
    V_In_Params, v_Out_Params: TDynVarsEh;
begin
  With Grid_Prof_Code_Link.DataSource.DataSet
  Do
  Begin
    if (Text <> '')
        And (Text <> FieldByName('PROF_CODE').AsString )
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'PROF_CODE';
      v_In_Params.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = ''' +  Db_Dep_Group_Link.FieldByName('CEH_CODE').AsString + ''' ';
      v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        Text := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
        FieldByName('PROF_NAME').AsString := V_Out_Params.DynVar[ 'NAME_PROF' ].AsString;
      End;
    End
    Else if (Text = '')
    Then
    Begin
      FieldByName('PROF_NAME').Clear;
    End;
  End;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.DBGridEh_Coeff_ColumnCloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
     And (DynParams <> Nil)
  Then
  Begin
    With Grid
    Do
    Begin
      If (DataSource.DataSet = Db_Dep_Group_Link)
          And (Column.FieldName = 'COEFF_FLAG_NAME')
      Then
      Begin
        With DataSource.DataSet
        Do
        Begin
          Edit;
          FieldByName('COEFF_FLAG') .AsString := DynParams.DynVar[ 'Coeff_Flag' ].AsString;
          FieldByName('COEFF_FLAG_NAME') .AsString := DynParams.DynVar[ 'Coeff_Flag_Name' ].AsString;
        End;
      End
      Else If (DataSource.DataSet = Db_Dep_Group_Link)
          And (Column.FieldName = 'COEFF_FLAG_2_NAME')
      Then
      Begin
        With DataSource.DataSet
        Do
        Begin
          Edit;
          FieldByName('COEFF_FLAG_2') .AsString := DynParams.DynVar[ 'Coeff_Flag' ].AsString;
          FieldByName('COEFF_FLAG_2_NAME') .AsString := DynParams.DynVar[ 'Coeff_Flag_Name' ].AsString;
        End;
      End
      Else If (DataSource.DataSet = Db_Obor_Grp_Link)
      Then
      Begin
        With DataSource.DataSet
        Do
        Begin
          Edit;
          FieldByName('COEFF_FLAG') .AsString := DynParams.DynVar[ 'Coeff_Flag' ].AsString;
          FieldByName('COEFF_FLAG_NAME') .AsString := DynParams.DynVar[ 'Coeff_Flag_Name' ].AsString;
        End;
      End;
    End;
  End;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.DBGridEh_Coeff_ColumnOpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar[ 'Find' ].AsString := 'TIME_CF';
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Db_Obor_Grp_LinkNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('OP_GRP_OP_LNK_RW_ID').AsInteger := Db_Dep_Group_Link.FieldByName('ID_DEP_GRP_OP_LNK').AsInteger;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Db_Param_SchemNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('OP_GRP_OP_LNK_RW_ID').AsInteger := Db_Dep_Group_Link.FieldByName('ID_DEP_GRP_OP_LNK').AsInteger;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Db_Prof_Code_LinkNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('OP_GR_CH_LINK_RW_ID').AsInteger := Db_Dep_Group_Link.FieldByName('ID_DEP_GRP_OP_LNK').AsInteger;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Db_WorksNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('OP_GRP_OP_LNK_RW_ID').AsInteger := Db_Dep_Group_Link.FieldByName('ID_DEP_GRP_OP_LNK').AsInteger;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_SaveClick(Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_Exit);
  If ModalResult = mrCancel
  Then
    CanClose := False
  Else
    CanClose := True;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.FormShow(Sender: TObject);
begin
  Db_Dep_Group_Link.Close;
  Db_Dep_Group_Link.Open;
  Db_Obor_Grp_Link.Close;
  Db_Obor_Grp_Link.Open;
  Db_Prof_Code_Link.Close;
  Db_Prof_Code_Link.Open;
  Db_Param_Schem.Close;
  Db_Param_Schem.Open;
  Db_Works.Close;
  Db_Works.Open;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Dep_GroupColumns0UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
  var
  InParams, OutParams: TDynVarsEh;
begin
  if (Text<>'')
      and (Text<>(Sender as TDBGridColumnEh).DisplayText)
  then
  begin
    InParams := TDynVarsEh.Create(Self);
    InParams.DynVar[ 'Find' ].AsString := 'CEH';
    InParams.DynVar['v_Keyword'].AsString := Text;
    InParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( InParams );
    OutParams := DM_Gen_Chs.F_Gen_Chose_Form(InParams, Nil);
    if OutParams<>Nil
    then
    begin
      Db_Dep_Group_Link.FieldByName('CEH_ID').AsString := OutParams.DynVar[ 'Id_Ceh' ].AsString;
      Db_Dep_Group_Link.FieldByName('CEH_CODE').AsString := OutParams.DynVar[ 'Ceh_Code' ].AsString;
    end;
  end
  else if Text=''
  then
  begin
    Db_Dep_Group_Link.FieldByName('CEH_ID').Clear
  end;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Dep_GroupColumns3UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
begin
  if (Text='')
      and (Db_Dep_Group_Link.FieldByName((Sender as TDBGridColumnEh).FieldName).AsString<>Text)
  then
    Db_Dep_Group_Link.FieldByName((Sender as TDBGridColumnEh).FieldName).Clear;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Grp_WorksColumns0CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
     And (DynParams <> Nil)
  Then
  Begin
    Db_Works.Edit;
    Db_Works.FieldByName('WRK_RW_ID').AsString := DynParams.DynVar['Work_Id'].AsString;
    Db_Works.FieldByName('WORK_NAME').AsString := DynParams.DynVar['Work_Name'].AsString;
  End;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Grp_WorksColumns0OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar[ 'Find' ].AsString := 'TIME_WORKS';
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Obr_Grp_LinkColumns0CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
     And (DynParams <> Nil)
  Then
  Begin
    Db_Obor_Grp_Link.Edit;
    Db_Obor_Grp_Link.FieldByName('GRP_OBR_RW_ID') .AsString := DynParams.DynVar[ 'Group_Id' ].AsString;
    Db_Obor_Grp_Link.FieldByName('GRP_OBR_NAME') .AsString := DynParams.DynVar[ 'Group_Name' ].AsString;
  End;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Obr_Grp_LinkColumns0OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar[ 'Find' ].AsString := 'TIME_OBR_GRP';
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Param_SchemColumns0CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
     And (DynParams <> Nil)
  Then
  Begin
    Db_Param_Schem.Edit;
    Db_Param_Schem.FieldByName('NAME_PARAM').AsString := DynParams.DynVar['Name_Param'].AsString;
    Db_Param_Schem.FieldByName('OP_PRM_RW_ID').AsString := DynParams.DynVar['Id_Row_Param'].AsString;
    Db_Param_Schem.FieldByName('TYPE_PARAM').AsString := DynParams.DynVar['Type_Param'].AsString;
  End;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Param_SchemColumns0OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar[ 'Find' ].AsString := 'TIME_SCHM_PRMS';
  DynParams.DynVar[ 'Filter' ].AsString := ' t.Type_Param <> ''text'' ';
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Param_SchemColumns1UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
begin
  If Db_Param_Schem.FieldByName('TYPE_PARAM').AsString <> 'numeric'
  Then
    Abort;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Param_SchemColumns3CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
      And (DynParams <> Nil)
  Then
  Begin
    Db_Param_Schem.Edit;
    Db_Param_Schem.FieldByName( 'CHOSEN_VALUE' ).AsString := DynParams.DynVar['PRM_CH_ROW_ID'].AsString;
    Db_Param_Schem.FieldByName( 'VL_CH_PRM' ).AsString := DynParams.DynVar['VL_CH_PRM'].AsString;
  End;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Param_SchemColumns3OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If Pos('choice_', Db_Param_Schem.FieldByName('TYPE_PARAM').AsString) = 0
  Then
    Abort;

  DynParams.DynVar['Find'].AsString := 'CH_PRM';
  DynParams.DynVar['Filter'].AsString := ' PARAM_ROW_ID = ' + Db_Param_Schem.FieldByName( 'OP_PRM_RW_ID' ).AsString;
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Param_SchemColumns4CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
      And (DynParams <> Nil)
  Then
  Begin
    Db_Param_Schem.Edit;
    Db_Param_Schem.FieldByName( 'DEPENDS_ON' ).AsString := DynParams.DynVar['Depends_Flag'].AsString;
    Db_Param_Schem.FieldByName( 'DEPENDS_ON_NAME' ).AsString := DynParams.DynVar['Depends_Flag_Name'].AsString;
  End;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Param_SchemColumns4OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar['Find'].AsString := 'TIME_DPNDS';
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Param_SchemColumns5CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
      And (DynParams <> Nil)
  Then
  Begin
    Db_Param_Schem.Edit;
    Db_Param_Schem.FieldByName( 'DEPENDS_ON_ID' ).AsString := DynParams.DynVar['Id_Row_Param'].AsString;
    Db_Param_Schem.FieldByName( 'DEPENDS_PARAM_NAME' ).AsString := DynParams.DynVar['Name_Param'].AsString;
  End;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Param_SchemColumns5OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If Db_Param_Schem.FieldByName( 'DEPENDS_ON' ).AsString <> 'param'
  Then
    Abort;

  DynParams.DynVar[ 'Find' ].AsString := 'TIME_SCHM_PRMS';
  DynParams.DynVar[ 'Filter' ].AsString := ' t.Type_Param = ''numeric'' ';
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( DynParams );
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Prof_Code_LinkColumns0CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
     And (DynParams <> Nil)
  Then
  Begin
    Db_Prof_Code_Link.Edit;
    Db_Prof_Code_Link.FieldByName('PROF_CODE').AsString := DynParams.DynVar[ 'CODE_PROF' ].AsString;
    Db_Prof_Code_Link.FieldByName('PROF_NAME').AsString := DynParams.DynVar[ 'NAME_PROF' ].AsString;
  End;
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Grid_Prof_Code_LinkColumns0OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar[ 'Find' ].AsString := 'PROF_CODE';
  DynParams.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = ''' +  Db_Dep_Group_Link.FieldByName('CEH_CODE').AsString + ''' ';
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Tp_Setup_Time_Calc_Config.Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_SaveClick(Sender: TObject);
Var
  Vl_Btn_Sct: Integer;
begin
  Try Db_Dep_Group_Link.Post Except End;
  Try Db_Prof_Code_Link.Post Except End;
  Try Db_Obor_Grp_Link.Post Except End;
  Try Db_Param_Schem.Post Except End;
  Try Db_Works.Post Except End;

  If (Db_Dep_Group_Link.UpdatesPending)
      Or (Db_Prof_Code_Link.UpdatesPending)
      Or (Db_Obor_Grp_Link.UpdatesPending)
      Or (Db_Param_Schem.UpdatesPending)
      Or (Db_Works.UpdatesPending)
  Then
  Begin
    If Sender = Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_Exit
    Then
      Vl_Btn_Sct := MessageDlg('Имеются не сохраненные данные! Сохранить?', mtConfirmation, mbYesNoCancel, 5);

    If (Sender = Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_Save)
        Or (Vl_Btn_Sct = mrYes)
    Then
    Begin
      DM_Main.Session.ApplyUpdates([ Db_Dep_Group_Link,
                                     Db_Prof_Code_Link,
                                     Db_Obor_Grp_Link,
                                     Db_Param_Schem,
                                     Db_Works ], True);

      Grid_Dep_Group.SaveBookmark;
      Grid_Obr_Grp_Link.SaveBookmark;
      Grid_Prof_Code_Link.SaveBookmark;
      Grid_Param_Schem.SaveBookmark;
      Grid_Grp_Works.SaveBookmark;
      Db_Dep_Group_Link.Refresh;
      Db_Prof_Code_Link.Refresh;
      Db_Obor_Grp_Link.Refresh;
      Db_Param_Schem.Refresh;
      Db_Works.Refresh;
      Grid_Dep_Group.RestoreBookmark;
      Grid_Obr_Grp_Link.RestoreBookmark;
      Grid_Prof_Code_Link.RestoreBookmark;
      Grid_Param_Schem.RestoreBookmark;
      Grid_Grp_Works.RestoreBookmark;

      If Sender = Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_Exit
      Then
        ModalResult := mrYes;
    End
    Else if Vl_Btn_Sct = mrNo
    Then
    Begin
      DM_Main.Session.CancelUpdates([ Db_Dep_Group_Link,
                                     Db_Prof_Code_Link,
                                     Db_Obor_Grp_Link,
                                     Db_Param_Schem,
                                     Db_Works ]);
      ModalResult := mrNo;
    End
    Else if Vl_Btn_Sct = mrCancel
    Then
      ModalResult := mrCancel;
  End
  Else if (Sender = Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_Exit)
  Then
  Begin
    ModalResult := mrNo;
  End;

end;

procedure TForm_Tp_Setup_Time_Calc_Config.Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_DublClick(
  Sender: TObject);
  var
    i, j, k: Integer;
    Copy_GrpDataSet: TMemTableEh;
    Copy_OborGrpDataSet: TMemTableEh;
    Copy_CodeProfDataSet: TMemTableEh;
    Copy_ParamSchemDataSet: TMemTableEh;
    Copy_WorksDataSet: TMemTableEh;
    ParentDataSet: TOracleDataSet;
begin
  for i := 1 to 5
  do
  begin
    case i
    of
      1:
      begin
        ParentDataSet := Db_Dep_Group_Link;
        Copy_GrpDataSet := TMemTableEh.Create(Self);
        Copy_GrpDataSet.LoadFromDataSet( ParentDataSet, -1, lmCopyStructureOnly, True );
        Copy_GrpDataSet.Open;
        Copy_GrpDataSet.Append;
        Copy_GrpDataSet.CopyFields(ParentDataSet);
      end;
      2:
      begin
        ParentDataSet := Db_Obor_Grp_Link;
        Copy_OborGrpDataSet := TMemTableEh.Create(Self);
        Copy_OborGrpDataSet.LoadFromDataSet( ParentDataSet, -1, lmCopyStructureOnly, True );

        Copy_OborGrpDataSet.Open;

        ParentDataSet.First;
        for j := 1 to ParentDataSet.RecordCount
        do
        begin
          Copy_OborGrpDataSet.Append;
          Copy_OborGrpDataSet.CopyFields(ParentDataSet);
          ParentDataSet.Next;
        end;
      end;
      3:
      begin
        ParentDataSet := Db_Prof_Code_Link;
        Copy_CodeProfDataSet := TMemTableEh.Create(Self);
        Copy_CodeProfDataSet.LoadFromDataSet( ParentDataSet, -1, lmCopyStructureOnly, True );


        Copy_CodeProfDataSet.Open;

        ParentDataSet.First;
        for j := 1 to ParentDataSet.RecordCount
        do
        begin
          Copy_CodeProfDataSet.Append;
          Copy_CodeProfDataSet.CopyFields(ParentDataSet);
          ParentDataSet.Next;
        end;
      end;
      4:
      begin
        ParentDataSet := Db_Param_Schem;
        Copy_ParamSchemDataSet := TMemTableEh.Create(Self);
        Copy_ParamSchemDataSet.LoadFromDataSet( ParentDataSet, -1, lmCopyStructureOnly, True );

        Copy_ParamSchemDataSet.Open;

        ParentDataSet.First;
        for j := 1 to ParentDataSet.RecordCount
        do
        begin
          Copy_ParamSchemDataSet.Append;
          Copy_ParamSchemDataSet.CopyFields(ParentDataSet);
          ParentDataSet.Next;
        end;
      end;
      5:
      begin
        ParentDataSet := Db_Works;
        Copy_WorksDataSet := TMemTableEh.Create(Self);
        Copy_WorksDataSet.LoadFromDataSet( ParentDataSet, -1, lmCopyStructureOnly, True );


        Copy_WorksDataSet.Open;

        ParentDataSet.First;
        for j := 1 to ParentDataSet.RecordCount
        do
        begin
          Copy_WorksDataSet.Append;
          Copy_WorksDataSet.CopyFields(ParentDataSet);
          ParentDataSet.Next;
        end;
      end;
    end;

  end;


  for i := 1 to 5
  do
  begin
    case i
    of
      1:
      begin
        ParentDataSet := Db_Dep_Group_Link;
        ParentDataSet.Append;
        for j := 0 to Copy_GrpDataSet.FieldCount-1
        do
          if Copy_GrpDataSet.Fields[j].FieldName <> 'ID_DEP_GRP_OP_LNK'
          then
            ParentDataSet.FieldByName(ParentDataSet.Fields[j].FieldName).AsString := Copy_GrpDataSet.Fields[j].AsString;
        //ParentDataSet.CopyFields(Copy_GrpDataSet);
        ParentDataSet.Post;
      end;
      2:
      begin
        ParentDataSet := Db_Obor_Grp_Link;

        Copy_OborGrpDataSet.First;
        for j := 1 to Copy_OborGrpDataSet.RecordCount
        do
        begin
          ParentDataSet.Append;
          //ParentDataSet.CopyFields(ParentDataSet);
          for k := 0 to Copy_OborGrpDataSet.FieldCount-1
          do
            if (Copy_OborGrpDataSet.Fields[k].FieldName <> 'ID_RW_OBR_OP_GRP_LINK')
                and (Copy_OborGrpDataSet.Fields[k].FieldName <> 'OP_GRP_OP_LNK_RW_ID')
            then
              ParentDataSet.FieldByName(ParentDataSet.Fields[k].FieldName).AsString := Copy_OborGrpDataSet.Fields[k].AsString;
          Copy_OborGrpDataSet.Next;
          ParentDataSet.Post;
        end;
      end;
      3:
      begin
        ParentDataSet := Db_Prof_Code_Link;
        Copy_CodeProfDataSet.First;
        for j := 1 to Copy_CodeProfDataSet.RecordCount
        do
        begin
          ParentDataSet.Append;
          //ParentDataSet.CopyFields(Copy_CodeProfDataSet);
          for k := 0 to Copy_CodeProfDataSet.FieldCount-1
          do
            if (Copy_CodeProfDataSet.Fields[k].FieldName <> 'ID_ROW')
                and (Copy_CodeProfDataSet.Fields[k].FieldName <> 'OP_GRP_OP_LNK_RW_ID')
            then
              ParentDataSet.FieldByName(ParentDataSet.Fields[k].FieldName).AsString := Copy_CodeProfDataSet.Fields[k].AsString;
          Copy_CodeProfDataSet.Next;
          ParentDataSet.Post;
        end;
      end;
      4:
      begin
        ParentDataSet := Db_Param_Schem;
        Copy_ParamSchemDataSet.First;
        for j := 1 to Copy_ParamSchemDataSet.RecordCount
        do
        begin
          ParentDataSet.Append;
          //ParentDataSet.CopyFields(Copy_ParamSchemDataSet);
          for k := 0 to Copy_ParamSchemDataSet.FieldCount-1
          do
            if (Copy_ParamSchemDataSet.Fields[k].FieldName <> 'ID_RW_TIME_OP_PRM')
                and (Copy_ParamSchemDataSet.Fields[k].FieldName <> 'OP_GRP_OP_LNK_RW_ID')
            then
              ParentDataSet.FieldByName(ParentDataSet.Fields[k].FieldName).AsString := Copy_ParamSchemDataSet.Fields[k].AsString;
          Copy_ParamSchemDataSet.Next;
          ParentDataSet.Post;
        end;
      end;
      5:
      begin
        ParentDataSet := Db_Works;
        Copy_WorksDataSet.First;
        for j := 1 to Copy_WorksDataSet.RecordCount
        do
        begin
          ParentDataSet.Append;
          //ParentDataSet.CopyFields(Copy_WorksDataSet);
          for k := 0 to Copy_WorksDataSet.FieldCount-1
          do
            if (Copy_WorksDataSet.Fields[k].FieldName <> 'ID_RW_WRK_OP_GRP_LINK')
                and (Copy_WorksDataSet.Fields[k].FieldName <> 'OP_GRP_OP_LNK_RW_ID')
            then
              ParentDataSet.FieldByName(ParentDataSet.Fields[k].FieldName).AsString := Copy_WorksDataSet.Fields[k].AsString;
          Copy_WorksDataSet.Next;
          ParentDataSet.Post;
        end;
      end;
    end;
  end;

  Copy_GrpDataSet.Free;
  Copy_OborGrpDataSet.Free;
  Copy_CodeProfDataSet.Free;
  Copy_ParamSchemDataSet.Free;
  Copy_WorksDataSet.Free;


end;

procedure TForm_Tp_Setup_Time_Calc_Config.Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_ExitClick(Sender: TObject);
begin
  Form_Tp_Setup_Time_Calc_Config.Close;
end;

end.
