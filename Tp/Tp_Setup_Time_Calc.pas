unit Tp_Setup_Time_Calc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.ExtCtrls, DBCtrlsEh, Vcl.Mask, DBLookupEh,
  Data.DB, OracleData, Oracle, Vcl.ComCtrls, ClipBrd, MemTableDataEh,
  MemTableEh, DataDriverEh, EhLibMTE, DBVertGridsEh, Vcl.Menus, PrnDbgeh,
  Tp_TechProc_DataFrame, Tp_TechProc_DocDetListDataFrame, ShellApi;

type
  TForm_Setup_Time_Calc = class(TForm)
    Panel1: TPanel;
    Btn_Calculate_Time: TButton;
    Db_Oper_Group_Params: TOracleDataSet;
    Data_Oper_Group_Params: TDataSource;
    PKG_TP_OPERATIONS: TOraclePackage;
    Db_Oper_Obor_Groups: TOracleDataSet;
    Data_Oper_Obor_Groups: TDataSource;
    Driver_Oper_Obor_Groups: TDataSetDriverEh;
    MemT_Oper_Obor_Groups: TMemTableEh;
    Driver_Oper_Group_Params: TDataSetDriverEh;
    MemT_Oper_Group_Params: TMemTableEh;
    Db_Oper_Obor_GroupsGROUP_ID: TFloatField;
    Db_Oper_Obor_GroupsGROUP_NAME: TStringField;
    Db_Oper_Obor_GroupsID_DEP_GRP_OP_LNK: TFloatField;
    Db_Oper_Obor_GroupsCEH_ID: TFloatField;
    Db_Oper_Obor_GroupsDEP_ID: TIntegerField;
    Db_Oper_Obor_GroupsCEH_CODE: TStringField;
    Db_Oper_Obor_GroupsCONST_TIME: TFloatField;
    Db_Oper_Obor_GroupsPROF_CODE: TStringField;
    Db_Oper_Obor_GroupsPROF_NAME: TStringField;
    Db_Oper_Obor_GroupsGRP_OBR_RW_ID: TIntegerField;
    Db_Oper_Obor_GroupsGRP_OBR_NAME: TStringField;
    Db_Oper_Group_ParamsNAME_PARAM: TStringField;
    Db_Oper_Group_ParamsTYPE_PARAM: TStringField;
    Db_Oper_Group_ParamsOP_GRP_OP_LNK_RW_ID: TIntegerField;
    Db_Oper_Group_ParamsMIN_VALUE: TFloatField;
    Db_Oper_Group_ParamsMAX_VALUE: TFloatField;
    Db_Oper_Group_ParamsCHOSEN_VALUE: TFloatField;
    Db_Oper_Group_ParamsVL_CH_PRM: TStringField;
    Db_Oper_Group_ParamsTIME_VALUE: TFloatField;
    Db_Oper_Group_ParamsTP_PARAM_VALUE: TStringField;
    Db_Oper_Group_ParamsSUM_TIME_VALUE: TFloatField;
    E_Result_Time: TDBNumberEditEh;
    Db_Oper_Group_ParamsCEH_CODE: TStringField;
    Db_Oper_Group_ParamsPROF_CODE: TStringField;
    Db_Oper_Group_ParamsPROF_NAME: TStringField;
    Db_Oper_Group_ParamsGRP_OBR_NAME: TStringField;
    Panel2: TPanel;
    Grid_Groups: TDBGridEh;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    Db_Oper_Obor_GroupsCOEFF_FLAG: TStringField;
    MemT_Oper_Obor_GroupsGROUP_ID: TFloatField;
    MemT_Oper_Obor_GroupsGROUP_NAME: TStringField;
    MemT_Oper_Obor_GroupsID_DEP_GRP_OP_LNK: TFloatField;
    MemT_Oper_Obor_GroupsCEH_ID: TFloatField;
    MemT_Oper_Obor_GroupsDEP_ID: TIntegerField;
    MemT_Oper_Obor_GroupsCEH_CODE: TStringField;
    MemT_Oper_Obor_GroupsCONST_TIME: TFloatField;
    MemT_Oper_Obor_GroupsPROF_CODE: TStringField;
    MemT_Oper_Obor_GroupsPROF_NAME: TStringField;
    MemT_Oper_Obor_GroupsGRP_OBR_RW_ID: TIntegerField;
    MemT_Oper_Obor_GroupsGRP_OBR_NAME: TStringField;
    MemT_Oper_Obor_GroupsCOEFF_FLAG: TStringField;
    Panel4: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Grid_Params: TDBGridEh;
    GB_NORMA_TIME: TGroupBox;
    Main_M_T_Pz_Calc: TMainMenu;
    Main_M_T_Pz_Calc_Btn_Exit: TMenuItem;
    Splitter3: TSplitter;
    GroupBox2: TGroupBox;
    Grid_Detail_Trud: TDBGridEh;
    Db_Trud_For_Detail: TOracleDataSet;
    Driver_Trud_For_Detail: TDataSetDriverEh;
    MemT_Trud_For_Detail: TMemTableEh;
    Data_Trud_For_Detail: TDataSource;
    Pop_M_Trud_For_Detail: TPopupMenu;
    Pop_M_Trud_For_Detail_Btn_Print: TMenuItem;
    Save_Grid: TSaveDialog;
    Print_Grid: TPrintDBGridEh;
    Pop_M_Trud_For_Detail_Btn_Export: TMenuItem;
    Db_Trud_For_DetailTIME: TFloatField;
    Db_Trud_For_DetailNC: TStringField;
    Db_Trud_For_DetailKODPROF: TStringField;
    Db_Trud_For_DetailRAZR: TIntegerField;
    Db_Trud_For_DetailMONEY: TFloatField;
    Db_Trud_For_DetailKVN: TIntegerField;
    Db_Trud_For_DetailPROFPOLN: TStringField;
    MemT_Trud_For_DetailTIME: TFloatField;
    MemT_Trud_For_DetailNC: TStringField;
    MemT_Trud_For_DetailKODPROF: TStringField;
    MemT_Trud_For_DetailRAZR: TIntegerField;
    MemT_Trud_For_DetailMONEY: TFloatField;
    MemT_Trud_For_DetailKVN: TIntegerField;
    MemT_Trud_For_DetailFLAG_TP: TFloatField;
    MemT_Trud_For_DetailPROFPOLN: TStringField;
    Pop_M_Trud_For_Detail_Btn_Chose_Norm: TMenuItem;
    Db_Oper_Group_ParamsPARAM_ROW_ID: TFloatField;
    MemT_Oper_Group_ParamsNAME_PARAM: TStringField;
    MemT_Oper_Group_ParamsTYPE_PARAM: TStringField;
    MemT_Oper_Group_ParamsOP_GRP_OP_LNK_RW_ID: TIntegerField;
    MemT_Oper_Group_ParamsMIN_VALUE: TFloatField;
    MemT_Oper_Group_ParamsMAX_VALUE: TFloatField;
    MemT_Oper_Group_ParamsCHOSEN_VALUE: TFloatField;
    MemT_Oper_Group_ParamsVL_CH_PRM: TStringField;
    MemT_Oper_Group_ParamsTIME_VALUE: TFloatField;
    MemT_Oper_Group_ParamsTP_PARAM_VALUE: TStringField;
    MemT_Oper_Group_ParamsSUM_TIME_VALUE: TFloatField;
    MemT_Oper_Group_ParamsCEH_CODE: TStringField;
    MemT_Oper_Group_ParamsPROF_CODE: TStringField;
    MemT_Oper_Group_ParamsPROF_NAME: TStringField;
    MemT_Oper_Group_ParamsGRP_OBR_NAME: TStringField;
    MemT_Oper_Group_ParamsPARAM_ROW_ID: TFloatField;
    GroupBox3: TGroupBox;
    DBGridEh1: TDBGridEh;
    Data_Tp_Time: TDataSource;
    Splitter4: TSplitter;
    Main_M_T_Pz_Calc_Btn_Config: TMenuItem;
    Db_Oper_Obor_GroupsCONST_TIME_2: TFloatField;
    Db_Oper_Obor_GroupsCOEFF_FLAG_2: TStringField;
    MemT_Oper_Obor_GroupsCONST_TIME_2: TFloatField;
    MemT_Oper_Obor_GroupsCOEFF_FLAG_2: TStringField;
    Db_Trud_For_DetailNOP: TStringField;
    MemT_Trud_For_DetailNOP: TStringField;
    Splitter5: TSplitter;
    Panel6: TPanel;
    GroupBox4: TGroupBox;
    Grid_Op_Per_Time: TDBGridEh;
    MemT_Oper_Per_Time: TMemTableEh;
    Data_Oper_Per_Time: TDataSource;
    Driver_Oper_Per_Time: TDataSetDriverEh;
    Db_Oper_Per_Time: TOracleDataSet;
    Splitter6: TSplitter;
    Grid_Oper_Works: TDBGridEh;
    Db_Trud_For_DetailM05ID: TFloatField;
    MemT_Trud_For_DetailM05ID: TFloatField;
    Db_Oper_Per_TimeID: TFloatField;
    Db_Oper_Per_TimeRW_VERS: TStringField;
    Db_Oper_Per_TimeRW_ID_OLD_VERS: TIntegerField;
    Db_Oper_Per_TimeID_ROW_OPER: TFloatField;
    Db_Oper_Per_TimeDOK_IN: TFloatField;
    Db_Oper_Per_TimeDOC_TP_VERS_ID: TIntegerField;
    Db_Oper_Per_TimeNOM_PER: TIntegerField;
    Db_Oper_Per_TimePER: TStringField;
    Db_Oper_Per_TimeRAZRAB: TFloatField;
    Db_Oper_Per_TimePRIM: TStringField;
    Db_Oper_Per_TimeTT_PER: TStringField;
    Db_Oper_Per_TimePER_TIME_PZ: TFloatField;
    Db_Oper_Per_TimeGAS: TStringField;
    Db_Oper_Per_TimeSPEED: TStringField;
    Db_Oper_Per_TimeT_GAS: TStringField;
    Db_Oper_Per_TimeRAZRAB_NAME: TStringField;
    Db_Oper_Per_TimeTIME: TFloatField;
    Db_Oper_Per_TimeHARDNESS: TStringField;
    Db_Oper_Per_TimeUSER_ID_INSRT: TStringField;
    Db_Oper_Per_TimeDATE_INSRT: TDateTimeField;
    Db_Oper_Per_TimeUSER_ID_CORR: TStringField;
    Db_Oper_Per_TimeDATAIZM: TDateTimeField;
    MemT_Oper_Per_TimeID: TFloatField;
    MemT_Oper_Per_TimeRW_VERS: TStringField;
    MemT_Oper_Per_TimeRW_ID_OLD_VERS: TIntegerField;
    MemT_Oper_Per_TimeID_ROW_OPER: TFloatField;
    MemT_Oper_Per_TimeDOK_IN: TFloatField;
    MemT_Oper_Per_TimeDOC_TP_VERS_ID: TIntegerField;
    MemT_Oper_Per_TimeNOM_PER: TIntegerField;
    MemT_Oper_Per_TimePER: TStringField;
    MemT_Oper_Per_TimeRAZRAB: TFloatField;
    MemT_Oper_Per_TimePRIM: TStringField;
    MemT_Oper_Per_TimeTT_PER: TStringField;
    MemT_Oper_Per_TimePER_TIME_PZ: TFloatField;
    MemT_Oper_Per_TimeGAS: TStringField;
    MemT_Oper_Per_TimeSPEED: TStringField;
    MemT_Oper_Per_TimeT_GAS: TStringField;
    MemT_Oper_Per_TimeRAZRAB_NAME: TStringField;
    MemT_Oper_Per_TimeTIME: TFloatField;
    MemT_Oper_Per_TimeHARDNESS: TStringField;
    MemT_Oper_Per_TimeUSER_ID_INSRT: TStringField;
    MemT_Oper_Per_TimeDATE_INSRT: TDateTimeField;
    MemT_Oper_Per_TimeUSER_ID_CORR: TStringField;
    MemT_Oper_Per_TimeDATAIZM: TDateTimeField;
    MemT_Tp_Time: TMemTableEh;
    Grid_Time_Norms: TDBVertGridEh;
    N1: TMenuItem;
    procedure Btn_Calculate_TimeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Grid_ParamsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure MemT_Oper_Obor_GroupsAfterScroll(DataSet: TDataSet);
    procedure Grid_Time_NormsRows5UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Detail_TrudDblClick(Sender: TObject);
    procedure Grid_Time_NormsRows4UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Time_NormsRows0UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Time_NormsRows3UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Main_M_T_Pz_Calc_Btn_ConfigClick(Sender: TObject);
    procedure Main_M_T_Pz_Calc_Btn_ExitClick(Sender: TObject);
    procedure Grid_Time_NormsRows6EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Grid_Oper_WorksColumns0UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Oper_WorksColumns0OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Grid_Oper_WorksColumns0CloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Time_NormsRows10UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Time_Norms_TimeRowsUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //v_Oper_Id :Integer;
    //v_Oper_Row_Id: Integer;
    //v_Ceh_Id: Integer;
    v_TP_Id :String;
    v_TP_Oper_Id :String;
    v_TP_Obor_Id :String;
    v_TP_Ceh_Id :String;
    v_Btn_Calculate_Pressed :Bool;
    v_Calc_Var :Double;
    V_Oper_Time_DataSrc: TDataSource;
    V_Oper_Time_Works_DataSrc: TDataSource;
    Grouping_DataSrc: TDataSource;
    Grouping_Fields_Master: String;
    Grouping_Fields_Detail: String;
    MemRec_Oper: TMemoryRecordEh;
    TechProcDataFrame: TFrameData_TechProc;
    ListTechProc_DataFrame: TFrame_Tp_TechProc_DocDetListData;
    V_Det_Id: Integer;

    function F_Execute_Unit_Time ( Sender: TObject ): TStringList;

    Procedure P_Update_Time_Params;
  end;

