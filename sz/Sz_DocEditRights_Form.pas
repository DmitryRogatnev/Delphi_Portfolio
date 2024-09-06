unit Sz_DocEditRights_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList, MemTableEh, DataDriverEh, OracleData, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ToolWin, Vcl.StdCtrls;

type
  TForm_DocEditRights = class(TForm)
    ToolBar1: TToolBar;
    Grid_DocRights: TDBGridEh;
    ActionList1: TActionList;
    Db_DocEditRights: TOracleDataSet;
    Data_DocEditRights: TDataSource;
    Db_DocEditRightsID_SZ_REQ_UPD_ACCESSES: TIntegerField;
    Db_DocEditRightsSZ_PRICE_REQ_ID: TIntegerField;
    Db_DocEditRightsSZ_PRICE_REQ_ITEM_ID: TIntegerField;
    Db_DocEditRightsACCESS_FLAG: TStringField;
    Db_DocEditRightsACCESS_FLAG_NAME: TStringField;
    Db_DocEditRightsACCESS_STATUS: TStringField;
    Db_DocEditRightsACCESS_STATUS_NAME: TStringField;
    Db_DocEditRightsUSER_REQ_ACCESS: TStringField;
    Db_DocEditRightsUSER_ADD_REQ_ACCESS: TIntegerField;
    Db_DocEditRightsDATE_REQ_ACCESS: TDateTimeField;
    Db_DocEditRightsUSER_UPD_ACCESS_STAT: TStringField;
    Db_DocEditRightsUSER_ADD_UPD_ACCESS_STAT: TIntegerField;
    Db_DocEditRightsDATE_UPD_ACCESS_STAT: TDateTimeField;
    Db_DocEditRightsUSERNAMEGETACCESS: TStringField;
    Db_DocEditRightsUSERNAMEADDACCESS: TStringField;
    Db_DocEditRightsITEM: TStringField;
    Driver_DocEditRights: TDataSetDriverEh;
    MemT_DocEditRights: TMemTableEh;
    MemT_DocEditRightsID_SZ_REQ_UPD_ACCESSES: TIntegerField;
    MemT_DocEditRightsSZ_PRICE_REQ_ID: TIntegerField;
    MemT_DocEditRightsSZ_PRICE_REQ_ITEM_ID: TIntegerField;
    MemT_DocEditRightsACCESS_FLAG: TStringField;
    MemT_DocEditRightsACCESS_FLAG_NAME: TStringField;
    MemT_DocEditRightsACCESS_STATUS: TStringField;
    MemT_DocEditRightsACCESS_STATUS_NAME: TStringField;
    MemT_DocEditRightsUSER_REQ_ACCESS: TStringField;
    MemT_DocEditRightsUSER_ADD_REQ_ACCESS: TIntegerField;
    MemT_DocEditRightsDATE_REQ_ACCESS: TDateTimeField;
    MemT_DocEditRightsUSER_UPD_ACCESS_STAT: TStringField;
    MemT_DocEditRightsUSER_ADD_UPD_ACCESS_STAT: TIntegerField;
    MemT_DocEditRightsDATE_UPD_ACCESS_STAT: TDateTimeField;
    MemT_DocEditRightsUSERNAMEGETACCESS: TStringField;
    MemT_DocEditRightsUSERNAMEADDACCESS: TStringField;
    MemT_DocEditRightsITEM: TStringField;
    Act_AddRight: TAction;
    Act_DeleteRight: TAction;
    Act_Save: TAction;
    Tb_AddRight: TToolButton;
    Tb_DeleteRight: TToolButton;
    Tb_Save: TToolButton;
    Tb_Exit: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure Grid_DocRightsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Tb_ExitClick(Sender: TObject);
    procedure Grid_DocRightsColumns2UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure MemT_DocEditRightsNewRecord(DataSet: TDataSet);
    procedure Act_AddRightExecute(Sender: TObject);
    procedure Act_DeleteRightExecute(Sender: TObject);
    procedure Grid_DocRightsColumns5EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Grid_DocRightsColumns5UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure Act_SaveExecute(Sender: TObject);
    procedure Grid_DocRightsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Tb_SaveClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FDocHeaderId: Integer;
    FDocId: Integer;
  public
    { Public declarations }
    property DocId: Integer read FDocId write FDocId;
    constructor Create(AOwner: TComponent; InDocHeaderId: Integer);
  end;

var
  Form_DocEditRights: TForm_DocEditRights;

implementation

{$R *.dfm}

