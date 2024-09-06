unit Tp_Oper_Per_Text_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  DBCtrlsEh, Vcl.ComCtrls, Vcl.ToolWin, System.ImageList, Vcl.ImgList, ComObj,
  OleCtrls, Activex, Tp_Add_Sym_Form, DynVarsEh, Tp_TechProc_DataFrame,
  Vcl.Menus;

type
  TForm_Oper_Per_Text = class(TForm)
    ImageList1: TImageList;
    Er_Text: TDBRichEditEh;
    MM_Per_Text: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     WordApp,
     WordDoc :Variant;
     v_Per_Text :String;
     v_Oper_Id: Integer;
     TechProcDataFrame: TFrameData_TechProc;
  end;

var
  Form_Oper_Per_Text: TForm_Oper_Per_Text;

implementation

{$R *.dfm}
Uses
Tp_Main_Form, Tp_Tech_Proc_Form;

procedure TForm_Oper_Per_Text.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Try Er_Text.DataSource.DataSet.Post Except End;
end;

procedure TForm_Oper_Per_Text.FormShow(Sender: TObject);
var
i :Integer;
begin
  if v_Per_Text <> '' then N1Click(nil);
  Er_Text.DataSource := TechProcDataFrame.Data_Oper_Per;
end;

procedure TForm_Oper_Per_Text.N1Click(Sender: TObject);
var
  v_Count_Of_SpellErrors: Integer; // :ProofreadingErrors;
  v_Count_Of_GrammaticalErrors: Integer; // :ProofreadingErrors;
  v_Selling_Text :String; //SpellingSuggestions;
  i : Integer;
  StopLoop : Boolean;
  v_Word_Length, v_Word_Start : Integer;
  varFalse : OleVariant;
  v_Dont_Save_Doc :OleVariant;
begin
  WordApp := CreateOleObject('Word.Application');
  WordDoc := WordApp.Documents.Add;
  StopLoop := False;
  v_Word_Start := 0;
  ER_TEXT.SelStart := 0;
  v_Word_Length := 0;
  while not StopLoop do
  begin
    v_Word_Start := v_Word_Length + v_Word_Start;
    v_Word_Length := Pos(' ', Copy(ER_TEXT.Text, v_Word_Start + 1, MaxInt));
    if v_Word_Length = 0 then
      v_Word_Length := Length(ER_TEXT.Text) - v_Word_Start;
    if v_Word_Start = Length(ER_TEXT.Text) then
      StopLoop := True;
    ER_TEXT.SelStart := v_Word_Start;
    if Pos(' ', Copy(ER_TEXT.Text, v_Word_Start + 1, MaxInt)) <> 0 then
      ER_TEXT.SelLength := -1 + v_Word_Length
    Else if Pos(' ', Copy(ER_TEXT.Text, v_Word_Start + 1, MaxInt)) = 0 then
      ER_TEXT.SelLength := v_Word_Length;

    if ER_TEXT.SelText = '' then
      Continue;

    v_Selling_Text := ER_TEXT.SelText;
    v_Selling_Text := AnsiLowerCase(v_Selling_Text);
    WordDoc.Range.Delete(EmptyParam, EmptyParam);
    WordDoc.Range.InsertAfter(v_Selling_Text);
    v_Count_Of_SpellErrors := WordApp.ActiveDocument.SpellingErrors.Count;
    v_Count_Of_GrammaticalErrors := WordApp.ActiveDocument.GrammaticalErrors.Count;
    if (v_Count_Of_SpellErrors <> 0)
        Or (v_Count_Of_GrammaticalErrors <> 0) then
    Begin
     ER_TEXT.SelAttributes.Color := clRed;
    End
    else if (v_Count_Of_SpellErrors = 0)
             And (v_Count_Of_GrammaticalErrors = 0) then
    Begin
      ER_TEXT.SelAttributes.Color := clWindowText;
    End;
  end;
  varFalse:=False;
  WordDoc.Close(0);
  WordApp.Quit(varFalse);
  WordApp := Unassigned;
  ER_TEXT.SelStart := 0;
  ER_TEXT.SelLength := 0;
end;

procedure TForm_Oper_Per_Text.N2Click(Sender: TObject);
begin
  with TForm_Add_Sym.Create(Self)
  do
  begin
    try
      Self.ER_TEXT.Text := Self.ER_TEXT.Text + Get_Spec_Symbol;
    finally
      Free;
    end;
  end;
end;

procedure TForm_Oper_Per_Text.N3Click(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
  v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'OPER_PER';
  v_In_Params.DynVar[ 'Filter' ].AsString := ' Oper_Id = ' + TechProcDataFrame.MemT_OpersOPER_ID.AsString;
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  if v_Out_Params <> Nil
  Then
  Begin
    With Er_Text.DataSource.DataSet
    Do
    Begin
      Edit;
      FieldByName('PER').AsString := v_Out_Params.DynVar[ 'PER' ].AsString;
    End;
  End;
end;

procedure TForm_Oper_Per_Text.N4Click(Sender: TObject);
begin
  Self.Close;
end;

end.