var
 Form_Setup_Time_Calc: TForm_Setup_Time_Calc;

implementation

{$R *.dfm}

uses

Udm_Main,
Tp_Tech_Proc_Form,
Tp_Main_Form,
Tp_Tech_Proc_DataModule,
Tp_Detail_Docs_Connect_Form,
Tp_Setup_Time_Calc_Config,
Gen_Chs_Dd_Form,
Tp_TechProc_Frame,
Tp_TechProc_DocDetListFrame;

procedure TForm_Setup_Time_Calc.Btn_Calculate_TimeClick(Sender: TObject);
Var
  I: Integer;
begin
  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    If StatusBar1.SimpleText <> ''
    Then
    Begin
      MessageDlg(StatusBar1.SimpleText, mtError, [mbOK], 0);
      Abort;
    End;

    If (MemT_Trud_For_Detail.RecordCount > 1)
        And (FieldByName('Calc_From').AsString = 'norm')
    Then
    Begin
      MessageDlg('Трудоемкость определена не однозначно', mtError, [mbOK], 0);
      Abort;
    End;

    if (FieldByName('Calc_From').AsString = 'norm')
       And ((FieldByName('ALL_OPER_TIME').AsFloat > MemT_Trud_For_Detail.FieldByName('TIME').AsFloat)
            Or (FieldByName('ALL_OPER_TIME_PERC').AsFloat > 100.00 ))
    then
    begin
      Edit;
      FieldByName('ALL_OPER_TIME').AsFloat := MemT_Trud_For_Detail.FieldByName('TIME').AsFloat;
      FieldByName('ALL_OPER_TIME_PERC').AsFloat := 100.00;
      Post;
    end;

    With MemT_Oper_Group_Params
    Do
    Begin
      DisableControls;
      Try
        With RecordsView.MemTableData.RecordsList
        Do
        Begin
          For i := 0 to Count - 1
          Do
          Begin
            If Rec[i].DataValues['TP_PARAM_VALUE', dvvValueEh] = 'Значение не указано...'
            Then
            Begin
              MessageDlg(VarToStr(Rec[i].DataValues['NAME_PARAM', dvvValueEh])
                         + ': '
                         + VarToStr(Rec[i].DataValues['TP_PARAM_VALUE', dvvValueEh]), mtError, [mbOK], 5 );
              Abort;
            End;
          End;
        End;
      Finally
        EnableControls;
      End;
    End;


   { If (FieldByName('ALL_OPER_TIME').IsNull)
    Then
    Begin
      MessageDlg('Укажите норму времени на данную работу!', mtError, [mbOK], 0);
      Abort;
    End; }

    If (Not FieldByName('ALL_OPER_TIME').IsNull)
    Then
    Begin
      If (Grid_Time_Norms.DataSource.DataSet.FieldByName('PROF_CODE').IsNull)
          Or (Grid_Time_Norms.DataSource.DataSet.FieldByName('PROF_CLASS').IsNull)
          Or (Grid_Time_Norms.DataSource.DataSet.FieldByName('PROF_CTN').IsNull)
      Then
      Begin
        Grid_Detail_TrudDblClick(Nil);
      End;

      If MemT_Oper_Obor_Groups.FieldByName('COEFF_FLAG').AsString = 'none'
      Then
      Begin
        //Расчет Тпз
        FieldByName('SETUP_TIME').AsVariant := ((MemT_Oper_Group_ParamsSUM_TIME_VALUE.AsFloat + MemT_Oper_Obor_GroupsCONST_TIME.AsFloat + Grid_Oper_Works.FindFieldColumn('WRK_TIME').Footer.SumValue) / 60.00)/FieldByName('UNIT_COUNT').AsFloat;
        E_Result_Time.Value := FieldByName('SETUP_TIME').AsVariant;
      End;
    End;
  End;
