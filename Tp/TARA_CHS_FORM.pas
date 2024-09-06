unit TARA_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Oracle;

type
  TForm18 = class(TForm)
    DBGridEh1: TDBGridEh;
    DB_TARA: TOracleDataSet;
    DATA_TARA: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DB_TARAID: TFloatField;
    DB_TARATARA: TStringField;
    DB_TARANAIM_T: TStringField;
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

    Type Tara = Record
      Tara_Id :Integer;
      Tara_Num :String;
      Tara_Name :String;
    End;

  /// <summary> ��������� ���� ������ �� ��������� �����</summary>
  ///  <param name="v_KeyWord"> String; <br/> �������� ����� </param>
  ///  <returns> Tara; Record; <br/>  (Tara_Id, Tara_Num, Tara_Name) </returns>
  function Get_Tara_Info (v_KeyWord :string) :Tara;

  /// <summary> ��������� ���� ������ �� ID</summary>
  ///  <param name="Tara_id"> String; <br/> Id ������ </param>
  ///  <returns> Tara; Record; <br/>  (Tara_Id, Tara_Num, Tara_Name) </returns>
  function Get_Tara_Info_By_Id (Tara_Id :Integer) :Tara;
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

{$Region '�������� ������� �����'}
  //������� �������� �������� ������������ ����/������ �� ���� ��� ��������� �����
  function TForm18.Get_Tara_Info (v_KeyWord :string) :Tara;
  begin
   //����������� ��������� �����
    DB_TARA.Close;
    DB_TARA.SetVariable('v_KeyWord', v_KeyWord);
    DB_TARA.Open;
    Button_Choose_Pressed := False;
    //���� ����������� ������ ������ 1 - ��, �� ��������� ���� ������
    if DB_TARA.RecordCount > 1 then
    begin
      Form18.ShowModal;
      if Button_Choose_Pressed then
      Begin
        //����� �������� ����� ������, ������� �������� ��������� ��������
        //����� � ����� ������������� ������� ��������, ����� PopupMenu ��� �������� ������� Enter
        if not DB_TARAID.IsNull then
        begin
         Result.Tara_Id := DB_TARAID.AsInteger;
         Result.Tara_Num := DB_TARATARA.AsString;
         Result.Tara_Name := DB_TARANAIM_T.AsString;
        end
        else
        begin
          Result.Tara_Num := '';
        end;
      end
    end
    //���� ��������� 1, �� ���������� ������� ������������
    else
    begin
     if not DB_TARAID.IsNull then
     begin
      Result.Tara_Id := DB_TARAID.AsInteger;
      Result.Tara_Num := DB_TARATARA.AsString;
      Result.Tara_Name := DB_TARANAIM_T.AsString;
     end
     else
     begin
      Result.Tara_Num := '';
     end;
    end;
  end;

  //��������� ���������� � ������ �� ��� ID
  function TForm18.Get_Tara_Info_By_Id (Tara_Id :Integer) :Tara;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Tara_Id', otString);
   SimpleSQL.SetVariable('Tara_Id', Tara_Id);
   SimpleSQL.SQL.Add('Select t.Id, t.Tara, '
                     + 't.Naim_T||'' ''|| '
                     + '(case '
                     + '   when t.length_Max is not null or t.Width_Max is not null or t.Height_ is not null then nvl(t.Length_Max,0)||''x''||nvl(t.width_Max,0)||''x''||nvl(t.height_,0) '
                     + ' Else null '
                     + 'end ) as Naim_T '
                     + 'From Ogt.Spr_Tara t '
                     + 'Where t.Id = :Tara_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Tara_Id := SimpleSQL.Fields[0].AsInteger;
   Result.Tara_Num := SimpleSQL.Fields[1].AsString;
   Result.Tara_Name := SimpleSQL.Fields[2].AsString;
  end;
{$ENDRegion '�������� ������� �����'}

{$Region '����� ��������'}
    //����� ����������� � �������� ����� �� ��� ������, �� ������� ���� ����������� ��������� ��������:
    //������� �� "�������"  � PopupMenu
    procedure TForm18.N1Click(Sender: TObject);
    begin
      Form18.DBGridEh1DblClick(nil);
    end;
    //������� �� ������� Enter
    procedure TForm18.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form18.DBGridEh1DblClick(nil);
      end;
    end;
    procedure TForm18.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//������� ������� ���� �� ��������� ������
    procedure TForm18.DBGridEh1DblClick(Sender: TObject);
    begin
     Button_Choose_Pressed := True;
     form18.Close;
    end;
{$ENDRegion '����� ��������'}

end.
