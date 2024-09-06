unit Tp_Detail_Trud_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.Menus, Data.DB, OracleData, frxClass, frxExportXLS, frxExportPDF, frxDBSet,
  Printers, PrViewEh, MemTableDataEh, PrnDbgeh, MemTableEh, DataDriverEh;

type
  TForm_Detail_Trud = class(TForm)
    Db_Trud_For_Detail: TOracleDataSet;
    Data_Trud_For_Detail: TDataSource;
    TRUD_PM: TPopupMenu;
    N28: TMenuItem;
    Grid_Detail_Trud: TDBGridEh;
    Db_Trud_For_DetailT_NORM: TFloatField;
    Db_Trud_For_DetailCEH: TStringField;
    Db_Trud_For_DetailKODPROF: TStringField;
    Db_Trud_For_DetailRAZR: TIntegerField;
    Db_Trud_For_DetailMONEY: TFloatField;
    Db_Trud_For_DetailFLAG_TP: TFloatField;
    Db_Trud_For_DetailPROFPOLN: TStringField;
    Db_Trud_For_DetailNORMY_TP: TFloatField;
    Db_Trud_For_DetailNORMY_CURRENT: TFloatField;
    Driver_Trud_For_Detail: TDataSetDriverEh;
    MemT_Trud_For_Detail: TMemTableEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Db_Trud_For_DetailKVN: TIntegerField;
    MemT_Trud_For_DetailT_NORM: TFloatField;
    MemT_Trud_For_DetailCEH: TStringField;
    MemT_Trud_For_DetailKODPROF: TStringField;
    MemT_Trud_For_DetailRAZR: TIntegerField;
    MemT_Trud_For_DetailMONEY: TFloatField;
    MemT_Trud_For_DetailFLAG_TP: TFloatField;
    MemT_Trud_For_DetailPROFPOLN: TStringField;
    MemT_Trud_For_DetailNORMY_TP: TFloatField;
    MemT_Trud_For_DetailNORMY_CURRENT: TFloatField;
    MemT_Trud_For_DetailKVN: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure Grid_Detail_TrudGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Det_Id: Integer;
    v_Doc_Id: Integer;
    v_Norma_Summ: Double;
  end;

var
  Form_Detail_Trud: TForm_Detail_Trud;

implementation

{$R *.dfm}
Uses
Tp_Tech_Proc_Form, Udm_Main, Tp_Main_Form;

procedure TForm_Detail_Trud.FormShow(Sender: TObject);
Var
  v_In_Params,
  v_Out_Params: TDynVarsEh;
begin
 MemT_Trud_For_Detail.Close;
   v_In_Params := TDynVarsEh.Create( Application.MainForm );
   v_In_Params.DynVar[ 'Find' ].AsString := 'DET';
   v_In_Params.DynVar[ 'Filter' ].AsString := 'Id = ' + IntToStr( v_Det_Id );
   v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
   If v_Out_Params <> Nil
   Then
     Db_Trud_For_Detail.SetVariable( 'v_Det_Num', v_Out_Params.DynVar[ 'DET_NUM' ].AsString );
   Db_Trud_For_Detail.SetVariable( 'v_Doc_Id', v_Doc_Id );
 MemT_Trud_For_Detail.Open;
end;

procedure TForm_Detail_Trud.Grid_Detail_TrudGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  If MemT_Trud_For_DetailFLAG_TP.AsInteger = 1
  Then
  Begin
    Background := $00EEEEAF;
    AFont.Style := AFont.Style + [fsBold];
  End
  Else
  Begin
    Background := $00D2FAFA;
  End;
end;

procedure TForm_Detail_Trud.N28Click(Sender: TObject);
begin
//  PrinterPreview.Orientation := poLandscape;
  PrintDBGridEh1.Preview;
end;

end.
