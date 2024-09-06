unit ED_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, VAR_FORM, Oracle;

type
  TForm51 = class(TForm)
    DBGridEh1: TDBGridEh;
    ED_DB: TOracleDataSet;
    ED_DATA: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    ED_DBID: TFloatField;
    ED_DBED: TStringField;
    ED_DBED_NAIM: TStringField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Type Edizm = Record
      Edizm_Id :Integer;
      Edizm_Name :String;
      Edizm_Kod :String;
    End;

  /// <summary> ��������� ���� ��������� �� ��������� �����</summary>
  ///  <param name="ED"> String; <br/> �������� ����� </param>
  ///  <returns> Edizm; Record; <br/>  (Edizm_Id, Edizm_Name, Edizm_Kod) </returns>
  function Get_Edizm_Info (ED :string) :Edizm;

  /// <summary> ��������� ���� ������ �� ID</summary>
  ///  <param name="Mat_id"> String; <br/> Id ������ </param>
  ///  <returns> Material; Record; <br/>  (Mat_Id, Mat_Name, Mat_Kod) </returns>
  function Get_Edizm_Info_By_Id (Ed_Id :string) :Edizm;
  end;

var
  Form51: TForm51;

implementation

{$R *.dfm}

{$Region '�������� ������� �����'}
  //������� �������� �������� ������������ ����/������ �� ���� ��� ��������� �����
  function TForm51.Get_Edizm_Info (ED :string) :Edizm;
  begin
   //����������� ��������� �����
    ED_DB.Close;
    ED_DB.SetVariable('ED', ED);
    ED_DB.Open;
    //���� ����������� ������ ������ 1 - ��, �� ��������� ���� ������
    if ED_DB.RecordCount > 1 then
    begin
      Form51.ShowModal;
      //����� �������� ����� ������, ������� �������� ��������� ��������
      //����� � ����� ������������� ������� ��������, ����� PopupMenu ��� �������� ������� Enter
      if not ED_DBID.IsNull then
      begin
       Result.Edizm_Id := ED_DBID.AsInteger;
       Result.Edizm_Name := ED_DBED_NAIM.AsString;
       Result.Edizm_Kod := ED_DBED.AsString;
      end
      else
      begin
       Result.Edizm_Kod := ED_DBED.AsString;
      end;
    end
    //���� ��������� 1, �� ���������� ������� ������������
    else
    begin
     if not ED_DBID.IsNull then
      begin
       Result.Edizm_Id := ED_DBID.AsInteger;
       Result.Edizm_Name := ED_DBED_NAIM.AsString;
       Result.Edizm_Kod := ED_DBED.AsString;
      end
      else
      begin
       Result.Edizm_Kod := ED_DBED.AsString;
      end;
    end;
  end;

  //��������� ���������� � ������ �� ��� ID
  function TForm51.Get_Edizm_Info_By_Id (Ed_Id :string) :Edizm;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Ed_Id', otString);
   SimpleSQL.SetVariable('Ed_Id', Ed_Id);
   SimpleSQL.SQL.Add('Select t.Ed, t.Ed_Naim '
                     + 'From Ogt.Spr_Ed t '
                     + 'Where t.Id = :Ed_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Edizm_Kod := SimpleSQL.Fields[0].AsString;
   Result.Edizm_Name := SimpleSQL.Fields[1].AsString;
  end;
{$ENDRegion '�������� ������� �����'}

{$Region '����� ��������'}
    //����� ����������� � �������� ����� �� ��� ������, �� ������� ���� ����������� ��������� ��������:
    //������� �� "�������"  � PopupMenu
    procedure TForm51.N1Click(Sender: TObject);
    begin
      Form51.DBGridEh1DblClick(nil);
    end;
    //������� �� ������� Enter
    procedure TForm51.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form51.DBGridEh1DblClick(nil);
      end;
    end;
    procedure TForm51.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//������� ������� ���� �� ��������� ������
    procedure TForm51.DBGridEh1DblClick(Sender: TObject);
    begin
     form51.Close;
    end;
{$ENDRegion '����� ��������'}
end.
