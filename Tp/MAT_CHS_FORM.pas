unit MAT_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Oracle, VAR_FORM;

type
  TForm50 = class(TForm)
    DBGridEh1: TDBGridEh;
    MATERIALS_DB: TOracleDataSet;
    MATERIALS_DATA: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    MATERIALS_DBID: TFloatField;
    MATERIALS_DBMAT: TStringField;
    MATERIALS_DBKODM: TStringField;
    MATERIALS_DBEDIZM: TStringField;
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

    Type Material = Record
      Mat_Id :Integer;
      Mat_Name :String;
      Mat_Kod :String;
      Mat_Ed_Kod :String;
    End;

  /// <summary> ��������� ���� ��������� �� ��������� �����</summary>
  ///  <param name="MAT"> String; <br/> �������� ����� </param>
  ///  <returns> Material; Record; <br/>  (Mat_Id, Mat_Name, Mat_Kod) </returns>
  function Get_Mat_Info (MAT :string) :Material;

  /// <summary> ��������� ���� ������ �� ID</summary>
  ///  <param name="Mat_id"> String; <br/> Id ������ </param>
  ///  <returns> Material; Record; <br/>  (Mat_Id, Mat_Name, Mat_Kod) </returns>
  function Get_Mat_Info_By_Id (Mat_Id :string) :Material;
  end;

var
  Form50: TForm50;

implementation

{$R *.dfm}

{$Region '�������� ������� �����'}
  //������� �������� �������� ������������ ����/������ �� ���� ��� ��������� �����
  function TForm50.Get_Mat_Info (Mat :string) :Material;
  begin
   //����������� ��������� �����
    MATERIALS_DB.Close;
    MATERIALS_DB.SetVariable('MAT', MAT);
    MATERIALS_DB.Open;
    v_Button_Choose_Pressed := False;
    //���� ����������� ������ ������ 1 - ��, �� ��������� ���� ������
    if MATERIALS_DB.RecordCount > 1 then
    begin
      Form50.ShowModal;
      if v_Button_Choose_Pressed then
      Begin
        //����� �������� ����� ������, ������� �������� ��������� ��������
        //����� � ����� ������������� ������� ��������, ����� PopupMenu ��� �������� ������� Enter
        if not MATERIALS_DBID.IsNull then
        begin
         Result.Mat_Id := MATERIALS_DBID.AsInteger;
         Result.Mat_Name := MATERIALS_DBMAT.AsString;
         Result.Mat_Kod := MATERIALS_DBKODM.AsString;
         Result.Mat_Ed_Kod := MATERIALS_DBEDIZM.AsString;
        end
        else
        begin
          Result.Mat_Name := '';
        end;
      End;
    end
    //���� ��������� 1, �� ���������� ������� ������������
    else
    begin
     if not MATERIALS_DBID.IsNull then
      begin
       Result.Mat_Id := MATERIALS_DBID.AsInteger;
       Result.Mat_Name := MATERIALS_DBMAT.AsString;
       Result.Mat_Kod := MATERIALS_DBKODM.AsString;
       Result.Mat_Ed_Kod := MATERIALS_DBEDIZM.AsString;
      end
      else
      begin
        Result.Mat_Name := '';
      end;
    end;
  end;

  //��������� ���������� � ������ �� ��� ID
  function TForm50.Get_Mat_Info_By_Id(Mat_Id: string) :Material;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Mat_Id', otString);
   SimpleSQL.SetVariable('Mat_Id', Mat_Id);
   SimpleSQL.SQL.Add('Select t.Mat, t.Kodm, t.Edizm '
                     + ' From Ogt.Spr_Matx t '
                     + ' Where t.Id = :Mat_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Mat_Name := SimpleSQL.Fields[0].AsString;
   Result.Mat_Kod := SimpleSQL.Fields[1].AsString;
   Result.Mat_Ed_Kod := SimpleSQL.Fields[2].AsString;
  end;
{$ENDRegion '�������� ������� �����'}

{$Region '����� ��������'}
    //����� ����������� � �������� ����� �� ��� ������, �� ������� ���� ����������� ��������� ��������:
    //������� �� "�������"  � PopupMenu
    procedure TForm50.N1Click(Sender: TObject);
    begin
      Form50.DBGridEh1DblClick(nil);
    end;
    //������� �� ������� Enter
    procedure TForm50.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form50.DBGridEh1DblClick(nil);
      end;
    end;
    procedure TForm50.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//������� ������� ���� �� ��������� ������
    procedure TForm50.DBGridEh1DblClick(Sender: TObject);
    begin
     v_Button_Choose_Pressed := True;
     form50.Close;
    end;
{$ENDRegion '����� ��������'}

end.