end;


procedure TForm_Setup_Time_Calc.FormShow(Sender: TObject);
Var
  Vl_In_Det_Params, Vl_Out_Det_Params: TDynVarsEh;
begin
  if Form_Tech_Proc_Main.User_Admin
  Then
    Main_M_T_Pz_Calc_Btn_Config.Visible := True
  Else
    Main_M_T_Pz_Calc_Btn_Config.Visible := False;
  if TechProcDataFrame <> Nil
  then
  begin
    Grid_Time_Norms.DataSource := TechProcDataFrame.Data_Oper_Time;
    Grid_Oper_Works.DataSource := TechProcDataFrame.Data_Oper_Time_Works;
    V_Det_Id := TechProcDataFrame.Db_Doc_Info.FieldByName('Det_Id').AsInteger;
    MemRec_Oper := TechProcDataFrame.MemT_Opers.Rec;
    With MemT_Tp_Time
    Do
    Begin
      Close;
      ExternalMemData := TMemTableEh(Grid_Time_Norms.DataSource.DataSet);
      Open;
      MasterSource := TechProcDataFrame.Data_Doc_Parts;
      MasterFields := 'ID';
      DetailFields := 'ID_PART_TP';
    End;
  end
  else if ListTechProc_DataFrame <> Nil
  then
  begin
    Grid_Time_Norms.DataSource := ListTechProc_DataFrame.Data_Oper_Time;
    Grid_Oper_Works.DataSource := ListTechProc_DataFrame.Data_Oper_Time_Works;
    V_Det_Id := ListTechProc_DataFrame.MemT_Doc_Details.FieldByName('DET_ID').AsInteger;
    MemRec_Oper := ListTechProc_DataFrame.MemT_Detail_Operations.Rec;
    With MemT_Tp_Time
    Do
    Begin
      Close;
      ExternalMemData := TMemTableEh(Grid_Time_Norms.DataSource.DataSet);
      Open;
      MasterSource := ListTechProc_DataFrame.Data_Doc_Details;
      MasterFields := 'ID';
      DetailFields := 'ID_ROW_DET';
    End;
  end
  else
    Close;

  Vl_In_Det_Params := TDynVarsEh.Create( Application.MainForm );
  Vl_In_Det_Params.DynVar[ 'Find' ].AsString := 'DET';
  Vl_In_Det_Params.DynVar[ 'Filter' ].AsString := 'Id = ' + IntToStr(V_Det_Id);
  Vl_Out_Det_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Det_Params );
  MemT_Trud_For_Detail.Close;
    Db_Trud_For_Detail.SetVariable('V_DET_NUM', Vl_Out_Det_Params.DynVar['DET_NUM'].AsString);
    //Db_Trud_For_Detail.SetVariable('V_CEH_CODE', MemRec_Oper.DataValues['CEH_CODE', dvvValueEh]);
  MemT_Trud_For_Detail.Open;
  P_Update_Time_Params;
  Caption := 'Расчет подготовительно-заключительного времени для операции '
             + '(' + MemRec_Oper.DataValues['Oper_Number', dvvValueEh]
             + ' ) '
             + MemRec_Oper.DataValues['Oper_Name', dvvValueEh]
             + ' (' + Vl_Out_Det_Params.DynVar['DET_NUM'].AsString
             + ' ' + Vl_Out_Det_Params.DynVar['DET_NAME'].AsString
             + ')';
end;

procedure TForm_Setup_Time_Calc.Main_M_T_Pz_Calc_Btn_ExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_Setup_Time_Calc.MemT_Oper_Obor_GroupsAfterScroll(
  DataSet: TDataSet);
begin
  If DataSet.FieldByName('COEFF_FLAG').AsString <> 'none'
  Then
  Begin
    if DataSet.FieldByName('COEFF_FLAG').AsString = 'unit_time'
    Then
      Grid_Groups.FindFieldColumn( 'CONST_TIME' ).Title.Caption := '% от Т шт.'
    Else If DataSet.FieldByName('COEFF_FLAG').AsString = 'oper_time'
    Then
      Grid_Groups.FindFieldColumn( 'CONST_TIME' ).Title.Caption := '% от Т опер.'
  End
  Else
  Begin
    Grid_Groups.FindFieldColumn( 'CONST_TIME' ).Title.Caption := 'Константное время, мин.'
  End;
end;

procedure TForm_Setup_Time_Calc.N1Click(Sender: TObject);
var
  FilePath: String;
