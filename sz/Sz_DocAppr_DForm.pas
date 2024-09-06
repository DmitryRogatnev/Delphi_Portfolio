unit Sz_DocAppr_DForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DropDownFormEh, Dialogs, DynVarsEh, ToolCtrlsEh, DBGridEhGrouping,
  DBGridEhToolCtrls, Data.DB, OracleData, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh;

type
  TDForm_DocAppr = class(TCustomDropDownFormEh)
    Grid_DocAppr: TDBGridEh;
    Db_DocApprList: TOracleDataSet;
    Db_DocApprListID_DOC_ROUT_POINT: TIntegerField;
    Db_DocApprListDEP_SNAME: TStringField;
    Db_DocApprListPOINT_NAME: TStringField;
    Db_DocApprListPOINT_POSITION: TStringField;
    Db_DocApprListDATE_IN: TDateTimeField;
    Db_DocApprListRESULT_DATE: TDateTimeField;
    Db_DocApprListEMP_FIO: TStringField;
    Data_DocApprList: TDataSource;
    Db_DocApprListRESULT_VALUE: TIntegerField;
    Db_DocApprListRESULT_NAME: TStringField;
    procedure CustomDropDownFormEhInitForm(Sender: TCustomDropDownFormEh;
      DynParams: TDynVarsEh);
    procedure Grid_DocApprColumns4CellButtons0Draw(Grid: TCustomDBGridEh;
      Column: TColumnEh; CellButton: TDBGridCellButtonEh; Canvas: TCanvas; Cell,
      AreaCell: TGridCoord; const ARect: TRect;
      ButtonDrawParams: TCellButtonDrawParamsEh; var Handled: Boolean);
    procedure Grid_DocApprGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Grid_DocApprColumns4DataHintShow(Sender: TCustomDBGridEh;
      CursorPos: TPoint; Cell: TGridCoord; InCellCursorPos: TPoint;
      Column: TColumnEh; var Params: TDBGridEhDataHintParams;
      var Processed: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    class function GetGlobalRef: TCustomDropDownFormEh; override;
  end;

var
  DForm_DocAppr: TDForm_DocAppr;

implementation

{$R *.dfm}

uses
  Udm_Main, Sz_Main;

{ TDForm_DocAppr }

procedure TDForm_DocAppr.CustomDropDownFormEhInitForm(
  Sender: TCustomDropDownFormEh; DynParams: TDynVarsEh);
begin
  if (DynParams<>Nil)
  then
  begin
    if not DynParams.DynVar['Doc_Header_Id'].IsNull
    then
    begin
      Self.Db_DocApprList.Close;
      Self.Db_DocApprList.SetVariable(0, DynParams.DynVar['Doc_Header_Id'].AsString);
      Self.Db_DocApprList.Open;
    end
    else
      Self.Close;
  end;
end;

procedure TDForm_DocAppr.Grid_DocApprColumns4CellButtons0Draw(
  Grid: TCustomDBGridEh; Column: TColumnEh; CellButton: TDBGridCellButtonEh;
  Canvas: TCanvas; Cell, AreaCell: TGridCoord; const ARect: TRect;
  ButtonDrawParams: TCellButtonDrawParamsEh; var Handled: Boolean);
begin
  ButtonDrawParams.Transparency := 0;
  with Grid.DataSource.DataSet
  do
  begin
    if (FieldByName('Date_In').IsNull) and (FieldByName('Result_Date').IsNull)
    then
    begin
      ButtonDrawParams.ImageIndex:=-1;
    end
    else if (not FieldByName('Date_In').IsNull) and (FieldByName('Result_Date').IsNull)
    then
    begin
      ButtonDrawParams.ImageIndex:=115;
    end
    else if (not FieldByName('Date_In').IsNull) and (not FieldByName('Result_Date').IsNull)
    then
    begin
      if FieldByName('Result_Value').AsInteger=-1
      then
        ButtonDrawParams.ImageIndex:=116
      else
        ButtonDrawParams.ImageIndex:=117;
    end;
  end;

end;

procedure TDForm_DocAppr.Grid_DocApprColumns4DataHintShow(
  Sender: TCustomDBGridEh; CursorPos: TPoint; Cell: TGridCoord;
  InCellCursorPos: TPoint; Column: TColumnEh;
  var Params: TDBGridEhDataHintParams; var Processed: Boolean);
begin
  with Sender.DataSource.DataSet
  do
  begin
    if (FieldByName('Date_In').IsNull) and (FieldByName('Result_Date').IsNull)
    then
    begin
      Params.HintStr:='Не получен';
    end
    else if (not FieldByName('Date_In').IsNull) and (FieldByName('Result_Date').IsNull)
    then
    begin
      Params.HintStr:='На подписании';
    end
    else if (not FieldByName('Date_In').IsNull) and (not FieldByName('Result_Date').IsNull)
    then
    begin
      Params.HintStr:=FieldByName('Result_Name').AsString;
    end;
  end;
end;

procedure TDForm_DocAppr.Grid_DocApprGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Column.Grid.DataSource.DataSet
  do
  begin
    if not IsEmpty then
    Begin
      {if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '002' then Background := $00EEEEAF
      Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '003' then Background := $0000D7FF
      Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '004' then Background := $0000D7FF
      Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '001' then Background := $00E6D8AD
      Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '006' then Background := $00E6D8AD
      Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '007' then Background := $00CBC0FF
      Else if Db_Sign_Appr_StepsAPPR_STEP_NUM.AsString = '005' then Background := $00CBC0FF;}

      if Column.FieldName='EMP_FIO'
      then
      begin
        if (FieldByName('Date_In').IsNull) and (FieldByName('Result_Date').IsNull)
        then
          Background := clWhite
        else if (not FieldByName('Date_In').IsNull) and (FieldByName('Result_Date').IsNull)
        then
          Background := $0000D7FF
        else if (not FieldByName('Date_In').IsNull) and (not FieldByName('Result_Date').IsNull)
        then
        begin
          if FieldByName('Result_Value').AsInteger=-1
          then
          begin
            Background := $00C1B6FF;
            AFont.Color := clRed;
          end
          else
            Background := $0098FB98
        end;
      end;
    End;
  end;
end;

class function TDForm_DocAppr.GetGlobalRef: TCustomDropDownFormEh;
begin
  if DForm_DocAppr = nil then
    Application.CreateForm(TDForm_DocAppr, DForm_DocAppr);
  Result := DForm_DocAppr;
end;

initialization
  RegisterClass(TDForm_DocAppr);

end.