unit Sz_DocsList_Frame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Udm_Main, Sz_Main,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, Data.DB, OracleData, Vcl.ToolWin, Vcl.ExtCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, DBLookupEh, Vcl.StdCtrls,
  Vcl.Mask, DBCtrlsEh, Oracle, Clipbrd, Vcl.Menus;

type
  TFrame_DocsList = class(TFrame)
    Grid_DocsList: TDBGridEh;
    Grid_DocContent: TDBGridEh;
    Panel1: TPanel;
    Splitter2: TSplitter;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    Db_DocsList: TOracleDataSet;
    Tb_NewDoc: TToolButton;
    ToolButton2: TToolButton;
    ActionList1: TActionList;
    Act_NewDoc: TAction;
    Act_EditDoc: TAction;
    Act_PrintDoc: TAction;
    Tb_Print: TToolButton;
    Data_DocsList: TDataSource;
    Db_Doc_Content: TOracleDataSet;
    Data_Doc_Content: TDataSource;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    Lcb_FilterSetions: TDBLookupComboboxEh;
    Cb_FilterString: TDBComboBoxEh;
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
    Db_DocsListID_SZ_PRICE_REQ: TIntegerField;
    Db_DocsListSZ_PRICE_REQ_ID: TIntegerField;
    Db_DocsListSZ_NUMBER: TStringField;
    Db_DocsListSZ_DATE: TDateTimeField;
    Db_DocsListSZ_NOTE: TStringField;
    Db_DocsListEMP_FIO: TStringField;
    Db_DocsListDONE_PERC: TFloatField;
    Db_DocsListDOC_HEADER_ID: TIntegerField;
    Db_Doc_ContentITEM_PRICE_N_NDS: TFloatField;
    Db_Filters: TOracleDataSet;
    Db_FiltersKEYLIST: TStringField;
    Db_FiltersLOOKAPVALUE: TStringField;
    Data_Filters: TDataSource;
    Db_DocsListNEGATIVE_FLAG: TFloatField;
    Db_DocsListSZ_DEP_ID: TIntegerField;
    Db_DocsListDEP_CODE: TStringField;
    Db_DocsListDEP_SNAME: TStringField;
    Db_DocsListI_USER: TStringField;
    Db_DocsListI_DATE: TDateTimeField;
    Db_DocsListU_USER: TStringField;
    Act_Sign: TAction;
    Pkg_Sz_Price_Req: TOraclePackage;
    Db_DocsListDATE_START_ROUTE: TDateTimeField;
    Db_DocsListDATE_END_ROUTE: TDateTimeField;
    Db_DocsListSZ_DEP_NUMBER: TStringField;
    ColorDialog1: TColorDialog;
    Pm_DocsList: TPopupMenu;
    Btn_AddDoc: TMenuItem;
    Btn_EditDoc: TMenuItem;
    Btn_PrintDoc: TMenuItem;
    Btn_SignDoc: TMenuItem;
    Act_CancelItem: TAction;
    Act_ApplyItem: TAction;
    Db_Doc_ContentCHECKITEMS: TFloatField;
    Act_DocComms: TAction;
    Tb_Comments: TToolButton;
    Pkg_Doc_Comms: TOraclePackage;
    Act_LinkDocs: TAction;
    Pm_Btn_AddToDoc: TMenuItem;
    Pm_DocItems: TPopupMenu;
    Pm_Btn_AddItemToDoc: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Act_MarkDoc: TAction;
    Pm_Btn_MarkDoc: TMenuItem;
    Db_DocsListDEPMARK_FLAG: TFloatField;
    Act_EditRightConfig: TAction;
    ToolButton4: TToolButton;
    Pm_Btn_EditRights: TMenuItem;
    Act_Unsign: TAction;
    Btn_UnSignDoc: TMenuItem;
    Pkg_Doc: TOraclePackage;
    procedure Grid_DocsListColumns3AdvDrawDataCell(Sender: TCustomDBGridEh;
      Cell, AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure Grid_DocsListColumns3OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Cb_FilterStringChange(Sender: TObject);
    procedure Cb_FilterStringEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Lcb_FilterSetionsEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Lcb_FilterSetionsKeyValueChanged(Sender: TObject);
    procedure Grid_DocsListColumns1CellButtons0Draw(Grid: TCustomDBGridEh;
      Column: TColumnEh; CellButton: TDBGridCellButtonEh; Canvas: TCanvas; Cell,
      AreaCell: TGridCoord; const ARect: TRect;
      ButtonDrawParams: TCellButtonDrawParamsEh; var Handled: Boolean);
    procedure ToolBar1CustomDraw(Sender: TToolBar; const ARect: TRect;
      var DefaultDraw: Boolean);
    procedure Act_SignExecute(Sender: TObject);
    procedure Act_EditDocExecute(Sender: TObject);
    procedure Act_NewDocExecute(Sender: TObject);
    procedure Act_PrintDocExecute(Sender: TObject);
    procedure Pm_DocsListPopup(Sender: TObject);
    procedure Grid_DocContentColumns1CellButtons0Draw(Grid: TCustomDBGridEh;
      Column: TColumnEh; CellButton: TDBGridCellButtonEh; Canvas: TCanvas; Cell,
      AreaCell: TGridCoord; const ARect: TRect;
      ButtonDrawParams: TCellButtonDrawParamsEh; var Handled: Boolean);
    procedure Act_ApplyItemExecute(Sender: TObject);
    procedure Act_CancelItemExecute(Sender: TObject);
    procedure Grid_DocContentDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Act_DocCommsExecute(Sender: TObject);
    procedure Act_LinkDocsExecute(Sender: TObject);
    procedure Pm_DocItemsPopup(Sender: TObject);
    procedure Act_MarkDocExecute(Sender: TObject);
    procedure Grid_DocsListGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Act_EditRightConfigExecute(Sender: TObject);
    procedure Act_UnsignExecute(Sender: TObject);
  private
    { Private declarations }
    FUserState:TUserState;
    FListDepId:Integer;
    FFrameState:TFrameStates;
    FFilters: TStringList;
    FFilterSectionChange: Boolean;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; UserState: TUserState; FrameState: TFrameStates);
    property ListDepId: Integer read FListDepId write FListDepId;
    procedure p_SetFilter(SectionName: String; FilterValue: String);
    procedure P_OpenList;
  end;

