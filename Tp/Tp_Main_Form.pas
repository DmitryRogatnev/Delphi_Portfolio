unit Tp_Main_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBVertGridsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.ComCtrls, Data.DB, OracleData, Oracle, ShellApi, DBLookupEh, Vcl.Buttons,
  MemTableDataEh, MemTableEh, DataDriverEh, System.ImageList, Vcl.ImgList,
  PrViewEh, Printers, DBGridEhImpExp, PrnDbgeh,StrUtils,
  Clipbrd, Winapi.UxTheme, Vcl.Themes,
  Tp_Approve_Doc_Form,
  Tp_Tech_Proc_Form,
  Tp_Doc_Comm_Form,
  Tp_Doc_Files_Form,
  Tp_Complect_Doc_Form,
  Tp_Detail_Docs_Connect_Form, Vcl.FileCtrl, CompoMansEh, System.Math,
  Vcl.WinXCtrls, ObjectInspectorEh;

type TDocInfoEditStates=(dsInsert, dsUpdate, dsNewModif, dsInternalSign);

type TPageFrame=class(TObject)
  private
     FViewFrame: TFrame;
     FDataFrame: TFrame;
     FParentPage: TTabSheet;
     FOwner: TComponent;
     FName: String;
  public
    constructor Create(AOwner: TComponent; ViewFrameClass: TClass; DocHeaderId: Integer=0; ObjectName: String = '');
    procedure Free;
    property ViewFrame: TFrame read FViewFrame;
    property DataFrame: TFrame read FDataFrame;
    property ParentPage: TTabSheet read FParentPage write FParentPage;
    property PageFrameName: String read FName;
end;

type
  TForm_Tech_Proc_Main = class(TForm)
    Main_M_Tech_Proc_Main: TMainMenu;
    Main_M_Tech_Proc_Main_Btn_Doc: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Exit: TMenuItem;
    Db_Main_Info: TOracleDataSet;
    Page_Control: TPageControl;
    Main_M_Tech_Proc_Main_Btn_Doc_Create: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Doc_Edit: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_See: TMenuItem;
    Tm_check: TTimer;
    D_Node: TOracleDataSet;
    D_NodeOBJECT_PACKAGE: TStringField;
    D_NodeOBJECT_NAME: TStringField;
    D_NodeOBJECT_SHORTCUT: TStringField;
    D_NodeOBJECT_SECOND_NAME: TStringField;
    D_NodeOBJECT_SOFTWARE: TStringField;
    D_NodeOBJECT_SOFTWARE_1: TStringField;
    D_NodeOBJECT_TYPE: TStringField;
    D_NodePATH_BACKUP: TStringField;
    D_NodePATH_DEVELOPER: TStringField;
    D_NodePATH_REPOSITORY: TStringField;
    D_NodePATH_SERVER: TStringField;
    D_NodePATH_USER: TStringField;
    D_NodePATH_EXECUTABLE_ADD: TStringField;
    D_NodeFILE_EXTENSION_EXECUTABLE: TStringField;
    D_NodeFILE_EXTENSION_SOURCE: TStringField;
    D_NodeCOLUMN_VALUE_SOURCE: TStringField;
    SimpleSQL: TOracleDataSet;
    Main_M_Tech_Proc_Main_Btn_Change_Role: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Files: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Com: TMenuItem;
    Db_Sogl_Info: TOracleDataSet;
    Main_M_Tech_Proc_Main_Btn_Doc_Edit_Info: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Doc_Edit_Tech_Proc: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_See_Main_Doc_Rep: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_See_Main_Doc_Export: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_See_Main_Doc_Export_Excel: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_See_Main_Doc_Export_PDF: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Info: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Programm_Info: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Programmer_Name: TMenuItem;
    Db_Programm_Info: TOracleDataSet;
    Db_Programm_InfoPROGRAMMER_NAME: TStringField;
    ImageList1: TImageList;
    N1: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Doc_Lst: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Doc_Lst_Print: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Doc_Lst_Export: TMenuItem;
    Main_M_Tech_Proc_Main_Btn_Spr: TMenuItem;
    Pkg_Tp_Doc: TOraclePackage;
    Main_M_Tech_Proc_Main_Btn_Doc_Create_New_Vers: TMenuItem;
    Tm_Update_Que: TTimer;
    Main_M_Tech_Proc_Main_Btn_Que: TMenuItem;
    Db_ReferBooks: TOracleDataSet;
    Db_ReferBooksPROGRAMMER_NAME: TStringField;
    Db_ReferBooksOBJECT_PACKAGE: TStringField;
    Db_ReferBooksOBJECT_NAME: TStringField;
    Db_ReferBooksOBJECT_SHORTCUT: TStringField;
    Db_ReferBooksOBJECT_SECOND_NAME: TStringField;
    Db_Sogl_InfoDOC_ROUT_ID: TIntegerField;
    Db_Main_InfoID: TFloatField;
    Db_Main_InfoID_VERS: TIntegerField;
    Db_Main_InfoID_DOC_FULL: TStringField;
    Db_Main_InfoDOC_NUM: TStringField;
    Db_Main_InfoMAIN_DOC_ID: TFloatField;
    Db_Main_InfoMAIN_DOC_NUM: TStringField;
    Db_Main_InfoCANCEL_DOC_ID: TFloatField;
    Db_Main_InfoCANCEL_DOC_NUM: TStringField;
    Db_Main_InfoCANCEL_FLAG: TFloatField;
    Db_Main_InfoCANCEL_FLAG_NAME: TStringField;
    Db_Main_InfoDET_ID: TFloatField;
    Db_Main_InfoDET_NUM_NAME: TStringField;
    Db_Main_InfoCEH_ID: TFloatField;
    Db_Main_InfoCEH_CODE: TStringField;
    Db_Main_InfoPROJECT_FLAG: TIntegerField;
    Db_Main_InfoDOC_HEADER_ID: TFloatField;
    Db_Main_InfoAUTHOR_LNUM: TIntegerField;
    Db_Main_InfoAUTHOR_NAME: TStringField;
    Db_Main_InfoDATA_REG: TDateTimeField;
    Db_Main_InfoREASON: TStringField;
    Db_Main_InfoCEH_DOCS_FLAG: TFloatField;
    Db_Main_InfoDET_MAR: TStringField;
    Db_Main_InfoDOC_TYPE: TFloatField;
    Db_Main_InfoDOC_TYPE_NAME: TStringField;
    Db_Main_InfoDOC_LITER: TStringField;
    Db_Main_InfoTP_NUM: TStringField;
    Db_Main_InfoTP_NAME: TStringField;
    Db_Main_InfoTP_WORK_TYPE: TFloatField;
    Db_Main_InfoFLAG_IMP: TFloatField;
    Db_Main_InfoFLAG_IMP_NAME: TStringField;
    Db_Main_InfoTP_WORK_TYPE_NAME: TStringField;
    Db_Main_InfoIZD_NAME_TYPE: TStringField;
    Db_Main_InfoIZD_ID: TFloatField;
    Db_Main_InfoACT_NUM: TFloatField;
    Db_Main_InfoACT_DATE: TDateTimeField;
    Main_M_Tech_Proc_Main_Btn_TypesConfig: TMenuItem;
    procedure Main_M_Tech_Proc_Main_Btn_ExitClick(Sender: TObject);
    procedure Tm_checkTimer(Sender: TObject);
    procedure Main_M_Tech_Proc_Main_Btn_Change_RoleClick(Sender: TObject);
    procedure Grid_MainGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem_Btn_Doc_SeeClick(Sender: TObject);
    procedure Main_M_Tech_Proc_Main_Btn_Programm_InfoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Btn_Main_Refresh_InfoClick(Sender: TObject);
    procedure Page_ControlDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure VGrid_Main_FilterGetCellParams(Sender: TObject; Row: TFieldRowEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Page_ControlMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Page_ControlMouseLeave(Sender: TObject);
    procedure Page_ControlMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Page_ControlMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Main_M_Tech_Proc_Main_Btn_SprClick(Sender: TObject);
    procedure Page_ControlChange(Sender: TObject);
    procedure Main_M_Tech_Proc_Main_Btn_Doc_CreateClick(Sender: TObject);
    procedure Main_M_Tech_Proc_Main_Btn_Doc_Edit_Tech_ProcClick(
      Sender: TObject);
    procedure Main_M_Tech_Proc_Main_Btn_Doc_Edit_InfoClick(Sender: TObject);
    procedure Main_M_Tech_Proc_Main_Btn_Doc_Create_New_VersClick(
      Sender: TObject);
    procedure Main_M_Tech_Proc_Main_Btn_Doc_Lst_PrintClick(Sender: TObject);
    procedure Main_M_Tech_Proc_Main_Btn_Doc_Lst_ExportClick(Sender: TObject);
    procedure Main_M_Tech_Proc_Main_Btn_FilesClick(Sender: TObject);
    procedure Main_M_Tech_Proc_Main_Btn_ComClick(Sender: TObject);
    procedure Tm_Update_QueTimer(Sender: TObject);
    procedure Db_Sogl_InfoAfterRefresh(DataSet: TDataSet);
    procedure Main_M_Tech_Proc_Main_Btn_QueClick(Sender: TObject);
    procedure Main_M_Tech_Proc_Main_Btn_TypesConfigClick(Sender: TObject);
  private
    { Private declarations }
    FOpenFrames: TStringList;
  public
    { Public declarations }
    FCloseButtonsRect: array of TRect;
    FCloseButtonMouseDownIndex: Integer;
    FCloseButtonShowPushed: Boolean;
    /// <summary> Array Of String <br/> Массив ID открытых контрагентов </summary>
    Vg_Id_Deps: array of String;
    /// <summary> Array Of TForm <br/> Массив открытых Форм техпроцессов </summary>
    //Arr_OpenFrames: array of TFrame;
    /// <summary> Array Of TForm <br/> Массив датасетов для открытых Форм техпроцессов </summary>
    //Arr_FrameDataTechProcess: array of TFrame;

    Mem_Opers_RecordsList: TRecordsListEh;
    Mem_Oper_Per_RecordsList: TRecordsListEh;
    Mem_Per_Det_RecordsList: TRecordsListEh;
    Mem_Per_Mat_RecordsList: TRecordsListEh;
    Mem_Per_Osn_RecordsList: TRecordsListEh;
    Mem_Per_Ins_RecordsList: TRecordsListEh;
    User_lnum :integer;
    User_id :integer;
    User_Otdel_Id :integer;
    User_Dep_Id: Integer;
    User_Depatrment_Id: Integer;
    User_Otdel_Kod :string;
    User_Admin :bool;
    User_Edit :bool;
    User_Emp_Id: String;

    Type User = Record
     User_lnum :integer;
     User_id :integer;
     User_Otdel_Id :integer;
     User_Otdel_Kod :string;
     User_Name :String;
     User_Prof :String;
     User_VidRab :Integer;
    End;

    /// <summary> Запуск доп. программ</summary>
    ///  <param name="Programm_Id"> Integer; <br/> Id программы </param>
    ///  <param name="Param"> Integer; <br/> Входные параметры </param>
    procedure Open_Local_Programm (Programm_Id :integer; Param :string);

    /// <summary> Определение утвержден ли документ или нет </summary>
    ///  <param name="v_Doc_Id"> Integer; <br/> Id документа  </param>
    ///  <returns> Bool; <br/> </returns>
    Function Is_Doc_Approved (In_Doc_Header_Id: String): Bool;
    Procedure P_Open_Doc_Info ( DocHeaderId: Integer;
                           DocViewState: TDocInfoEditStates );

    Procedure P_Report_Tech_Process ( v_In_Params: TDynVarsEh;
                                      Grid_Sender: TDBGridEh );

    /// <summary> Удаление строк в DbGridEh </summary>
    /// <param name="DBGridEh"> TDBGridEh; </param>
    Procedure P_DeleteFromDBGridEh(DBGridEh: TDBGridEh);

    Procedure P_Approve_Doc( DBGridEh: TDBGridEh; InDocHeaderId: Integer=0);

    Procedure P_Return_Doc ( v_In_Params: TDynVarsEh;
                             Grid_Sender: TDBGridEh );

    Function F_Gen_SQL_Text_For_Chs_Form( v_In_Params: TDynVarsEh ): TDynVarsEh;

    Function F_Gen_Chose_Form ( v_In_Params: TDynVarsEh ): TDynVarsEh;

    Procedure P_Copy_In_DataSet_From_Buffer( v_In_DataSet: TDataSet );
    procedure P_Open_Doc(Grid_Sender: TDBGridEh = Nil);
    procedure P_OpenListDocTab(TabFlagName: String);
    procedure P_CloseTab(TabIndex: Integer);
    function  FindOpenedFrame(FrameName: String): TPageFrame overload;
    function  FindOpenedFrame(ControlPage: TTabSheet): TPageFrame overload;
    function  FindFramePage(FrameName: String): TTabSheet;
    function  IndexOfOpenedFrame(FrameName: String): Integer overload;
    function  IndexOfOpenedFrame(PageFrame: TPageFrame): Integer overload;
    function  IndexOfOpenedFrame(ControlPage: TTabSheet): Integer overload;
    function  AddOpenedFrame(AOwner: TComponent; ViewFrameClass: TClass; DocHeaderId: Integer=0; ObjectName: String=''): TPageFrame;
    procedure DeleteOpenedFrame(PageFrame: TPageFrame) overload;
    procedure DeleteOpenedFrame(ControlPage: TTabSheet) overload;
    procedure DeleteOpenedFrame(FrameName: String) overload;
  end;

var
  Form_Tech_Proc_Main: TForm_Tech_Proc_Main;
  Programm_Name: String = 'Журнал технологических процессов';
  Vg_Doc_Type: String = 'TECH_PROC';
  Programm_Id: Integer = 8784;
  v_Techn_Process: Integer = 1;
  v_VTP: Integer = 4;
  v_Complect: Integer = 5;
  /// <summary> Array Of String <br/> Массив фильтров (FieldName, Grids) </summary>
  Arr_CustomFilters: Array of Array of String = [
                                            ['ROLLBACK', 'Отказы', 'custom', 'DOC_NUM /*Filter Start*/ /*Filter End*/'],
                                            ['APPR_IN', 'На согласовании', 'custom', 'Doc_Header_Id In (Select t.Doc_Rout_Id '
                                                      + ' From   Src.v_Doc_Rout_Points t '
                                                      + ' Left   Join Src.V_Doc_Routs r '
                                                      + ' On     r.Doc_Header_Id = t.Doc_Rout_Id '
                                                      + ' Join (Select p.Id_Doc_Rout_Point, '
                                                      + '	(Case '
                                                      + '	When Min(Case '
                                                      + '					When cp.Result_Date Is Null '
                                                      +	'						Then to_Date(''01.01.0001'') '
                                                      +	'						Else cp.Result_Date '
                                                      +	'					End) = to_Date(''01.01.0001'') '
                                                      +	'	Then Null '
                                                      +	' Else Min(cp.Result_Date) '
                                                      +	'	End) Date_In '
                                                      + ' From   Src.v_Doc_Rout_Points p '
                                                      +	' Left   Join Src.v_Doc_Rout_Point_Cnnctns c '
                                                      +	' On     c.C_DOC_ROUT_POINT_ID = p.Id_Doc_Rout_Point '
                                                      +	' Left   Join Src.v_Doc_Rout_Points cp '
                                                      +	' On     cp.Id_Doc_Rout_Point = c.P_DOC_ROUT_POINT_ID '
                                                      +	' And cp.Stp_Doc_Resolution_Result_Id Not In (0, -1) '
                                                      +	' Group  By p.Id_Doc_Rout_Point) s '
                                                      + ' On  s.Id_Doc_Rout_Point = t.Id_Doc_Rout_Point '
                                                      + ' And (Case '
                                                      + ' When s.Date_In Is Not Null '
                                                      + ' And t.Result_Date Is Null '
                                                      + ' Then 1 '
                                                      + ' When Instr(t.Point_Position, ''1.'') <> 0 '
                                                      + ' And r.Date_Start_Route Is Not Null '
                                                      + ' And t.Result_Date Is Null '
                                                      + ' Then 1 '
                                                      + ' Else 0 '
                                                      + ' End) = 1 '
                                                      + ' Left   Join (Select Distinct ps.Doc_Rout_Point_Id, dep.dep_Code, dep.Dep_Sname '
                                                      + ' From   Src.v_Doc_Rout_Point_Pstns ps '
                                                      +	' Left   Join Src.v_Doc_Rout_Point_Pstn_Ds psd '
                                                      +	' On     psd.Doc_Rout_Point_Pstn_Id = ps.Id_Doc_Rout_Point_Pstn '
                                                      +	' Left   Join Stp.v_Dep_Mmbr_Pstns dps '
                                                      +	' On     dps.Id_dep_Mmbr_Pstn = ps.Dep_Mmbr_Pstn_Id '
                                                      +	' Left   Join Stp.v_Deps dep '
                                                      +	' On     dep.id_dep = Psd.Dep_Id '
                                                      +	'  			And Nvl(dep.Date_Effective, Sysdate) >= Sysdate) ps '
                                                      + ' On     ps.Doc_Rout_Point_Id = t.Id_Doc_Rout_Point '
                                                      + 'Where Upper(t.Point_Name||'' (''||ps.Dep_SName||'')'') '
                                                      + ' /*Filter Start*/ /*Filter End*/)']
                                          ];

implementation

{$R *.dfm}

Uses
Udm_Main,
Gen_Chs_Dd_Form,
Tp_Data_Mode,
Gen_Chs_Data_Mod,
Tp_Data_Changes,
Loading_Form,
Filter_DropDown,
Tp_TechProc_Frame,
Tp_Doc_Info_Form,
Tp_TechProc_DataFrame,
Tp_TechProc_DocDetListFrame,
Tp_TechProc_DocDetListDataFrame,
Tp_TechProc_ListFrame,
Tp_TechProc_ComplectFrame,
Dc_Aprvl_Lst_Main_Form,
Tp_TechProc_DocTypesConfigForm;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_ExitClick(Sender: TObject);
begin
  Form_Tech_Proc_Main.Close;
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_FilesClick(
  Sender: TObject);
Var
  InfoDataSet: TDataSet;
  ActivePageFrame: TPageFrame;
begin
  ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);
  if ActivePageFrame<>Nil
  then
  begin
    if ActivePageFrame.ViewFrame is TFrame_TechProc_List
    then
      with ActivePageFrame.ViewFrame as TFrame_TechProc_List
      do
        InfoDataSet := Db_Info
    else if ActivePageFrame.ViewFrame is TFrame_TechProc
    then
      with ActivePageFrame.DataFrame as TFrameData_TechProc
      do
        InfoDataSet := Db_Doc_Info
    else if ActivePageFrame.ViewFrame is TFrame_Tp_TechProc_DocDetList
    then
      with ActivePageFrame.DataFrame as TFrame_Tp_TechProc_DocDetListData
      do
        InfoDataSet := Db_Doc_Info;

    with TForm_Doc_Files.Create(Self, InfoDataSet.FieldByName('Doc_Header_Id').AsInteger)
    do
    begin
      try
        ShowModal;
      finally
        Free;
      end;
    end;
  end;
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_SprClick(Sender: TObject);
var
  v_In_Params,
  v_Out_Doc_Params: TDynVarsEh;
  Object_Name: Variant;
  Spr_MenuItem: TMenuItem;
  ActivePageFrame: TPageFrame;
