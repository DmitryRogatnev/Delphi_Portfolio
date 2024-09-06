unit Tp_Oper_Tk_Param_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, OracleData,
  Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh, Tp_TechProc_DataFrame;

type
  TForm_Oper_TK_Params = class(TForm)
    E_PARAM: TDBEditEh;
    E_CODE_TO: TDBEditEh;
    E_VOLUME: TDBEditEh;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Id_Oper :Integer;
    v_Edit_Flag :Integer;
     TechProcDataFrame: TFrameData_TechProc;
  end;

var
  Form_Oper_TK_Params: TForm_Oper_TK_Params;


implementation

{$R *.dfm}

uses

Tp_Tech_Proc_Form, Tp_Tech_Proc_DataModule;

procedure TForm_Oper_TK_Params.FormShow(Sender: TObject);
begin
  E_PARAM.DataSource := TechProcDataFrame.Data_Opers;
  E_CODE_TO.DataSource := TechProcDataFrame.Data_Opers;
  E_VOLUME.DataSource := TechProcDataFrame.Data_Opers;
end;

end.