uses
  Udm_Main, Sz_Main, Gen_Chs_Data_Mod;

{ TForm_DocEditRights }

procedure TForm_DocEditRights.Act_AddRightExecute(Sender: TObject);
begin
  Grid_DocRights.DataSource.DataSet.Append;
end;

procedure TForm_DocEditRights.Act_DeleteRightExecute(Sender: TObject);
begin
  Form_Sz_Main.DeleteFromDbGridEh(Grid_DocRights);
end;

procedure TForm_DocEditRights.Act_SaveExecute(Sender: TObject);
var
  ButtonSelected, i, j: Integer;
begin
  try MemT_DocEditRights.Post except end;

  if MemT_DocEditRights.HasCachedChanges
  then
  begin
    if (Sender<>Tb_Save)
    then
    begin
      with CreateMessageDialog( 'Сохранить изменения?',
                                    mtConfirmation,
                                    mbYesNoCancel )
      do
      try
        TButton( FindComponent( 'Yes' ) ).Caption := 'Да';
        TButton( FindComponent( 'No' ) ).Caption := 'Нет';
        TButton( FindComponent( 'Cancel' ) ).Caption := 'Отмена';
        case ShowModal
        of
          mrYes: ButtonSelected := mrYes;
          mrNo: ButtonSelected := mrNo;
          mrCancel: ButtonSelected := mrCancel;
        end;
      finally
        Free;
      end;
    end;

    if (ButtonSelected=mrYes)
        or (Sender=Tb_Save)
    then
    begin

      {$Region 'Проверка'}
      with MemT_DocEditRights.RecordsView.MemTableData.RecordsList
      do
      begin
        for i := 0 to Count-1
        do
        begin
          if Rec[i].UpdateStatus in [usInserted, usModified]
          then
          begin
            if Rec[i].DataValues['ACCESS_FLAG', dvvValueEh]=Null
            then
            begin
              MemT_DocEditRights.Bookmark:=MemT_DocEditRights.RecToBookmark(Rec[i]);
              MessageBox(Handle, 'Не указан вид доступа!', 'Ошибка!', MB_OK  + MB_ICONERROR);
              Exit;
            end;

            if Rec[i].DataValues['ACCESS_STATUS', dvvValueEh]=Null
            then
            begin
              MemT_DocEditRights.Bookmark:=MemT_DocEditRights.RecToBookmark(Rec[i]);
              MessageBox(Handle, 'Не указан статус!', 'Ошибка!', MB_OK  + MB_ICONERROR);
              Exit;
            end;

            if Rec[i].DataValues['USER_REQ_ACCESS', dvvValueEh]=Null
            then
            begin
              MemT_DocEditRights.Bookmark:=MemT_DocEditRights.RecToBookmark(Rec[i]);
              MessageBox(Handle, 'Не указан пользователь!', 'Ошибка!', MB_OK  + MB_ICONERROR);
              Exit;
            end;

            if (Rec[i].DataValues['ACCESS_FLAG', dvvValueEh]='only_one_content')
                and (Rec[i].DataValues['SZ_PRICE_REQ_ITEM_ID', dvvValueEh]=Null)
            then
            begin
              MemT_DocEditRights.Bookmark:=MemT_DocEditRights.RecToBookmark(Rec[i]);
              MessageBox(Handle, 'Не указана позиция!', 'Ошибка!', MB_OK  + MB_ICONERROR);
              Exit;
            end;
          end;
        end;
      end;
      {$EndRegion 'Проверка'}

      MemT_DocEditRights.ApplyUpdates(0);
      MemT_DocEditRights.MergeChangeLog;
      DM_Main.Session.ApplyUpdates([Db_DocEditRights], True);
      Grid_DocRights.SaveVertPos('ID_SZ_REQ_UPD_ACCESSES');
      MemT_DocEditRights.Refresh;
      Grid_DocRights.RestoreVertPos('ID_SZ_REQ_UPD_ACCESSES');
      if Sender<>Tb_Save
      then
        ModalResult:=mrYes;
    end
    else if (ButtonSelected=mrNo)
            and (Sender<>Tb_Save)
    then
    begin
      MemT_DocEditRights.CancelUpdates;
      DM_Main.Session.CancelUpdates([Db_DocEditRights]);
      ModalResult:=mrNo;
    end
    else if (ButtonSelected=mrCancel)
            and (Sender<>Tb_Save)
    then
    begin
      ModalResult:=mrCancel;
    end;
  end
  else if Sender=Tb_Exit
  then
    ModalResult:=mrNo;
