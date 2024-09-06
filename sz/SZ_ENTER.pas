unit SZ_ENTER;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SZ_MAIN, SZ_MAIN_HEAD,
  SZ_MAIN_OSTD, SZ_MAIN_SEO, SZ_SEO_HEAD, Oracle, Data.DB, SZ_VARIABLES,
  OracleData, Vcl.ExtCtrls, Vcl.AppEvnts, Vcl.Menus, SZ_MARKETING, SZ_ADMIN, SZ_ASUP,
  System.ImageList, Vcl.ImgList, ShellApi, SZ_CHS_DOL, Udm_Main, SZ_ASUP_CHECK, DynVarsEh;

type
  TForm1 = class(TForm)
    CBUserName: TComboBox;
    EPassword: TEdit;
    Label1: TLabel;
    CBTerminal: TCheckBox;
    BtnOK: TButton;
    BtnCancel: TButton;
    CBUserId: TComboBox;
    OraclePackage1: TOraclePackage;
    OracleDataSet1: TOracleDataSet;
    OracleDataSet1SZ_ID_USERS: TFloatField;
    OracleDataSet2: TOracleDataSet;
    OraclePackage2: TOraclePackage;
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ImageList1: TImageList;
    Timer1: TTimer;
    USERS_DBA: TOracleDataSet;
    USERS_DBAID: TFloatField;
    USERS_DBASURNAME: TStringField;
    USERS_DBANAME: TStringField;
    USERS_DBAPATRONYMIC: TStringField;
    USERS_DBAPASSWORD: TStringField;
    USERS_DBAID_TYPE_USERS: TIntegerField;
    USERS_DBAID_TYPE_OTDEL: TIntegerField;
    USERS_DBASTATUS: TIntegerField;
    USERS_DBAHEADS: TIntegerField;
    USERS_DBASIGNBMP: TBlobField;
    USERS_DBASIGNBMP1: TBlobField;
    USERS_DBAPHONE: TStringField;
    USERS_DBAUSER_ONLINE: TFloatField;
    USERS_DBAENTER_DATE: TDateTimeField;
    USERS_DBAUSER_ADMIN: TFloatField;
    USERS_DBAAUTO_LOAD: TFloatField;
    USERS_DBAID_TYPE_HEADS: TIntegerField;
    USERS_DBAID_MF: TIntegerField;
    USERS_DBAID_SR_SCL: TIntegerField;
    USERS_DBAID_TYPE_DOP: TFloatField;
    Timer2: TTimer;
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure CBTerminalClick(Sender: TObject);
    procedure CBUserNameChange(Sender: TObject);
    procedure EPasswordKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    TerminalName :string;
    User_Lnum, User_Id, User_Type :integer;
    User_is_admin :bool;

    /// <summary> ��������� ���� ������������� �� ������� ������ ������������</summary>
		/// <param name="User_lnum"> Integer; <br/>  ������ ����� ������������ �� pers.kadry   </param>
    /// <returns> Otdel_Id; String <br/> </returns>
    function Get_User_Otdel_by_User_LNUM(User_lnum :integer) :integer;
    /// <summary> ��������� ID ������������ �� ������� ������ ������������</summary>
		/// <param name="User_lnum"> Integer; <br/>  ������ ����� ������������ �� pers.kadry   </param>
    /// <returns> User_Id; String <br/> </returns>
    function Get_User_Id_by_User_LNUM(User_lnum :integer) :integer;
    /// <summary> ��������� ���� ������������ �� ������� ������ ������������</summary>
		/// <param name="User_lnum"> Integer; <br/>  ������ ����� ������������ �� pers.kadry   </param>
    /// <returns> User_Id; String <br/> </returns>
    function Get_User_Type_by_User_LNUM(User_lnum :integer) :integer;
    /// <summary> ����������� ������������ ������ �� ������� ������ ������������</summary>
		/// <param name="User_lnum"> Integer; <br/>  ������ ����� ������������ �� pers.kadry   </param>
    /// <returns> Bool <br/> </returns>
    function Is_User_Admin(User_lnum :integer) :bool;
    /// <summary> ����������� ������� � ������������ ���. ��������� �� ������� ������ ������������</summary>
		/// <param name="User_lnum"> Integer; <br/>  ������ ����� ������������ �� pers.kadry   </param>
    /// <returns> Bool <br/> </returns>
    function Is_User_have_second_post(User_lnum :integer) :bool;
    function  F_Gen_SQL_Params_For_Chs_Form( In_Params: TDynVarsEh ): TDynVarsEh;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{$Region '�������� ������'}

  procedure TForm1.BtnOKClick(Sender: TObject);
  var
  Usertype, UserOtdel, UserAdmin :integer;
  begin
        //����������� ID ������������
        CBUserId.ItemIndex:=CBUserName.ItemIndex;
        //����������� ������ ������������
        UserOtdel := Form1.Get_User_Otdel_by_User_LNUM(User_lnum);
        //�������� ���� ������������ �����
        User_is_admin := Form1.Is_User_Admin(User_Lnum);
        //����������� ���� ������������
        UserType := Form1.Get_User_Type_by_User_LNUM(User_Lnum);
        //���� �����, �� ����������� ���� ������ ����
        if User_is_admin then
        begin
           SZ_ADMIN.Form23.ShowModal;
           SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('UserType', SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('AdminUserType'));
           UserType :=  SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('AdminUserType'); //��������� ��������� ����
           UserOtdel := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('AdminUserOtdel');//-/-
           SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminOnline', 1);//-/- ��������� ����� ������
        end
        else
        begin
          SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('UserType', UserType);
          SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('AdminOnline', 0);
        end;
        //������� ������� ����� � ���������
        OraclePackage2.CallProcedure('UserOnline',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '1']);
        TrayIcon1.Visible := false;
        //�������� ������� � ������������ �������������� ���������
        if Form1.Is_User_have_second_post(User_Lnum) then
         begin
          //������ ����� �� �����
          SZ_CHS_DOL.Form37.ShowModal;
          UserType := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserType');
         end;
        //������ ���� � ����������� �� ���� ������������
         case UserType  of
         //��������� ������ ������
          1:
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
             //����� �������� ����� ���������� ���������� ����� �
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 133);
             //���� ������ �������� � ���� �� ����������� � ����
             if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Tray' then
             begin
               TrayIcon1.Visible := true;
               form1.Visible := false;
             end;
             //���� ������ "�����", �� ���������� ���� ����������� ��� ����� ������������
             if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Exit' then
             begin
               form1.AlphaBlendValue := 255;
             end;
           end;
          //���������
           2:
          begin
            //������ ������
             if UserOtdel = 33 then
             begin
                SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
                SZ_MAIN_HEAD.Form12.ShowModal;
                SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 233);
                 if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Tray' then
               begin
                 TrayIcon1.Visible := true;
                 form1.Visible := false;
               end;
               if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Exit' then
               begin
                 form1.AlphaBlendValue := 255;
               end;
             end;
             //���
             if UserOtdel = 38 then
             begin
                SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
                SZ_SEO_HEAD.Form18.ShowModal;
                SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 238);
                 if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Tray' then
               begin
                 TrayIcon1.Visible := true;
                 form1.Visible := false;
               end;
               if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Exit' then
               begin
                 form1.AlphaBlendValue := 255;
               end;
             end;
          end;
          //��������� ���
          3:
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
             SZ_MAIN_SEO.Form14.ShowModal;
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 333);
               if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Tray' then
             begin
               TrayIcon1.Visible := true;
               form1.Visible := false;
             end;
             if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Exit' then
             begin
               form1.AlphaBlendValue := 255;
             end;
          end;
          //��������� ����
          4:
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
             SZ_MAIN_OSTD.Form13.ShowModal;
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 433);
               if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Tray' then
             begin
               TrayIcon1.Visible := true;
               form1.Visible := false;
             end;
             if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Exit' then
             begin
               form1.AlphaBlendValue := 255;
             end;
          end;
          //���. ���������� (�� ������ ������ ������ �� �������� �/� �� ���)
          5:
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
             SZ_MARKETING.Form22.ShowModal;
             Form1.Close;
          end;
          //��������� �������� ()
          6:
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
             SZ_ASUP.Form25.ShowModal;
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 633);
               if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Tray' then
             begin
               TrayIcon1.Visible := true;
               form1.Visible := false;
             end;
             if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Exit' then
             begin
               form1.AlphaBlendValue := 255;
             end;
          end;
          //��������� �������� (�������� ��)
          7:
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable( 'Status', 'Enter' );
             SZ_ASUP_CHECK.Form40.ShowModal;
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 733);
               if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Tray' then
             begin
               TrayIcon1.Visible := true;
               form1.Visible := false;
             end;
             if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('Status') = 'Exit' then
             begin
               form1.AlphaBlendValue := 255;
             end;
          end;
         end;
  end;

  //������������ �� ������� ������� Enter
  procedure TForm1.EPasswordKeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  begin
     if key = 13 then
     begin
       form1.BtnOKClick(nil);
     end;
  end;

