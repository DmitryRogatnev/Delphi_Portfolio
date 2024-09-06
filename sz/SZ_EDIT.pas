unit SZ_EDIT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, SZ_VARIABLES, OracleData, Oracle, SZ_NAMECHS, SZ_GOZ_EXP, SZ_ADD_OBR,
  DBGridEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.Mask, DBCtrlsEh, DBLookupEh, Vcl.Menus;

type
  TForm10 = class(TForm)
    Panel2: TPanel;
    Save_but: TButton;
    Close_but: TButton;
    Panel3: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    FROM_LCB: TDBLookupComboboxEh;
    GroupBox2: TGroupBox;
    COPY_LCB: TDBLookupComboboxEh;
    GroupBox3: TGroupBox;
    TO_LCB: TDBLookupComboboxEh;
    GroupBox4: TGroupBox;
    ETema: TEdit;
    ENum_SZ: TEdit;
    EDate: TEdit;
    OSTD_Check: TCheckBox;
    DBGridEh1: TDBGridEh;
    Info_main: TOracleDataSet;
    Info_mainSZ_NUMB: TFloatField;
    Info_mainSZ_DATE: TDateTimeField;
    Info_mainSZ_NAME_OB: TStringField;
    Info_mainSZ_IBYAL_OB: TStringField;
    Info_mainID_CONT: TFloatField;
    Info_mainID_STR: TFloatField;
    Info_mainSZ_CHECK: TFloatField;
    Info_mainSZ_CODE_OB: TStringField;
    SimpleSQL: TOracleDataSet;
    SZ_PACKAGE: TOraclePackage;
    SZ_ENTER_PKG: TOraclePackage;
    DS_INFO: TDataSource;
    FROM_DB: TOracleDataSet;
    FROM_DATA: TDataSource;
    TO_DB: TOracleDataSet;
    TO_DATA: TDataSource;
    COPY_DATA: TDataSource;
    COPY_DB: TOracleDataSet;
    COPY_DBUSER_TO: TStringField;
    COPY_DBID: TFloatField;
    Delete_BTN: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    EDIT_SZ_INFO_DB: TOracleDataSet;
    EDIT_SZ_INFO_DBFROM_ID: TFloatField;
    EDIT_SZ_INFO_DBTO_ID: TFloatField;
    EDIT_SZ_INFO_DBCOPY_ID: TFloatField;
    EDIT_SZ_INFO_DBSZ_NUMB: TFloatField;
    EDIT_SZ_INFO_DBSZ_DATE: TDateTimeField;
    EDIT_SZ_INFO_DBSZ_TEMA: TStringField;
    EDIT_SZ_INFO_DBSZ_KR: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure Save_butClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Close_butClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure OSTD_CheckClick(Sender: TObject);
    procedure COPY_LCBKeyValueChanged(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Info_mainNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    isKR :integer;
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}
uses
Sz_Enter, Sz_main;

procedure TForm10.COPY_LCBKeyValueChanged(Sender: TObject);
begin
  if COPY_LCB.KeyValue = 499999 then //��
 begin
   isKR := 1; //������������� ���� � ���, ��� "��� ������������ � ����"
   OSTD_Check.Checked := true; //������������� ������� � �������� "��� ������������ � ����"
 end
 else //� ��������� ������
 begin
   isKR := 0; //������� ���� � ���, ��� "��� ������������ � ����"
   OSTD_Check.Checked := false; //������� ������� � �������� "��� ������������ � ����"
 end;
end;

procedure TForm10.OSTD_CheckClick(Sender: TObject);
begin
  if OSTD_Check.Checked then //���� ����� � �������� �����������
  begin
   isKR := 1; //������������� ���� � ���, ��� ��� ������������
   COPY_LCB.KeyValue := 499999; //�������������� � ����� "�����" �������� "-"
  end
  else if not OSTD_Check.Checked then //���� ����� � �������� �� �����������
  begin
   isKR := 0;
   COPY_DB.First;  //�������������� � ����� "�����" ������ �������� �� ������ ����������� � ����
   COPY_LCB.Text := COPY_DBUSER_TO.AsString;
  end;