implementation

{$R *.dfm}

uses
  Sz_DocAppr_DForm,
  Sz_DocSign,
  Sz_DocFrame,
  Sz_DocReportData,
  Dc_Comm_MainForm,
  Gen_Chs_Data_Mod,
  Sz_DocEditRights_Form;

{ TFrame_DocsList}

procedure TFrame_DocsList.Act_ApplyItemExecute(Sender: TObject);
begin
  if not (usAdmin in Form_Sz_Main.UserStates)
  then
  begin
    Grid_DocContent.SaveBookmark;
    Pkg_Sz_Price_Req.CallProcedure('p_SetItemCheckStatus', [Db_Doc_ContentID_SZ_PRICE_REQ_ITEM.AsInteger, 1]);
    Db_Doc_Content.Refresh;
    Grid_DocContent.RestoreBookmark;
  end;
end;

procedure TFrame_DocsList.Act_CancelItemExecute(Sender: TObject);
Var
  Reason: String;
begin
  Reason:=InputBox('Укажите причину', 'Причина:', '');
  if Reason<>String.Empty
  then
  begin
    if not (usAdmin in Form_Sz_Main.UserStates)
    then
    begin
      Grid_DocContent.SaveBookmark;
      Pkg_Sz_Price_Req.CallProcedure('p_SetItemCheckStatus', [Db_Doc_ContentID_SZ_PRICE_REQ_ITEM.AsInteger, 0]);
      Db_Doc_Content.Refresh;
      Pkg_Doc_Comms.CallProcedure('AddNewComm', [Db_DocsListDOC_HEADER_ID.AsInteger, Reason, Db_Doc_ContentID_SZ_PRICE_REQ_ITEM.AsInteger, '', 'mrk.v_sz_price_req_items']);
      Grid_DocContent.RestoreBookmark;
    end;
  end;
end;