begin
  if FileExists(GetCurrentDir+'\Нормы времени расчет.pdf')
  then
  begin
    ShellExecute( Handle,
                  Nil,
                  PChar(GetCurrentDir+'\Нормы времени расчет.pdf'),
                  Nil,
                  Nil,
                  SW_SHOWNORMAL );
  end
  else
    MessageBox(Handle, 'Файл справки не найден!', 'Ошибка!', MB_OK  + MB_ICONERROR);
end;

procedure TForm_Setup_Time_Calc.Main_M_T_Pz_Calc_Btn_ConfigClick(Sender: TObject);
begin
  Tp_Setup_Time_Calc_Config.Form_Tp_Setup_Time_Calc_Config.ShowModal;
end;

procedure TForm_Setup_Time_Calc.P_Update_Time_Params;
begin
  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    MemT_Oper_Obor_Groups.Close;
    Db_Oper_Obor_Groups.SetVariable('v_Ceh_Id', MemRec_Oper.DataValues['CEH_ID', dvvValueEh]);
    Db_Oper_Obor_Groups.SetVariable('v_Prof_Code', FieldByName('PROF_CODE').AsString);
    Db_Oper_Obor_Groups.SetVariable('v_Grp_Obr_Rw_Id', MemRec_Oper.DataValues['GRP_OBR_RW_ID', dvvValueEh]);
    MemT_Oper_Obor_Groups.Open;
    MemT_Oper_Per_Time.Close;
    Db_Oper_Per_Time.SetVariable('v_Oper_Row_Id', MemRec_Oper.DataValues['ID_ROW_OPER', dvvValueEh]);
    MemT_Oper_Per_Time.Open;
    MemT_Oper_Group_Params.Close;
    Db_Oper_Group_Params.SetVariable('v_Ceh_Id', MemRec_Oper.DataValues['CEH_ID', dvvValueEh]);
    Db_Oper_Group_Params.SetVariable('v_Oper_Row_Id', MemRec_Oper.DataValues['ID_ROW_OPER', dvvValueEh]);
    Db_Oper_Group_Params.SetVariable('v_Oper_Id', MemRec_Oper.DataValues['OPER_ID', dvvValueEh]);
    if VarToStr(MemRec_Oper.DataValues['MAIN_DOC_ID', dvvValueEh]) <> ''
    then
      Db_Oper_Group_Params.SetVariable('IN_DOC_TP_ID', MemRec_Oper.DataValues['MAIN_DOC_ID', dvvValueEh])
    else
      Db_Oper_Group_Params.SetVariable('IN_DOC_TP_ID', MemRec_Oper.DataValues['ID_DOC_TP', dvvValueEh]);
    Db_Oper_Group_Params.SetVariable('v_Grp_Obr_Rw_Id', MemRec_Oper.DataValues['GRP_OBR_RW_ID', dvvValueEh]);
    If MemRec_Oper.DataStruct.FindField('ID_ROW_DET') <> Nil
    Then
    Begin
      Db_Oper_Group_Params.SetVariable('IN_GRP_PRM', 'doc_det');
      Db_Oper_Group_Params.SetVariable('IN_GRP_ID', MemRec_Oper.DataValues['ID_ROW_DET', dvvValueEh]);
    End
    Else if MemRec_Oper.DataStruct.FindField('ID_PART_TP') <> Nil
    Then
    Begin
      Db_Oper_Group_Params.SetVariable('IN_GRP_PRM', 'part');
      Db_Oper_Group_Params.SetVariable('IN_GRP_ID', MemRec_Oper.DataValues['ID_PART_TP', dvvValueEh]);
    End;
    Db_Oper_Group_Params.SetVariable('v_Prof_Code', FieldByName('PROF_CODE').AsString);
    {With Db_Oper_Group_Params
    Do
    Begin
      Clipboard.AsText := Db_Oper_Obor_Groups.SQL.Text + '$$$' +
                   GetVariable('v_Ceh_Id') + '-v_Ceh_Id;'
                   + GetVariable('v_Oper_Row_Id') + '-v_Oper_Row_Id;'
                   + GetVariable('v_Oper_Id') + '-v_Oper_Id;'
                   + GetVariable('IN_DOC_TP_ID') + '-IN_DOC_TP_ID;'
                   + GetVariable('v_Grp_Obr_Rw_Id') + '-v_Grp_Obr_Rw_Id;'
                   + GetVariable('IN_GRP_PRM') + '-IN_GRP_PRM;'
                   + GetVariable('IN_GRP_ID') + '-IN_GRP_ID;'
                   + GetVariable('v_Prof_Code') + '-v_Prof_Code;';
    End;}
    MemT_Oper_Group_Params.Open;
    MemT_Trud_For_Detail.Close;
      Db_Trud_For_Detail.SetVariable('v_Id_Using_Norm', FieldByName('USING_NORM_ID').AsVariant);
    MemT_Trud_For_Detail.Open;
  End;

  If MemT_Oper_Obor_Groups.RecordCount > 1
  Then
  Begin
    StatusBar1.SimpleText := 'ВНИМАНИЕ! Результат определен не однозначно! ';
    If Db_Oper_Obor_Groups.GetVariable('v_Ceh_Id') = ''
    Then
    Begin
      StatusBar1.SimpleText := StatusBar1.SimpleText + 'Не определен Цех! ';
      Grid_Params.FindFieldColumn( 'CEH_CODE' ).Visible := True;
    End;
    If Db_Oper_Obor_Groups.GetVariable('v_Prof_Code') = ''
    Then
    Begin
      StatusBar1.SimpleText := StatusBar1.SimpleText + 'Не определен Код профессии! ';
      Grid_Params.FindFieldColumn( 'PROF_CODE' ).Visible := True;
      Grid_Params.FindFieldColumn( 'PROF_NAME' ).Visible := True;
    End;
    If Db_Oper_Obor_Groups.GetVariable('v_Grp_Obr_Rw_Id') = ''
    Then
    Begin
      StatusBar1.SimpleText := StatusBar1.SimpleText + 'Не определена Группа оборудования! ';
      Grid_Params.FindFieldColumn( 'GRP_OBR_NAME' ).Visible := True;
    End;
  End
  Else
  Begin
    Grid_Params.FindFieldColumn( 'CEH_CODE' ).Visible := False;
    Grid_Params.FindFieldColumn( 'PROF_CODE' ).Visible := False;
    Grid_Params.FindFieldColumn( 'PROF_NAME' ).Visible := False;
    Grid_Params.FindFieldColumn( 'GRP_OBR_NAME' ).Visible := False;
    StatusBar1.SimpleText := '';
  End;

  E_Result_Time.Value := 0;
end;

procedure TForm_Setup_Time_Calc.Grid_Detail_TrudDblClick(Sender: TObject);
begin
  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    Edit;
    FieldByName('USING_NORM_ID').AsString := MemT_Trud_For_Detail.FieldByName( 'M05ID' ).AsString;
    FieldByName('USING_NORM_TIME').AsString := MemT_Trud_For_Detail.FieldByName( 'TIME' ).AsString;
    FieldByName('PROF_CODE').AsString := MemT_Trud_For_Detail.FieldByName( 'KODPROF' ).AsString;
    FieldByName('PROF_CLASS').AsString := MemT_Trud_For_Detail.FieldByName( 'RAZR' ).AsString;
    FieldByName('PROF_CTN').AsString := MemT_Trud_For_Detail.FieldByName( 'KVN' ).AsString;
    FieldByName('PROF_MONEY').AsFloat := MemT_Trud_For_Detail.FieldByName( 'MONEY' ).AsFloat;
  End;
  P_Update_Time_Params;
end;

