unit TK_OPER_PARAM_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, Data.DB, OracleData,
  Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh;

type
  TForm33 = class(TForm)
    E_PARAM: TDBEditEh;
    E_CODE_TO: TDBEditEh;
    E_VOLUME: TDBEditEh;
  private
    { Private declarations }
  public
    { Public declarations }
    v_Id_Oper :Integer;
    v_Edit_Flag :Integer;
  end;

var
  Form33: TForm33;


implementation

{$R *.dfm}

uses

Technical_Process_Form;

end.
