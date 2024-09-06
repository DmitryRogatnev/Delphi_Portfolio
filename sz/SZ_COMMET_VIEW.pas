unit SZ_COMMET_VIEW;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Oracle, Data.DB,
  OracleData, Vcl.ExtCtrls, SZ_VARIABLES, SZ_COMMET_CREAT, SZ_COMMET_EDIT, SZ_CHOOSE_STR,
  Vcl.ComCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  Vcl.Menus, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Mask, DBCtrlsEh,
  DBLookupEh;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SimpleSQL: TOracleDataSet;
    SZ_PACKAGE: TOraclePackage;
    OraclePackage2: TOraclePackage;
    CommentarySet: TOracleDataSet;
    DBGridEh1: TDBGridEh;
    COMMENTARY_DATA: TDataSource;
    PM_GRID: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Close_but: TButton;
    COMMENT_TYPES: TOracleDataSet;
    COMMENT_TYPE_DATA: TDataSource;
    COMMENT_TYPESNAME_TYPE: TStringField;
    COMMENT_TYPESSZ_TYPE_USER: TFloatField;
    COM_TYPE_LCB: TDBLookupComboboxEh;
    CommentarySetCOMMENT_TEXT: TStringField;
    CommentarySetAVTOR: TStringField;
    CommentarySetCOMMENT_DATE_: TStringField;
    CommentarySetSZ_TYPE_USER: TFloatField;
    CommentarySetSZ_COMM_VAZH: TFloatField;
    CommentarySetSZ_COMM_ISDEL: TFloatField;
    CommentarySetSZ_ID: TFloatField;
    CommentarySetID_COM: TFloatField;
    CommentarySetOTDEL_TYPE: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure Close_butClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure COM_TYPE_LCBKeyValueChanged(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Otdel_type :integer;
    /// <summary> ����������� ������ ����������� ��� ���</summary>
		/// <param name="Id_com"> Integer; <br/>  ID �����������  </param>
    /// <returns> Bool <br/> </returns>
    function Is_Comm_delete(Id_com :integer; v_Otdel_type :Integer) :bool;

    /// <summary> ����������� ����������� �������������� �����������</summary>
		/// <param name="Id_com"> Integer; <br/>  ID �����������  </param>
    /// <returns> Bool <br/> </returns>
    function Can_Comm_Edit(Id_com :integer; v_Otdel_type :Integer) :bool;


    /// <summary> ����������� ����������� �������������� �����������</summary>
		/// <param name="Id_com"> Integer; <br/>  ID �����������  </param>
    /// <returns> Bool <br/> </returns>
    function Can_Comm_Add(Sz_Id :integer; v_Otdel_type :Integer) :bool;

    /// <summary> ��������� ����� �/� � ������� ���-(�����) �� (����) </summary>
		/// <param name="SZ_Id"> Integer; <br/>  ID �/�  </param>
    /// <returns> SZ_Name; String; <br/> </returns>
    function Get_SZ_Name_by_Id(SZ_Id :integer) :String;
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses
sz_enter;

{$Region '�������� �����'}

  procedure TForm6.Close_butClick(Sender: TObject);
  begin
    form6.Close;
  end;

{$ENDRegion '�������� �����'}

{$Region '������� ������� �������'}
  //���������� �� ���� ������������
  procedure TForm6.COM_TYPE_LCBKeyValueChanged(Sender: TObject);
  begin
   if COMMENTARYSET.Active then
   begin
      if COM_TYPE_LCB.KeyValue <> 0 then
      begin
        DBGridEh1.StartLoadingStatus('�������� ������! ��������...');
        COMMENTARYSET.SetVariable('TYPEOFUSR', COM_TYPE_LCB.KeyValue);
        COMMENTARYSET.Refresh;
        DBGridEh1.FinishLoadingStatus();
      end
      else if COM_TYPE_LCB.KeyValue = 0 then
      begin
        DBGridEh1.StartLoadingStatus('�������� ������! ��������...');
        COMMENTARYSET.SetVariable('TYPEOFUSR', '%');
        COMMENTARYSET.Refresh;
        DBGridEh1.FinishLoadingStatus();
      end;
   end;
  end;

{$ENDRegion '������� ������� �������'}

{$Region '����������� �����'}
  procedure TForm6.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
    AFont: TFont; var Background: TColor; State: TGridDrawState);
  begin
     if not CommentarySet.IsEmpty then
     begin
         if CommentarySetSZ_COMM_VAZH.AsInteger = 1 then
         begin
           AFont.Color := clRed;
           AFont.Style := AFont.Style + [fsBold];
         end;
         if CommentarySetSZ_COMM_ISDEL.AsInteger = 0 then
         begin
           AFont.Color := clSilver;
           AFont.Style := AFont.Style + [fsItalic];
         end;
     end;
  end;
{$ENDRegion '����������� �����'}

