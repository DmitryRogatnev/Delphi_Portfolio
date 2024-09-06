unit Tp_TechProc_ComplectFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, MemTableEh, DataDriverEh,
  OracleData, Vcl.Mask, DBCtrlsEh, Vcl.ExtCtrls, Vcl.Menus, frxClass, frxDBSet, EhLibMTE;

type
  TFrame_Tp_TechProcComplect = class(TFrame)
    Control_Panel: TPanel;
    Splitter2: TSplitter;
    Btn_Pack: TButton;
    E_Addit_Name: TDBEditEh;
    E_Addit_Num: TDBEditEh;
    Db_Complect_Details: TOracleDataSet;
    Db_Complect_DetailsID_RCD: TFloatField;
    Db_Complect_DetailsID_IZD: TFloatField;
    Db_Complect_DetailsNAME_IZD: TStringField;
    Db_Complect_DetailsDET_ID: TFloatField;
    Db_Complect_DetailsNUM_DET: TStringField;
    Db_Complect_DetailsNAME_DET: TStringField;
    Db_Complect_DetailsID_PRIMEN_DET: TFloatField;
    Db_Complect_DetailsPRIMEN_DET: TStringField;
    Db_Complect_DetailsID_UZ: TFloatField;
    Db_Complect_DetailsMAR: TStringField;
    Db_Complect_DetailsKOL: TFloatField;
    Db_Complect_DetailsKOM: TStringField;
    Db_Complect_DetailsTECH: TStringField;
    Db_Complect_DetailsID_MTM: TFloatField;
    Db_Complect_DetailsNUM_MTM: TStringField;
    Db_Complect_DetailsFLAG_MTM: TStringField;
    Db_Complect_DetailsNOMVAR: TFloatField;
    Db_Complect_DetailsZAMDET: TStringField;
    Db_Complect_DetailsZAMMAR: TStringField;
    Db_Complect_DetailsPRIM: TStringField;
    Db_Complect_DetailsNUM_NAME_DET: TStringField;
    Driver_Complect_Details: TDataSetDriverEh;
    MemT_Complect_Details: TMemTableEh;
    MemT_Complect_DetailsID_RCD: TFloatField;
    MemT_Complect_DetailsID_IZD: TFloatField;
    MemT_Complect_DetailsNAME_IZD: TStringField;
    MemT_Complect_DetailsDET_ID: TFloatField;
    MemT_Complect_DetailsNUM_DET: TStringField;
    MemT_Complect_DetailsNAME_DET: TStringField;
    MemT_Complect_DetailsID_PRIMEN_DET: TFloatField;
    MemT_Complect_DetailsPRIMEN_DET: TStringField;
    MemT_Complect_DetailsID_UZ: TFloatField;
    MemT_Complect_DetailsMAR: TStringField;
    MemT_Complect_DetailsKOL: TFloatField;
    MemT_Complect_DetailsKOM: TStringField;
    MemT_Complect_DetailsTECH: TStringField;
    MemT_Complect_DetailsID_MTM: TFloatField;
    MemT_Complect_DetailsNUM_MTM: TStringField;
    MemT_Complect_DetailsFLAG_MTM: TStringField;
    MemT_Complect_DetailsNOMVAR: TFloatField;
    MemT_Complect_DetailsZAMDET: TStringField;
    MemT_Complect_DetailsZAMMAR: TStringField;
    MemT_Complect_DetailsPRIM: TStringField;
    MemT_Complect_DetailsNUM_NAME_DET: TStringField;
    Data_Complect_Details: TDataSource;
    GroupBox2: TGroupBox;
    Grid_Details: TDBGridEh;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Grid_Detail_Tp: TDBGridEh;
    Db_TechProcss: TOracleDataSet;
    Data_TechProcss: TDataSource;
    Db_TechProcssDOC_HEADER_ID: TFloatField;
    Db_TechProcssDOC_NUM: TStringField;
    Db_TechProcssDOC_TYPE: TFloatField;
    Db_TechProcssDET_ID: TFloatField;
    Db_TechProcssDET_NUM: TStringField;
    Db_TechProcssDET_NAME: TStringField;
    Db_TechProcssIZD_ID: TFloatField;
    Db_TechProcssADDIT_INFO: TStringField;
    Db_Doc_Info: TOracleDataSet;
    Db_Doc_InfoID: TFloatField;
    Db_Doc_InfoID_VERS: TIntegerField;
    Db_Doc_InfoID_DOC_FULL: TStringField;
    Db_Doc_InfoDOC_HEADER_ID: TFloatField;
    Db_Doc_InfoPARENT_DOC_ID: TIntegerField;
    Db_Doc_InfoDOC_NUM: TStringField;
    Db_Doc_InfoDATE_START_ACTION: TDateTimeField;
    Db_Doc_InfoDATE_END_ACTION: TDateTimeField;
    Db_Doc_InfoDOC_LITER: TStringField;
    Db_Doc_InfoDOC_TYPE: TFloatField;
    Db_Doc_InfoTP_NUM: TStringField;
    Db_Doc_InfoTP_NAME: TStringField;
    Db_Doc_InfoTP_WORK_TYPE: TFloatField;
    Db_Doc_InfoTP_WORK_TYPE_NAME: TStringField;
    Db_Doc_InfoIZD_ID: TFloatField;
    Db_Doc_InfoIZD_NAME: TStringField;
    Db_Doc_InfoIZD_TYPE: TStringField;
    Db_Doc_InfoCOMPLECT_ID: TFloatField;
    Db_Doc_InfoTP_TYPE: TFloatField;
    Db_Doc_InfoFLAG_IMP: TFloatField;
    Db_Doc_InfoDET_ID: TFloatField;
    Db_Doc_InfoDET_NUM: TStringField;
    Db_Doc_InfoDET_NAME: TStringField;
    Db_Doc_InfoDET_MAR: TStringField;
    Db_Doc_InfoCEH_ID: TFloatField;
    Db_Doc_InfoCEH_CODE: TStringField;
    Db_Doc_InfoAUTHOR_LNUM: TFloatField;
    Db_Doc_InfoAUTHOR_NAME: TStringField;
    Db_Doc_InfoDATA_REG: TDateTimeField;
    Db_Doc_InfoREASON: TStringField;
    Db_Doc_InfoCANCEL_DOC_ID: TFloatField;
    Db_Doc_InfoMAIN_DOC_ID: TFloatField;
    Db_Doc_InfoCANCEL_FLAG: TFloatField;
    Db_Doc_InfoCEH_DOCS_FLAG: TFloatField;
    Db_Doc_InfoACT_NUM: TFloatField;
    Db_Doc_InfoACT_DATE: TDateTimeField;
    Db_Doc_InfoEMPS_ID: TStringField;
    Db_Doc_InfoPROJECT_FLAG: TIntegerField;
    Db_Doc_InfoUSER_INSERT: TStringField;
    Db_Doc_InfoDATE_INSERT: TDateTimeField;
    Db_Doc_InfoUSER_CHANGE: TStringField;
    Db_Doc_InfoDATA_CHANGE: TDateTimeField;
    Db_Doc_InfoLINKED_DOC_ID: TFloatField;
    Db_Doc_InfoLINKED_DOC_ID_VERS: TFloatField;
    Db_Doc_InfoDOC_EDIT_STAT: TStringField;
    Db_Doc_InfoIZD_NAME_TYPE: TStringField;
    Db_Doc_InfoPARENT_ID_DOC: TFloatField;
    Db_Doc_InfoPARENT_ID_VERS: TFloatField;
    Db_Doc_InfoMAIN_DOC_TP_NUM: TStringField;
    Db_Doc_InfoMAIN_DOC_TP_NAME: TStringField;
    Db_Doc_InfoMAIN_DOC_HEADER_ID: TFloatField;
    Db_Doc_InfoADDIT_INFO_NUM: TStringField;
    Db_Doc_InfoADDIT_INFO_NAME: TStringField;
    Splitter3: TSplitter;
    PM_TechProcss: TPopupMenu;
    Pm_TechPr_Btn_Print: TMenuItem;
    Pm_TechPr_Btn_Open: TMenuItem;
    RepData_Complect_Details: TfrxDBDataset;
    Btn_Print: TButton;
    Db_TechProcssPROGRAMMFLAG: TStringField;
    Driver_TechProcss: TDataSetDriverEh;
    MemT_TechProcss: TMemTableEh;
    MemT_Complect_DetailsCEH: TStringField;
    Db_ProgrammFlags: TOracleDataSet;
    Data_ProgrammFlags: TDataSource;
    Pm_Print: TPopupMenu;
    Pm_Btn_Print: TMenuItem;
    Pm_Btn_Print_Ceh: TMenuItem;
    procedure MemT_Complect_DetailsAfterScroll(DataSet: TDataSet);
    procedure Grid_DetailsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Pm_TechPr_Btn_OpenClick(Sender: TObject);
    procedure Pm_TechPr_Btn_PrintClick(Sender: TObject);
    procedure Btn_PackClick(Sender: TObject);
    procedure Btn_PrintClick(Sender: TObject);
    procedure PM_TechProcssPopup(Sender: TObject);
    procedure Grid_Detail_TpGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Pm_Btn_PrintClick(Sender: TObject);
  private
    { Private declarations }
    FDocHeaderId: Integer;
  public
    { Public declarations }
    StrList_GlobalVars: TStringListEh;
    procedure P_Open_Complect;
    constructor Create(AOwner: TComponent; InDocHeaderId: Integer);
  end;

