unit Tp_TechProc_CoAuthorsForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, Data.DB,
  OracleData, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, MemTableDataEh, MemTableEh;

type
  TForm_CoAuthors = class(TForm)
    Grid_CoAuthors: TDBGridEh;
    Db_Doc_CoAuthors: TOracleDataSet;
    Db_Doc_CoAuthorsDOC_HEADER_ID: TIntegerField;
    Db_Doc_CoAuthorsUSER_NAME: TStringField;
    Data_Doc_CoAuthors: TDataSource;
    Db_Doc_CoAuthorsUSER_PROF: TStringField;
    ToolBar1: TToolBar;
    Tb_Add_User: TToolButton;
    Tb_DeleteUser: TToolButton;
    Tb_Save: TToolButton;
    Db_Doc_CoAuthorsCO_AUTHOR_USER_ID: TStringField;
    procedure Tb_Add_UserClick(Sender: TObject);
    procedure Tb_DeleteUserClick(Sender: TObject);
    procedure Tb_SaveClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Db_Doc_CoAuthorsNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    InDocHeaderId: Integer;
  end;

var
  Form_CoAuthors: TForm_CoAuthors;

implementation

{$R *.dfm}

uses
  Udm_Main, Tp_Main_Form, Gen_Chs_Data_Mod, Tp_Data_Mode;

procedure TForm_CoAuthors.Db_Doc_CoAuthorsNewRecord(DataSet: TDataSet);
begin
  with DataSet
  do
    FieldByName('Doc_Header_Id').AsInteger:=InDocHeaderId;
end;

procedure TForm_CoAuthors.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Tb_SaveClick(Nil);
  if Self.ModalResult<>mrCancel 
  then
    CanClose:=True
  else
    CanClose:=False;
end;

procedure TForm_CoAuthors.FormShow(Sender: TObject);
begin
  Db_Doc_CoAuthors.SetVariable(0, InDocHeaderId);
  Db_Doc_CoAuthors.Active := True;
end;

procedure TForm_CoAuthors.Tb_Add_UserClick(Sender: TObject);
var
  InParams, OutParams: TDynVarsEh;
  i: Integer;
begin
  InParams:= TDynVarsEh.Create(Self);
  InParams.DynVar['Find'].AsString := 'Users_Engineers';
  InParams.DynVar['MultiSelect'].AsBoolean := True;
  OutParams := DM_Gen_Chs.F_Gen_Chose_Form(Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form(InParams), Tp_Dm.MemT_Buffer);
  if OutParams<>Nil 
  then
  begin
    with Tp_Dm.MemT_Buffer 
    do
    begin
      try
        Active := True;
        if RecordCount>0
        then
        begin
          with RecordsView.MemTableData.RecordsList
          do
          begin
            for i := 0 to Count-1 
            do
            begin            
              Db_Doc_CoAuthors.Append;
              Db_Doc_CoAuthors.FieldByName('Co_Author_User_Id').AsVariant := Rec[i].DataValues['User_Id', dvvValueEh];  
              Db_Doc_CoAuthors.FieldByName('User_Name').AsVariant := Rec[i].DataValues['User_Name', dvvValueEh];
              Db_Doc_CoAuthors.FieldByName('User_Prof').AsVariant := Rec[i].DataValues['User_Prof', dvvValueEh];
              Db_Doc_CoAuthors.Post;
            end;
          end;
        end
        else
        begin
          Db_Doc_CoAuthors.Append;
          Db_Doc_CoAuthors.FieldByName('Co_Author_User_Id').AsString := OutParams.DynVar['User_Id'].AsString;   
          Db_Doc_CoAuthors.FieldByName('User_Name').AsString := OutParams.DynVar['User_Name'].AsString;
          Db_Doc_CoAuthors.FieldByName('User_Prof').AsString := OutParams.DynVar['User_Prof'].AsString;
          Db_Doc_CoAuthors.Post;      
        end;
      finally
        Active:=False;
      end;
    end;     
  end;     
end;

procedure TForm_CoAuthors.Tb_DeleteUserClick(Sender: TObject);
begin
  Form_Tech_Proc_Main.P_DeleteFromDBGridEh(Grid_CoAuthors);
end;

procedure TForm_CoAuthors.Tb_SaveClick(Sender: TObject);
var
  ButtonSelected: Integer;
begin
  with Db_Doc_CoAuthors
  do
  begin
    try Post; except end;

    if UpdatesPending 
    then
    begin
      if Sender <> Tb_Save
      Then
      Begin
        With CreateMessageDialog( 'Имеются не сохраненные изменения! Сохранить?',
                                      mtConfirmation,
                                      mbYesNoCancel )
        Do
        Try
          TButton( FindComponent( 'Yes' ) ).Caption := 'Да';
          TButton( FindComponent( 'No' ) ).Caption := 'Нет';
          TButton( FindComponent( 'Cancel' ) ).Caption := 'Отмена';
          Case ShowModal
          Of
            mrYes: ButtonSelected := mrYes;
            mrNo: ButtonSelected := mrNo;
            mrCancel: ButtonSelected := mrCancel;
          End;
        Finally
          Free;
        End;
      End;

      if (ButtonSelected=mrYes)
         or (Sender=Tb_Save)
      then
      begin
        DM_Main.Session.ApplyUpdates([Db_Doc_CoAuthors], True);
        Grid_CoAuthors.SaveVertPos('Doc_Header_Id; Co_Author_User_Id');
        Db_Doc_CoAuthors.Refresh;
        Grid_CoAuthors.RestoreVertPos('Doc_Header_Id; Co_Author_User_Id');

        if Sender<>Tb_Save 
        then
          Self.ModalResult:=mrYes
      end
      else if ButtonSelected=mrNo 
      then
      begin
        DM_Main.Session.CancelUpdates([Db_Doc_CoAuthors]);
        Self.ModalResult := mrNo;
      end
      else if ButtonSelected=mrCancel 
      then
        Self.ModalResult:=mrCancel;
    end
    else
      Self.ModalResult:=mrNo;
    
  end;
end;

end.

