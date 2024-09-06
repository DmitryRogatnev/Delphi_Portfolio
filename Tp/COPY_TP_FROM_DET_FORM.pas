unit COPY_TP_FROM_DET_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  OracleData, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, FORMAT_OF_COPY_CHS_FORM,
  Oracle, User_CHS_Form;

type
  TForm15 = class(TForm)
    DBGridEh1: TDBGridEh;
    DB_DET_TP: TOracleDataSet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    DATA_DET_TP: TDataSource;
    SimpleSQL: TOracleDataSet;
    Panel1: TPanel;
    COPY_1_Check: TCheckBox;
    COPY_2_Check: TCheckBox;
    COPY_BTN: TButton;
    EXIT_BTN: TButton;
    DB_DET_TPDET: TFloatField;
    DB_DET_TPDET_NUM: TStringField;
    DB_DET_TPDET_NAME: TStringField;
    DB_DET_TPDOC_NUM: TStringField;
    PKG_TP_DOC: TOraclePackage;
    DB_DET_TPDOC_ID: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure EXIT_BTNClick(Sender: TObject);
    procedure COPY_BTNClick(Sender: TObject);
    procedure COPY_1_CheckClick(Sender: TObject);
    procedure COPY_2_CheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Doc_Receiver_Id :Integer;
    v_Ceh_Id :Integer;
    v_Function_of_Copy :Integer;
    v_Copy_Type :Integer;
    v_Btn_Copy_Pressed :Bool;
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

Uses
Main_Form;

procedure TForm15.COPY_1_CheckClick(Sender: TObject);
begin
 if COPY_1_Check.Checked then
 Begin
   COPY_2_Check.Checked := False;
   v_Function_of_Copy := 1;
 End;
end;

procedure TForm15.COPY_2_CheckClick(Sender: TObject);
begin
 if COPY_2_Check.Checked then
 Begin
   COPY_1_Check.Checked := False;
   v_Function_of_Copy := 2;
 End;
end;

procedure TForm15.COPY_BTNClick(Sender: TObject);
var
v_User_Lnum :Integer;
begin
 if (COPY_1_Check.Checked)
     Or (COPY_2_Check.Checked) then
 Begin
   FORMAT_OF_COPY_CHS_FORM.Form16.ShowModal;
   v_Copy_Type := FORMAT_OF_COPY_CHS_FORM.Form16.v_Copy_Type;
   if not Main_Form.Form_Tech_Proc_Main.User_Admin then
   Begin
     PKG_TP_DOC.CallProcedure('P_Copy_TP_From_Detail', [v_Doc_Receiver_Id,
                                                        DB_DET_TPDOC_ID.AsInteger,
                                                        v_Ceh_Id,
                                                        Main_Form.Form_Tech_Proc_Main.User_lnum,
                                                        v_Copy_Type,
                                                        v_Function_of_Copy]);
     v_Btn_Copy_Pressed := True;
     Form15.Close;
   End
   Else if Main_Form.Form_Tech_Proc_Main.User_Admin then
   Begin
     MessageDlg ('Выбирите автора', mtConfirmation, [mbOk], 5);
     v_User_Lnum := User_CHS_Form.Form21.Get_User('').User_Lnum;
     PKG_TP_DOC.CallProcedure('P_Copy_TP_From_Detail', [v_Doc_Receiver_Id,
                                                        DB_DET_TPDOC_ID.AsInteger,
                                                        v_Ceh_Id,
                                                        v_User_Lnum,
                                                        v_Copy_Type,
                                                        v_Function_of_Copy]);
     v_Btn_Copy_Pressed := True;
     Form15.Close;
   End

 End
 Else MessageDlg ('Выберите формат копирования!', MtError, [mbOK], 1);
end;

procedure TForm15.EXIT_BTNClick(Sender: TObject);
begin
 Form15.Close;
end;

procedure TForm15.FormShow(Sender: TObject);
begin
 DB_DET_TP.Close;
 DB_DET_TP.Open;
end;

end.
