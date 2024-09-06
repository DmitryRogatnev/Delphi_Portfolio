unit SZ_COMMET_EDIT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, SZ_VARIABLES,
  Oracle, Data.DB, OracleData;

type
  TForm5 = class(TForm)
    Panel3: TPanel;
    EComment: TEdit;
    OraclePackage1: TOraclePackage;
    Vazhn_Check: TCheckBox;
    SimpleSQL: TOracleDataSet;
    Save_but: TButton;
    Close_but: TButton;
    Del_Check: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure Save_butClick(Sender: TObject);
    procedure Close_butClick(Sender: TObject);
    procedure Vazhn_CheckClick(Sender: TObject);
    procedure Del_CheckClick(Sender: TObject);
  private
    { Private declarations }
    v_vazhn, v_del :integer;
  public
    { Public declarations }
    Id_comm :integer;
    OtdelType: integer;
    /// <summary> Получение комментария по его ID</summary>
		/// <param name="Id_com"> Integer; <br/>  ID комментария  </param>
    /// <returns> Comment; String <br/> </returns>
    function Get_Comm_by_Id(Id_com :integer) :String;

    /// <summary> Получение признака важности комментария по его ID</summary>
		/// <param name="Id_com"> Integer; <br/>  ID комментария  </param>
    /// <returns> pr_vazhn; bool <br/> </returns>
    function Get_Comm_Pr_Vazhn_by_Id(Id_com :integer) :Bool;

    /// <summary> Получение признака удаления комментария по его ID</summary>
		/// <param name="Id_com"> Integer; <br/>  ID комментария  </param>
    /// <returns> pr_del; bool <br/> </returns>
    function Get_Comm_Pr_Del_by_Id(Id_com :integer; OtdelType :integer) :Bool;
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses
SZ_Enter, SZ_COMMET_VIEW;

  procedure TForm5.Vazhn_CheckClick(Sender: TObject);
  begin
    if Vazhn_Check.Checked  then
    begin
      v_vazhn := 1;
    end
    else if not Vazhn_Check.Checked then
    begin
      v_vazhn := 0;
    end;
  end;

procedure TForm5.Close_butClick(Sender: TObject);
begin
  form5.Close;
end;

procedure TForm5.Del_CheckClick(Sender: TObject);
begin
 if Del_Check.Checked  then
    begin
      v_del := 0;
    end
    else if not Del_Check.Checked then
    begin
      v_del := 1;
    end;
end;

procedure TForm5.FormActivate(Sender: TObject);
var vazh :integer;
begin
  EComment.Text := Form5.Get_Comm_by_Id(Id_comm);
  Vazhn_Check.Checked := Form5.Get_Comm_Pr_Vazhn_by_Id(Id_comm);
  Del_Check.Checked := Form5.Get_Comm_Pr_Del_by_Id(Id_comm, OtdelType);
  if SZ_Enter.Form1.User_is_admin then
  begin
    Del_Check.Visible := true;
  end;
end;

procedure TForm5.Save_butClick(Sender: TObject);
var
vData, vText :string;
buttonSelected :integer;
begin
  vText := EComment.Text + ' (ред.)';//Указывам что комментарий редактировался
  buttonSelected := MessageDlg ('Обновить комментарий?', mtConfirmation, mbOkCancel, 0);
    if buttonSelected = mrOk then
    begin
      OraclePackage1.CallProcedure('Edit_Comment_by_id',[Id_comm, vText, SZ_COMMET_VIEW.form6.v_otdel_type, v_vazhn, v_del]);
    end;
  form5.Close;
end;

{$Region 'Вспомогательные функции'}
  //Получение комментария
  function TForm5.Get_Comm_by_Id(Id_com: Integer) :string;
  var
  returning_string :string;
  edit_tag_pos :integer;
  begin
    returning_string := OraclePackage1.CallStringFunction('Get_Comment_By_Id', [Id_comm, SZ_COMMET_VIEW.form6.v_otdel_type]);
    edit_tag_pos := Pos (' (ред.)', returning_string);
    if edit_tag_pos <> 0 then //Если комментарий уже был редактирован, то убираем обозначение редактирования
    begin
      result := Copy (returning_string, 1, edit_tag_pos - 1);
    end
    else result := returning_string;
  end;
  //Получение признака важности комментария
  function TForm5.Get_Comm_Pr_Vazhn_by_Id(Id_com: Integer) :bool;
  begin
    SimpleSQL.Close;
    SimpleSQL.SQL.Clear;
    SimpleSQL.DeclareVariable('Id_Com',otInteger);
    SimpleSQL.DeclareVariable('v_otdel_type',otInteger);
    SimpleSQL.SetVariable('Id_Com', Id_com);
    SimpleSQL.SetVariable('v_otdel_type', SZ_COMMET_VIEW.form6.v_otdel_type);
    SimpleSQL.SQL.Add('select t.sz_comm_vazh from V$SZ_COMMENTARY_ALL t where id_com = :Id_Com and otdel_type = :v_otdel_type');
    SimpleSQL.ExecSQL;
    SimpleSQL.Open;
    if SimpleSQL.Fields[0].AsInteger = 1 then
    begin
      v_vazhn := 1;
      result := true;
    end
    else if SimpleSQL.Fields[0].AsInteger = 0 then
    begin
      v_vazhn := 0;
      result := false;
    end;
  end;
  //Получение признака удаления комментария
  function TForm5.Get_Comm_Pr_Del_by_Id(Id_com :integer; OtdelType :integer) :bool;
  begin
    SimpleSQL.Close;
    SimpleSQL.SQL.Clear;
    SimpleSQL.DeclareVariable('Id_Com',otInteger);
    SimpleSQL.DeclareVariable('v_otdel_type',otInteger);
    SimpleSQL.SetVariable('Id_Com', Id_com);
    SimpleSQL.SetVariable('v_otdel_type', OtdelType);
    SimpleSQL.SQL.Add('select t.sz_comm_isdel from V$SZ_COMMENTARY_ALL t where id_com = :Id_Com and otdel_type = :v_otdel_type');
    SimpleSQL.ExecSQL;
    SimpleSQL.Open;
    if SimpleSQL.Fields[0].AsInteger = 0 then
    begin
      v_del := 0;
      result := true;
    end
    else if SimpleSQL.Fields[0].AsInteger = 1 then
    begin
      v_del := 1;
      result := false;
    end;
  end;
{$ENDRegion 'Вспомогательные функции'}
end.