implementation

{$R *.dfm}

uses
Udm_Main, Tp_Main_Form;

procedure TFrame_Tp_TechProcComplect.Btn_PackClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  with CreateMessageDialog( 'Упаковака комплекта занимает достаточно продолжительное время! (от 10 мин и более)'
                            +#13#10 + 'Программа будеть работать фоном!'
                            +#13#10 + 'Прогресс упаковки указывается на сооветствующем значке в трее!'
                            +#13#10 + 'ВНИМАНИЕ! Открывать отчеты на время упаковки невозможно!',
                                        mtConfirmation,
                                        mbYesNo )
  Do
  Try
    TButton( FindComponent( 'Yes' ) ).Caption := 'Упаковать';
    TButton( FindComponent( 'No' ) ).Caption := 'Отмена';
    Case ShowModal
    Of
      mrYes:
      Begin
        v_In_Params := TDynVarsEh.Create( Application.MainForm );
        v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Db_Doc_Info.FieldByName('Doc_Header_Id').AsInteger;
        v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
        v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Dir';
        DM_Main.P_Show_Form( 'Tp_Reports', v_In_Params );
      End;
    End;
  Finally
    Free;
  End;
end;

procedure TFrame_Tp_TechProcComplect.Btn_PrintClick(Sender: TObject);
begin
  (Sender as TButton).PopupMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