procedure TFrame_DocsList.Act_DocCommsExecute(Sender: TObject);
begin
  with TForm_Main_Dc_Comm.Create(Self, Db_DocsListDOC_HEADER_ID.AsInteger)
  do
  begin
    try
      GenSQLParamsFunction := Form_Sz_Main.GenSQLParamsFunction;
      Caption:=Db_DocsListSZ_DEP_NUMBER.AsString+'. Комментарии';
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TFrame_DocsList.Act_EditDocExecute(Sender: TObject);
begin
  if not Db_DocsList.IsEmpty
  then
    Form_Sz_Main.P_Open_Item(TFrame_Doc, FUserState, [], Db_DocsListDOC_HEADER_ID.AsInteger);
end;

procedure TFrame_DocsList.Act_EditRightConfigExecute(Sender: TObject);
begin
  with TForm_DocEditRights.Create(Self, Db_DocsListDOC_HEADER_ID.AsInteger)
  do
  begin
    try
      DocId:=Self.Db_DocsListID_SZ_PRICE_REQ.AsInteger;
      Caption:=Format('Настройка прав доступа для документа №%s', [Db_DocsListSZ_DEP_NUMBER.AsString]);
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TFrame_DocsList.Act_LinkDocsExecute(Sender: TObject);
var
  InParams, OutParams: TDynVarsEh;
  ButtonSelected: Integer;
  NewDocHeaderId, ParentDocHeaderId, ParentItemId: Integer;
  OpenedFrame: TPageFrame;
begin
  ParentDocHeaderId:=0;
  ParentItemId:=0;
  if Grid_DocsList.Focused
  then
    ParentDocHeaderId:=Db_DocsListDOC_HEADER_ID.AsInteger
  else if Grid_DocContent.Focused then

  begin
    ParentDocHeaderId:=Db_DocsListDOC_HEADER_ID.AsInteger;
    ParentItemId:=Db_Doc_ContentID_SZ_PRICE_REQ_ITEM.AsInteger;
  end
  else
    Exit;

  with CreateMessageDialog( 'Документ для добавления?',
                                  mtConfirmation,
                                  mbYesNoCancel )
  do
  try
    TButton( FindComponent( 'Yes' ) ).Caption := 'Новый';
    TButton( FindComponent( 'No' ) ).Caption := 'Выбрать';
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

  if ButtonSelected=mrYes
  then
  begin
    NewDocHeaderId:=Pkg_Sz_Price_Req.CallIntegerFunction('f_LinkItems', [ParentDocHeaderId, ParentItemId, 0]);
    Form_Sz_Main.P_Open_Item(TFrame_Doc, FUserState, [], NewDocHeaderId);
  end
  else if ButtonSelected=mrNo
  then
  begin
    InParams:=TDynVarsEh.Create(Self);
    InParams.DynVar['Find'].AsString:='SzPriceReqDocs';
    InParams.DynVar['Caption'].AsString:='Выбор документа для копирования';
    InParams.DynVar['Filter'].AsString:='Where t.Sz_Dep_Id=Stp.Pkg_User.F_Get_User_Department_Id And r.Date_Start_Route Is Null';
    InParams:=Form_Sz_Main.GenSQLParamsFunction(InParams);
    OutParams:=DM_Gen_Chs.F_Gen_Chose_Form(InParams);
    if OutParams<>Nil
    then
    begin
      NewDocHeaderId:=Pkg_Sz_Price_Req.CallIntegerFunction('f_LinkItems', [ParentDocHeaderId, ParentItemId, OutParams.DynVar['Doc_Header_Id'].AsInteger]);
      OpenedFrame:=Form_Sz_Main.FindOpenedFrame(OutParams.DynVar['Doc_Header_Id'].AsString);
      if OpenedFrame<>Nil
      then
        (OpenedFrame.ViewFrame as TFrame_Doc).MemT_Doc_Content.Refresh;
      Form_Sz_Main.P_Open_Item(TFrame_Doc, FUserState, [], OutParams.DynVar['Doc_Header_Id'].AsInteger);
    end;
  end;
end;

procedure TFrame_DocsList.Act_MarkDocExecute(Sender: TObject);
var
  MessageText: String;
