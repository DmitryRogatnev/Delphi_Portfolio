unit SZ_GOZ_EXP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SZ_VARIABLES,ShellApi, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Oracle, Data.DB, OracleData,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm34 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGridEh1: TDBGridEh;
    DS_INFO_MAIN: TDataSource;
    INFO_MAIN: TOracleDataSet;
    OracleSession1: TOracleSession;
    SimpleSQL: TOracleDataSet;
    OpenDialog1: TOpenDialog;
    INFO_MAINSZ_ID: TFloatField;
    INFO_MAINSZ_NUMB: TFloatField;
    INFO_MAINSZ_NAME: TStringField;
    INFO_MAINUSERS: TFloatField;
    INFO_MAINSZ_TERM: TStringField;
    INFO_MAINSZ_DATA: TDateTimeField;
    INFO_MAINSZ_NOTE: TStringField;
    INFO_MAINSZ_DATE: TDateTimeField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
    vMainDir:string;
  end;

var
  Form34: TForm34;

implementation

{$R *.dfm}

procedure TForm34.Button1Click(Sender: TObject);
var j,i:integer;
      s,vexit, vdatedir,vuserdir, vfiledir:string;
      vprn :boolean;
begin
  vprn:=true;
  if OpenDialog1.Execute then
   begin
     s:='';
     j:=Length(OpenDialog1.FileName);
     for i:=1 to j do
       begin
         if (copy(OpenDialog1.FileName,j-i,1)='\') and vprn then
           begin
             s:=copy(OpenDialog1.FileName,j-i+1,i+1);
             vprn:=false;
           end;
       end;
      vdatedir:= vMainDir+'\'+SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE');
      vuserdir := vMainDir+'\'+SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE')+'\'+ IntToStr(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
      vfiledir := vMainDir+'\'+SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE')+'\'+IntToStr(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'))+'\'+s;
     if not DirectoryExists(vdatedir) then
       begin
         CreateDir(vdatedir);
       end;
     if not DirectoryExists(vuserdir) then
       begin
         CreateDir(vuserdir);
       end;
     if FileExists(vfiledir) then
       begin
         ShowMessage('Такой файл уже прикреплён!');
       end
     else
       begin
        vexit := vMainDir+'\'+SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE')+'\'+IntToStr(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'))+'\'+s;
        CopyFile(PChar(OpenDialog1.FileName),PChar(vexit),true);
        info_main.Edit;
        info_main.Append;
        info_main.FieldByName('SZ_NAME').AsString := s;
        info_main.FieldByName('SZ_NUMB').AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB');
        info_main.FieldByName('SZ_DATE').AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE');
        info_main.FieldByName('SZ_ID').AsString := IntToStr(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')) + IntToStr(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
        info_main.Post;
        info_main.Refresh;
       end;
   end;
end;

procedure TForm34.Button2Click(Sender: TObject);
begin
    if not info_main.IsEmpty then
  begin
    if FileExists(vMainDir+'\'+info_main.FieldByName('SZ_Date').AsString+'\'+info_main.FieldByName('SZ_NUMB').AsString+'\'+info_main.FieldByName('SZ_NAME').AsString) then
         begin
            ShellExecute(handle,nil,PChar(vMainDir+'\'+info_main.FieldByName('SZ_Date').AsString+'\'+info_main.FieldByName('SZ_NUMB').AsString+'\'+info_main.FieldByName('SZ_NAME').AsString),nil,nil,SW_SHOWNORMAL);
         end;
  end;
end;

procedure TForm34.Button3Click(Sender: TObject);
var buttonSelected :integer;
begin
 buttonSelected := MessageDlg ('Удалить файл?', mtConfirmation, mbOkCancel, 5);
  if buttonSelected = mrOk then
  begin
    if FileExists(vMainDir+'\'+info_main.FieldByName('SZ_Date').AsString+'\'+info_main.FieldByName('SZ_NUMB').AsString+'\'+info_main.FieldByName('SZ_NAME').AsString) then
       begin
         if DeleteFile(vMainDir+'\'+info_main.FieldByName('SZ_Date').AsString+'\'+info_main.FieldByName('SZ_NUMB').AsString+'\'+info_main.FieldByName('SZ_NAME').AsString) then
         begin
         ShowMessage('Файл удален!');
         info_main.Delete;
         info_main.Refresh;
         end
         else
         begin
          ShowMessage('Ошибка!- '+ IntToStr(GetLastError));
         end;
       end;
  end;
end;

procedure TForm34.Button4Click(Sender: TObject);
begin
  form34.Close;
end;

procedure TForm34.FormActivate(Sender: TObject);
begin
  info_main.Close;
  vMainDir:='\\Server\forms\SZ_GOZ_EXP';
  Info_main.SetVariable('vNum',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
  Info_main.SetVariable('vdate',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_DATE'));
  info_main.Open;
  Info_main.Refresh;
  form34.Caption :=  form34.Caption +  intTostr(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NUMB'));
end;

end.
