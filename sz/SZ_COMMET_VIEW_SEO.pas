unit SZ_COMMET_VIEW_SEO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Oracle, SZ_VARIABLES,SZ_COMMET_CREAT,
  Data.DB, OracleData, SZ_CHOOSE_STR, SZ_COMMET_EDIT, Vcl.ComCtrls;

type
  TForm7 = class(TForm)
    Panel6: TPanel;
    Button1: TButton;
    Button2: TButton;
    Close_but: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ENum_SZ: TEdit;
    EDate: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    SimpleSQL: TOracleDataSet;
    CommentarySet: TOracleDataSet;
    CommentarySetSZ_NUMB: TFloatField;
    CommentarySetSZ_DATE: TDateTimeField;
    CommentarySetSZ_COMM: TStringField;
    CommentarySetSZ_USER_ID: TFloatField;
    CommentarySetCOMMENT_DATE_: TStringField;
    CommentarySetID_STR: TFloatField;
    CommentarySetSZ_TYPE_USER: TFloatField;
    OraclePackage2: TOraclePackage;
    OraclePackage1: TOraclePackage;
    MUserComments: TRichEdit;
    MHeadUComments: TRichEdit;
    MToComments: TRichEdit;
    Button3: TButton;
    CommentarySetID_OTDEL: TFloatField;
    CommentarySetSZ_COMM_VAZH: TFloatField;
    CommentarySetSZ_COMM_ISDEL: TFloatField;
    procedure UpdateComments;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Close_butClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}
procedure TForm7.Button1Click(Sender: TObject);
 var
 anotherUser :integer;
