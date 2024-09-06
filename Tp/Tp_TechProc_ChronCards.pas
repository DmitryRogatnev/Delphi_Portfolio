unit Tp_TechProc_ChronCards;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh,
  DataDriverEh, OracleData, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Tp_TechProc_DataFrame;

type
  TForm_Tp_ChronCards = class(TForm)
    Grid_ChronCards: TDBGridEh;
    Db_ChronCards: TOracleDataSet;
    Data_ChronCards: TDataSource;
    Driver_ChronCards: TDataSetDriverEh;
    MemT_ChronCards: TMemTableEh;
    Db_ChronCardsID_RW_CHRN_C: TIntegerField;
    Db_ChronCardsDOC_HEADER_ID: TIntegerField;
    Db_ChronCardsDEP_ID: TIntegerField;
    Db_ChronCardsDATE_START_MSR: TDateTimeField;
    Db_ChronCardsDATE_END_MSR: TDateTimeField;
    Db_ChronCardsEMP_ID_WORKER: TIntegerField;
    Db_ChronCardsTIME_NORM: TFloatField;
    Db_ChronCardsDET_COUNT: TIntegerField;
    Db_ChronCardsUSER_INSERT: TStringField;
    Db_ChronCardsDATE_INSERT: TDateTimeField;
    Db_ChronCardsUSER_CHANGE: TStringField;
    Db_ChronCardsDATE_CHANGE: TDateTimeField;
    Db_ChronCardsWORK_PL_DEP_ID: TIntegerField;
    Db_ChronCardsIZD_ID: TIntegerField;
    Db_ChronCardsNORM_PROFCODE: TStringField;
    Db_ChronCardsID_DOC_HEADER: TIntegerField;
    Db_ChronCardsDOC_TYPE_ID: TStringField;
    Db_ChronCardsDOC_DATE: TDateTimeField;
    Db_ChronCardsDOC_NUMBER: TStringField;
    Db_ChronCardsCLMN1_VALUE: TStringField;
    Db_ChronCardsCLMN2_VALUE: TStringField;
    Db_ChronCardsCLMN3_VALUE: TStringField;
    Db_ChronCardsCREATE_USER_ID: TStringField;
    Db_ChronCardsCREATE_USER_ID_ADD: TIntegerField;
    Db_ChronCardsCREATE_DATE: TDateTimeField;
    Db_ChronCardsLAST_MOD_USER_ID: TStringField;
    Db_ChronCardsLAST_MOD_USER_ID_ADD: TIntegerField;
    Db_ChronCardsLAST_MOD_DATE: TDateTimeField;
    Db_ChronCardsSRC_DEP_ID: TIntegerField;
    Db_ChronCardsSNDR_DEP_ID: TIntegerField;
    Db_ChronCardsEMP_FIO: TStringField;
    Db_ChronCardsOPER_RW_ID: TFloatField;
    MemT_ChronCardsID_RW_CHRN_C: TIntegerField;
    MemT_ChronCardsDOC_HEADER_ID: TIntegerField;
    MemT_ChronCardsDEP_ID: TIntegerField;
    MemT_ChronCardsDATE_START_MSR: TDateTimeField;
    MemT_ChronCardsDATE_END_MSR: TDateTimeField;
    MemT_ChronCardsEMP_ID_WORKER: TIntegerField;
    MemT_ChronCardsTIME_NORM: TFloatField;
    MemT_ChronCardsDET_COUNT: TIntegerField;
    MemT_ChronCardsUSER_INSERT: TStringField;
    MemT_ChronCardsDATE_INSERT: TDateTimeField;
    MemT_ChronCardsUSER_CHANGE: TStringField;
    MemT_ChronCardsDATE_CHANGE: TDateTimeField;
    MemT_ChronCardsWORK_PL_DEP_ID: TIntegerField;
    MemT_ChronCardsIZD_ID: TIntegerField;
    MemT_ChronCardsNORM_PROFCODE: TStringField;
    MemT_ChronCardsID_DOC_HEADER: TIntegerField;
    MemT_ChronCardsDOC_TYPE_ID: TStringField;
    MemT_ChronCardsDOC_DATE: TDateTimeField;
    MemT_ChronCardsDOC_NUMBER: TStringField;
    MemT_ChronCardsCLMN1_VALUE: TStringField;
    MemT_ChronCardsCLMN2_VALUE: TStringField;
    MemT_ChronCardsCLMN3_VALUE: TStringField;
    MemT_ChronCardsCREATE_USER_ID: TStringField;
    MemT_ChronCardsCREATE_USER_ID_ADD: TIntegerField;
    MemT_ChronCardsCREATE_DATE: TDateTimeField;
    MemT_ChronCardsLAST_MOD_USER_ID: TStringField;
    MemT_ChronCardsLAST_MOD_USER_ID_ADD: TIntegerField;
    MemT_ChronCardsLAST_MOD_DATE: TDateTimeField;
    MemT_ChronCardsSRC_DEP_ID: TIntegerField;
    MemT_ChronCardsSNDR_DEP_ID: TIntegerField;
    MemT_ChronCardsEMP_FIO: TStringField;
    MemT_ChronCardsOPER_RW_ID: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure Grid_ChronCardsColumns0CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Grid_ChronCardsColumns0CellButtons1Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
     TechProcDataFrame: TFrameData_TechProc;
  end;

var
  Form_Tp_ChronCards: TForm_Tp_ChronCards;

implementation

{$R *.dfm}

uses
Udm_Main, Tp_Main_Form;

procedure TForm_Tp_ChronCards.FormShow(Sender: TObject);
begin
  Db_ChronCards.Master := TechProcDataFrame.Db_Doc_Info;
  Self.Caption := 'Изменение норм времени для детали '
                  + TechProcDataFrame.Db_Doc_Info.FieldByName('Addit_Info_Num').AsString
                  + ' '
                  + TechProcDataFrame.Db_Doc_Info.FieldByName('Addit_Info_Name').AsString
                  + ' операция '
                  + TechProcDataFrame.MemT_Opers.FieldByName('OPER_NUMBER').AsString
                  + ' '
                  + TechProcDataFrame.MemT_Opers.FieldByName('OPER_NAME').AsString;
  with Grid_ChronCards.DataSource.DataSet as TMemTableEh
  do
  begin
    Active := True;
    MasterSource := TechProcDataFrame.Data_Opers;
    MasterFields := 'ID_ROW_OPER';
    DetailFields := 'OPER_RW_ID';
  end;
end;

procedure TForm_Tp_ChronCards.Grid_ChronCardsColumns0CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
  var
    InParams: TDynVarsEh;
begin
  InParams := TDynVarsEh.Create(Self);
  InParams.DynVar['Id_Doc_Header'].AsInteger := Grid_ChronCards.DataSource.DataSet.FieldByName('Doc_Header_Id').AsInteger;
  DM_Main.F_Show_Modal_Form('Chron_Cards', InParams);
end;

procedure TForm_Tp_ChronCards.Grid_ChronCardsColumns0CellButtons1Click(
  Sender: TObject; var Handled: Boolean);
  var
    InParams: TDynVarsEh;
begin
  InParams := TDynVarsEh.Create(Self);
  InParams.DynVar['Id_Doc_Header'].AsInteger := Grid_ChronCards.DataSource.DataSet.FieldByName('Doc_Header_Id').AsInteger;
  InParams.DynVar['REPORT'].AsBoolean := True;
  DM_Main.F_Show_Modal_Form('Chron_Cards', InParams);
end;

end.