end;
//����������� ����� �������
procedure TForm10.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
 if not Info_Main.IsEmpty then
      begin
       //���� ����� ��� ������, �� � ������ ������� ������������
       if (Info_mainSZ_CODE_OB.AsString = '') and ((Info_mainSZ_NAME_OB.AsString <> '') or (Info_mainSZ_IBYAL_OB.AsString <> ''))  then
       begin
         Background := $00C1B6FF; //���� ����: �������
         AFont.Color := clRed; //���� ������: �������
         AFont.Style := AFont.Style + [fsBold]; //����� ������: ������
       end;
      end;
end;

{$Region '�������� �/�'}

  procedure TForm10.Button2Click(Sender: TObject);
  var buttonSelected :integer;
  begin
  //������� �������� �� ��������
    buttonSelected := MessageDlg ('�� �������� ��� ������ ������� ������ �/�?', mtConfirmation, mbOkCancel, 5);
    if buttonSelected = mrOk then
    begin
       buttonSelected := MessageDlg ('�� ����� �������� ��� ������ ������� ������ �/�?', mtConfirmation, mbOkCancel, 5);
       if buttonSelected = mrOk then
       begin
          SZ_PACKAGE.CallProcedure('Delete_SZ_by_ID',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'),1]);
          form10.Close; //����� �������� ��������� �����
       end;
    end;
  end;

{$ENDRegion '�������� �/�'}

{$Region '�������� �����'}

  procedure TForm10.Close_butClick(Sender: TObject);
  var buttonSelected :integer;
  begin
    buttonSelected := MessageDlg ('�������? ��� ��������� �� ����� ���������!', mtConfirmation, mbOkCancel, 5);
    if buttonSelected = mrOk then
    begin
      form10.Close;
    end;
  end;

{$ENDRegion '�������� �����'}

{$Region '����������, �������� � ������ ������������'}
//����� ������� ������� �� �������
  procedure TForm10.DBGrid1DblClick(Sender: TObject);
  begin
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ADD_OBR',0); //���������� ��� �������� �� ��, ��� ������������ ���� �������
       SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_STR_NUM',Info_mainID_STR.AsString); //����� ������ ��� ����������
       SZ_ADD_OBR.Form36.ShowModal; //���������� ����� ������ ������������
       if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ADD_OBR') = 1 then //���� ������������ ���� �������
       begin
          if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_STR_NUM') = '' then //���� ��� ����� ������
          begin
             Info_main.Last; //��������� � ����� ������
             Info_main.Edit;
             Info_main.Insert;
             Info_mainSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //��������� ������������
             Info_mainSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //��������� ����
             Info_mainSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //��������� ���
             Info_mainID_STR.AsInteger := info_main.RecordCount + 1; //��������� ����� ������ (����� + 1)
             Info_main.Post; //��������� ����������
             Info_main.Refresh;
          end;
          if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_STR_NUM') <> '' then //���� ���� ������� ������ ��� ������
           begin
             info_main.Edit;
             Info_main.UpdateRecord; //��������� ������
             Info_mainSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //-/-
             Info_mainSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //-/-
             Info_mainSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //-/-
             Info_main.Post; //��������� ����������
             Info_main.Refresh;
          end;
       end;
  end;
{*************************************************** ����� PopupMenu **************************************************}
  //����������
  procedure TForm10.N1Click(Sender: TObject);
  begin
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ADD_OBR',0);
     SZ_ADD_OBR.Form36.ShowModal; //���������� ����� ������ ������������
      if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ADD_OBR') = 1 then //���� ������������ ���� �������
       begin
         Info_main.Last; //��������� � ����� ������
         Info_main.Edit;
         Info_main.Insert;
         Info_mainSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //��������� ������������
         Info_mainSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //��������� ����
         Info_mainSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //��������� ���
         Info_mainID_STR.AsInteger := info_main.RecordCount + 1; //��������� ����� ������ (����� + 1)
         Info_main.Post; //��������� ����������
         Info_main.Refresh;
       end;
  end;
  //������
  procedure TForm10.N2Click(Sender: TObject);
  begin
    if  Info_mainID_STR.AsString <> '' then //���� ���� ������� ������ ��� ������
      begin
        SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('SZ_ADD_OBR',0);
        SZ_ADD_OBR.Form36.ShowModal; //���������� ����� ������ ������������
        if SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ADD_OBR') = 1 then //���� ������������ ���� �������
         begin
              info_main.Edit;
              Info_main.UpdateRecord; //��������� ������
              Info_mainSZ_NAME_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NAME_OBR'); //-/-
              Info_mainSZ_IBYAL_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_NOMER_OBR'); //-/-
              Info_mainSZ_CODE_OB.AsString := SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_KD_OBR'); //-/-
              Info_main.Post; //��������� ����������
              Info_main.Refresh;
         end;
      end;
  end;
  //��������
  procedure TForm10.N3Click(Sender: TObject);
    var buttonSelected :integer;
  begin
      info_main.Edit;
      buttonSelected := MessageDlg ('������� ' + Info_mainSZ_NAME_OB.AsString + '?', mtConfirmation, mbOkCancel, 5);
      if buttonSelected = mrOk then
      begin
        info_main.Delete;
      end;
  end;

{$ENDRegion '����������, �������� � ������ ������������'}

{$Region '�������� �����'}

  procedure TForm10.FormShow(Sender: TObject);
  begin
    //��������� ����������
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('POSITION_NUM',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_WNOM',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_NAME',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_KOD',otString);
    SZ_VARIABLES.Form20.OracleDataSet1.DeclareVariable('OB_IBYAL',otString);
    //��������� ��������
    FROM_DB.Close;
    FROM_DB.Open;
    TO_DB.Close;
    TO_DB.Open;
    COPY_DB.Close;
    COPY_DB.Open;
    EDIT_SZ_INFO_DB.Close;
    EDIT_SZ_INFO_DB.SetVariable('vID', SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'));
    EDIT_SZ_INFO_DB.Open;
    SZ_PACKAGE.CallProcedure('Prepare_SZ_to_Edit_by_ID', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'), 1]);
    Info_main.Close;
    Info_main.Open;
    //������������� ������
    FROM_LCB.KeyValue := EDIT_SZ_INFO_DBFROM_ID.AsInteger;
    TO_LCB.KeyValue := EDIT_SZ_INFO_DBTO_ID.AsInteger;
    COPY_LCB.KeyValue := EDIT_SZ_INFO_DBCOPY_ID.AsInteger;
    //������������� �����
    ETema.Text := EDIT_SZ_INFO_DBSZ_TEMA.AsString;
    ENum_SZ.Text := EDIT_SZ_INFO_DBSZ_NUMB.AsString;
    EDate.Text := EDIT_SZ_INFO_DBSZ_DATE.AsString;
    isKR := EDIT_SZ_INFO_DBSZ_KR.AsInteger;
    if isKR = 1 then OSTD_Check.Checked := true else OSTD_Check.Checked := false;
  end;

procedure TForm10.Info_mainNewRecord(DataSet: TDataSet);
begin
  if Info_mainID_STR.AsInteger = 0 then Info_mainID_STR.AsInteger := info_main.RecordCount + 1;
end;

{$ENDRegion '�������� �����'}

{$Region '����������'}

  procedure TForm10.Save_butClick(Sender: TObject);
  var buttonSelected :integer;
  begin
    buttonSelected := MessageDlg ('���������?', mtConfirmation, mbOkCancel, 5);
      if buttonSelected = mrOk then
      begin
         if FROM_LCB.Text <> '' then //�������� ��� ������ ���������
         begin
           if TO_LCB.Text <> '' then //�������� ��� ������ ����������
           begin
             if COPY_LCB.Text <> '' then
             begin
               if not info_main.IsEmpty then //�������� ��� ������� ������������
                begin
                   info_main.Edit;
                   info_main.Post;
                     try info_main.Post;
                     except end;
                     //���������� �/� � �������� ID
                    SZ_PACKAGE.CallProcedure('Update_SZ_of_OP_by_ID', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_ID'), FROM_LCB.KeyValue, TO_LCB.KeyValue, COPY_LCB.KeyValue, ETema.Text, isKr]);
                end
                else
                begin
                  MessageDlg('�� ������� ������������!', MtError, [mbOk], 1);
                end;
             end
             else MessageDlg('�� ������� ���� ���������� ����� �/�! ���� ����� �� ����� ������� ''-''.', MtError, [mbOk], 1);
           end
           else MessageDlg('�� ������ ���������� �/�!', MtError, [mbOk], 1);
         end
         else MessageDlg('�� ������ ��������� �/�!', MtError, [mbOk], 1);
      end;
    form10.Close;
   end;

{$ENDRegion '����������'}

end.