{$Region '����������, �������������� � �������� ������������'}
  //���������� �����������
  procedure TForm6.N1Click(Sender: TObject);
  begin
    if not SZ_Enter.Form1.User_is_admin  then // �������� ���� ������������ �����
      begin // ���� ������������ �� �����
        if not Form6.Can_Comm_Add(CommentarySetSz_ID.AsInteger, v_Otdel_type) then //�������� �� ���������� �������������� ������������
          begin
            MessageDlg('� ��� ��� ���� �� ���������� ������������ � ����� ���������!', MtError, [mbOk], 1);
          end
        else
          begin
             SZ_COMMET_CREAT.Form4.v_Otdel := v_Otdel_type;
             SZ_COMMET_CREAT.Form4.ShowModal; //����� ����� ������������
             DBGridEh1.StartLoadingStatus('�������� ������! ��������...');
             CommentarySet.Refresh;
             DBGridEh1.FinishLoadingStatus();
          end;
      end
      else //���� ������������ �����, �� �� ����� ��������� ����������� � ����� ����� � ����� �/�
      begin
         SZ_COMMET_CREAT.Form4.v_Otdel := v_Otdel_type;
         SZ_COMMET_CREAT.Form4.ShowModal;
         DBGridEh1.StartLoadingStatus('�������� ������! ��������...');
         CommentarySet.Refresh;
         DBGridEh1.FinishLoadingStatus();
      end;
  end;

  //�������������� ������������
  procedure TForm6.N2Click(Sender: TObject);
  begin
    if not SZ_Enter.Form1.User_is_admin  then // �������� ���� ������������ �����
      begin
        if not Form6.Can_Comm_Edit(CommentarySetID_COM.AsInteger, v_Otdel_type) then //�������� �� ���������� �������������� ������������
          begin
              MessageDlg('� ��� ��� ���� �� �������������� ����� ������������!', MtError, [mbOk], 1);
          end
        else
          begin
             if not Form6.Is_Comm_delete(CommentarySetID_COM.AsInteger, v_Otdel_type) then //�������� ������ ����������� ��� ���
              begin
                SZ_COMMET_EDIT.Form5.Id_comm := CommentarySetID_COM.AsInteger;
                SZ_COMMET_EDIT.Form5.OtdelType := v_Otdel_type;
                SZ_COMMET_EDIT.Form5.ShowModal; //������ ����� ��� �������������� �����������
                DBGridEh1.StartLoadingStatus('�������� ������! ��������...');
                CommentarySet.Refresh;
                DBGridEh1.FinishLoadingStatus();
              end
             else if Form6.Is_Comm_delete(CommentarySetID_COM.AsInteger, v_Otdel_type) then
              begin
                MessageDlg('��������� ���������� ������������� ���������!', MtError, [mbOk], 1);
              end;
          end;
      end
      else //���� ������������ �����, �� �� ����� ������������� ����������� � ����� ����� � ����� �/�
      begin
        SZ_COMMET_EDIT.Form5.Id_comm := CommentarySetID_COM.AsInteger;
        SZ_COMMET_EDIT.Form5.OtdelType := v_Otdel_type;
        SZ_COMMET_EDIT.Form5.ShowModal;
        DBGridEh1.StartLoadingStatus('�������� ������! ��������...');
        CommentarySet.Refresh;
        DBGridEh1.FinishLoadingStatus();
      end;
  end;
  //�������� ������������
  procedure TForm6.N3Click(Sender: TObject);
  begin
    if not SZ_Enter.Form1.User_is_admin  then // �������� ���� ������������ �����
      begin
        if not Form6.Can_Comm_Edit(CommentarySetID_COM.AsInteger, v_Otdel_type) then //�������� �� ���������� �������������� ������������
          begin
              MessageDlg('� ��� ��� ���� �� �������� ����� ������������!', MtError, [mbOk], 1);
          end
        else
          begin
             if not Form6.Is_Comm_delete(CommentarySetID_COM.AsInteger, v_Otdel_type) then //�������� ������ ����������� ��� ���
              begin
                DBGridEh1.StartLoadingStatus('�������� ������! ��������...');
                SZ_PACKAGE.CallProcedure('Delete_Comment_by_id', [CommentarySetID_COM.AsInteger, v_otdel_type]);
                CommentarySet.Refresh;
                DBGridEh1.FinishLoadingStatus();
              end
             else if Form6.Is_Comm_delete(CommentarySetID_COM.AsInteger, v_Otdel_type) then
              begin
                MessageDlg('����������� ��� ������!', MtError, [mbOk], 1);
              end;
          end;
      end
      else //���� ������������ �����, �� �� ����� ������� ����������� � ����� ����� � ����� �/�
      begin
        DBGridEh1.StartLoadingStatus('�������� ������! ��������...');
        SZ_PACKAGE.CallProcedure('Delete_Comment_by_id', [CommentarySetID_COM.AsInteger, v_otdel_type]);
        CommentarySet.Refresh;
        DBGridEh1.FinishLoadingStatus();
      end;
  end;

{$ENDRegion '����������, �������������� � �������� ������������'}