procedure TForm_Setup_Time_Calc.Grid_Oper_WorksColumns0CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  With Grid.DataSource.DataSet
  Do
  Begin
    If (DynParams <> Nil)
        And (DropDownForm.ModalResult = mrOk)
    Then
    Begin
      Edit;
      FieldByName('WRK_RW_ID').AsString := DynParams.DynVar['Work_Id'].AsString;
      FieldByName('WRK_TIME').AsFloat := DynParams.DynVar['Work_Time'].AsFloat;
      FieldByName('WORK_NAME').AsString := DynParams.DynVar['Work_Name'].AsString;
    End;
  End;
end;

procedure TForm_Setup_Time_Calc.Grid_Oper_WorksColumns0OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar['Find'].AsString := 'TIME_WORKS_CNCT';
  DynParams.DynVar['V_Filter'].AsString := ' a.OP_GRP_OP_LNK_RW_ID ='
                                                + MemT_Oper_Obor_Groups.FieldByName('ID_DEP_GRP_OP_LNK').AsString;
  DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
end;

procedure TForm_Setup_Time_Calc.Grid_Oper_WorksColumns0UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
  Var
    Vl_In_Params, Vl_Out_Params: TDynVarsEh;
begin
  With Grid_Oper_Works.DataSource.DataSet
  Do
  Begin
    If UseText
    Then
    Begin
      if ((Text <> '')
              And (FieldByName('WRK_RW_ID').IsNull))
          Or ((Text <> '')
              And (Not FieldByName('WRK_RW_ID').IsNull)
              And (Text <> FieldByName('WORK_NAME').AsString))
      Then
      Begin
        Vl_In_Params := TDynVarsEh.Create(Application.MainForm);
        Vl_In_Params.DynVar['Find'].AsString := 'TIME_WORKS_CNCT';
        Vl_In_Params.DynVar['Filter'].AsString := ' a.OP_GRP_OP_LNK_RW_ID ='
                                                      + MemT_Oper_Obor_Groups.FieldByName('ID_DEP_GRP_OP_LNK').AsString;
        Vl_In_Params.DynVar['v_Keyword'].AsString := Text;
        Vl_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Params );
        If Vl_Out_Params <> Nil
        Then
        Begin
          Edit;
          FieldByName('WRK_RW_ID').AsString := Vl_Out_Params.DynVar['Work_Id'].AsString;
          FieldByName('WRK_TIME').AsFloat := Vl_Out_Params.DynVar['Work_Time'].AsFloat;
          Text := Vl_Out_Params.DynVar['Work_Name'].AsString;
        End
        Else Text := ''
      End
      Else if ((Text = '')
                And (Not FieldByName('WRK_RW_ID').IsNull))
      Then
      Begin
        Edit;
        FieldByName('WRK_RW_ID').Clear;
        FieldByName('WRK_TIME').Clear;
      End;
    End;
  End;
end;

procedure TForm_Setup_Time_Calc.Grid_ParamsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  With TDBGridEh( Sender ).DataSource.DataSet
  Do
  Begin
    If Not IsEmpty
    Then
    Begin
      If FieldByName('TP_PARAM_VALUE').AsString = 'Значение не указано...'
      Then
      Begin
        Background := $00C1B6FF;
        AFont.Color := clRed;
      End
      Else
      Begin
        Background := clWindow;
        AFont.Color := clWindowText;
      End;
    End;
  End;
end;

procedure TForm_Setup_Time_Calc.Grid_Time_Norms_TimeRowsUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  var
  i: Integer;
  OperTimeValue,
  OtherTimeValue, OtherCoeffValue,
  SetupTimeValue, SetupCoeffValue: Variant;
  SetupTimeFlag, OtherTimeFlag: String;
