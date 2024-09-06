unit DET_MAR_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, Oracle, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.Menus, OracleData,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TForm5 = class(TForm)
    DBGridEh1: TDBGridEh;
    DB_DET_MAR: TOracleDataSet;
    DATA_DET_MAR: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DB_DET_MARMAR: TStringField;
    DB_DET_MARDET: TFloatField;
    DB_DET_MARDET_NUM_NAME: TStringField;
    DB_DET_MARDET_NUM: TStringField;
    DB_DET_MARDET_NAME: TStringField;
    DB_DET_MARID: TFloatField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  /// <summary> ��������� ���� ������ �� ��������� �����</summary>
  ///  <param name="v_Doc_KeyWord"> String; <br/> �������� ����� </param>
  ///  <returns> Mar_Id; String; <br/> </returns>
  function Get_Det_Mar_By_Det_Id (v_Det_Id :Integer)  :String;

  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

{$Region '�������� ������� �����'}
  //������� �������� �������� ������������ ����/������ �� ���� ��� ��������� �����
  function TForm5.Get_Det_Mar_By_Det_Id (v_Det_Id :Integer) :String;
  begin
   //����������� ��������� �����
    DB_DET_MAR.Close;
    DB_DET_MAR.SetVariable('v_Det_Id', v_Det_Id);
    DB_DET_MAR.Open;
    //���� ����������� ������ ������ 1 - ��, �� ��������� ���� ������
    if DB_DET_MAR.RecordCount > 1 then
    begin
      Form5.ShowModal;
      //����� �������� ����� ������, ������� �������� ��������� ��������
      //����� � ����� ������������� ������� ��������, ����� PopupMenu ��� �������� ������� Enter
      if not DB_DET_MARID.IsNull then
      begin
        Result := DB_DET_MARMAR.AsString;
      end
      else
      begin
        Result := '';
      end;
    end
    //���� ��������� 1, �� ���������� ������� ������������
    else
    begin
     if not DB_DET_MARID.IsNull then
      begin
        Result := DB_DET_MARMAR.AsString;
      end
      else
      begin
        Result := '';
      end;
    end;
  end;

{$ENDRegion '�������� ������� �����'}

{$Region '����� ��������'}
    //����� ����������� � �������� ����� �� ��� ������, �� ������� ���� ����������� ��������� ��������:
    //������� �� "�������"  � PopupMenu
    procedure TForm5.N1Click(Sender: TObject);
    begin
      Form5.DBGridEh1DblClick(nil);
    end;
    //������� �� ������� Enter
    procedure TForm5.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form5.DBGridEh1DblClick(nil);
      end;
    end;

    procedure TForm5.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//������� ������� ���� �� ��������� ������
    procedure TForm5.DBGridEh1DblClick(Sender: TObject);
    begin
     form5.Close;
    end;
{$ENDRegion '����� ��������'}


end.
