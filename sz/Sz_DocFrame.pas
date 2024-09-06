unit Sz_DocFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBGridEh, MemTableDataEh, Data.DB,
  MemTableEh, DataDriverEh, Vcl.ExtCtrls, DBCtrlsEh, DBLookupEh, OracleData,
  Vcl.StdCtrls, Vcl.Mask, EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.ComCtrls,
  Vcl.ToolWin, System.Actions, Vcl.ActnList, UWorkWithBuffer, Vcl.Menus, Oracle, DateUtils;

type
  TFrame_Doc = class(TFrame)
    Panel2: TPanel;
    Panel_DocInfo: TPanel;
    Grid_Content: TDBGridEh;
    E_DocNumber: TDBEditEh;
    Db_Doc: TOracleDataSet;
    Db_DocID_SZ_PRICE_REQ: TIntegerField;
    Db_DocDOC_HEADER_ID: TIntegerField;
    Db_DocSZ_PRICE_REQ_ID: TIntegerField;
    Db_DocSZ_NUMBER: TStringField;
    Db_DocSZ_DEP_NUMBER: TStringField;
    Db_DocSZ_DATE: TDateTimeField;
    Db_DocSZ_NOTE: TStringField;
    Db_DocSZ_DEP_ID: TIntegerField;
    Db_DocEMP_FIO: TStringField;
    Db_DocI_USER: TStringField;
    Db_DocI_DATE: TDateTimeField;
    Db_DocU_USER: TStringField;
    Db_DocDATE_START_ROUTE: TDateTimeField;
    Db_DocDATE_END_ROUTE: TDateTimeField;
    Data_Doc: TDataSource;
    Lcb_Cont_Sections: TDBLookupComboboxEh;
    Lcb_SectionUser: TDBLookupComboboxEh;
    M_Note: TDBMemoEh;
    Splitter1: TSplitter;
    Db_Doc_Content: TOracleDataSet;
    Db_Doc_ContentID_SZ_PRICE_REQ_ITEM: TIntegerField;
    Db_Doc_ContentSZ_PRICE_REQ_ITEM_ID: TIntegerField;
    Db_Doc_ContentSZ_PRICE_REQ_ID: TIntegerField;
    Db_Doc_ContentITEM_POS_NUM: TIntegerField;
    Db_Doc_ContentITEM_CODE: TStringField;
    Db_Doc_ContentITEM_NUM: TStringField;
    Db_Doc_ContentITEM_NAME: TStringField;
    Db_Doc_ContentITEM_PRICE: TFloatField;
    Db_Doc_ContentITEM_NDS: TIntegerField;
    Db_Doc_ContentITEM_PRICE_DATE_START: TDateTimeField;
    Db_Doc_ContentITEM_PRICE_DATE_END: TDateTimeField;
    Db_Doc_ContentITEM_NOTE: TStringField;
    Db_Doc_ContentITEM_USE_FLAG: TStringField;
    Db_Doc_ContentI_USER: TStringField;
    Db_Doc_ContentI_USER_ADD: TIntegerField;
    Db_Doc_ContentI_DATE: TDateTimeField;
    Db_Doc_ContentU_USER: TStringField;
    Db_Doc_ContentU_USER_ADD: TIntegerField;
    Db_Doc_ContentU_DATE: TDateTimeField;
    Db_Doc_ContentUSER_CORRECT: TStringField;
    Db_Doc_ContentITEM_PRICE_N_NDS: TFloatField;
    Data_Doc_Content: TDataSource;
    Driver_Doc_Content: TDataSetDriverEh;
    MemT_Doc_Content: TMemTableEh;
    MemT_Doc_ContentID_SZ_PRICE_REQ_ITEM: TIntegerField;
    MemT_Doc_ContentSZ_PRICE_REQ_ITEM_ID: TIntegerField;
    MemT_Doc_ContentSZ_PRICE_REQ_ID: TIntegerField;
    MemT_Doc_ContentITEM_POS_NUM: TIntegerField;
    MemT_Doc_ContentITEM_CODE: TStringField;
    MemT_Doc_ContentITEM_NUM: TStringField;
    MemT_Doc_ContentITEM_NAME: TStringField;
    MemT_Doc_ContentITEM_PRICE: TFloatField;
    MemT_Doc_ContentITEM_NDS: TIntegerField;
    MemT_Doc_ContentITEM_PRICE_DATE_START: TDateTimeField;
    MemT_Doc_ContentITEM_PRICE_DATE_END: TDateTimeField;
    MemT_Doc_ContentITEM_NOTE: TStringField;
    MemT_Doc_ContentITEM_USE_FLAG: TStringField;
    MemT_Doc_ContentI_USER: TStringField;
    MemT_Doc_ContentI_USER_ADD: TIntegerField;
    MemT_Doc_ContentI_DATE: TDateTimeField;
    MemT_Doc_ContentU_USER: TStringField;
    MemT_Doc_ContentU_USER_ADD: TIntegerField;
    MemT_Doc_ContentU_DATE: TDateTimeField;
    MemT_Doc_ContentUSER_CORRECT: TStringField;
    MemT_Doc_ContentITEM_PRICE_N_NDS: TFloatField;
    ToolBar1: TToolBar;
    Tb_Add: TToolButton;
    Tb_Copy: TToolButton;
    Tb_Paste: TToolButton;
    Tb_Delete: TToolButton;
    Tb_Save: TToolButton;
    ActionList1: TActionList;
    Db_Doc_Contacts: TOracleDataSet;
    Db_Doc_ContactsID_SZ_PR_REQ_CONT: TStringField;
    Db_Doc_ContactsSZ_PRICE_REQ_ID: TStringField;
    Db_Doc_ContactsCONT_EMP_ID: TStringField;
    Db_Doc_ContactsCONT_USER_ID: TStringField;
    Db_Doc_ContactsCONT_SECTION: TStringField;
    Db_Doc_ContactsCONT_DEP_ID: TStringField;
    Db_Doc_ContactsI_USER: TStringField;
    Db_Doc_ContactsI_USER_ADD: TStringField;
    Db_Doc_ContactsI_DATE: TStringField;
    Db_Doc_ContactsU_USER: TStringField;
    Db_Doc_ContactsU_USER_ADD: TStringField;
    Db_Doc_ContactsU_DATE: TStringField;
    Db_Doc_ContactsDEP_SNAME: TStringField;
    Db_Doc_ContactsCONT_SECTION_NAME: TStringField;
    Db_Doc_Sections: TOracleDataSet;
    Data_Doc_Sections: TDataSource;
    Db_Doc_ContactsEMP_FIO: TStringField;
    Data_Doc_Contacts: TDataSource;
    Db_SectionUsers: TOracleDataSet;
    Data_SectionUsers: TDataSource;
    Db_Doc_SectionsCONT_SECTION: TStringField;
    Db_Doc_SectionsCONT_DEP_ID: TFloatField;
    Db_Doc_SectionsDOCDEPID: TFloatField;
    Db_Doc_SectionsDEP_SNAME: TStringField;
    Db_Doc_SectionsCONT_SECTION_NAME: TStringField;
    Db_SectionUsersID_DEP: TIntegerField;
    Db_SectionUsersEMP_FIO: TStringField;
    Db_SectionUsersID_USER: TStringField;
    Db_SectionUsersEMP_ID: TIntegerField;
    Act_AddItem: TAction;
    Act_Copy: TAction;
    Act_Paste: TAction;
    Act_Delete: TAction;
    Tb_Print: TToolButton;
    Act_Print: TAction;
    ToolButton1: TToolButton;
    Tb_Lock: TToolButton;
    E_DocDate: TDBDateTimeEditEh;
    Db_Items_Links: TOracleDataSet;
    Db_Items_LinksP_SZ_PRICE_REQ_ITEM_ID: TIntegerField;
    Db_Items_LinksC_SZ_PRICE_REQ_ITEM_ID: TIntegerField;
    Pm_Content: TPopupMenu;
    ActAddItem1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Data_Items_Links: TDataSource;
    Db_DocNOKRITEMSEXISTS: TFloatField;
    Pkg_Sz_Price_Req: TOraclePackage;
    Db_UserRights: TOracleDataSet;
    Db_UserRightsID_SZ_REQ_UPD_ACCESSES: TIntegerField;
    Db_UserRightsSZ_PRICE_REQ_ID: TIntegerField;
    Db_UserRightsSZ_PRICE_REQ_ITEM_ID: TIntegerField;
    Db_UserRightsACCESS_FLAG: TStringField;
    Db_UserRightsACCESS_FLAG_NAME: TStringField;
    Db_UserRightsACCESS_STATUS: TStringField;
    Db_UserRightsACCESS_STATUS_NAME: TStringField;
    Db_UserRightsUSER_REQ_ACCESS: TStringField;
    Db_UserRightsUSER_ADD_REQ_ACCESS: TIntegerField;
    Db_UserRightsDATE_REQ_ACCESS: TDateTimeField;
    Db_UserRightsUSER_UPD_ACCESS_STAT: TStringField;
    Db_UserRightsUSER_ADD_UPD_ACCESS_STAT: TIntegerField;
    Db_UserRightsDATE_UPD_ACCESS_STAT: TDateTimeField;
    DBGridEh1: TDBGridEh;
    Db_Doc_ContentLINKS_FLAG: TFloatField;
    MemT_Doc_ContentLINKS_FLAG: TFloatField;
    procedure Db_DocNewRecord(DataSet: TDataSet);
    procedure Lcb_Cont_SectionsKeyValueChanged(Sender: TObject);
    procedure Lcb_SectionUserKeyValueChanged(Sender: TObject);
    procedure Act_AddItemExecute(Sender: TObject);
    procedure Act_CopyExecute(Sender: TObject);
    procedure Act_PasteExecute(Sender: TObject);
    procedure Act_DeleteExecute(Sender: TObject);
    procedure Tb_SaveClick(Sender: TObject);
    procedure MemT_Doc_ContentNewRecord(DataSet: TDataSet);
    function Grid_ContentMoveRecords(Sender: TObject; BookmarkList: TBMListEh;
      ToRecNo, TreeLevel: Integer; CheckOnly: Boolean): Boolean;
    procedure Grid_ContentMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ContentColumns0UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Db_Doc_SectionsAfterOpen(DataSet: TDataSet);
    procedure Db_Doc_ContactsNewRecord(DataSet: TDataSet);
    procedure Grid_ContentColumns3UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Act_PrintExecute(Sender: TObject);
    procedure MemT_Doc_ContentBeforeDelete(DataSet: TDataSet);
    procedure Grid_ContentGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Grid_ContentColumns7UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure MemT_Doc_ContentAfterDelete(DataSet: TDataSet);
    procedure E_DocNumberEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Db_DocBeforeEdit(DataSet: TDataSet);
    procedure Db_Doc_ContactsBeforeEdit(DataSet: TDataSet);
    procedure MemT_Doc_ContentBeforeEdit(DataSet: TDataSet);
    procedure Grid_ContentColumns1GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
  private
    { Private declarations }
    FGridRecordMoving: Boolean;
    FDocHeaderId: Integer;
    FDocDepId: Integer;
    FEditMode: Boolean;
    FArrOfSaveDataSets: Array Of TDataSet;
    FInternalSectionsChange: Boolean;
    FContentColumns: TStringList;
    FUserRigths: TStringList;
    FParentFrame: TFrame;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; InDocHeaderId: Integer);
    property DocDepId: Integer read FDocDepId write FDocDepId;
    property DocHeaderId: Integer read FDocHeaderId;
    procedure P_Open_Doc;
    function  F_Save_Doc(Sender: TObject): Integer;
    procedure p_CopyItemsInBuffer(Action: TGridEditActionEh);
    procedure p_UpdateEditMode;
  end;