begin
  ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);
  if ActivePageFrame<>Nil
  then
  begin
    Spr_MenuItem := Sender as TMenuItem;
    Object_Name := Db_ReferBooks.Lookup('Object_Second_Name', Spr_MenuItem.Caption, 'Object_Name');
    if Object_Name = 'Spravochnik_Of_Details'
    then
    begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      if ActivePageFrame.ViewFrame is TFrame_TechProc_List
      then
        v_In_Params.DynVar[ 'Id_Det' ].AsInteger :=  (ActivePageFrame.ViewFrame as TFrame_TechProc_List).Db_Info.FieldByName('DET_ID').AsInteger
      else if ActivePageFrame.ViewFrame is TFrame_TechProc
      then
        v_In_Params.DynVar[ 'Id_Det' ].AsInteger :=  (ActivePageFrame.DataFrame as TFrameData_TechProc).Db_Doc_Info.FieldByName('DET_ID').AsInteger;
    end;
    DM_Main.P_Show_Form( Object_Name, v_In_Params );
  end;
end;

procedure TForm_Tech_Proc_Main.MenuItem_Btn_Doc_SeeClick(Sender: TObject);
  var
  V_In_Params: TDynVarsEh;
  V_Focused_Grid: TDBGridEh;
begin
  If Sender.ClassType = TMenuItem
  Then
  Begin
    v_In_Params := TDynVarsEh.Create( Application.MainForm );

    If ( Pos('See_Main_Doc', TMenuItem( Sender ).Name ) <> 0 )
    Then
      v_In_Params.DynVar[ 'Format' ].AsString := 'Main_Document'
    Else if ( Pos('See_Doc', TMenuItem( Sender ).Name ) <> 0 )
             And ( Pos('See_Doc_By_Ceh', TMenuItem( Sender ).Name ) = 0 )
    Then
      v_In_Params.DynVar[ 'Format' ].AsString := 'Document'
    Else if ( Pos('See_Doc_By_Ceh', TMenuItem( Sender ).Name ) <> 0 )
    Then
      v_In_Params.DynVar[ 'Format' ].AsString := 'Document_For_Ceh';

    If ( Pos('_Rep', TMenuItem( Sender ).Name ) <> 0 )
        And ( Pos('_Rep_W_Files', TMenuItem( Sender ).Name ) = 0 )
    Then
      v_In_Params.DynVar[ 'Action' ].AsString := 'Show'
    Else if ( Pos('_Export_Excel', TMenuItem( Sender ).Name ) <> 0 )
    Then
      v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Excel'
    Else if ( Pos('_Export_PDF', TMenuItem( Sender ).Name ) <> 0 )
    Then
      v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Pdf'
    Else if ( Pos('_Rep_W_Files', TMenuItem( Sender ).Name ) <> 0 )
    Then
      v_In_Params.DynVar[ 'Action' ].AsString := 'Show_All_In_Pdf';

    P_Report_Tech_Process( V_In_Params, V_Focused_Grid );
  End;
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_TypesConfigClick(Sender: TObject);
begin
  with TForm_Doc_TypesConfig.Create(Self)
  do
  begin
    try
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_Change_RoleClick(Sender: TObject);
  var buttonSelected :integer;
  begin
   //Если не админ (кнопка смены роли показывется если у пользователя есть доступ к роли админа
   //и он залогинился с определенного компьютера)
   //Если админ
   if User_Admin then
   Begin
    //То выходим из роли админа
    buttonSelected := MessageDlg ('Выйти из роли Администратора?', mtConfirmation, mbOkCancel, 5);
    if buttonSelected = mrOk then
    Begin
     //Сбрасываем флаг админа
     User_Admin := False;
     //Убираем из заголовка отметку о том, что пользователь залогинен под ролью админа
     Form_Tech_Proc_Main.Caption :=  Programm_Name + '. Пользователь: '
                                     + UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[])
                                     + ' ,' +  UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_Prof()',[]);
    End;
   End
   //Если не админ
   Else if not User_Admin then
   Begin
    //Входим в роль админа
    buttonSelected := MessageDlg ('Зайти под ролью Администратора?', mtConfirmation, mbOkCancel, 5);
    if buttonSelected = mrOk then
    Begin
     //С проверкой пароля админа
     User_Admin := True;
     //Устанавливаем отметку админа
     Form_Tech_Proc_Main.Caption :=  Programm_Name + ' (АДМИНИСТРАТОР). Пользователь: '
                                     + UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[])
                                     + ' ,' +  UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_Prof()',[]);
    End;
   End;
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_ComClick(
  Sender: TObject);
Var
  In_Doc_Id_Indx: Integer;
  InfoDataSet: TDataSet;
  ActivePageFrame: TPageFrame;
begin
  ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);
  if ActivePageFrame<>Nil
  then
  begin
    if ActivePageFrame.ViewFrame is TFrame_TechProc_List
    then
      with ActivePageFrame.ViewFrame as TFrame_TechProc_List
      do
        InfoDataSet := Db_Info
    else if ActivePageFrame.ViewFrame is TFrame_TechProc
    then
      with ActivePageFrame.DataFrame as TFrameData_TechProc
      do
        InfoDataSet := Db_Doc_Info
    else if ActivePageFrame.ViewFrame is TFrame_Tp_TechProc_DocDetList
    then
      with ActivePageFrame.DataFrame as TFrame_Tp_TechProc_DocDetListData
      do
        InfoDataSet := Db_Doc_Info;

    with TForm_Doc_Comments.Create(Self, InfoDataSet.FieldByName('Doc_Header_Id').AsInteger)
    do
    begin
      try
        ShowModal;
      finally
        Free;
      end;
    end;
  end;
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_Doc_CreateClick(
  Sender: TObject);
