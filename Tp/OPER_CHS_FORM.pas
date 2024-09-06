unit OPER_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Oracle;

type
  TForm12 = class(TForm)
    DBGridEh1: TDBGridEh;
    DB_OPERS: TOracleDataSet;
    DATA_OPERS: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    DB_OPERSOPER: TStringField;
    DB_OPERSIOT: TStringField;
    DB_OPERSTT: TStringField;
    DB_OPERSID: TFloatField;
    SimpleSQL: TOracleDataSet;
    DB_OPERSCODE: TStringField;
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

    Type Operation = Record
      Oper_Id :Integer;
      Oper_Name :String;
      Oper_IOT :String;
      Oper_TT :String;
    End;

  /// <summary> ��������� ���� �� �������� �� ��������� �����</summary>
  ///  <param name="DET"> String; <br/> �������� ����� </param>
  ///  <returns> Operation; Record; <br/>
  ///  ( Oper_Id  - Id ��������, <br/>
  ///    Oper_Name - ������������ ��������,
  ///    Oper_IOT - ���,
  ///    Oper_TT - ����. ������� ) </returns>
  function Get_Oper_Info (v_KeyWord :string) :Operation;

  /// <summary> ��������� ���� �������� �� ID</summary>
  ///  <param name="Oper_id"> String; <br/> Id ������ </param>
  ///  <returns> Operation; Record; <br/>
  ///  ( Oper_Id  - Id ��������, <br/>
  ///    Oper_Name - ������������ ��������,
  ///    Oper_IOT - ���,
  ///    Oper_TT - ����. ������� ) </returns>
  function Get_Oper_Info_By_Id (Oper_Id :Integer) :Operation;

  /// <summary> ��������� ���� �������� �� ������������</summary>
  ///  <param name="Oper_Name"> String; <br/> Id ������ </param>
  ///  <returns> Operation; Record; <br/>
  ///  ( Oper_Id  - Id ��������, <br/>
  ///    Oper_Name - ������������ ��������,
  ///    Oper_IOT - ���,
  ///    Oper_TT - ����. ������� ) </returns>
  function Get_Oper_Info_By_Name ( Oper_Name: String ) :Operation;
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

{$Region '�������� ������� �����'}
  //������� �������� �������� ������������ ����/������ �� ���� ��� ��������� �����
  function TForm12.Get_Oper_Info (v_KeyWord :string) :Operation;
  begin
   //����������� ��������� �����
    DB_OPERS.Close;
    DB_OPERS.SetVariable('v_KeyWord', v_KeyWord);
    DB_OPERS.Open;
    Button_Choose_Pressed := False;
    //���� ����������� ������ ������ 1 - ��, �� ��������� ���� ������
    if DB_OPERS.RecordCount > 1 then
    begin
      Form12.ShowModal;
      if Button_Choose_Pressed then
      Begin
        //����� �������� ����� ������, ������� �������� ��������� ��������
        //����� � ����� ������������� ������� ��������, ����� PopupMenu ��� �������� ������� Enter
        if not DB_OPERSID.IsNull then
        begin
         Result.Oper_Id := DB_OPERSID.AsInteger;
         Result.Oper_Name := DB_OPERSOPER.AsString;
         Result.Oper_IOT := DB_OPERSIOT.AsString;
         Result.Oper_TT := DB_OPERSTT.AsString;
        end
        else
        begin
          Result.Oper_Name := '';
        end;
      end
    end
    //���� ��������� 1, �� ���������� ������� ������������
    else
    begin
     if not DB_OPERSID.IsNull then
     begin
      Result.Oper_Id := DB_OPERSID.AsInteger;
      Result.Oper_Name := DB_OPERSOPER.AsString;
      Result.Oper_IOT := DB_OPERSIOT.AsString;
      Result.Oper_TT := DB_OPERSTT.AsString;
     end
     else
     begin
      Result.Oper_Name := '';
     end;
    end;
  end;

  //��������� ���������� � ������ �� ��� ID
  function TForm12.Get_Oper_Info_By_Id (Oper_Id :Integer) :Operation;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Oper_Id', otString);
   SimpleSQL.SetVariable('Oper_Id', Oper_Id);
   SimpleSQL.SQL.Add('Select t.Id, t.Oper, t.Iot, t.Tt '
                     + 'From Ogt.Spr_Oper t '
                     + 'Where t.Id = :Oper_Id');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Oper_Id := SimpleSQL.Fields[0].AsInteger;
   Result.Oper_Name := SimpleSQL.Fields[1].AsString;
   Result.Oper_IOT := SimpleSQL.Fields[2].AsString;
   Result.Oper_TT := SimpleSQL.Fields[3].AsString;
  end;

    //��������� ���������� � ������ �� ��� ID
  function TForm12.Get_Oper_Info_By_Name (Oper_Name: String) :Operation;
  begin
   SimpleSQL.Close;
   SimpleSQL.DeleteVariables;
   SimpleSQL.SQL.Clear;
   SimpleSQL.DeclareVariable('Oper_Name', otString);
   SimpleSQL.SetVariable('Oper_Name', Oper_Name);
   SimpleSQL.SQL.Add('Select t.Id, t.Oper, t.Iot, t.Tt '
                     + 'From Ogt.Spr_Oper t '
                     + 'Where t.Oper = :Oper_Name');
   SimpleSQL.ExecSQL;
   SimpleSQL.Open;
   Result.Oper_Id := SimpleSQL.Fields[0].AsInteger;
   Result.Oper_Name := SimpleSQL.Fields[1].AsString;
   Result.Oper_IOT := SimpleSQL.Fields[2].AsString;
   Result.Oper_TT := SimpleSQL.Fields[3].AsString;
  end;
{$ENDRegion '�������� ������� �����'}

{$Region '����� ��������'}
    //����� ����������� � �������� ����� �� ��� ������, �� ������� ���� ����������� ��������� ��������:
    //������� �� "�������"  � PopupMenu
    procedure TForm12.N1Click(Sender: TObject);
    begin
      Form12.DBGridEh1DblClick(nil);
    end;
    //������� �� ������� Enter
    procedure TForm12.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form12.DBGridEh1DblClick(nil);
      end;
    end;
    procedure TForm12.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//������� ������� ���� �� ��������� ������
    procedure TForm12.DBGridEh1DblClick(Sender: TObject);
    begin
     Button_Choose_Pressed := True;
     form12.Close;
    end;
{$ENDRegion '����� ��������'}

end.