implementation

{$R *.dfm}

uses
  Sz_Main, Udm_Main, Gen_Chs_Data_Mod, Sz_DocReportData;

procedure TFrame_Doc.Act_CopyExecute(Sender: TObject);
begin
  p_CopyItemsInBuffer(geaCopyEh);
end;

procedure TFrame_Doc.Act_DeleteExecute(Sender: TObject);
var
  I: integer;
  NonKRExists: Boolean;
  NowContactValues: Variant;
begin
  Form_Sz_Main.P_DeleteFromDBGridEh(Grid_Content);

  {NonKRExists:=False;
  with MemT_Doc_Content
  do
  begin
    with RecordsView.MemTableData.RecordsList
    do
    begin
      for i:=0 to Count-1
      do
      begin
        ShowMessage(Copy(VarToStr(Rec[i].DataValues['ITEM_CODE',dvvValueEh]), 0, 2));
        if Copy(VarToStr(Rec[i].DataValues['ITEM_CODE',dvvValueEh]), 0, 2)<>'КР'
        then
        begin
          NonKRExists:=True;
          Break;
        end;
      end;
    end;
  end;

  if not NonKRExists
  then
  begin
    try
      Db_Doc_Contacts.DisableControls;
      FInternalSectionsChange:=True;
      NowContactValues:=VarArrayCreate([0, 1], varVariant);
      NowContactValues[0]:= Db_Doc_ContactsCONT_SECTION.AsVariant;
      NowContactValues[1]:= Db_Doc_ContactsCONT_DEP_ID.AsVariant;
      if (Db_Doc_Contacts.Locate('CONT_SECTION;CONT_DEP_ID',
                                VarArrayOf(['copy',
                                           163]),
                                [loPartialKey]))
      then
        Db_Doc_Contacts.Delete;

      Db_Doc_Sections.SetVariable(1, 1);
      Db_Doc_Sections.Refresh;
      Db_Doc_Contacts.Locate('CONT_SECTION;CONT_DEP_ID',
                                NowContactValues,
                                [loPartialKey]);
    finally
      Db_Doc_Contacts.EnableControls;
      FInternalSectionsChange:=False;
    end;
  end;  }
