unit ADD_COMMENT_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh, VAR_FORM,
  Oracle, USER_CHS_FORM, ADD_SYM_FORM, ComObj, OleCtrls, Activex, Vcl.ComCtrls,
  Vcl.ToolWin, System.ImageList, Vcl.ImgList;

type
  TForm37 = class(TForm)
    PKG_TP_DOC: TOraclePackage;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton6: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    ER_TEXT: TRichEdit;
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Doc_Id: Integer;
     WordApp,
     WordDoc :Variant;
  end;

var
  Form37: TForm37;

implementation

{$R *.dfm}

Uses
Main_Form;

procedure TForm37.FormShow(Sender: TObject);
begin
 ER_TEXT.Clear;
end;

procedure TForm37.ToolButton1Click(Sender: TObject);
var
 v_Author_Lnum: Integer;
 v_Author_Ceh_Id: Integer;
begin
if ER_TEXT.Text <> '' then
  Begin
    if Main_Form.Form_Tech_Proc_Main.User_Admin then
    Begin
      MessageDlg('Укажите автора комментария.', mtConfirmation, [mbOK], 5);
      v_Author_Lnum := USER_CHS_FORM.Form21.Get_User( '' ).User_Lnum;
      v_Author_Ceh_Id := USER_CHS_FORM.Form21.Get_User_Info_By_Lnum( v_Author_Lnum ).User_Ceh_Id;
      PKG_TP_DOC.CallProcedure( 'P_Set_Comm_To_Doc', [ v_Doc_Id,
                                                       v_Author_Lnum,
                                                       v_Author_Ceh_Id,
                                                       ER_TEXT.Text ] );
      Form37.Close;
    End
    Else if not Main_Form.Form_Tech_Proc_Main.User_Admin then
    Begin
      PKG_TP_DOC.CallProcedure( 'P_Set_Comm_To_Doc', [ v_Doc_Id,
                                                       Main_Form.Form_Tech_Proc_Main.User_lnum,
                                                       Main_Form.Form_Tech_Proc_Main.User_Otdel_Id,
                                                       ER_TEXT.Text ] );
      Form37.Close;
    End;
  End
  Else MessageDlg('Не указан комментарий!', mtError, [mbOk], 5);
end;

procedure TForm37.ToolButton3Click(Sender: TObject);
var
  v_Count_Of_SpellErrors: Integer;
  v_Count_Of_GrammaticalErrors: Integer;
  v_Selling_Text :String;
  i : Integer;
  StopLoop : Boolean;
  v_Word_Length, v_Word_Start : Integer;
  varFalse : OleVariant;
  v_Dont_Save_Doc :OleVariant;
begin
  WordApp := CreateOleObject( 'Word.Application' );
  WordDoc := WordApp.Documents.Add;
  StopLoop := False;
  v_Word_Start := 0;
  ER_TEXT.SelStart := 0;
  v_Word_Length := 0;
  while not StopLoop do
  begin
    v_Word_Start := v_Word_Length + v_Word_Start;
    v_Word_Length := Pos( ' ', Copy( ER_TEXT.Text,
                                     v_Word_Start + 1,
                                     MaxInt ) );
    If v_Word_Length = 0
    Then
      v_Word_Length := Length( ER_TEXT.Text ) - v_Word_Start;
    If v_Word_Start = Length( ER_TEXT.Text )
    Then
      StopLoop := True;
    ER_TEXT.SelStart := v_Word_Start;
    If Pos( ' ', Copy( ER_TEXT.Text,
                       v_Word_Start + 1,
                       MaxInt ) ) <> 0
    Then
      ER_TEXT.SelLength := -1 + v_Word_Length
    Else if Pos( ' ', Copy( ER_TEXT.Text,
                            v_Word_Start + 1,
                            MaxInt ) ) = 0
    Then
      ER_TEXT.SelLength := v_Word_Length;

    if ER_TEXT.SelText = '' then
      Continue;

    v_Selling_Text := ER_TEXT.SelText;
    v_Selling_Text := AnsiLowerCase( v_Selling_Text );
    WordDoc.Range.Delete( EmptyParam,
                          EmptyParam );
    WordDoc.Range.InsertAfter( v_Selling_Text );
    v_Count_Of_SpellErrors := WordApp.ActiveDocument.SpellingErrors.Count;
    v_Count_Of_GrammaticalErrors := WordApp.ActiveDocument.GrammaticalErrors.Count;
    if ( v_Count_Of_SpellErrors <> 0 )
        Or ( v_Count_Of_GrammaticalErrors <> 0 ) Then
    Begin
     ER_TEXT.SelAttributes.Color := clRed;
    End
    Else if ( v_Count_Of_SpellErrors = 0 )
             And ( v_Count_Of_GrammaticalErrors = 0 ) Then
    Begin
     ER_TEXT.SelAttributes.Color := clWindowText;
    End;
  end;
  varFalse:=False;
  WordDoc.Close(0);
  WordApp.Quit( varFalse );
  WordApp := Unassigned;
  ER_TEXT.SelStart := 0;
  ER_TEXT.SelLength := 0;
end;

procedure TForm37.ToolButton4Click(Sender: TObject);
begin
 ER_TEXT.Text := ER_TEXT.Text + ADD_SYM_FORM.Form13.Get_Spec_Symbol;
end;

procedure TForm37.ToolButton5Click(Sender: TObject);
begin
 Form37.Close;
end;

end.
