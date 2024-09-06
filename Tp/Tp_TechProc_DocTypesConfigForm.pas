unit Tp_TechProc_DocTypesConfigForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Data.DB, OracleData,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, MemTableDataEh, MemTableEh,
  Vcl.ToolWin, DataDriverEh, RTTI;

type
  TForm_Doc_TypesConfig = class(TForm)
    Grid_DocTypes: TDBGridEh;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Splitter2: TSplitter;
    Panel2: TPanel;
    ListColumnsVars: TListView;
    ListColumnsDocType: TListView;
    Panel3: TPanel;
    Grid_FrameProp: TDBGridEh;
    Splitter3: TSplitter;
    Grid_ConstApprSteps: TDBGridEh;
    SpPutIn: TSpeedButton;
    SpPutOut: TSpeedButton;
    Db_Tp_Doc_Types: TOracleDataSet;
    Db_Tp_Doc_TypesID_TP_DOC_TYPE: TIntegerField;
    Db_Tp_Doc_TypesTP_DOC_TYPE_NAME: TStringField;
    Db_Tp_Doc_TypesTASK_ID: TIntegerField;
    Db_Tp_Doc_TypesFRAME_CLASS: TStringField;
    Db_Tp_Doc_TypesTASK_NAME: TStringField;
    Data_Tp_Doc_Types: TDataSource;
    Db_Frame_Params: TOracleDataSet;
    Db_Frame_ParamsTP_DOC_TYPE_ID: TIntegerField;
    Db_Frame_ParamsCOMPONENT_NAME: TStringField;
    Db_Frame_ParamsCOMPONENT_PROPERTY: TStringField;
    Db_Frame_ParamsCOMPONENT_PRPTY_VALUE: TStringField;
    Data_Frame_Params: TDataSource;
    Db_Const_Steps: TOracleDataSet;
    Db_Const_StepsID_CONST_TP_STEP: TIntegerField;
    Db_Const_StepsTP_DOC_TYPE_ID: TIntegerField;
    Db_Const_StepsDEP_ID: TIntegerField;
    Db_Const_StepsDOC_RT_PNT_POS_ID: TIntegerField;
    Data_Const_Steps: TDataSource;
    Db_Const_StepsDEP_SNAME: TStringField;
    Db_Const_StepsPOINT_USER_NAME: TStringField;
    Db_Type_Clmns: TOracleDataSet;
    Data_Type_Clmns: TDataSource;
    Db_Type_ClmnsID_CLMN: TIntegerField;
    Db_Type_ClmnsTP_DOC_TYPE_ID: TIntegerField;
    Db_Type_ClmnsCOLUMN_NAME: TStringField;
    Db_Type_ClmnsVIEW_STATE: TStringField;
    Db_Doc_Info: TOracleDataSet;
    Db_Doc_InfoID: TFloatField;
    Db_Doc_InfoID_VERS: TIntegerField;
    Db_Doc_InfoID_DOC_FULL: TStringField;
    Db_Doc_InfoDOC_NUM: TStringField;
    Db_Doc_InfoDATE_START_ACTION: TDateTimeField;
    Db_Doc_InfoDATE_END_ACTION: TDateTimeField;
    Db_Doc_InfoDET_ID: TFloatField;
    Db_Doc_InfoDET_NUM: TStringField;
    Db_Doc_InfoDET_NAME: TStringField;
    Db_Doc_InfoCEH_ID: TFloatField;
    Db_Doc_InfoCEH_CODE: TStringField;
    Db_Doc_InfoAUTHOR_LNUM: TFloatField;
    Db_Doc_InfoAUTHOR_NAME: TStringField;
    Db_Doc_InfoDATA_REG: TDateTimeField;
    Db_Doc_InfoDATA_CHANGE: TDateTimeField;
    Db_Doc_InfoREASON: TStringField;
    Db_Doc_InfoCANCEL_DOC_ID: TFloatField;
    Db_Doc_InfoMAIN_DOC_ID: TFloatField;
    Db_Doc_InfoCANCEL_FLAG: TFloatField;
    Db_Doc_InfoCEH_DOCS_FLAG: TFloatField;
    Db_Doc_InfoDET_MAR: TStringField;
    Db_Doc_InfoDOC_LITER: TStringField;
    Db_Doc_InfoDOC_TYPE: TFloatField;
    Db_Doc_InfoTP_NUM: TStringField;
    Db_Doc_InfoTP_NAME: TStringField;
    Db_Doc_InfoTP_WORK_TYPE: TFloatField;
    Db_Doc_InfoTP_WORK_TYPE_NAME: TStringField;
    Db_Doc_InfoIZD_ID: TFloatField;
    Db_Doc_InfoIZD_NAME: TStringField;
    Db_Doc_InfoIZD_TYPE: TStringField;
    Db_Doc_InfoCOMPLECT_ID: TFloatField;
    Db_Doc_InfoTP_TYPE: TFloatField;
    Db_Doc_InfoFLAG_IMP: TFloatField;
    Db_Doc_InfoFLAG_IMP_NAME: TStringField;
    Db_Doc_InfoACT_NUM: TFloatField;
    Db_Doc_InfoACT_DATE: TDateTimeField;
    Db_Doc_InfoDOC_HEADER_ID: TFloatField;
    Db_Doc_InfoEMPS_ID: TStringField;
    Db_Doc_InfoPROJECT_FLAG: TIntegerField;
    Db_Doc_InfoID_DOC_HEADER: TIntegerField;
    Db_Doc_InfoDOC_TYPE_ID: TStringField;
    Db_Doc_InfoDOC_DATE: TDateTimeField;
    Db_Doc_InfoDOC_NUMBER: TStringField;
    Db_Doc_InfoCLMN1_VALUE: TStringField;
    Db_Doc_InfoCLMN2_VALUE: TStringField;
    Db_Doc_InfoCLMN3_VALUE: TStringField;
    Db_Doc_InfoCREATE_USER_ID: TStringField;
    Db_Doc_InfoCREATE_USER_ID_ADD: TIntegerField;
    Db_Doc_InfoCREATE_DATE: TDateTimeField;
    Db_Doc_InfoLAST_MOD_USER_ID: TStringField;
    Db_Doc_InfoLAST_MOD_USER_ID_ADD: TIntegerField;
    Db_Doc_InfoLAST_MOD_DATE: TDateTimeField;
    Db_Doc_InfoSRC_DEP_ID: TIntegerField;
    Db_Doc_InfoSNDR_DEP_ID: TIntegerField;
    Db_Doc_InfoMAIN_DOC_NUM: TStringField;
    Db_Doc_InfoCANCEL_DOC_NUM: TStringField;
    Db_Doc_InfoPARENT_DOC_ID: TIntegerField;
    Db_Doc_InfoDATE_START_ROUTE: TDateTimeField;
    ActionList1: TActionList;
    Act_PutIn: TAction;
    Act_PutOut: TAction;
    Label1: TLabel;
    Label2: TLabel;
    Act_Save: TAction;
    Act_Exit: TAction;
    MemTableEh1: TMemTableEh;
    Control_Panel: TPanel;
    ToolBar1: TToolBar;
    Tb_Save: TToolButton;
    DataSetDriverEh1: TDataSetDriverEh;
    Tb_Exit: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure Db_Tp_Doc_TypesAfterScroll(DataSet: TDataSet);
    procedure Act_PutInExecute(Sender: TObject);
    procedure Act_PutOutExecute(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
    procedure ListColumnsDocTypeItemChecked(Sender: TObject; Item: TListItem);
    procedure Db_Type_ClmnsNewRecord(DataSet: TDataSet);
    procedure Act_SaveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Act_ExitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Db_Frame_ParamsAfterScroll(DataSet: TDataSet);
    procedure Grid_ConstApprStepsColumns0UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_ConstApprStepsColumns1OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Grid_ConstApprStepsColumns1CloseDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Db_Const_StepsNewRecord(DataSet: TDataSet);
    procedure Grid_ConstApprStepsColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
    FColumnsDataUpdate: Boolean;
    FArrOfSaveDataSets: Array Of TDataSet;
  public
    { Public declarations }
    procedure P_ListViewCutItems(ListFrom: TListView; ListTo: TListView);
    procedure P_AddItemListViewInDataSet(Item: TListItem);
    procedure P_DeleteItemListViewFromDataSet(Item: TListItem);
  end;

var
  Form_Doc_TypesConfig: TForm_Doc_TypesConfig;

implementation

{$R *.dfm}

uses
Udm_Main,
Tp_Doc_Info_Form,
Tp_Main_Form,
Tp_TechProc_Frame,
Tp_TechProc_DocDetListFrame,
Tp_TechProc_ComplectFrame,
Gen_Chs_Data_Mod,
Gen_Chs_Dd_Form;

procedure TForm_Doc_TypesConfig.Act_ExitExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm_Doc_TypesConfig.Act_PutInExecute(Sender: TObject);
begin
  P_ListViewCutItems(ListColumnsVars, ListColumnsDocType);
end;

procedure TForm_Doc_TypesConfig.Act_PutOutExecute(Sender: TObject);
begin
  P_ListViewCutItems(ListColumnsDocType, ListColumnsVars);
end;

procedure TForm_Doc_TypesConfig.Act_SaveExecute(Sender: TObject);
Var
  ButtonSelected, i, j: Integer;
  SavingMem: TMemTableEh;
  Arr_Of_DataSets: Array Of TDataSet;
  Arr_Of_ToCommitDataSets: Array Of TDataSet;
  FormHasUpdates: Bool;
  CurMemTableEh: TMemTableEh;
  CurOracleDataSet: TOracleDataSet;
begin
  for i := Low(FArrOfSaveDataSets) to High(FArrOfSaveDataSets)
  do
  begin
    try FArrOfSaveDataSets[i].Post except end;

    if FArrOfSaveDataSets[i] is TMemTableEh
    then
    begin
      if (FArrOfSaveDataSets[i] as TMemTableEh).HasCachedChanges
      then
      begin
        SetLength(Arr_Of_DataSets, Length(Arr_Of_DataSets)+1);
        Arr_Of_DataSets[Length(Arr_Of_DataSets)-1] := FArrOfSaveDataSets[i]
      end;
    end
    else if FArrOfSaveDataSets[i] is TOracleDataSet
    then
    begin
      if (FArrOfSaveDataSets[i] as TOracleDataSet).UpdatesPending
      then
      begin
        SetLength(Arr_Of_DataSets, Length(Arr_Of_DataSets)+1);
        Arr_Of_DataSets[Length(Arr_Of_DataSets)-1] := FArrOfSaveDataSets[i]
      end;
    end

  End;

  if Length(Arr_Of_DataSets)>0
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

    if (ButtonSelected = mrYes)
        or (Sender = Act_Save)
    then
    begin
      SetLength(Arr_Of_ToCommitDataSets, Length(Arr_Of_DataSets));
      for i := Low(Arr_Of_DataSets) to High(Arr_Of_DataSets)
      do
      begin
        if Arr_Of_DataSets[i] is TMemTableEh
        then
        begin
          with Arr_Of_DataSets[i] as TMemTableEh
          do
          begin
            ApplyUpdates(0);
            MergeChangeLog;
            Arr_Of_ToCommitDataSets[i] := (DataDriver as TDataSetDriverEh).ProviderDataSet;
          end;
        end
        else
          Arr_Of_ToCommitDataSets[i] := Arr_Of_DataSets[i];
      end;
      DM_Main.Session.ApplyUpdates(Arr_Of_ToCommitDataSets, True);

      Grid_DocTypes.SaveVertPos(Db_Tp_Doc_Types.UniqueFields);
      for i := Low(FArrOfSaveDataSets) to High(FArrOfSaveDataSets)
      do
        FArrOfSaveDataSets[i].Refresh;

      Grid_DocTypes.RestoreVertPos(Db_Tp_Doc_Types.UniqueFields);

      if Sender<>Act_Save then Self.ModalResult := mrYes;
    end
    else if (ButtonSelected=mrNo)
    then
    begin
      for i := Low(Arr_Of_DataSets) to High(Arr_Of_DataSets)
      do
      begin
        if Arr_Of_DataSets[i] is TMemTableEh
        then
        begin
          with Arr_Of_DataSets[i] as TMemTableEh
          do
          begin
            MergeChangeLog;
            DM_Main.Session.CancelUpdates([(DataDriver as TDataSetDriverEh).ProviderDataSet]);
          end;
        end
        else
          DM_Main.Session.CancelUpdates([Arr_Of_DataSets[i]]);
      end;

      if Sender<>Act_Save then Self.ModalResult := mrNo;
    end
    else if ButtonSelected=mrCancel
    then
      if Sender<>Act_Save then Self.ModalResult := mrCancel;
  end
  else if Sender<>Act_Save then Self.ModalResult := mrNo;
end;

procedure TForm_Doc_TypesConfig.Db_Const_StepsNewRecord(DataSet: TDataSet);
begin
  with DataSet as TOracleDataSet
  do
  begin
    FieldByName('Tp_Doc_Type_Id').AsString := Master.FieldByName(MasterFields).AsString;
  end;
end;

procedure TForm_Doc_TypesConfig.Db_Frame_ParamsAfterScroll(DataSet: TDataSet);
var
  i: Integer;
  TempFrame: TFrame;
  RttiContext: TRttiContext;
  RttiType: TRttiType;
  props: TArray<TRttiProperty>;
begin
  if not DataSet.FieldByName('Component_Name').IsNull
  then
  begin
    if Db_Tp_Doc_Types.FieldByName('Frame_Class').AsString = TFrame_TechProc.ClassName
    then
      TempFrame := TFrame_TechProc.Create(self, 0)
    else if Db_Tp_Doc_Types.FieldByName('Frame_Class').AsString = TFrame_Tp_TechProc_DocDetList.ClassName
    then
      TempFrame := TFrame_Tp_TechProc_DocDetList.Create(self, 0)
    else if Db_Tp_Doc_Types.FieldByName('Frame_Class').AsString = TFrame_Tp_TechProcComplect.ClassName
    then
      TempFrame := TFrame_Tp_TechProcComplect.Create(self, 0);

    with TempFrame
    do
    begin
      try
        Self.Grid_FrameProp.FindFieldColumn('COMPONENT_PROPERTY').PickList.Clear;
        RttiType := RttiContext.GetType(FindComponent(DataSet.FieldByName('Component_Name').AsString).ClassType);
        props:=RttiType.GetProperties;
        for i := Low(props) to high(props)
        do
        begin
          Self.Grid_FrameProp.FindFieldColumn('COMPONENT_PROPERTY').PickList.Add(props[i].Name);
        end;
      finally
        if TempFrame is TFrame_TechProc then  (TempFrame as TFrame_TechProc).Free
        else Free;
      end;
    end;
  end;
end;

procedure TForm_Doc_TypesConfig.Db_Tp_Doc_TypesAfterScroll(DataSet: TDataSet);
var
  NewListItem: TListItem;
  i: Integer;
  TempFrame: TFrame;
begin
  FColumnsDataUpdate := True;
  ListColumnsVars.Clear;
  ListColumnsDocType.Clear;
  with Db_Type_Clmns
  do
  begin
    try
      DisableControls;
      First;
      while not Eof
      do
      begin
        NewListItem := ListColumnsDocType.Items.Add;
        NewListItem.Caption:= Db_Type_ClmnsCOLUMN_NAME.AsString;
        if Db_Type_ClmnsVIEW_STATE.AsString='rowInsertUpdate' then NewListItem.Checked:=True;
        Next;
      end;
    finally
      EnableControls;
    end;
  end;

  with Db_Doc_Info
  do
  begin
    for i := 0 to FieldCount-1
    do
      if ListColumnsDocType.FindCaption(0, Fields[i].FieldName, False, False, False)=Nil
      then
        ListColumnsVars.AddItem(Fields[i].FieldName, Nil);
  end;
  FColumnsDataUpdate := False;

  if DataSet.FieldByName('Frame_Class').AsString = TFrame_TechProc.ClassName
  then
    TempFrame := TFrame_TechProc.Create(self, 0)
  else if DataSet.FieldByName('Frame_Class').AsString = TFrame_Tp_TechProc_DocDetList.ClassName
  then
    TempFrame := TFrame_Tp_TechProc_DocDetList.Create(self, 0)
  else if DataSet.FieldByName('Frame_Class').AsString = TFrame_Tp_TechProcComplect.ClassName
  then
    TempFrame := TFrame_Tp_TechProcComplect.Create(self, 0);

  with TempFrame
  do
  begin
    try
      Self.Grid_FrameProp.FindFieldColumn('COMPONENT_NAME').PickList.Clear;
      for i := 0 to ComponentCount-1
      do
      begin
        Self.Grid_FrameProp.FindFieldColumn('COMPONENT_NAME').PickList.Add(Components[i].Name);
      end;
    finally
      if TempFrame is TFrame_TechProc then  (TempFrame as TFrame_TechProc).Free
      else Free;
    end;
  end;

end;

procedure TForm_Doc_TypesConfig.Db_Type_ClmnsNewRecord(DataSet: TDataSet);
begin
  with DataSet as TOracleDataSet
  do
  begin
    FieldByName('View_State').AsString := 'rowInsert';
    FieldByName('Tp_Doc_Type_Id').AsString := Master.FieldByName(MasterFields).AsString;
  end;
end;

procedure TForm_Doc_TypesConfig.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Act_SaveExecute(Tb_Exit);
  CanClose := Self.ModalResult<>mrCancel;
end;

procedure TForm_Doc_TypesConfig.FormCreate(Sender: TObject);
begin
  FArrOfSaveDataSets := [
   Db_Tp_Doc_Types
   ,Db_Type_Clmns
   ,Db_Frame_Params
   ,Db_Const_Steps
  ]
end;

procedure TForm_Doc_TypesConfig.FormShow(Sender: TObject);
begin
  Db_Type_Clmns.Active:=True;
  Db_Tp_Doc_Types.Active:=True;
  Db_Frame_Params.Active:=True;
  Db_Const_Steps.Active:=True;
end;

procedure TForm_Doc_TypesConfig.Grid_ConstApprStepsColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
Var
  OutParams: TDynVarsEh;
begin
  OutParams:= DM_Main.F_Show_Modal_Form( 'Deps' );
  If OutParams <> Nil
  Then
  Begin
    Db_Const_Steps.Edit;;
    Db_Const_StepsDEP_ID.AsString := OutParams.DynVar[ 'Dep_ID' ].AsString;
    Db_Const_StepsDEP_SNAME.AsString := OutParams.DynVar[ 'Dep_Sname' ].AsString;
  End;
end;

procedure TForm_Doc_TypesConfig.Grid_ConstApprStepsColumns0UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
  var
  InParams, OutParams: TDynVarsEh;
begin
  if (Text<>'')
      and (Text<>(Sender as TDBGridColumnEh).DisplayText)
  then
  begin
    InParams := TDynVarsEh.Create(Self);
    InParams.DynVar[ 'Find' ].AsString := 'CEH';
    InParams.DynVar['v_Keyword'].AsString := Text;
    InParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( InParams );
    OutParams := DM_Gen_Chs.F_Gen_Chose_Form(InParams, Nil);
    if OutParams<>Nil
    then
    begin
      Db_Const_Steps.FieldByName('Dep_Id').AsString := OutParams.DynVar[ 'Dep_Id' ].AsString;
      Text := OutParams.DynVar[ 'Ceh_SName' ].AsString;
    end;
  end
  else if Text=''
  then
  begin
    Db_Const_Steps.FieldByName('Dep_Id').Clear
  end;
end;

procedure TForm_Doc_TypesConfig.Grid_ConstApprStepsColumns1CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  if (DynParams<>Nil)
      and (Accept)
  then
  begin
    with Grid.DataSource.DataSet
    do
    begin
      Edit;
      FieldByName('POINT_USER_NAME').AsString := DynParams.DynVar['POINT_USER_NAME'].AsString;
      FieldByName('DOC_RT_PNT_POS_ID').AsString := DynParams.DynVar['ID_DOC_RT_PNT_POS'].AsString;
      Post;
    end;
  end;

end;

procedure TForm_Doc_TypesConfig.Grid_ConstApprStepsColumns1OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar['Find'].AsString:='Appr_Steps';
  DynParams.DynVar['Filter'].AsString:='t.Chose_State=''unchsn''';
  DynParams := Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form(DynParams);
end;

procedure TForm_Doc_TypesConfig.ListColumnsDocTypeItemChecked(Sender: TObject;
  Item: TListItem);
begin
  if not FColumnsDataUpdate
  then
  begin
    if Item.Checked
    then
    begin
      if Db_Type_Clmns.Locate('COLUMN_NAME', Item.Caption, [loPartialKey])
      then
      begin
        Db_Type_Clmns.Edit;
        Db_Type_ClmnsVIEW_STATE.AsString := 'rowInsertUpdate';
        Db_Type_Clmns.Post;
      end;
    end
    else
    begin
      if Db_Type_Clmns.Locate('COLUMN_NAME', Item.Caption, [loPartialKey])
      then
      begin
        Db_Type_Clmns.Edit;
        Db_Type_ClmnsVIEW_STATE.AsString := 'rowInsert';
        Db_Type_Clmns.Post;
      end;
    end;
  end;
end;

procedure TForm_Doc_TypesConfig.Panel2Resize(Sender: TObject);
begin
  SpPutIn.Top := ((Sender as TPanel).Height div 2)-(SpPutIn.Height{+2});
  SpPutOut.Top := ((Sender as TPanel).Height div 2)+(SpPutOut.Height{+2});
end;

procedure TForm_Doc_TypesConfig.P_AddItemListViewInDataSet(Item: TListItem);
begin
  if not FColumnsDataUpdate
  then
  begin
    Db_Type_Clmns.Append;
    Db_Type_ClmnsCOLUMN_NAME.AsString := Item.Caption;
    Db_Type_ClmnsTP_DOC_TYPE_ID.AsString := Db_Tp_Doc_TypesID_TP_DOC_TYPE.AsString;
    Db_Type_Clmns.Post;
  end;
end;

procedure TForm_Doc_TypesConfig.P_DeleteItemListViewFromDataSet(
  Item: TListItem);
begin
  if (not FColumnsDataUpdate)
     and (not Db_Type_Clmns.IsEmpty)
  then
    if Db_Type_Clmns.Locate('COLUMN_NAME', Item.Caption, [loPartialKey]) then Db_Type_Clmns.Delete;
end;

procedure TForm_Doc_TypesConfig.P_ListViewCutItems(ListFrom, ListTo: TListView);
var
  i: integer;
  NewListItem: TListItem;
  ListToDelete: TList;
begin
  ListToDelete := TList.Create;
  with ListFrom
  do
  begin
    for i := 0 to Items.Count-1
    do
    begin
      if Items[i].Selected
      then
      begin
        NewListItem := ListTo.Items.Add;
        NewListItem.Caption := Items[i].Caption;
        if ListFrom=ListColumnsVars
        then
          P_AddItemListViewInDataSet(NewListItem);
        ListToDelete.Add(Items[i]);
        Items[i].Selected := False;
      end;
    end;
  end;

  for i := 0 to ListToDelete.Count-1
  do
  begin
    NewListItem:=Nil;
    NewListItem:=ListToDelete[i];
    if (NewListItem <> Nil)
       and (NewListItem is TListItem)
    then
    begin
      if ListFrom=ListColumnsDocType
      then
        P_DeleteItemListViewFromDataSet(NewListItem);
      ListFrom.Items.Delete(NewListItem.Index);
    end;
  end;
  ListToDelete.Free;
end;

end.