end;

procedure TFrame_Doc.Act_PasteExecute(Sender: TObject);
var
  BufferingArrayItems: TBufferStructOfMemRecs;
  Buffer: TBufferStruct;
  BuffredMemRec, BuffredParamMemRec, RecNowBuff: TBufferedRecord;
  NewItemRec, ParentRec: TMemoryRecordEh;
  MainGridDataSet, ParamGridDataSet: TDataSet;
  i, j, ParentRecIndex: Integer;
  StrList_IdLinks: TStringList;
  InParams: TDynVarsEh;
  InsetingItemDocInfo: TOracleDataSet;
begin
  Buffer := Form_Sz_Main.LoadItemFromBuffer;
  MainGridDataSet := Grid_Content.DataSource.DataSet;
  if (MainGridDataSet as TMemTableEh).Rec<>Nil
  then
    RecNowBuff := TBufferedRecord.Create((MainGridDataSet as TMemTableEh).Rec)
  else
    RecNowBuff := Nil;

  if Buffer=Nil
  then
  begin
    Exit;
  end;

  BufferingArrayItems := Buffer.FindBuffer(MainGridDataSet.Name);
  StrList_IdLinks := TStringList.Create;
  if BufferingArrayItems<> Nil
  then
  begin
    try
      MainGridDataSet.DisableControls;
      for i := 0 to BufferingArrayItems.BufRecCount-1
      do
      begin
        (MainGridDataSet as TMemTableEh).RecordsView.MemTableData.RecordsList.BeginUpdate;
        BuffredMemRec := BufferingArrayItems.BufRec[i];
        if VarToStr(MainGridDataSet.Lookup('ITEM_CODE', BuffredMemRec.ValueByFieldName['ITEM_CODE'], 'ID_SZ_PRICE_REQ_ITEM'))=''
        then
        begin
          with (MainGridDataSet as TMemTableEh).RecordsView.MemTableData.RecordsList
          do
          begin
            NewItemRec := NewRecord;
            for j := 0 to NewItemRec.DataStruct.Count-1
            do
              NewItemRec.Value[j, dvvValueEh]:=BuffredMemRec.Value[j];

            StrList_IdLinks.Add(Format('%s=%s', [VarToStr(NewItemRec.DataValues['ID_SZ_PRICE_REQ_ITEM', dvvValueEh]), IntToStr(Form_Sz_Main.F_NextSeqNumber(MainGridDataSet))]));
            if DocDepId=184
            then
            begin
              InParams:=TDynVarsEh.Create(Self);
              InParams.DynVar['Find'].AsString:='SzPriceReqDocs';
              InParams.DynVar['Filter'].AsString:=Format('Where Id_Sz_Price_Req=%s', [BuffredMemRec.ValueByFieldName['SZ_PRICE_REQ_ID']]);
              InParams:=Form_Sz_Main.GenSQLParamsFunction(InParams);
              with TOracleDataSet.Create(Self)
              do
              begin
                try
                  Session:=DM_Main.Session;
                  SQL.Add(InParams.DynVar['SQL'].AsString);
                  Active:=True;
                  if FieldByName('SZ_DEP_ID').AsInteger=261
                  then
                  begin
                    Db_Items_Links.Append;
                    Db_Items_LinksP_SZ_PRICE_REQ_ITEM_ID.AsString:=StrList_IdLinks.Values[VarToStr(NewItemRec.DataValues['ID_SZ_PRICE_REQ_ITEM', dvvValueEh])];
                    Db_Items_LinksC_SZ_PRICE_REQ_ITEM_ID.AsVariant:=NewItemRec.DataValues['ID_SZ_PRICE_REQ_ITEM', dvvValueEh];
                    Db_Items_Links.Post;
                    NewItemRec.DataValues['LINKS_FLAG', dvvValueEh] := 1;
                  end;
                finally
                  Free;
                  InParams.Free;
                end;
              end;
            end;
            NewItemRec.DataValues['ID_SZ_PRICE_REQ_ITEM', dvvValueEh] := StrList_IdLinks.Values[VarToStr(NewItemRec.DataValues['ID_SZ_PRICE_REQ_ITEM', dvvValueEh])];
            if NewItemRec<>Nil
            then
            begin
              NewItemRec.DataValues['SZ_PRICE_REQ_ID', dvvValueEh] := Db_DocID_SZ_PRICE_REQ.AsVariant;
              NewItemRec.DataValues['ITEM_PRICE_DATE_START', dvvValueEh] := Null;
              NewItemRec.DataValues['ITEM_PRICE_DATE_END', dvvValueEh] := Null;
              NewItemRec.DataValues['ITEM_USE_FLAG', dvvValueEh] := 1;
              NewItemRec.DataValues['U_User', dvvValueEh] := DM_Main.Session.LogonUsername;
              NewItemRec.DataValues['I_User', dvvValueEh] := DM_Main.Session.LogonUsername;
              NewItemRec.DataValues['USER_CORRECT', dvvValueEh] := DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[]);
              NewItemRec.UpdateStatus := usInserted;
              AddRecord(NewItemRec);
            end;
            (MainGridDataSet as TMemTableEh).RecordsView.MemTableData.RecordsList.EndUpdate;
          end;
        end
        else if DocDepId=184
        then
        begin
          ParentRecIndex := (MainGridDataSet as TMemTableEh).FindRec('ITEM_CODE', BuffredMemRec.ValueByFieldName['ITEM_CODE'], [loPartialKey]);
          if ParentRecIndex<>-1
          then
          begin
            ParentRec:=(MainGridDataSet as TMemTableEh).RecordsView.Rec[ParentRecIndex];
            InParams:=TDynVarsEh.Create(Self);
            InParams.DynVar['Find'].AsString:='SzPriceReqDocs';
            InParams.DynVar['Filter'].AsString:=Format('Where Id_Sz_Price_Req=%s', [BuffredMemRec.ValueByFieldName['SZ_PRICE_REQ_ID']]);
            InParams:=Form_Sz_Main.GenSQLParamsFunction(InParams);
            with TOracleDataSet.Create(Self)
            do
            begin
              try
                Session:=DM_Main.Session;
                SQL.Add(InParams.DynVar['SQL'].AsString);
                Active:=True;
                if FieldByName('SZ_DEP_ID').AsInteger=261
                then
                begin
                  if VarToStr(Db_Items_Links.Lookup('P_SZ_PRICE_REQ_ITEM_ID;C_SZ_PRICE_REQ_ITEM_ID', VarArrayOf([ParentRec.DataValues['ID_SZ_PRICE_REQ_ITEM', dvvValueEh], BuffredMemRec.ValueByFieldName['ID_SZ_PRICE_REQ_ITEM']]), 'C_SZ_PRICE_REQ_ITEM_ID'))=''
                  then
                  begin
                    Db_Items_Links.Append;
                    Db_Items_LinksP_SZ_PRICE_REQ_ITEM_ID.AsVariant:=ParentRec.DataValues['ID_SZ_PRICE_REQ_ITEM', dvvValueEh];
                    Db_Items_LinksC_SZ_PRICE_REQ_ITEM_ID.AsVariant:=BuffredMemRec.ValueByFieldName['ID_SZ_PRICE_REQ_ITEM'];
                    Db_Items_Links.Post;
                    NewItemRec.DataValues['LINKS_FLAG', dvvValueEh] := 1;
                  end;
                end;
              finally
                Free;
                InParams.Free;
              end;
            end;
          end;
        end;
      end;
    finally;
      MainGridDataSet.EnableControls;
      Grid_Content.Repaint;
      StrList_IdLinks.Free;
    end;
  end;
