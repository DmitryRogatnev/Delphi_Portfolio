unit Tp_Copy_Tech_Proc_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Oracle, Vcl.Menus, OracleData,
  Vcl.StdCtrls, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableDataEh,
  MemTableEh,
  DataDriverEh,
  EhLibMTE;

type
  TForm_Chose_Doc_For_Copy = class(TForm)
    Grid_Chose_Doc: TDBGridEh;
    Panel1: TPanel;
    COPY_1_Check: TCheckBox;
    COPY_2_Check: TCheckBox;
    COPY_BTN: TButton;
    EXIT_BTN: TButton;
    Db_Tp_Docs: TOracleDataSet;
    Pop_M_Copy_From_An_Doc: TPopupMenu;
    Pop_M_Copy_From_An_Doc_Btn_Chose: TMenuItem;
    Pop_M_Copy_From_An_Doc_Btn_See_Doc: TMenuItem;
    Data_Tp_Docs: TDataSource;
    Driver_Tp_Docs: TDataSetDriverEh;
    MemT_Tp_Docs: TMemTableEh;
    Db_Tp_DocsDOC_NUM: TStringField;
    Db_Tp_DocsADDIT_INFO_NUM: TStringField;
    Db_Tp_DocsADDIT_INFO_NAME: TStringField;
    Db_Tp_DocsDOC_TYPE: TFloatField;
    Db_Tp_DocsTP_WORK_TYPE: TStringField;
    Db_Tp_DocsPROGRAMM_VERSION: TFloatField;
    MemT_Tp_DocsDOC_NUM: TStringField;
    MemT_Tp_DocsADDIT_INFO_NUM: TStringField;
    MemT_Tp_DocsADDIT_INFO_NAME: TStringField;
    MemT_Tp_DocsDOC_TYPE: TFloatField;
    MemT_Tp_DocsTP_WORK_TYPE: TStringField;
    MemT_Tp_DocsPROGRAMM_VERSION: TFloatField;
    Db_Tp_DocsDOC_HEADER_ID: TFloatField;
    MemT_Tp_DocsDOC_HEADER_ID: TFloatField;
    procedure COPY_BTNClick(Sender: TObject);
    procedure EXIT_BTNClick(Sender: TObject);
    procedure Pop_M_Copy_From_An_DocPopup(Sender: TObject);
    procedure Pop_M_Copy_From_An_Doc_Btn_See_DocClick(Sender: TObject);
    procedure COPY_1_CheckClick(Sender: TObject);
    procedure COPY_2_CheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Doc_Type: Integer;
    v_Doc_Id: Integer;
    v_Ceh_Id :Integer;
    v_Function_of_Copy :Integer;
    v_Copy_Type :Integer;
    v_Btn_Copy_Pressed :Bool;

    Function F_Chose_Doc_For_Copy( v_In_Params: TDynVarsEh ): TDynVarsEh;
  end;

var
  Form_Chose_Doc_For_Copy: TForm_Chose_Doc_For_Copy;

implementation

{$R *.dfm}

uses

Tp_Main_Form, Udm_Main;

procedure TForm_Chose_Doc_For_Copy.COPY_1_CheckClick(Sender: TObject);
begin
  if COPY_2_Check.Checked
  Then
   COPY_2_Check.Checked := False;
end;

procedure TForm_Chose_Doc_For_Copy.COPY_2_CheckClick(Sender: TObject);
begin
  if COPY_1_Check.Checked
  Then
   COPY_1_Check.Checked := False;
end;

Procedure TForm_Chose_Doc_For_Copy.COPY_BTNClick(Sender: TObject);
begin
 if (COPY_1_Check.Checked)
     Or (COPY_2_Check.Checked) then
 Begin
   ModalResult := mrOk;
 End
 Else MessageDlg ('Выберите формат копирования!', MtError, [mbOK], 1);
end;

procedure TForm_Chose_Doc_For_Copy.EXIT_BTNClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

Function TForm_Chose_Doc_For_Copy.F_Chose_Doc_For_Copy(v_In_Params: TDynVarsEh): TDynVarsEh;
Var
  v_Out_Params: TDynVarsEh;