{$ENDRegion '�������� ������'}

{$Region '����������� ������������ �� ���������'}

  procedure TForm1.CBTerminalClick(Sender: TObject);
  var
  i :integer;
  begin
    //���� ������� � ������������ ������������ �� ��������� ����������
   if CBTerminal.Checked then
   begin
    //������� ����� ��� ����������� � ID
     CBUserID.Clear;
     CBUserName.Clear;
   //��������� ������� ������������
     CBUserID.Items.Add(IntToStr(User_id));
     CBUserName.Items.Add(OraclePackage1.CallStringFunction('getNameUser',[User_id]));
     CBUserName.Text := CBUserName.Items[0];
     CBUserID.Text := CBUserID.Items[0];
   end
   //���� ���, ��
   else
   begin
   //������� ����� ��� ����������� � ID
   CBUserID.Items.Clear;
   CBUserName.Items.Clear;
   //��������� ���� ������������� ��������� ��� ������
   OracleDataSet1.First;
     for I := 1 to OracleDataSet1.RecordCount do  begin
       CBUserID.Items.Add(OracleDataSet1SZ_ID_USERS.AsString);
       CBUserName.Items.Add(OraclePackage1.CallStringFunction('getNameUser',[OracleDataSet1SZ_ID_USERS.AsString]));
       OracleDataSet1.Next;
     end;
   end;
  end;

