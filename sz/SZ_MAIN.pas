unit SZ_MAIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,SZ_VARIABLES,SZ_COMMET_VIEW,SZ_COMMET_VIEW_SEO,SZ_EDIT, SZ_CREAT,
  Data.DB, Vcl.Grids, Vcl.DBGrids,SZ_choose_Str, OracleData, Oracle, SZ_PRINT, SZ_PRINT_SEO,
  Vcl.AppEvnts, Vcl.ToolWin, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Menus, ShellApi,
  System.ImageList, Vcl.ImgList, System.UITypes, SZ_SEARCH, SZ_CHS_PRNT, SZ_PRINT_4S, SZ_LOG, SZ_ADMIN_MES,SZ_PRINT_SEO_FF,
  Vcl.Mask, DBCtrlsEh, DBLookupEh, System.Math, Vcl.Themes, Winapi.UxTheme, ObjectInspectorEh, ClipBrd,
  MemTableDataEh, MemTableEh, DataDriverEh, UWorkWithBuffer, UnitDefaultFunctions;

type TUserState=(usContentMaker, usHead, usContentCheck, usViewer, usAdmin, usMarker);
type TFrameState=(fsContentSign, fsContentCheck, fsContentMake, fsContentView,
                  fsContentViewSign, fsContentLinking);
type TFrameStates=Set of TFrameState;
type TUserStates=Set of TUserState;

type TPageFrame=class(TObject)
  private
     FViewFrame: TFrame;
     FDataFrame: TFrame;
     FParentPage: TTabSheet;
     FOwner: TComponent;
     FName: String;
  public
    constructor Create(AOwner: TComponent; ViewFrameClass: TClass; UserState:TUserState;  FrameStates:TFrameStates;  DocHeaderId: Integer=0; ObjectName: String = '');
    procedure Free;
    property ViewFrame: TFrame read FViewFrame;
    property DataFrame: TFrame read FDataFrame;
    property ParentPage: TTabSheet read FParentPage write FParentPage;
    property PageFrameName: String read FName;
end;


type TDocsTab=class(TPersistent)
  private
     FFrameClass: TClass;
     FUserState: TUserState;
     FFrameStates: TFrameStates;
     FListDepId:Integer;
     FName: String;
     FCaption: String;
     FMenuItem: TMenuItem;
     FParent: TObject;
  public
    constructor Create(ParentObj: TObject);
    property FrameClass: TClass read FFrameClass write FFrameClass;
    property UserState: TUserState read FUserState write FUserState;
    property FrameStates: TFrameStates read FFrameStates write FFrameStates;
    property MenuItem: TMenuItem read FMenuItem write FMenuItem;
    property Name: String read FName write FName;
    property Caption: String read FCaption write FCaption;
    property ListDepId: Integer read FListDepId write FListDepId;
    property Parent: TObject read FParent;
end;

type TDocsTabs=class(TPersistent)
  private
    FDocsTabs: TList;
    function GetDocsTab(Index: Integer): TDocsTab;
    procedure SetDocsTab(Index: Integer; const Value: TDocsTab);
  public
    constructor Create;
    function AddDocsTab: TDocsTab;
    function IndexOf(DocsTabName: String):Integer; overload;
    function IndexOf(DocsTabMenuItem: TMenuItem):Integer; overload;
    function FindDocsTab(DocsTabName: String):TDocsTab; overload;
    function FindDocsTab(DocsTabMenuItem: TMenuItem):TDocsTab; overload;
    function DocsTabsCount: Integer;
    property DocsTabs[Index: Integer]: TDocsTab read GetDocsTab write SetDocsTab; default;
end;