begin
  SimpleSQL.Close;
  SimpleSQL.DeleteVariables;
  SimpleSQL.DeclareVariable('vNum',otInteger);
  SimpleSQL.DeclareVariable('vDate',otString);
  SimpleSQL.SetVariable('vNum',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
  SimpleSQL.SetVariable('vDate',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'));
  SimpleSQL.SQL.Clear;
  SimpleSQL.SQL.Add('select t.sz_id_cont from mrk.sz_seo_main t where t.sz_numb = :vNum and t.sz_date = :vDate');
  SimpleSQL.ExecSQL;
  SimpleSQL.Open;
  anotherUser := SimpleSQL.Fields[0].AsInteger;
  if (SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserType') = 3) and (SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId') <> anotherUser) or (SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserType') = 1) then
    begin
        ShowMessage('У вас нет прав на добавление комментариев к чужим с/з!');
    end
  else
    begin
       SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('IdOtdel',otInteger);
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('IdOtdel', 38);
       SZ_COMMET_CREAT.Form4.ShowModal;
       UpdateComments;
    end;
end;

procedure TForm7.Button2Click(Sender: TObject);
 var
 anotherUser, isdel :integer;
begin
  SimpleSQL.Close;
  SimpleSQL.DeleteVariables;
  SimpleSQL.DeclareVariable('vNum',otInteger);
  SimpleSQL.DeclareVariable('vDate',otString);
  SimpleSQL.SetVariable('vNum',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
  SimpleSQL.SetVariable('vDate',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'));
  SimpleSQL.SQL.Clear;
  SimpleSQL.SQL.Add('select t.sz_id_cont from mrk.sz_seo_main t where t.sz_numb = :vNum and t.sz_date = :vDate');
  SimpleSQL.ExecSQL;
  SimpleSQL.Open;
  anotherUser := SimpleSQL.Fields[0].AsInteger;
  if (SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserType') = 3) and (SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId') <> anotherUser) or (SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserType') = 1)  then
    begin
        ShowMessage('У вас нет прав на редактирование комментариев к чужим с/з!');
    end
  else
    begin
       SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('IdOtdel',otInteger);
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('IdOtdel', 38);
       SZ_CHOOSE_STR.Form3.ShowModal;
       if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('ID_STR') <> 0 then
       begin
         SimpleSQL.Close;
          SimpleSQL.DeleteVariables;
          SimpleSQL.DeclareVariable('vNum',otInteger);
          SimpleSQL.DeclareVariable('vDate',otString);
          SimpleSQL.DeclareVariable('IdStr',otString);
          SimpleSQL.DeclareVariable('UserId',otString);
          SimpleSQL.SetVariable('vNum',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
          SimpleSQL.SetVariable('vDate',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'));
          SimpleSQL.SetVariable('IdStr',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('ID_STR'));
          SimpleSQL.SetVariable('UserId',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'));
          SimpleSQL.SQL.Clear;
          SimpleSQL.SQL.Add('select t.sz_comm_isdel from mrk.SZ_COMMENTARY_SEO t where t.sz_numb = :vNum and t.sz_date = :vDate and t.sz_user_id = :UserId and t.ID_str = :IdStr');
          SimpleSQL.ExecSQL;
          SimpleSQL.Open;
          isdel := SimpleSQL.Fields[0].AsInteger;
          if isdel = 1 then
          begin
           SZ_COMMET_EDIT.Form5.ShowModal;
          end
          else if isdel = 0 then
          begin
           ShowMessage('Этот комментарий удален!');
          end;
       end;
       UpdateComments;
    end;
end;


procedure TForm7.Button3Click(Sender: TObject);
var
 vData :string;
 anotherUser, isdel :integer;
begin
  SimpleSQL.Close;
  SimpleSQL.DeleteVariables;
  SimpleSQL.DeclareVariable('vNum',otInteger);
  SimpleSQL.DeclareVariable('vDate',otString);
  SimpleSQL.SetVariable('vNum',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
  SimpleSQL.SetVariable('vDate',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'));
  SimpleSQL.SQL.Clear;
  SimpleSQL.SQL.Add('select t.sz_id_cont from mrk.sz_seo_main t where t.sz_numb = :vNum and t.sz_date = :vDate');
  SimpleSQL.ExecSQL;
  SimpleSQL.Open;
  anotherUser := SimpleSQL.Fields[0].AsInteger;
  vData := DateTimeToStr(now());
  if (SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserType') = 3) and (SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId') <> anotherUser)or (SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserType') = 1)  then
    begin
        ShowMessage('У вас нет прав на удаление комментариев!');
    end
  else
    begin
       SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('IdOtdel',otInteger);
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('IdOtdel', 38);
       SZ_CHOOSE_STR.Form3.ShowModal;
       if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('ID_STR') <> 0 then
       begin
          SimpleSQL.Close;
          SimpleSQL.DeleteVariables;
          SimpleSQL.DeclareVariable('vNum',otInteger);
          SimpleSQL.DeclareVariable('vDate',otString);
          SimpleSQL.DeclareVariable('IdStr',otString);
          SimpleSQL.DeclareVariable('UserId',otString);
          SimpleSQL.SetVariable('vNum',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
          SimpleSQL.SetVariable('vDate',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'));
          SimpleSQL.SetVariable('IdStr',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('ID_STR'));
          SimpleSQL.SetVariable('UserId',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'));
          SimpleSQL.SQL.Clear;
          SimpleSQL.SQL.Add('select t.sz_comm_isdel from mrk.SZ_COMMENTARY_SEO t where t.sz_numb = :vNum and t.sz_date = :vDate and t.sz_user_id = :UserId and t.ID_str = :IdStr');
          SimpleSQL.ExecSQL;
          SimpleSQL.Open;
          isdel := SimpleSQL.Fields[0].AsInteger;
          if isdel = 1 then
          begin
           OraclePackage1.CallProcedure('DelComment', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'), SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'), SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserType'),SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'),vData, SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('IdOtdel'),SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('ID_STR'),'33']);
          end
          else if isdel = 0 then
          begin
           ShowMessage('Этот комментарий уже удален!');
          end;
       end;
       UpdateComments;
    end;
end;

procedure TForm7.Close_butClick(Sender: TObject);
begin
 form7.Close;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
  UpdateComments;
end;

procedure TForm7.UpdateComments;
 var
vNUm :integer;
vDate :string;
VCOUNT,VCOUNT2,VCOUNT3, i :integer;
begin
CommentarySet.Close;
CommentarySet.ClearVariables;
CommentarySet.SetVariable('vNum',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
CommentarySet.SetVariable('vDate',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'));
CommentarySet.Open;
MUserComments.Lines.Clear();
MHeadUComments.Lines.Clear();
MToComments.Lines.Clear();
ENum_sz.Text := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB');
EDate.Text := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE');
vNum := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB');
vDate := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE');
SimpleSQL.Close;
SimpleSQL.SQL.Clear;
SimpleSQL.DeleteVariables;
SimpleSQL.DeclareVariable('vNum',otInteger);
SimpleSQL.DeclareVariable('vDate',otString);
SimpleSQL.DeclareVariable('vUserType',otInteger);
SimpleSQL.DeclareVariable('vOtdel',otInteger);
SimpleSQL.SetVariable('vUserType',2);
SimpleSQL.SetVariable('vNum',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
SimpleSQL.SetVariable('vDate',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'));
SimpleSQL.SetVariable('vOtdel',33);
SimpleSQL.SQL.Add('select count (*) from mrk.SZ_COMMENTARY_SEO where sz_numb = :vNum and sz_date = :vDate and SZ_TYPE_USER = :vUserType and id_otdel = :vOtdel');
SimpleSQL.ExecSQL;
SimpleSQL.Open;
vCOUNT2 := SimpleSQL.Fields[0].AsInteger;
SimpleSQL.Close;
SimpleSQL.SQL.Clear;
SimpleSQL.SetVariable('vUserType',2);
SimpleSQL.SetVariable('vNum',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
SimpleSQL.SetVariable('vDate',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'));
SimpleSQL.SetVariable('vOtdel',38);
SimpleSQL.SQL.Add('select count (*) from mrk.SZ_COMMENTARY_SEO where sz_numb = :vNum and sz_date = :vDate and SZ_TYPE_USER = :vUserType and id_otdel = :vOtdel');
SimpleSQL.ExecSQL;
SimpleSQL.Open;
vCOUNT3 := SimpleSQL.Fields[0].AsInteger;
SimpleSQL.Close;
SimpleSQL.DeleteVariable('vOtdel');
SimpleSQL.SQL.Clear;
SimpleSQL.SetVariable('vUserType',3);
SimpleSQL.SQL.Add('select count (*) from mrk.SZ_COMMENTARY_SEO where sz_numb = :vNum and sz_date = :vDate and SZ_TYPE_USER = :vUserType');
SimpleSQL.ExecSQL;
SimpleSQL.Open;
vCOUNT := SimpleSQL.Fields[0].AsInteger;
if vCOUNT > 0 then
  begin
    CommentarySet.SetVariable('TypeofUsr','3');
    CommentarySet.SetVariable('vOtdel','38');
    for i := 1 to vcount do
    begin
     CommentarySet.SetVariable('idStr',i);
     CommentarySet.Refresh;
      if OraclePackage1.CallStringFunction('getUserComment', [vNUm, VDate, '3', i, 38,38]) <> '0'then
      begin
        if CommentarySet.FieldByName('SZ_COMM_ISDEL').AsInteger = 1 then
        begin
         if CommentarySet.FieldByName('SZ_COMM_VAZH').AsInteger = 1 then
          begin
          MUserComments.SelAttributes.Color := clRed;
          MUserComments.SelAttributes.Height := 13;
          MUserComments.SelAttributes.Style := MUserComments.SelAttributes.Style+[fsBold];
          MUserComments.Lines.Add( IntToStr (i) + '. ' + OraclePackage1.CallStringFunction('getUserComment', [vNUm, VDate, '3', i, 38,38]) + '           - '+ '('+
          CommentarySet.FieldByName('comment_date_').AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[CommentarySet.FieldByName('sz_user_id').AsInteger])+ ')');
          end;
          if CommentarySet.FieldByName('SZ_COMM_VAZH').AsInteger = 0 then
          begin
          MUserComments.SelAttributes.Color := clWindowText;
          MUserComments.SelAttributes.Height := 11;
          MUserComments.SelAttributes.Style := MUserComments.SelAttributes.Style-[fsBold];
          MUserComments.SelAttributes.Style := MUserComments.SelAttributes.Style-[fsItalic];
          MUserComments.Lines.Add( IntToStr (i) + '. ' + OraclePackage1.CallStringFunction('getUserComment', [vNUm, VDate, '3', i, 38,38]) + '           - '+ '('+
          CommentarySet.FieldByName('comment_date_').AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[CommentarySet.FieldByName('sz_user_id').AsInteger])+ ')');
          end;
        end;
         if CommentarySet.FieldByName('SZ_COMM_ISDEL').AsInteger = 0 then
        begin
         MUserComments.SelAttributes.Color := clMedGray;
         MUserComments.SelAttributes.Height := 11;
         MUserComments.SelAttributes.Style := MUserComments.SelAttributes.Style+[fsItalic];
         MUserComments.Lines.Add( IntToStr (i) + '. ' + OraclePackage1.CallStringFunction('getUserComment', [vNUm, VDate, '3', i, 38,38]) + '           - '+ '('+
         CommentarySet.FieldByName('comment_date_').AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[CommentarySet.FieldByName('sz_user_id').AsInteger])+ ')');
        end
      end
      else MUserComments.Lines.Add (' ');
    end;
  end
  else MUserComments.Lines.Add (' ');
if vCOUNT3 > 0 then
  begin
  CommentarySet.SetVariable('TypeofUsr','2');
  CommentarySet.SetVariable('vOtdel','38');
    for i := 1 to vcount3 do
    begin
      CommentarySet.SetVariable('idStr',i);
      CommentarySet.Refresh;
      if CommentarySet.FieldByName('SZ_COMM_ISDEL').AsInteger = 1 then
        begin
         if CommentarySet.FieldByName('SZ_COMM_VAZH').AsInteger = 1 then
          begin
          MHeadUComments.SelAttributes.Color := clRed;
          MHeadUComments.SelAttributes.Height := 13;
          MHeadUComments.SelAttributes.Style := MHeadUComments.SelAttributes.Style+[fsBold];
          MHeadUComments.Lines.Add( IntToStr (i) + '. ' + OraclePackage1.CallStringFunction('getUserComment', [vNUm, VDate, '2', i, 38,38]) + '           - '+ '('+
          CommentarySet.FieldByName('comment_date_').AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[CommentarySet.FieldByName('sz_user_id').AsInteger])+ ')');
          end;
          if CommentarySet.FieldByName('SZ_COMM_VAZH').AsInteger = 0 then
          begin
          MHeadUComments.SelAttributes.Color := clWindowText;
          MHeadUComments.SelAttributes.Height := 11;
          MUserComments.SelAttributes.Style := MUserComments.SelAttributes.Style-[fsBold];
          MUserComments.SelAttributes.Style := MUserComments.SelAttributes.Style-[fsItalic];
          MHeadUComments.Lines.Add( IntToStr (i) + '. ' + OraclePackage1.CallStringFunction('getUserComment', [vNUm, VDate, '2', i, 38,38]) + '           - '+ '('+
          CommentarySet.FieldByName('comment_date_').AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[CommentarySet.FieldByName('sz_user_id').AsInteger])+ ')');
          end;
        end;
        if CommentarySet.FieldByName('SZ_COMM_ISDEL').AsInteger = 0 then
        begin
         MHeadUComments.SelAttributes.Color := clMedGray;
         MHeadUComments.SelAttributes.Height := 11;
         MHeadUComments.SelAttributes.Style := MHeadUComments.SelAttributes.Style+[fsItalic];
         MHeadUComments.Lines.Add( IntToStr (i) + '. ' + OraclePackage1.CallStringFunction('getUserComment', [vNUm, VDate, '2', i, 38,38]) + '           - '+ '('+
         CommentarySet.FieldByName('comment_date_').AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[CommentarySet.FieldByName('sz_user_id').AsInteger])+ ')');
        end;
    end;
  end
  else MHeadUComments.Lines.Add (' ');
if vCOUNT2 > 0 then
  begin
  CommentarySet.SetVariable('TypeofUsr','2');
  CommentarySet.SetVariable('vOtdel','33');
   for i := 1 to vcount2 do
    begin
      CommentarySet.SetVariable('idStr',i);
      CommentarySet.Refresh;
      if CommentarySet.FieldByName('SZ_COMM_ISDEL').AsInteger = 1 then
        begin
         if CommentarySet.FieldByName('SZ_COMM_VAZH').AsInteger = 1 then
          begin
            MToComments.SelAttributes.Color := clRed;
            MToComments.SelAttributes.Height := 13;
            MToComments.SelAttributes.Style := MToComments.SelAttributes.Style+[fsBold];
            MToComments.Lines.Add( IntToStr (i) + '. ' + OraclePackage1.CallStringFunction('getUserComment', [vNUm, VDate, '2', i, 38,33]) + '           - '+ '('+
            CommentarySet.FieldByName('comment_date_').AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[CommentarySet.FieldByName('sz_user_id').AsInteger])+ ')');
          end;
          if CommentarySet.FieldByName('SZ_COMM_VAZH').AsInteger = 0 then
          begin
            MToComments.SelAttributes.Color := clWindowText;
            MToComments.SelAttributes.Height := 11;
            MUserComments.SelAttributes.Style := MUserComments.SelAttributes.Style-[fsBold];
            MUserComments.SelAttributes.Style := MUserComments.SelAttributes.Style-[fsItalic];
            MToComments.Lines.Add( IntToStr (i) + '. ' + OraclePackage1.CallStringFunction('getUserComment', [vNUm, VDate, '2', i, 38,33]) + '           - '+ '('+
            CommentarySet.FieldByName('comment_date_').AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[CommentarySet.FieldByName('sz_user_id').AsInteger])+ ')');
          end;
        end;
        if CommentarySet.FieldByName('SZ_COMM_ISDEL').AsInteger = 0 then
        begin
         MToComments.SelAttributes.Color := clMedGray;
         MToComments.SelAttributes.Height := 11;
         MToComments.SelAttributes.Style := MToComments.SelAttributes.Style+[fsItalic];
         MToComments.Lines.Add( IntToStr (i) + '. ' + OraclePackage1.CallStringFunction('getUserComment', [vNUm, VDate, '2', i, 38,33]) + '           - '+ '('+
         CommentarySet.FieldByName('comment_date_').AsString + ' '+ OraclePackage2.CallStringFunction('getNameUser',[CommentarySet.FieldByName('sz_user_id').AsInteger])+ ')');
        end;
    end;
  end
else MToComments.Lines.Add(' ');
end;
end.