begin

  {If MemT_Trud_For_Detail.RecordCount > 1
  Then
  Begin
    MessageDlg('Трудоемкость определена не однозначно', mtError, [mbOK], 0);
    Abort;
  End;}

  If StatusBar1.SimpleText <> ''
  Then
  Begin
    MessageDlg(StatusBar1.SimpleText, mtError, [mbOK], 0);
    Abort;
  End;

  {if (FieldByName('Calc_From').AsString = 'norm')
     And ((FieldByName('ALL_OPER_TIME').AsFloat > MemT_Trud_For_Detail.FieldByName('TIME').AsFloat)
          Or (FieldByName('ALL_OPER_TIME_PERC').AsFloat > 100.00 ))
  then
  begin
    Edit;
    FieldByName('ALL_OPER_TIME').AsFloat := MemT_Trud_For_Detail.FieldByName('TIME').AsFloat;
    FieldByName('ALL_OPER_TIME_PERC').AsFloat := 100.00;
    Post;
  end;}

  With MemT_Oper_Group_Params
  Do
  Begin
    DisableControls;
    Try
      With RecordsView.MemTableData.RecordsList
      Do
      Begin
        For i := 0 to Count - 1
        Do
        Begin
          If Rec[i].DataValues['TP_PARAM_VALUE', dvvValueEh] = 'Значение не указано...'
          Then
          Begin
            MessageDlg(VarToStr(Rec[i].DataValues['NAME_PARAM', dvvValueEh])
                       + ': '
                       + VarToStr(Rec[i].DataValues['TP_PARAM_VALUE', dvvValueEh]), mtError, [mbOK], 5 );
            Abort;
          End;
        End;
      End;
    Finally
      EnableControls;
    End;
  End;

  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
   { If (MemT_Trud_For_Detail.RecordCount > 1)
        And (FieldByName('Calc_From').AsString = 'norm')
    Then
    Begin
      MessageDlg('Трудоемкость определена не однозначно', mtError, [mbOK], 0);
      Abort;
    End; }

    if (Text <> '')
        And (UseText)
    Then
    Begin
      Btn_Calculate_TimeClick(Nil);
      SetupTimeFlag := MemT_Oper_Obor_Groups.FieldByName('COEFF_FLAG').AsString;
      SetupCoeffValue := MemT_Oper_Obor_GroupsCONST_TIME.AsFloat;
      OtherTimeFlag := MemT_Oper_Obor_Groups.FieldByName('COEFF_FLAG_2').AsString;
      OtherCoeffValue := MemT_Oper_Obor_GroupsCONST_TIME_2.AsFloat;

      if ((Sender as TFieldRowEh).FieldName = 'OTHER_TIME')
         or ((Sender as TFieldRowEh).FieldName = 'OPER_TIME')
      then
      begin
        //Расчет Топ
        if (Sender as TFieldRowEh).FieldName = 'OPER_TIME'
        then
        begin
          FieldByName('OPER_TIME').AsVariant := Text;
          OperTimeValue := Text;

          if SetupTimeFlag = 'none'
          then
          begin
            SetupTimeValue := FieldByName('SETUP_TIME').AsVariant;

            if (OtherTimeFlag = 'none')
                and (FieldByName('Calc_From').AsString = 'norm')
            then
              OtherTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OperTimeValue
            else if (OtherTimeFlag = 'oper_time')
                and (FieldByName('Calc_From').AsString = 'norm')
            then
              OtherTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OperTimeValue
            else if (OtherTimeFlag = 'none')
                and (FieldByName('Calc_From').AsString = 'value')
            then
              OtherTimeValue := FieldByName('OTHER_TIME').AsVariant
            else if (OtherTimeFlag = 'oper_time')
                and (FieldByName('Calc_From').AsString = 'value')
            then
              OtherTimeValue := OperTimeValue*OtherCoeffValue;
          end
          else if SetupTimeFlag = 'oper_time'
          then
          begin
            SetupTimeValue := (OperTimeValue*SetupCoeffValue)/FieldByName('UNIT_COUNT').AsVariant;
            FieldByName('SETUP_TIME').AsVariant := SetupTimeValue;

            if (OtherTimeFlag = 'none')
                and (FieldByName('Calc_From').AsString = 'norm')
            then
              OtherTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-OperTimeValue*(1+SetupCoeffValue)
            else if (OtherTimeFlag = 'oper_time')
                and (FieldByName('Calc_From').AsString = 'norm')
            then
              OtherTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-OperTimeValue*(1+SetupCoeffValue)
            else if (OtherTimeFlag = 'none')
                and (FieldByName('Calc_From').AsString = 'value')
            then
              OtherTimeValue := FieldByName('OTHER_TIME').AsVariant
            else if (OtherTimeFlag = 'oper_time')
                and (FieldByName('Calc_From').AsString = 'value')
            then
              OtherTimeValue := OperTimeValue*OtherCoeffValue;
          end;

          //Если нормы утверждены и Тобс+Тотл - мин
          FieldByName('OTHER_TIME').AsVariant := OtherTimeValue;
          FieldByName('UNIT_TIME').AsVariant := FieldByName('ALL_OPER_TIME').AsVariant - FieldByName('SETUP_TIME').AsVariant;
        end
        else if (Sender as TFieldRowEh).FieldName = 'OTHER_TIME'
        then
        begin
          FieldByName('OTHER_TIME').AsVariant := Text;
          OtherTimeValue := Text;
          if SetupTimeFlag = 'none'
          then
          begin
            SetupTimeValue := FieldByName('SETUP_TIME').AsVariant;

            if (OtherTimeFlag = 'none')
                and (FieldByName('Calc_From').AsString = 'norm')
            then
              OperTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OtherTimeValue
            else if (OtherTimeFlag = 'oper_time')
                and (FieldByName('Calc_From').AsString = 'norm')
            then
              OperTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OtherTimeValue
            else if (OtherTimeFlag = 'none')
                and (FieldByName('Calc_From').AsString = 'value')
            then
              OperTimeValue := FieldByName('OPER_TIME').AsVariant
            else if (OtherTimeFlag = 'oper_time')
                and (FieldByName('Calc_From').AsString = 'value')
            then
              OperTimeValue := OtherTimeValue/OtherCoeffValue;
          end
          else if SetupTimeFlag = 'oper_time'
          then
          begin
            if (OtherTimeFlag = 'none')
                and (FieldByName('Calc_From').AsString = 'norm')
            then
              OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherTimeValue)/(1+SetupTimeValue)
            else if (OtherTimeFlag = 'oper_time')
                and (FieldByName('Calc_From').AsString = 'norm')
            then
              OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherTimeValue)/(1+SetupTimeValue)
            else if (OtherTimeFlag = 'none')
                and (FieldByName('Calc_From').AsString = 'value')
            then
              OperTimeValue := FieldByName('OPER_TIME').AsVariant
            else if (OtherTimeFlag = 'oper_time')
                and (FieldByName('Calc_From').AsString = 'value')
            then
              OperTimeValue := OtherTimeValue/OtherCoeffValue;
            SetupTimeValue := (FieldByName('OPER_TIME').AsVariant*SetupCoeffValue)/FieldByName('Unit_Count').AsVariant;
          end;
          FieldByName('OPER_TIME').AsVariant := OperTimeValue;
        end;

        if FieldByName('Calc_From').AsString = 'value'
        then
          FieldByName('ALL_OPER_TIME').AsVariant :=  OperTimeValue + SetupTimeValue + OtherTimeValue;
        FieldByName('UNIT_TIME').AsVariant := FieldByName('ALL_OPER_TIME').AsVariant - FieldByName('SETUP_TIME').AsVariant;
      end
      else
      begin
        If SetupTimeFlag = 'none'
        Then
        Begin
          //Расчет Тпз
          SetupTimeValue := FieldByName('SETUP_TIME').AsVariant;

          //Расчет Топ
          if (FieldByName('Calc_From').AsString = 'norm')
             and (OtherTimeFlag = 'oper_time')
          then//Если нормы утверждены и Тобс+Тотл - % от Топ
            OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - SetupTimeValue)/(1 + OtherCoeffValue)
          else if (FieldByName('Calc_From').AsString = 'norm')
             and (OtherTimeFlag = 'none')
          then//Если нормы утверждены и Тобс+Тотл - мин
            OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - SetupTimeValue)-OtherCoeffValue
          else if (FieldByName('Calc_From').AsString = 'value')
                  and (OtherTimeFlag = 'oper_time')
          then
          begin //Если нормы неутверждены и Тобс+Тотл - мин
            OperTimeValue := FieldByName('OPER_TIME').AsVariant;
            FieldByName('ALL_OPER_TIME').AsVariant :=  OperTimeValue*(1 + OtherCoeffValue) + SetupTimeValue;
          end
          else if (FieldByName('Calc_From').AsString = 'value')
                  and (OtherTimeFlag = 'none')
          then//Если нормы неутверждены и Тобс+Тотл - мин
          begin
            OperTimeValue := FieldByName('OPER_TIME').AsVariant;
            FieldByName('ALL_OPER_TIME').AsVariant :=  OperTimeValue + OtherCoeffValue + SetupTimeValue;
          end;

          //Подстановка значений
          FieldByName('SETUP_TIME').AsVariant := SetupTimeValue;
          FieldByName('OPER_TIME').AsVariant := OperTimeValue;
          if (OtherTimeFlag = 'oper_time')
          then
            FieldByName('OTHER_TIME').AsVariant := OperTimeValue*OtherCoeffValue
          else if(OtherTimeFlag = 'none')
          then
            FieldByName('OTHER_TIME').AsVariant := OtherCoeffValue;

          FieldByName('UNIT_TIME').AsVariant := FieldByName('ALL_OPER_TIME').AsVariant - FieldByName('SETUP_TIME').AsVariant;
          E_Result_Time.Value := FieldByName('SETUP_TIME').AsVariant;
        End
        Else If SetupTimeFlag = 'oper_time'
        Then
        Begin
          //Расчет Топ
          if (FieldByName('Calc_From').AsString = 'norm')
             and (OtherTimeFlag = 'oper_time')
          then//Если нормы утверждены и Тобс+Тотл - % от Топ
            OperTimeValue := FieldByName('ALL_OPER_TIME').AsVariant/(1 + OtherCoeffValue+SetupCoeffValue)
          else if (FieldByName('Calc_From').AsString = 'norm')
             and (OtherTimeFlag = 'none')
          then//Если нормы утверждены и Тобс+Тотл - мин
            OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherCoeffValue)/(1+SetupCoeffValue)
          else if (FieldByName('Calc_From').AsString = 'value')
                  and (OtherTimeFlag = 'oper_time')
          then
          begin //Если нормы неутверждены и Тобс+Тотл - мин
            OperTimeValue := FieldByName('OPER_TIME').AsVariant;
            FieldByName('ALL_OPER_TIME').AsVariant :=  OperTimeValue*(1+OtherCoeffValue+SetupCoeffValue);
          end
          else if (FieldByName('Calc_From').AsString = 'value')
                  and (OtherTimeFlag = 'none')
          then//Если нормы неутверждены и Тобс+Тотл - мин
          begin
            OperTimeValue := FieldByName('OPER_TIME').AsVariant;
            FieldByName('ALL_OPER_TIME').AsVariant :=  OperTimeValue*(1+SetupCoeffValue)+OtherCoeffValue;
          end;
          SetupTimeValue := (OperTimeValue*SetupCoeffValue)/FieldByName('Unit_Count').AsVariant;
          //Подстановка значений
          FieldByName('SETUP_TIME').AsVariant := SetupTimeValue;
          FieldByName('OPER_TIME').AsVariant := OperTimeValue;
          if (OtherTimeFlag = 'oper_time')
          then
            FieldByName('OTHER_TIME').AsVariant := OperTimeValue*OtherCoeffValue
          else if(OtherTimeFlag = 'none')
          then
            FieldByName('OTHER_TIME').AsVariant := OtherCoeffValue;

          FieldByName('UNIT_TIME').AsVariant := FieldByName('ALL_OPER_TIME').AsVariant - FieldByName('SETUP_TIME').AsVariant;
        End;
      end;
    End;
  End;