begin
  if Db_DocsListDEPMARK_FLAG.AsInteger=0
  then
    MessageText:='Отметить документ?'
  else if Db_DocsListDEPMARK_FLAG.AsInteger=1
  then
    MessageText:='Снять отметку?';

  with CreateMessageDialog( MessageText, mtConfirmation, mbYesNo)
  do
  try
    TButton( FindComponent( 'Yes' ) ).Caption := 'Да';
    TButton( FindComponent( 'No' ) ).Caption := 'Нет';
    case ShowModal
    of
      mrYes:
      begin
        Grid_DocsList.SaveBookmark;
        Pkg_Sz_Price_Req.CallProcedure('p_MarkDoc', [Db_DocsListID_SZ_PRICE_REQ.AsInteger, Abs(Db_DocsListDEPMARK_FLAG.AsInteger-1)]);
        Db_DocsList.Refresh;
        Grid_DocsList.RestoreBookmark;
      end;
    end;
  finally
    Free;
  end;

end;

procedure TFrame_DocsList.Act_NewDocExecute(Sender: TObject);
begin
  Form_Sz_Main.P_Open_Item(TFrame_Doc, FUserState, [], 0);
end;

procedure TFrame_DocsList.Act_PrintDocExecute(Sender: TObject);
begin
  if not Db_DocsList.IsEmpty
  then
  begin
    with TDm_ReportData.Create(Self, Db_DocsListDOC_HEADER_ID.AsInteger)
    do
    begin
      try
        PrintDoc;
      finally
        Free;
      end;
    end;
  end;
end;

procedure TFrame_DocsList.Act_SignExecute(Sender: TObject);
var
  CurrentDocHeaderId: Integer;
begin
  CurrentDocHeaderId:=Db_DocsListDOC_HEADER_ID.AsInteger;
  try
    Db_DocsList.DisableControls;
    Grid_DocsList.SaveVertPos(Db_DocsList.UniqueFields);
    Db_DocsList.Refresh;
  finally
    Db_DocsList.EnableControls;
    Grid_DocsList.RestoreVertPos(Db_DocsList.UniqueFields);
  end;

  if Db_DocsListDOC_HEADER_ID.AsInteger=CurrentDocHeaderId
  then
  begin
    with TForm_SzDocSign.Create(Self, Db_DocsListDOC_HEADER_ID.AsInteger)
    do
    begin
      try
        Db_DocsList.SetVariable(0, DocHeaderId);
        Db_SingPoints.SetVariable(0, DocHeaderId);

        Db_DocsList.Active:=True;
        Db_SingPoints.Active:=True;
        Db_PointResults.Active:=True;

        if (Db_SingPoints.RecordCount>=1)
            or ((Db_DocsListDATE_START_ROUTE.IsNull)
                and ((Db_DocsListI_USER.AsString=DM_Main.Session.LogonUsername)
                     or (Pkg_Sz_Price_Req.CallIntegerFunction('f_CheckDocAccess', [Db_DocsListDOC_HEADER_ID.AsInteger,'full'])=1)
                     or (usAdmin in Form_Sz_Main.UserStates)))
        then
        begin
          if ShowModal=mrOk
          then
          begin
            try
              Self.Db_DocsList.DisableControls;
              if (Db_SingPoints.RecordCount>1)
                  and (fsContentSign in FFrameState)
              then
                Self.Db_DocsList.Next;
              Self.Grid_DocsList.SaveVertPos(Self.Db_DocsList.UniqueFields);
              Self.Db_DocsList.Refresh;
            finally
              Self.Db_DocsList.EnableControls;
              Self.Grid_DocsList.RestoreVertPos(Self.Db_DocsList.UniqueFields);
            end;
          end;
        end;
      finally
        Free;
      end;
    end;
  end;
end;

procedure TFrame_DocsList.Act_UnsignExecute(Sender: TObject);
Var
  InParams, OutParams: TDynVarsEh;