end;

constructor TForm_DocEditRights.Create(AOwner: TComponent;
  InDocHeaderId: Integer);
begin
  inherited Create(AOwner);
  FDocHeaderId:=InDocHeaderId;
end;

procedure TForm_DocEditRights.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Act_SaveExecute(Tb_Exit);
  if ModalResult<>mrCancel then CanClose:=False else CanClose:=True;
end;

procedure TForm_DocEditRights.FormShow(Sender: TObject);
var
  InParams: TDynVarsEh;
begin
  Db_DocEditRights.SetVariable(0, FDocHeaderId);
  MemT_DocEditRights.Active:=True;

  with TOracleDataSet.Create(Self)
  do
  begin
    try
      Session:=DM_Main.Session;
      InParams:=TDynVarsEh.Create(Self);
      InParams.DynVar['Find'].AsString:='AccessFlags';
      InParams:=Form_Sz_Main.GenSQLParamsFunction(InParams);
      SQL.Add(InParams.DynVar['SQL'].AsString);
      Active:=True;
      First;
      while not Eof
      do
      begin
        Grid_DocRights.FindFieldColumn('ACCESS_FLAG_NAME').KeyList.Add(FieldByName('ACCESS_FLAG_NAME').AsString);
        Grid_DocRights.FindFieldColumn('ACCESS_FLAG_NAME').PickList.Add(FieldByName('ACCESS_FLAG_NAME').AsString);
        Next;
      end;
    finally
      Free;
    end;
  end;

  with TOracleDataSet.Create(Self)
  do
  begin
    try
      Session:=DM_Main.Session;
      InParams:=TDynVarsEh.Create(Self);
      InParams.DynVar['Find'].AsString:='AccessStats';
      InParams.DynVar['Filter'].AsString:='Where Id_Access_Status<>''requset''';
      InParams:=Form_Sz_Main.GenSQLParamsFunction(InParams);
      SQL.Add(InParams.DynVar['SQL'].AsString);
      Active:=True;
      First;
      while not Eof
      do
      begin
        Grid_DocRights.FindFieldColumn('ACCESS_STATUS_NAME').KeyList.Add(FieldByName('ACCESS_STATUS_NAME').AsString);
        Grid_DocRights.FindFieldColumn('ACCESS_STATUS_NAME').PickList.Add(FieldByName('ACCESS_STATUS_NAME').AsString);
        Next;
      end;
    finally
      Free;
    end;
  end;
end;

procedure TForm_DocEditRights.Grid_DocRightsColumns2UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  var
    InParams, OutParams: TDynVarsEh;
begin
  with (Sender as TDBGridColumnEh).Grid.DataSource.DataSet
  do
  begin
    if (Text<>'')
       and (Text<>FieldByName((Sender as TDBGridColumnEh).FieldName).AsString)
    then
    begin
       InParams:=TDynVarsEh.Create(Self);
       if (Sender as TDBGridColumnEh).FieldName='ACCESS_FLAG_NAME'
       then
       begin
         InParams.DynVar['Find'].AsString:='AccessFlags';
         InParams.DynVar['Filter'].AsString:=Format('Where Access_Flag_Name=''%s'' ', [Text]);
       end
       else if (Sender as TDBGridColumnEh).FieldName='ACCESS_STATUS_NAME'
       then
       begin
         InParams.DynVar['Find'].AsString:='AccessStats';
         InParams.DynVar['Filter'].AsString:=Format('Where Access_Status_Name=''%s'' ', [Text]);
       end;
       InParams:=Form_Sz_Main.GenSQLParamsFunction(InParams);
       OutParams:=DM_Gen_Chs.F_Gen_Chose_Form(InParams);
       if OutParams<>Nil
       then
       begin
         if (Sender as TDBGridColumnEh).FieldName='ACCESS_FLAG_NAME'
         then
         begin
           FieldByName('Access_Flag').AsString:=OutParams.DynVar['ID_ACCESS_FLAG'].AsString;
           Text:=OutParams.DynVar['ACCESS_FLAG_NAME'].AsString
         end
         else if (Sender as TDBGridColumnEh).FieldName='ACCESS_STATUS_NAME'
         then
         begin
           FieldByName('Access_Status').AsString:=OutParams.DynVar['ID_ACCESS_STATUS'].AsString;
           Text:=OutParams.DynVar['ACCESS_STATUS_NAME'].AsString
         end;
       end;
    end;
  end;
end;