{$ENDRegion '����������� ������������ �� ���������'}

{$Region '��������� ������������ � ID ������������ ��� ������ ������������'}

procedure TForm1.CBUserNameChange(Sender: TObject);
begin
    CBUserId.ItemIndex:=CBUserName.ItemIndex;
end;

{$ENDRegion '��������� ������������ � ID ������������ ��� ������ ������������'}

{$Region '�������� ���������'}
  //��������� ������
procedure TForm1.FormDeactivate(Sender: TObject);
  begin
   OraclePackage2.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']);
  end;

  function TForm1.F_Gen_SQL_Params_For_Chs_Form(
  In_Params: TDynVarsEh): TDynVarsEh;
Var
  searchResult: TSearchRec;
  Counter: Integer;
  Result_Params: TDynVarsEh;
  Filter_Before, Filter_After: String;
begin
  Result_Params := In_Params;

  If In_Params.DynVar[ 'Find' ].AsString = 'Tema'
  Then
  Begin
    {$Region '������������ ���� ��'}
    Result_Params.DynVar['V_SQL_Text'].AsString :=
                                    ' Select Distinct t.Sz_Tema '
                                    + ' From  Mrk.V$SZ_MAIN_OP t'
                                    + ' Where t.Sz_Tema Is Not Null '
                                    + ' And /*FILTER_START*/ (1=1) /*FILTER_END*/ ';

    if In_Params.DynVar[ 'V_Columns' ].IsNull
    Then
    Begin
      Result_Params.DynVar[ 'V_Columns' ].AsString := '<0>Sz_Tema</0>'
                                                      + '<end>';
      Result_Params.DynVar[ 'V_Titles' ].AsString := '<0>����</0>'
                                                      + '<end>';
    End;
    {$EndRegion '������������ ���� ��'}

  End;


  If ( Not In_Params.DynVar[ 'Filter' ].IsNull )
  Then
  Begin
    Filter_Before := Copy( Result_Params.DynVar['V_SQL_Text'].AsString,
                         0,
                         Pos('/*FILTER_START*/', Result_Params.DynVar['V_SQL_Text'].AsString)-1 );

    Filter_Before := Copy( Result_Params.DynVar['V_SQL_Text'].AsString,
                         Pos('/*FILTER_END*/', Result_Params.DynVar['V_SQL_Text'].AsString),
                         Length(Result_Params.DynVar['V_SQL_Text'].AsString) - Pos('/*FILTER_END*/', Result_Params.DynVar['V_SQL_Text'].AsString) );

    Result_Params.DynVar['V_SQL_Text'].AsString := Filter_Before
                                                     + ' ( ' +  In_Params.DynVar[ 'Filter' ].AsString + ' )'
                                                     + Filter_After;
  End;

  //Clipboard.AsText := Result_Params.DynVar['V_SQL_Text'].AsString;
  Result := Result_Params;
end;

//���� ������ ������ "�����" � PopupMenu ������ ����
  procedure TForm1.N2Click(Sender: TObject);
  begin
   OraclePackage2.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']);
   form1.Close;
  end;
  //���� ������ ������ "������"
  procedure TForm1.BtnCancelClick(Sender: TObject);
  begin
    Form1.Close;
  end;