begin
  InParams := TDynVarsEh.Create( Application.MainForm );
  InParams.DynVar['Find'].AsString := 'SingedSteps';
  InParams.DynVar['Filter'].AsString := Format(' p.Doc_Rout_Id=%d And p.Result_User_Id=User ', [Db_DocsListDOC_HEADER_ID.AsInteger]);
  InParams:=Form_Sz_Main.GenSQLParamsFunction(InParams);
  OutParams := DM_Gen_Chs.F_Gen_Chose_Form(InParams);
  if (OutParams <> Nil)
      Or (Db_DocsListI_USER.AsString=DM_Main.Session.LogonUsername)
      //Or (Pkg_Doc.CallIntegerFunction('F_Check_CoAuthors', [Db_Info.FieldByName('Doc_Header_Id').AsString])=1)
  Then
  Begin
    If MessageBox(Application.ActiveFormHandle, PWideChar('Снять подпись с документа!? ' + #13#10
                                                            + 'Согласование всех сторон будет сброшено и документ вернется к Вам на согласование! '),
                                                 'ВНИМАНИЕ!',
                                                 MB_YESNO + MB_ICONINFORMATION )=ID_YES
    Then
    Begin
      if (Db_DocsListI_USER.AsString=DM_Main.Session.LogonUsername)
          //or (Pkg_Doc.CallIntegerFunction('F_Check_CoAuthors', [Db_Info.FieldByName('Doc_Header_Id').AsString])=1)
      then
        Pkg_Doc.CallProcedure('P_Break_Driving', [Db_DocsListDOC_HEADER_ID.AsInteger])
      else
        //Pkg_Tech_Proc.CallProcedure( 'P_Unset_Resoltion', [ Vl_Out_Params.DynVar[ 'Id_Doc_Rout_Point' ].AsInteger ] );
      Grid_DocsList.SaveBookmark;
      Db_DocsList.Refresh;
      Grid_DocsList.RestoreBookmark;
    End;
  End
  Else
  Begin
    MessageDlg('Вы не подписывали данный документ!', mtError, [mbOK], 5);
  End;
end;

procedure TFrame_DocsList.Cb_FilterStringChange(Sender: TObject);
var
  i: Integer;
  VarName: String;
begin
  p_SetFilter(Lcb_FilterSetions.KeyValue, Cb_FilterString.Text);
end;

procedure TFrame_DocsList.Cb_FilterStringEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  ShowMessage(FFilters.Text);
end;

constructor TFrame_DocsList.Create(AOwner: TComponent;
  UserState: TUserState; FrameState: TFrameStates);
begin
  inherited Create(AOwner);
  FUserState:=UserState;
  FFrameState:=FrameState;
  FFilters := TStringList.Create;
end;

procedure TFrame_DocsList.Grid_DocContentColumns1CellButtons0Draw(
  Grid: TCustomDBGridEh; Column: TColumnEh; CellButton: TDBGridCellButtonEh;
  Canvas: TCanvas; Cell, AreaCell: TGridCoord; const ARect: TRect;
  ButtonDrawParams: TCellButtonDrawParamsEh; var Handled: Boolean);
begin
  ButtonDrawParams.Transparency:=0;
  with Grid.DataSource.DataSet do
  begin
    if not IsEmpty
    then
      CellButton.Visible:=True
    else
      CellButton.Visible:=False;
  end;
end;

procedure TFrame_DocsList.Grid_DocContentDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  with (Sender as TDBGridEh)
  do
  begin
    if (Column.FieldName = 'ITEM_POS_NUM')
    then
    begin
      Canvas.Brush.Color := $00B5B3FF;
      Canvas.Font.Color := clRed;
      Canvas.Font.Name := 'clWindowText';
      Canvas.Font.Size := 8;
      Canvas.TextOut(Rect.Left-1,
                     Rect.Bottom-Canvas.TextHeight(DataSource.DataSet.FieldByName('CHECKITEMS').AsString)-1,
                     DataSource.DataSet.FieldByName('CHECKITEMS').AsString);
    end;
  end;
end;

procedure TFrame_DocsList.Grid_DocsListColumns1CellButtons0Draw(
  Grid: TCustomDBGridEh; Column: TColumnEh; CellButton: TDBGridCellButtonEh;
  Canvas: TCanvas; Cell, AreaCell: TGridCoord; const ARect: TRect;
  ButtonDrawParams: TCellButtonDrawParamsEh; var Handled: Boolean);
