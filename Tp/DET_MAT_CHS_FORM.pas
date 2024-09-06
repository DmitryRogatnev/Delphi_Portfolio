unit DET_MAT_CHS_FORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Menus, OracleData;

type
  TForm35 = class(TForm)
    DB_DET_MAT: TOracleDataSet;
    DATA_DET_MAT: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SimpleSQL: TOracleDataSet;
    DBGridEh1: TDBGridEh;
    DB_DET_MATID: TFloatField;
    DB_DET_MATMAT_NAME: TStringField;
    DB_DET_MATMAT_KOD: TStringField;
    DB_DET_MATMAT_ED: TStringField;
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
  function Get_Det_Mat_By_Det_Id (v_Det_Id :Integer;
                                  v_Ceh_Id :Integer)  :Integer;

  end;

var
  Form35: TForm35;

implementation

{$R *.dfm}

{$Region '�������� ������� �����'}
  //������� �������� �������� ������������ ����/������ �� ���� ��� ��������� �����
  function TForm35.Get_Det_Mat_By_Det_Id (v_Det_Id :Integer;
                                          v_Ceh_Id :Integer)  :Integer;
  begin
   //����������� ��������� �����
    DB_DET_MAT.Close;
    DB_DET_MAT.SetVariable('v_Det_Id', v_Det_Id);
    DB_DET_MAT.SetVariable('v_Ceh_Id', v_Ceh_Id);
    DB_DET_MAT.Open;
    //���� ����������� ������ ������ 1 - ��, �� ��������� ���� ������
    if DB_DET_MAT.RecordCount > 1 then
    begin
      Form35.ShowModal;
      //����� �������� ����� ������, ������� �������� ��������� ��������
      //����� � ����� ������������� ������� ��������, ����� PopupMenu ��� �������� ������� Enter
      if not DB_DET_MATID.IsNull then
      begin
        Result := DB_DET_MATID.AsInteger;
      end
      else
      begin
        Result := 0;
      end;
    end
    //���� ��������� 1, �� ���������� ������� ������������
    else
    begin
     if not DB_DET_MATID.IsNull then
      begin
        Result := DB_DET_MATID.AsInteger;
      end
      else
      begin
        Result := 0;
      end;
    end;
  end;

{$ENDRegion '�������� ������� �����'}

{$Region '����� ��������'}
    //����� ����������� � �������� ����� �� ��� ������, �� ������� ���� ����������� ��������� ��������:
    //������� �� "�������"  � PopupMenu
    procedure TForm35.N1Click(Sender: TObject);
    begin
      Form35.DBGridEh1DblClick(nil);
    end;
    //������� �� ������� Enter
    procedure TForm35.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    begin
      if key = 13 then
      begin
       Form35.DBGridEh1DblClick(nil);
      end;
    end;

    procedure TForm35.FormShow(Sender: TObject);
    begin
     DBGridEh1.SearchPanel.SearchingText := '';
    end;

//������� ������� ���� �� ��������� ������
    procedure TForm35.DBGridEh1DblClick(Sender: TObject);
    begin
     form35.Close;
    end;
{$ENDRegion '����� ��������'}


end.