{$ENDRegion '�������� ���������'}

{$Region '�������� ����, ����� ����'}

  procedure TForm1.N1Click(Sender: TObject);
  begin
     TrayIcon1.Visible := false;
     form1.Visible := true;
     //����� ����� ��� ��������
         case SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('RunningForm')  of
         //���� ���� ������ ����� ���������� ������ ������
          133:
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter'); // ��������� ������� � "����" - ����� �����
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 133); //��������� ����� ���������� �����
             form1.Visible := false; //�� ���������� ���� �����������
             TrayIcon1.Visible := true;
           end;
         //����� ���������� ������ ������
           233:
          begin
              SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
              SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 233);
              SZ_MAIN_HEAD.Form12.ShowModal;
              form1.Visible := false;
              TrayIcon1.Visible := true;
          end;
          //����� ��������� ���
          238:
          begin
              SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
              SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 238);
              SZ_SEO_HEAD.Form18.ShowModal;
              form1.Visible := false;
              TrayIcon1.Visible := true;
          end;
          //����� ���������� ���
          333:
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
             SZ_MAIN_SEO.Form14.ShowModal;
             form1.Visible := false;
             TrayIcon1.Visible := true;
          end;
          //����� ���������� ����
          433:
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 433);
             SZ_MAIN_OSTD.Form13.ShowModal;
             form1.Visible := false;
             TrayIcon1.Visible := true;
          end;
          //����� ���������� ��������
          633:
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Enter');
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('RunningForm', 633);
             SZ_ASUP.Form25.ShowModal;
             form1.Visible := false;
             TrayIcon1.Visible := true;
          end;
          //����� ���������� ��������
          733:
          begin
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable( 'Status', 'Enter' );
             SZ_VARIABLES.Form20.OracleDataSet1.SetVariable( 'RunningForm', 733 );
             SZ_ASUP_CHECK.Form40.ShowModal;
             form1.Visible := false;
             TrayIcon1.Visible := true;
          end;
         end;
  end;
  {***************��� �� ����������� �������� �� ������ � ����**********************}

{$ENDRegion '�������� ����, ����� ����'}

{$Region '�������������� ����� ����������� �� ����'}

  procedure TForm1.N3Click(Sender: TObject);
  begin
   form1.AlphaBlendValue := 255;
   form1.Visible := true;
   form1.WindowState := wsNormal;
   form1.FormStyle := fsStayOnTop;
   form1.FormStyle := fsNormal;
  end;

{$ENDRegion '�������������� ����� ����������� �� ����'}

{$Region '������ ������������'}

  procedure TForm1.Timer1Timer(Sender: TObject);
  begin
   Timer1.Enabled := false;
   form1.BtnOKClick(nil);
  end;

{$ENDRegion '������ ������������'}

{$Region '������ ����� �����������'}
//�� ������� �����
  procedure TForm1.FormCreate(Sender: TObject);
begin
   //������� ����� �����������
   form1.AlphaBlend := true;
   form1.AlphaBlendValue := 0;