end;

procedure TForm_Setup_Time_Calc.Grid_Time_NormsRows0UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    if FieldByName('Calc_From').AsString = 'norm'
    then
    begin
      If (MemT_Trud_For_Detail.RecordCount > 1)
      Then
      Begin
        MessageDlg('Трудоемкость определена не однозначно!', mtError, [mbOK], 0);
        Abort;
      End
      Else If (MemT_Trud_For_Detail.RecordCount = 0)
      Then
      Begin
        Abort;
      End;

      If (Text <> '')
          And (UseText)
      Then
      Begin
        If (StrToFloat(Text) > MemT_Trud_For_Detail.FieldByName('TIME').AsFloat)
            And (FieldByName('Calc_From').AsString = 'norm')
        Then
          Text := MemT_Trud_For_Detail.FieldByName('TIME').AsString;
        Edit;
        FieldByName('ALL_OPER_TIME').AsFloat := StrToFloat(Text);
        if MemT_Trud_For_Detail.FieldByName('TIME').AsFloat <> 0
        Then
          FieldByName('ALL_OPER_TIME_PERC').AsFloat := ( StrToFloat(Text) / MemT_Trud_For_Detail.FieldByName('TIME').AsFloat ) * 100.00;
      End;
      Btn_Calculate_TimeClick(Nil);
    End;
  End;
end;

procedure TForm_Setup_Time_Calc.Grid_Time_NormsRows10UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  Btn_Calculate_TimeClick(Nil);
end;

procedure TForm_Setup_Time_Calc.Grid_Time_NormsRows3UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    If (Text <> '')
        And (UseText)
    Then
    Begin
      Edit;
      FieldByName('UNIT_COUNT').AsFloat := StrToFloat(Text);
      Btn_Calculate_TimeClick(Nil);
    End;
  End;
end;

procedure TForm_Setup_Time_Calc.Grid_Time_NormsRows4UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  If MemT_Trud_For_Detail.RecordCount > 1
  Then
  Begin
    MessageDlg('Трудоемкость определена не однозначно!', mtError, [mbOK], 0);
    Abort;
  End
  Else If MemT_Trud_For_Detail.RecordCount = 0
  Then
  Begin
    Abort;
  End;

  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    If (Text <> '')
        And (UseText)
    Then
    Begin
      If (StrToFloat(Text) > 100.00)
          And (FieldByName('Calc_From').AsString = 'norm')
      Then
        Text := '100';
      Edit;
      FieldByName('ALL_OPER_TIME').AsFloat := MemT_Trud_For_Detail.FieldByName('TIME').AsFloat * (StrToFloat(Text)/100.00);
      Try
        //Btn_Calculate_TimeClick(Nil);
        Grid_Time_Norms_TimeRowsUpdateData(Sender, Text, Value, UseText, Handled);
      Except On E : Exception
      Do
        If E.ClassName = 'EAbort'
        Then
        Begin
          FieldByName('ALL_OPER_TIME').AsFloat := 0;
          Text := '0';
        End;
      End;
    End;
  End;
end;

procedure TForm_Setup_Time_Calc.Grid_Time_NormsRows5UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  Var
    V_In_Params, v_Det_Trud_Out_Params, v_Out_Params: TDynVarsEh;
    Vl_In_Det_Params, Vl_Out_Det_Params: TDynVarsEh;