procedure TForm_DocEditRights.Grid_DocRightsColumns5EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
  var
    InParams, OutParams: TDynVarsEh;
begin
  with Grid_DocRights.DataSource.DataSet
  do
  begin
    InParams:=TDynVarsEh.Create(Self);
    InParams.DynVar['Find'].AsString:='UsersList';
    //InParams.DynVar['Filter'].AsString:=Format('Where Lower(e.Emp_Surname||e.Emp_Name||e.Emp_Patronymic) Like ''%%''||Lower(%s)||''%%''', [Text]);
    InParams:=Form_Sz_Main.GenSQLParamsFunction(InParams);
    OutParams:=DM_Gen_Chs.F_Gen_Chose_Form(InParams);
    if OutParams<>Nil
    then
    begin
      Edit;
      FieldByName('USER_REQ_ACCESS').AsString:=OutParams.DynVar['Id_User'].AsString;
      FieldByName('USER_ADD_REQ_ACCESS').AsString:=OutParams.DynVar['Id_User_Add'].AsString;
      FieldByName('USERNAMEGETACCESS').AsString:=OutParams.DynVar['Emp_Fio'].AsString;
      Post;
    end;
  end;
end;

procedure TForm_DocEditRights.Grid_DocRightsColumns5UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  var
    InParams, OutParams: TDynVarsEh;
begin
  with (Sender as TDBGridColumnEh).Grid.DataSource.DataSet
  do
  begin
    if (Text<>'')
        and (Text<>FieldByName((Sender as TDBGridColumnEh).FieldName).AsString)
    then
    begin
      InParams:=TDynVarsEh.Create(Self);
      InParams.DynVar['Find'].AsString:='UsersList';
      InParams.DynVar['Filter'].AsString:=Format('Where Lower(e.Emp_Surname||e.Emp_Name||e.Emp_Patronymic) Like ''%%''||Lower(''%s'')||''%%''', [Text]);
      InParams:=Form_Sz_Main.GenSQLParamsFunction(InParams);
      OutParams:=DM_Gen_Chs.F_Gen_Chose_Form(InParams);
      if OutParams<>Nil
      then
      begin
        FieldByName('USER_REQ_ACCESS').AsString:=OutParams.DynVar['Id_User'].AsString;
        FieldByName('USER_ADD_REQ_ACCESS').AsString:=OutParams.DynVar['Id_User_Add'].AsString;
        Text:=OutParams.DynVar['Emp_Fio'].AsString;
      end;
    end
    else
      Text:=FieldByName((Sender as TDBGridColumnEh).FieldName).AsString;
  end;
end;

procedure TForm_DocEditRights.Grid_DocRightsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
  var
    PastedText: String;
begin
  with (Sender as TDBGridEh)
  do
  begin
    if (Column.FieldName = 'ITEM')
        and (DataSource.DataSet.FieldByName('ITEM').IsNull)
    then
    begin
      if DataSource.DataSet.FieldByName('ACCESS_FLAG').AsString='only_one_content'
      then
        PastedText:='  Обязательный параметр...'
      else
        PastedText:='  Не обязательный параметр...';

      Canvas.Brush.Style := bsClear;
      Canvas.Font.Color := clGray;
      Canvas.Font.Style := Canvas.Font.Style + [fsItalic];
      Canvas.TextOut(Rect.Left,
                     Rect.Top,
                     PastedText);
    end;
  end;
end;

procedure TForm_DocEditRights.Grid_DocRightsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Column.Grid.DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      if ((Column.FieldName='ACCESS_FLAG_NAME')
          or (Column.FieldName='ACCESS_STATUS_NAME')
          or (Column.FieldName='USERNAMEGETACCESS')
          or ((Column.FieldName='ITEM') and (FieldByName('ACCESS_FLAG').AsString='only_one_content')))
          and (Column.Visible)
          and (FieldByName(Column.FieldName).IsNull)
      then
        Background:=$00C1B6FF;
    end;
  end;
end;

procedure TForm_DocEditRights.MemT_DocEditRightsNewRecord(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    FieldByName('ID_SZ_REQ_UPD_ACCESSES').AsInteger:=Form_Sz_Main.f_NextSeqNumber(DataSet);
    FieldByName('DATE_REQ_ACCESS').AsDateTime:=Now();
  end;
end;

procedure TForm_DocEditRights.Tb_ExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_DocEditRights.Tb_SaveClick(Sender: TObject);
begin
  Act_SaveExecute(Sender);
end;

end.
