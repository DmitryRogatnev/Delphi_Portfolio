unit Tp_TechProc_TimeNormHist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Tp_TechProc_DataFrame, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Data.DB, OracleData, MemTableDataEh, DataDriverEh, MemTableEh;

type
  TForm_TechProc_TimeNormHist = class(TForm)
    Grid_TimeNormHist: TDBGridEh;
    Db_NormTimeHist: TOracleDataSet;
    Data_NormTimeHist: TDataSource;
    MemT_NormTimeHist: TMemTableEh;
    Driver_NormTimeHist: TDataSetDriverEh;
    Db_NormTimeHistID_RW_OP_TIME: TFloatField;
    Db_NormTimeHistRW_VERS: TStringField;
    Db_NormTimeHistRW_STATUS: TStringField;
    Db_NormTimeHistRW_ID_OLD_VERS: TIntegerField;
    Db_NormTimeHistOPER_RW_ID: TFloatField;
    Db_NormTimeHistGRP_OPER_RW_ID: TFloatField;
    Db_NormTimeHistDOC_TP_ID: TFloatField;
    Db_NormTimeHistDOC_TP_VERS_ID: TIntegerField;
    Db_NormTimeHistALL_OPER_TIME: TFloatField;
    Db_NormTimeHistALL_OPER_TIME_PERC: TFloatField;
    Db_NormTimeHistUSING_NORM_ID: TFloatField;
    Db_NormTimeHistUSING_NORM_TIME: TFloatField;
    Db_NormTimeHistCALC_FROM: TStringField;
    Db_NormTimeHistPROF_CODE: TStringField;
    Db_NormTimeHistPROF_CTN: TIntegerField;
    Db_NormTimeHistPROF_CLASS: TIntegerField;
    Db_NormTimeHistPROF_MONEY: TFloatField;
    Db_NormTimeHistUNIT_TIME: TFloatField;
    Db_NormTimeHistOPER_TIME: TFloatField;
    Db_NormTimeHistSETUP_TIME: TFloatField;
    Db_NormTimeHistOTHER_TIME: TFloatField;
    Db_NormTimeHistUNIT_COUNT: TIntegerField;
    Db_NormTimeHistUSER_INSERT: TStringField;
    Db_NormTimeHistDATE_INSERT: TDateTimeField;
    Db_NormTimeHistUSER_CHANGE: TStringField;
    Db_NormTimeHistDATE_CHANGE: TDateTimeField;
    MemT_NormTimeHistID_RW_OP_TIME: TFloatField;
    MemT_NormTimeHistRW_VERS: TStringField;
    MemT_NormTimeHistRW_STATUS: TStringField;
    MemT_NormTimeHistRW_ID_OLD_VERS: TIntegerField;
    MemT_NormTimeHistOPER_RW_ID: TFloatField;
    MemT_NormTimeHistGRP_OPER_RW_ID: TFloatField;
    MemT_NormTimeHistDOC_TP_ID: TFloatField;
    MemT_NormTimeHistDOC_TP_VERS_ID: TIntegerField;
    MemT_NormTimeHistALL_OPER_TIME: TFloatField;
    MemT_NormTimeHistALL_OPER_TIME_PERC: TFloatField;
    MemT_NormTimeHistUSING_NORM_ID: TFloatField;
    MemT_NormTimeHistUSING_NORM_TIME: TFloatField;
    MemT_NormTimeHistCALC_FROM: TStringField;
    MemT_NormTimeHistPROF_CODE: TStringField;
    MemT_NormTimeHistPROF_CTN: TIntegerField;
    MemT_NormTimeHistPROF_CLASS: TIntegerField;
    MemT_NormTimeHistPROF_MONEY: TFloatField;
    MemT_NormTimeHistUNIT_TIME: TFloatField;
    MemT_NormTimeHistOPER_TIME: TFloatField;
    MemT_NormTimeHistSETUP_TIME: TFloatField;
    MemT_NormTimeHistOTHER_TIME: TFloatField;
    MemT_NormTimeHistUNIT_COUNT: TIntegerField;
    MemT_NormTimeHistUSER_INSERT: TStringField;
    MemT_NormTimeHistDATE_INSERT: TDateTimeField;
    MemT_NormTimeHistUSER_CHANGE: TStringField;
    MemT_NormTimeHistDATE_CHANGE: TDateTimeField;
    procedure FormShow(Sender: TObject);
    procedure Grid_TimeNormHistGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
     TechProcDataFrame: TFrameData_TechProc;
  end;

var
  Form_TechProc_TimeNormHist: TForm_TechProc_TimeNormHist;

implementation

{$R *.dfm}

uses
Udm_Main;

procedure TForm_TechProc_TimeNormHist.FormShow(Sender: TObject);
begin
  Db_NormTimeHist.Master := TechProcDataFrame.Db_Doc_Info;
  Self.Caption := 'Изменение норм времени для детали '
                  + TechProcDataFrame.Db_Doc_Info.FieldByName('Addit_Info_Num').AsString
                  + ' '
                  + TechProcDataFrame.Db_Doc_Info.FieldByName('Addit_Info_Name').AsString
                  + ' операция '
                  + TechProcDataFrame.MemT_Opers.FieldByName('OPER_NUMBER').AsString
                  + ' '
                  + TechProcDataFrame.MemT_Opers.FieldByName('OPER_NAME').AsString;
  with Grid_TimeNormHist.DataSource.DataSet as TMemTableEh
  do
  begin
    Active := True;
    MasterSource := TechProcDataFrame.Data_Opers;
    MasterFields := 'ID_ROW_OPER';
    DetailFields := 'OPER_RW_ID';
  end;
end;

procedure TForm_TechProc_TimeNormHist.Grid_TimeNormHistGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Grid_TimeNormHist.DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      if (FieldByName('DOC_TP_VERS_ID').AsString = TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString)
         And (FieldByName('Doc_Tp_Id').AsString = TechProcDataFrame.Db_Doc_Info.FieldByName('Id').AsString)
      then
      begin
        if (FieldByName('Rw_status').AsString = 'deleted')
        Then
        Begin
          Background := $00B5B3FF;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_status').AsString = 'inserted')
        Then
        Begin
          Background := $00A8FFC5;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_status').AsString = 'updated')
        Then
        Begin
          Background := $00A7EDFE;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Vers').AsString = 'old_version')
        Then
        Begin
          Background := clMenu;
          AFont.Color := clGray;
        End;
        {Else
        Begin
          Background := clWindow;
          AFont.Color := clWindowText;
        End;}
      end;
    end;
  end;
end;

end.