begin
  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    if (Text <> '')
        And (Text <> FieldByName('PROF_CODE').AsString )
    Then
    Begin
      Vl_In_Det_Params := TDynVarsEh.Create( Application.MainForm );
      Vl_In_Det_Params.DynVar[ 'Find' ].AsString := 'DET';
      Vl_In_Det_Params.DynVar[ 'Filter' ].AsString := 'Id = ' + TechProcDataFrame.Db_Doc_Info.FieldByName('Det_Id').AsString;
      Vl_Out_Det_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Det_Params );
      If Vl_Out_Det_Params <> Nil
      Then
      Begin
        v_In_Params := TDynVarsEh.Create( Application.MainForm );
        v_In_Params.DynVar[ 'Find' ].AsString := 'DET_TRUD';
        v_In_Params.DynVar[ 'Filter' ].AsString := ' Norm.Kd = Ogt.Asup_Ogt.Kd_Asup_Min(v_det => '''
                                                     + Vl_Out_Det_Params.DynVar['DET_NUM'].AsString
                                                     + ''' ) '
                                                     + ' And Norm.Nc = ''' +  VarToStr(MemRec_Oper.DataValues['CEH_CODE', dvvValueEh]) + ''' ';
        v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
        v_Det_Trud_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
        If v_Det_Trud_Out_Params <> Nil
        Then
        Begin
          Edit;
          Text := v_Det_Trud_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('USING_NORM_ID').AsString := v_Det_Trud_Out_Params.DynVar[ 'Id_Using_Norm' ].AsString;
          FieldByName('USING_NORM_TIME').AsString := v_Det_Trud_Out_Params.DynVar[ 'Time' ].AsString;
          FieldByName('PROF_CODE').AsString := v_Det_Trud_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CLASS').AsString := v_Det_Trud_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
          FieldByName('PROF_CTN').AsString := v_Det_Trud_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
          FieldByName('PROF_MONEY').AsString := v_Det_Trud_Out_Params.DynVar[ 'MONEY_PROF' ].AsString;
        End
        Else
        Begin
          v_In_Params := TDynVarsEh.Create( Application.MainForm );
          v_In_Params.DynVar[ 'Find' ].AsString := 'KODPROF';
          v_In_Params.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = ''' +  VarToStr(MemRec_Oper.DataValues['CEH_CODE', dvvValueEh]) + ''' ';
          v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
          v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
          If v_Out_Params <> Nil
          Then
          Begin
            Edit;
            Text := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
            FieldByName('PROF_CODE').AsString := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
            FieldByName('PROF_CLASS').AsString := V_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
            FieldByName('PROF_CTN').AsString := V_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
          End;
        End;
      End
      Else
      Begin
        v_In_Params := TDynVarsEh.Create( Application.MainForm );
        v_In_Params.DynVar[ 'Find' ].AsString := 'KODPROF';
        v_In_Params.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = ''' +  VarToStr(MemRec_Oper.DataValues['CEH_CODE', dvvValueEh]) + ''' ';
        v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
        v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
        If v_Out_Params <> Nil
        Then
        Begin
          Edit;
          Text := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CODE').AsString := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CLASS').AsString := V_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
          FieldByName('PROF_CTN').AsString := V_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
        End;
      End;
    End
    Else if (Text = '')
    Then
    Begin
      FieldByName('PROF_CODE').Clear;
      FieldByName('PROF_CLASS').Clear;
      FieldByName('PROF_CTN').Clear;
      FieldByName('PROF_MONEY').Clear;
      FieldByName('USING_NORM_ID').Clear;
    End;
  End;
  P_Update_Time_Params;
end;

procedure TForm_Setup_Time_Calc.Grid_Time_NormsRows6EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
  Var
    V_In_Params, v_Det_Trud_Out_Params, v_Out_Params: TDynVarsEh;
    Vl_In_Det_Params, Vl_Out_Det_Params: TDynVarsEh;
begin
  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    Vl_In_Det_Params := TDynVarsEh.Create( Application.MainForm );
    Vl_In_Det_Params.DynVar[ 'Find' ].AsString := 'DET';
    Vl_In_Det_Params.DynVar[ 'V_Filter' ].AsString := 'Id = ' + IntToStr(v_Det_Id);
    Vl_Out_Det_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Det_Params );
    If Vl_Out_Det_Params <> Nil
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'DET_TRUD';
      v_In_Params.DynVar[ 'Filter' ].AsString := ' Norm.Kd = Ogt.Asup_Ogt.Kd_Asup_Min(v_det => '''
                                                   + Vl_Out_Det_Params.DynVar['DET_NUM'].AsString
                                                   + ''' ) '
                                                   + ' And Norm.Nc = ''' +  VarToStr(MemRec_Oper.DataValues['CEH_CODE', dvvValueEh]) + ''' ';
      v_Det_Trud_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
      If v_Det_Trud_Out_Params <> Nil
      Then
      Begin
        Edit;
        Text := v_Det_Trud_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
        FieldByName('USING_NORM_ID').AsString := v_Det_Trud_Out_Params.DynVar[ 'Id_Using_Norm' ].AsString;
        FieldByName('USING_NORM_TIME').AsString := v_Det_Trud_Out_Params.DynVar[ 'Time' ].AsString;
        FieldByName('PROF_CODE').AsString := v_Det_Trud_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
        FieldByName('PROF_CLASS').AsString := v_Det_Trud_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
        FieldByName('PROF_CTN').AsString := v_Det_Trud_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
        FieldByName('PROF_MONEY').AsString := v_Det_Trud_Out_Params.DynVar[ 'MONEY_PROF' ].AsString;
      End
      Else
      Begin
        v_In_Params.DynVar[ 'Find' ].AsString := 'KODPROF';
        v_In_Params.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = ''' +  VarToStr(MemRec_Oper.DataValues['CEH_CODE', dvvValueEh]) + ''' ';
        v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
        If v_Out_Params <> Nil
        Then
        Begin
          Edit;
          Text := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CODE').AsString := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CLASS').AsString := V_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
          FieldByName('PROF_CTN').AsString := V_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
        End;
      End;
    End
    Else
    Begin
      v_In_Params.DynVar[ 'Find' ].AsString := 'KODPROF';
      v_In_Params.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = ''' +  VarToStr(MemRec_Oper.DataValues['CEH_CODE', dvvValueEh]) + ''' ';
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        Text := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
        FieldByName('PROF_CODE').AsString := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
        FieldByName('PROF_CLASS').AsString := V_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
        FieldByName('PROF_CTN').AsString := V_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
      End;
    End;
  End;
  P_Update_Time_Params;
end;

function TForm_Setup_Time_Calc.F_Execute_Unit_Time ( Sender: TObject ):TStringList;
Var
  Vl_In_Det_Params, Vl_Out_Det_Params: TDynVarsEh;
  StrList_Result: TStringList;
  i: Integer;
begin
  with TForm_Setup_Time_Calc.Create(Application)
  do
  begin
    try
      if Sender is TFrame_TechProc
      then
        TechProcDataFrame := (Sender as TFrame_TechProc).DataFrame
      else if Sender is TFrame_Tp_TechProc_DocDetList
      then
        ListTechProc_DataFrame := (Sender as TFrame_Tp_TechProc_DocDetList).TechProcDataFrame;

      if TechProcDataFrame <> Nil
      then
      begin
        Grid_Time_Norms.DataSource := TechProcDataFrame.Data_Oper_Time;
        Grid_Oper_Works.DataSource := TechProcDataFrame.Data_Oper_Time_Works;
        V_Det_Id := TechProcDataFrame.Db_Doc_Info.FieldByName('Det_Id').AsInteger;
        MemRec_Oper := TechProcDataFrame.MemT_Opers.Rec;
        With MemT_Tp_Time
        Do
        Begin
          Close;
          ExternalMemData := TMemTableEh(Grid_Time_Norms.DataSource.DataSet);
          Open;
          MasterSource := TechProcDataFrame.Data_Doc_Parts;
          MasterFields := 'ID';
          DetailFields := 'ID_PART_TP';
        End;
      end
      else if ListTechProc_DataFrame <> Nil
      then
      begin
        Grid_Time_Norms.DataSource := ListTechProc_DataFrame.Data_Oper_Time;
        Grid_Oper_Works.DataSource := ListTechProc_DataFrame.Data_Oper_Time_Works;
        V_Det_Id := ListTechProc_DataFrame.MemT_Doc_Details.FieldByName('Det_Id').AsInteger;
        MemRec_Oper := ListTechProc_DataFrame.MemT_Detail_Operations.Rec;
        With MemT_Tp_Time
        Do
        Begin
          Close;
          ExternalMemData := TMemTableEh(Grid_Time_Norms.DataSource.DataSet);
          Open;
          MasterSource := ListTechProc_DataFrame.Data_Doc_Details;
          MasterFields := 'ID';
          DetailFields := 'ID_ROW_DET';
        End;
      end
      else
        Close;

      Vl_In_Det_Params := TDynVarsEh.Create( Application.MainForm );
      Vl_In_Det_Params.DynVar[ 'Find' ].AsString := 'DET';
      Vl_In_Det_Params.DynVar[ 'Filter' ].AsString := 'Id = ' + IntToStr( V_Det_Id );
      Vl_Out_Det_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Det_Params );
      MemT_Trud_For_Detail.Close;
        Db_Trud_For_Detail.SetVariable('V_DET_NUM', Vl_Out_Det_Params.DynVar['DET_NUM'].AsString);
        //Db_Trud_For_Detail.SetVariable('V_CEH_CODE', MemRec_Oper.DataValues['CEH_CODE', dvvValueEh]);
      MemT_Trud_For_Detail.Open;
      P_Update_Time_Params;
      Try
        Btn_Calculate_TimeClick(Nil);
        StrList_Result := TStringList.Create;

        for i := 0 to 3
        do
        begin
          case i of
            0: StrList_Result.Add('Coeff_Flag='+MemT_Oper_Obor_Groups.FieldByName('COEFF_FLAG').AsString);
            1: StrList_Result.Add('Const_Time='+FloatToStr(MemT_Oper_Obor_Groups.FieldByName('Const_Time').AsFloat));
            2: StrList_Result.Add('Coeff_Flag_2='+MemT_Oper_Obor_Groups.FieldByName('Coeff_Flag_2').AsString);
            3: StrList_Result.Add('Const_Time_2='+FloatToStr(MemT_Oper_Obor_Groups.FieldByName('Const_Time_2').AsFloat));
          end;
        end;
        Result := StrList_Result;
      Except On E : Exception
      Do
        If E.ClassName = 'EAbort'
        Then
          ShowModal;
      End;
    finally
      Free;
    end;
  end;
end;

end.