begin
  ButtonDrawParams.Transparency:=0;
  with Grid.DataSource.DataSet do
  begin
    if not IsEmpty
    then
    begin
      if ((fsContentMake in FFrameState)
          and ((FieldByName('i_User').AsString=DM_Main.Session.LogonUsername)
               and (FieldByName('DATE_START_ROUTE').IsNull))
          or(Pkg_Sz_Price_Req.CallIntegerFunction('f_CheckDocAccess', [FieldByName('DOC_HEADER_ID').AsInteger,'full'])=1))
          or (fsContentSign in FFrameState)
      then
      begin
        ButtonDrawParams.Enabled := True;
        ButtonDrawParams.ImageIndex := 142;
        CellButton.Pressable:=True;
      end
      else
      begin
        ButtonDrawParams.Enabled := False;
        ButtonDrawParams.ImageIndex := 143;
        CellButton.Pressable:=False;
      end;
    end
    else
      CellButton.Visible:=False;
  end;
end;

procedure TFrame_DocsList.Grid_DocsListColumns3AdvDrawDataCell(
  Sender: TCustomDBGridEh; Cell, AreaCell: TGridCoord; Column: TColumnEh;
  const ARect: TRect; var Params: TColCellParamsEh; var Processed: Boolean);
  var
    BackGroundRect: TRect;
    BarColor, BarBackColor: TColor;
begin
  Sender.DefaultDrawColumnDataCell(Cell, AreaCell, Column, ARect, Params);
  Processed := True;
  with Grid_DocsList.DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      BackGroundRect.Left := ARect.Left;
      BackGroundRect.Top := ARect.Top;
      BackGroundRect.Bottom := ARect.Bottom;
      BackGroundRect.Width := ARect.Width-20;

      Sender.Canvas.Brush.Color :=  Column.Color;
      Sender.Canvas.FillRect(BackGroundRect);

      if FieldByName('NEGATIVE_FLAG').AsInteger=1
      then
      begin
        BarColor := $00C1B6FF;
        Sender.Canvas.Font.Color := clRed;
        BarBackColor := clRed;
      end
      else if FieldByName('Done_Perc').AsInteger=100
      then
      begin
        BarColor:=clSkyBlue;
        Sender.Canvas.Font.Color := clWindowText;
        BarBackColor := cl3DDkShadow;
      end
      else
      begin
        BarColor:=$00CFEFD5;
        Sender.Canvas.Font.Color := clWindowText;
        BarBackColor := cl3DDkShadow;
      end;

      DrawProgressBarEh(FieldByName('Done_Perc').AsFloat, 0, 100, Sender.Canvas, BackGroundRect, BarColor, BarBackColor, clNone);
    end;
  end;
end;

procedure TFrame_DocsList.Grid_DocsListColumns3OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  DynParams.DynVar['Doc_Header_Id'].AsString := Db_DocsListDOC_HEADER_ID.AsString;
end;

procedure TFrame_DocsList.Grid_DocsListGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Column.Grid.DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      if (Column.FieldName='SZ_NUMBER')
          and (Db_DocsListDEPMARK_FLAG.AsInteger=0)
          and (usMarker in Form_Sz_Main.UserStates)
      then
        Background:=$00A0E6FC;
    end;
  end;
end;

procedure TFrame_DocsList.Lcb_FilterSetionsEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FFilters.Clear;
  Cb_FilterString.Text:=String.Empty;
  ToolBar1.Repaint;
  Db_DocsList.ClearVariables;
  Db_DocsList.Refresh;
end;

procedure TFrame_DocsList.Lcb_FilterSetionsKeyValueChanged(Sender: TObject);
var
  ListFilterStrings: TStringList;
  Filter_Before, Filter_After: String;
  FrameFilterResource: TResourceStream;
  SqlParams: TDynVarsEh;
