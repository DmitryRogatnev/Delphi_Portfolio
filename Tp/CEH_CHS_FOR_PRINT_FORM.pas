unit CEH_CHS_FOR_PRINT_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Var_Form, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, OracleData, Vcl.Menus;

type
  TForm_Ceh_For_Print = class(TForm)
    Db_Cehs_For_Print: TOracleDataSet;
    Data_Cehs_For_Print: TDataSource;
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Db_Cehs_For_PrintCEH_ID: TFloatField;
    Db_Cehs_For_PrintCEH_CODE: TStringField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Doc_Id: Integer;
    v_Button_Chose_Pressed: Bool;

  /// <summary> ѕолучение цехов дл€ печати</summary>
  ///  <param name="v_Doc_Id"> Integer; <br/> Id документа </param>
  ///  <returns>  Ceh_Id; Integer <br/> Id цеха  </returns>
  Function F_Get_Ceh_For_Print ( v_Doc_Id: Integer ): Integer;
  end;

var
  Form_Ceh_For_Print: TForm_Ceh_For_Print;

implementation

{$R *.dfm}
Uses
Udm_Main;

procedure TForm_Ceh_For_Print.DBGridEh1DblClick(Sender: TObject);
begin
  v_Button_Chose_Pressed := True;
  Form_Ceh_For_Print.Close;
end;

procedure TForm_Ceh_For_Print.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_RETURN
  Then
  Begin
    DBGridEh1DblClick( nil );
  End;
end;

Function TForm_Ceh_For_Print.F_Get_Ceh_For_Print( v_Doc_Id: Integer ): Integer;
begin
  Db_Cehs_For_Print.Close;
  Db_Cehs_For_Print.SetVariable( 'v_Doc_Id', v_Doc_Id );
  Db_Cehs_For_Print.Open;
  v_Button_Chose_Pressed := False;
  Form_Ceh_For_Print.ShowModal;
  if v_Button_Chose_Pressed
  Then
  Begin
    Result := Db_Cehs_For_PrintCEH_ID.AsInteger;
  End;
end;

end.
