unit FLIP_OPERS_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  DBGridEh, Data.DB, OracleData, DBLookupEh;

type
  TForm61 = class(TForm)
    Label1: TLabel;
    Btn_Flip: TButton;
    Lcb_First_Row: TDBLookupComboboxEh;
    Lcb_Second_Row: TDBLookupComboboxEh;
    DB_OPERS: TOracleDataSet;
    DB_OPERSNOMOPER: TFloatField;
    DATA_OPERS: TDataSource;
    DB_OPER_PER: TOracleDataSet;
    DATA_OPER_PER: TDataSource;
    DB_OPER_PERNOM_PER: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure Btn_FlipClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_First_Row: Integer;
    v_Second_Row: Integer;
    v_Part_Id: Integer;
    v_Oper_Id: Integer;
    v_Function: String;
    v_Button_Pressed: Bool;
  end;

var
  Form61: TForm61;


implementation

{$R *.dfm}

procedure TForm61.Btn_FlipClick(Sender: TObject);
begin
  v_First_Row := Lcb_First_Row.KeyValue;
  v_Second_Row := Lcb_Second_Row.KeyValue;
  v_Button_Pressed := True;
  Form61.Close;
end;

procedure TForm61.FormShow(Sender: TObject);
begin
  v_Button_Pressed := False;
  if AnsiUpperCase( v_Function ) = 'OPERS'
  Then
  Begin
    DB_OPERS.Close;
    Lcb_First_Row.ListField := '';
    Lcb_First_Row.KeyField := '';
    Lcb_First_Row.ListSource := DATA_OPERS;
    Lcb_First_Row.ListField := 'NOMOPER';
    Lcb_First_Row.KeyField := 'NOMOPER';

    Lcb_Second_Row.ListField := '';
    Lcb_Second_Row.KeyField := '';
    Lcb_Second_Row.ListSource := DATA_OPERS;
    Lcb_Second_Row.ListField := 'NOMOPER';
    Lcb_Second_Row.KeyField := 'NOMOPER';


      DB_OPERS.SetVariable( 'Id', v_Part_Id );
    DB_OPERS.Open;
  End
  Else if AnsiUpperCase( v_Function ) = 'OPER_PER'
  Then
  Begin
    DB_OPER_PER.Close;
    Lcb_First_Row.ListField := '';
    Lcb_First_Row.KeyField := '';
    Lcb_First_Row.ListSource := DATA_OPER_PER;
    Lcb_First_Row.ListField := 'NOM_PER';
    Lcb_First_Row.KeyField := 'NOM_PER';

    Lcb_Second_Row.ListField := '';
    Lcb_Second_Row.KeyField := '';
    Lcb_Second_Row.ListSource := DATA_OPER_PER;
    Lcb_Second_Row.ListField := 'NOM_PER';
    Lcb_Second_Row.KeyField := 'NOM_PER';


      DB_OPER_PER.SetVariable( 'Id', v_Oper_Id );
      DB_OPER_PER.SetVariable( 'Id_Part_Tp', v_Part_Id );
    DB_OPER_PER.Open;
  End;
end;

end.
