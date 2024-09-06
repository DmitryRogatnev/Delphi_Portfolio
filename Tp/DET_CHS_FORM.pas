unit DET_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, VAR_FORM, Oracle;

type
  TForm49 = class(TForm)
    DBGridEh1: TDBGridEh;
    DETAILS_DB: TOracleDataSet;
    DETAILS_DATA: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DETAILS_DBDET: TStringField;
    DETAILS_DBID: TFloatField;
    DETAILS_DBND: TStringField;
    DETAILS_DBMAR: TStringField;
    DETAILS_DBKODD: TStringField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_Button_Choose_Pressed :Bool;

    Type Detail = Record
      Det_Id :Integer;
      Det_Num :String;
      Det_Name :String;
      Det_Mar :String;
      Det_Kd: String;
    End;

  /// <summary> ��������� ���� ������ �� ��������� �����</summary>
  ///  <param name="DET"> String; <br/> �������� ����� </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Det (DET :string) :Detail;

  /// <summary> ��������� ���� ������ �� ID</summary>
  ///  <param name="Det_id"> String; <br/> Id ������ </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Det_Info_By_Id (Det_Id :string) :Detail;
  end;

var
  Form49: TForm49;

implementation

{$R *.dfm}

{$Region '�������� ������� �����'}
  //������� �������� �������� ������������ ����/������ �� ���� ��� ��������� �����
  function TForm49.Get_Det (DET :string) :Detail;
  begin
   //����������� ��������� �����
    DETAILS_DB.Close;
    DETAILS_DB.SetVariable('DET', DET);
    DETAILS_DB.Open;
    v_Button_Choose_Pressed := False;
    //���� ����������� ������ ������ 1 - ��, �� ��������� ���� ������
    if DETAILS_DB.RecordCount > 1 then
    begin
      Form49.ShowModal;
      if v_Button_Choose_Pressed then
      Begin
        //����� �������� ����� ������, ������� �������� ��������� ��������
        //����� � ����� ������������� ������� ��������, ����� PopupMenu ��� �������� ������� Enter
        if not DETAILS_DBDET.IsNull then
        begin
          Result.Det_Id := DETAILS_DBID.AsInteger;
          Result.Det_Num := DETAILS_DBDET.AsString;
          Result.Det_Name := DETAILS_DBND.AsString;
          Result.Det_Mar := DETAILS_DBMAR.AsString;
          Result.Det_Kd := DETAILS_DBKODD.AsString;
        end
        else
        begin
          Result.Det_Num := '';
        end;
      End;
    end
    //���� ��������� 1, �� ���������� ������� ������������
    else
    begin
     if not DETAILS_DBDET.IsNull then
      begin
        Result.Det_Id := DETAILS_DBID.AsInteger;
        Result.Det_Num := DETAILS_DBDET.AsString;
        Result.Det_Name := DETAILS_DBND.AsString;
        Result.Det_Mar := DETAILS_DBMAR.AsString;
        Result.Det_Kd := DETAILS_DBKODD.AsString;
      end
      else
      begin
        Result.Det_Num := '';
      end;
    end;
  end;

  //��������� ���������� � ������ �� ��� ID
  function TForm49.Get_Det_Info_By_Id(Det_Id: string) :Detail;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Det_Id', otString);
   SimpleSQL.SetVariable('Det_Id', Det_Id);
   SimpleSQL.SQL.Add('Select t.Det, t.Nd, t.Mar, t.Kodd '
                     + 'From Ogt.Spr_Det t '
                     + 'Where t.Id = :Det_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Det_Num := SimpleSQL.Fields[0].AsString;
   Result.Det_Name := SimpleSQL.Fields[1].AsString;
   Result.Det_Mar := SimpleSQL.Fields[2].AsString;
   Result.Det_Kd := SimpleSQL.Fields[3].AsString;
  end;
{$ENDRegion '�������� ������� �����'}

{$Region '����� ��������'}
    //����� ����������� � �������� ����� �� ��� ������, �� ������� ���� ����������� ��������� ��������:
    //������� �� "�������"  � PopupMenu
    procedure TForm49.N1Click(Sender: TObject);
    begin
      Form49.DBGridEh1DblClick(nil);
    end;
    //������� �� ������� Enter
    procedure TForm49.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form49.DBGridEh1DblClick(nil);
      end;
    end;
  procedure TForm49.FormShow(Sender: TObject);
  begin
    DBGridEh1.SearchPanel.SearchingText := '';
  end;

//������� ������� ���� �� ��������� ������
    procedure TForm49.DBGridEh1DblClick(Sender: TObject);
    begin
     v_Button_Choose_Pressed := True;
     form49.Close;
    end;
{$ENDRegion '����� ��������'}

end.
