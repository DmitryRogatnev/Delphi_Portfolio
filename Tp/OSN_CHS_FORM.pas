unit OSN_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Menus, OracleData, Oracle;

type
  TForm32 = class(TForm)
    SimpleSQL: TOracleDataSet;
    DATA_OSNAST: TDataSource;
    DB_OSNAST: TOracleDataSet;
    DB_OSNASTID: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    DBGridEh1: TDBGridEh;
    DB_OSNASTSHOSN: TStringField;
    DB_OSNASTNOSN: TStringField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Button_Choose_Pressed :Bool;

    Type Osnast = Record
      Osnast_Id :Integer;
      Osnast_Num :String;
      Osnast_Name :String;
    End;

  /// <summary> ��������� ���� ������ �� ��������� �����</summary>
  ///  <param name="DET"> String; <br/> �������� ����� </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Osn_Info (v_KeyWord :string) :Osnast;

  /// <summary> ��������� ���� ������ �� ID</summary>
  ///  <param name="Det_id"> String; <br/> Id ������ </param>
  ///  <returns> Detail; Record; <br/>  (Det_Id, Det_Num, Det_Name, Det_Mar) </returns>
  function Get_Osn_Info_By_Id (Osn_Id :Integer) :Osnast;
  end;

var
  Form32: TForm32;

implementation

{$R *.dfm}

{$Region '�������� ������� �����'}
  //������� �������� �������� ������������ ����/������ �� ���� ��� ��������� �����
  function TForm32.Get_Osn_Info (v_KeyWord :string) :Osnast;
  begin
   //����������� ��������� �����
    DB_OSNAST.Close;
    DB_OSNAST.SetVariable('v_KeyWord', v_KeyWord);
    DB_OSNAST.Open;
    Button_Choose_Pressed := False;
    //���� ����������� ������ ������ 1 - ��, �� ��������� ���� ������
    if DB_OSNAST.RecordCount > 1 then
    begin
      Form32.ShowModal;
      if Button_Choose_Pressed then
      Begin
        //����� �������� ����� ������, ������� �������� ��������� ��������
        //����� � ����� ������������� ������� ��������, ����� PopupMenu ��� �������� ������� Enter
        if not DB_OSNASTID.IsNull then
        begin
         Result.Osnast_Id := DB_OSNASTID.AsInteger;
         Result.Osnast_Num := DB_OSNASTSHOSN.AsString;
         Result.Osnast_Name := DB_OSNASTNOSN.AsString;
        end
        else
        begin
          Result.Osnast_Num := '';
        end;
      end
    end
    //���� ��������� 1, �� ���������� ������� ������������
    else
    begin
      if not DB_OSNASTID.IsNull then
      begin
       Result.Osnast_Id := DB_OSNASTID.AsInteger;
       Result.Osnast_Num := DB_OSNASTSHOSN.AsString;
       Result.Osnast_Name := DB_OSNASTNOSN.AsString;
      end
      else
      begin
        Result.Osnast_Num := '';
      end;
    end;
  end;

  //��������� ���������� � ������ �� ��� ID
  function TForm32.Get_Osn_Info_By_Id (Osn_Id :Integer) :Osnast;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Osn_Id', otString);
   SimpleSQL.SetVariable('Osn_Id', Osn_Id);
   SimpleSQL.SQL.Add('Select t.Id, t.Shosn, t.Nosn '
                     + 'From Ogt.Spr_Osn t '
                     + 'Where t.Id = :Osn_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Osnast_Id := SimpleSQL.Fields[0].AsInteger;
   Result.Osnast_Num := SimpleSQL.Fields[1].AsString;
   Result.Osnast_Name := SimpleSQL.Fields[2].AsString;
  end;
{$ENDRegion '�������� ������� �����'}

{$Region '����� ��������'}
    //����� ����������� � �������� ����� �� ��� ������, �� ������� ���� ����������� ��������� ��������:
    //������� �� "�������"  � PopupMenu
    procedure TForm32.N1Click(Sender: TObject);
    begin
      Form32.DBGridEh1DblClick(nil);
    end;
    //������� �� ������� Enter
    procedure TForm32.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form32.DBGridEh1DblClick(nil);
      end;
    end;
    procedure TForm32.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//������� ������� ���� �� ��������� ������
    procedure TForm32.DBGridEh1DblClick(Sender: TObject);
    begin
     Button_Choose_Pressed := True;
     form32.Close;
    end;
{$ENDRegion '����� ��������'}

end.