begin
  P_Open_Doc_Info(0, dsInsert);
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_Doc_Create_New_VersClick(
  Sender: TObject);
var
  ActivePageFrame: TPageFrame;
  InfoDataSet: TDataSet;
begin
  ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);
  if ActivePageFrame<>Nil
  then
  begin
    if ActivePageFrame.ViewFrame is TFrame_TechProc_List
    then
      with ActivePageFrame.ViewFrame as TFrame_TechProc_List
      do
        InfoDataSet := Db_Info
    else if ActivePageFrame.ViewFrame is TFrame_TechProc
    then
      with ActivePageFrame.DataFrame as TFrameData_TechProc
      do
        InfoDataSet := Db_Doc_Info
    else if ActivePageFrame.ViewFrame is TFrame_Tp_TechProc_DocDetList
    then
      with ActivePageFrame.DataFrame as TFrame_Tp_TechProc_DocDetListData
      do
        InfoDataSet := Db_Doc_Info;

    P_Open_Doc_Info(InfoDataSet.FieldByName('Doc_Header_Id').AsInteger, dsNewModif);
  end;
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_Doc_Edit_InfoClick(
  Sender: TObject);
var
  ActivePageFrame: TPageFrame;
  InfoDataSet: TDataSet;
begin
  ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);
  if ActivePageFrame<>Nil
  then
  begin
    if ActivePageFrame.ViewFrame is TFrame_TechProc_List
    then
      with ActivePageFrame.ViewFrame as TFrame_TechProc_List
      do
        InfoDataSet := Db_Info
    else if ActivePageFrame.ViewFrame is TFrame_TechProc
    then
      with ActivePageFrame.DataFrame as TFrameData_TechProc
      do
        InfoDataSet := Db_Doc_Info
    else if ActivePageFrame.ViewFrame is TFrame_Tp_TechProc_DocDetList
    then
      with ActivePageFrame.DataFrame as TFrame_Tp_TechProc_DocDetListData
      do
        InfoDataSet := Db_Doc_Info;

    P_Open_Doc_Info(InfoDataSet.FieldByName('Doc_Header_Id').AsInteger, dsUpdate);
  end;
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_Doc_Edit_Tech_ProcClick(
  Sender: TObject);
  var
    ActivePageFrame: TPageFrame;
begin
  ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);
  if ActivePageFrame<>Nil
  then
  begin
    if ActivePageFrame.ViewFrame is TFrame_TechProc_List
    then
      with (ActivePageFrame.ViewFrame as TFrame_TechProc_List)
      do
        P_Open_Doc(Grid_Docs_List);
  end;
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_Doc_Lst_ExportClick(
  Sender: TObject);
  var
    ActivePageFrame: TPageFrame;
begin
  ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);
  if ActivePageFrame<>Nil
  then
  begin
    if ActivePageFrame.ViewFrame  is TFrame_TechProc_List
    then
      with (ActivePageFrame.ViewFrame  as TFrame_TechProc_List)
      do
       Pop_M_Main_Btn_Doc_Lst_ExportClick(Nil);
  end;
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_Doc_Lst_PrintClick(
  Sender: TObject);
  var
    ActivePageFrame: TPageFrame;
begin
  ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);
  if ActivePageFrame<>Nil
  then
  begin
    if ActivePageFrame.ViewFrame  is TFrame_TechProc_List
    then
      with (ActivePageFrame.ViewFrame  as TFrame_TechProc_List)
      do
        Pop_M_Main_Btn_Doc_Lst_PrntClick(Nil);
  end;
end;

procedure TForm_Tech_Proc_Main.Tm_checkTimer(Sender: TObject);
var
buttonSelected :Integer;
  V_In_Params,
  V_Out_User_Params,
  V_Out_Doc_Params: TDynVarsEh;
  i: Integer;
  NewFilter_Name: String;
  NewMenuItem: TMenuItem;
  Filter: TDropDown_Filter;

begin
  If DM_Main.Vg_Booted = True
  Then
  begin
    Tm_check.Enabled := False; //Останавливаем таймер запуска
    Form_Tech_Proc_Main.AlphaBlendValue := 255;
    //Form_Tech_Proc_Main.Visible := False;
    //Form_Tech_Proc_Main.ShowModal;
