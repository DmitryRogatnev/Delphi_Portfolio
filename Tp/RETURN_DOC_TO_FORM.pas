unit RETURN_DOC_TO_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, OracleData, Oracle, Vcl.Menus;

type
  TForm9 = class(TForm)
    DB_STEPS_TO_RETURN: TOracleDataSet;
    DB_STEPS_TO_RETURNID: TFloatField;
    DB_STEPS_TO_RETURNID_DOC_TP: TFloatField;
    DB_STEPS_TO_RETURNCEH_ID: TFloatField;
    DB_STEPS_TO_RETURNFLAG_IN: TFloatField;
    DB_STEPS_TO_RETURNDATE_IN: TDateTimeField;
    DB_STEPS_TO_RETURNFLAG_OUT: TFloatField;
    DB_STEPS_TO_RETURNDATE_OUT: TDateTimeField;
    DB_STEPS_TO_RETURNRAZRAB: TFloatField;
    DB_STEPS_TO_RETURNDATE_CHNG: TDateTimeField;
    DB_STEPS_TO_RETURNAPPR_STEP: TStringField;
    DB_STEPS_TO_RETURNCEH_NAME: TStringField;
    DB_STEPS_TO_RETURNAPPR_STEP_NAME: TStringField;
    DBGridEh1: TDBGridEh;
    DATA_STEPS_TO_RETURN: TDataSource;
    PKG_TP_DOC: TOraclePackage;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Doc_Id :Integer;
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.DBGridEh1DblClick(Sender: TObject);
begin
 PKG_TP_DOC.CallProcedure('P_Return_Doc_To_Prev_Appr_Step', [v_Doc_Id,
                                                             DB_STEPS_TO_RETURNAPPR_STEP.AsString,
                                                             DB_STEPS_TO_RETURNCEH_ID.AsInteger]);
 Form9.Close;
end;

procedure TForm9.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not DB_STEPS_TO_RETURN.IsEmpty then
  Begin
     if DB_STEPS_TO_RETURNAPPR_STEP.AsString = '002' then Background := $0000D7FF
   Else if DB_STEPS_TO_RETURNAPPR_STEP.AsString = '003' then Background := $00DEC4B0
   Else if DB_STEPS_TO_RETURNAPPR_STEP.AsString = '004' then Background := $00EEEEAF
   Else if DB_STEPS_TO_RETURNAPPR_STEP.AsString = '001' then Background := $00E6D8AD
   Else if DB_STEPS_TO_RETURNAPPR_STEP.AsString = '006' then Background := $00E6D8AD
   Else if DB_STEPS_TO_RETURNAPPR_STEP.AsString = '007' then Background := $00CBC0FF
   Else if DB_STEPS_TO_RETURNAPPR_STEP.AsString = '005' then Background := $0098FB98;
  End;
end;

procedure TForm9.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = 13 then DBGridEh1DblClick(nil);
end;

procedure TForm9.FormShow(Sender: TObject);
begin
 DB_STEPS_TO_RETURN.Close;
 DB_STEPS_TO_RETURN.SetVariable('v_Doc_Id', v_Doc_Id);
 DB_STEPS_TO_RETURN.Open;
end;

end.