end;

procedure TFrame_Doc.Act_PrintExecute(Sender: TObject);
begin
  with TDm_ReportData.Create(Self, DocHeaderId)
  do
  begin
    try
      PrintDoc;
    finally
      Free;
    end;
  end;
end;

procedure TFrame_Doc.Act_AddItemExecute(Sender: TObject);
begin
  Grid_Content.DataSource.DataSet.Append;
end;

constructor TFrame_Doc.Create(AOwner: TComponent; InDocHeaderId: Integer);
begin
  inherited Create(AOwner);
  FDocHeaderId:=InDocHeaderId;
  Self.Name := Format('%s_%d', [Self.ClassName, FDocHeaderId]);
  FContentColumns:=TStringList.Create;
  FContentColumns.StrictDelimiter:=True;
  FContentColumns.Delimiter:=';';
  FUserRigths:=TStringList.Create;
end;

procedure TFrame_Doc.Db_DocBeforeEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (FieldByName('I_User').AsString<>DM_Main.Session.LogonUsername)
        And not(usAdmin In Form_Sz_Main.UserStates)
        And (FUserRigths.IndexOf('full')=-1)
        And (FUserRigths.IndexOf('only_info')=-1)
    then
      Abort;
  end;
end;

procedure TFrame_Doc.Db_DocNewRecord(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    FieldByName('SZ_DEP_ID').AsInteger:=Self.DocDepId{DM_Main.F_Oracle('Stp.Pkg_User.F_Get_User_Department_Id', [])};
    FieldByName('Doc_Header_Id').AsInteger:=Form_Sz_Main.f_NextSeqNumber('SRC.S_DOC_HEADERS');
    FieldByName('I_User').AsString:=DM_Main.Session.LogonUsername;
  end;
end;

procedure TFrame_Doc.Db_Doc_ContactsBeforeEdit(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    if (Db_Doc.FieldByName('I_User').AsString<>DM_Main.Session.LogonUsername)
        And not(usAdmin In Form_Sz_Main.UserStates)
        And (FUserRigths.IndexOf('full')=-1)
        And (FUserRigths.IndexOf('only_info')=-1)
    then
      Abort;
  end;
end;

procedure TFrame_Doc.Db_Doc_ContactsNewRecord(DataSet: TDataSet);
begin
  with DataSet
  do
  begin
    FieldByName('SZ_PRICE_REQ_ID').AsInteger:=Db_DocID_SZ_PRICE_REQ.AsInteger;
    FieldByName('I_User').AsString:=DM_Main.Session.LogonUsername;
  end;
end;

procedure TFrame_Doc.Db_Doc_SectionsAfterOpen(DataSet: TDataSet);
begin
  if not FEditMode
  then
    Exit;

  with DataSet do
  begin
    try
      DisableControls;
      FInternalSectionsChange:=True;
      First;
      while not Eof
      do
      begin
        if not Db_Doc_Contacts.Locate('CONT_SECTION;CONT_DEP_ID',
                                      VarArrayOf([Db_Doc_SectionsCONT_SECTION.AsVariant,
                                                 Db_Doc_SectionsCONT_DEP_ID.AsVariant]),
                                      [loPartialKey])
        then
        begin
          Db_Doc_Contacts.Append;
          Db_Doc_ContactsCONT_SECTION.AsString:=Db_Doc_SectionsCONT_SECTION.AsString;
          Db_Doc_ContactsCONT_SECTION_NAME.AsString:=Db_Doc_SectionsCONT_SECTION_NAME.AsString;
          Db_Doc_ContactsCONT_DEP_ID.AsString:=Db_Doc_SectionsCONT_DEP_ID.AsString;
          Db_SectionUsers.Refresh;
          Db_SectionUsers.First;
          Db_Doc_ContactsCONT_EMP_ID.AsString:=Db_SectionUsersEMP_ID.AsString;
          Db_Doc_ContactsCONT_USER_ID.AsString:=Db_SectionUsersID_USER.AsString;
          Db_Doc_ContactsEMP_FIO.AsString:=Db_SectionUsersEMP_FIO.AsString;
          Db_Doc_Contacts.Post;
        end;
        Next;
      end;
    finally
      FInternalSectionsChange:=False;
      EnableControls;
      First;
      Lcb_Cont_Sections.Text:=Db_Doc_SectionsCONT_SECTION_NAME.AsString;
      Db_Doc_Contacts.Locate('CONT_SECTION;CONT_DEP_ID',
                                VarArrayOf([Db_Doc_SectionsCONT_SECTION.AsVariant,
                                           Db_Doc_SectionsCONT_DEP_ID.AsVariant]),
                                [loPartialKey])
    end;
  end;
end;

procedure TFrame_Doc.E_DocNumberEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  Self.E_DocNumber.Text:=DM_Main.F_Oracle( 'Mrk.Pkg_Sz_Price_Req.F_GetNewDocNum(user_dep_id => :user_dep_id)', [DocDepId])
end;

function TFrame_Doc.F_Save_Doc(Sender: TObject): Integer;
Var
  ButtonSelected, i, j: Integer;
  SavingMem: TMemTableEh;
  Arr_Of_DataSets: Array Of TDataSet;
  Arr_Of_ToCommitDataSets: Array Of TDataSet;
  FormHasUpdates: Bool;
  CurMemTableEh: TMemTableEh;
  CurOracleDataSet: TOracleDataSet;
  Test: Variant;
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
        or (Sender = Tb_Save)
    then
    begin
      {$Region 'Проверки'}
      if MemT_Doc_Content.IsEmpty
      then
      begin
        MessageBox(Handle, 'Пустой документ!', 'Ошибка!', MB_OK  + MB_ICONERROR);
        Exit;
      end;

      for i := 0 to MemT_Doc_Content.RecordsView.Count-1
      do
      begin
        with MemT_Doc_Content.RecordsView
        do
        begin
          if (Rec[i].DataValues['ITEM_PRICE', dvvValueEh]=Null)
             and (Grid_Content.FindFieldColumn('ITEM_PRICE').Visible)
          then
          begin
            MemT_Doc_Content.Bookmark:=MemT_Doc_Content.RecToBookmark(Rec[i]);
            MessageBox(Handle, 'Не указана цена!', 'Ошибка!', MB_OK  + MB_ICONERROR);
            Exit;
          end;
          if (Rec[i].DataValues['ITEM_NDS', dvvValueEh]=Null)
             and (Grid_Content.FindFieldColumn('ITEM_NDS').Visible)
          then
          begin
            MemT_Doc_Content.Bookmark:=MemT_Doc_Content.RecToBookmark(Rec[i]);
            MessageBox(Handle, 'Не указан НДС!', 'Ошибка!', MB_OK  + MB_ICONERROR);
            Exit;
          end;
          if (Rec[i].DataValues['ITEM_PRICE_DATE_START', dvvValueEh]=Null)
             and (Grid_Content.FindFieldColumn('ITEM_PRICE_DATE_START').Visible)
          then
          begin
            MemT_Doc_Content.Bookmark:=MemT_Doc_Content.RecToBookmark(Rec[i]);
            MessageBox(Handle, 'Не указана дата начала действия цены!', 'Ошибка!', MB_OK  + MB_ICONERROR);
            Exit;
          end;
          if (Rec[i].DataValues['ITEM_PRICE_DATE_END', dvvValueEh]=Null)
             and (Grid_Content.FindFieldColumn('ITEM_PRICE_DATE_END').Visible)
          then
          begin
            MemT_Doc_Content.Bookmark:=MemT_Doc_Content.RecToBookmark(Rec[i]);
            MessageBox(Handle, 'Не указана дата окончания действия цены!', 'Ошибка!', MB_OK  + MB_ICONERROR);
            Exit;
          end;
        end;
      end;

      {$EndRegion 'Проверки'}

      SetLength(Arr_Of_ToCommitDataSets, Length(Arr_Of_DataSets));
      for i := Low(Arr_Of_DataSets) to High(Arr_Of_DataSets)
      do
      begin
        try
          Arr_Of_DataSets[i].DisableControls;
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
        finally
          Arr_Of_DataSets[i].EnableControls;
        end;
      end;
      DM_Main.Session.ApplyUpdates(Arr_Of_ToCommitDataSets, True);

      for i := Low(FArrOfSaveDataSets) to High(FArrOfSaveDataSets)
      do
        FArrOfSaveDataSets[i].Refresh;
     //(FormMain_RepairDocs.FindOpenedFrame('_mainlist_').ViewFrame as TFrame_RepairDocsList).Db_RepairDocsList.Refresh;
      if Sender<>Tb_Save then Result := mrYes;
    end
    else if (ButtonSelected=mrNo)
    then
    begin
      for i := Low(Arr_Of_DataSets) to High(Arr_Of_DataSets)
      do
      begin
        try
          Arr_Of_DataSets[i].DisableControls;
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
        finally
          Arr_Of_DataSets[i].EnableControls;
        end;
      end;

      if Sender<>Tb_Save then Result := mrNo;
    end
    else if ButtonSelected=mrCancel
    then
      if Sender<>Tb_Save then Result := mrCancel;
  end
  else if Sender<>Tb_Save then Result := mrNo;
end;

procedure TFrame_Doc.Grid_ContentColumns0UpdateData(Sender: TObject;
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
      InParams.DynVar['Find'].AsString:='Products';
      if (Sender as TDBGridColumnEh).FieldName='ITEM_CODE'
      then
        InParams.DynVar['Filter'].AsString:=Format(' Lower(a.Item_Code) like ''%%''||Lower(''%s'')||''%%'' ', [Text])
      else if (Sender as TDBGridColumnEh).FieldName='ITEM_NUM'
      then
        InParams.DynVar['Filter'].AsString:=Format(' Lower(Regexp_Replace(a.Item_Num, ''[ -.]'','''', 1, 0, ''i'')) like  ''%%''||Lower(Regexp_Replace(''%s'', ''[ -.]'','''', 1, 0, ''i''))||''%%'' ', [Text])
      else if (Sender as TDBGridColumnEh).FieldName='ITEM_NAME'
      then
        InParams.DynVar['Filter'].AsString:=Format(' Lower(a.Item_Name) like ''%%''||Lower(''%s'')||''%%'' ', [Text]);
      InParams:=Form_Sz_Main.GenSQLParamsFunction(InParams);
      OutParams:=DM_Gen_Chs.F_Gen_Chose_Form(InParams);
      if OutParams<>Nil
      then
      begin
        if VarToStr(Lookup('ITEM_CODE', OutParams.DynVar['ITEM_CODE'].AsString, 'ID_SZ_PRICE_REQ_ITEM'))=''
        then
        begin
          FieldByName('ITEM_CODE').AsString:=OutParams.DynVar['ITEM_CODE'].AsString;
          if Copy(OutParams.DynVar['ITEM_CODE'].AsString, 0, 2)<>'КР'
          then
          begin
            Db_Doc_Sections.SetVariable(1, 1);
            Db_Doc_Sections.Refresh;
          end;
          FieldByName('ITEM_NUM').AsString:=OutParams.DynVar['ITEM_NUM'].AsString;
          FieldByName('ITEM_NAME').AsString:=OutParams.DynVar['ITEM_NAME'].AsString;
          if (Sender as TDBGridColumnEh).FieldName='ITEM_CODE'
          then
            Text:=OutParams.DynVar['ITEM_CODE'].AsString
          else if (Sender as TDBGridColumnEh).FieldName='ITEM_NUM'
          then
            Text:=OutParams.DynVar['ITEM_NUM'].AsString
          else if (Sender as TDBGridColumnEh).FieldName='ITEM_NAME'
          then
            Text:=OutParams.DynVar['ITEM_NAME'].AsString;
        end
        else
        begin
          MessageBox(Handle, 'Уже есть в документе!', 'Ошибка!', MB_OK  + MB_ICONERROR);
          Text:=FieldByName((Sender as TDBGridColumnEh).FieldName).AsString;
        end;
      end
      else
        Text:=FieldByName((Sender as TDBGridColumnEh).FieldName).AsString;
    end;
  end;
end;

procedure TFrame_Doc.Grid_ContentColumns1GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  with Grid_Content.DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      if MemT_Doc_ContentLINKS_FLAG.AsInteger=1
      then
        Params.ReadOnly:=True
      else
        Params.ReadOnly:=False;
    end;
  end;
end;

procedure TFrame_Doc.Grid_ContentColumns3UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  var
    ProductCost, NDSValue: Double;
begin
  with Sender as TDBGridColumnEh
  do
  begin
    if Text<>''
    then
    begin
      if FieldName='ITEM_PRICE'
      then
      begin
        ProductCost:=StrToFloat(Text);
        NDSValue:=Grid.DataSource.DataSet.FieldByName('ITEM_NDS').AsFloat;
      end
      else if FieldName='ITEM_NDS'
      then
      begin
        ProductCost:=Grid.DataSource.DataSet.FieldByName('ITEM_PRICE').AsFloat;
        NDSValue:=StrToFloat(Text);
      end;

      Grid.DataSource.DataSet.FieldByName('ITEM_PRICE_N_NDS').AsFloat:=ProductCost*(1.00+(NDSValue/100.00));
    end;
  end;

end;

procedure TFrame_Doc.Grid_ContentColumns7UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  with (Sender as TDBGridColumnEh).Grid.DataSource.DataSet
  do
  begin
    if (Text<>'')
        and (FieldByName('ITEM_PRICE_DATE_END').IsNull)
    then
      FieldByName('ITEM_PRICE_DATE_END').AsString:=Format('01.04.%d',[YearOf(StrToDate(Text))+1]);
  end;
end;

procedure TFrame_Doc.Grid_ContentGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Column.Grid.DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      if ((Column.FieldName='ITEM_PRICE')
          or (Column.FieldName='ITEM_PRICE_DATE_START')
          or (Column.FieldName='ITEM_PRICE_DATE_END')
          or (Column.FieldName='ITEM_NDS'))
          and (Column.Visible)
          and (FieldByName(Column.FieldName).IsNull)
      then
        Background:=$00C1B6FF;

      if ((Column.FieldName='ITEM_CODE')
          or (Column.FieldName='ITEM_NUM')
          or (Column.FieldName='ITEM_NAME'))
          and (Column.Visible)
          and (FieldByName('Links_Flag').AsInteger=1)
      then
      begin
        AFont.Color:=clGrayText;
        Background:=clMenu;
      end;
    end;
  end;
end;

procedure TFrame_Doc.Grid_ContentMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var
    MovingRec, ParentMovingRec, PrevParentMovingRec: TMemRecViewEh;
    i, RecIndex: Integer;
begin
  if (FGridRecordMoving)
     And (Button=mbLeft)
  then
  begin
    //ShowMessage('Строка передвинута!');
    with (Grid_Content.DataSource.DataSet as TMemTableEh).RecordsView
    do
    begin
      for i := 0 to Count-1
      do
      begin
        RecIndex := Rec[i].Index;
        Rec[i].Edit;
        Rec[i].DataValues['ITEM_POS_NUM', dvvValueEh] := i+1;
        Rec[i].Post;
      end;
    end;
    FGridRecordMoving := False;
  end;
end;

function TFrame_Doc.Grid_ContentMoveRecords(Sender: TObject;
  BookmarkList: TBMListEh; ToRecNo, TreeLevel: Integer;
  CheckOnly: Boolean): Boolean;
  var
    MovingRecord, ToRecord: TMemRecViewEh;
    S: string;
    MemTableEh: TMemTableEh;
    FromRecNo: Integer;
begin
  MemTableEh := (Sender as TDBGridEh).DataSource.DataSet as TMemTableEh;
  FromRecNo := MemTableEh.BookmarkToRecNo(BookmarkList[0]);
  MovingRecord := MemTableEh.RecordsView.RecordView[FromRecNo - 1];
  ToRecord := MemTableEh.RecordsView.RecordView[ToRecNo - 1];

  if MovingRecord.Rec.DataValues['I_User', dvvValueEh] <> DM_Main.Session.LogonUsername
  then
    Abort;

  if MovingRecord <> ToRecord
  then
    FGridRecordMoving := True
  else if MovingRecord = ToRecord
  then
    FGridRecordMoving := False;

  Result := (Sender as TDBGridEh).DefaultMoveDataRows(BookmarkList, ToRecNo, TreeLevel, CheckOnly);
end;

procedure TFrame_Doc.Lcb_Cont_SectionsKeyValueChanged(Sender: TObject);
begin
  if not FEditMode
  then
    Exit;


  if (not FInternalSectionsChange)
      and (Db_Doc_Contacts.Active)
  then
  begin
    try Db_Doc_Contacts.Post except end;
    if (not Db_Doc_Contacts.Locate('CONT_SECTION;CONT_DEP_ID',
                                VarArrayOf([Db_Doc_SectionsCONT_SECTION.AsVariant,
                                           Db_Doc_SectionsCONT_DEP_ID.AsVariant]),
                                [loPartialKey]))
    then
    begin
      Db_Doc_Contacts.Append;
      Db_Doc_ContactsCONT_SECTION.AsString:=Db_Doc_SectionsCONT_SECTION.AsString;
      Db_Doc_ContactsCONT_DEP_ID.AsString:=Db_Doc_SectionsCONT_DEP_ID.AsString;
      Db_Doc_Contacts.Post;
    end;
  end;
end;

procedure TFrame_Doc.Lcb_SectionUserKeyValueChanged(Sender: TObject);
begin
  if not FEditMode
  then
    Exit;
  if (not FInternalSectionsChange)
      and (Db_Doc_Contacts.Active)
  then
  begin
    if (Db_Doc_Contacts.Locate('CONT_SECTION;CONT_DEP_ID',
                                VarArrayOf([Db_Doc_SectionsCONT_SECTION.AsVariant,
                                           Db_Doc_SectionsCONT_DEP_ID.AsVariant]),
                                [loPartialKey]))
    then
    begin
      if (Db_Doc_ContactsEMP_FIO.AsString=String.Empty)
          or (Db_Doc_ContactsEMP_FIO.AsString<>Lcb_SectionUser.Text)
      then
      begin
        Db_Doc_Contacts.Edit;
        Db_Doc_ContactsCONT_EMP_ID.AsString:=Db_SectionUsersEMP_ID.AsString;
        Db_Doc_ContactsCONT_USER_ID.AsString:=Db_SectionUsersID_USER.AsString;
        Db_Doc_Contacts.Post;
      end;
    end;
  end;
end;

procedure TFrame_Doc.MemT_Doc_ContentAfterDelete(DataSet: TDataSet);
var
  I: integer;
  NonKRExists: Boolean;
  NowContactValues: Variant;
begin
  NonKRExists:=False;
  with DataSet as TMemTableEh
  do
  begin
    with RecordsView.MemTableData.RecordsList
    do
    begin
      for i:=0 to Count-1
      do
      begin
        if Rec[i].UpdateStatus in [usInserted, usModified, usUnmodified]
        then
        begin
          if Copy(VarToStr(Rec[i].DataValues['ITEM_CODE',dvvValueEh]), 0, 2)<>'КР'
          then
          begin
            NonKRExists:=True;
            Break;
          end;
        end;
      end;
    end;
  end;

  if not NonKRExists
  then
  begin
    try
      Db_Doc_Contacts.DisableControls;
      FInternalSectionsChange:=True;
      NowContactValues:=VarArrayCreate([0, 1], varVariant);
      NowContactValues[0]:= Db_Doc_ContactsCONT_SECTION.AsVariant;
      NowContactValues[1]:= Db_Doc_ContactsCONT_DEP_ID.AsVariant;
      if (Db_Doc_Contacts.Locate('CONT_SECTION;CONT_DEP_ID',
                                VarArrayOf(['copy',
                                           163]),
                                [loPartialKey]))
      then
        Db_Doc_Contacts.Delete;

      Db_Doc_Sections.SetVariable(1, 0);
      Db_Doc_Sections.Refresh;
      Db_Doc_Contacts.Locate('CONT_SECTION;CONT_DEP_ID',
                                NowContactValues,
                                [loPartialKey]);
    finally
      Db_Doc_Contacts.EnableControls;
      FInternalSectionsChange:=False;
    end;
  end;

end;

procedure TFrame_Doc.MemT_Doc_ContentBeforeDelete(DataSet: TDataSet);
begin
  while Db_Items_Links.Locate('P_SZ_PRICE_REQ_ITEM_ID',
                              (DataSet as TMemTableEh).Rec.DataValues['Id_Sz_Price_Req_Item', dvvValueEh],
                              [loPartialKey])
  do
    Db_Items_Links.Delete;
end;

procedure TFrame_Doc.MemT_Doc_ContentBeforeEdit(DataSet: TDataSet);
var
  AccessToEdit: Boolean;
  i: Integer;
begin
  with DataSet
  do
  begin
    if (Db_Doc.FieldByName('I_User').AsString<>DM_Main.Session.LogonUsername)
        And not(usAdmin In Form_Sz_Main.UserStates)
        And (FUserRigths.IndexOf('full')=-1)
        And (FUserRigths.IndexOf('only_content')=-1)
        And (FUserRigths.IndexOf('only_one_content')=-1)
    then
      Abort;

    if (FUserRigths.IndexOfName('only_one_content')<>-1)
    then
    begin
      AccessToEdit:=False;
      for i:=0 to FUserRigths.Count
      do
      begin
        if (FUserRigths.Names[i]='only_one_content')
           and (FUserRigths.ValueFromIndex[i]=MemT_Doc_ContentID_SZ_PRICE_REQ_ITEM.AsString)
        then
          AccessToEdit:=True;
      end;

      if not AccessToEdit
      then
        Abort;
    end;
  end;
end;

procedure TFrame_Doc.MemT_Doc_ContentNewRecord(DataSet: TDataSet);
begin
  with DataSet as TMemTableEh
  do
  begin
    FieldByName('ID_SZ_PRICE_REQ_ITEM').AsInteger:=Form_Sz_Main.f_NextSeqNumber(DataSet);
    FieldByName('SZ_PRICE_REQ_ID').AsInteger:=Db_DocID_SZ_PRICE_REQ.AsInteger;
    FieldByName('ITEM_POS_NUM').AsInteger:=RecordsView.MemTableData.RecordsList.Count+1;
    if Grid_Content.FindFieldColumn('ITEM_NDS').Visible
    then
      FieldByName('ITEM_NDS').AsInteger:=20;
    FieldByName('ITEM_USE_FLAG').AsInteger:=1;
    FieldByName('I_USER').AsString:=DM_Main.Session.LogonUsername;
    FieldByName('U_USER').AsString:=DM_Main.Session.LogonUsername;
    FieldByName('USER_CORRECT').AsString:=DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[]);
  end;
end;

procedure TFrame_Doc.p_CopyItemsInBuffer(Action: TGridEditActionEh);
var
  GridDataSet: TDataSet;
  BufferingRecs: TBufferStructOfMemRecs;
  BufferedValue: TBufferedRecord;
  TopMemRec, BottomMemRec, CopyMemRec: TMemoryRecordEh;
  i, j: Integer;
begin
  with Grid_Content
  do
  begin
    GridDataSet := DataSource.DataSet;
    case Selection.SelectionType of
      gstNon:
      begin
        BufferingRecs := TBufferStructOfMemRecs.Create;
        BufferingRecs.BufferMemoryRecordEh((GridDataSet as TMemTableEh).Rec);
        for j := 0 to (GridDataSet as TMemTableEh).RecView.NodesCount-1
        do
          BufferingRecs.BufferMemoryRecordEh((GridDataSet as TMemTableEh).RecView.NodeItems[j].Rec);

        if BufferingRecs.BufRecCount>0
        then
          Form_Sz_Main.CopyItemToBuffer(BufferingRecs);
      end;

      gstRectangle:
      begin
        BufferingRecs := TBufferStructOfMemRecs.Create;
        TopMemRec := (GridDataSet as TMemTableEh).BookmarkToRec(Selection.Rect.TopRow);
        BottomMemRec := (GridDataSet as TMemTableEh).BookmarkToRec(Selection.Rect.BottomRow);
        for i := (GridDataSet as TMemTableEh).RecordsView.IndexOfRec(TopMemRec)
            to (GridDataSet as TMemTableEh).RecordsView.IndexOfRec(BottomMemRec)
        do
        begin
          CopyMemRec := (GridDataSet as TMemTableEh).RecordsView.RecordView[i].Rec;
          BufferingRecs.BufferMemoryRecordEh(CopyMemRec);
        end;

        if BufferingRecs.BufRecCount>0
        then
          Form_Sz_Main.CopyItemToBuffer(BufferingRecs);
      end;

      gstRecordBookmarks, gstAll:
      begin
        BufferingRecs := TBufferStructOfMemRecs.Create;
        for i := 0 To Selection.Rows.Count - 1
        do
        Begin
          CopyMemRec := (GridDataSet as TMemTableEh).BookmarkToRec(Selection.Rows[i]);
          BufferingRecs.BufferMemoryRecordEh(CopyMemRec);
        End;

        if BufferingRecs.BufRecCount>0
        then
          Form_Sz_Main.CopyItemToBuffer(BufferingRecs);
      end;
    end;
  end;
end;

procedure TFrame_Doc.P_Open_Doc;
var i: Integer;
begin
  FArrOfSaveDataSets := [
                           Db_Doc
                           ,MemT_Doc_Content
                           ,Db_Doc_Contacts
                           ,Db_Items_Links
                         ];
  Db_Doc.SetVariable(0, DocHeaderId);
  Db_Doc.Active:=True;

  Db_UserRights.SetVariable(0, DocHeaderId);
  Db_UserRights.Active:=True;

  Db_UserRights.First;
  while not Db_UserRights.Eof
  do
  begin
    if Db_UserRightsSZ_PRICE_REQ_ITEM_ID.IsNull
    then
      FUserRigths.Add(Db_UserRightsACCESS_FLAG.AsString)
    else
      FUserRigths.Add(Format('%s=%s',[Db_UserRightsACCESS_FLAG.AsString, Db_UserRightsSZ_PRICE_REQ_ITEM_ID.AsString]));
    Db_UserRights.Next;
  end;

  if DocHeaderId=0
  then
    DocDepId:=StrToInt(DM_Main.F_Oracle( 'Stp.Pkg_User.F_Get_User_Department_Id', []))
  else
    DocDepId:=Db_DocSZ_DEP_Id.AsInteger;

  if DocDepId=261
  then
    FContentColumns.DelimitedText:='ITEM_CODE;ITEM_NUM;ITEM_NAME;USER_CORRECT'
  else if DocDepId=184
  then
    FContentColumns.DelimitedText:='ITEM_CODE;ITEM_NUM;ITEM_NAME;ITEM_PRICE;ITEM_NDS;ITEM_PRICE_N_NDS;ITEM_PRICE_DATE_START;ITEM_PRICE_DATE_END;USER_CORRECT';

  with Grid_Content
  do
   for i := 0 to Columns.Count - 1
   do
     if FContentColumns.IndexOf(Columns[i].FieldName)=-1
     then
       Columns[i].Visible:=False;

  if Self.DocHeaderId=0
  then
  begin
    Db_Doc.Append;
    Db_Doc.SetVariable(0, Db_Doc.FieldByName('Doc_Header_Id').AsInteger);
    Self.FDocHeaderId:=Db_Doc.FieldByName('Doc_Header_Id').AsInteger;
    Self.E_DocNumber.Text:=DM_Main.F_Oracle( 'Mrk.Pkg_Sz_Price_Req.F_GetNewDocNum(user_dep_id => :user_dep_id)', [DocDepId]);
    Self.E_DocDate.Value:=Date();
  end;

  Db_Doc_Content.SetVariable(0, Db_DocID_SZ_PRICE_REQ.AsInteger);
  MemT_Doc_Content.Active:=True;
  Db_Items_Links.SetVariable(0, Db_DocID_SZ_PRICE_REQ.AsInteger);
  Db_Items_Links.Active:=True;

  if ((Db_DocI_USER.AsString=DM_Main.Session.LogonUsername)
      and (Db_DocDATE_START_ROUTE.IsNull))
      or (usAdmin in Form_Sz_Main.UserStates)
      or (FUserRigths.IndexOfName('full')<>-1)
  then
    FEditMode := True
  else
    FEditMode := False;


  Db_SectionUsers.Active:=True;

  Db_Doc_Contacts.SetVariable(0, Db_DocID_SZ_PRICE_REQ.AsInteger);
  Db_Doc_Contacts.Active:=True;

  Db_Doc_Sections.SetVariable(0, DocDepId);
  Db_Doc_Sections.SetVariable(1, Db_DocNOKRITEMSEXISTS.AsInteger);
  Db_Doc_Sections.Active:=True;
  p_UpdateEditMode;
end;

procedure TFrame_Doc.p_UpdateEditMode;
var
  i: Integer;
begin
  for i := Low(FArrOfSaveDataSets) to High(FArrOfSaveDataSets)
  do
  begin
     if FArrOfSaveDataSets[i] is TMemTableEh
     then
       (FArrOfSaveDataSets[i] as TMemTableEh).ReadOnly:=not FEditMode
     else if FArrOfSaveDataSets[i] is TOracleDataSet
     then
       (FArrOfSaveDataSets[i] as TOracleDataSet).ReadOnly:=not FEditMode;
  end;

  Lcb_Cont_Sections.Enabled:=FEditMode;
  Lcb_SectionUser.Enabled:=FEditMode;
  E_DocDate.Enabled:=FEditMode;
  Act_AddItem.Enabled:=FEditMode;
  Act_Delete.Enabled:=FEditMode;
  Act_Paste.Enabled:=FEditMode;

  if FUserRigths.IndexOfName('only_info')<>-1
  then
  begin
    Db_Doc.ReadOnly:=False;
    Lcb_Cont_Sections.Enabled:=True;
    Lcb_SectionUser.Enabled:=True;
    E_DocDate.Enabled:=True;
  end;

  if FUserRigths.IndexOfName('only_content')<>-1
  then
  begin
    MemT_Doc_Content.ReadOnly:=False;
    Db_Items_Links.ReadOnly:=False;
    Act_AddItem.Enabled:=True;
    Act_Delete.Enabled:=True;
    Act_Paste.Enabled:=True;
  end;

  if FUserRigths.IndexOfName('only_one_content')<>-1
  then
  begin
    MemT_Doc_Content.ReadOnly:=False;
    Db_Items_Links.ReadOnly:=False;
  end;


end;

procedure TFrame_Doc.Tb_SaveClick(Sender: TObject);
begin
  F_Save_Doc(Tb_Save);
end;

end.
