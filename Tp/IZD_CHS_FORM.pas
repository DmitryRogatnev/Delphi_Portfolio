unit IZD_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Menus, OracleData, Oracle;

type
  TForm44 = class(TForm)
    SimpleSQL: TOracleDataSet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Data_Izdelia: TDataSource;
    Db_Izdelia: TOracleDataSet;
    DBGridEh1: TDBGridEh;
    Db_IzdeliaID: TFloatField;
    Db_IzdeliaIZD: TStringField;
    Db_IzdeliaND_IZD: TStringField;
    Db_IzdeliaNOMMTM: TFloatField;
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

    Type Izdelie = Record
      Izdelie_Id: Integer;
      Izdelie_Name: String;
      Izdelie_Type: String;
    End;

  /// <summary> ��������� ���� ������� �� ��������� �����</summary>
  ///  <param name="v_KeyWord"> String; <br/> �������� ����� </param>
  ///  <returns> Izdelie; Record; <br/>  (Izdelie_Id, Izdelie_Name, Izdelie_Type) </returns>
  function Get_Izdelie_Info_By_Keyword (v_KeyWord :string): Izdelie;

  /// <summary> ��������� ���� ������� �� ID</summary>
  ///  <param name="Det_id"> String; <br/> Id ������� </param>
  ///  <returns> Izdelie; Record; <br/>  (Izdelie_Id, Izdelie_Name, Izdelie_Type) </returns>
  function Get_Izdelie_Info_By_Id (Izdelie_Id :Integer): Izdelie;
  end;

var
  Form44: TForm44;

implementation

{$R *.dfm}

{$Region '�������� ������� �����'}
  //������� �������� �������� ������������ ����/������ �� ���� ��� ��������� �����
  function TForm44.Get_Izdelie_Info_By_Keyword (v_KeyWord :string): Izdelie;
  begin
   //����������� ��������� �����
    Db_Izdelia.Close;
    Db_Izdelia.SetVariable( 'v_KeyWord', v_KeyWord );
    Db_Izdelia.Open;
    Button_Choose_Pressed := False;
    //���� ����������� ������ ������ 1 - ��, �� ��������� ���� ������
    if Db_Izdelia.RecordCount > 1 then
    begin
      Form44.ShowModal;
      if Button_Choose_Pressed then
      Begin
        //����� �������� ����� ������, ������� �������� ��������� ��������
        //����� � ����� ������������� ������� ��������, ����� PopupMenu ��� �������� ������� Enter
        if not Db_IzdeliaID.IsNull then
        begin
          Result.Izdelie_Id := Db_IzdeliaID.AsInteger;
          Result.Izdelie_Name := Db_IzdeliaIZD.AsString;
          Result.Izdelie_Type := Db_IzdeliaND_IZD.AsString;
        end
        else
        begin
          Result.Izdelie_Name := '';
        end;
      end
    end
    //���� ��������� 1, �� ���������� ������� ������������
    else
    begin
      if not Db_IzdeliaID.IsNull then
      begin
        Result.Izdelie_Id := Db_IzdeliaID.AsInteger;
        Result.Izdelie_Name := Db_IzdeliaIZD.AsString;
        Result.Izdelie_Type := Db_IzdeliaND_IZD.AsString;
      end
      else
      begin
        Result.Izdelie_Name := '';
      end;
    end;
  end;

  //��������� ���������� � ������ �� ��� ID
  function TForm44.Get_Izdelie_Info_By_Id (Izdelie_Id :Integer): Izdelie;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable( 'Izdelie_Id', otString );
   SimpleSQL.SetVariable( 'Izdelie_Id', Izdelie_Id );
   SimpleSQL.SQL.Add( ' Select t.Id, t.Izd, t.Nd_Izd '
                      + ' From Ogt.Spr_Izd t '
                      + ' Where t.Id = :Izdelie_Id ' );
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Izdelie_Id := SimpleSQL.Fields[0].AsInteger;
   Result.Izdelie_Name := SimpleSQL.Fields[1].AsString;
   Result.Izdelie_Type := SimpleSQL.Fields[2].AsString;
  end;
{$ENDRegion '�������� ������� �����'}

{$Region '����� ��������'}
    //����� ����������� � �������� ����� �� ��� ������, �� ������� ���� ����������� ��������� ��������:
    //������� �� "�������"  � PopupMenu
    procedure TForm44.N1Click(Sender: TObject);
    begin
      Form44.DBGridEh1DblClick(nil);
    end;
    //������� �� ������� Enter
    procedure TForm44.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form44.DBGridEh1DblClick(nil);
      end;
    end;
    procedure TForm44.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//������� ������� ���� �� ��������� ������
    procedure TForm44.DBGridEh1DblClick(Sender: TObject);
    begin
     Button_Choose_Pressed := True;
     form44.Close;
    end;
{$ENDRegion '����� ��������'}

end.