{$Region '������ �����'}

  procedure TForm6.FormActivate(Sender: TObject);
  begin
  DBGridEh1.StartLoadingStatus('�������� ������! ��������...');
  //�������� ���� �����
  CommentarySet.Close;
  CommentarySet.ClearVariables;
  CommentarySet.SetVariable('vID',SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID')); // �������� ID �/�
  CommentarySet.SetVariable('vOTDEL_TYPE',v_Otdel_type); // ��������� ���� ������ 1-������ ������ 2-���
  COMMENT_TYPES.Close;
  COMMENT_TYPES.SetVariable('OTDEL_TYPE',v_Otdel_type);
  COMMENT_TYPES.Open;
  //����� ������� �� "���"
  COM_TYPE_LCB.KeyValue := 0;
  CommentarySet.Open;
  Form6.Caption := '����������� � �/� ' + Form6.Get_SZ_Name_by_Id(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'));
  DBGridEh1.FinishLoadingStatus();
  end;

{$ENDRegion '������ �����'}

{$Region '��������������� �������'}
  //����������� ������ ��� ���?
  function TForm6.Is_Comm_delete(Id_com: Integer; v_Otdel_type :Integer) :bool;
  begin
   SimpleSQL.Close;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeleteVariables;
   SimpleSQL.DeclareVariable('Id_com',otinteger);
   SimpleSQL.SetVariable('Id_com', Id_com);
   SimpleSQL.DeclareVariable('v_Otdel_Type',otinteger);
   SimpleSQL.SetVariable('v_Otdel_Type', v_Otdel_Type);
   SimpleSQL.SQL.Add('select t.sz_comm_isdel from mrk.V$SZ_COMMENTARY_ALL t where t.ID_COM = :Id_com and t.Otdel_type = :v_Otdel_type');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   if SimpleSQL.Fields[0].AsInteger = 0 then result := true else result := false;
  end;
//����������� ����� ������������� ��� ���?
  function TForm6.Can_Comm_Edit(Id_com: Integer; v_Otdel_type :Integer) :bool;
  begin
     SimpleSQL.Close;
     SimpleSQL.SQL.Clear;
     SimpleSQL.DeleteVariables;
     SimpleSQL.DeclareVariable('Id_com',otinteger);
     SimpleSQL.SetVariable('Id_com', Id_com);
     SimpleSQL.DeclareVariable('v_Otdel_Type',otinteger);
     SimpleSQL.SetVariable('v_Otdel_Type', v_Otdel_Type);
     SimpleSQL.SQL.Add('select t.sz_user_id from mrk.V$SZ_COMMENTARY_ALL t where t.ID_COM = :Id_com and t.Otdel_type = :v_Otdel_type');
     SimpleSQL.ExecSQL;
     SimpleSQL.Open;
     if SimpleSQL.Fields[0].AsInteger = SZ_Enter.Form1.User_Id then result := true else result := false;
  end;
  //����������� ����� �������� ��� ���?
  function TForm6.Can_Comm_Add(Sz_Id :integer; v_Otdel_type :Integer) :bool;
  begin
     if (Sz_Enter.Form1.User_Type = 1) and (v_Otdel_type = 1) then
     Begin
     SimpleSQL.Close;
     SimpleSQL.SQL.Clear;
     SimpleSQL.DeleteVariables;
     SimpleSQL.DeclareVariable('Sz_Id',otinteger);
     SimpleSQL.SetVariable('Sz_Id', Sz_Id);
     SimpleSQL.SQL.Add('select t.sz_id_cont from mrk.SZ_Main_Op t where t.Sz_Id = :Sz_Id');
     SimpleSQL.ExecSQL;
     SimpleSQL.Open;
     if SimpleSQL.Fields[0].AsInteger = SZ_Enter.Form1.User_Id then result := true else result := false;
     End
     Else if (Sz_Enter.Form1.User_Type <> 1) and (v_Otdel_type = 1)   then result := true;
     if (Sz_Enter.Form1.User_Type = 3) and (v_Otdel_type = 2) then
     Begin
     SimpleSQL.Close;
     SimpleSQL.SQL.Clear;
     SimpleSQL.DeleteVariables;
     SimpleSQL.DeclareVariable('Sz_Id',otinteger);
     SimpleSQL.SetVariable('Sz_Id', Sz_Id);
     SimpleSQL.SQL.Add('select t.sz_id_cont from mrk.SZ_Main_SEO t where t.Sz_Id = :Sz_Id');
     SimpleSQL.ExecSQL;
     SimpleSQL.Open;
     if SimpleSQL.Fields[0].AsInteger = SZ_Enter.Form1.User_Id then result := true else result := false;
     End
     Else if (Sz_Enter.Form1.User_Type <> 3) and (v_Otdel_type = 2)   then result := true;
  end;
  //��������� ����� �/�
  function TForm6.Get_SZ_Name_by_Id(SZ_Id: Integer) :string;
  begin
   SimpleSQL.Close;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeleteVariables;
   SimpleSQL.DeclareVariable('Sz_Id',otinteger);
   SimpleSQL.SetVariable('Sz_Id', SZ_id);
   SimpleSQL.SQL.Add('select (''���-''||t.sz_numb||'' �� ''||t.sz_date) from mrk.SZ_TABLE_TEST t where t.SZ_ID = :SZ_ID');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   result := SimpleSQL.Fields[0].AsString;
  end;
{$ENDRegion '��������������� �������'}

end.