begin
  FFilterSectionChange := True;
  Cb_FilterString.Items.Clear;
  with TOracleDataSet.Create(Self)
  do
  begin
    try
      SqlParams := TDynVarsEh.Create(Self);
      ListFilterStrings:= TStringList.Create;
      if (fsContentMake in FFrameState)
      then
        FrameFilterResource := TResourceStream.Create(Hinstance, 'ContentMakerFilter', Pchar('TXT'))
      else if (fsContentSign in FFrameState)
      then
        FrameFilterResource := TResourceStream.Create(Hinstance, 'ContentSignFilter', Pchar('TXT'))
      else if (fsContentView in FFrameState)
      then
        FrameFilterResource := TResourceStream.Create(Hinstance, 'ContentViewFilter', Pchar('TXT'))
      else if (fsContentViewSign in FFrameState)
      then
        FrameFilterResource := TResourceStream.Create(Hinstance, 'ContentViewSignFilter', Pchar('TXT'));

      if FrameFilterResource<>Nil
      then
        ListFilterStrings.LoadFromStream(FrameFilterResource);
      if Lcb_FilterSetions.KeyValue='Sz_Number'
      then
      begin
        SqlParams.DynVar['Find'].AsString:='SzPriceReqDocs';
        SqlParams.DynVar['Fields'].AsString:='Sz_Number';
      end
      else if Lcb_FilterSetions.KeyValue='Emp_Fio'
      then
      begin
        SqlParams.DynVar['Find'].AsString:='SzPriceReqDocs';
        SqlParams.DynVar['Fields'].AsString:='Emp_Fio';
      end
      else if Lcb_FilterSetions.KeyValue='Item_Code'
      then
      begin
        SqlParams.DynVar['Find'].AsString:='SzPriceReqDocItems';
        SqlParams.DynVar['Fields'].AsString:='Item_Code';
      end
      else if Lcb_FilterSetions.KeyValue='Item_Num'
      then
      begin
        SqlParams.DynVar['Find'].AsString:='SzPriceReqDocItems';
        SqlParams.DynVar['Fields'].AsString:='Item_Num';
      end
      else if Lcb_FilterSetions.KeyValue='Item_Name'
      then
      begin
        SqlParams.DynVar['Find'].AsString:='SzPriceReqDocItems';
        SqlParams.DynVar['Fields'].AsString:='Item_Name';
      end;
      SqlParams.DynVar['Filter'].AsString:=Format(ListFilterStrings.Text, [FListDepId]);
      SqlParams:=Form_Sz_Main.GenSQLParamsFunction(SqlParams);
      SQL.Add(SqlParams.DynVar['SQL'].AsString);
      Session:=DM_Main.Session;
      Active :=True;
      First;
      while not Eof
      do
      begin
        Cb_FilterString.Items.Add(Fields[0].AsString);
        Next;
      end;
    finally
      Free;
    end;
  end;
  if FFilters.IndexOfName(Lcb_FilterSetions.KeyValue)<>-1
  then
    Cb_FilterString.Text :=FFilters.Values[Lcb_FilterSetions.KeyValue]
  else
    Cb_FilterString.Text:=String.Empty;
  FFilterSectionChange := False;
end;

procedure TFrame_DocsList.Pm_DocItemsPopup(Sender: TObject);
begin
  if Db_Doc_Content.IsEmpty
  then
    Abort;
end;

procedure TFrame_DocsList.Pm_DocsListPopup(Sender: TObject);
begin
  if Db_DocsList.IsEmpty
  then
    Abort;

  if ((fsContentMake in FFrameState)
      and ((Db_DocsList.FieldByName('i_User').AsString=DM_Main.Session.LogonUsername)
           and (Db_DocsList.FieldByName('DATE_START_ROUTE').IsNull))
      or(Pkg_Sz_Price_Req.CallIntegerFunction('f_CheckDocAccess', [Db_DocsList.FieldByName('DOC_HEADER_ID').AsInteger,'full'])=1))
      or (fsContentSign in FFrameState)
  then
  begin
    Btn_SignDoc.Enabled:=True;
  end
  else
    Btn_SignDoc.Enabled:=False;
end;

procedure TFrame_DocsList.P_OpenList;
var
  ListFilterStrings: TStringList;
  Filter_Before, Filter_After: String;
  ResourceStream: TResourceStream;