end;

  procedure TForm1.Timer2Timer(Sender: TObject);
    var
    vexit:string;
  begin
    If DM_Main.Vg_Booted = True Then
    begin
      Timer2.Enabled := False;

     //������ ���������
     OracleDataSet1.Open;
     USERS_DBA.Close;
     USERS_DBA.Open;
     //��������� ����������
     SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_TERMINAL_NAME', otString);
     SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('SZ_PROG_VERSION', otString);
     SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('RunningForm',otInteger);
     SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('UserName',otString);
     SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('UserId',otInteger);
     SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('Status',otString);
     SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('UserType',otInteger);
     SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('AdminOnline',otInteger);
     SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('AdminUserType',otInteger);
     SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('AdminUserOtdel',otInteger);
     User_Lnum := StrToInt(UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_Emp_Id()',[]));
     User_Id := Form1.Get_User_Id_by_User_LNUM(user_lnum);
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('UserId',  Form1.Get_User_Id_by_User_LNUM(user_lnum));
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('UserName', OraclePackage1.CallStringFunction('getNameUser',[User_Id]));
     //��������� ������ ���������
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_PROG_VERSION', ' v.1.1.1.0');
     form1.Caption := '���� �������� ��������� ������������' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_PROG_VERSION');
     //������� �����������
     CBUserID.Clear;
     CBUserName.Clear;
     //����������� �����������
     CBUserName.Text := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserName');
     CBUserName.Items.Add(SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserName'));
     CBUserID.Text := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId');
     CBUserID.Items.Add(IntToStr(User_id));
     CBUserName.Text := CBUserName.Items[0];
     CBUserID.Text := CBUserID.Items[0];
     if CBUserName.Items.Count>0 then
      CBUserName.ItemIndex:=0;
     form1.ActiveControl:=EPassword;
     Form1.BtnOKClick(nil);
     {//�������� ������� ������ ��������� � ������������ Windows
     if (OraclePackage1.CallStringFunction('CheckAutoLoad',[User_Id])) = 1 then
       begin
          //���� ����, �� ��������� ������������
         if FileExists('C:\Users\' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_TERMINAL_NAME') + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SZ_SEO1.lnk') then
         begin
           Timer1.Enabled := true;
         end
         //���� ���, �� �������� � ���������
         else if not FileExists('C:\Users\' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_TERMINAL_NAME') + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SZ_SEO1.lnk') then
         begin
          vexit := 'C:\Users\' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_TERMINAL_NAME') + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SZ_SEO1.lnk';
          CopyFile(PChar('\\server\forms\SZ_SEO1.lnk'),PChar(vexit),true);
          Timer1.Enabled := true;
         end;
       end; }
    end
    Else
    begin
      Exit;
    end;
  end;

{$ENDRegion '������ ����� �����������'}

{$Region '��������������� �������'}

 function TForm1.Get_User_Otdel_by_User_LNUM(User_lnum: Integer) :integer;
 begin
  OracleDataSet2.Close;
  OracleDataSet2.SQL.Clear;
  OracleDataSet2.DeclareVariable('User_Lnum',otinteger);
  OracleDataSet2.SetVariable('User_Lnum', User_lnum);
  OracleDataSet2.SQL.Add('select t.id_type_otdel from mrk.sz_users t where t.user_lnum = :User_Lnum');
  OracleDataSet2.ExecSQL;
  OracleDataSet2.Open;
  Result := OracleDataSet2.Fields[0].AsInteger;
 end;

 function TForm1.Get_User_Id_by_User_LNUM(User_lnum: Integer) :integer;
 begin
  OracleDataSet2.Close;
  OracleDataSet2.SQL.Clear;
  OracleDataSet2.DeclareVariable('User_Lnum',otinteger);
  OracleDataSet2.SetVariable('User_Lnum', User_lnum);
  OracleDataSet2.SQL.Add('select t.id from mrk.sz_users t where t.user_lnum = :User_Lnum');
  OracleDataSet2.ExecSQL;
  OracleDataSet2.Open;
  Result := OracleDataSet2.Fields[0].AsInteger;
 end;

 function TForm1.Get_User_Type_by_User_LNUM(User_lnum: Integer) :integer;
 begin
  OracleDataSet2.Close;
  OracleDataSet2.SQL.Clear;
  OracleDataSet2.DeclareVariable('User_Lnum',otinteger);
  OracleDataSet2.SetVariable('User_Lnum', User_lnum);
  OracleDataSet2.SQL.Add('select t.id_type_users from mrk.sz_users t where t.user_lnum = :User_Lnum');
  OracleDataSet2.ExecSQL;
  OracleDataSet2.Open;
  Result := OracleDataSet2.Fields[0].AsInteger;
 end;

  function TForm1.Is_User_Admin(User_lnum: Integer) :bool;
 begin
  OracleDataSet2.Close;
  OracleDataSet2.SQL.Clear;
  OracleDataSet2.DeclareVariable('User_Lnum',otinteger);
  OracleDataSet2.SetVariable('User_Lnum', User_lnum);
  OracleDataSet2.SQL.Add('select t.user_admin from mrk.sz_users t where t.user_lnum = :User_Lnum');
  OracleDataSet2.ExecSQL;
  OracleDataSet2.Open;
  if OracleDataSet2.Fields[0].AsInteger = 1 then result := true else result := false;
 end;

   function TForm1.Is_User_Have_Second_Post(User_lnum: Integer) :bool;
 begin
  OracleDataSet2.Close;
  OracleDataSet2.SQL.Clear;
  OracleDataSet2.DeclareVariable('User_Lnum',otinteger);
  OracleDataSet2.SetVariable('User_Lnum', User_lnum);
  OracleDataSet2.SQL.Add('select t.id_type_dop from mrk.sz_users t where t.user_lnum = :User_Lnum');
  OracleDataSet2.ExecSQL;
  OracleDataSet2.Open;
  if OracleDataSet2.Fields[0].AsInteger <> 0 then result := true else result := false;
 end;
{$ENDRegion '��������������� �������'}
end.