//    DM_Main.Vg_Dll_Params := TDynVarsEh.Create(Application.MainForm);
//    DM_Main.Vg_Dll_Params.DynVar[ 'Id_Doc_Header' ].AsString := '3436';
    //Form_Tech_Proc_Main.WindowState := wsMaximized;

    {************************************ Определяем пользователя ************************************}
    User_Lnum := StrToInt(UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_Emp_Id()',[])); //Личный номер
    User_Emp_Id := UDM_MAIN.DM_Main.Session.LogonUsername;
    Main_M_Tech_Proc_Main_Btn_Change_Role.Visible := False; //Кнопка "Сменить роль" видна только админу
    V_In_Params := TDynVarsEh.Create( Self );
    V_In_Params.DynVar[ 'Find' ].AsString := 'USERS';
    V_In_Params.DynVar[ 'Filter' ].AsString := ' Id_User = ''' + AnsiUpperCase(User_Emp_Id) + ''' ';
    v_Out_User_Params := F_Gen_Chose_Form( V_In_Params );
    If Not v_Out_User_Params.DynVar[ 'EMP_ID' ].IsNull
    Then
    Begin
      User_Otdel_Kod := v_Out_User_Params.DynVar[ 'DEP_CODE' ].AsString; // Код отдела
      User_Otdel_Id := v_Out_User_Params.DynVar[ 'CEH_ID' ].AsInteger; //ID отдела
    End;
     {*************************************************************************************************}



    {$Region 'Открываем датасеты'}
    Form_Loading.P_Start_Loading(8784,Application.MainForm, TOracleDataSet, 'Active', 'True');
    If (fsModal In Self.FormState)
        And (DM_Main.Vg_Dll_Params <> Nil)
    Then
    Begin
      //Form_Tech_Proc_Main.AlphaBlend := True;
      //Form_Tech_Proc_Main.AlphaBlendValue := 0;
      Db_Main_Info.Close;
      Db_Main_Info.SetVariable('In_Doc_Header_Id', DM_Main.Vg_Dll_Params.DynVar['Id_Doc_Header'].AsString);
      Db_Main_Info.Open;

      If DM_Main.Vg_Dll_Params.DynVar[ 'REPORT' ].AsBoolean
      Then
      begin
        v_In_Params := TDynVarsEh.Create( Application );
        v_In_Params.DynVar[ 'Doc_Header_Id' ].AsString := DM_Main.Vg_Dll_Params.DynVar['Id_Doc_Header'].AsString;
        v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
        v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
        P_Report_Tech_Process( v_In_Params, Nil );
        Close;
      end
      else
        P_Open_Doc(Nil);
    End
    else
    begin
      P_OpenListDocTab('_Main_');
      Db_Sogl_Info.Close;
      Db_Sogl_Info.Open;
      Tm_Update_Que.Enabled := True;

      if Db_Sogl_Info.RecordCount > 0
      then
      begin
        P_OpenListDocTab('_Appr_');
      end;

       If (Not User_Admin)
            And (PKG_TP_DOC.CallIntegerFunction('F_Find_User_In_Dep_Mmbr', [Udm_Main.DM_Main.Session.LogonUsername, 201]) = 1)
       Then
       Begin
         with FindOpenedFrame('_Main_').ViewFrame as TFrame_TechProc_List
         do
         begin
           with VGrid_Filter.FindFieldRow('AUTHOR_NAME')
           do
           begin
             with EditButtons[0].DropDownFormParams.DropDownForm as TDropDown_Filter
             do
             begin
               Arr_AllGlobalFilterExpression[0].FilterOperator := fltopEqual;
               ExpressionType := fltoptString;
               Arr_AllGlobalFilterExpression[0].FilterValue := Udm_Main.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[]);
               CheckedItems.Add(Udm_Main.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[]));
               VGrid_Filter.DataSource.DataSet.Edit;
               VGrid_Filter.DataSource.DataSet.FieldByName('AUTHOR_NAME').AsString := F_PackageFilterExpression(Arr_AllGlobalFilterExpression);
               VGrid_Filter.DataSource.DataSet.Post;
             end;
           end;
           VGridFilterApplyFilter(VGrid_Filter);
         end;
       End;
    end;
    Db_Programm_Info.Close;
    Db_Programm_Info.Open;

    {$Region 'Добавление справочников'}
    Db_ReferBooks.Active := True;
    Db_ReferBooks.First;
    for i := 1 to Db_ReferBooks.RecordCount
    do
    begin
      with Main_M_Tech_Proc_Main do
      begin
        NewMenuItem := TMenuItem.Create(Application);
        NewMenuItem.Caption := Db_ReferBooks.FieldByName('Object_Second_Name').AsString;
        NewMenuItem.OnClick := Main_M_Tech_Proc_Main_Btn_SprClick;
        Main_M_Tech_Proc_Main.Items[1].Add(NewMenuItem);
        Db_ReferBooks.Next;
      end;
    end;
    {$EndRegion 'Добавление справочников'}

    Main_M_Tech_Proc_Main_Btn_Programmer_Name.Caption := Db_Programm_InfoPROGRAMMER_NAME.AsString;
    {$EndRegion 'Открываем датасеты'}
    Form_Loading.P_Stop_Loading;
    if Udm_Main.DM_Main.F_Oracle( 'stp.pkg_user.F_Check_Task_Acc(''TECH_PROC'')', [ ] ) = '1'
     then
       User_Edit := True
     else
       User_Edit := False;

    if Not Form_Tech_Proc_Main.User_Edit
    then
    begin
      Main_M_Tech_Proc_Main_Btn_Doc_Create.Enabled := False;
      Main_M_Tech_Proc_Main_Btn_Doc_Edit_Info.Enabled := False;
      Main_M_Tech_Proc_Main_Btn_Doc_Create_New_Vers.Enabled := False;
    end
    else
    begin
      Main_M_Tech_Proc_Main_Btn_Doc_Create.Enabled := True;
      Main_M_Tech_Proc_Main_Btn_Doc_Edit_Info.Enabled := True;
      Main_M_Tech_Proc_Main_Btn_Doc_Create_New_Vers.Enabled := True;
    end;
      //Определение админ пользователь или нет
      if Udm_Main.DM_Main.F_Oracle( 'Stp.Pkg_User.F_Check_Program_Param'
                                             + '( In_Object_Id => :In_Object_Id, '
                                             + ' In_Parametr => :In_Parametr,'
                                             + ' In_Value => :In_Value )',
                                             [ 8784,
                                               'ADMIN',
                                               '1' ] ) = '1'
      Then
      Begin
        Main_M_Tech_Proc_Main_Btn_Change_Role.Visible := True; //Показываем кнопку "Сменить роль"
        buttonSelected := MessageDlg ('Зайти под ролью Администратора?', mtConfirmation, mbOkCancel, 5);
        //Проверяем пароль админа
        if buttonSelected = mrOk then User_Admin := True;
      End
      Else
      begin
        User_Admin := False;
        //MessageDlg('Программа на доработке! Работа приостановлена!', mtWarning, [mbOK], 5);
        //Close;
      end;
      //Установка названия формы. Формат: Технологические процессы. Пользователь: + <имя пользователя>, <должность пользователя>
      Form_Tech_Proc_Main.Caption := Programm_Name
                                     + '. Пользователь ('
                                     + Udm_Main.DM_Main.Session.LogonUsername +'): '
                                     + UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[])
                                     + ' ,' +  UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_Prof()',[]);
      if User_Admin then
      Begin
        Form_Tech_Proc_Main.Caption :=  Programm_Name + ' (АДМИНИСТРАТОР). Пользователь: '
                                        + UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[])
                                        + ' ,' +  UDM_MAIN.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_Prof()',[]);
        Main_M_Tech_Proc_Main_Btn_TypesConfig.Visible := True;
      End;
      DM_Main.p_Exec_Object(12741);
  end
  Else
  begin
    Exit;
  end;
end;

procedure TForm_Tech_Proc_Main.Tm_Update_QueTimer(Sender: TObject);
begin
  if Db_Sogl_Info.Active
  then
    Db_Sogl_Info.Refresh;
end;

procedure TForm_Tech_Proc_Main.VGrid_Main_FilterGetCellParams(Sender: TObject;
  Row: TFieldRowEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with (Sender as TDBVertGridEh).DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      if FieldByName(Row.FieldName).IsNull
      then
        Background := clWindow
      else
        Background := $0000D7FF;
    end;
  end;

end;

{$Region 'Вспомогательные функции'}
 //Открытие другой программы
 procedure TForm_Tech_Proc_Main.Open_Local_Programm (Programm_Id :integer; Param :string);
  var
    Vl_Local_Path_Exe, Vl_Server_Path_Exe: String;
    Vl_Local_Path_Dir, Vl_Server_Path_Dir: String;
    Vl_Object_Name: String;
    Vl_Result: Boolean;
    Vl_Command: String;
    Vl_Extention: String;
    Vl_Idx0, Vl_Idx: Integer;
    Vl_CF: TSHFileOpStruct;
  begin
    D_Node.SetVariable( 'Object_Id', Programm_Id );
    D_Node.Refresh;
    {$Region ' Ищем инфу в базе, получаем пути '}
          If ( D_NodePATH_EXECUTABLE_ADD.AsString <> '' )
             or ( D_NodeCOLUMN_VALUE_SOURCE.AsString = 'SelectDirectory' )
          Then
            {$Region 'Каталог'}
              Begin
                Vl_Object_Name := D_NodeOBJECT_NAME.AsString;
                Vl_Local_Path_Dir := D_NodePath_User.AsString
                                     + Vl_Object_Name;
                Vl_Local_Path_Exe := Vl_Local_Path_Dir
                                     + '\'
                                     + Vl_Object_Name
                                     + D_NodeFile_Extension_Executable.AsString;
                Vl_Server_Path_Dir := D_NodePath_Server.AsString
                                      + Vl_Object_Name;
                Vl_Server_Path_Exe := Vl_Server_Path_Dir
                                      + '\'
                                      + Vl_Object_Name
                                      + D_NodeFile_Extension_Executable.AsString;
              End
            {$EndRegion 'Каталог'}
          Else
            {$Region 'Файл'}
              Begin
                Vl_Object_Name := D_NodeOBJECT_NAME.AsString;
                Vl_Idx0 := 0;
                For Vl_Idx := 0 to length( D_NodeFILE_EXTENSION_EXECUTABLE.AsString )
                Do
                Begin
                  If ( D_NodeFILE_EXTENSION_EXECUTABLE.AsString[ Vl_Idx ] = '|' ) Then
                  Begin
                    If FileExists( D_NodePath_Server.AsString
                     		           + '\'
                                   + Vl_Object_Name
                                   + Copy( D_NodeFILE_EXTENSION_EXECUTABLE.AsString, Vl_Idx0, Vl_Idx - 1 ) ) = True
                    Then
                    Begin
                      Vl_Extention:= Copy( D_NodeFILE_EXTENSION_EXECUTABLE.AsString, Vl_Idx0, Vl_Idx - 1 );
                      Break;
                    End;
                    Vl_Idx0 := Vl_Idx + 1;
                  End;
                  If ( Vl_Idx = length( D_NodeFILE_EXTENSION_EXECUTABLE.AsString ) ) Then
                  Begin
                    If FileExists( D_NodePath_Server.AsString
                     		           + '\'
                                   + Vl_Object_Name
                                   + Copy( D_NodeFILE_EXTENSION_EXECUTABLE.AsString, Vl_Idx0, Vl_Idx ) ) = True
                    Then
                      Vl_Extention:= Copy( D_NodeFILE_EXTENSION_EXECUTABLE.AsString, Vl_Idx0, Vl_Idx );
                  End;
                End;
                Vl_Local_Path_Dir := D_NodePath_User.AsString;
                Vl_Local_Path_Exe := D_NodePath_User.AsString
                                     + Vl_Object_Name
                                     + Vl_Extention;
                Vl_Server_Path_Dir := D_NodePath_Server.AsString;
                Vl_Server_Path_Exe := Vl_Server_Path_Dir
                                      + Vl_Object_Name
                                      + Vl_Extention;
              End;
            {$EndRegion 'Файл'}
          If FileExists( Vl_Server_Path_Exe ) = false
          Then
          Begin
            MessageDlg( 'Не найдены файлы обновления!'  + #13#10 + 'Автоматическое обновление не возможно!', mtError, [ mbOK ], 0 );
            Exit;
          End;
        {$EndRegion ' Ищем инфу в базе, получаем пути '}
    {$Region ' Обновления, если надо '}
          If ( ( FileAge( Vl_Local_Path_Exe ) <> FileAge( Vl_Server_Path_Exe ) )
               Or ( DirectoryExists( Vl_Local_Path_Dir ) = False ) )
             And ( ( D_NodePATH_EXECUTABLE_ADD.AsString <> '' )
                    or ( D_NodeCOLUMN_VALUE_SOURCE.AsString = 'SelectDirectory' ) )
          Then
          Begin
            ForceDirectories( ExtractFilePath( Vl_Local_Path_Dir ) );
            With Vl_CF Do
            Begin
              wFunc := FO_COPY;
              fFlags := FOF_ALLOWUNDO + FOF_NOCONFIRMATION + FOF_MULTIDESTFILES;
              pFrom := PChar( Vl_Server_Path_Dir + #0 + #0 );
              pTo := PChar( Vl_Local_Path_Dir + #0 + #0 )
            End;
            Vl_Result := ( 0 = ShFileOperation( Vl_CF ) );
            If Vl_Result = false
            Then
            Begin
              MessageDlg('Ошибка загрузки!' + #13#10 + 'Автоматическое обновление не возможно!', mtError, [ mbOK ], 0);
              Exit;
            End;
          End;
          If ( ( FileAge( Vl_Local_Path_Exe ) <> FileAge( Vl_Server_Path_Exe ) )
               Or ( FileExists( Vl_Local_Path_Exe ) = False ) )
             And ( D_NodePATH_EXECUTABLE_ADD.AsString = '' )
             and ( D_NodeCOLUMN_VALUE_SOURCE.AsString <> 'SelectDirectory' )
          Then
          Begin
            If DirectoryExists( Vl_Local_Path_Dir ) = False
            Then
            Begin
              Vl_Result := CreateDirectory( PChar( Vl_Local_Path_Dir ), nil ) ;
              If Vl_Result = false Then
              Begin
                MessageDlg('Ошибка загрузки!' + #13#10 + 'Автоматическое обновление не возможно!', mtError, [ mbOK ], 0);
                Exit;
              End;
            End;
            Vl_Result := CopyFile( PChar(Vl_Server_Path_Exe), PChar(Vl_Local_Path_Exe), True);
            If Vl_Result = false Then
            Begin
              MessageDlg('Ошибка загрузки!' + #13#10 + 'Автоматическое обновление не возможно!', mtError, [ mbOK ], 0);
              Exit;
            End;
          End;
        {$EndRegion ' Обновления, если надо '}
    {$Region ' Запуск '}
          ShellExecute( Form_Tech_Proc_Main.Handle,
                        nil,
                        PWIDECHAR( Vl_Local_Path_Exe ),
                        PWIDECHAR( '<' + Trim( Dm_Main.Session.LogonUsername )
                                   + '/' + Trim( Dm_Main.Session.LogonPassword )
                                   + '@' + Dm_Main.Session.LogonDatabase + '>'
                                   + ' ' + Param ),
                        PWIDECHAR( Vl_Local_Path_Dir ),
                        SW_SHOWNORMAL );
        {$EndRegion ' Запуск '}
  End;

procedure TForm_Tech_Proc_Main.Page_ControlChange(Sender: TObject);
  var
    ActivePageFrame: TPageFrame;
begin
  ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);
  if ActivePageFrame<>Nil
  then
  begin
    if (ActivePageFrame.ViewFrame is TFrame_TechProc_List)
    then
    begin
      with (ActivePageFrame.ViewFrame as TFrame_TechProc_List)
      do
      begin
        Grid_Docs_List.SaveBookmark;
        Db_Info.Refresh;
        Grid_Docs_List.RestoreBookmark;
      end;
    end;
  end;
  Page_Control.Repaint;
end;

procedure TForm_Tech_Proc_Main.Page_ControlDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
  I: Integer;
  CloseBtnSize: Integer;
  PageControl: TPageControl;
  TabCaption: TPoint;
  CloseBtnRect: TRect;
  CloseBtnDrawState: Cardinal;
  CloseBtnDrawDetails: TThemedElementDetails;
begin
  PageControl := Control as TPageControl;

  //should be done on every change of the page count
  SetLength(FCloseButtonsRect, PageControl.PageCount);

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

    if TabIndex <> 0
    then
    begin
      CloseBtnRect.Bottom := CloseBtnRect.Top + CloseBtnSize;
      CloseBtnRect.Left := CloseBtnRect.Right - CloseBtnSize;
      FCloseButtonsRect[TabIndex] := CloseBtnRect;
    end;

    if PageControl.ActivePageIndex = TabIndex
    then
    begin
      PageControl.Canvas.Font.Color := clWindowText;
      PageControl.Canvas.Font.Style := PageControl.Canvas.Font.Style + [fsBold];
    end
    else
    begin
      PageControl.Canvas.Font.Color := clGrayText;
      PageControl.Canvas.Font.Style := PageControl.Canvas.Font.Style -  [fsBold];
    end;

    PageControl.Canvas.FillRect(Rect);
    PageControl.Canvas.TextOut(TabCaption.X, TabCaption.Y, PageControl.Pages[TabIndex].Caption);

    if not UseThemes then
    begin
      if (FCloseButtonMouseDownIndex = TabIndex) and FCloseButtonShowPushed then
        CloseBtnDrawState := DFCS_CAPTIONCLOSE + DFCS_PUSHED
      else
        CloseBtnDrawState := DFCS_CAPTIONCLOSE;

      Winapi.Windows.DrawFrameControl(PageControl.Canvas.Handle,
        FCloseButtonsRect[TabIndex], DFC_CAPTION, CloseBtnDrawState);
    end
    else
    begin
      Dec(FCloseButtonsRect[TabIndex].Left);

      if (FCloseButtonMouseDownIndex = TabIndex) and FCloseButtonShowPushed then
        CloseBtnDrawDetails := ThemeServices.GetElementDetails(twCloseButtonPushed)
      else
        CloseBtnDrawDetails := ThemeServices.GetElementDetails(twCloseButtonNormal);

      ThemeServices.DrawElement(PageControl.Canvas.Handle, CloseBtnDrawDetails,
        FCloseButtonsRect[TabIndex]);
    end;
  end;
end;

procedure TForm_Tech_Proc_Main.Page_ControlMouseDown(Sender: TObject;
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

procedure TForm_Tech_Proc_Main.Page_ControlMouseLeave(Sender: TObject);
var
  PageControl: TPageControl;
begin
  PageControl := Sender as TPageControl;
  FCloseButtonShowPushed := False;
end;

procedure TForm_Tech_Proc_Main.Page_ControlMouseMove(Sender: TObject;
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

procedure TForm_Tech_Proc_Main.Page_ControlMouseUp(Sender: TObject;
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

function TForm_Tech_Proc_Main.AddOpenedFrame(AOwner: TComponent;
 ViewFrameClass: TClass; DocHeaderId: Integer;  ObjectName: String): TPageFrame;
var
  NewPageFrame: TPageFrame;
begin
  NewPageFrame := TPageFrame.Create(AOwner, ViewFrameClass, DocHeaderId, ObjectName);
  FOpenFrames.AddObject(ObjectName, NewPageFrame);
  Result := NewPageFrame;
end;

procedure TForm_Tech_Proc_Main.Btn_Main_Refresh_InfoClick(Sender: TObject);
var
  ActivePageFrame: TPageFrame;
begin
  ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);
  if ActivePageFrame<>Nil
  then
    if ActivePageFrame.ViewFrame is TFrame_TechProc_List
    then
      (ActivePageFrame.ViewFrame as TFrame_TechProc_List).Db_Info.Refresh;
end;

procedure TForm_Tech_Proc_Main.Db_Sogl_InfoAfterRefresh(DataSet: TDataSet);
begin
  if DataSet.RecordCount > 0
  then
    Main_M_Tech_Proc_Main_Btn_Que.Visible := True
    //Form_Tech_Proc_Main.Page_Control.ActivePage.Caption := 'Документы на согласование (' + IntToStr(DataSet.RecordCount) + ')' + '      ';
  Else
    Main_M_Tech_Proc_Main_Btn_Que.Visible := False;
end;

procedure TForm_Tech_Proc_Main.DeleteOpenedFrame(PageFrame: TPageFrame);
begin
  FOpenFrames.Delete(IndexOfOpenedFrame(PageFrame));
end;

procedure TForm_Tech_Proc_Main.DeleteOpenedFrame(ControlPage: TTabSheet);
begin
  FOpenFrames.Delete(IndexOfOpenedFrame(ControlPage));
end;

procedure TForm_Tech_Proc_Main.DeleteOpenedFrame(FrameName: String);
begin
  FOpenFrames.Delete(IndexOfOpenedFrame(FrameName));
end;

function TForm_Tech_Proc_Main.FindFramePage(FrameName: String): TTabSheet;
begin
  if FOpenFrames.IndexOf(FrameName)<>-1
  then
    Result := (FOpenFrames.Objects[FOpenFrames.IndexOf(FrameName)] as TPageFrame).ParentPage
  else
    Result := Nil;
end;

function TForm_Tech_Proc_Main.FindOpenedFrame(ControlPage: TTabSheet): TPageFrame;
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

function TForm_Tech_Proc_Main.FindOpenedFrame(FrameName: String): TPageFrame;
begin
  if FOpenFrames.IndexOf(FrameName)<>-1
  then
  begin
    Result := FOpenFrames.Objects[FOpenFrames.IndexOf(FrameName)] as TPageFrame;
  end
  else
    Result := Nil;
end;

procedure TForm_Tech_Proc_Main.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  P_Free_Form: Procedure; stdcall;
begin
  if not ( fsModal in Self.FormState )
  then
  begin
    @P_Free_Form := getProcAddress( Dm_Main.Vg_Dll_Handle, 'P_Free_Form' );
    If @P_Free_Form  <> Nil
    Then
    begin
      P_Free_Form;
    end;
  end;
end;

procedure TForm_Tech_Proc_Main.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var
    i: Integer;
begin
  if Dm_Main.Vg_Booted  = False
  then
    exit;

  if FOpenFrames.Count > 1
  then
  begin
    for i := FOpenFrames.Count-1 downto 1
    do
    begin
      try
        P_CloseTab(i);
        CanClose := True;
      except
      on E : Exception
      do
        if E.ClassType = EAbort
        then
        begin
          CanClose := False;
          Exit;
        end;
      end;
    end;
  end;


  if not Dm_Main.F_Close_All_Form
  then
  begin
    CanClose := False;
    exit;
  end;
end;

procedure TForm_Tech_Proc_Main.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  Form_Tech_Proc_Main.Caption := Programm_Name;
  //Page_Control.TabWidth := 180;
  Page_Control.OwnerDraw := True;
  FCloseButtonMouseDownIndex := -1;
  FOpenFrames := TStringList.Create;

  //should be done on every change of the page count
  SetLength(FCloseButtonsRect, Page_Control.PageCount);

  for I := 0 to Length(FCloseButtonsRect) - 1 do
  begin
    FCloseButtonsRect[I] := Rect(0, 0, 0, 0);
  end;
end;

procedure TForm_Tech_Proc_Main.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  FormBounds: TRect;
  ActivePageFrame: TPageFrame;
begin
  if Page_Control.PageCount>0
  then
    ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);

  if (Key = VK_F5)
      and (ActivePageFrame<>Nil)
  then
  begin
    if (ActivePageFrame.ViewFrame is TFrame_TechProc)
    then
      with (ActivePageFrame.ViewFrame as TFrame_TechProc)
      do
        F_Save_TechProc(Tb_Save)
    else if (ActivePageFrame.ViewFrame is TFrame_Tp_TechProc_DocDetList)
    then
      with (ActivePageFrame.ViewFrame as TFrame_Tp_TechProc_DocDetList)
      do
        F_Save_ListTechProc(Tb_Save);
  end;

  if Key = VK_F11 then
  begin
    FormBounds := Rect(Left+Width+10, Top, Left+Width+10+300, Top+Height);
    if FormBounds.Right > Screen.DesktopRect.Right then
      OffsetRect(FormBounds, Screen.DesktopRect.Right - FormBounds.Right, 0);
    ShowObjectInspectorForm(ActiveControl, FormBounds);
  end;
end;

procedure TForm_Tech_Proc_Main.Grid_MainGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
 With TDbGridEh( Sender ).DataSource.DataSet
 Do
 Begin
   If Not IsEmpty
   Then
   Begin
     if FieldByName( 'FLAG_IMP' ).AsInteger = 1
     then
     Begin
       AFont.Color := clGreen;
       AFont.Style := AFont.Style + [ fsBold ];
     End
     Else if FieldByName( 'FLAG_IMP' ).AsInteger = 2
     then
     Begin
       AFont.Color := clRed;
       AFont.Style := AFont.Style + [ fsBold ];
     End;

     {if FieldByName( 'NEGATIVE_RES_FLAG' ).AsInteger = 1
     Then
     Begin
       Background := $00C1B6FF;
       AFont.Color := clRed;
     End;}

     if FieldByName( 'CANCEL_FLAG' ).AsInteger = 1
     Then
     Begin
       Background := clMenu;
       AFont.Color := clGray;
     End;
   End;
 End;
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_Programm_InfoClick(Sender: TObject);
begin
  ShellExecute( Handle,
                Nil,
                'Памятка пользователя Журнал техпроцессов.pdf',
                Nil,
                Nil,
                SW_SHOWNORMAL );
end;

procedure TForm_Tech_Proc_Main.Main_M_Tech_Proc_Main_Btn_QueClick(
  Sender: TObject);
begin
  P_OpenListDocTab('_Appr_');
end;

function TForm_Tech_Proc_Main.IndexOfOpenedFrame(
  ControlPage: TTabSheet): Integer;
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

function TForm_Tech_Proc_Main.IndexOfOpenedFrame(FrameName: String): Integer;
begin
  Result := FOpenFrames.IndexOf(FrameName);
end;

function TForm_Tech_Proc_Main.IndexOfOpenedFrame(
  PageFrame: TPageFrame): Integer;
begin
  Result := FOpenFrames.IndexOf(PageFrame.PageFrameName);
end;

Function TForm_Tech_Proc_Main.Is_Doc_Approved(In_Doc_Header_Id: String): Bool;
begin
 SimpleSQL.Close;
 SimpleSQL.DeleteVariables;
 SimpleSQL.DeclareVariable( 'In_Doc_Header_Id', otString );
 SimpleSQL.SetVariable( 'In_Doc_Header_Id', In_Doc_Header_Id );
 SimpleSQL.SQL.Clear;
 SimpleSQL.SQL.Add( ' Select  (Case '
                    + ' When t.Date_Start_Action Is Null '
                    + ' And t.Date_End_Action Is Null '
                    + ' Then 0'
                    + ' When t.Date_End_Action Is Not Null '
                    + ' Then 0'
                    + ' Else 1 '
                    + ' End) Doc_Status_Flag '
                    + ' From Ogt.V_Spr_Tp_Doc t '
                    + ' Where t.Doc_Header_Id = :In_Doc_Header_Id ' );
 SimpleSQL.ExecSQL;
 SimpleSQL.Open;
 if SimpleSQL.Fields[0].AsInteger = 1
 then
   Result := True
 Else if SimpleSQL.Fields[0].AsInteger = 0
 then
   Result := False;
 SimpleSQL.Close;
end;

procedure TForm_Tech_Proc_Main.P_OpenListDocTab(TabFlagName: String);
var
  i: Integer;
  NewFilter_Name: String;
  Filter: TDropDown_Filter;
  NewTabSheet: TTabSheet;
  NewPageFrame: TPageFrame;
  IndexOfNewFrame: Integer;
  procedure P_CreateFilterStruct(MemT_Filter: TMemTableEh);
  var
    NewStruct: TMTDataStructEh;
    NewField: TMTStringDataFieldEh;
    i: Integer;
  begin
    with MemT_Filter.RecordsView.MemTableData.DataStruct
    do
    begin
      for i := Low((NewPageFrame.ViewFrame as TFrame_TechProc_List).Arr_AllFilters)
          to High((NewPageFrame.ViewFrame as TFrame_TechProc_List).Arr_AllFilters)
      do
      begin
        NewStruct := BeginRestructure;

        NewField := TMTStringDataFieldEh(NewStruct.CreateField(TMTStringDataFieldEh));
        NewField.FieldName := ((NewPageFrame.ViewFrame as TFrame_TechProc_List).Arr_AllFilters[i] as TStringList).Values['FieldName'];
        NewField.Size := 500;

        EndRestructure(NewStruct, True);
        (NewPageFrame.ViewFrame as TFrame_TechProc_List).VGrid_Filter.LabelColWidth := 150;
        with (NewPageFrame.ViewFrame as TFrame_TechProc_List).VGrid_Filter.Rows.Add
        do
        begin
          FieldName := ((NewPageFrame.ViewFrame as TFrame_TechProc_List).Arr_AllFilters[i] as TStringList).Values['FieldName'];
          RowLabel.Caption := ((NewPageFrame.ViewFrame as TFrame_TechProc_List).Arr_AllFilters[i] as TStringList).Values['ColumnCaption'];
          FitRowHeightToData := True;
        end;
      end;
    end;
  end;
begin
  NewPageFrame := Nil;

  if IndexOfOpenedFrame(TabFlagName)<>-1
  then
  begin
    NewPageFrame := FindOpenedFrame(TabFlagName);
  end;

  if NewPageFrame = Nil
  then
  begin
    NewTabSheet := TTabSheet.Create(Page_Control);
    if TabFlagName = '_Main_'
    then
      NewTabSheet.Caption := 'Все документы';
    if TabFlagName = '_Appr_'
    then
      NewTabSheet.Caption := 'Документы на согласование (' + IntToStr(Db_Sogl_Info.RecordCount) + ')' + '      ';
    NewTabSheet.PageControl := Page_Control;

    //SetLength(Arr_OpenFrames, Page_Control.PageCount);
    NewPageFrame := AddOpenedFrame(Application, TFrame_TechProc_List, 0, TabFlagName);
    with (NewPageFrame.ViewFrame as TFrame_TechProc_List)
    do
    begin
      Name := TabFlagName;
      Parent := NewTabSheet;
      Align := alClient;

      Db_Appr.Close;
      Db_Appr.Open;

      Db_Info.Close;
      Db_Info.Open;

      MemT_Filters.Close;
      MemT_Filters.DestroyTable;

      for i := 0 to VGrid_Info.Rows.Count-1
      do
      begin
        SetLength(Arr_AllFilters, Length(Arr_AllFilters)+1);
        Arr_AllFilters[Length(Arr_AllFilters)-1] := TStringList.Create;
        with (Arr_AllFilters[Length(Arr_AllFilters)-1] as TStringList)
        do
        begin
          Add('FieldName=' + VGrid_Info.Rows[i].FieldName);
          Add('ColumnCaption=' + VGrid_Info.Rows[i].RowLabel.Caption);
          Add('FilterType=default');
        end;
      end;

      for i := 0 to Length(Arr_CustomFilters)-1
      do
      begin
        SetLength(Arr_AllFilters, Length(Arr_AllFilters)+1);
        Arr_AllFilters[Length(Arr_AllFilters)-1] := TStringList.Create;
        with (Arr_AllFilters[Length(Arr_AllFilters)-1] as TStringList)
        do
        begin
          Add('FieldName=' + Arr_CustomFilters[i][0]);
          Add('ColumnCaption=' + Arr_CustomFilters[i][1]);
          Add('FilterValue=' + Arr_CustomFilters[i][3]);
          Add('FilterType=custom');
        end;
      end;

      P_CreateFilterStruct(MemT_Filters);
      MemT_Filters.Open;

      for i := 0 to VGrid_Filter.Rows.Count-1
      do
      begin
        if (NewPageFrame.ViewFrame.FindComponent('DropDown_Filter_'
                                      + TabFlagName
                                      + VGrid_Filter.Rows[i].FieldName) = Nil)
        then
        begin
          NewFilter_Name := 'DropDown_Filter_'
                             + TabFlagName
                             + VGrid_Filter.Rows[i].FieldName;
          VGrid_Filter.Rows[i].EditButtons.Add;
          VGrid_Filter.Rows[i].FitRowHeightToData;
          VGrid_Filter.Rows[i].OnOpenDropDownForm := VGridFilterRowsOpenDropDownForm;
          VGrid_Filter.Rows[i].OnCloseDropDownForm := VGridFilterRowsCloseDropDownForm;
          VGrid_Filter.Rows[i].EditButtons[0].DropDownFormParams.DropDownForm := TDropDown_Filter.Create((NewPageFrame.ViewFrame as TFrame_TechProc_List), NewFilter_Name);
        end;
      end;
    end;

    NewTabSheet.Name := NewPageFrame.ViewFrame.Name;
    NewPageFrame.ParentPage := NewTabSheet;
    Page_Control.ActivePage := NewTabSheet;
  end
  else
    Page_Control.ActivePage := NewPageFrame.ParentPage;
end;

procedure TForm_Tech_Proc_Main.P_Open_Doc(Grid_Sender: TDBGridEh = Nil);
Var
  NewTabSheet: TTabSheet;
  NewFrame, NewDateFrame: TFrame;
  NewPageFrame: TPageFrame;
  NewFrameClassName: String;
  IndexOfNewFrame, i, In_Doc_Id_Indx: Integer;
  InfoDataSet: TDataSet;
  ActiveFrame, ActiveDataFrame: TFrame;
begin
  if (Grid_Sender = Nil)
     and (Page_Control.PageCount > 1)
  then
  begin
    ActiveFrame := FindOpenedFrame(Page_Control.ActivePage).ViewFrame;
    if ActiveFrame is TFrame_Tp_TechProcComplect
    then
      with ActiveFrame as TFrame_Tp_TechProcComplect
      do
        InfoDataSet := Db_TechProcss;
  end
  else if (Grid_Sender = Nil)
     and (Page_Control.PageCount = 0)
  then
  begin
    InfoDataSet := Db_Main_Info;
  end
  else if Grid_Sender <> Nil
  then
  begin
    InfoDataSet := Grid_Sender.DataSource.DataSet;
  end;

  with InfoDataSet
  do
  begin
    NewPageFrame:=Nil;
    if IndexOfOpenedFrame(FieldByName('Doc_Header_Id').AsString)<>-1
    then
      NewPageFrame := FindOpenedFrame(FieldByName('Doc_Header_Id').AsString) as TPageFrame;

    if NewPageFrame = Nil
    then
    begin
      NewFrameClassName := Pkg_Tp_Doc.CallStringFunction('F_Get_DocTypeFrameClass', [FieldByName('Doc_Type').AsInteger]);
      if NewFrameClassName<>''
      then
      begin
        NewTabSheet := TTabSheet.Create(Page_Control);
        NewTabSheet.Caption := FieldByName('Doc_Num').AsString + '      ';
        NewTabSheet.PageControl := Page_Control;
        if NewFrameClassName='TFrame_TechProc'
        then
        begin
          NewPageFrame := AddOpenedFrame(Application,
                                         TFrame_TechProc,
                                         FieldByName('Doc_Header_Id').AsInteger,
                                         FieldByName('Doc_Header_Id').AsString);

          with (NewPageFrame.ViewFrame as TFrame_TechProc)
          do
          begin
            Name :=  'Frame_TechProc_' + FieldByName('Doc_Header_Id').AsString;
            Parent := NewTabSheet;
            P_Open_TechProc;
            Align := alClient;
          end;
        end
        else if NewFrameClassName='TFrame_Tp_TechProc_DocDetList'
        then
        begin
          NewPageFrame := AddOpenedFrame(Application,
                                         TFrame_Tp_TechProc_DocDetList,
                                         FieldByName('Doc_Header_Id').AsInteger,
                                         FieldByName('Doc_Header_Id').AsString);
          with (NewPageFrame.ViewFrame as TFrame_Tp_TechProc_DocDetList)
          do
          begin
            Name :=  'Frame_Tp_TechProc_DocDetList_' + FieldByName('Doc_Header_Id').AsString;
            Parent := NewTabSheet;
            In_Doc_Id_Indx := StrList_GlobalVars.IndexOfName('In_Doc_Id');
            if In_Doc_Id_Indx = -1
            Then
              StrList_GlobalVars.Add('In_Doc_Id=' + FieldByName('Doc_Header_Id').AsString)
            Else
              StrList_GlobalVars.ValueFromIndex[In_Doc_Id_Indx] :=  FieldByName('Doc_Header_Id').AsString;
            TechProcDataFrame := NewPageFrame.DataFrame as TFrame_Tp_TechProc_DocDetListData;
            P_Open_ListTechProc;
            Align := alClient;
          end;
        end
        else if NewFrameClassName='TFrame_Tp_TechProcComplect'
        then
        begin
          NewPageFrame := AddOpenedFrame(Application,
                                         TFrame_Tp_TechProcComplect,
                                         FieldByName('Doc_Header_Id').AsInteger,
                                         FieldByName('Doc_Header_Id').AsString);
          with (NewPageFrame.ViewFrame as TFrame_Tp_TechProcComplect)
          do
          begin
            Name :=  'Frame_Tp_TechProcComplect_' + FieldByName('Doc_Header_Id').AsString;
            Parent := NewTabSheet;
            In_Doc_Id_Indx := StrList_GlobalVars.IndexOfName('In_Doc_Id');
            if In_Doc_Id_Indx = -1
            Then
              StrList_GlobalVars.Add('In_Doc_Id=' + FieldByName('Doc_Header_Id').AsString)
            Else
              StrList_GlobalVars.ValueFromIndex[In_Doc_Id_Indx] := FieldByName('Doc_Header_Id').AsString;
            P_Open_Complect;
            Align := alClient;
          end;
        end;
        NewTabSheet.Name := 'TTabSheet_'+FieldByName('Doc_Header_Id').AsString;
        NewPageFrame.ParentPage := NewTabSheet;
        Page_Control.ActivePage := NewTabSheet;
      end;
    end
    else
    begin
      Page_Control.ActivePage := NewPageFrame.ParentPage;
    end;
  end;
end;

Procedure TForm_Tech_Proc_Main.P_Report_Tech_Process(v_In_Params: TDynVarsEh; Grid_Sender: TDBGridEh);
Var
  v_Inter_Params,
  V_Print_Ceh_In_Params,
  V_Print_Ceh_Out_Params: TDynVarsEh;
  ActivePageFrame: TPageFrame;
begin
  //v_Inter_Params := TDynVarsEh.Create( Application.MainForm );
  v_Inter_Params := v_In_Params;

  if Page_Control.PageCount>0
  then
  begin
    ActivePageFrame:=FindOpenedFrame(Page_Control.ActivePage);
    if ActivePageFrame<>Nil
    then
    begin
      if v_Inter_Params.DynVar[ 'Doc_Header_Id' ].IsNull
      then
      begin
        if ActivePageFrame.ViewFrame is TFrame_TechProc_List
        then
          with (ActivePageFrame.ViewFrame as TFrame_TechProc_List)
          do
            v_Inter_Params.DynVar[ 'Doc_Header_Id' ].AsString := Db_Info.FieldByName( 'Doc_Header_Id' ).AsString
        else if ActivePageFrame.ViewFrame is TFrame_TechProc
        then
          with (ActivePageFrame.DataFrame as TFrameData_TechProc)
          do
            v_Inter_Params.DynVar[ 'Doc_Header_Id' ].AsString := Db_Doc_Info.FieldByName( 'Doc_Header_Id' ).AsString
        else if ActivePageFrame.ViewFrame is TFrame_Tp_TechProc_DocDetList
        then
          with (ActivePageFrame.DataFrame  as TFrame_Tp_TechProc_DocDetListData)
          do
            v_Inter_Params.DynVar[ 'Doc_Header_Id' ].AsString := Db_Doc_Info.FieldByName( 'Doc_Header_Id' ).AsString;
      end;
    end;
  end;

  If ( v_Inter_Params.DynVar[ 'Doc_Header_Id' ].IsNull )
      And ( Grid_Sender <> Nil )
  Then
  Begin
    v_Inter_Params.DynVar[ 'Doc_Header_Id' ].AsString := Grid_Sender.DataSource.DataSet.FieldByName( 'Doc_Header_Id' ).AsString;
  End
  Else if ( v_Inter_Params.DynVar[ 'Doc_Header_Id' ].IsNull )
      And ( Grid_Sender = Nil )
  Then
    Exit;

  If v_Inter_Params.DynVar[ 'Format' ].AsString = 'Document_For_Ceh'
  Then
  Begin
    V_Print_Ceh_In_Params := TDynVarsEh.Create( Self );
    V_Print_Ceh_In_Params.DynVar[ 'Find' ].AsString := 'CEH_FOR_PRNT';
    V_Print_Ceh_In_Params.DynVar[ 'V_Keyword' ].AsString := v_Inter_Params.DynVar[ 'v_Doc_Id' ].AsString;
    V_Print_Ceh_Out_Params := F_Gen_Chose_Form( V_Print_Ceh_In_Params );
    If V_Print_Ceh_Out_Params <> Nil
    Then
      v_Inter_Params.DynVar[ 'v_Ceh_Id' ].AsInteger := V_Print_Ceh_Out_Params.DynVar[ 'CEH_ID' ].AsInteger;
  End
  else if v_Inter_Params.DynVar[ 'Format' ].AsString = 'Complect_For_Ceh'
  Then
  Begin
    V_Print_Ceh_In_Params := TDynVarsEh.Create( Self );
    V_Print_Ceh_In_Params.DynVar[ 'Find' ].AsString := 'CEH';
    V_Print_Ceh_Out_Params := F_Gen_Chose_Form( V_Print_Ceh_In_Params );
    If V_Print_Ceh_Out_Params <> Nil
    Then
      v_Inter_Params.DynVar[ 'v_Ceh_Id' ].AsInteger := V_Print_Ceh_Out_Params.DynVar[ 'ID_CEH' ].AsInteger;

  End;

  DM_Main.F_Show_Modal_Form( 'Tp_Reports', v_Inter_Params );
end;

Procedure TForm_Tech_Proc_Main.P_DeleteFromDBGridEh(DBGridEh: TDBGridEh);
  Var
    i: Integer;
    ASelectionType: TDBGridEhSelectionType;
Begin
  With DBGridEh Do
  Begin
    ASelectionType := Selection.SelectionType;

    {$Region 'Если выделена одна запись, то ASelectionType = gstNon'}
    if ( ASelectionType = gstNon ) and
       ( not DataSource.DataSet.IsEmpty ) and
       ( MessageBox( Application.ActiveFormHandle,'Удалить строку?','Внимание!',MB_YESNO  + MB_ICONINFORMATION ) = ID_YES )
    then
    begin
      DataSource.DataSet.Delete;
      Exit;
    end
    {$EndRegion 'Если выделена одна запись, то ASelectionType = gstNon'}

    {$Region 'Если выделена не одна запись'}
    Else if ( ASelectionType <> gstNon ) and
    ( not DataSource.DataSet.IsEmpty ) and
    ( MessageBox( Application.ActiveFormHandle,'Удалить строки?','Внимание!',MB_YESNO + MB_ICONINFORMATION ) = ID_YES )
    Then
    Begin
      With DataSource.DataSet
      Do
      begin
        SaveBookmark;
        DisableControls;
        Try
          Case ASelectionType
          Of

            {$Region 'Выделены целиком строки'}
            gstRecordBookmarks:
            Begin
              For i := 0 To Selection.Rows.Count - 1
              Do
              Begin
                Bookmark := Selection.Rows[i];
                If Eof
                Then
                  Break;                                
                Try Delete 
                Except On E : Exception 
                Do 
                  If E.ClassName = 'EAbort' Then Next 
                End;
              End;
              Selection.Clear;
            End;
            {$EndRegion 'Выделены целиком строки'}

            {$Region 'Выделена прямоугольная область'}
            gstRectangle:
            Begin
              Bookmark := Selection.Rect.TopRow;
              While True
              Do
              Begin
                If Eof
                Then
                  Break;
                Try Delete
                Except On E : Exception
                Do
                  If E.ClassName = 'EAbort' Then Next
                End;
                If DataSetCompareBookmarks( DBGridEh.DataSource.DataSet,
                                            DBGridEh.DataSource.DataSet.Bookmark,
                                            Selection.Rect.BottomRow ) = 0
                Then
                Begin                 
                  Try Delete
                  Except On E : Exception
                  Do
                    If E.ClassName = 'EAbort' Then Next
                  End;
                  Break;
                End;
              End;
              Selection.Clear;
            End;
            {$EndRegion 'Выделена прямоугольная область'}

            {$Region 'Выделены все'}
            gstAll:
            Begin
              First;
              While True
              Do
              Begin                
                Try Delete 
                Except On E : Exception 
                Do 
                  If E.ClassName = 'EAbort' Then Next 
                End;
                If Eof
                Then
                  Break;
              End;
              Selection.Clear;
            End;
           {$EndRegion 'Выделены все'}

          End;
        Finally
          EnableControls;
        End;
      end;
    End;
    {$EndRegion 'Если выделена не одна запись'}

  end;
end;

Procedure TForm_Tech_Proc_Main.P_Return_Doc( v_In_Params: TDynVarsEh; Grid_Sender: TDBGridEh );
Var
  v_Inner_In_Params, v_Inner_Out_Params: TDynVarsEh;
begin
  if Not User_Admin
  Then
  Begin
    If User_lnum <> Grid_Sender.DataSource.DataSet.FieldByName( 'AUTHOR_LNUM' ).AsInteger
    Then
    Begin
      MessageDlg( 'Перенаправить документ может только автор!',
                  mtError,
                  [ mbOK ],
                  5 );
      Exit;
    End;
  End;

  v_Inner_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_Inner_In_Params.DynVar[ 'Find' ].AsString := 'RETURN_TO';
  If Not v_In_Params.DynVar[ 'Num_Appr_Step' ].IsNull
  Then
    v_Inner_In_Params.DynVar[ 'V_Keyword' ].AsString := v_In_Params.DynVar[ 'Num_Appr_Step' ].AsString;
  v_Inner_In_Params.DynVar[ 'Filter' ].AsString := 'Id_Doc_Tp = ' + Grid_Sender.DataSource.DataSet.FieldByName( 'ID' ).AsString;
  v_Inner_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_Inner_In_Params );
  if Not V_Inner_Out_Params.DynVar[ 'ID_APPR' ].IsNull
  Then
  Begin
    If MessageBox( Application.ActiveFormHandle, PWideChar( 'Вернуть документ на ступень согласования ' +
                                                            v_Inner_Out_Params.DynVar[ 'APPR_STEP_NAME' ].AsString
                                                            + '?' + #13#10
                                                            + 'После возврата согласование всех сторон будет сброшено! '),
                                                 'ВНИМАНИЕ!',
                                                 MB_YESNO + MB_ICONINFORMATION ) = ID_YES
    Then
    Begin
      with FindOpenedFrame(Page_Control.ActivePage).ViewFrame as TFrame_TechProc_List
      do
      begin
        PKG_TP_DOC.CallProcedure( 'P_Return_Doc_To_Prev_Appr_Step', [ V_Inner_Out_Params.DynVar[ 'ID_APPR' ].AsInteger ] );
        Grid_Sender.SaveVertPos( 'ID' );
        Grid_Sender.DataSource.DataSet.Refresh;
        Db_Appr.Refresh;
        Grid_Sender.RestoreVertPos( 'ID' );
      end;
    End;
  End;
end;


Procedure TForm_Tech_Proc_Main.P_Approve_Doc(DBGridEh: TDBGridEh; InDocHeaderId: Integer);
Var
  DocBookmark: TBookmark;
  Var_Indx: Integer;
  DocHeaderId: Integer;
  MainDataSet: TDataSet;
begin
  if DBGridEh<>Nil then DocHeaderId:= DBGridEh.DataSource.DataSet.FieldByName( 'Doc_Header_Id' ).AsInteger
  else if (DBGridEh=Nil) and (InDocHeaderId<>0) then DocHeaderId:=InDocHeaderId
  else Exit;

  with TForm_Approve_Doc.Create(Self, DocHeaderId)
  do
  begin
    try
      If ShowModal = mrOk
      Then;
      Begin
        if DBGridEh<>Nil
        then
        begin
          with DBGridEh
          do
          begin
            MainDataSet := DataSource.DataSet;
            if Pos('_Main_',(Page_Control.ActivePage.Name)) <> 0
            Then
              DBGridEh.SaveVertPos('DOC_HEADER_ID')
            else if (Pos('_Appr_',(Page_Control.ActivePage.Name)) <> 0)
                    and (MainDataSet.RecordCount > 1)
            then
            begin
              if InRange(MainDataSet.RecNo, 0, MainDataSet.RecordCount - 2)
              then
              begin
                DBGridEh.DataSource.DataSet.Next;
                DBGridEh.SaveVertPos('DOC_HEADER_ID')
              end
              else if MainDataSet.RecNo = MainDataSet.RecordCount - 1
              then
              begin
                DBGridEh.DataSource.DataSet.Prior;
                DBGridEh.SaveVertPos('DOC_HEADER_ID')
              end;
            end;
            (FindOpenedFrame(Page_Control.ActivePage).ViewFrame as TFrame_TechProc_List).Db_Appr.Refresh;
            Page_Control.ActivePage.Repaint;
            DBGridEh.DataSource.DataSet.Refresh;
            DBGridEh.RestoreVertPos('DOC_HEADER_ID');
            if Pos('_Appr_',(Page_Control.ActivePage.Name)) <> 0
            then
            begin
              Db_Sogl_Info.Refresh;
              Page_Control.ActivePage.Caption := 'Документы на согласование (' + IntToStr(Db_Sogl_Info.RecordCount) + ')' + '      ';
            end;
          end;
        end
        else if (FindOpenedFrame(Page_Control.ActivePage).ViewFrame is TFrame_TechProc)
                or (FindOpenedFrame(Page_Control.ActivePage).ViewFrame is TFrame_Tp_TechProc_DocDetList)
        then
        begin
          P_CloseTab(Page_Control.ActivePageIndex);
        end;

      end;
    finally
      Free;
    end;
  end;
end;

procedure TForm_Tech_Proc_Main.P_CloseTab(TabIndex: Integer);
var
  ActiveFrame, ActiveDataFrame: TFrame;
  ClosingPageFrame: TPageFrame;
  FrameName: String;
  CanDelete: Boolean;
begin
  ClosingPageFrame := FindOpenedFrame(Page_Control.Pages[TabIndex]);

  if ClosingPageFrame.ViewFrame is TFrame_TechProc
  then
  begin
    if (ClosingPageFrame.ViewFrame as TFrame_TechProc).F_Save_TechProc(Nil) <> mrCancel
    then
      CanDelete := True
    else
      Abort;
  end
  else if ClosingPageFrame.ViewFrame is TFrame_Tp_TechProc_DocDetList
  then
  begin
    if (ClosingPageFrame.ViewFrame as TFrame_Tp_TechProc_DocDetList).F_Save_ListTechProc(Nil) <> mrCancel
    then
      CanDelete := True
    else
      Abort;
  end
  else
    CanDelete := True;

  if CanDelete
  then
  begin
    if ClosingPageFrame<>Nil
    then
    begin
      DeleteOpenedFrame(ClosingPageFrame);
      ClosingPageFrame.Free;
      ClosingPageFrame := Nil;
    end;
    //Page_Control.Pages[TabIndex].Free;
    Page_Control.TabIndex := TabIndex-1;
    FCloseButtonMouseDownIndex := -1;
    Page_Control.Repaint;
  end;
end;

procedure TForm_Tech_Proc_Main.P_Copy_In_DataSet_From_Buffer(v_In_DataSet: TDataSet);
Var
  I: Integer;
begin
  With v_In_DataSet
  Do
  Begin
    Tp_Dm.MemT_Buffer.Active := True;
    Tp_Dm.MemT_Buffer.First;
    For i := 1 To Tp_Dm.MemT_Buffer.RecordCount
    Do
    Begin
      Append;
      CopyFields( Tp_Dm.MemT_Buffer );
      Post;
      Tp_Dm.MemT_Buffer.Next;
    End;
  End;
end;

Function TForm_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form(v_In_Params: TDynVarsEh): TDynVarsEh;
Var
  searchResult: TSearchRec;
  v_Counter, i: Integer;
  V_Result_Params: TDynVarsEh;
  OutputSQlStrings: TStringList;
  Res : TResourceStream;
  Filter_Before, Filter_After: String;
  ActivePageFrame: TPageFrame;
  ResourceStream: TResourceStream;
  ArrConst: Array Of TVarRec;
  LookingConst, DefaultConstValue: String;
begin
  if Page_Control.PageCount>0
  then
    ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage)
  else
    ActivePageFrame:=Nil;

  {$Region 'Списки'}
  V_Result_Params := v_In_Params;
  OutputSQlStrings := TStringList.Create;

  If V_In_Params.DynVar[ 'Find' ].AsString = 'DIR_EXT'
  Then
  Begin
    {$Region 'Формирование списка форматов файлов в директории'}
    V_Result_Params.DynVar['SQL'].AsString := ' Select Distinct FILE_EXT'
                          + ' From ( ' ;
    if FindFirst( V_In_Params.DynVar[ 'v_Keyword' ].AsString + '\*.*',
                  faAnyFile
                  And Not faDirectory
                  And Not faHidden
                  And Not faSysFile,
                  searchResult ) = 0
    Then
    begin
      v_Counter := 0;
      repeat
         if v_Counter = 0
         Then
         Begin
           V_Result_Params.DynVar['SQL'].AsString := V_Result_Params.DynVar['SQL'].AsString + ' Select '
                                 + ' ''' + ExtractFileExt( V_In_Params.DynVar[ 'v_Keyword' ].AsString + '\' + searchResult.Name ) + ''' ' + ' FILE_EXT '
                                 + ' From Dual ';
         End
         Else
         Begin
           V_Result_Params.DynVar['SQL'].AsString := V_Result_Params.DynVar['SQL'].AsString + ' Union All ';
           V_Result_Params.DynVar['SQL'].AsString := ' Select '
                                 + ' ''' + ExtractFileExt( V_In_Params.DynVar[ 'v_Keyword' ].AsString + '\' + searchResult.Name ) + ''' '  + ' FILE_EXT '
                                 + ' From Dual ';
         End;
         Inc(v_Counter);
      until FindNext(searchResult) <> 0;
      FindClose (searchResult);
      V_Result_Params.DynVar['SQL'].AsString := V_Result_Params.DynVar['V_SQL_Text'].AsString + ' ) ';

      if V_In_Params.DynVar[ 'Columns' ].IsNull
      Then
      Begin
        V_Result_Params.DynVar[ 'Columns' ].AsString := '<0>FILE_EXT</0>'
                                                      + '<end>';
        V_Result_Params.DynVar[ 'Titles' ].AsString := '<0>Формат файла</0>'
                                                      + '<end>';
      End;
    end;
    {$EndRegion 'Формирование списка форматов файлов в директории'}
  End
  Else If v_In_Params.DynVar[ 'Find' ].AsString = 'ROLLBACK'
  Then
  Begin
    {$Region 'Формирование списка привязанных инструментов'}
    V_Result_Params.DynVar['SQL'].AsString := ' Select Inf.Doc_Number Rollback  '
                                                    + ' From   Src.V_Doc_Rout_Points t '
                                                    + ' Join   Src.V_Tech_Proc Inf '
                                                    + ' On     Inf.Id_Doc_Header = t.Doc_Rout_Id '
                                                    + ' Join Stp.v_Doc_Resolution_Results r '
                                                    + ' On     r.Id_Doc_Resolution_Result = t.Stp_Doc_Resolution_Result_Id '
                                                    + ' Where  r.Result_Value = -1 '
                                                      + ' and t.Doc_Rout_Id In ( Select flt.Doc_Header_Id'
                                                      + #13#10 + 'From ('
                                                      + Copy( AnsiUpperCase(((ActivePageFrame.ViewFrame as TFrame_TechProc_List).Db_Info as TOracleDataSet).SQL.Text),
                              Pos('/*FROM START*/', AnsiUpperCase(((ActivePageFrame.ViewFrame as TFrame_TechProc_List).Db_Info as TOracleDataSet).SQL.Text))-1,
                              Pos('/*FROM END*/', AnsiUpperCase(((ActivePageFrame.ViewFrame as TFrame_TechProc_List).Db_Info as TOracleDataSet).SQL.Text)) + 13 -
                              Pos('/*FROM START*/', AnsiUpperCase(((ActivePageFrame.ViewFrame as TFrame_TechProc_List).Db_Info as TOracleDataSet).SQL.Text)) )
                              + ') flt )';
    if V_In_Params.DynVar[ 'Columns' ].IsNull
    Then
    Begin
      V_Result_Params.DynVar[ 'Columns' ].AsString := '<0>Rollback</0>'
                                                        + '<end>';
      V_Result_Params.DynVar[ 'Titles' ].AsString := '<0>Отказы</0>'
                                                        + '<end>';
    End;
    {$EndRegion 'Формирование списка привязанных инструментов'}
  End
  Else If v_In_Params.DynVar[ 'Find' ].AsString = 'APPR_IN'
  Then
  Begin
    {$Region 'Формирование списка привязанных инструментов'}
    V_Result_Params.DynVar['SQL'].AsString :=  ' Select t.Point_Name||'' (''||ps.Dep_SName||'')'' Appr_In '
                                                      + ' From   Src.v_Doc_Rout_Points t '
                                                      + ' Left   Join Src.V_Doc_Routs r '
                                                      + ' On     r.Doc_Header_Id = t.Doc_Rout_Id '
                                                      + ' Join (Select p.Id_Doc_Rout_Point, '
                                                      + '	(Case '
                                                      + '	When Min(Case '
                                                      + '					When cp.Result_Date Is Null '
                                                      +	'						Then to_Date(''01.01.0001'') '
                                                      +	'						Else cp.Result_Date '
                                                      +	'					End) = to_Date(''01.01.0001'') '
                                                      +	'	Then Null '
                                                      +	' Else Min(cp.Result_Date) '
                                                      +	'	End) Date_In '
                                                      + ' From   Src.v_Doc_Rout_Points p '
                                                      +	' Left   Join Src.v_Doc_Rout_Point_Cnnctns c '
                                                      +	' On     c.C_DOC_ROUT_POINT_ID = p.Id_Doc_Rout_Point '
                                                      +	' Left   Join Src.v_Doc_Rout_Points cp '
                                                      +	' On     cp.Id_Doc_Rout_Point = c.P_DOC_ROUT_POINT_ID '
                                                      +	' And cp.Stp_Doc_Resolution_Result_Id Not In (0, -1) '
                                                      +	' Group  By p.Id_Doc_Rout_Point) s '
                                                      + ' On  s.Id_Doc_Rout_Point = t.Id_Doc_Rout_Point '
                                                      + ' And (Case '
                                                      + ' When s.Date_In Is Not Null '
                                                      + ' And t.Result_Date Is Null '
                                                      + ' Then 1 '
                                                      + ' When Instr(t.Point_Position, ''1.'') <> 0 '
                                                      + ' And r.Date_Start_Route Is Not Null '
                                                      + ' And t.Result_Date Is Null '
                                                      + ' Then 1 '
                                                      + ' Else 0 '
                                                      + ' End) = 1 '
                                                      + ' Left   Join (Select Distinct ps.Doc_Rout_Point_Id, dep.dep_Code, dep.Dep_Sname '
                                                      + ' From   Src.v_Doc_Rout_Point_Pstns ps '
                                                      +	' Left   Join Src.v_Doc_Rout_Point_Pstn_Ds psd '
                                                      +	' On     psd.Doc_Rout_Point_Pstn_Id = ps.Id_Doc_Rout_Point_Pstn '
                                                      +	' Left   Join Stp.v_Dep_Mmbr_Pstns dps '
                                                      +	' On     dps.Id_dep_Mmbr_Pstn = ps.Dep_Mmbr_Pstn_Id '
                                                      +	' Left   Join Stp.v_Deps dep '
                                                      +	' On     dep.id_dep = Psd.Dep_Id '
                                                      +	'  			And Nvl(dep.Date_Effective, Sysdate) >= Sysdate) ps '
                                                      + ' On     ps.Doc_Rout_Point_Id = t.Id_Doc_Rout_Point '
                                                      + ' Where  t.Doc_Rout_Id In ( Select flt.Doc_Header_Id'
                                                      + #13#10 + 'From ('
                                                      + Copy( AnsiUpperCase(((ActivePageFrame.ViewFrame as TFrame_TechProc_List).Db_Info as TOracleDataSet).SQL.Text),
                              Pos('/*FROM START*/', AnsiUpperCase(((ActivePageFrame.ViewFrame as TFrame_TechProc_List).Db_Info as TOracleDataSet).SQL.Text))-1,
                              Pos('/*FROM END*/', AnsiUpperCase(((ActivePageFrame.ViewFrame as TFrame_TechProc_List).Db_Info as TOracleDataSet).SQL.Text)) + 13 -
                              Pos('/*FROM START*/', AnsiUpperCase(((ActivePageFrame.ViewFrame as TFrame_TechProc_List).Db_Info as TOracleDataSet).SQL.Text)) )
                              + ') flt )'
                              + ' Order  By t.Point_Position ';
    if V_In_Params.DynVar[ 'Columns' ].IsNull
    Then
    Begin
      V_Result_Params.DynVar[ 'Columns' ].AsString := '<0>Appr_Step</0>'
                                                        + '<end>';
      V_Result_Params.DynVar[ 'Titles' ].AsString := '<0>Отказы</0>'
                                                        + '<end>';
    End;
    {$EndRegion 'Формирование списка привязанных инструментов'}
  End
  else
  begin
    OutputSQlStrings := TStringList.Create;
    ResourceStream := TResourceStream.Create(Hinstance, v_In_Params.DynVar['Find'].AsString, Pchar('TXT'));
    if ResourceStream<>Nil
    then
    begin
      try
        OutputSQlStrings.LoadFromStream(ResourceStream);
        for i := 1 to 4 do
        begin
          case i of
             1:begin LookingConst:='Filter'; DefaultConstValue:='(1=1)' end;
             2:begin LookingConst:='Fields'; DefaultConstValue:='*' end;
             3:begin LookingConst:='KeywordFilter'; DefaultConstValue:='(1=1)' end;
             4:begin LookingConst:='Group'; DefaultConstValue:='' end;
          end;

          if Pos(Format('/*Begin%s*/', [LookingConst]), OutputSQlStrings.Text)<>0
          then
          begin
            if v_In_Params.DynVar[LookingConst].IsNull then v_In_Params.DynVar[LookingConst].AsString:=DefaultConstValue;
            Filter_Before := Copy(OutputSQlStrings.Text, 0,
                                  Pos(Format('/*Begin%s*/', [LookingConst]), OutputSQlStrings.Text)-1);
            Filter_After := Copy(OutputSQlStrings.Text,
                                 Pos(Format('/*End%s*/', [LookingConst]), OutputSQlStrings.Text)+Length(Format('/*End%s*/', [LookingConst])),
                                 Length(OutputSQlStrings.Text));
            OutputSQlStrings.Text:=Filter_Before
                                   + v_In_Params.DynVar[LookingConst].AsString
                                   + Filter_After;
          end;
        end;

        V_Result_Params.DynVar['SQL'].AsString := OutputSQlStrings.Text;

        //Clipboard.AsText:=V_Result_Params.DynVar['SQL'].AsString ;

        if v_In_Params.DynVar['Columns'].IsNull
        Then
        Begin
          V_Result_Params.DynVar['Columns'].AsString := Copy(V_Result_Params.DynVar['SQL'].AsString,
                                                 Pos('/*BeginColumns', V_Result_Params.DynVar['SQL'].AsString) + Length('/*BeginColumns'),
                                                 Pos('EndColumns*/', V_Result_Params.DynVar['SQL'].AsString)-(Pos('/*BeginColumns', V_Result_Params.DynVar['SQL'].AsString) + Length('/*BeginColumns')));
          V_Result_Params.DynVar['Titles'].AsString := Copy(V_Result_Params.DynVar['SQL'].AsString,
                                                Pos('/*BeginTitles', V_Result_Params.DynVar['SQL'].AsString) + Length('/*BeginTitles'),
                                                Pos('EndTitles*/', V_Result_Params.DynVar['SQL'].AsString) - (Pos('/*BeginTitles', V_Result_Params.DynVar['SQL'].AsString) + Length('/*BeginTitles')));
        End;
      finally
        OutputSQlStrings.Free;
        ResourceStream.Free;
      end;
    end;
  end;

  {$EndRegion 'Списки'}
  {if User_Admin
  then
    Clipboard.AsText := V_Result_Params.DynVar['V_SQL_Text'].AsString;}
  //ShowMessage(V_Result_Params.DynVar['V_SQL_Text'].AsString);
  Result := V_Result_Params;
end;

Function TForm_Tech_Proc_Main.F_Gen_Chose_Form(V_In_Params: TDynVarsEh): TDynVarsEh;
var
   V_Inner_Params,
   V_Out_Params: TDynVarsEh;
Begin
  V_Inner_Params := F_Gen_SQL_Text_For_Chs_Form( v_In_Params );
  V_Out_Params := Gen_Chs_Data_Mod.DM_Gen_Chs.F_Gen_Chose_Form( V_Inner_Params, Tp_Data_Mode.Tp_Dm.MemT_Buffer );
  Result := V_Out_Params;
End;

Procedure TForm_Tech_Proc_Main.P_Open_Doc_Info( DocHeaderId: Integer;
                                                DocViewState: TDocInfoEditStates );
Var
  In_Doc_Id_Indx, i: Integer;
  NewDoc: TMemoryRecordEh;
  GlobalVarName, InfoFieldName: String;
  InfoDataSet: TDataSet;
  ActivePageFrame: TPageFrame;
begin
  ActivePageFrame := FindOpenedFrame(Page_Control.ActivePage);
  with TForm_Doc_Info.Create(Self, DocHeaderId, DocViewState)
  do
  begin
    try
      case DocViewState of
        dsInsert:
        Begin
          If ShowModal = mrOk
          Then
          Begin
            with (FindOpenedFrame('_Main_').ViewFrame as TFrame_TechProc_List)
            do
            begin
              Db_Info.Refresh;
              Db_Appr.Refresh;

              If Grid_Docs_List.SearchPanel.SearchingText <> ''
              then
              begin
                Grid_Docs_List.SearchPanel.SearchingText := '';
                Grid_Docs_List.SearchPanel.ApplySearchFilter;
              end;
              Db_Info.Locate( 'DOC_HEADER_ID', VarArrayOf([ Db_Doc_Info.FieldByName('DOC_HEADER_ID').AsInteger]), [ loPartialKey ] );
              P_Open_Doc(Grid_Docs_List);
            end;
          End;
        End;
        dsUpdate, dsInternalSign, dsNewModif:
        Begin
          if ActivePageFrame.ViewFrame is TFrame_TechProc_List
          then
            InfoDataSet := (ActivePageFrame.ViewFrame as TFrame_TechProc_List).Db_Info
          else if (ActivePageFrame.ViewFrame is TFrame_TechProc)
          then
            InfoDataSet := (ActivePageFrame.DataFrame as TFrameData_TechProc).Db_Doc_Info
          else if (ActivePageFrame.ViewFrame is TFrame_Tp_TechProc_DocDetList)
          then
            InfoDataSet := (ActivePageFrame.DataFrame as TFrame_Tp_TechProc_DocDetListData).Db_Doc_Info;

          if Not User_Admin
          Then
          Begin
            If (User_lnum <> InfoDataSet.FieldByName( 'AUTHOR_LNUM' ).AsInteger)
                and (DocViewState = dsUpdate)
            Then
            Begin
              MessageDlg( 'Редактировать информацию документа может только автор!',
                          mtError,
                          [ mbOK ],
                          5 );
              Exit;
            End;
          End;

          DocId := InfoDataSet.FieldByName('Id').AsInteger;

          If ShowModal = mrOk
          Then
          Begin
            With (FindOpenedFrame('_Main_').ViewFrame as TFrame_TechProc_List)
            Do
            Begin
              Grid_Docs_List.SaveBookmark;
              Db_Info.Refresh;
              Grid_Docs_List.RestoreBookmark;

              if DocViewState=dsNewModif
              then
                If Db_Info.Locate('Doc_Header_Id', VarArrayOf([Db_Doc_Info.FieldByName('DOC_HEADER_ID').AsInteger]), [ loPartialKey ] )
                Then
                  P_Open_Doc(Grid_Docs_List);
            End;
          End;
        End
      end;
    finally
      Free;
    end;

  end;

end;

{$ENDRegion 'Вспомогательные функции'}

{ TPageFrame }

constructor TPageFrame.Create(AOwner: TComponent; ViewFrameClass: TClass; DocHeaderId: Integer; ObjectName: String);
begin
  inherited Create;
  FOwner := AOwner;
  FName := ObjectName;
  FParentPage := TTabSheet.Create(AOwner);
  if ViewFrameClass=TFrame_TechProc
  then
  begin
    FViewFrame := TFrame_TechProc.Create(AOwner, DocHeaderId);
    FDataFrame := (FViewFrame as TFrame_TechProc).DataFrame;
  end
  else if ViewFrameClass=TFrame_Tp_TechProc_DocDetList
  then
  begin
    FViewFrame := TFrame_Tp_TechProc_DocDetList.Create(AOwner, DocHeaderId);
    FDataFrame := TFrame_Tp_TechProc_DocDetListData.Create(AOwner, DocHeaderId);
  end
  else if ViewFrameClass=TFrame_TechProc_List
  then
  begin
    FViewFrame := TFrame_TechProc_List.Create(AOwner, ObjectName);
    FDataFrame := Nil;
  end
  else if ViewFrameClass=TFrame_Tp_TechProcComplect
  then
  begin
    FViewFrame := TFrame_Tp_TechProcComplect.Create(AOwner, DocHeaderId);
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

end.