begin
  MemT_Tp_Docs.Close;
  Db_Tp_Docs.SetVariable( 'v_Doc_Type', v_In_Params.DynVar[ 'v_Doc_Type' ].AsString );
  Db_Tp_Docs.SetVariable( 'Doc_Header_Id', v_In_Params.DynVar[ 'ThisDoc_Doc_Header_Id' ].AsString  );
  MemT_Tp_Docs.Open;

  V_Out_Params := TDynVarsEh.Create( Application.MainForm );
  If Form_Chose_Doc_For_Copy.ShowModal = mrOk
  Then
  Begin
    If COPY_1_Check.Checked
    Then
      v_Out_Params.DynVar[ 'Replace' ].AsString := '1';
    v_Out_Params.DynVar[ 'Doc_Header_Id' ].AsString := Grid_Chose_Doc.DataSource.DataSet.FieldByName( 'Doc_Header_Id').AsString;
    If Grid_Chose_Doc.DataSource.DataSet.FieldByName( 'PROGRAMM_VERSION' ).AsInteger = 1
    Then
       v_Out_Params.DynVar[ 'Programm_Vers' ].AsString := 'New'
    Else if Grid_Chose_Doc.DataSource.DataSet.FieldByName( 'PROGRAMM_VERSION' ).AsInteger = 2
    Then
       v_Out_Params.DynVar[ 'Programm_Vers' ].AsString := 'Old';

    With CreateMessageDialog('Укажите какие операции копировать?', mtConfirmation, mbYesNoCancel)
    Do
    Try
      TButton( FindComponent( 'Yes' ) ).Caption := 'По цеху';
      TButton( FindComponent( 'No' ) ).Caption := 'Все';
      TButton( FindComponent( 'Cancel' ) ).Caption := 'Выбрать';
      Case ShowModal
      Of
        mrYes:
        Begin
          v_Out_Params.DynVar[ 'Copy_Funct' ].AsString := '1';
          v_Out_Params.DynVar[ 'Copy_Ceh' ].AsString := v_In_Params.DynVar[ 'v_Ceh_Id' ].AsString;
          With CreateMessageDialog( 'Копировать операции ко всем аналогичным цехам '
                                    + 'или только туда, где установлен курсор?',
                                    mtConfirmation,
                                    mbYesNo )
          Do
          Try
            TButton( FindComponent( 'Yes' ) ).Caption := 'Все';
            TButton( FindComponent( 'No' ) ).Caption := 'Курсор';
            Case ShowModal
            Of
              mrYes: v_Out_Params.DynVar[ 'Cursor_Flag' ].AsString := '0';
              mrNo: v_Out_Params.DynVar[ 'Cursor_Flag' ].AsString := '1';
            end;
          Finally
            Free;
          End;
        End;
        mrNo: v_Out_Params.DynVar[ 'Copy_Funct' ].AsString := '2';
        mrCancel: v_Out_Params.DynVar[ 'Copy_Funct' ].AsString := '3';
      End;
    Finally
      Free;
    End;
  End;
  Result := v_Out_Params;
end;

procedure TForm_Chose_Doc_For_Copy.Pop_M_Copy_From_An_DocPopup(Sender: TObject);
begin
 If Db_Tp_DocsPROGRAMM_VERSION.AsInteger = 2
 Then
   Pop_M_Copy_From_An_Doc_Btn_See_Doc.Visible := False
 Else
   Pop_M_Copy_From_An_Doc_Btn_See_Doc.Visible := True;

end;

procedure TForm_Chose_Doc_For_Copy.Pop_M_Copy_From_An_Doc_Btn_See_DocClick(
  Sender: TObject);
 var
  v_In_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'v_Doc_Id' ].AsInteger := Grid_Chose_Doc.DataSource.DataSet.FieldByName( 'ID' ).AsInteger;
  v_In_Params.DynVar[ 'v_Doc_Type' ].AsInteger := Grid_Chose_Doc.DataSource.DataSet.FieldByName( 'DOC_TYPE' ).AsInteger;
  v_In_Params.DynVar[ 'v_Work_Type' ].AsString := Grid_Chose_Doc.DataSource.DataSet.FieldByName( 'TP_WORK_TYPE' ).AsString;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

end.