begin
  try
    ListFilterStrings := TStringList.Create;
    if (fsContentMake in FFrameState)
    then
      ResourceStream := TResourceStream.Create(Hinstance, 'ContentMakerFilter', Pchar('TXT'))
    else if (fsContentSign in FFrameState)
    then
      ResourceStream := TResourceStream.Create(Hinstance, 'ContentSignFilter', Pchar('TXT'))
    else if (fsContentView in FFrameState)
    then
      ResourceStream := TResourceStream.Create(Hinstance, 'ContentViewFilter', Pchar('TXT'))
    else if (fsContentViewSign in FFrameState)
    then
      ResourceStream := TResourceStream.Create(Hinstance, 'ContentViewSignFilter', Pchar('TXT'));

    if ResourceStream<>Nil
    then
    begin
      ListFilterStrings.LoadFromStream(ResourceStream);
      Filter_Before := Copy(Db_DocsList.SQL.Text, 0, Pos('/*BeginFrameTypeFilter*/', Db_DocsList.SQL.Text)-1 );
      Filter_After := Copy(Db_DocsList.SQL.Text, Pos('/*EndFrameTypeFilter*/', Db_DocsList.SQL.Text) + Length('/*EndFrameTypeFilter*/'),
                           Length(Db_DocsList.SQL.Text));
      Db_DocsList.SQL.Clear;
      Db_DocsList.SQL.Add(Filter_Before);
      Db_DocsList.SQL.Add(Format(ListFilterStrings.Text, [FListDepId]));
      Db_DocsList.SQL.Add(Filter_After);
    end;
  finally
    ListFilterStrings.Free;
    ResourceStream.Free;
  end;

  Db_DocsList.Active:=True;
  Db_Doc_Content.Active:=True;
  Db_Filters.Active:=True;


  Db_Filters.First;
  Lcb_FilterSetions.Text:=Db_FiltersLOOKAPVALUE.AsString;

  if fsContentMake in FFrameState
  then
    p_SetFilter('Emp_Fio', DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[]));

  if usMarker in Form_Sz_Main.UserStates
  then
    Act_MarkDoc.Visible:=True
  Else
    Act_MarkDoc.Visible:=False;

  if fsContentCheck in FFrameState
  then
  begin
    Act_ApplyItem.Visible:=True;
    Act_CancelItem.Visible:=True;
  end
  else
  begin
    Act_ApplyItem.Visible:=False;
    Act_CancelItem.Visible:=False;
  end;

  if fsContentMake in FFrameState
  then
  begin
    Act_NewDoc.Visible:=True;
    //Act_EditDoc.Visible:=True;
  end
  else
  begin
    Act_NewDoc.Visible:=False;
    //Act_EditDoc.Visible:=False;
  end;

  if fsContentLinking in FFrameState
  then
    Act_LinkDocs.Visible:=True
  else
    Act_LinkDocs.Visible:=False;


  {if fsContentSign in FFrameState
  then
    Clipboard.AsText:=Db_DocsList.SQL.Text;}
end;

procedure TFrame_DocsList.p_SetFilter(SectionName, FilterValue: String);
var
  i: Integer;
  VarName: String;
begin
  if not FFilterSectionChange
  then
  begin
    if FFilters.IndexOfName(SectionName)=-1
    then
      FFilters.Add(Format('%s=%s', [SectionName, FilterValue]))
    else
    begin
      if Cb_FilterString.Text<>''
      then
        FFilters.Values[SectionName]:=FilterValue
      else
        FFilters.Delete(FFilters.IndexOfName(SectionName));
    end;

    ToolBar1.Repaint;

    Db_DocsList.ClearVariables;
    for i:=0 to FFilters.Count-1
    do
    begin
      VarName:=Format('Var%s',[FFilters.Names[i]]);
      Db_DocsList.SetVariable(VarName, FFilters.ValueFromIndex[i]);
    end;
    Db_DocsList.Refresh;
  end;
end;

procedure TFrame_DocsList.ToolBar1CustomDraw(Sender: TToolBar;
  const ARect: TRect; var DefaultDraw: Boolean);
Var
  DrawingCanvas: TCanvas;
begin
  DefaultDraw := True;
  DrawingCanvas:=Sender.Canvas;
  if FFilters.Count>0
  then
  begin
    DrawingCanvas.Brush.Color := clWebYellow;
    DrawingCanvas.Font.Color := clWindowText;
    DrawingCanvas.Font.Name := 'clWindowText';
    DrawingCanvas.Font.Size := 7;
    DrawingCanvas.TextOut(Lcb_FilterSetions.Left-DrawingCanvas.TextWidth(IntToStr(FFilters.Count))-1,
                          Lcb_FilterSetions.Top,
                          IntToStr(FFilters.Count));
  end;

  Sender.DrawingStyle:=TTBDrawingStyle.dsGradient;
end;

end.