type
  TForm_Sz_Main = class(TForm)
    PageControl1: TPageControl;
    OraclePackage1: TOraclePackage;
    OraclePackage2: TOraclePackage;
    MainMenu1: TMainMenu;
    N211: TMenuItem;
    N2ws1: TMenuItem;
    dsd1: TMenuItem;
    N1: TMenuItem;
    ImageList1: TImageList;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Label8: TLabel;
    N20: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    ImageList2: TImageList;
    Tm_Boot: TTimer;
    Db_DefaultUserPages: TOracleDataSet;
    Db_UserRoles: TOracleDataSet;
    Db_UserRolesOBJECT_ID: TIntegerField;
    Db_UserRolesGROUP_ID: TIntegerField;
    Db_UserRolesGROUP_NAME: TStringField;
    Db_UserRolesROLE_ID: TIntegerField;
    Db_UserRolesUSER_ID: TStringField;
    Db_UserRolesDEP_ID: TIntegerField;
    Db_UserRolesPARAMETR_ID: TStringField;
    Db_UserRolesPARAMETR_VALUE: TStringField;
    Db_UserRolesPARAMETR_NOTE: TStringField;
    Db_DefaultUserPagesID_SZ_PAGE: TIntegerField;
    Db_DefaultUserPagesUSER_STATE: TIntegerField;
    Db_DefaultUserPagesDEP_ID: TIntegerField;
    Db_DefaultUserPagesPAGE_FRAMESTATE: TStringField;
    Db_DefaultUserPagesPAGE_NUM: TIntegerField;
    Db_DefaultUserPagesPAGE_FRAME: TStringField;
    Db_DefaultUserPagesPAGE_CAPTION: TStringField;
    Db_DefaultUserPagesPAGE_LIST_DEP_ID: TIntegerField;
    OracleDataSet1: TOracleDataSet;
    DataSetDriverEh1: TDataSetDriverEh;
    MemTableEh1: TMemTableEh;
    OracleQuery1: TOracleQuery;
    Mm_DefaultTabs: TMenuItem;
    procedure Button6Click(Sender: TObject);
    procedure Btn_CommentClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure DateTimePicker2CloseUp(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BALLONLOGAfterRefresh(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure DS_NOTIFAfterRefresh(DataSet: TDataSet);
    procedure N2ws1Click(Sender: TObject);
    procedure dsd1Click(Sender: TObject);
    procedure DBGridEh_IMPGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DBGridEh_OUTPGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
    //procedure N6Click(Sender: TObject);
    procedure DBGrid_ContentDblClick(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh_STATUSGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure OTDEL_TYPE_INFO_LCBKeyValueChanged(Sender: TObject);
    procedure STATUS_LCBKeyValueChanged(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure E_Sz_Num_SeoChange(Sender: TObject);
    procedure PageControl1DrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure PageControl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PageControl1MouseLeave(Sender: TObject);
    procedure PageControl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PageControl1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Tm_BootTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FCloseButtonsRect: array of TRect;
    FCloseButtonMouseDownIndex: Integer;
    FCloseButtonShowPushed: Boolean;
    FUserRights: TStringList;
    FOpenFrames: TStringList;
    FUserStates:TUserStates;
    FUserDepId:Integer;
    FGenSQLParams:TFunctionGenSQLParams;
    FDeleteFromDbGridEh:TProcedureDeleteFromDbGridEh;
    FDefaultDocsTabsList: TDocsTabs;
  public
    { Public declarations }
    num_str_log :integer;
    exit_btn_is_pushed :bool;

    /// <summary> Определение наличия у с/з СЭО свободной формы</summary>
		/// <param name="Sz_Id"> Integer; <br/>  ID с/з   </param>
    /// <returns> Bool <br/> </returns>
    function Is_SZ_have_free_form(Sz_Id :integer) :bool;

    /// <summary> Определение наличия с/з в базе </summary>
		/// <param name="Sz_Id"> Integer; <br/>  ID с/з   </param>
    /// <returns> Bool <br/> </returns>
    function Is_SZ_Exist(Sz_Id :integer) :bool;

    /// <summary> Определение возможности редактирования с/з для пользователя </summary>
		/// <param name="Sz_Id"> Integer; <br/>  ID с/з   </param>
    /// <returns> Bool <br/> </returns>
    function Can_SZ_Edit(Sz_Id :integer) :integer;
    procedure DocsTabMenuItemClick(Sender: TObject);
    procedure P_Open_Item(FrameClass: TClass;
                          UserState:TUserState;
                          FrameStates:TFrameStates;
                          InDocHeaderId: Integer=0;
                          FrameName: String='';
                          TabCaption: String='';
                          ListDepId: Integer=0);
    procedure p_CloseTab(TabIndex: Integer);
    property  UserStates: TUserStates read FUserStates;
    property  UserDepId: Integer read FUserDepId;
    function  FindOpenedFrame(FrameName: String): TPageFrame overload;
    function  FindOpenedFrame(ControlPage: TTabSheet): TPageFrame overload;
    function  FindFramePage(FrameName: String): TTabSheet;
    function  IndexOfOpenedFrame(FrameName: String): Integer overload;
    function  IndexOfOpenedFrame(PageFrame: TPageFrame): Integer overload;
    function  IndexOfOpenedFrame(ControlPage: TTabSheet): Integer overload;
    function  AddOpenedFrame(AOwner: TComponent; ViewFrameClass: TClass; UserState:TUserState;
              FrameStates:TFrameStates; InDocHeaderId: Integer=0; ObjectName: String=''): TPageFrame;
    procedure DeleteOpenedFrame(PageFrame: TPageFrame) overload;
    procedure DeleteOpenedFrame(ControlPage: TTabSheet) overload;
    procedure DeleteOpenedFrame(FrameName: String) overload;
    function  f_NextSeqNumber(Sender: TObject): Integer overload;
    function  f_NextSeqNumber(SequenceName: String): Integer overload;
    procedure CopyItemToBuffer(Recs: TBufferStructOfMemRecs);
    function  LoadItemFromBuffer: TBufferStruct;
    procedure p_DeleteFromDBGridEh(DBGridEh: TDBGridEh);
    function  f_GenSQLParams(InParams: TDynVarsEh): TDynVarsEh;
    property  GenSQLParamsFunction: TFunctionGenSQLParams read FGenSQLParams write FGenSQLParams;
    property  DeleteFromDbGridEh: TProcedureDeleteFromDbGridEh read FDeleteFromDbGridEh write FDeleteFromDbGridEh;
  end;

var
  Form_Sz_Main: TForm_Sz_Main;

implementation

{$R *.dfm}

uses
sz_enter, SZ_USER_LIST, Sz_DocsList_Frame, Udm_Main, Sz_DocFrame;

{$Region 'Уведомления трея'}

  function TForm_Sz_Main.AddOpenedFrame(AOwner: TComponent; ViewFrameClass: TClass; UserState:TUserState;
  FrameStates:TFrameStates; InDocHeaderId: Integer; ObjectName: String): TPageFrame;
var
  NewPageFrame: TPageFrame;
begin
  NewPageFrame := TPageFrame.Create(AOwner, ViewFrameClass, UserState, FrameStates, InDocHeaderId, ObjectName);
  FOpenFrames.AddObject(ObjectName, NewPageFrame);
  Result := NewPageFrame;
end;

procedure TForm_Sz_Main.BALLONLOGAfterRefresh(DataSet: TDataSet);
  begin
  end;
  // Уведомление о том, что получена новая с/з от СЭО
  procedure TForm_Sz_Main.DS_NOTIFAfterRefresh(DataSet: TDataSet);
  begin

  end;
{$ENDRegion 'Уведомления трея'}

{$Region 'Фильтры таблиц'}

  {$Region 'Фильтры таблицы исходящие С/З'}

//Выбор статуса
    procedure TForm_Sz_Main.STATUS_LCBKeyValueChanged(Sender: TObject);
    begin

    end;
    //Установка номера с/з
    procedure TForm_Sz_Main.E_Sz_Num_SeoChange(Sender: TObject);
    begin

    end;

{$ENDRegion 'Фильтры таблицы исходящие С/З'}

  {$Region 'Фильтры таблицы входящие С/З'}

  {$ENDRegion 'Фильтры таблицы входящие С/З'}

  {$Region 'Фильтры таблицы ИНФО'}
    //Выбор какие С/з показывать от Отдела продаж или от СЭО
     procedure TForm_Sz_Main.OTDEL_TYPE_INFO_LCBKeyValueChanged(Sender: TObject);
      begin

      end;
   {******* Смену исполнителя С/З см. в п. "Фильтры таблицы исходящие С/З" ******}
     //Установка даты "С"
    procedure TForm_Sz_Main.DateTimePicker1CloseUp(Sender: TObject);
      begin

      end;
    //Установка даты "ПО"
    procedure TForm_Sz_Main.DateTimePicker2CloseUp(Sender: TObject);
      begin
         
      end;

  {$ENDRegion 'Фильтры таблицы ИНФО'}

{$ENDRegion 'Фильтры таблиц'}

{$Region 'Комментарии'}

  //Просмотр комментариев
  procedure TForm_Sz_Main.Btn_CommentClick(Sender: TObject);
  begin

  end;

{$ENDRegion 'Комментарии'}

{$Region 'Работа с с/з'}
  //Подписание с/з
  procedure TForm_Sz_Main.Button5Click(Sender: TObject);
   var
    UserAllow, buttonSelected :integer;
  begin

  end;
  //Создание с/з
  procedure TForm_Sz_Main.N24Click(Sender: TObject);
  begin

  end;
  //Дубликат с/з
  procedure TForm_Sz_Main.N23Click(Sender: TObject);
  begin

  end;
  //Редактирование с/з
  procedure TForm_Sz_Main.N2ws1Click(Sender: TObject);
  begin

  end;
  //Для с/з СЭО. Отметка о внесении в прайс отдела продаж
procedure TForm_Sz_Main.P_CloseTab(TabIndex: Integer);
var
  ClosingPageFrame: TPageFrame;
  ActiveFrameIndex: Integer;
  CanClose: Boolean;
begin
  if PageControl1.PageCount>1
  then
  begin
    ClosingPageFrame := FindOpenedFrame(PageControl1.Pages[TabIndex]);
    if ClosingPageFrame<>Nil
    then
    begin
      if ClosingPageFrame.ViewFrame is TFrame_Doc
      then
      begin
        if (ClosingPageFrame.ViewFrame  as TFrame_Doc).F_Save_Doc(Nil)<>mrCancel then CanClose := True Else CanClose := False;
      end
      else if ClosingPageFrame.ViewFrame  is TFrame_DocsList then CanClose := True;

      if CanClose
      then
      begin
        if ClosingPageFrame<>Nil
        then
        begin
          DeleteOpenedFrame(ClosingPageFrame);
          ClosingPageFrame.Free;
          ClosingPageFrame := Nil;
        end;
        PageControl1.TabIndex := TabIndex-1;
        FCloseButtonMouseDownIndex := -1;
        PageControl1.Repaint;
      end;
    end;
  end;
end;

procedure TForm_Sz_Main.P_DeleteFromDBGridEh(DBGridEh: TDBGridEh);
Begin
  DefaultProcedureDeleteFromDbGridEh(DBGridEh);
end;

procedure TForm_Sz_Main.P_Open_Item(FrameClass: TClass; UserState:TUserState;
  FrameStates:TFrameStates; InDocHeaderId: Integer; FrameName: String; TabCaption: String;
  ListDepId: Integer);
Var
    NewTabSheet: TTabSheet;
    NewPageFrame: TPageFrame;
    IndexOfNewFrame, i: Integer;
begin
    NewPageFrame := Nil;
    if FrameClass = TFrame_DocsList
    then
      NewPageFrame:=FindOpenedFrame(FrameName)
    else
      NewPageFrame:=FindOpenedFrame(IntToStr(InDocHeaderId));

    if NewPageFrame = Nil
    then
    begin
      if FrameClass = TFrame_DocsList
      then
        NewPageFrame := AddOpenedFrame(Application, FrameClass, UserState, FrameStates, 0, FrameName)
      else
        NewPageFrame := AddOpenedFrame(Application, FrameClass, UserState, FrameStates, InDocHeaderId, IntToStr(InDocHeaderId));

      if FrameClass = TFrame_DocsList
      then
      begin
        (NewPageFrame.ViewFrame as TFrame_DocsList).ListDepId := ListDepId;
        (NewPageFrame.ViewFrame as TFrame_DocsList).P_OpenList;
      end
      else if FrameClass = TFrame_Doc
      then
      begin
        (NewPageFrame.ViewFrame as TFrame_Doc).P_Open_Doc;
      end;

      NewTabSheet := TTabSheet.Create(PageControl1);
      NewTabSheet.PageControl := PageControl1;
      if FrameClass = TFrame_DocsList
      then
        NewTabSheet.Caption :=  TabCaption+'       '
      else if FrameClass=TFrame_Doc
      then
      begin
        if InDocHeaderId=0
        then
        begin
          NewTabSheet.Caption :='Новый документ      ';
        end
        else
        begin
          NewTabSheet.Caption :=(NewPageFrame.ViewFrame as TFrame_Doc).Db_DocSZ_DEP_NUMBER.AsString+'      ';
        end;
      end;

      NewPageFrame.ViewFrame.Parent := NewTabSheet;
      NewPageFrame.ParentPage := NewTabSheet;
      NewPageFrame.ViewFrame.Align := alClient;
      NewTabSheet.Name := 'TTabSheet_'+NewPageFrame.PageFrameName;
      PageControl1.ActivePage := NewTabSheet;
    end
    else
    begin
      PageControl1.ActivePage:= NewPageFrame.ParentPage;
    end;
end;

{$ENDRegion 'Работа с с/з'}

{$Region 'Действия админа'}
  procedure TForm_Sz_Main.N20Click(Sender: TObject);
  begin
     if not SZ_USER_LIST.Form38.Showing
     then
       SZ_USER_LIST.Form38.Show //Показать список пользователей
     Else if SZ_USER_LIST.Form38.Showing
     then
       SZ_USER_LIST.Form38.SetFocus //Показать список пользователей

  end;

{$ENDRegion 'Действия админа'}

{$Region 'Окрашивание формы'}

  //Таблица "Входяшие с/з"
  procedure TForm_Sz_Main.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
 {if not Db_Main_Appr_Steps.IsEmpty then
 Begin
   if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '002' then Background := $00EEEEAF
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '003' then Background := $0000D7FF
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '004' then Background := $0000D7FF
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '001' then Background := $00E6D8AD
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '006' then Background := $00E6D8AD
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '007' then Background := $00CBC0FF
   Else if Db_Main_Appr_StepsAPPR_STEP_NUM.AsString = '005' then Background := $00CBC0FF;

   if ( Db_Main_Appr_StepsSTATUS.AsString = 'Согласован' )
            And ( Column.FieldName = 'STATUS' ) then Background := $0098FB98
   else if ( Pos ( 'Отказ', Db_Main_Appr_StepsSTATUS.AsString ) <> 0 ) then
   Begin
    Background := $00C1B6FF;
    AFont.Color := clRed;
   End
   else if ( Pos ( 'На рассмотр', Db_Main_Appr_StepsSTATUS.AsString ) <> 0 )
            And ( Column.FieldName = 'STATUS' ) then Background := $0000D7FF
   else if ( Db_Main_Appr_StepsSTATUS.AsString = 'Не получен' )
            And ( Column.FieldName = 'STATUS' ) then Background := clWhite;
 End; }

end;

procedure TForm_Sz_Main.DBGridEh_IMPGetCellParams(Sender: TObject; Column: TColumnEh;
    AFont: TFont; var Background: TColor; State: TGridDrawState);
  begin

  end;
  //Таблица "Исходящие с/з"
  procedure TForm_Sz_Main.DBGridEh_OUTPGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
    begin

    end;
    //Таблица "ИНФО"
    procedure TForm_Sz_Main.DBGridEh_STATUSGetCellParams(Sender: TObject;
    Column: TColumnEh; AFont: TFont; var Background: TColor;
    State: TGridDrawState);
    begin

    end;
    //Таблица с составом Исходящих с/з
    procedure TForm_Sz_Main.DeleteOpenedFrame(PageFrame: TPageFrame);
begin
  FOpenFrames.Delete(IndexOfOpenedFrame(PageFrame));
end;

procedure TForm_Sz_Main.DeleteOpenedFrame(FrameName: String);
begin
  FOpenFrames.Delete(IndexOfOpenedFrame(FrameName));
end;

procedure TForm_Sz_Main.DocsTabMenuItemClick(Sender: TObject);
var
  DocsTab: TDocsTab;
begin
  DocsTab:=FDefaultDocsTabsList.FindDocsTab(Sender as TMenuItem);
  if DocsTab<>Nil
  then
  begin
    P_Open_Item(DocsTab.FrameClass,
                DocsTab.UserState,
                DocsTab.FrameStates,
                0,
                DocsTab.Name,
                DocsTab.Caption,
                DocsTab.ListDepId);
  end;
end;

procedure TForm_Sz_Main.DeleteOpenedFrame(ControlPage: TTabSheet);
begin
  FOpenFrames.Delete(IndexOfOpenedFrame(ControlPage));
end;

{$ENDRegion 'Окрашивание формы'}

{$Region 'Поиск оборудования'}

  {****По двойному нажатию на оборудование в составе с/з открывается окно поиска чертежного №, в котором найдено это оборудование
  необходимо для поиска с/з СЭО (либо отдела продаж) в котором находится данное оборудование*****}
  procedure TForm_Sz_Main.DBGrid_ContentDblClick(Sender: TObject);
  begin

  end;
  //Открытие формы поиска оборудования
  procedure TForm_Sz_Main.N2Click(Sender: TObject);
  begin
  end;

{$ENDRegion 'Поиск оборудования'}

{$Region 'Вывод на печать'}

  procedure TForm_Sz_Main.dsd1Click(Sender: TObject);
  begin
    
  end;

{$ENDRegion 'Вывод на печать'}

{$Region 'Уведомления админа'}
//Получение сообщения
procedure TForm_Sz_Main.DS_Admin_NOTIFAfterRefresh(DataSet: TDataSet);
begin

end;

{$ENDRegion 'Уведомления админа'}

{$Region 'Открытие формы'}

function TForm_Sz_Main.f_GenSQLParams(InParams: TDynVarsEh): TDynVarsEh;
begin
  Result:=DefaultFunctionGenSQLParams(InParams);
end;

function TForm_Sz_Main.f_NextSeqNumber(SequenceName: String): Integer;
var
  ResultNumber: Integer;
  SequenceNameDataSet: TOracleQuery;
begin
  SequenceNameDataSet := TOracleQuery.Create(Self);
  with SequenceNameDataSet
  do
  begin
    try
      SQL.Add('Select ' + SequenceName + '.Nextval From Dual');
      Session := DM_Main.Session;
      Execute;
      ResultNumber := FieldAsInteger(0);
    finally
      Free;
    end;
  end;

  Result := ResultNumber;
end;

function TForm_Sz_Main.F_NextSeqNumber(Sender: TObject): Integer;
var
  ResultNumber: Integer;
  SequenceName: String;
  SequenceNameDataSet: TOracleQuery;
begin
  if Sender is TMemTableEh
  then
  begin

    with Sender as TMemTableEh
    do
    begin
      if ExternalMemData = Nil
      then
      begin
        if DataDriver<>Nil
        then
          SequenceName := ((DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).SequenceField.Sequence;
      end
      else
        SequenceName := ((ExternalMemData.DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet).SequenceField.Sequence;
    end;

    if SequenceName = ''
    then
    begin
      MessageDlg('Последовательность не найдена!', mtError, [mbOK], 5);
      Abort;
    end;

    SequenceNameDataSet := TOracleQuery.Create(Self);
    with SequenceNameDataSet
    do
    begin
      try
        SQL.Add('Select ' + SequenceName + '.Nextval From Dual');
        Session := DM_Main.Session;
        Execute;
        ResultNumber := FieldAsInteger(0);
      finally
        Free;
      end;
    end;

    Result := ResultNumber;
  end;
end;

{$ENDRegion 'Открытие формы'}

{$Region 'Закрытие формы'}

  function TForm_Sz_Main.FindFramePage(FrameName: String): TTabSheet;
begin
  if FOpenFrames.IndexOf(FrameName)<>-1
  then
    Result := (FOpenFrames.Objects[FOpenFrames.IndexOf(FrameName)] as TPageFrame).ParentPage
  else
    Result := Nil;
end;

function TForm_Sz_Main.FindOpenedFrame(FrameName: String): TPageFrame;
begin
  if FOpenFrames.IndexOf(FrameName)<>-1
  then
  begin
    Result := FOpenFrames.Objects[FOpenFrames.IndexOf(FrameName)] as TPageFrame;
  end
  else
    Result := Nil;
end;

function TForm_Sz_Main.FindOpenedFrame(ControlPage: TTabSheet): TPageFrame;
var
  i: Integer;
begin
  Result := Nil;
  for i := 0 to FOpenFrames.Count-1
  do
  begin
    if (FOpenFrames.Objects[i] as TPageFrame).ParentPage=ControlPage
    then
      Result := (FOpenFrames.Objects[i] as TPageFrame);
  end;
end;

procedure TForm_Sz_Main.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
  if not Exit_btn_is_pushed then
    begin
     SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Tray'); //При закрытии формы, сворачиваем ее в трей
     if SZ_Enter.Form1.User_is_admin then
     begin
      if SZ_USER_LIST.Form38.Showing then //Если показывается таблица пользователей онлайн, то ее закрываем
      begin
        SZ_USER_LIST.Form38.Close;
      end;
     end;
     Self.Close;
    end;
  end;

procedure TForm_Sz_Main.FormCreate(Sender: TObject);
begin
  FOpenFrames := TStringList.Create;
  PageControl1.OwnerDraw := True;
  FCloseButtonMouseDownIndex := -1;
  FGenSQLParams:=f_GenSQLParams;
  FDeleteFromDbGridEh:=P_DeleteFromDBGridEh;
  FDefaultDocsTabsList:=TDocsTabs.Create;
end;

procedure TForm_Sz_Main.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  FormBounds: TRect;
begin
  if Key = VK_F11 then
  begin
    FormBounds := Rect(Left+Width+10, Top, Left+Width+10+300, Top+Height);
    if FormBounds.Right > Screen.DesktopRect.Right then
      OffsetRect(FormBounds, Screen.DesktopRect.Right - FormBounds.Right, 0);
    ShowObjectInspectorForm(ActiveControl, FormBounds);
  end
end;

//Через кнопку выход
   procedure TForm_Sz_Main.Button6Click(Sender: TObject);
  begin
   SZ_VARIABLES.Form20.OracleDataSet1.SetVariable('Status','Tray');
   exit_btn_is_pushed := true;
   if SZ_Enter.Form1.User_is_admin then
   begin
    if SZ_USER_LIST.Form38.Showing then
    begin
      SZ_USER_LIST.Form38.Close;
    end;
   end;
   Self.Close;
  end;

{$ENDRegion 'Закрытие формы'}

{$Region 'Справка'}
  //Открытие файл и правилами работы с программой
  procedure TForm_Sz_Main.N3Click(Sender: TObject);
  begin
    if FileExists('P:\Памятка пользователя База служебных записок.pdf') then
       begin
         ShellExecute(handle,nil,PChar('P:\Памятка пользователя База служебных записок.pdf'),nil,nil,SW_SHOWNORMAL);
       end;
  end;
  //Открыть лог изменений
  procedure TForm_Sz_Main.N4Click(Sender: TObject);
  begin
   SZ_LOG.Form30.ShowModal;
  end;

{$ENDRegion 'Справка'}

//Авто-загрузка (пока не реализовано)
//procedure TForm2.N6Click(Sender: TObject);
//  var
//  vexit:string;
//  begin
//   if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]) = 0)  then
//    begin
//      vexit := 'C:\Users\' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_TERMINAL_NAME') + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SZ_SEO1.lnk';   //\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
//      CopyFile(PChar('\\server\forms\SZ_SEO1.lnk'),PChar(vexit),true);
//      N6.Checked := true;
//      OraclePackage2.CallProcedure('AutoLoad', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), 1]);
//    end
//    else if (OraclePackage2.CallStringFunction('CheckAutoLoad',[SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId')]) = 1)  then
//    begin
//      vexit := 'C:\Users\' + SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('SZ_TERMINAL_NAME') + '\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SZ_SEO1.lnk';
//      DeleteFile(vexit);
//      N6.Checked := false;
//      OraclePackage2.CallProcedure('AutoLoad', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), 0]);
//    end;
//  end;

{$Region 'Действия при смене вкладок'}

  procedure TForm_Sz_Main.PageControl1Change(Sender: TObject);
  var
    ActivePageFrame: TPageFrame;
  begin
    PageControl1.Repaint;
    ActivePageFrame := FindOpenedFrame(PageControl1.ActivePage);

    if ActivePageFrame.FViewFrame is TFrame_DocsList
    then
      with ActivePageFrame.FViewFrame as TFrame_DocsList
      do
        Db_DocsList.Refresh;
  end;

procedure TForm_Sz_Main.PageControl1DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
  I: Integer;
  CloseBtnSize: Integer;
  PageControl: TPageControl;
  TabCaption: TPoint;
  CloseBtnRect: TRect;
  CloseBtnDrawState: Cardinal;
  CloseBtnDrawDetails: TThemedElementDetails;
  FrameDataHolder: TFrame;
begin
  PageControl := Control as TPageControl;
  {FrameDataHolder := F_GetActivePageFrame;

  if FrameDataHolder is TFrame_TextInsert
  then
    FrameDataHolder := (FrameDataHolder as TFrame_TextInsert).FrameDataHolder
  else if FrameDataHolder is TFrame_NormMat
  then
    FrameDataHolder := (FrameDataHolder as TFrame_NormMat).FrameDataHolder
  else if FrameDataHolder is TFrame_Item_Dc_Specf
  then
    FrameDataHolder := (FrameDataHolder as TFrame_Item_Dc_Specf).FrameDataHolder;

  Mm_Btn_EnableEdit.Checked := (FrameDataHolder as TFrame_Specf).FrameEditMode;
  if Mm_Btn_EnableEdit.Checked
  then
    Mm_Btn_EnableEdit.ImageIndex:=5
  else
    Mm_Btn_EnableEdit.ImageIndex:=6; }

  //should be done on every change of the page count
  SetLength(FCloseButtonsRect, PageControl1.PageCount);

  if InRange(TabIndex, 0, Length(FCloseButtonsRect) - 1) then
  begin
    CloseBtnSize := 14;
    TabCaption.Y := Rect.Top + 3;

    if Active then
    begin
      CloseBtnRect.Top := Rect.Top + 4;
      CloseBtnRect.Right := Rect.Right - 5;
      TabCaption.X := Rect.Left + 6;
    end
    else
    begin
      CloseBtnRect.Top := Rect.Top + 3;
      CloseBtnRect.Right := Rect.Right - 5;
      TabCaption.X := Rect.Left + 3;
    end;

    {if TabIndex <> 0
    then
    begin}
      CloseBtnRect.Bottom := CloseBtnRect.Top + CloseBtnSize;
      CloseBtnRect.Left := CloseBtnRect.Right - CloseBtnSize;
      FCloseButtonsRect[TabIndex] := CloseBtnRect;
    //end;

   if PageControl.ActivePageIndex = TabIndex
    then
      PageControl.Canvas.Font.Color := clWindowText
    else
      PageControl.Canvas.Font.Color := clGrayText;

    PageControl.Canvas.FillRect(Rect);
    PageControl.Canvas.TextOut(TabCaption.X, TabCaption.Y, PageControl.Pages[TabIndex].Caption);

    if not UseThemes then
    begin
      if (FCloseButtonMouseDownIndex = TabIndex) and FCloseButtonShowPushed then
        CloseBtnDrawState := DFCS_CAPTIONCLOSE + DFCS_PUSHED
      else
      begin
        if PageControl.ActivePageIndex = TabIndex
        then
          CloseBtnDrawState := DFCS_CAPTIONCLOSE
        else
          CloseBtnDrawState := DFCS_CAPTIONCLOSE + DFCS_INACTIVE;
      end;

      Winapi.Windows.DrawFrameControl(PageControl.Canvas.Handle,
        FCloseButtonsRect[TabIndex], DFC_CAPTION, CloseBtnDrawState);
    end
    else
    begin
      Dec(FCloseButtonsRect[TabIndex].Left);

      if (FCloseButtonMouseDownIndex = TabIndex) and FCloseButtonShowPushed then
        CloseBtnDrawDetails := ThemeServices.GetElementDetails(twCloseButtonPushed)
      else
      begin
        if PageControl.ActivePageIndex = TabIndex
        then
          CloseBtnDrawDetails := ThemeServices.GetElementDetails(twCloseButtonNormal)
        else
          CloseBtnDrawDetails := ThemeServices.GetElementDetails(twCloseButtonDisabled);
      end;

      ThemeServices.DrawElement(PageControl.Canvas.Handle, CloseBtnDrawDetails,
        FCloseButtonsRect[TabIndex]);
    end;
  end;
end;

procedure TForm_Sz_Main.PageControl1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  I: Integer;
  PageControl: TPageControl;
begin
  PageControl := Sender as TPageControl;

  if Button = mbLeft then
  begin
    for I := 0 to Length(FCloseButtonsRect) - 1 do
    begin
      if PtInRect(FCloseButtonsRect[I], Point(X, Y)) then
      begin
        FCloseButtonMouseDownIndex := I;
        FCloseButtonShowPushed := True;
        PageControl.Repaint;
      end;
    end;
  end;
end;

procedure TForm_Sz_Main.PageControl1MouseLeave(Sender: TObject);
var
  PageControl: TPageControl;
begin
  PageControl := Sender as TPageControl;
  FCloseButtonShowPushed := False;
end;

procedure TForm_Sz_Main.PageControl1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  PageControl: TPageControl;
  Inside: Boolean;
begin
  PageControl := Sender as TPageControl;

  if (ssLeft in Shift) and (FCloseButtonMouseDownIndex >= 0) then
  begin
    Inside := PtInRect(FCloseButtonsRect[FCloseButtonMouseDownIndex], Point(X, Y));

    if FCloseButtonShowPushed <> Inside then
    begin
      FCloseButtonShowPushed := Inside;
      PageControl.Repaint;
    end;
  end;
end;

procedure TForm_Sz_Main.PageControl1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  PageControl: TPageControl;
begin
  PageControl := Sender as TPageControl;

  if (Button = mbLeft) and (FCloseButtonMouseDownIndex >= 0) then
  begin
    if PtInRect(FCloseButtonsRect[FCloseButtonMouseDownIndex], Point(X, Y)) then
    begin
      P_CloseTab(PageControl.ActivePageIndex);
    end;
  end;
end;

{$ENDRegion 'Действия при смене вкладок'}

{$Region 'Таймеры'}
//обновление таблиц с уведомлениями
procedure TForm_Sz_Main.Timer1Timer(Sender: TObject);
begin

end;
//принудительное выключение
procedure TForm_Sz_Main.Timer3Timer(Sender: TObject);
begin
 OraclePackage1.CallProcedure('UserOnline', [SZ_VARIABLES.Form20.OracleDataSet1.GetVariable('UserId'), '0']); //Указываем время выхода
 Application.Terminate; //Отключаем приложение
end;
procedure TForm_Sz_Main.Tm_BootTimer(Sender: TObject);
var
  FramePageClass: TClass;
  FrameStatesList: TStringList;
  FrameStates: TFrameStates;
  DocsTab: TDocsTab;
  MenuItem: TMenuItem;
  i: Integer;
begin
  if DM_Main.Vg_Booted
  Then
  Begin
    Tm_Boot.Enabled := False;
    Self.AlphaBlend:=True;
    Self.AlphaBlendValue:=0;
    Db_UserRoles.Active := True;
    Db_DefaultUserPages.SetVariable(1, DM_Main.F_Oracle( 'Stp.Pkg_User.F_Get_User_Department_Id', []));
    Db_DefaultUserPages.Active := True;
    //Определение админ пользователь или нет
    if DM_Main.F_Oracle( 'Stp.Pkg_User.F_Check_Program_Param'
                                           + '( In_Object_Id => :In_Object_Id, '
                                           + ' In_Parametr => :In_Parametr,'
                                           + ' In_Value => :In_Value )',
                                           [ 7184,
                                             'ADMIN',
                                             '1' ] ) = '1'
    Then
    Begin
      //Main_M_Tech_Proc_Main_Btn_Change_Role.Visible := True; //Показываем кнопку "Сменить роль"
      //Проверяем пароль админа
      if MessageDlg ('Зайти под ролью Администратора?', mtConfirmation, mbOkCancel, 5) = mrOk
      then
        FUserStates:=FUserStates+[usAdmin];
    End;

    with Db_UserRoles
    do
    begin
      if RecordCount>0
      then
      begin
        First;
        while not Eof
        do
        begin
          FUserStates:=FUserStates+[TUserState(FieldByName('PARAMETR_VALUE').AsInteger)];
          Db_DefaultUserPages.SetVariable(0, FieldByName('PARAMETR_VALUE').AsInteger);
          Db_DefaultUserPages.Refresh;

          Db_DefaultUserPages.First;
          while not Db_DefaultUserPages.Eof
          do
          begin
            FrameStatesList := TStringList.Create;
            FrameStatesList.StrictDelimiter:=True;
            FrameStatesList.Delimiter:=',';
            FrameStatesList.DelimitedText:=Db_DefaultUserPagesPAGE_FRAMESTATE.AsString;
            FrameStates:=[];
            for i := 0 to FrameStatesList.Count-1
            do
              FrameStates := FrameStates + [TFrameState(StrToInt(FrameStatesList[i]))];

            if Db_DefaultUserPagesPAGE_FRAME.AsString='TFrame_DocsList'
            then
              FramePageClass := TFrame_DocsList;

            MenuItem:=TMenuItem.Create(Application);
            MenuItem.OnClick:=DocsTabMenuItemClick;
            MenuItem.Caption:=Db_DefaultUserPagesPAGE_CAPTION.AsString;
            MenuItem.Name:=Format('Mm_Tab_%s',[Db_DefaultUserPagesID_SZ_PAGE.AsString]);
            MenuItem.ImageIndex:=100;
            Mm_DefaultTabs.Add(MenuItem);

            DocsTab:=FDefaultDocsTabsList.AddDocsTab;
            DocsTab.FrameClass:=FramePageClass;
            DocsTab.UserState:=TUserState(FieldByName('PARAMETR_VALUE').AsInteger);
            DocsTab.FrameStates:=FrameStates;
            DocsTab.Name:=Db_DefaultUserPagesPAGE_FRAME.AsString+Db_DefaultUserPagesID_SZ_PAGE.AsString;
            DocsTab.Caption:=Db_DefaultUserPagesPAGE_CAPTION.AsString;
            DocsTab.ListDepId:=Db_DefaultUserPagesPAGE_LIST_DEP_ID.AsInteger;
            DocsTab.MenuItem:=MenuItem;

            P_Open_Item(DocsTab.FrameClass,
                        DocsTab.UserState,
                        DocsTab.FrameStates,
                        0,
                        DocsTab.Name,
                        DocsTab.Caption,
                        DocsTab.ListDepId);

            Db_DefaultUserPages.Next;
          end;
          Next;
        end;
      end
      else
      begin
        FUserStates:=FUserStates+[usViewer];
        Db_DefaultUserPages.SetVariable(0, usViewer);
        Db_DefaultUserPages.SetVariable(1, 0);
        Db_DefaultUserPages.Refresh;

        Db_DefaultUserPages.First;
        while not Db_DefaultUserPages.Eof
        do
        begin
          FrameStatesList := TStringList.Create;
          FrameStatesList.StrictDelimiter:=True;
          FrameStatesList.Delimiter:=',';
          FrameStatesList.DelimitedText:=Db_DefaultUserPagesPAGE_FRAMESTATE.AsString;

          for i := 0 to FrameStatesList.Count-1
          do
            FrameStates := FrameStates + [TFrameState(StrToInt(FrameStatesList[i]))];

          if Db_DefaultUserPagesPAGE_FRAME.AsString='TFrame_DocsList'
          then
            FramePageClass := TFrame_DocsList;

          P_Open_Item(FramePageClass,
                      usViewer,
                      FrameStates,
                      0,
                      Db_DefaultUserPagesPAGE_FRAME.AsString+Db_DefaultUserPagesPAGE_NUM.AsString,
                      Db_DefaultUserPagesPAGE_CAPTION.AsString,
                      Db_DefaultUserPagesPAGE_LIST_DEP_ID.AsInteger);

          Db_DefaultUserPages.Next;
        end;
      end;
    end;

    if PageControl1.PageCount>0
    then
      PageControl1.ActivePageIndex:=0;

    if FileExists('Temp.txt')
    then
      DeleteFile('Temp.txt');
    Self.Caption := Format('Пользователь %s. (Режим просмотра)', [Dm_Main.Session.LogonUsername]);
    DM_Main.p_Exec_Object(12741);
    Self.AlphaBlendValue:=255;
  End
  Else
    Exit;
end;

{$ENDRegion 'Таймеры'}

{$Region 'Вспомогательные функции'}
 //Проверка наличия у с/з
function TForm_Sz_Main.Is_SZ_have_free_form(Sz_Id: Integer) :bool;
begin

end;

function TForm_Sz_Main.LoadItemFromBuffer: TBufferStruct;
var
  bufHandle, bufFileHandle: THandle;
  FirstByte: Pointer;
  BuffredMemRec: TBufferedRecord;
  DataSize: Integer;
begin
  try
    bufFileHandle:=CreateFile(PWideChar('Temp.txt'),
                      GENERIC_READ or GENERIC_WRITE,
                      FILE_SHARE_READ or FILE_SHARE_WRITE,
                      nil,
                      OPEN_EXISTING,
                      FILE_ATTRIBUTE_NORMAL,0);
    if bufFileHandle=INVALID_HANDLE_VALUE then
    begin
      Result := Nil;
      Exit;
    end
    else
    begin
      Result := TBufferStruct.Create;
      DataSize := SizeOf(TBufferStruct);//GetFileSize(bufFileHandle, Nil);
      bufHandle:=CreateFileMapping(bufFileHandle,                //INVALID_HANDLE_VALUE-использование файла подкачки
                                    nil,                  // защита по умолчанию
                                    PAGE_READWRITE,       //доступ к чтению/записи
                                    0,                    // макс. размер объекта
                                    DataSize, // размер буфера
                                    'ItemShared'); //Form_Main_Dc_Specf.HndlBuffer;//Clipboard.GetAsHandle(Form_Main_Dc_Specf.bfNormItems);{GlobalSize(bufHandle)};
      if bufHandle <> INVALID_HANDLE_VALUE then
      begin
        try
          FirstByte := MapViewOfFile(bufHandle, FILE_MAP_READ,0,0,0);
          if FirstByte=nil then
          begin
            Result := Nil;
            Exit;
            CloseHandle(bufHandle);
          end
          else
          begin
             try
              Move(FirstByte^, Result, DataSize);
            finally
              UnmapViewOfFile(FirstByte);
            end;
          end;
        finally
          CloseHandle(bufHandle);
        end;
      end;
    end;
  finally
    CloseHandle(bufFileHandle);
  end;
end;

//Наличие с/з в базе
 function TForm_Sz_Main.IndexOfOpenedFrame(FrameName: String): Integer;
begin
  Result := FOpenFrames.IndexOf(FrameName);
end;

function TForm_Sz_Main.IndexOfOpenedFrame(ControlPage: TTabSheet): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to FOpenFrames.Count-1
  do
  begin
    if (FOpenFrames.Objects[i] as TPageFrame).ParentPage=ControlPage
    then
      Result := i;
  end;
end;

function TForm_Sz_Main.IndexOfOpenedFrame(PageFrame: TPageFrame): Integer;
begin
  Result := FOpenFrames.IndexOf(PageFrame.PageFrameName);
end;

function TForm_Sz_Main.Is_SZ_Exist(Sz_Id :integer) :bool;
 begin

 end;
 //Проверка возможности редактирования с/з
 function TForm_Sz_Main.Can_SZ_Edit(Sz_Id :integer) :integer;
 begin

 end;
procedure TForm_Sz_Main.CopyItemToBuffer(Recs: TBufferStructOfMemRecs);
var
  bufHandle, bufFileHandle: THandle;
  Buffer : TBufferStruct;
  bufPointer: Pointer;
  DataSize, i, j: Integer;
begin
  bufFileHandle:=CreateFile(PWideChar('Temp.txt'),
                      GENERIC_READ or GENERIC_WRITE,
                      FILE_SHARE_READ or FILE_SHARE_WRITE,
                      nil,
                      OPEN_ALWAYS,
                      FILE_ATTRIBUTE_NORMAL,0);

  if bufFileHandle=INVALID_HANDLE_VALUE then
  begin
    Buffer := TBufferStruct.Create;
  end
  else
  begin
    Buffer := LoadItemFromBuffer;
  end;

  try
    if Buffer=Nil
    then
      Buffer := TBufferStruct.Create
    else if Buffer.FindBuffer(Recs.BufferedFrom.Name)<>Nil
    then
      Buffer.FindBuffer(Recs.BufferedFrom.Name).ClearItems;

    Buffer.AddBuffer(Recs);

    try
      DataSize := SizeOf(TBufferStruct);
      bufHandle:=CreateFileMapping(bufFileHandle,                //INVALID_HANDLE_VALUE-использование файла подкачки
                                    nil,                  // защита по умолчанию
                                    PAGE_READWRITE,       //доступ к чтению/записи
                                    0,                    // макс. размер объекта
                                    DataSize, // размер буфера
                                    'ItemShared');
      if bufHandle<>INVALID_HANDLE_VALUE then
      begin
        bufPointer := MapViewOfFile(bufHandle, FILE_MAP_WRITE,0,0,DataSize);
        if bufPointer=nil then
        begin
          ShowMessage('Ошибка при отображении файла '+SysErrorMessage(GetLastError));
          CloseHandle(bufHandle);
        end
        else
        begin
          try
            Move(Buffer, bufPointer^, DataSize);
          finally
            UnmapViewOfFile(bufPointer);//GlobalUnlock(bufHandle);
          end;
        end;
      end;
    finally
      CloseHandle(bufHandle);
    end;
  finally
    CloseHandle(bufFileHandle);
  end;
end;

{$ENDRegion 'Вспомогательные функции'}

{ TPageFrame }

constructor TPageFrame.Create(AOwner: TComponent; ViewFrameClass: TClass; UserState:TUserState;
FrameStates:TFrameStates;  DocHeaderId: Integer=0; ObjectName: String = '');
begin
  inherited Create;
  FOwner := AOwner;
  FName := ObjectName;
  FParentPage := TTabSheet.Create(AOwner);
  if ViewFrameClass=TFrame_DocsList
  then
  begin
    FViewFrame := TFrame_DocsList.Create(AOwner, UserState, FrameStates);
    FViewFrame.Name := ObjectName;
    FDataFrame := Nil;
  end
  else if ViewFrameClass=TFrame_Doc
  then
  begin
    FViewFrame := TFrame_Doc.Create(AOwner, DocHeaderId);
    FDataFrame := Nil;
  end;

end;

procedure TPageFrame.Free;
begin
  FViewFrame.Free;
  FDataFrame.Free;
  FParentPage.Free;
  inherited Free;
end;

{ TDocsTab }

constructor TDocsTab.Create(ParentObj: TObject);
begin
  inherited Create;
  FParent:=ParentObj;
end;

{ TDocsTabs }

function TDocsTabs.AddDocsTab: TDocsTab;
begin
  Result:=TDocsTab.Create(Self);
  FDocsTabs.Add(Result);
end;

constructor TDocsTabs.Create;
begin
  inherited Create;
  FDocsTabs:=TList.Create;
end;

function TDocsTabs.DocsTabsCount: Integer;
begin
  Result:=FDocsTabs.Count;
end;

function TDocsTabs.FindDocsTab(DocsTabMenuItem: TMenuItem): TDocsTab;
var
  i: Integer;
  DocsTab: TDocsTab;
begin
  for i:=0 to FDocsTabs.Count-1
  do
  begin
    DocsTab:=FDocsTabs[i];
    if DocsTab.MenuItem=DocsTabMenuItem
    then
    begin
      Result:=DocsTab;
      Break;
    end;
  end;
end;

function TDocsTabs.FindDocsTab(DocsTabName: String): TDocsTab;
var
  i: Integer;
  DocsTab: TDocsTab;
begin
  for i:=0 to FDocsTabs.Count-1
  do
  begin
    DocsTab:=FDocsTabs[i];
    if DocsTab.Name=DocsTabName
    then
    begin
      Result:=DocsTab;
      Break;
    end;
  end;
end;

function TDocsTabs.GetDocsTab(Index: Integer): TDocsTab;
begin
  Result:=FDocsTabs[Index];
end;

function TDocsTabs.IndexOf(DocsTabName: String): Integer;
var
  i: Integer;
  DocsTab: TDocsTab;
begin
  for i:=0 to FDocsTabs.Count-1
  do
  begin
    DocsTab:=FDocsTabs[i];
    if DocsTab.Name=DocsTabName
    then
    begin
      Result:=i;
      Break;
    end;
  end;
end;

function TDocsTabs.IndexOf(DocsTabMenuItem: TMenuItem): Integer;
var
  i: Integer;
  DocsTab: TDocsTab;
begin
  for i:=0 to FDocsTabs.Count-1
  do
  begin
    DocsTab:=FDocsTabs[i];
    if DocsTab.MenuItem=DocsTabMenuItem
    then
    begin
      Result:=i;
      Break;
    end;
  end;
end;

procedure TDocsTabs.SetDocsTab(Index: Integer; const Value: TDocsTab);
begin
  FDocsTabs[Index]:=Value;
end;

end.