constructor TFrame_Tp_TechProcComplect.Create(AOwner: TComponent; InDocHeaderId: Integer);
begin
  inherited Create(AOwner);
  StrList_GlobalVars := TStringListEh.Create;
  FDocHeaderId := InDocHeaderId;
  Name := Format('%s_%d',[Self.ClassName, InDocHeaderId]);
end;

procedure TFrame_Tp_TechProcComplect.Grid_DetailsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  With TMemTableEh(TDBGridEh(Sender).DataSource.DataSet)
  Do
  Begin
    If Not IsEmpty
    Then
    Begin
      case TreeNodeLevel of
        1: Background := $FFFFFF;
        Else Background := $FFFFFF - TreeNodeLevel*$110400 ;
      end;
    End;
  End;
end;

procedure TFrame_Tp_TechProcComplect.Grid_Detail_TpGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Column.Grid.DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      if FieldByName('Doc_Header_Id').IsNull
      then
      begin
        AFont.Color := clGrayText;
        Afont.Style := [fsItalic];
      end
      else
      begin
        AFont.Color := clWindowText;
        Afont.Style := [];
      end;
    end;
  end;
end;

procedure TFrame_Tp_TechProcComplect.MemT_Complect_DetailsAfterScroll(DataSet: TDataSet);
begin
  Db_TechProcss.SetVariable(0, DataSet.FieldByName('Det_Id').AsString);
  MemT_TechProcss.Refresh;
end;

procedure TFrame_Tp_TechProcComplect.Pm_Btn_PrintClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Db_Doc_Info.FieldByName('Doc_Header_Id').AsInteger;
  if Sender=Pm_Btn_Print
  then
    v_In_Params.DynVar[ 'Format' ].AsString := 'Document'
  else if Sender=Pm_Btn_Print_Ceh
  then
    v_In_Params.DynVar['Format'].AsString := 'Complect_For_Ceh';

  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';

  if Grid_Detail_Tp.FindFieldColumn('ProgrammFlag').STFilter.ExpressionStr='=''Новая'''
  then
    v_In_Params.DynVar['ShowParams'].AsString :='show_new'
  else if Grid_Detail_Tp.FindFieldColumn('ProgrammFlag').STFilter.ExpressionStr='=''Старая'''
  then
    v_In_Params.DynVar['ShowParams'].AsString :='show_old';


  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TFrame_Tp_TechProcComplect.PM_TechProcssPopup(Sender: TObject);
begin
  if Db_TechProcssDOC_HEADER_ID.IsNull
  then
  begin
    Pm_TechPr_Btn_Print.Enabled := False;
    Pm_TechPr_Btn_Open.Enabled := False;
  end
  else
  begin
    Pm_TechPr_Btn_Print.Enabled := True;
    Pm_TechPr_Btn_Open.Enabled := True;
  end;

end;

procedure TFrame_Tp_TechProcComplect.Pm_TechPr_Btn_OpenClick(Sender: TObject);
begin
  Form_Tech_Proc_Main.P_Open_Doc(Nil);
end;

procedure TFrame_Tp_TechProcComplect.Pm_TechPr_Btn_PrintClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Db_Doc_Info.FieldByName('Doc_Header_Id').AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TFrame_Tp_TechProcComplect.P_Open_Complect;
begin
  Db_Doc_Info.SetVariable('In_Doc_Id', FDocHeaderId);
  Db_Doc_Info.Active := True;

  MemT_TechProcss.Active := True;

  MemT_Complect_Details.Active := True;
  Db_ProgrammFlags.Active := True;

  E_Addit_Num.Text := Db_Doc_InfoADDIT_INFO_NUM.AsString;
  E_Addit_Name.Text := Db_Doc_InfoADDIT_INFO_NAME.AsString;
end;

end.
