unit Loading_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, OracleData,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Imaging.pngimage, ShellApi;

type
  TForm_Loading = class(TForm)
    Img_Prog_Icon: TImage;
    Bar_Load_Stat: TProgressBar;
    Lbl_Load_Stat: TLabel;
    Lbl_Prog_Name: TLabel;
    Db_Object: TOracleDataSet;
    Db_ObjectOBJECT_SECOND_NAME: TStringField;
    Tm_Check: TTimer;
    Lbl_Prog_Author: TLabel;
    Db_ObjectPROGRAMMER_NAME: TStringField;
    procedure Tm_CheckTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Vl_Sender: TForm;
    Vl_Checking_Object :TClass;
    Vl_Checking_Property :String;
    Vl_Property_Value: Variant;
    V_Count_Of_Comp: Integer;
  public
    { Public declarations }
    Procedure P_Start_Loading ( Object_Id: Integer;
                                Sender: TForm;
                                Checking_Object :TClass;
                                Checking_Property :String;
                                Property_Value: Variant );
    Procedure P_Stop_Loading;
  end;

var
  Form_Loading: TForm_Loading;

implementation

{$R *.dfm}

Uses

Udm_Main, TypInfo;

{ TForm_Loading }

procedure TForm_Loading.FormCreate(Sender: TObject);
begin
  Lbl_Load_Stat.Caption := 'Загрузка';
end;

procedure TForm_Loading.P_Start_Loading( Object_Id: Integer;
                                         Sender: TForm;
                                         Checking_Object :TClass;
                                         Checking_Property :String;
                                         Property_Value: Variant );
  var
    Vl_Last_Comp_Name: String;
    i: Integer;
    Object_Property: PPropInfo;
    A: array [0..78] of Char;
begin
  V_Count_Of_Comp := 0;
  With Sender
  Do
  Begin
    For i := 0 to ComponentCount-1
    Do
    Begin
      If Components[i] is Checking_Object
      Then
      Begin
        Inc(V_Count_Of_Comp);
      End;
    End;
  End;

  If V_Count_Of_Comp <> 0
  Then
  Begin
    Bar_Load_Stat.Max := V_Count_Of_Comp;
    Bar_Load_Stat.Min := 0;

    Vl_Sender := Sender;
    Vl_Checking_Object := Checking_Object;
    Vl_Checking_Property := Checking_Property;
    Vl_Property_Value := Property_Value;

    Db_Object.Close;
    Db_Object.SetVariable('v_Id_Object', Object_Id);
    Db_Object.Open;

    Lbl_Prog_Name.Caption := Db_ObjectOBJECT_SECOND_NAME.AsString;
    Lbl_Prog_Author.Caption := Db_ObjectPROGRAMMER_NAME.AsString;
    //Img_Prog_Icon.Picture.Icon.Handle := Application.MainForm.Icon.Handle;
    StrPCopy(A, ParamStr(0));
    {Вывод на экран нулевой иконки из файла}
    Img_Prog_Icon.Picture.Icon.Handle := ExtractIcon(HInstance, A, 0);

    Form_Loading.Show;

    Tm_Check.Enabled :=  True;

  End;

end;

procedure TForm_Loading.P_Stop_Loading;
begin
  Bar_Load_Stat.Position := V_Count_Of_Comp;
  Tm_Check.Enabled := False;
  Form_Loading.Close;
end;

procedure TForm_Loading.Tm_CheckTimer(Sender: TObject);
Var
  v_Count_Comp_In_Check_Param, i, j: Integer;
  Object_Property: PPropInfo;
begin
  v_Count_Comp_In_Check_Param := 0;
  Lbl_Load_Stat.Caption := 'Загрузка...';
  With Vl_Sender
  Do
  Begin
    For i := 0 to ComponentCount-1
    Do
    Begin
      If Components[i] is Vl_Checking_Object
      Then
      Begin
        Object_Property := GetPropInfo(Components[i].ClassType, Vl_Checking_Property);
        if Assigned(Object_Property)
        Then
        Begin
          if VarToStr(GetPropValue(Components[i], Object_Property, True)) = VarToStr(Vl_Property_Value)
          Then
          Begin
            Inc(v_Count_Comp_In_Check_Param);
            Bar_Load_Stat.Position := v_Count_Comp_In_Check_Param;
          End;
        End;
      End;
    End;
  End;
end;

end.

