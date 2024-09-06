unit Tp_TechProc_Frame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, OracleData, Oracle,
  Vcl.Menus, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh, DBVertGridsEh,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.WinXCtrls,
  MemTableDataEh, MemTableEh, DataDriverEh, Tp_TechProc_DataFrame, Vcl.ToolWin,
  Tp_Setup_Time_Calc, System.Actions, Vcl.ActnList, RTTI, TypInfo;

type
  TFrame_TechProc = class(TFrame)
    SplitView1: TSplitView;
    Grid_Doc_Parts: TDBGridEh;
    Panel_Part_Items: TPanel;
    Splitter2: TSplitter;
    Panel_Oper_Items: TPanel;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Panel_Oper_Time: TPanel;
    GB_NORMA_TIME: TGroupBox;
    Btn_NormTimeHist: TButton;
    Btn_NormTimePrams: TButton;
    Grid_Time_Norms: TDBVertGridEh;
    Panel_Oper_Prms: TPanel;
    GB_OPER_PARAM: TGroupBox;
    E_OBOR: TDBEditEh;
    E_DET_MAT: TDBEditEh;
    Grid_Oper_Params: TDBGridEh;
    GB_TARA: TGroupBox;
    E_TARA_NUM: TDBEditEh;
    E_TARA_NAME: TDBEditEh;
    Panel_Opers: TPanel;
    Grid_Opers: TDBGridEh;
    E_IOT: TDBEditEh;
    E_OPER_PRIM: TDBEditEh;
    E_Oper_TT: TDBEditEh;
    E_TT: TDBEditEh;
    Panel_Oper_Per_Items: TPanel;
    Splitter5: TSplitter;
    Panel_Op_Per_Prms: TPanel;
    GB_PER_PARAM: TGroupBox;
    Grid_Per_Params: TDBGridEh;
    Panel_Op_Pers: TPanel;
    Grid_Oper_Per: TDBGridEh;
    E_OPER_PER_PRIM: TDBEditEh;
    E_TT_PER: TDBEditEh;
    Btn_Hide_Deps: TButton;
    StatusBar1: TStatusBar;
    Main_M_Tech_Proc: TMainMenu;
    Main_M_Tech_Proc_Btn_Print: TMenuItem;
    Main_M_Tech_Proc_Btn_See: TMenuItem;
    Main_M_Tech_Proc_Btn_See_W_Files: TMenuItem;
    Main_M_Tech_Proc_Btn_Export: TMenuItem;
    Main_M_Tech_Proc_Btn_Export_In_PDF: TMenuItem;
    Main_M_Tech_Proc_Btn_Export_In_Excel: TMenuItem;
    Main_M_Tech_Proc_Btn_Copy: TMenuItem;
    Main_M_Tech_Proc_Btn_Copy_Opers_From_Doc: TMenuItem;
    Main_M_Tech_Proc_Btn_Spr: TMenuItem;
    Main_M_Tech_Proc_Btn_Spr_Opers: TMenuItem;
    Main_M_Tech_Proc_Btn_Spr_Tara: TMenuItem;
    Main_M_Tech_Proc_Btn_Spr_Det: TMenuItem;
    Main_M_Tech_Proc_Btn_Save: TMenuItem;
    Main_M_Tech_Proc_Btn_Exit: TMenuItem;
    Pop_M_Opers: TPopupMenu;
    Pop_M_Opers_Btn_Instr_Cards: TMenuItem;
    Pop_M_Opers_Btn_Lit_Params: TMenuItem;
    Pop_M_Opers_Btn_Tt_Params: TMenuItem;
    Pop_M_Opers_Btn_Insert: TMenuItem;
    Pop_M_Opers_Btn_Files: TMenuItem;
    Pop_M_Opers_Btn_Paste_Oper: TMenuItem;
    Pop_M_Opers_Btn_Cut_Oper: TMenuItem;
    Pop_M_Opers_Btn_Copy_Oper: TMenuItem;
    Pop_M_Opers_Btn_Delete: TMenuItem;
    Pop_M_Oper_Per: TPopupMenu;
    Pop_M_Oper_Per_Btn_Text: TMenuItem;
    Pop_M_Oper_Per_Btn_Spr_Per: TMenuItem;
    Pop_M_Oper_Per_Btn_Det: TMenuItem;
    Pop_M_Oper_Per_Btn_Mat: TMenuItem;
    Pop_M_Oper_Per_Btn_Ins: TMenuItem;
    Pop_M_Oper_Per_Btn_Osn: TMenuItem;
    Pop_M_Oper_Per_Btn_Insert: TMenuItem;
    Pop_M_Oper_Per_Btn_Delete: TMenuItem;
    Pop_M_Doc_Parts: TPopupMenu;
    Pop_M_Doc_Parts_Btn_Insert: TMenuItem;
    Pop_M_Doc_Parts_Btn_Delete: TMenuItem;
    Pop_M_Doc_Parts_Btn_Correct_Tech_Mar: TMenuItem;
    Q_Get_Det_Norm_Trud: TOracleQuery;
    Db_Doc_Parts_Temp: TOracleDataSet;
    Db_Doc_Parts_TempID: TFloatField;
    Db_Doc_Parts_TempID_DOC_TP: TFloatField;
    Db_Doc_Parts_TempCEH_ID_PAR: TFloatField;
    Db_Doc_Parts_TempEDIT: TFloatField;
    Db_Doc_Parts_TempCEH_CODE_PAR: TStringField;
    Db_Doc_Parts_TempROW_NUM_PAR: TFloatField;
    Db_Doc_Parts_TempCEH_ID_REC: TIntegerField;
    Db_Doc_Parts_TempCEH_CODE_REC: TStringField;
    Db_Doc_Parts_TempROW_NUM_REC: TIntegerField;
    Data_Doc_Parts_Temp: TDataSource;
    Q_Update_Doc_Det_Mar: TOracleQuery;
    Q_Clear_Doc_Parts_Temp: TOracleQuery;
    Control_Panel: TPanel;
    Pm_Print: TPopupMenu;
    Pm_Print_See: TMenuItem;
    Pm_Print_See_W_Files: TMenuItem;
    Pm_Print_Export: TMenuItem;
    Pm_Print_Export_Excel: TMenuItem;
    Pm_Print_Export_PDF: TMenuItem;
    Btn_ChronCards: TButton;
    E_TechProcSomeInformation: TDBEditEh;
    ActionList1: TActionList;
    Act_SingDoc: TAction;
    Act_SaveDoc: TAction;
    Act_CopyDoc: TAction;
    Act_PrintDoc: TAction;
    ToolBar1: TToolBar;
    Tb_Save: TToolButton;
    Tb_CopyDoc: TToolButton;
    Tb_Print: TToolButton;
    Tb_SignDoc: TToolButton;
    ToolButton5: TToolButton;
    Tb_LockStatus: TToolButton;
    Splitter1: TSplitter;
    E_Addit_Num: TEdit;
    Splitter6: TSplitter;
    E_Addit_Name: TEdit;
    ToolButton1: TToolButton;
    Btn_DeleteNorm: TButton;
    procedure Grid_Doc_PartsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1Columns0UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure E_OBORExit(Sender: TObject);
    procedure E_DET_MATExit(Sender: TObject);
    procedure E_DET_MATKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_OBORKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Grid_OpersExit(Sender: TObject);
    procedure Pop_M_Opers_Btn_DeleteClick(Sender: TObject);
    procedure Pop_M_Oper_Per_Btn_DeleteClick(Sender: TObject);
    procedure Main_M_Tech_Proc_Btn_Spr_DetClick(Sender: TObject);
    procedure Main_M_Tech_Proc_Btn_Spr_OpersClick(Sender: TObject);
    procedure E_TARA_NUMExit(Sender: TObject);
    procedure E_TARA_NUMKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_TTDblClick(Sender: TObject);
    procedure E_OPER_PRIMDblClick(Sender: TObject);
    procedure E_OPER_PER_PRIMDblClick(Sender: TObject);
    procedure E_TT_PERDblClick(Sender: TObject);
    procedure Pop_M_OpersPopup(Sender: TObject);
    procedure Pop_M_Opers_Btn_FilesClick(Sender: TObject);
    procedure Pop_M_Opers_Btn_Tt_ParamsClick(Sender: TObject);
    procedure Btn_NormTimePramsClick(Sender: TObject);
    procedure GRID_OPERSColumns5UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Btn_NormTimeHistClick(Sender: TObject);
    procedure DBGridEh3Columns0UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Doc_PartsExit(Sender: TObject);
    procedure Pop_M_Doc_Parts_Btn_DeleteClick(Sender: TObject);
    procedure Pop_M_Doc_Parts_Btn_InsertClick(Sender: TObject);
    procedure Pop_M_Oper_Per_Btn_InsertClick(Sender: TObject);
    procedure Pop_M_Doc_PartsPopup(Sender: TObject);
    procedure Pop_M_Opers_Btn_InsertClick(Sender: TObject);
    procedure Main_M_Tech_Proc_Btn_Copy_Opers_From_DocClick(Sender: TObject);
    procedure Grid_Oper_PerExit(Sender: TObject);
    procedure Pop_M_Opers_Btn_Copy_OperClick(Sender: TObject);
    procedure Pop_M_Opers_Btn_Paste_OperClick(Sender: TObject);
    procedure E_TTEditButtons0Click(Sender: TObject; var Handled: Boolean);
    procedure E_OPER_PRIMEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure E_OPER_PER_PRIMEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure E_TT_PEREditButtons0Click(Sender: TObject; var Handled: Boolean);
    procedure E_OBOREditButtons0Click(Sender: TObject; var Handled: Boolean);
    procedure E_DET_MATEditButtons0Click(Sender: TObject; var Handled: Boolean);
    procedure E_TARA_NUMEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGrid_Oper_PerColumns4EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGrid_Oper_PerColumns4EditButtons1Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGrid_Oper_PerColumns4EditButtons2Click(Sender: TObject;
      var Handled: Boolean);
    procedure E_TTEditButtons1Click(Sender: TObject; var Handled: Boolean);
    procedure E_TARA_NUMEditButtons1Click(Sender: TObject;
      var Handled: Boolean);
    procedure Pop_M_Oper_Per_Btn_TextClick(Sender: TObject);
    procedure Grid_Oper_PerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Pop_M_Doc_Parts_Btn_Correct_Tech_MarClick(Sender: TObject);
    procedure DBGrid_OpersColumns7EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Pop_M_Oper_Per_Btn_Spr_PerClick(Sender: TObject);
    procedure Grid_OpersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Pop_M_Opers_Btn_Cut_OperClick(Sender: TObject);
    procedure Grid_Oper_ParamsColumns1OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure Grid_Oper_ParamsColumns1CloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Oper_ParamsColumns2UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Oper_ParamsColumns2GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure Btn_Hide_DepsClick(Sender: TObject);
    procedure EditControl_OpenDropDownForm(EditControl: TControl; Button: TEditButtonEh;
      var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure EditControl_CloseDropDownForm(EditControl: TControl;
      Button: TEditButtonEh; Accept: Boolean; DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure FormResize(Sender: TObject);
    procedure Grid_Time_NormsTimeRowsUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Time_NormsRows5EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Grid_Time_NormsProfRowsUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Pop_M_Oper_Per_Btn_Per_ItemsClick(Sender: TObject);
    procedure DATA_OPER_PERUpdateData(Sender: TObject);
    procedure Pop_M_Opers_Btn_Instr_CardsClick(Sender: TObject);
    procedure Grid_Per_ParamsColumns2GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure Grid_Per_ParamsColumns2UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_OpersGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Grid_Oper_PerGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Grid_Oper_ParamsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Grid_Per_ParamsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Pm_Print_SeeClick(Sender: TObject);
    procedure Pm_Print_See_W_FilesClick(Sender: TObject);
    procedure Pm_Print_Export_PDFClick(Sender: TObject);
    procedure Pm_Print_Export_ExcelClick(Sender: TObject);
    procedure Grid_Time_NormsGetCellParams(Sender: TObject; Row: TFieldRowEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Grid_Time_NormsAdvDrawDataCell(Sender: TCustomDBVertGridEh; Cell,
      AreaCell: TGridCoord; Row: TFieldRowEh; const ARect: TRect;
      var Params: TRowCellParamsEh; var Processed: Boolean);
    procedure Btn_ChronCardsClick(Sender: TObject);
    function Grid_OpersMoveRecords(Sender: TObject; BookmarkList: TBMListEh;
      ToRecNo, TreeLevel: Integer; CheckOnly: Boolean): Boolean;
    procedure Grid_OpersMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Act_SingDocExecute(Sender: TObject);
    procedure Act_SaveDocExecute(Sender: TObject);
    procedure Act_PrintDocExecute(Sender: TObject);
    procedure Act_CopyDocExecute(Sender: TObject);
    procedure Btn_DeleteNormClick(Sender: TObject);
  private
    { Private declarations }
    FGridRecordMoving: Boolean;
    FDocHeaderId: Integer;
    FDataFrame: TFrameData_TechProc;
  public
    { Public declarations }

    /// <summary> Блокировка / Разблокировка редактирования документа </summary>
    /// <param name="v_Param"> String; <br/> Параметр 'LOCK' - блокир. 'UNLOCK' - разблок.; </param>
    procedure Change_Doc_Edit(v_Param: String);

    /// <summary> Копирование операций с переходами и параметрами </summary>
    /// <param name="DBGridEh"> TDBGridEh; </param>
    /// <param name="cpCut"> Bool;  </param>
    Procedure P_Copy_Opers_In_Buffer( DBGridEh: TDBGridEh; cpCut: Bool );

    /// <summary> Вставка операций из буфера </summary>
    Procedure P_Insert_Opers_From_Buffer( DbGridEh: TDBGridEh );
    //
    Procedure P_Create_Copy_Doc ( v_Params: TDynVarsEh );
    Procedure P_Open_TechProc;
    procedure Free;
    function F_Save_TechProc(Sender: TObject): Integer;
    property DataFrame: TFrameData_TechProc read FDataFrame;
    constructor Create(AOwner: TComponent; InDocHeaderId: Integer);
  end;

implementation

{$R *.dfm}
uses
Udm_Main,
Tp_Main_Form,
Gen_Chs_Dd_Form,
Tp_Memo_Text_Drp_D_Form,
Tp_Per_Instr_Card,
Tp_TechProc_TimeNormHist,
Tp_Ins_For_Oper_Per_Form,
Tp_Det_For_Oper_Per_Form,
Tp_Mat_For_Oper_Per_Form,
Tp_Osn_For_Oper_Per_Form,
Tp_TechProc_ChronCards,
Tp_Oper_Per_Text_Form,
Tp_Copy_Tech_Proc_Form,
Tp_Oper_Tk_Param_Form,
Tp_Oper_Files_Form,
Tp_Detail_Trud_Form,
Tp_Chs_Oper_For_Copy,
Tp_Data_Mode;

procedure TFrame_TechProc.DATA_OPER_PERUpdateData(Sender: TObject);
begin
  StatusBar1.Panels[3].Text := DateTimeToStr(Now());
end;

procedure TFrame_TechProc.DBGridEh1Columns0UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  var
  v_Det_Mat_Id, v_Old_Oper_Id: Integer;
  v_In_Params: TDynVarsEh;
  v_Out_Oper_Params: TDynVarsEh;
  v_Out_Det_Mat_Params: TDynVarsEh;
begin
  With Grid_Opers.DataSource.DataSet
  Do
  Begin
    if ( ( FieldByName('OPER_ID').IsNull )
          And ( ( Text <> '' ) Or ( VarToStr( Value ) <> '' ) ) )
       Or ( ( Not FieldByName('OPER_ID').IsNull)
             And ( ( Text <> '' ) Or ( VarToStr( Value ) <> '' ) )
             And ( ( Text <> FieldByName('OPER_NAME').AsString )
                    Or ( VarToStr( Value ) <> FieldByName('OPER_NAME').AsString ) ) )
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'OPERS';
      if UseText
      Then
        v_In_Params.DynVar[ 'v_Keyword' ].AsString := Text
      Else
        v_In_Params.DynVar[ 'v_Keyword' ].AsString := VarToStr( Value );
      v_Out_Oper_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      if v_Out_Oper_Params <> Nil
      Then
      Begin
        Edit;
        Text :=  v_Out_Oper_Params.DynVar[ 'NAME_OPER' ].AsString;
        FieldByName('OPER_ID').AsInteger := v_Out_Oper_Params.DynVar[ 'OPER_ID' ].AsInteger;
        FieldByName('IOT').AsString := v_Out_Oper_Params.DynVar[ 'IOT_OPER' ].AsString;
        FieldByName('OPER_TT').AsString := v_Out_Oper_Params.DynVar[ 'TT_OPER' ].AsString;
        if (( Pos ('ОТРЕЗН', v_Out_Oper_Params.DynVar[ 'NAME_OPER' ].AsString) <> 0 )
                  Or ( Pos ('ТОКАР', v_Out_Oper_Params.DynVar[ 'NAME_OPER' ].AsString) <> 0 ))
            And (Self.DataFrame.Db_Doc_Info.FieldByName('DOC_TYPE').AsInteger = 1)
        Then
        Begin
          v_In_Params.Clear;
          v_In_Params.DynVar[ 'Find' ].AsString := 'DET_MAT';
          v_In_Params.DynVar[ 'V_Keyword' ].AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('DET_ID').AsInteger;
          v_Out_Det_Mat_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
          if v_Out_Det_Mat_Params <> Nil
          Then
          Begin
            FieldByName('MAT').AsInteger := v_Out_Det_Mat_Params.DynVar[ 'ID_MAT' ].AsInteger;
            FieldByName('MAT_NAME').AsString := v_Out_Det_Mat_Params.DynVar[ 'NAME_MAT' ].AsString;
          End;
        End;
      End;
    End
    Else if ( Not FieldByName('OPER_ID').IsNull )
             And ( Text = '' )
    Then
    Begin
      Edit;
      FieldByName('IOT').Clear;
      FieldByName('OPER_ID').Clear;
      FieldByName('OPER_TT').Clear;
    End;
  End;
end;

procedure TFrame_TechProc.GRID_OPERSColumns5UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  Text := AnsiUpperCase( Text );
end;

procedure TFrame_TechProc.DBGrid_OpersColumns7EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
  var
  v_Det_Mat_Id, v_Old_Oper_Id: Integer;
  v_In_Params: TDynVarsEh;
  v_Out_Oper_Params: TDynVarsEh;
  v_Out_Det_Mat_Params: TDynVarsEh;
begin
  v_Out_Oper_Params := DM_Main.F_Show_Modal_Form( 'Spravochnik_Of_Operations' );
  If v_Out_Oper_Params <> Nil
  Then
  Begin
    With Grid_Opers.DataSource.DataSet
    Do
    Begin
      Edit;
      FieldByName('OPER_NAME').AsString :=  v_Out_Oper_Params.DynVar[ 'NAME_OPER' ].AsString;
      FieldByName('OPER_ID').AsInteger := v_Out_Oper_Params.DynVar[ 'ID' ].AsInteger;
      if Not v_Out_Oper_Params.DynVar[ 'IOT_OPER' ].IsNull
      Then
        FieldByName('IOT').AsString := v_Out_Oper_Params.DynVar[ 'IOT_OPER' ].AsString;
      if Not v_Out_Oper_Params.DynVar[ 'TT_OPER' ].IsNull
      Then
        FieldByName('OPER_TT').AsString := v_Out_Oper_Params.DynVar[ 'TT_OPER' ].AsString;
      if (( Pos ('ОТРЕЗН', v_Out_Oper_Params.DynVar[ 'NAME_OPER' ].AsString) <> 0 )
              Or ( Pos ('ТОКАР', v_Out_Oper_Params.DynVar[ 'NAME_OPER' ].AsString) <> 0 ))
            And (Self.DataFrame.Db_Doc_Info.FieldByName('DOC_TYPE').AsInteger = 1)
      Then
      Begin
        v_In_Params.Clear;
        v_In_Params.DynVar[ 'Find' ].AsString := 'DET_MAT';
        v_In_Params.DynVar[ 'V_Keyword' ].AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('DET_ID').AsInteger;
        v_Out_Det_Mat_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
        if v_Out_Det_Mat_Params <> Nil
        Then
        Begin
          FieldByName('MAT').AsInteger := v_Out_Det_Mat_Params.DynVar[ 'ID_MAT' ].AsInteger;
          FieldByName('MAT_NAME').AsString := v_Out_Det_Mat_Params.DynVar[ 'NAME_MAT' ].AsString;
        End;
      End;
    End;
  End;
end;

procedure TFrame_TechProc.Grid_OpersExit(Sender: TObject);
  Var
    I: Integer;
    recordCounter: Integer;
begin
{ Try (Sender as TDBGridEh).DataSource.DataSet.Post Except End;

 if (Sender as TDBGridEh).DataSource.DataSet.Active
  Then
  Begin
    recordCounter := 0;
    With ((Sender as TDBGridEh).DataSource.DataSet as TMemTableEh)
    Do
    Begin
      DisableControls;
      Try
        With RecordsView
        Do
        Begin
          For I := 0 to Count - 1
          Do
          Begin
            If (VarToStr(Rec[i].DataValues['NOMOPER', dvvValueEh]) <> IntToStr(i+1))
            then
            begin
              Rec[i].DataValues['NOMOPER', dvvValueEh] := (i+1);
              if VarToStr(Rec[i].DataValues['DOC_TP_VERS_ID', dvvValueEh]) <> TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString
              then
              begin
                Rec[i].DataValues['DOC_TP_VERS_ID', dvvValueEh] := TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString;
                Rec[i].DataValues['Rw_Status', dvvValueEh] := 'updated';
              end;

              if Rec[i].UpdateStatus = usUnmodified
              Then
                Rec[i].UpdateStatus := usModified
            end;
          End;

        End;
      Finally
        EnableControls;
      End;
    End;
  End;   }
end;

procedure TFrame_TechProc.Grid_OpersGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Grid_Opers.DataSource.DataSet as TMemTableEh
  do
  begin
    If Not IsEmpty
    Then
    Begin
      if (FieldByName('DOC_TP_VERS_ID').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString)
         And (FieldByName('ID_DOC_TP').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id').AsString)
      then
      begin
         if (FieldByName('Rw_Status').AsString = 'deleted')
        Then
        Begin
          Background := $00B5B3FF;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Status').AsString = 'inserted')
        Then
        Begin
          Background := $00A8FFC5;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Status').AsString = 'updated')
        Then
        Begin
          Background := $00A7EDFE;
          AFont.Color := clWindowText;
        end
        else if (FieldByName('Rw_vers').AsString = 'old_version')
        Then
        Begin
          Background := clMenu;
          AFont.Color := clGray;
        End
        else
        begin
          Background := clWindow;
          AFont.Color := clWindowText;
        end;
      end
      else if (FieldByName('Rw_vers').AsString = 'old_version')
      Then
      Begin
        Background := clMenu;
        AFont.Color := clGray;
      End
      else
      begin
        Background := clWindow;
        AFont.Color := clWindowText;
      end;
    End;
  End;
end;

procedure TFrame_TechProc.Grid_OpersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If ( Key = 67 (* C *) )
      And ( ssCtrl In Shift )
  Then
    P_Copy_Opers_In_Buffer( Grid_Opers, False );

  If ( Key = 88 (* X *) )
      And ( ssCtrl In Shift )
  Then
    P_Copy_Opers_In_Buffer( Grid_Opers, True );


  If ( Key = 86 (* V *) )
      And ( ssCtrl In Shift )
  Then
    P_Insert_Opers_From_Buffer( Grid_Opers );
end;

procedure TFrame_TechProc.Grid_OpersMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  var
    i: Integer;
    UserInsertField, NumPosField: String;
begin
  if (FGridRecordMoving)
     And (Button=mbLeft)
  then
  begin
    //ShowMessage('Строка передвинута!');
    with ((Sender as TDBGridEh).DataSource.DataSet as TMemTableEh)
    do
    begin
      if FindField('User_Insert')<>Nil
      then
        UserInsertField := 'User_Insert'
      else if FindField('I_User')<>Nil
      then
        UserInsertField := 'I_User';

      if Sender=Grid_Doc_Parts
      then
        NumPosField := 'Row_Num'
      else if Sender=Grid_Opers
      then
        NumPosField := 'Nomoper'
      else if Sender=Grid_Oper_Per
      then
        NumPosField := 'Nom_Per';

      with RecordsView
      do
      begin
        for i := 0 to Count-1
        do
        begin
          if Rec[i].DataValues[NumPosField, dvvValueEh] <> i+1
          then
          begin
            Rec[i].Edit;
            Rec[i].DataValues[NumPosField, dvvValueEh] := i+1;
            Rec[i].Post;
          end;
        end;
      end;
    end;
    FGridRecordMoving := False;
  end;
end;

function TFrame_TechProc.Grid_OpersMoveRecords(Sender: TObject;
  BookmarkList: TBMListEh; ToRecNo, TreeLevel: Integer;
  CheckOnly: Boolean): Boolean;
  var
    MovingRecord, ToRecord: TMemRecViewEh;
    MemTableEh: TMemTableEh;
    FromRecNo: Integer;
begin
  MemTableEh := (Sender as TDBGridEh).DataSource.DataSet as TMemTableEh;
  FromRecNo := MemTableEh.BookmarkToRecNo(BookmarkList[0]);
  MovingRecord := MemTableEh.RecordsView.RecordView[FromRecNo - 1];
  ToRecord := MemTableEh.RecordsView.RecordView[ToRecNo - 1];

  if MovingRecord <> ToRecord
  then
    FGridRecordMoving := True
  else if MovingRecord = ToRecord
  then
    FGridRecordMoving := False;

  Result := (Sender as TDBGridEh).DefaultMoveDataRows(BookmarkList, ToRecNo, TreeLevel, CheckOnly);
end;

procedure TFrame_TechProc.DBGrid_Oper_PerColumns4EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  Pop_M_Oper_Per_Btn_TextClick( Nil );
end;

procedure TFrame_TechProc.DBGrid_Oper_PerColumns4EditButtons1Click(Sender: TObject;
  var Handled: Boolean);
begin
   Pop_M_Oper_Per_Btn_Per_ItemsClick(Pop_M_Oper_Per_Btn_Ins);
end;

procedure TFrame_TechProc.DBGrid_Oper_PerColumns4EditButtons2Click(Sender: TObject;
  var Handled: Boolean);
Begin
   Pop_M_Oper_Per_Btn_Per_ItemsClick(Pop_M_Oper_Per_Btn_Osn);
end;

procedure TFrame_TechProc.Grid_Oper_PerExit(Sender: TObject);
Var
 i: Integer;
begin
{  Try (Sender as TDBGridEh).DataSource.DataSet.Post Except End;

  if ((Sender as TDBGridEh).DataSource.DataSet.Active)
      And (Not (Sender as TDBGridEh).DataSource.DataSet.IsEmpty)
  Then
  Begin
    With ((Sender as TDBGridEh).DataSource.DataSet as TMemTableEh)
    Do
    Begin
      DisableControls;
      Try
        With RecordsView
        Do
        Begin
          For I := 0 to Count - 1
          Do
          Begin
            If (VarToStr(Rec[i].DataValues['NOM_PER', dvvValueEh]) <> IntToStr(i + 1))
                //and (Rec[i].DataValues['Rw_Vers', dvvValueEh] <> 'deleted')
                //and (Rec[i].DataValues['Rw_Vers', dvvValueEh] <> 'old_version')
            Then
            Begin
              Rec[i].DataValues['NOM_PER', dvvValueEh] := (i+1);
              if VarToStr(Rec[i].DataValues['DOC_TP_VERS_ID', dvvValueEh]) <> TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString
              then
              begin
                Rec[i].DataValues['DOC_TP_VERS_ID', dvvValueEh] := TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString;
                Rec[i].DataValues['Rw_Status', dvvValueEh] := 'updated';
              end;
              if Rec[i].UpdateStatus = usUnmodified
              Then
                Rec[i].UpdateStatus := usModified
            End;
          End;
        End;
      Finally
        EnableControls;
      End;
    End;
  End;   }
end;

procedure TFrame_TechProc.Grid_Oper_PerGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Grid_Oper_Per.DataSource.DataSet as TMemTableEh
  do
  begin
    If Not IsEmpty
    Then
    Begin
      if (FieldByName('DOC_TP_VERS_ID').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString)
         And (FieldByName('DOK_IN').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id').AsString)
      then
      begin
         if (FieldByName('Rw_status').AsString = 'deleted')
        Then
        Begin
          Background := $00B5B3FF;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_status').AsString = 'inserted')
        Then
        Begin
          Background := $00A8FFC5;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_status').AsString = 'updated')
        Then
        Begin
          Background := $00A7EDFE;
          AFont.Color := clWindowText;
        End
        else if (FieldByName('Rw_vers').AsString = 'old_version')
        Then
        Begin
          Background := clMenu;
          AFont.Color := clGray;
        End
        Else
        Begin
          Background := clWindow;
          AFont.Color := clWindowText;
        End;
      end
      else if (FieldByName('Rw_vers').AsString = 'old_version')
      Then
      Begin
        Background := clMenu;
        AFont.Color := clGray;
      End
      Else
      Begin
        Background := clWindow;
        AFont.Color := clWindowText;
      End;
    End;
  End;
end;

procedure TFrame_TechProc.Grid_Oper_PerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If ( ssCtrl In Shift )
      And ( Key = $5A (* Z *) )
  Then
    ((Sender as TDBGridEh).DataSource.DataSet as TMemTableEh).RevertRecord;
end;

procedure TFrame_TechProc.Grid_Per_ParamsColumns2GetCellParams(
  Sender: TObject; EditMode: Boolean; Params: TColCellParamsEh);
begin
  With Grid_Per_Params.{(Sender as TDBGridEh)}DataSource.DataSet
  Do
  Begin
    if ( (FieldByName('TYPE_PARAM').AsString = 'choice_numeric')
        Or (FieldByName('TYPE_PARAM').AsString = 'choice_text') )
        And (FieldByName('PARAM_VALUE').IsNull)
    Then
    Begin
      Params.ReadOnly := True;
    End
    Else
    Begin
      Params.ReadOnly := False;
    End;
  End;
end;

procedure TFrame_TechProc.Grid_Per_ParamsColumns2UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
begin
  With (Grid_Per_Params.DataSource.DataSet as TMemTableEh)
  Do
  Begin
    if FieldByName('PARAM_ROW_ID').IsNull
    Then
      Abort;

    if Name = 'MemT_Per_Params'
    Then
    Begin
      If (FieldByName('ID_ROW_TP_PR_PRM').IsNull)
         And ( (Text <> '')
                Or (Value <> '') )
      Then
      Begin
        Edit;
        Self.DataFrame.Seq_Per_Params.Execute;
        FieldByName('ID_ROW_TP_PR_PRM').AsInteger := Self.DataFrame.Seq_Per_Params.FieldAsInteger(0);
        FieldByName('DOC_TP_VERS_ID').AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
        if FieldByName('Param_Value').IsNull
        then
          FieldByName('Rw_Vers').AsString := 'inserted'
        else
          FieldByName('Rw_Vers').AsString := 'updated'
      End;
    End;
  End;
end;

procedure TFrame_TechProc.Grid_Per_ParamsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Grid_Per_Params.DataSource.DataSet as TMemTableEh
  do
  begin
    If Not IsEmpty
    Then
    Begin
      if (FieldByName('DOC_TP_VERS_ID').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString)
         And (FieldByName('Doc_Tp_Id').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id').AsString)
      then
      begin
        if Column.FieldName = 'PARAM_VALUE'
        then
        begin
           if (FieldByName('Rw_Status').AsString = 'deleted')
          Then
          Begin
            Background := $00B5B3FF;
            AFont.Color := clWindowText;
          End
          Else if (FieldByName('Rw_Status').AsString = 'inserted')
                  And (Not FieldByName('Param_Value').IsNull)
          Then
          Begin
            Background := $00A8FFC5;
            AFont.Color := clWindowText;
          End
          Else if (FieldByName('Rw_Status').AsString = 'updated')
          Then
          Begin
            Background := $00A7EDFE;
            AFont.Color := clWindowText;
          End
          Else if (FieldByName('Rw_Vers').AsString = 'old_version')
          Then
          Begin
            Background := clMenu;
            AFont.Color := clGray;
          End
          Else
          Begin
            Background := clWindow;
            AFont.Color := clWindowText;
          End;
        end;
      end;
    End;
  End;
end;

procedure TFrame_TechProc.Grid_Oper_ParamsColumns1CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  If (DropDownForm.ModalResult = mrOk)
      And (DynParams <> Nil)
  Then
  Begin
    With Grid.DataSource.DataSet
    Do
    Begin
      Edit;
      FieldByName( 'PARAM_CH_ROW_ID' ).AsString := DynParams.DynVar['PRM_CH_ROW_ID'].AsString;
      FieldByName( 'PARAM_VALUE' ).AsString := DynParams.DynVar['VL_CH_PRM'].AsString;
      If Grid.DataSource = Self.DataFrame.Data_Oper_Params
      Then
      Begin
        If (FieldByName( 'ID_ROW_TP_OP_PRM' ).IsNull)
        Then
        Begin
          Self.DataFrame.Seq_Oper_Params.Execute;
          FieldByName( 'ID_ROW_TP_OP_PRM' ).AsInteger := Self.DataFrame.Seq_Oper_Params.FieldAsInteger(0);
          FieldByName('DOC_TP_VERS_ID').AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
          if FieldByName('Param_Value').IsNull
          then
            FieldByName('Rw_Vers').AsString := 'inserted'
          else
            FieldByName('Rw_Vers').AsString := 'updated'
        End;
      End
      Else if Grid.DataSource = Self.DataFrame.Data_Per_Params
      Then
      Begin
        If (FieldByName( 'ID_ROW_TP_PR_PRM' ).IsNull)
        Then
        Begin
          Self.DataFrame.Seq_Per_Params.Execute;
          FieldByName( 'ID_ROW_TP_PR_PRM' ).AsInteger := Self.DataFrame.Seq_Per_Params.FieldAsInteger(0);
          FieldByName('DOC_TP_VERS_ID').AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
          if FieldByName('Param_Value').IsNull
          then
            FieldByName('Rw_Vers').AsString := 'inserted'
          else
            FieldByName('Rw_Vers').AsString := 'updated'
        End;
      End;

    End;
  End;

end;

procedure TFrame_TechProc.Grid_Oper_ParamsColumns1OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  With Grid.DataSource.DataSet
  Do
  Begin
     if ( (FieldByName( 'TYPE_PARAM' ).AsString = 'choice_numeric')
      Or (FieldByName( 'TYPE_PARAM' ).AsString = 'choice_text') )
    Then
    Begin
      DynParams.DynVar['Find'].AsString := 'CH_PRM';
      DynParams.DynVar['Filter'].AsString := ' PARAM_ROW_ID = ' + FieldByName( 'PARAM_ROW_ID' ).AsString;
      DynParams := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_SQL_Text_For_Chs_Form( DynParams );
    End
    Else
      Abort;
  End;
end;

procedure TFrame_TechProc.Grid_Oper_ParamsColumns2GetCellParams(
  Sender: TObject; EditMode: Boolean; Params: TColCellParamsEh);
begin
  With Grid_Oper_Params.{(Sender as TDBGridEh)}DataSource.DataSet
  Do
  Begin
    if ( (FieldByName('TYPE_PARAM').AsString = 'choice_numeric')
        Or (FieldByName('TYPE_PARAM').AsString = 'choice_text') )
        And (FieldByName('PARAM_VALUE').IsNull)
    Then
    Begin
      Params.ReadOnly := True;
    End
    Else
    Begin
      Params.ReadOnly := False;
    End;
  End;
end;

procedure TFrame_TechProc.Grid_Oper_ParamsColumns2UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
begin
  With (Grid_Oper_Params.DataSource.DataSet as TMemTableEh)
  Do
  Begin
    if FieldByName('PARAM_ROW_ID').IsNull
    Then
      Abort;

    if Name = 'MemT_Oper_Params'
    Then
    Begin
      If (FieldByName('ID_ROW_TP_OP_PRM').IsNull)
         And ( (Text <> '')
                Or (Value <> '') )
      Then
      Begin
        Edit;
        Self.DataFrame.Seq_Oper_Params.Execute;
        FieldByName('ID_ROW_TP_OP_PRM').AsInteger := Self.DataFrame.Seq_Oper_Params.FieldAsInteger(0);
        FieldByName('DOC_TP_VERS_ID').AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
        if FieldByName('Param_Value').IsNull
        then
          FieldByName('Rw_Vers').AsString := 'inserted'
        else
          FieldByName('Rw_Vers').AsString := 'updated'

      End;
    End;
  End;

end;

procedure TFrame_TechProc.Grid_Oper_ParamsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Grid_Oper_Params.DataSource.DataSet as TMemTableEh
  do
  begin
    If Not IsEmpty
    Then
    Begin
      if (FieldByName('DOC_TP_VERS_ID').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString)
         And (FieldByName('Doc_Tp_Id').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id').AsString)
      then
      begin
        if Column.FieldName = 'PARAM_VALUE'
        then
        begin
           if (FieldByName('Rw_status').AsString = 'deleted')
          Then
          Begin
            Background := $00B5B3FF;
            AFont.Color := clWindowText;
          End
          Else if (FieldByName('Rw_status').AsString = 'inserted')
                  And (Not FieldByName('Param_Value').IsNull)
          Then
          Begin
            Background := $00A8FFC5;
            AFont.Color := clWindowText;
          End
          Else if (FieldByName('Rw_status').AsString = 'updated')
          Then
          Begin
            Background := $00A7EDFE;
            AFont.Color := clWindowText;
          End
          Else
          Begin
            Background := clWindow;
            AFont.Color := clWindowText;
          End;
        end;
      end;
    End;
  End;
end;

procedure TFrame_TechProc.Grid_Time_NormsTimeRowsUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
Var
  V_In_Params,
  V_Out_Det_Params,
  V_Out_Params: TDynVarsEh;
  Str_TimeCoeffs: TStringList;
  OperTimeValue,
  OtherTimeValue, OtherCoeffValue,
  SetupTimeValue, SetupCoeffValue: Variant;
  SetupTimeFlag, OtherTimeFlag: String;
begin
  With (Grid_Time_Norms.DataSource.DataSet as TMemTableEh)
  Do
  Begin
    if (Sender as TFieldRowEh).FieldName = 'CALC_FROM'
    then
    begin
      Tp_Setup_Time_Calc.Form_Setup_Time_Calc.F_Execute_Unit_Time( Self );
    end
    Else
    Begin
      if UseText
      Then
      Begin
        If FieldByName('PROF_CODE').AsString = ''
        Then
         Grid_Time_NormsRows5EditButtons0Click(Sender, Handled);

        If (Text <> '')
            And (UseText)
        Then
        Begin
          if FieldByName('Calc_From').AsString = 'norm'
          then
          begin
            Edit;
            if TFieldRowEh( Sender ).FieldName = 'ALL_OPER_TIME'
            Then
            Begin
              If StrToFloat(Text) > FieldByName('USING_NORM_TIME').AsFloat
              Then
                Text := FieldByName('USING_NORM_TIME').AsString;
              FieldByName('ALL_OPER_TIME').AsFloat := StrToFloat(Text);
              FieldByName('ALL_OPER_TIME_PERC').AsFloat :=  (StrToFloat(Text)/FieldByName('USING_NORM_TIME').AsFloat) * 100.00;
            End
            Else if TFieldRowEh( Sender ).FieldName = 'UNIT_COUNT'
            Then
            Begin
              FieldByName('UNIT_COUNT').AsFloat := StrToFloat(Text);
            End
            Else If TFieldRowEh( Sender ).FieldName = 'ALL_OPER_TIME_PERC'
            Then
            Begin
              If StrToFloat(Text) > 100.00
              Then
                Text := '100';
              FieldByName('ALL_OPER_TIME').AsFloat := FieldByName('USING_NORM_TIME').AsFloat * (StrToFloat(Text)/100.00);
            End;
          end
          {else
           begin
             FieldByName('ALL_OPER_TIME').AsFloat := StrToFloat(Text);
           end};
          Str_TimeCoeffs := Tp_Setup_Time_Calc.Form_Setup_Time_Calc.F_Execute_Unit_Time(Self);

          SetupTimeFlag := Str_TimeCoeffs.Values['Coeff_Flag'];
          SetupCoeffValue := Str_TimeCoeffs.Values['Const_Time'];
          OtherTimeFlag := Str_TimeCoeffs.Values['Coeff_Flag_2'];
          OtherCoeffValue := Str_TimeCoeffs.Values['Const_Time_2'];

          if ((Sender as TFieldRowEh).FieldName = 'OTHER_TIME')
             or ((Sender as TFieldRowEh).FieldName = 'OPER_TIME')
          then
          begin
            //Расчет Топ
            if (Sender as TFieldRowEh).FieldName = 'OPER_TIME'
            then
            begin
              FieldByName('OPER_TIME').AsVariant := Text;
              OperTimeValue := Text;

              if SetupTimeFlag = 'none'
              then
              begin
                SetupTimeValue := FieldByName('SETUP_TIME').AsVariant;

                if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OtherTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OperTimeValue
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OtherTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OperTimeValue
                else if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OtherTimeValue := FieldByName('OTHER_TIME').AsVariant
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OtherTimeValue := OperTimeValue*OtherCoeffValue;
              end
              else if SetupTimeFlag = 'oper_time'
              then
              begin
                SetupTimeValue := (OperTimeValue*SetupCoeffValue)/FieldByName('UNIT_COUNT').AsVariant;
                FieldByName('SETUP_TIME').AsVariant := SetupTimeValue;

                if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OtherTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-OperTimeValue*(1+SetupCoeffValue)
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OtherTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-OperTimeValue*(1+SetupCoeffValue)
                else if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OtherTimeValue := FieldByName('OTHER_TIME').AsVariant
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OtherTimeValue := OperTimeValue*OtherCoeffValue;
              end;

              //Если нормы утверждены и Тобс+Тотл - мин
              FieldByName('OTHER_TIME').AsVariant := OtherTimeValue;
              FieldByName('UNIT_TIME').AsVariant := FieldByName('ALL_OPER_TIME').AsVariant - FieldByName('SETUP_TIME').AsVariant;
            end
            else if (Sender as TFieldRowEh).FieldName = 'OTHER_TIME'
            then
            begin
              FieldByName('OTHER_TIME').AsVariant := Text;
              OtherTimeValue := Text;
              if SetupTimeFlag = 'none'
              then
              begin
                SetupTimeValue := FieldByName('SETUP_TIME').AsVariant;

                if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OperTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OtherTimeValue
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OperTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OtherTimeValue
                else if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OperTimeValue := FieldByName('OPER_TIME').AsVariant
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OperTimeValue := OtherTimeValue/OtherCoeffValue;
              end
              else if SetupTimeFlag = 'oper_time'
              then
              begin
                if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherTimeValue)/(1+SetupTimeValue)
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherTimeValue)/(1+SetupTimeValue)
                else if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OperTimeValue := FieldByName('OPER_TIME').AsVariant
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OperTimeValue := OtherTimeValue/OtherCoeffValue;
                SetupTimeValue := (FieldByName('OPER_TIME').AsVariant*SetupCoeffValue)/FieldByName('Unit_Count').AsVariant;
              end;
              FieldByName('OPER_TIME').AsVariant := OperTimeValue;
            end
            else if (Sender as TFieldRowEh).FieldName = 'ALL_OPER_TIME'
            then
            begin
              FieldByName('ALL_OPER_TIME').AsVariant := Text;
              //OtherTimeValue := Text;
              if SetupTimeFlag = 'none'
              then
              begin
                SetupTimeValue := FieldByName('SETUP_TIME').AsVariant;
                if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OperTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OtherTimeValue
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OperTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OtherTimeValue
                else if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OperTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OtherTimeValue
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OperTimeValue := FieldByName('ALL_OPER_TIME').AsVariant-SetupTimeValue-OtherTimeValue
              end
              else if SetupTimeFlag = 'oper_time'
              then
              begin
                if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherTimeValue)/(1+SetupTimeValue)
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'norm')
                then
                  OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherTimeValue)/(1+SetupTimeValue)
                else if (OtherTimeFlag = 'none')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherTimeValue)/(1+SetupTimeValue)
                else if (OtherTimeFlag = 'oper_time')
                    and (FieldByName('Calc_From').AsString = 'value')
                then
                  OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherTimeValue)/(1+SetupTimeValue);
                SetupTimeValue := (FieldByName('OPER_TIME').AsVariant*SetupCoeffValue)/FieldByName('Unit_Count').AsVariant;
              end;
              FieldByName('OPER_TIME').AsVariant := OperTimeValue;
            end;


            if FieldByName('Calc_From').AsString = 'value'
            then
              FieldByName('ALL_OPER_TIME').AsVariant :=  OperTimeValue + SetupTimeValue + OtherTimeValue;
            FieldByName('UNIT_TIME').AsVariant := FieldByName('ALL_OPER_TIME').AsVariant - FieldByName('SETUP_TIME').AsVariant;
          end
          else
          begin
            if (Sender as TFieldRowEh).FieldName = 'ALL_OPER_TIME'
            then
              FieldByName('ALL_OPER_TIME').AsVariant := Text
            else if (Sender as TFieldRowEh).FieldName = 'UNIT_TIME'
            then
              FieldByName('UNIT_TIME').AsVariant := Text;

            If SetupTimeFlag = 'none'
            Then
            Begin
              //Расчет Тпз
              SetupTimeValue := FieldByName('SETUP_TIME').AsVariant;

              //Расчет Топ
              if (FieldByName('Calc_From').AsString = 'norm')
                 and (OtherTimeFlag = 'oper_time')
              then//Если нормы утверждены и Тобс+Тотл - % от Топ
                OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - SetupTimeValue)/(1 + OtherCoeffValue)
              else if (FieldByName('Calc_From').AsString = 'norm')
                 and (OtherTimeFlag = 'none')
              then//Если нормы утверждены и Тобс+Тотл - мин
                OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - SetupTimeValue)-OtherCoeffValue
              else if (FieldByName('Calc_From').AsString = 'value')
                      and (OtherTimeFlag = 'oper_time')
              then
              begin //Если нормы неутверждены и Тобс+Тотл - мин
                OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - SetupTimeValue)-OtherCoeffValue
              end
              else if (FieldByName('Calc_From').AsString = 'value')
                      and (OtherTimeFlag = 'none')
              then//Если нормы неутверждены и Тобс+Тотл - мин
              begin
                OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - SetupTimeValue)-OtherCoeffValue
              end;

              //Подстановка значений
              FieldByName('SETUP_TIME').AsVariant := SetupTimeValue;
              FieldByName('OPER_TIME').AsVariant := OperTimeValue;
              if (OtherTimeFlag = 'oper_time')
              then
                FieldByName('OTHER_TIME').AsVariant := OperTimeValue*OtherCoeffValue
              else if(OtherTimeFlag = 'none')
              then
                FieldByName('OTHER_TIME').AsVariant := OtherCoeffValue;

              FieldByName('UNIT_TIME').AsVariant := FieldByName('ALL_OPER_TIME').AsVariant - FieldByName('SETUP_TIME').AsVariant;
            End
            Else If SetupTimeFlag = 'oper_time'
            Then
            Begin
              //Расчет Топ
              if (FieldByName('Calc_From').AsString = 'norm')
                 and (OtherTimeFlag = 'oper_time')
              then//Если нормы утверждены и Тобс+Тотл - % от Топ
                OperTimeValue := FieldByName('ALL_OPER_TIME').AsVariant/(1 + OtherCoeffValue+SetupCoeffValue)
              else if (FieldByName('Calc_From').AsString = 'norm')
                 and (OtherTimeFlag = 'none')
              then//Если нормы утверждены и Тобс+Тотл - мин
                OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherCoeffValue)/(1+SetupCoeffValue)
              else if (FieldByName('Calc_From').AsString = 'value')
                      and (OtherTimeFlag = 'oper_time')
              then
              begin //Если нормы неутверждены и Тобс+Тотл - мин
                OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherCoeffValue)/(1+SetupCoeffValue);
              end
              else if (FieldByName('Calc_From').AsString = 'value')
                      and (OtherTimeFlag = 'none')
              then//Если нормы неутверждены и Тобс+Тотл - мин
              begin
                OperTimeValue := (FieldByName('ALL_OPER_TIME').AsVariant - OtherCoeffValue)/(1+SetupCoeffValue);
              end;
              SetupTimeValue := (OperTimeValue*SetupCoeffValue)/FieldByName('Unit_Count').AsVariant;
              //Подстановка значений
              FieldByName('SETUP_TIME').AsVariant := SetupTimeValue;
              FieldByName('OPER_TIME').AsVariant := OperTimeValue;
              if (OtherTimeFlag = 'oper_time')
              then
                FieldByName('OTHER_TIME').AsVariant := OperTimeValue*OtherCoeffValue
              else if(OtherTimeFlag = 'none')
              then
                FieldByName('OTHER_TIME').AsVariant := OtherCoeffValue;

              FieldByName('UNIT_TIME').AsVariant := FieldByName('ALL_OPER_TIME').AsVariant - FieldByName('SETUP_TIME').AsVariant;
            End;
          end;
        End;
      End;
    End;
  End;
end;

procedure TFrame_TechProc.Grid_Time_NormsRows5EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
  Var
    V_In_Params, v_Det_Trud_Out_Params, v_Out_Params: TDynVarsEh;
    Vl_In_Det_Params, Vl_Out_Det_Params: TDynVarsEh;
begin
  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    Vl_In_Det_Params := TDynVarsEh.Create( Application.MainForm );
    Vl_In_Det_Params.DynVar[ 'Find' ].AsString := 'DET';
    Vl_In_Det_Params.DynVar[ 'Filter' ].AsString := 'Id = ' + Self.DataFrame.Db_Doc_Info.FieldByName('DET_ID').AsString;;
    Vl_Out_Det_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Det_Params );
    If Vl_Out_Det_Params <> Nil
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'DET_TRUD';
      v_In_Params.DynVar[ 'Filter' ].AsString := ' Norm.Kd = Ogt.Asup_Ogt.Kd_Asup_Min(v_det => '''
                                                   + Vl_Out_Det_Params.DynVar['DET_NUM'].AsString
                                                   + ''' ) '
                                                   + ' And Norm.Nc = '''
                                                   + Grid_Doc_Parts.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
      v_Det_Trud_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
      If v_Det_Trud_Out_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName('USING_NORM_ID').AsString := v_Det_Trud_Out_Params.DynVar[ 'Id_Using_Norm' ].AsString;
        FieldByName('USING_NORM_TIME').AsString := v_Det_Trud_Out_Params.DynVar[ 'Time' ].AsString;
        FieldByName('PROF_CODE').AsString := v_Det_Trud_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
        FieldByName('PROF_CLASS').AsString := v_Det_Trud_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
        FieldByName('PROF_CTN').AsString := v_Det_Trud_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
        FieldByName('PROF_MONEY').AsString := v_Det_Trud_Out_Params.DynVar[ 'MONEY_PROF' ].AsString;
      End
      Else
      Begin
        v_In_Params.DynVar[ 'Find' ].AsString := 'KODPROF';
        v_In_Params.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = ''' +  Grid_Doc_Parts.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
        v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
        If v_Out_Params <> Nil
        Then
        Begin
          Edit;
          FieldByName('PROF_CODE').AsString := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CLASS').AsString := V_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
          FieldByName('PROF_CTN').AsString := V_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
        End;
      End;
    End
    Else
    Begin
      v_In_Params.DynVar[ 'Find' ].AsString := 'KODPROF';
      v_In_Params.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = ''' +  Grid_Doc_Parts.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName('PROF_CODE').AsString := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
        FieldByName('PROF_CLASS').AsString := V_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
        FieldByName('PROF_CTN').AsString := V_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
      End;
    End;
  End;
end;

procedure TFrame_TechProc.Grid_Time_NormsAdvDrawDataCell(
  Sender: TCustomDBVertGridEh; Cell, AreaCell: TGridCoord; Row: TFieldRowEh;
  const ARect: TRect; var Params: TRowCellParamsEh; var Processed: Boolean);
  var
    EmptyText: String;
    TestRect: TRect;
begin
  Sender.DefaultDrawDataCell(Cell, AreaCell, Row, ARect, Params);
  if not Sender.DataSource.DataSet.IsEmpty
  then
  begin
    if Sender.DataSource.DataSet.FieldByName(Row.FieldName).IsNull
    then
    begin
      Sender.Canvas.Brush.Color := Row.Color;
      Sender.Canvas.Font.Color := clGrayText;
      Sender.Canvas.Font.Name := 'clWindowText';
      Sender.Canvas.Font.Style := Sender.Canvas.Font.Style + [fsItalic];
      Sender.Canvas.Font.Size := 10;

      if (Row.FieldName = 'ALL_OPER_TIME')
      then
        EmptyText := ' Не указана... '
      else if (Row.FieldName = 'PROF_CODE')
              or (Row.FieldName = 'ALL_OPER_TIME_PERC')
      then
        EmptyText := ' Не указан... '
      else if (Row.FieldName = 'OPER_TIME')
          Or (Row.FieldName = 'OTHER_TIME')
          Or (Row.FieldName = 'UNIT_COUNT')
      then
        EmptyText := ' Не указано... '
      else
        EmptyText := ' (Подгружаются автоматически)';

      Sender.Canvas.TextOut(ARect.Left,
                     ARect.Top,
                     EmptyText);
    end;
  end;

  Processed := True;
end;

procedure TFrame_TechProc.Grid_Time_NormsGetCellParams(Sender: TObject;
  Row: TFieldRowEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with Grid_Time_Norms.DataSource.DataSet
  do
  begin
    if not IsEmpty
    then
    begin
      if (FieldByName('DOC_TP_VERS_ID').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString)
         And (FieldByName('Doc_Tp_Id').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id').AsString)
      then
      begin
        if (FieldByName('Rw_status').AsString = 'deleted')
        Then
        Begin
          Background := $00B5B3FF;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_status').AsString = 'inserted')
        Then
        Begin
          Background := $00A8FFC5;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_status').AsString = 'updated')
        Then
        Begin
          Background := $00A7EDFE;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_Vers').AsString = 'old_version')
        Then
        Begin
          Background := clMenu;
          AFont.Color := clGray;
        End;
        {Else
        Begin
          Background := clWindow;
          AFont.Color := clWindowText;
        End;}
      end;
    end;
  end;
end;

procedure TFrame_TechProc.Grid_Time_NormsProfRowsUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
  Var
    V_In_Params, v_Det_Trud_Out_Params, v_Out_Params: TDynVarsEh;
    Vl_In_Det_Params, Vl_Out_Det_Params: TDynVarsEh;
begin
  With Grid_Time_Norms.DataSource.DataSet
  Do
  Begin
    if (Text <> '')
        And (Text <> FieldByName('PROF_CODE').AsString )
    Then
    Begin
      Vl_In_Det_Params := TDynVarsEh.Create( Application.MainForm );
      Vl_In_Det_Params.DynVar[ 'Find' ].AsString := 'DET';
      Vl_In_Det_Params.DynVar[ 'Filter' ].AsString := 'Id = ' + Self.DataFrame.Db_Doc_Info.FieldByName('DET_ID').AsString;;
      Vl_Out_Det_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_Det_Params );
      If Vl_Out_Det_Params <> Nil
      Then
      Begin
        v_In_Params := TDynVarsEh.Create( Application.MainForm );
        v_In_Params.DynVar[ 'Find' ].AsString := 'DET_TRUD';
        v_In_Params.DynVar[ 'Filter' ].AsString := ' Norm.Kd = Ogt.Asup_Ogt.Kd_Asup_Min(v_det => '''
                                                     + Vl_Out_Det_Params.DynVar['DET_NUM'].AsString
                                                     + ''' ) '
                                                     + ' And Norm.Nc = ''' +  Grid_Doc_Parts.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
        v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
        v_Det_Trud_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
        If v_Det_Trud_Out_Params <> Nil
        Then
        Begin
          Edit;
          Text := v_Det_Trud_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('USING_NORM_ID').AsString := v_Det_Trud_Out_Params.DynVar[ 'Id_Using_Norm' ].AsString;
          FieldByName('USING_NORM_TIME').AsString := v_Det_Trud_Out_Params.DynVar[ 'Time' ].AsString;
          FieldByName('PROF_CODE').AsString := v_Det_Trud_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CLASS').AsString := v_Det_Trud_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
          FieldByName('PROF_CTN').AsString := v_Det_Trud_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
          FieldByName('PROF_MONEY').AsString := v_Det_Trud_Out_Params.DynVar[ 'MONEY_PROF' ].AsString;
        End
        Else
        Begin
          v_In_Params := TDynVarsEh.Create( Application.MainForm );
          v_In_Params.DynVar[ 'Find' ].AsString := 'KODPROF';
          v_In_Params.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = ''' +  Grid_Doc_Parts.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
          v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
          v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
          If v_Out_Params <> Nil
          Then
          Begin
            Edit;
            Text := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
            FieldByName('PROF_CODE').AsString := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
            FieldByName('PROF_CLASS').AsString := V_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
            FieldByName('PROF_CTN').AsString := V_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
          End;
        End;
      End
      Else
      Begin
        v_In_Params := TDynVarsEh.Create( Application.MainForm );
        v_In_Params.DynVar[ 'Find' ].AsString := 'KODPROF';
        v_In_Params.DynVar[ 'Filter' ].AsString := 'Prof_C.Nc = ''' +  Grid_Doc_Parts.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
        v_In_Params.DynVar[ 'V_Keyword' ].AsString := Text;
        v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Params );
        If v_Out_Params <> Nil
        Then
        Begin
          Edit;
          Text := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CODE').AsString := V_Out_Params.DynVar[ 'CODE_PROF' ].AsString;
          FieldByName('PROF_CLASS').AsString := V_Out_Params.DynVar[ 'RAZR_PROF' ].AsString;
          FieldByName('PROF_CTN').AsString := V_Out_Params.DynVar[ 'KVN_PROF' ].AsString;
        End;
      End;
    End
    Else if (Text = '')
    Then
    Begin
      FieldByName('PROF_CODE').Clear;
      FieldByName('PROF_CLASS').Clear;
      FieldByName('PROF_CTN').Clear;
      FieldByName('PROF_MONEY').Clear;
      FieldByName('USING_NORM_ID').Clear;
    End;
  End;
end;

procedure TFrame_TechProc.DBGridEh3Columns0UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
  var
   V_In_Ceh_Params,
   V_Out_Ceh_Params: TDynVarsEh;
   i: Integer;
begin
  With Grid_Doc_Parts.DataSource.DataSet
  Do
  Begin
    if ( (Text <> '')
         And (FieldByName('CEH_ID').IsNull) )
       Or ( (Text <> '')
             And (Not FieldByName('CEH_ID').IsNull)
             And (Text <> FieldByName('CEH_CODE').AsString) )
    Then
    Begin
      V_In_Ceh_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Ceh_Params.DynVar[ 'Find' ].AsString := 'CEH';
      V_In_Ceh_Params.DynVar[ 'V_Keyword' ].AsString := Text;
      V_Out_Ceh_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Ceh_Params );
      if V_Out_Ceh_Params <> Nil
      Then
      Begin
        Edit;
        Text := V_Out_Ceh_Params.DynVar[ 'CEH_CODE' ].AsString;
        with Grid_Opers.DataSource.DataSet as TMemTableEh
        do
        begin
          try
            DisableControls;
            //Filtered := False;
            with RecordsView.MemTableData.RecordsList
            do
            begin
              for i := 0 to Count-1 
              do
              begin
                if (Rec[i].UpdateStatus<>usDeleted)
                   and (Rec[i].DataValues['Id_Part_Tp', dvvValueEh]=Grid_Doc_Parts.DataSource.DataSet.FieldByName('Id').AsString) 
                   and (Rec[i].DataValues['Id_Doc_Tp', dvvValueEh]= Self.DataFrame.Db_Doc_Info.FieldByName('Id').AsString)
                then
                begin
                  Rec[i].Edit;
                  Rec[i].DataValues['Ceh_Id', dvvValueEh] := V_Out_Ceh_Params.DynVar[ 'ID_CEH' ].AsString; 
                  Rec[i].DataValues['DOC_TP_VERS_ID', dvvValueEh] := Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
                  Rec[i].DataValues['User_Name', dvvValueEh] := Udm_Main.DM_Main.F_Oracle('stp.pkg_user.F_Get_User_fio()',[]);
                  Rec[i].Post;
                end;
              end;
            end;
          finally
            EnableControls;
          end;
        end; 
        FieldByName('CEH_ID').AsInteger := V_Out_Ceh_Params.DynVar[ 'ID_CEH' ].AsInteger;
      End;
    End;
  End;
end;

procedure TFrame_TechProc.Grid_Doc_PartsExit(Sender: TObject);
Var
  I: Integer;
begin
{  Try (Sender as TDbGridEh).DataSource.DataSet.Post Except End;

  If (Sender as TDbGridEh).DataSource.DataSet.Active
  Then
  Begin
    With (Sender as TDbGridEh).DataSource.DataSet as TMemTableEh
    Do
    Begin
      DisableControls;
      Try
        With RecordsView
        Do
        Begin
          For I := 0 to Count - 1
          Do
          Begin
            If (VarToStr(Rec[i].DataValues['ROW_NUM', dvvValueEh]) <> IntToStr(i + 1))
                //and (Rec[i].DataValues['Rw_Vers', dvvValueEh] <> 'deleted')
                //and (Rec[i].DataValues['Rw_Vers', dvvValueEh] <> 'old_version')
            Then
            Begin
              Rec[i].DataValues['ROW_NUM', dvvValueEh] := (i+1);
              if VarToStr(Rec[i].DataValues['DOC_TP_VERS_ID', dvvValueEh]) <> TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString
              then
              begin
                Rec[i].DataValues['DOC_TP_VERS_ID', dvvValueEh] := TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString;
                Rec[i].DataValues['DOC_HEADER_ID', dvvValueEh] := TechProcDataFrame.Db_Doc_Info.FieldByName('Doc_Header_Id').AsString;
                Rec[i].DataValues['Rw_Status', dvvValueEh] := 'updated';
              end;
              if Rec[i].UpdateStatus = usUnmodified
              Then
                Rec[i].UpdateStatus := usModified
            End;
          End;
        End;
      Finally
        EnableControls;
      End;
    End;
  End;   }
end;

procedure TFrame_TechProc.Grid_Doc_PartsGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  With Grid_Doc_Parts.DataSource.DataSet
  Do
  Begin
    If Not IsEmpty
    Then
    Begin
      if (FieldByName('DOC_TP_VERS_ID').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsString)
         And (FieldByName('ID_DOC_TP').AsString = Self.DataFrame.Db_Doc_Info.FieldByName('Id').AsString)
      then
      begin
         if (FieldByName('Rw_status').AsString = 'deleted')
        Then
        Begin
          Background := $00B5B3FF;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_status').AsString = 'inserted')
        Then
        Begin
          Background := $00A8FFC5;
          AFont.Color := clWindowText;
        End
        Else if (FieldByName('Rw_status').AsString = 'updated')
        Then
        Begin
          Background := $00A7EDFE;
          AFont.Color := clWindowText;
        End
        else if (FieldByName('Rw_vers').AsString = 'old_version')
        Then
        Begin
          Background := clMenu;
          AFont.Color := clGray;
        End
        Else
        Begin
          Background := clWindow;
          AFont.Color := clWindowText;
        End;
      end
      else if (FieldByName('Rw_vers').AsString = 'old_version')
      Then
      Begin
        Background := clMenu;
        AFont.Color := clGray;
      End
      Else
      Begin
        Background := clWindow;
        AFont.Color := clWindowText;
      End;
    End;
    If (Self.DataFrame.Db_Doc_Info.FieldByName('DOC_TYPE').AsInteger = 1)
      And (Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin)
    Then
    Begin
      If (Self.DataFrame.Pkg_Tp_Doc.CallIntegerFunction( 'F_Access_To_Edit_Dep', [ DM_Main.Session.LogonUsername, FieldByName('Dep_Id').AsInteger ] ) = 0 )
      Then
        AFont.Color := clSilver;
    End;
  End;
end;

procedure TFrame_TechProc.E_DET_MATEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
  var
   V_In_Mat_Params, Vl_In_AllMat_Params,
   V_Out_Mat_Params, Vl_Out_AllMat_Params: TDynVarsEh;
begin
  V_In_Mat_Params := TDynVarsEh.Create( Application.MainForm );
  V_In_Mat_Params.DynVar[ 'Find' ].AsString := 'DET_MAT';
  V_In_Mat_Params.DynVar[ 'V_Keyword' ].AsString := Self.DataFrame.Db_Doc_Info.FieldByName('Det_Id').AsString;
  V_Out_Mat_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Mat_Params );
  With E_DET_MAT.DataSource.DataSet
  Do
  Begin
    if V_Out_Mat_Params <> Nil
    Then
    Begin
      Edit;
      FieldByName('MAT').AsInteger := V_Out_Mat_Params.DynVar[ 'ID_MAT' ].AsInteger;
      E_DET_MAT.Text := V_Out_Mat_Params.DynVar[ 'NAME_MAT' ].AsString;
    End
    Else
    Begin
      Vl_In_AllMat_Params := TDynVarsEh.Create(Application.MainForm);
      Vl_In_AllMat_Params.DynVar['Find'].AsString := 'MAT';
      Vl_Out_AllMat_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_AllMat_Params );
      If Vl_Out_AllMat_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName('MAT').AsInteger := Vl_Out_AllMat_Params.DynVar[ 'ID_MAT' ].AsInteger;
        E_DET_MAT.Text := Vl_Out_AllMat_Params.DynVar[ 'NAME_MAT' ].AsString;
      End;
    End;
  End;
end;

procedure TFrame_TechProc.E_DET_MATExit(Sender: TObject);
  var
   V_In_Mat_Params, Vl_In_AllMat_Params,
   V_Out_Mat_Params, Vl_Out_AllMat_Params: TDynVarsEh;
begin
  With E_DET_MAT.DataSource.DataSet
  Do
  Begin
    if ( (FieldByName('MAT').IsNull)
       And (E_DET_MAT.Text <> '') )
       Or ( (Not FieldByName('MAT').IsNull)
            And (E_DET_MAT.Text <> '')
            And (E_DET_MAT.Text <> FieldByName('MAT_NAME').AsString) )
    Then
    Begin
      V_In_Mat_Params := TDynVarsEh.Create( Application.MainForm );
      V_In_Mat_Params.DynVar[ 'Find' ].AsString := 'DET_MAT';
      V_In_Mat_Params.DynVar[ 'V_Keyword' ].AsString := Self.DataFrame.Db_Doc_Info.FieldByName('Det_Id').AsString;
      V_Out_Mat_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( V_In_Mat_Params );
      if V_Out_Mat_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName('MAT').AsInteger := V_Out_Mat_Params.DynVar[ 'ID_MAT' ].AsInteger;
        E_DET_MAT.Text := V_Out_Mat_Params.DynVar[ 'NAME_MAT' ].AsString;
      End
      Else
      Begin
        Vl_In_AllMat_Params := TDynVarsEh.Create(Application.MainForm);
        Vl_In_AllMat_Params.DynVar['Find'].AsString := 'MAT';
        Vl_In_AllMat_Params.DynVar['v_Keyword'].AsString := E_DET_MAT.Text;
        Vl_Out_AllMat_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( Vl_In_AllMat_Params );
        If Vl_Out_AllMat_Params <> Nil
        Then
        Begin
          Edit;
          FieldByName('MAT').AsInteger := Vl_Out_AllMat_Params.DynVar[ 'ID_MAT' ].AsInteger;
          E_DET_MAT.Text := Vl_Out_AllMat_Params.DynVar[ 'NAME_MAT' ].AsString;
        End;
      End;
    End
    Else If (Not FieldByName('MAT').IsNull)
       And (E_DET_MAT.Text = '') then
    Begin
      Edit;
      FieldByName('MAT').Clear;
    End;
  End;
end;

procedure TFrame_TechProc.E_DET_MATKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  Begin
    E_DET_MATExit(E_DET_MAT);
  End;
end;

procedure TFrame_TechProc.E_OBOREditButtons0Click(Sender: TObject;
  var Handled: Boolean);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'OBOR';
  v_In_Params.DynVar[ 'Filter' ].AsString := ' Ceh = '''
                                               + Grid_Doc_Parts.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If v_Out_Params <> Nil
  Then
  Begin
    With E_OBOR.DataSource.DataSet
    Do
    Begin
      Edit;
      FieldByName('OBOR').AsString := v_Out_Params.DynVar[ 'ID_OBOR' ].AsString;
      FieldByName('GRP_OBR_RW_ID').AsString := v_Out_Params.DynVar['Group_Id'].AsString;
      E_OBOR.Text := v_Out_Params.DynVar[ 'OBOR_NAME' ].AsString;
    End;
  End;
end;

procedure TFrame_TechProc.E_OBORExit(Sender: TObject);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
begin
    With E_OBOR.DataSource.DataSet
    Do
    Begin
      If ( (FieldByName('OBOR').IsNull)
          And (E_OBOR.Text <> '') )
         Or ( (Not FieldByName('OBOR').IsNull)
              And (E_OBOR.Text <> '')
              And (E_OBOR.Text <> FieldByName('OBOR_NAME').AsString) )
      Then
      Begin
        v_In_Params := TDynVarsEh.Create( Application.MainForm );
        v_In_Params.DynVar[ 'Find' ].AsString := 'OBOR';
        v_In_Params.DynVar[ 'Filter' ].AsString := ' Ceh = '''
                                                   + Grid_Doc_Parts.DataSource.DataSet.FieldByName('CEH_CODE').AsString + ''' ';
        v_In_Params.DynVar[ 'V_Keyword' ].AsString := E_OBOR.Text;
        v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
        If v_Out_Params <> Nil
        Then
        Begin
          Edit;
          FieldByName('OBOR').AsString := v_Out_Params.DynVar[ 'ID_OBOR' ].AsString;
          FieldByName('GRP_OBR_RW_ID').AsString := v_Out_Params.DynVar['Group_Id'].AsString;
          E_OBOR.Text := v_Out_Params.DynVar[ 'OBOR_NAME' ].AsString;
        End;
      End
      Else if ( Not FieldByName('OBOR').IsNull )
               And ( E_OBOR.Text = '' )
      Then
      Begin
        Edit;
        FieldByName('OBOR').Clear;
      End;
    End;
end;

procedure TFrame_TechProc.E_OBORKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  Begin
    E_OBORExit(E_OBOR);
  End;
end;

procedure TFrame_TechProc.E_OPER_PER_PRIMDblClick(Sender: TObject);
  Var
    V_In_Params, v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'OPER_PER_PRIM';
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If v_Out_Params <> Nil
  Then
    E_OPER_PER_PRIM.Text := v_Out_Params.DynVar[ 'PRIM' ].AsString;
end;

procedure TFrame_TechProc.E_OPER_PER_PRIMEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  E_OPER_PER_PRIMDblClick(E_OPER_PER_PRIM);
end;

procedure TFrame_TechProc.E_OPER_PRIMDblClick(Sender: TObject);
  Var
    V_In_Params, v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'OPER_PRIM';
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If v_Out_Params <> Nil
  Then
    E_OPER_PRIM.Text := v_Out_Params.DynVar[ 'PRIM' ].AsString;
end;

procedure TFrame_TechProc.E_OPER_PRIMEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  E_OPER_PRIMDblClick( E_OPER_PRIM );
end;

procedure TFrame_TechProc.E_TARA_NUMEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'TARA';
  v_In_Params.DynVar[ 'V_Keyword' ].AsString := E_TARA_NUM.Text;
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If v_Out_Params <> Nil
  Then
  Begin
    With E_TARA_NUM.DataSource.DataSet
    Do
    Begin
      Edit;
      FieldByName('TARA').AsInteger := v_Out_Params.DynVar[ 'ID_TARA' ].AsInteger;
      E_TARA_NUM.Text := v_Out_Params.DynVar[ 'NUM_TARA' ].AsString;
      E_TARA_NAME.Text := v_Out_Params.DynVar[ 'NAME_TARA' ].AsString;
    End;
  End;
end;

procedure TFrame_TechProc.E_TARA_NUMEditButtons1Click(Sender: TObject;
  var Handled: Boolean);
  Var
    V_Tara: TDynVarsEh;
    Oper_Counter: Integer;
    Part_Counter: Integer;
begin
  if MessageDlg( 'Скопировать Тару ко всем вашим операциям? ',
                  mtConfirmation,
                  mbOKCancel,
                  0 ) = mrOk
  Then
  Begin
    With Grid_Opers
    Do
    Begin
      SaveVertPos('Id_Row_Oper');
      With DataSource.DataSet as TMemTableEh
      Do
      Begin
        Try
          DisableControls;
          V_Tara := TDynVarsEh.Create( Application.MainForm );
          V_Tara.DynVar[ 'Tara_Id' ].AsInteger := FieldByName('TARA').AsInteger;
          V_Tara.DynVar[ 'Tara_Num' ].AsString := FieldByName('TARA_NUM').AsString;
          V_Tara.DynVar[ 'Tara_Name' ].AsString := FieldByName('TARA_NAME').AsString;
          With RecordsView.MemTableData.RecordsList
          Do
          Begin
            For Oper_Counter := 0 to Count - 1
            Do
            Begin
              If (Rec[Oper_Counter].DataValues['USER_EDIT', dvvValueEh] = DM_Main.Session.LogonUsername)
                  Or (Tp_Main_Form.Form_Tech_Proc_Main.User_Admin)
              Then
              Begin
                Rec[Oper_Counter].Edit;
                Rec[Oper_Counter].DataValues['TARA', dvvValueEh] := V_Tara.DynVar[ 'Tara_Id' ].AsInteger;
                Rec[Oper_Counter].DataValues['TARA_NUM', dvvValueEh] := V_Tara.DynVar[ 'Tara_Num' ].AsString;
                Rec[Oper_Counter].DataValues['TARA_NAME', dvvValueEh] := V_Tara.DynVar[ 'Tara_Name' ].AsString;
                Rec[Oper_Counter].Post;
                if Rec[Oper_Counter].UpdateStatus = usUnmodified
                Then
                Begin
                  Rec[Oper_Counter].UpdateStatus := usModified;
                End;
              End;
            End;
          End;
        Finally
          EnableControls;
        End;
      End;
      RestoreVertPos('Id_Row_Oper');
    End;
  End;
end;

procedure TFrame_TechProc.E_TARA_NUMExit(Sender: TObject);
  Var
    V_In_Params,
    v_Out_Params: TDynVarsEh;
begin
  With E_TARA_NUM.DataSource.DataSet
  Do
  Begin
    If ( (FieldByName('TARA').IsNull )
        And ( E_TARA_NUM.Text <> '' ) )
       Or ( ( Not FieldByName('TARA').IsNull )
            And ( E_TARA_NUM.Text <> '' )
            And ( E_TARA_NUM.Text <> FieldByName('TARA_NUM').AsString ) )
    Then
    Begin
      v_In_Params := TDynVarsEh.Create( Application.MainForm );
      v_In_Params.DynVar[ 'Find' ].AsString := 'TARA';
      v_In_Params.DynVar[ 'V_Keyword' ].AsString := (Sender as TDBEditEh).Text;
      v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
      If v_Out_Params <> Nil
      Then
      Begin
        Edit;
        FieldByName('TARA').AsInteger := v_Out_Params.DynVar[ 'ID_TARA' ].AsInteger;
        E_TARA_NUM.Text := v_Out_Params.DynVar[ 'NUM_TARA' ].AsString;
        E_TARA_NAME.Text := v_Out_Params.DynVar[ 'NAME_TARA' ].AsString;
      End;
    End
    Else If ( Not FieldByName('TARA').IsNull )
         And ( E_TARA_NUM.Text = '' )
    Then
    Begin
      Edit;
      FieldByName('TARA').Clear;
      if Sender = E_TARA_NUM
      Then
        FieldByName('TARA_NAME').Clear
      Else if Sender = E_TARA_NAME
      Then
        FieldByName('TARA_NUM').Clear
    End;
  End;
end;

procedure TFrame_TechProc.E_TARA_NUMKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If Key = VK_RETURN
 Then
   E_TARA_NUMExit( E_TARA_NUM );
end;

procedure TFrame_TechProc.EditControl_CloseDropDownForm(EditControl: TControl;
  Button: TEditButtonEh; Accept: Boolean; DropDownForm: TCustomForm;
  DynParams: TDynVarsEh);
begin
  If {(DropDownForm.ModalResult = mrOk)
      And} (DynParams <> Nil)
  Then
  Begin
    if EditControl.ClassType = TDBEditEh
    Then
      TDBEditEh(EditControl).Text := DynParams.DynVar['Text'].AsString;
  End;
end;

procedure TFrame_TechProc.E_TTDblClick(Sender: TObject);
  Var
    V_In_Params, v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'OPER_TT';
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  if v_Out_Params <> Nil
  Then
  Begin
    If Not v_Out_Params.DynVar[ 'TT' ].IsNull
    Then
      E_TT.Text := v_Out_Params.DynVar[ 'TT' ].AsString;
  End;
end;

procedure TFrame_TechProc.E_TTEditButtons0Click(Sender: TObject; var Handled: Boolean);
begin
  E_TTDblClick( E_TT );
end;

procedure TFrame_TechProc.E_TTEditButtons1Click(Sender: TObject; var Handled: Boolean);
  Var
     V_Oper_Id: Integer;
     V_Oper_TT: String;
     Part_Counter: Integer;
     Oper_Counter: Integer;
begin
  if MessageDlg( 'Скопировать Тех. требования ко всем вашим операциям '
                  + Grid_Opers.DataSource.DataSet.FieldByName('OPER_NAME').AsString
                  + '?',
                  mtConfirmation,
                  mbOKCancel,
                  0 ) = mrOk
  Then
  Begin
    Grid_Opers.SaveVertPos('Id_Row_Oper');
    With Grid_Opers.DataSource.DataSet as TMemTableEh
    Do
    Begin
      Try
        try Post except end;
        DisableControls;
        V_Oper_Id := FieldByName('OPER_ID').AsInteger;
        V_Oper_TT := FieldByName('TT').AsString;
        With RecordsView.MemTableData.RecordsList
        Do
        Begin
          For Oper_Counter := 0 to Count - 1
          Do
          Begin
            If ((Rec[Oper_Counter].DataValues['USER_EDIT', dvvValueEh] = DM_Main.Session.LogonUsername)
                Or (Tp_Main_Form.Form_Tech_Proc_Main.User_Admin))
                And (Rec[Oper_Counter].DataValues['OPER_ID', dvvValueEh] = V_Oper_Id)
            Then
            Begin
              Rec[Oper_Counter].Edit;
              Rec[Oper_Counter].DataValues['TT', dvvValueEh] := V_Oper_TT;
              Rec[Oper_Counter].Post;
            End;
          End;
        End;
      Finally
        EnableControls;
      End;
    End;
    Grid_Opers.RestoreVertPos('Id_Row_Oper');
  End;
end;

procedure TFrame_TechProc.EditControl_OpenDropDownForm(EditControl: TControl;
  Button: TEditButtonEh; var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  if EditControl.ClassType = TDBEditEh
  Then
    DynParams.DynVar['Text'].AsString := TDBEditEh(EditControl).Text;
end;

procedure TFrame_TechProc.E_TT_PERDblClick(Sender: TObject);
  Var
    V_In_Params, v_Out_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'OPER_PER_TT';
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If v_Out_Params <> Nil
  Then
    E_TT_PER.Text := v_Out_Params.DynVar[ 'TT' ].AsString;
end;

procedure TFrame_TechProc.E_TT_PEREditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  E_TT_PERDblClick(E_TT_PER);
end;

procedure TFrame_TechProc.FormResize(Sender: TObject);
begin
  if Panel_Oper_Items.Height > 424
  Then
    Panel_Oper_Items.Height := 424;

  if Panel_Op_Per_Prms.Width > 398
  Then
    Panel_Op_Per_Prms.Width := 398;

  if Panel_Oper_Time.Width > 248
  Then
    Panel_Oper_Time.Width := 248
end;

procedure TFrame_TechProc.Free;
begin
  FDataFrame.Free;
  inherited Free;
end;

function TFrame_TechProc.F_Save_TechProc(Sender: TObject): Integer;

var
Button_Selected,
v_User_Lnum,
v_User_Ceh_Id,
I, j:Integer;
Vl_Save_Mess: String;
ArrDataSet: Array Of TDataSet;
EnDataSet: TDataSet;
EnMemTable: TMemTableEh;
FormHasChanges: Bool;
UpdateDoc_TechPath: Bool;

begin
  with (Self as TFrame_TechProc)
  do
  begin
    Try

     { Grid_Doc_PartsExit(Grid_Doc_Parts);
      Grid_OpersExit(Grid_Opers);
      Grid_Oper_PerExit(Grid_Oper_Per);}

      {$Region 'Датасеты с возможность перетаскивать строки'}
     { For I := 0 to Length(TechProcDataFrame.Arr_DataSetsWithRowMove)-1
      Do
      Begin
        With TechProcDataFrame
        Do
        Begin
          EnMemTable := (FindComponent(Arr_DataSetsWithRowMove[i][0]) as TMemTableEh);

          Try EnMemTable.Post Except End;
          With EnMemTable
          Do
          Begin
            DisableControls;
            Try
              With RecordsView.MemTableData.RecordsList
              Do
              Begin
                For j := 0 to Count - 1
                Do
                Begin
                  if Rec[j].UpdateStatus = usModified
                  Then
                  Begin
                    Rec[j].Edit;
                    Rec[j].DataValues[Arr_DataSetsWithRowMove[i][1],dvvEditValueEh] := Rec[j].DataValues[Arr_DataSetsWithRowMove[i][1],dvvValueEh];
                    Rec[j].Post;
                  End;
                End;
              End;
            Finally
              EnableControls;
              If Not ReadOnly
              Then
                ApplyUpdates(0);
              MergeChangeLog;
            End;
          End;
        End;
      End; }
      {$EndRegion 'Датасеты с возможность перетаскивать строки'}

      {$Region 'Датасеты с параметрами'}
      For i := 0 to Length(Self.DataFrame.Arr_DataSetsWithParams)-1
      Do
      Begin
        With Self.DataFrame
        Do
        Begin
          EnMemTable := (FindComponent(Arr_DataSetsWithParams[i]) as TMemTableEh);

          Try EnMemTable.Post Except End;
          With EnMemTable
          Do
          Begin
            Try
              DisableControls;
              With RecordsView.MemTableData.RecordsList
              Do
              Begin
                For j := 0 to Count-1
                Do
                Begin
                  If ((Rec[j].UpdateStatus = usInserted)
                      And ((Rec[j].DataValues[ 'PARAM_VALUE', dvvValueEh ] = Null)
                            Or (VarToStr(Rec[j].DataValues[ 'PARAM_VALUE', dvvValueEh ]) = '')))
                  Then
                    Rec[j].MergeChanges;
                  If (Rec[j].UpdateStatus = usModified)
                      And ((Rec[j].DataValues[ 'PARAM_VALUE', dvvValueEh ] = Null)
                            Or (VarToStr(Rec[j].DataValues[ 'PARAM_VALUE', dvvValueEh ]) = ''))
                  Then
                  Begin
                    if (Rec[j].DataValues[ 'Rw_Status', dvvValueEh ] = 'updated')
                    then
                    begin
                      Rec[j].Edit;
                      Rec[j].DataValues[ 'Rw_Status', dvvValueEh ] := 'deleted';
                      Rec[j].DataValues[ 'DOC_TP_VERS_ID', dvvValueEh ] := Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
                      Rec[j].DataValues[ 'PARAM_VALUE', dvvValueEh ] := Rec[j].DataValues[ 'PARAM_VALUE', dvvOldestValue ];
                      Rec[j].Post;
                    end
                    else
                      Rec[j].UpdateStatus := usDeleted;
                  End;
                End;
              End;
            Finally
              EnableControls;
              If Not ReadOnly
              Then
                ApplyUpdates(0);
              MergeChangeLog;
            End;
          End;
        End;
      End;
      {$EndRegion 'Датасеты с параметрами'}

      {$Region 'Остальные датасеты, у которых CachedUpdates=True'}
      For i := 0 to Length(Self.DataFrame.Arr_DataSetsOpenLine)-1
      Do
      Begin
        EnDataSet := Self.DataFrame.Arr_DataSetsOpenLine[i];

        If EnDataSet<>Nil
        Then
        Begin
          if EnDataSet is TMemTableEh
          then
          begin
            With EnDataSet as TMemTableEh
            Do
            Begin
              if CachedUpdates
              Then
              Begin
                Try Post Except End;

                Try
                  DisableControls
                Finally
                  EnableControls;
                  If Not ReadOnly
                  Then
                    ApplyUpdates(0);
                  MergeChangeLog;
                End;
              End;
            End;
          end
          else if EnDataSet is TOracleDataSet
          then
          begin
            with EnDataSet as TOracleDataSet
            do
            begin
              if CachedUpdates
              Then
                Try Post Except End;
            end;
          end;
        End;
      End;

      {$EndRegion 'Остальные датасеты, у которых CachedUpdates=True'}

      //Определяем какие были обновлены
      SetLength(ArrDataSet, 0);
      For i := 0 to Length(Self.DataFrame.Arr_DataSetsSaveLine)-1
      Do
      Begin
        With Self.DataFrame.Arr_DataSetsSaveLine[i] as TOracleDataSet
        Do
        Begin
          if UpdatesPending
          Then
          Begin
            FormHasChanges := True;
            SetLength(ArrDataSet, Length(ArrDataSet) + 1);
            ArrDataSet[Length(ArrDataSet)-1] := Self.DataFrame.Arr_DataSetsSaveLine[i] as TOracleDataSet;
          End;
        End;
      End;

      if FormHasChanges
      Then
      Begin
        If Sender <> Tb_Save
        Then
          Vl_Save_Mess := 'Имеются не сохраненные данные! Сохранить изменения?'
        Else if Sender = Tb_Print
        Then
          Vl_Save_Mess := 'Для просмотра изменений необходимо их сохранить!'
                                        +#13#10+ 'Сохранить изменения?';
        if Sender <> Tb_Save
        Then
        Begin
          With CreateMessageDialog( Vl_Save_Mess,
                                        mtConfirmation,
                                        mbYesNoCancel )
          Do
          Try
            TButton( FindComponent( 'Yes' ) ).Caption := 'Да';
            TButton( FindComponent( 'No' ) ).Caption := 'Нет';
            TButton( FindComponent( 'Cancel' ) ).Caption := 'Отмена';
            Case ShowModal
            Of
              mrYes: Button_Selected := mrYes;
              mrNo: Button_Selected := mrNo;
              mrCancel: Button_Selected := mrCancel;
            End;
          Finally
            Free;
          End;
        End;

        If (Button_Selected = mrYes)
            Or (Sender = Tb_Save)
        Then
        Begin
          UpdateDoc_TechPath := Self.DataFrame.Db_Doc_Parts.UpdatesPending;


          DM_Main.Session.ApplyUpdates( ArrDataSet,
                                        True);
          Grid_Doc_Parts.SaveVertPos('ID');
          Grid_Opers.SaveVertPos('ID_ROW_OPER');
          Grid_Oper_Per.SaveVertPos('ID');

          For i := 0 to Self.DataFrame.ComponentCount-1
          Do
          Begin
            If Self.DataFrame.Components[i] is TMemTableEh
            Then
            Begin
              (Self.DataFrame.Components[i] as TMemTableEh).Refresh;
            End;
          End;

          if (UpdateDoc_TechPath)
             and (Self.DataFrame.Db_Doc_Info.FieldByName('Doc_Type').AsInteger = 1)
             and (Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsInteger > 1)
          then
            Self.DataFrame.Pkg_Tp_Doc.CallProcedure('P_Update_Doc_Tech_Path', [Self.DataFrame.Db_Doc_Info.FieldByName('Doc_Header_Id').AsInteger]);

          Grid_Doc_Parts.RestoreVertPos('ID');
          Grid_Opers.RestoreVertPos('ID_ROW_OPER');
          Grid_Oper_Per.RestoreVertPos('ID');
          StatusBar1.Panels[1].Text := DateTimeToStr(Now());
          StatusBar1.Panels[3].Text := '';

          If Sender = Nil
          Then
            Result := mrYes;
        End
        Else if ( Button_Selected = mrNo )
                 And ( Sender = Nil )
        Then
        Begin
          For EnDataSet In ArrDataSet
          Do
          Begin
            if (EnDataSet as TOracleDataSet).CachedUpdates
            Then
              if (EnDataSet as TOracleDataSet).UpdatesPending
              Then
              Begin
                (EnDataSet as TOracleDataSet).Session.CancelUpdates([EnDataSet]);
              End;
          End;
          Result := mrNo;
        End
        Else if ( Button_Selected = mrCancel )
                 And ( Sender = Nil )
        Then
        Begin
          Result := mrCancel;
        End;;
      End
      Else if (Sender = Nil)
      Then
      Begin
        Result := mrNo;
      End;
    Except
      on E : Exception
      do
      Begin
        MessageDlg(E.ClassName+' поднята ошибка, с сообщением : '+E.Message, mtError, [mbOK], 5);

        If Sender = Nil
        Then
         If MessageDlg('Закрыть без сохранения?', mtConfirmation, mbYesNo, 5) = mrYes
         Then
           Result := mrNo;
      End;
    End;
  end;
end;

procedure TFrame_TechProc.Pop_M_Oper_Per_Btn_Per_ItemsClick(Sender: TObject);
begin
  if Sender = Pop_M_Oper_Per_Btn_Ins
  Then
  begin
    with TForm_Per_Ins.Create(Self)
    do
    begin
      try
        TechProcDataFrame := Self.DataFrame;
        ShowModal;
      finally
        Free;
      end;
    end;
  end
  Else if Sender = Pop_M_Oper_Per_Btn_Det
  Then
  begin
    with TForm_Per_Det.Create(Application)
    do
    begin
      try
        TechProcDataFrame := Self.DataFrame;
        ShowModal;
      finally
        Free;
      end;
    end;
  end
  Else if Sender = Pop_M_Oper_Per_Btn_Mat
  Then
  begin
    with TForm_Per_Mat.Create(Application)
    do
    begin
      try
        TechProcDataFrame := Self.DataFrame;
        ShowModal;
      finally
        Free;
      end;
    end;
  end
  Else if Sender = Pop_M_Oper_Per_Btn_Osn
  Then
  begin
    with TForm_Per_Osn.Create(Application)
    do
    begin
      try
        TechProcDataFrame := Self.DataFrame;
        ShowModal;
      finally
        Free;
      end;
    end;
  end;
end;

procedure TFrame_TechProc.Pop_M_Oper_Per_Btn_DeleteClick(Sender: TObject);
begin
  With Grid_Oper_Per.DataSource.DataSet
  Do
  Begin
    If (FieldByName('USER_ID_CORR').AsString = DM_Main.Session.LogonUsername)
        Or (Form_Tech_Proc_Main.User_Admin)
    Then
      Tp_Main_Form.Form_Tech_Proc_Main.P_DeleteFromDBGridEh( Grid_Oper_Per );
  End;
end;

procedure TFrame_TechProc.Main_M_Tech_Proc_Btn_Spr_OpersClick(Sender: TObject);
begin
  DM_Main.P_Show_Form( 'Spravochnik_Of_Operations' );
end;

procedure TFrame_TechProc.Main_M_Tech_Proc_Btn_Spr_DetClick(Sender: TObject);
  var
  v_In_Params,
  v_Out_Doc_Params: TDynVarsEh;
begin
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Id_Det' ].AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('DET_ID').AsInteger;
  DM_Main.P_Show_Form( 'Spravochnik_Of_Details', v_In_Params );
end;

procedure TFrame_TechProc.Pop_M_Oper_Per_Btn_TextClick(Sender: TObject);
begin
  If Not Grid_Oper_Per.ReadOnly then
  Begin
    Try Grid_Oper_Per.DataSource.DataSet.Post Except End;
  End;

  with TForm_Oper_Per_Text.Create(Self)
  do
  begin
    try
      TechProcDataFrame := Self.DataFrame;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TFrame_TechProc.Pop_M_Oper_Per_Btn_Spr_PerClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
  v_Out_Params: TDynVarsEh;
begin
  Try Grid_Oper_Per.DataSource.DataSet.Post Except End;
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'OPER_PER';
  v_In_Params.DynVar[ 'Filter' ].AsString := ' Oper_Id = '
                                                + Grid_Opers.DataSource.DataSet.FieldByName('Oper_Id').AsString;
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  If v_Out_Params <> Nil
  Then
  Begin
    With Grid_Oper_Per.DataSource.DataSet
    Do
    Begin
      Edit;
      FieldByName('PER').AsString := v_Out_Params.DynVar[ 'PER' ].AsString;
    End;
  End;
end;

procedure TFrame_TechProc.Main_M_Tech_Proc_Btn_Copy_Opers_From_DocClick(Sender: TObject);
Var
  V_In_Params: TDynVarsEh;
begin
  Try Grid_Opers.DataSource.DataSet.Post Except End;
  Try Grid_Oper_Per.DataSource.DataSet.Post Except End;
  Try Grid_Doc_Parts.DataSource.DataSet.Post Except End;
  Try Self.DataFrame.MemT_Per_Details.Post Except End;
  Try Self.DataFrame.MemT_Per_Materials.Post Except End;
  Try Self.DataFrame.MemT_Per_Instruments.Post Except End;
  Try Self.DataFrame.MemT_Per_Osnast.Post Except End;

  V_In_Params := TDynVarsEh.Create( Application.MainForm );
  V_In_Params.DynVar[ 'ThisDoc_Doc_Header_Id' ].AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('Doc_Header_Id').AsInteger;
  V_In_Params.DynVar[ 'v_Doc_Type' ].AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('DOC_TYPE').AsInteger;
  V_In_Params.DynVar[ 'v_Ceh_Id' ].AsString := Grid_Doc_Parts.DataSource.DataSet.FieldByName('Ceh_Id').AsString;

  P_Create_Copy_Doc( Tp_Copy_Tech_Proc_Form.Form_Chose_Doc_For_Copy.F_Chose_Doc_For_Copy( V_In_Params ) );
end;

procedure TFrame_TechProc.Pop_M_Doc_Parts_Btn_DeleteClick(Sender: TObject);
begin
  Form_Tech_Proc_Main.P_DeleteFromDBGridEh(Grid_Doc_Parts);
end;

procedure TFrame_TechProc.Pop_M_Doc_Parts_Btn_InsertClick(Sender: TObject);
var
Button_Selected: Integer;
begin
  Button_Selected := MessageDlg('Вставить строку?', mtConfirmation, mbOKCancel, 5);
  if Button_Selected = mrOk then
  Begin
    Grid_Doc_Parts.DataSource.DataSet.Insert;
  End;
end;

procedure TFrame_TechProc.Pop_M_Oper_Per_Btn_InsertClick(Sender: TObject);
var
Button_Selected: Integer;
begin
  Button_Selected := MessageDlg( 'Вставить строку?', mtConfirmation, mbOKCancel, 5 );
  if Button_Selected = mrOk then
  Begin
    Grid_Oper_Per.DataSource.DataSet.Insert;
  End;
end;

procedure TFrame_TechProc.Pop_M_Opers_Btn_InsertClick(Sender: TObject);
  var
  Button_Selected: Integer;
begin
  Button_Selected := MessageDlg('Вставить строку?', mtConfirmation, mbOKCancel, 5);
  if Button_Selected = mrOk then
  Begin
     Grid_Opers.DataSource.DataSet.Insert;
  End;
end;

procedure TFrame_TechProc.Pop_M_Opers_Btn_Cut_OperClick(Sender: TObject);
begin
  P_Copy_Opers_In_Buffer( Grid_Opers, True );
end;

procedure TFrame_TechProc.Pop_M_Opers_Btn_Copy_OperClick(Sender: TObject);
begin
  P_Copy_Opers_In_Buffer( Grid_Opers, False );
end;

procedure TFrame_TechProc.Pop_M_Opers_Btn_Paste_OperClick(Sender: TObject);
begin
  P_Insert_Opers_From_Buffer( Grid_Opers );
end;

procedure TFrame_TechProc.Pop_M_Opers_Btn_DeleteClick(Sender: TObject);
begin
  Tp_Main_Form.Form_Tech_Proc_Main.P_DeleteFromDBGridEh( Grid_Opers );
end;

procedure TFrame_TechProc.Pop_M_Opers_Btn_Instr_CardsClick(Sender: TObject);
begin
  Form_Per_Instr_Card.TechProcDataFrame := Self.DataFrame;
  Form_Per_Instr_Card.ShowModal;
end;

procedure TFrame_TechProc.Pop_M_Opers_Btn_Tt_ParamsClick(Sender: TObject);
begin
  Try Grid_Opers.DataSource.DataSet.Post Except End;
  with TForm_Oper_TK_Params.Create(Self)
  do
  begin
    try
      TechProcDataFrame := Self.DataFrame;
      ShowModal;
      Try Grid_Opers.DataSource.DataSet.Post Except End;
    finally
      Free;
    end;
  end;
end;

procedure TFrame_TechProc.Pop_M_Opers_Btn_FilesClick(Sender: TObject);
begin
  Try Grid_Opers.DataSource.DataSet.Post Except End;
  Try Grid_Oper_Per.DataSource.DataSet.Post Except End;

  with TForm_Oper_Files.Create(Self)
  do
  begin
    try
      TechProcDataFrame := Self.DataFrame;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TFrame_TechProc.Pm_Print_Export_ExcelClick(Sender: TObject);
 var
  v_In_Params: TDynVarsEh;
begin
  F_Save_TechProc(Tb_Print);
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('Doc_Header_ID').AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Excel';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TFrame_TechProc.Pm_Print_Export_PDFClick(Sender: TObject);
 var
  v_In_Params: TDynVarsEh;
begin
  F_Save_TechProc(Tb_Print);
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('Doc_Header_ID').AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Export_In_Pdf';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TFrame_TechProc.Pm_Print_SeeClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  F_Save_TechProc(Tb_Print);
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('Doc_Header_ID').AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TFrame_TechProc.Pm_Print_See_W_FilesClick(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  F_Save_TechProc(Tb_Print);
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('Doc_Header_ID').AsInteger;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show_All_In_Pdf';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TFrame_TechProc.Pop_M_Doc_PartsPopup(Sender: TObject);
begin
  If Self.DataFrame.Db_Doc_Info.FieldByName('DOC_TYPE').AsInteger = 1
  Then
  Begin
    Pop_M_Doc_Parts_Btn_Correct_Tech_Mar.Visible := True;
    {Pop_M_Doc_Parts_Btn_Delete.Visible := False;
    Pop_M_Doc_Parts_Btn_Insert.Visible := False;}
  End
  Else
  Begin
    Pop_M_Doc_Parts_Btn_Correct_Tech_Mar.Visible := False;
    Pop_M_Doc_Parts_Btn_Delete.Visible := True;
    Pop_M_Doc_Parts_Btn_Insert.Visible := True;
  End;
end;

procedure TFrame_TechProc.Pop_M_OpersPopup(Sender: TObject);
begin
 If Grid_Opers.DataSource.DataSet.FieldByName('OPER_ID').AsInteger = 3394
 Then Pop_M_Opers_Btn_Tt_Params.Visible := True Else Pop_M_Opers_Btn_Tt_Params.Visible := False;

 if Grid_Opers.DataSource.DataSet.FieldByName('OPER_ID').AsInteger = 4972
 Then Pop_M_Opers_Btn_Lit_Params.Visible := True else Pop_M_Opers_Btn_Lit_Params.Visible := False;

 if Grid_Opers.DataSource.DataSet.FieldByName('OPER_ID').AsInteger = 2613
 Then Pop_M_Opers_Btn_Instr_Cards.Visible := True else Pop_M_Opers_Btn_Instr_Cards.Visible := False;

 If Tp_Dm.MemT_Buffer_Opers.RecordsView.Count <> 0
 Then
   Pop_M_Opers_Btn_Paste_Oper.Visible := True
 Else
   Pop_M_Opers_Btn_Paste_Oper.Visible := False;
end;

procedure TFrame_TechProc.Pop_M_Doc_Parts_Btn_Correct_Tech_MarClick(
  Sender: TObject);
Var
  V_New_Mar: String;
  v_Temp_Mar: String;
  V_In_Ceh_Params,
  V_Out_Ceh_Params: TDynVarsEh;
  v_Execute_Ceh_Kode: String;
  v_Counter: Integer;
  v_In_Params, v_Out_Params: TDynVarsEh;
  i: Integer;
begin
  Q_Clear_Doc_Parts_Temp.Execute;
  Db_Doc_Parts_Temp.Close;
  Db_Doc_Parts_Temp.Open;
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Find' ].AsString := 'DET_MAR';
  v_In_Params.DynVar[ 'Filter' ].AsString := ' Id_Det = ' + Self.DataFrame.Db_Doc_Info.FieldByName('DET_ID').AsString;
  v_Out_Params := Tp_Main_Form.Form_Tech_Proc_Main.F_Gen_Chose_Form( v_In_Params );
  if v_Out_Params <> Nil
  Then
  Begin
    V_New_Mar := v_Out_Params.DynVar[ 'MAR' ].AsString;

    {$Region 'Деление нового маршрута на блоки'}
    v_Temp_Mar := Copy( V_New_Mar, 0, Pos( '=', v_New_Mar ) );
    v_Counter := 1;
    For i := 0 To Length( v_Temp_Mar )
    Do
    Begin
      if ( v_Temp_Mar[ i ] <> '-' )
         And ( v_Temp_Mar[ i ] <> #0 )
         And (  v_Temp_Mar[ i ] <> '=' )
      Then
      Begin
        v_Execute_Ceh_Kode := v_Execute_Ceh_Kode + v_Temp_Mar[ i ];
      End
      Else if ( v_Temp_Mar[ i ] = '-' )
               Or (  v_Temp_Mar[ i ] = '#0' )
               Or (  v_Temp_Mar[ i ] = '=' )
      Then
      Begin
        If Length( v_Execute_Ceh_Kode ) = 1
        Then
        Begin
          v_Execute_Ceh_Kode := '0' + v_Execute_Ceh_Kode;
        End;
        Db_Doc_Parts_Temp.Append;
        Db_Doc_Parts_TempCEH_CODE_PAR.AsString := v_Execute_Ceh_Kode;
        Db_Doc_Parts_TempROW_NUM_PAR.AsInteger := v_Counter;
        Db_Doc_Parts_Temp.Post;
        Inc(v_Counter);
        v_Execute_Ceh_Kode := '';
      End;
    end;
    {$EndRegion 'Деление нового маршрута на блоки'}

    {$Region 'Поиск совпадений нового и старого маршрутов'}
    With Grid_Doc_Parts.DataSource.DataSet as TMemTableEh
    Do
    Begin
      Try
       DisableControls;
        First;
        Db_Doc_Parts_Temp.First;
        While( True )
        Do
        Begin
          If ( FieldByName('CEH_CODE').AsString = Db_Doc_Parts_Temp.FieldByName('CEH_CODE_PAR').AsString )
          Then
          Begin
            If Db_Doc_Parts_Temp.Eof
            Then
             Break;
            Db_Doc_Parts_Temp.Edit;
            Db_Doc_Parts_Temp.FieldByName('ID').AsInteger := FieldByName('ID').AsInteger;
            Db_Doc_Parts_Temp.FieldByName('CEH_CODE_REC').AsString := FieldByName('CEH_CODE').AsString;
            Db_Doc_Parts_Temp.FieldByName('CEH_ID_REC').AsInteger := FieldByName('CEH_ID').AsInteger;
            Db_Doc_Parts_Temp.FieldByName('ROW_NUM_REC').AsInteger := FieldByName('ROW_NUM').AsInteger;
            Db_Doc_Parts_Temp.Post;
            if Not Db_Doc_Parts_Temp.Eof
            Then
              Next;
          End
          Else if ( FieldByName('CEH_CODE').AsString <> Db_Doc_Parts_Temp.FieldByName('CEH_CODE_PAR').AsString )
                  And (Eof)
                  And (Db_Doc_Parts_Temp.Eof)
          Then
          Begin
            Break;
          End;
          If Not Db_Doc_Parts_Temp.Eof
          Then
            Db_Doc_Parts_Temp.Next
          Else
          Begin
            Db_Doc_Parts_Temp.First;
            Next;
          End;
        End;
        {$EndRegion 'Поиск совпадений нового и старого маршрутов'}

        {$Region 'Корректировка маршрута'}
        Grid_Doc_Parts.ReadOnly := False;
        // Удаляем лишние, обновляем позиции старых
        Grid_Doc_Parts.SaveBookmark;
        First;
        For I := 1 to RecordCount
        Do
        Begin
          If Db_Doc_Parts_Temp.Locate( 'ID', VarArrayOf([FieldByName('ID').AsString]), [ loPartialKey ] )
          Then
          Begin
            Edit;
            FieldByName('ROW_NUM').AsInteger := Db_Doc_Parts_Temp.FieldByName('ROW_NUM_PAR').AsInteger;
            Post;
            Next;
          End
          Else
           Delete;
        End;
        //Добавляем новые
        First;
        Db_Doc_Parts_Temp.First;
        While (True)
        Do
        Begin
          if Db_Doc_Parts_Temp.Eof
          Then
            Break;

          If FieldByName('ID').AsInteger = Db_Doc_Parts_Temp.FieldByName('ID').AsInteger
          Then
          Begin
            Next;
            Db_Doc_Parts_Temp.Next;
          End
          Else
          Begin
            Insert;
            FieldByName('ROW_NUM').AsInteger := Db_Doc_Parts_Temp.FieldByName('ROW_NUM_PAR').AsInteger;
            FieldByName('CEH_CODE').AsString := Db_Doc_Parts_Temp.FieldByName('CEH_CODE_PAR').AsString;
            FieldByName('CEH_ID').AsInteger := Db_Doc_Parts_Temp.FieldByName('CEH_ID_PAR').AsInteger;
            Post;
            Next;
            Db_Doc_Parts_Temp.Next;
          End;
        End;
        Grid_Doc_Parts.RestoreBookmark;
        {$EndRegion 'Корректировка маршрута'}

        {$Region 'Обновление маршрута в документе'}
        Q_Update_Doc_Det_Mar.SetVariable( 'v_Det_Mar', V_New_Mar );
        Q_Update_Doc_Det_Mar.SetVariable( 'v_Doc_Id', FDocHeaderId);
        Q_Update_Doc_Det_Mar.Execute;

        Try Post Except End;
        ApplyUpdates(0);
        MergeChangeLog;
        With ((DataDriver as TDataSetDriverEh).ProviderDataSet as  TOracleDataSet)
        Do
        Begin
          If UpdatesPending
          Then
          Begin
            Session.ApplyUpdates( [((DataDriver as TDataSetDriverEh).ProviderDataSet as  TOracleDataSet)], True );
            Grid_Doc_Parts.SaveVertPos('ID');
            Refresh;
            Grid_Doc_Parts.RestoreVertPos('ID');
          End;
        End;
      {$EndRegion 'Обновление маршрута в документе'}
      Finally
        EnableControls;
      End;
    End;
  End;
end;


procedure TFrame_TechProc.Act_CopyDocExecute(Sender: TObject);
Var
  V_In_Params: TDynVarsEh;
begin
  Try Grid_Opers.DataSource.DataSet.Post Except End;
  Try Grid_Oper_Per.DataSource.DataSet.Post Except End;
  Try Grid_Doc_Parts.DataSource.DataSet.Post Except End;
  Try Self.DataFrame.MemT_Per_Details.Post Except End;
  Try Self.DataFrame.MemT_Per_Materials.Post Except End;
  Try Self.DataFrame.MemT_Per_Instruments.Post Except End;
  Try Self.DataFrame.MemT_Per_Osnast.Post Except End;

  V_In_Params := TDynVarsEh.Create( Application.MainForm );
  V_In_Params.DynVar[ 'ThisDoc_Doc_Header_Id' ].AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('Doc_Header_Id').AsInteger;
  V_In_Params.DynVar[ 'v_Doc_Type' ].AsInteger := Self.DataFrame.Db_Doc_Info.FieldByName('DOC_TYPE').AsInteger;
  V_In_Params.DynVar[ 'v_Ceh_Id' ].AsString := Grid_Doc_Parts.DataSource.DataSet.FieldByName('Ceh_Id').AsString;

  P_Create_Copy_Doc( Tp_Copy_Tech_Proc_Form.Form_Chose_Doc_For_Copy.F_Chose_Doc_For_Copy( V_In_Params ) );
end;

procedure TFrame_TechProc.Act_PrintDocExecute(Sender: TObject);
  var
  v_In_Params: TDynVarsEh;
begin
  F_Save_TechProc(Sender);
  v_In_Params := TDynVarsEh.Create( Application.MainForm );
  v_In_Params.DynVar[ 'Doc_Header_Id' ].AsInteger := FDocHeaderId;
  v_In_Params.DynVar[ 'Format' ].AsString := 'Document';
  v_In_Params.DynVar[ 'Action' ].AsString := 'Show';
  Tp_Main_Form.Form_Tech_Proc_Main.P_Report_Tech_Process( v_In_Params, Nil );
end;

procedure TFrame_TechProc.Act_SaveDocExecute(Sender: TObject);
begin
  F_Save_TechProc(Tb_Save);
end;

procedure TFrame_TechProc.Act_SingDocExecute(Sender: TObject);
begin
  Form_Tech_Proc_Main.P_Approve_Doc(Nil, FDocHeaderId);
end;

procedure TFrame_TechProc.Btn_ChronCardsClick(Sender: TObject);
begin
  with TForm_Tp_ChronCards.Create(Self)
  do
  begin
    try
      TechProcDataFrame := Self.DataFrame;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TFrame_TechProc.Btn_DeleteNormClick(Sender: TObject);
begin
  Grid_Time_Norms.DataSource.DataSet.Delete;
end;

procedure TFrame_TechProc.Btn_Hide_DepsClick(Sender: TObject);
begin
  if SplitView1.Opened
  Then
  Begin
    SplitView1.Close;
    Btn_Hide_Deps.Caption := '>';
  End
  Else
  Begin
    SplitView1.Open;
    Btn_Hide_Deps.Caption := '<';
  End;
end;

procedure TFrame_TechProc.Btn_NormTimeHistClick(Sender: TObject);
begin
  with TForm_TechProc_TimeNormHist.Create(Self)
  do
  begin
    try
      TechProcDataFrame := Self.DataFrame;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TFrame_TechProc.Btn_NormTimePramsClick(Sender: TObject);
begin
  Try Grid_Opers.DataSource.DataSet.Post Except End;
  Try Grid_Time_Norms.DataSource.DataSet.Post Except End;

  with TForm_Setup_Time_Calc.Create(Self)
  do
  begin
    try
      TechProcDataFrame := Self.DataFrame;
      MemRec_Oper := (Grid_Opers.DataSource.DataSet as TMemTableEh).Rec;

      ShowModal;
      Try Grid_Opers.DataSource.DataSet.Post Except End;
      Try Grid_Time_Norms.DataSource.DataSet.Post Except End;
    finally
      Free;
    end;
  end;
end;

procedure TFrame_TechProc.Change_Doc_Edit(v_Param: string);
Var
  EnDataSet: TDataSet;
  i: Integer;
begin
  if v_Param = 'LOCK' then
  Begin
    For EnDataSet in Self.DataFrame.Arr_DataSetsOpenLine
    Do
    Begin
      if EnDataSet is TMemTableEh
      then
        (EnDataSet as TMemTableEh).ReadOnly := True
      else if EnDataSet is TOracleDataSet
      then
        (EnDataSet as TOracleDataSet).ReadOnly := True;
    End;
    Grid_Oper_Params.ReadOnly := True;
    (Grid_Oper_Params.DataSource.DataSet as TMemTableEh).ReadOnly := False;
    Grid_Per_Params.ReadOnly := True;
    (Grid_Per_Params.DataSource.DataSet as TMemTableEh).ReadOnly := False;
    Tb_Save.Enabled := False;
    Tb_CopyDoc.Enabled := False;
    Pop_M_Opers_Btn_Insert.Enabled := False;
    Pop_M_Opers_Btn_Paste_Oper.Enabled := False;
    Pop_M_Opers_Btn_Cut_Oper.Enabled := False;
    Pop_M_Opers_Btn_Delete.Enabled := False;
    Pop_M_Oper_Per_Btn_Insert.Enabled := False;
    Pop_M_Oper_Per_Btn_Delete.Enabled := False;
    Tb_LockStatus.ImageIndex := 51;
    Tb_LockStatus.Hint := 'Редактирование запрещено';
  End
  Else if v_Param = 'UNLOCK' then
  Begin
    For EnDataSet in Self.DataFrame.Arr_DataSetsOpenLine
    Do
    Begin
      if EnDataSet is TMemTableEh
      then
        (EnDataSet as TMemTableEh).ReadOnly := False
      else if EnDataSet is TOracleDataSet
      then
        (EnDataSet as TOracleDataSet).ReadOnly := False;
    End;
    Tb_Save.Enabled := True;
    Tb_CopyDoc.Enabled := True;
    Pop_M_Opers_Btn_Insert.Enabled := True;
    Pop_M_Opers_Btn_Paste_Oper.Enabled := True;
    Pop_M_Opers_Btn_Cut_Oper.Enabled := True;
    Pop_M_Opers_Btn_Delete.Enabled := True;
    Pop_M_Oper_Per_Btn_Insert.Enabled := True;
    Pop_M_Oper_Per_Btn_Delete.Enabled := True;
    if Not Tp_Main_Form.Form_Tech_Proc_Main.User_Admin
    Then
    Begin
      if (Self.DataFrame.Db_Doc_Info.FieldByName('DOC_TYPE').AsInteger = 1)
          And (Self.DataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsInteger = 1)
      Then
      Begin
        (Grid_Doc_Parts.DataSource.DataSet as TMemTableEh).ReadOnly := True;
      End
      Else
      Begin
        (Grid_Doc_Parts.DataSource.DataSet as TMemTableEh).ReadOnly := False;
        Grid_Doc_Parts.OptionsEh := Grid_Doc_Parts.OptionsEh + [dghRecordMoving];
      End;
    End;
    Tb_LockStatus.ImageIndex := 50;
    Tb_LockStatus.Hint := 'Редактирование разрешено';
  End
  Else if v_Param = 'UNLOCK_FOR_NORM' then
  Begin
    For i := 0 to Self.DataFrame.ComponentCount-1
    Do
    Begin
      If Self.DataFrame.Components[i] is TMemTableEh
      Then
      Begin
        (Self.DataFrame.Components[i] as TMemTableEh).ReadOnly := True;
      End;
    End;
    (Grid_Time_Norms.DataSource.DataSet as TMemTableEh).ReadOnly := False;
    Grid_Oper_Params.ReadOnly := True;
    (Grid_Oper_Params.DataSource.DataSet as TMemTableEh).ReadOnly := False;
    Grid_Per_Params.ReadOnly := True;
    (Grid_Per_Params.DataSource.DataSet as TMemTableEh).ReadOnly := False;
    Main_M_Tech_Proc_Btn_Save.Enabled := True;
    Main_M_Tech_Proc_Btn_Copy.Enabled := False;
    Pop_M_Opers_Btn_Insert.Enabled := False;
    Pop_M_Opers_Btn_Paste_Oper.Enabled := False;
    Pop_M_Opers_Btn_Cut_Oper.Enabled := False;
    Pop_M_Opers_Btn_Delete.Enabled := False;
    Pop_M_Oper_Per_Btn_Insert.Enabled := False;
    Pop_M_Oper_Per_Btn_Delete.Enabled := False;
    Tb_LockStatus.ImageIndex := 49;
    Tb_LockStatus.Hint := 'Ограниченное редактирование для нормировщиков';
  End;
end;

constructor TFrame_TechProc.Create(AOwner: TComponent; InDocHeaderId: Integer);
begin
  inherited Create(AOwner);
  FDocHeaderId := InDocHeaderId;
  FDataFrame := TFrameData_TechProc.Create(AOwner, InDocHeaderId);
  Name := Format('%s_%d',[Self.ClassName, InDocHeaderId]);
end;

Procedure TFrame_TechProc.P_Copy_Opers_In_Buffer(DBGridEh: TDBGridEh; cpCut: Bool);
var
  i: Integer;
  ASelectionType: TDBGridEhSelectionType;
  BottomRec: TMemoryRecordEh;
  v_Param: String;

  {$Region 'Процедура копирования в буфер'}
  Procedure Copy_Oper_In_Buffer;
  var
    i,j,k,
    Oper_Counter,
    Oper_Params_Counter,
    Oper_Per_Counter,
    Per_Params_Counter,
    Per_Det_Counter,
    Per_Mat_Counter,
    Per_Ins_Counter,
    Per_Osn_Counter: Integer;
    Src_Oper_MemRec,
    Src_Oper_Params_MemRec,
    Src_Oper_Per_MemRec,
    Src_Per_Params_MemRec,
    Src_Per_Det_MemRec,
    Src_Per_Mat_MemRec,
    Src_Per_Ins_MemRec,
    Src_Per_Osn_MemRec,
    Add_Oper_MemRec,
    Add_Oper_Params_MemRec,
    Add_Oper_Per_MemRec,
    Add_Per_Params_MemRec,
    Add_Per_Det_MemRec,
    Add_Per_Mat_MemRec,
    Add_Per_Ins_MemRec,
    Add_Per_Osn_MemRec: TMemoryRecordEh;
  Begin
     Tp_Dm.MemT_Buffer_Opers.RecordsView.MemTableData.RecordsList.BeginUpdate;
    Add_Oper_MemRec := Tp_Dm.MemT_Buffer_Opers.RecordsView.MemTableData.RecordsList.NewRecord;
    Src_Oper_MemRec := TMemTableEh( DBGridEh.DataSource.DataSet ).BookmarkToRec( DBGridEh.DataSource.DataSet.Bookmark );
    For I := 0 to Tp_Dm.MemT_Buffer_Opers.RecordsView.MemTableData.DataStruct.Count-1
    Do
      If ( TMemTableEh( DBGridEh.DataSource.DataSet ).RecordsView.MemTableData.DataStruct.FindField( Tp_Dm.MemT_Buffer_Opers.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name ) <> Nil )
          And ( Tp_Dm.MemT_Buffer_Opers.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name <> 'ID_OPER_ROW' )
      Then
        Add_Oper_MemRec.Value[ i, dvvValueEh ] := Src_Oper_MemRec.DataValues[ Tp_Dm.MemT_Buffer_Opers.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name, dvvValueEh ]
      Else if Tp_Dm.MemT_Buffer_Opers.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name = 'ID_OPER_ROW'
      Then
        Add_Oper_MemRec.DataValues[ 'ID_OPER_ROW', dvvValueEh ] := Src_Oper_MemRec.DataValues[ 'ID_ROW_OPER', dvvValueEh ];

    Tp_Dm.MemT_Buffer_Opers.RecordsView.MemTableData.RecordsList.FetchRecord( Add_Oper_MemRec );

    With (Grid_Oper_Params.DataSource.DataSet as TMemTableEh)
    Do
    Begin
      Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.RecordsList.BeginUpdate;
      For Oper_Params_Counter := 0 to RecordCount - 1
      Do
      Begin
        Src_Oper_Params_MemRec := (Grid_Oper_Params.DataSource.DataSet as TMemTableEh).RecordsView.Rec[Oper_Params_Counter];
        Add_Oper_Params_MemRec := Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.RecordsList.NewRecord;
        For I := 0 to Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.DataStruct.Count-1
        Do
          If ( Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.DataStruct.FindField( Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name ) <> Nil )
              And ( Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name <> 'ID_OPER_ROW' )
              And ( Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name <> 'ID_ROW_TP_OP_PRM' )
          Then
            Add_Oper_Params_MemRec.Value[ i, dvvValueEh ] := Src_Oper_Params_MemRec.DataValues[ Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name, dvvValueEh ]
          Else if Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name = 'ID_OPER_ROW'
          Then
            Add_Oper_Params_MemRec.DataValues[ 'ID_OPER_ROW', dvvValueEh ] := Src_Oper_MemRec.DataValues[ 'ID_ROW_OPER', dvvValueEh ];
        Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.RecordsList.FetchRecord( Add_Oper_Params_MemRec );
      End;
      Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.RecordsList.EndUpdate;
    End;

    With (Grid_Oper_Per.DataSource.DataSet as TMemTableEh)
    Do
    Begin
      Tp_Dm.MemT_Buffer_Oper_Per.RecordsView.MemTableData.RecordsList.BeginUpdate;
      For Oper_Per_Counter := 0 to RecordCount-1
      Do
      Begin
        Src_Oper_Per_MemRec := (Grid_Oper_Per.DataSource.DataSet as TMemTableEh).RecordsView.Rec[Oper_Per_Counter];
        GotoRec( Src_Oper_Per_MemRec );
        Add_Oper_Per_MemRec := Tp_Dm.MemT_Buffer_Oper_Per.RecordsView.MemTableData.RecordsList.NewRecord;
        For I := 0 to Tp_Dm.MemT_Buffer_Oper_Per.RecordsView.MemTableData.DataStruct.Count-1
        Do
          If ( (Grid_Oper_Per.DataSource.DataSet as TMemTableEh).RecordsView.MemTableData.DataStruct.FindField( Tp_Dm.MemT_Buffer_Oper_Per.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name ) <> Nil )
              And ( Tp_Dm.MemT_Buffer_Oper_Per.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name <> 'ID_OPER_ROW' )
              And ( Tp_Dm.MemT_Buffer_Oper_Per.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name <> 'ID_PER_ROW' )
          Then
            Add_Oper_Per_MemRec.Value[ i, dvvValueEh ] := Src_Oper_Per_MemRec.DataValues[ Tp_Dm.MemT_Buffer_Oper_Per.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name, dvvValueEh ]
          Else if Tp_Dm.MemT_Buffer_Oper_Per.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name = 'ID_OPER_ROW'
          Then
            Add_Oper_Per_MemRec.DataValues[ 'ID_OPER_ROW', dvvValueEh ] := Src_Oper_Per_MemRec.DataValues[ 'ID_ROW_OPER', dvvValueEh ]
          Else if Tp_Dm.MemT_Buffer_Oper_Per.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name = 'ID_PER_ROW'
          Then
            Add_Oper_Per_MemRec.DataValues[ 'ID_PER_ROW', dvvValueEh ] := Src_Oper_Per_MemRec.DataValues[ 'ID', dvvValueEh ];
        Tp_Dm.MemT_Buffer_Oper_Per.RecordsView.MemTableData.RecordsList.FetchRecord( Add_Oper_Per_MemRec );

        With (Grid_Per_Params.DataSource.DataSet as TMemTableEh)
        Do
        Begin
          Tp_Dm.MemT_Buffer_Per_Params.RecordsView.MemTableData.RecordsList.BeginUpdate;
          For Per_Params_Counter := 0 to RecordCount - 1
          Do
          Begin
            Src_Per_Params_MemRec := (Grid_Per_Params.DataSource.DataSet as TMemTableEh).RecordsView.Rec[Per_Params_Counter];
            Add_Per_Params_MemRec := Tp_Dm.MemT_Buffer_Per_Params.RecordsView.MemTableData.RecordsList.NewRecord;
            For I := 0 to Tp_Dm.MemT_Buffer_Per_Params.RecordsView.MemTableData.DataStruct.Count-1
            Do
              If ( Tp_Dm.MemT_Buffer_Per_Params.RecordsView.MemTableData.DataStruct.FindField( Tp_Dm.MemT_Buffer_Per_Params.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name ) <> Nil )
                  And ( Tp_Dm.MemT_Buffer_Per_Params.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name <> 'ID_PER_ROW' )
                  And ( Tp_Dm.MemT_Buffer_Oper_Params.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name <> 'ID_ROW_TP_P_PRM' )
              Then
                Add_Per_Params_MemRec.Value[ i, dvvValueEh ] := Src_Per_Params_MemRec.DataValues[ Tp_Dm.MemT_Buffer_Per_Params.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name, dvvValueEh ]
              Else if Tp_Dm.MemT_Buffer_Per_Params.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name = 'ID_PER_ROW'
              Then
                Add_Per_Params_MemRec.DataValues[ 'ID_PER_ROW', dvvValueEh ] := Src_Oper_Per_MemRec.DataValues[ 'ID', dvvValueEh ];
            Tp_Dm.MemT_Buffer_Per_Params.RecordsView.MemTableData.RecordsList.FetchRecord( Add_Per_Params_MemRec );
          End;
          Tp_Dm.MemT_Buffer_Per_Params.RecordsView.MemTableData.RecordsList.EndUpdate;
        End;

        With Self.DataFrame.MemT_Per_Details
        Do
        Begin
          Tp_Dm.MemT_Buffer_Per_Det.RecordsView.MemTableData.RecordsList.BeginUpdate;
          For Per_Det_Counter := 0 To RecordCount-1
          Do
          Begin
            Src_Per_Det_MemRec := Self.DataFrame.MemT_Per_Details.RecordsView.Rec[Per_Det_Counter];
            Add_Per_Det_MemRec := Tp_Dm.MemT_Buffer_Per_Det.RecordsView.MemTableData.RecordsList.NewRecord;
            For I := 0 to Tp_Dm.MemT_Buffer_Per_Det.RecordsView.MemTableData.DataStruct.Count-1
            Do
              If ( Self.DataFrame.MemT_Per_Details.RecordsView.MemTableData.DataStruct.FindField( Tp_Dm.MemT_Buffer_Per_Det.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name ) <> Nil )
                  And ( Tp_Dm.MemT_Buffer_Per_Det.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name <> 'ID_PER_ROW' )
              Then
                Add_Per_Det_MemRec.Value[ i, dvvValueEh ] := Src_Per_Det_MemRec.DataValues[ Tp_Dm.MemT_Buffer_Per_Det.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name, dvvValueEh ]
              Else if  Tp_Dm.MemT_Buffer_Per_Det.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name = 'ID_PER_ROW'
              Then
                Add_Per_Det_MemRec.DataValues[ 'ID_PER_ROW', dvvValueEh ] := Src_Per_Det_MemRec.DataValues[ 'ID_ROW_PER', dvvValueEh ];
            Tp_Dm.MemT_Buffer_Per_Det.RecordsView.MemTableData.RecordsList.FetchRecord( Add_Per_Det_MemRec );
          End;
          Tp_Dm.MemT_Buffer_Per_Det.RecordsView.MemTableData.RecordsList.EndUpdate;
        End;

        With Self.DataFrame.MemT_Per_Materials
        Do
        Begin
          Tp_Dm.MemT_Buffer_Per_Mat.RecordsView.MemTableData.RecordsList.BeginUpdate;
          For Per_Mat_Counter := 0 To RecordCount-1
          Do
          Begin
            Src_Per_Mat_MemRec := Self.DataFrame.MemT_Per_Materials.RecordsView.Rec[Per_Mat_Counter];
            Add_Per_Mat_MemRec := Tp_Dm.MemT_Buffer_Per_Mat.RecordsView.MemTableData.RecordsList.NewRecord;
            For I := 0 to Tp_Dm.MemT_Buffer_Per_Mat.RecordsView.MemTableData.DataStruct.Count-1
            Do
              If ( Self.DataFrame.MemT_Per_Materials.RecordsView.MemTableData.DataStruct.FindField( Tp_Dm.MemT_Buffer_Per_Mat.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name ) <> Nil )
                  And ( Tp_Dm.MemT_Buffer_Per_Mat.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name <> 'ID_PER_ROW' )
              Then
                Add_Per_Mat_MemRec.Value[ i, dvvValueEh ] := Src_Per_Mat_MemRec.DataValues[ Tp_Dm.MemT_Buffer_Per_Mat.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name, dvvValueEh ]
              Else if  Tp_Dm.MemT_Buffer_Per_Mat.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name = 'ID_PER_ROW'
              Then
                Add_Per_Mat_MemRec.DataValues[ 'ID_PER_ROW', dvvValueEh ] := Src_Per_Mat_MemRec.DataValues[ 'ID_ROW_PER', dvvValueEh ];
            Tp_Dm.MemT_Buffer_Per_Mat.RecordsView.MemTableData.RecordsList.FetchRecord( Add_Per_Mat_MemRec );
          End;
          Tp_Dm.MemT_Buffer_Per_Mat.RecordsView.MemTableData.RecordsList.EndUpdate;
        End;

        With Self.DataFrame.MemT_Per_Instruments
        Do
        Begin
          Tp_Dm.MemT_Buffer_Per_Ins.RecordsView.MemTableData.RecordsList.BeginUpdate;
          For Per_Ins_Counter := 0 To RecordCount-1
          Do
          Begin
            Src_Per_Ins_MemRec := Self.DataFrame.MemT_Per_Instruments.RecordsView.Rec[Per_Ins_Counter];
            Add_Per_Ins_MemRec := Tp_Dm.MemT_Buffer_Per_Ins.RecordsView.MemTableData.RecordsList.NewRecord;
            For I := 0 to Tp_Dm.MemT_Buffer_Per_Ins.RecordsView.MemTableData.DataStruct.Count-1
            Do
              If ( Self.DataFrame.MemT_Per_Instruments.RecordsView.MemTableData.DataStruct.FindField( Tp_Dm.MemT_Buffer_Per_Ins.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name ) <> Nil )
                  And ( Tp_Dm.MemT_Buffer_Per_Ins.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name <> 'ID_PER_ROW' )
              Then
                Add_Per_Ins_MemRec.Value[ i, dvvValueEh ] := Src_Per_Ins_MemRec.DataValues[ Tp_Dm.MemT_Buffer_Per_Ins.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name, dvvValueEh ]
              Else if  Tp_Dm.MemT_Buffer_Per_Ins.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name = 'ID_PER_ROW'
              Then
                Add_Per_Ins_MemRec.DataValues[ 'ID_PER_ROW', dvvValueEh ] := Src_Per_Ins_MemRec.DataValues[ 'ID_ROW_PER', dvvValueEh ];
            Tp_Dm.MemT_Buffer_Per_Ins.RecordsView.MemTableData.RecordsList.FetchRecord( Add_Per_Ins_MemRec );
          End;
          Tp_Dm.MemT_Buffer_Per_Ins.RecordsView.MemTableData.RecordsList.EndUpdate;
        End;

        With Self.DataFrame.MemT_Per_Osnast
        Do
        Begin
          Tp_Dm.MemT_Buffer_Per_Osn.RecordsView.MemTableData.RecordsList.BeginUpdate;
          For Per_Osn_Counter := 0 To RecordCount-1
          Do
          Begin
            Src_Per_Osn_MemRec := Self.DataFrame.MemT_Per_Osnast.RecordsView.Rec[Per_Osn_Counter];
            Add_Per_Osn_MemRec := Tp_Dm.MemT_Buffer_Per_Osn.RecordsView.MemTableData.RecordsList.NewRecord;
            For I := 0 to Tp_Dm.MemT_Buffer_Per_Osn.RecordsView.MemTableData.DataStruct.Count-1
            Do
              If ( Self.DataFrame.MemT_Per_Osnast.RecordsView.MemTableData.DataStruct.FindField( Tp_Dm.MemT_Buffer_Per_Osn.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name ) <> Nil )
                  And ( Tp_Dm.MemT_Buffer_Per_Osn.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name <> 'ID_PER_ROW' )
              Then
                Add_Per_Osn_MemRec.Value[ i, dvvValueEh ] := Src_Per_Osn_MemRec.DataValues[ Tp_Dm.MemT_Buffer_Per_Osn.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name, dvvValueEh ]
              Else if  Tp_Dm.MemT_Buffer_Per_Osn.RecordsView.MemTableData.DataStruct.DataFields[ i ].Name = 'ID_PER_ROW'
              Then
                Add_Per_Osn_MemRec.DataValues[ 'ID_PER_ROW', dvvValueEh ] := Src_Per_Osn_MemRec.DataValues[ 'ID_ROW_PER', dvvValueEh ];
            Tp_Dm.MemT_Buffer_Per_Osn.RecordsView.MemTableData.RecordsList.FetchRecord( Add_Per_Osn_MemRec );
          End;
          Tp_Dm.MemT_Buffer_Per_Osn.RecordsView.MemTableData.RecordsList.EndUpdate;
        End;
      End;
      Tp_Dm.MemT_Buffer_Oper_Per.RecordsView.MemTableData.RecordsList.EndUpdate;
    End;
    Tp_Dm.MemT_Buffer_Opers.RecordsView.MemTableData.RecordsList.EndUpdate;
  End;

  {$EndRegion 'Процедура копирования в буфер'}

begin
  With Tp_Dm
  Do
  Begin
    MemT_Buffer_Opers.EmptyTable;
    MemT_Buffer_Oper_Params.EmptyTable;
    MemT_Buffer_Oper_Per.EmptyTable;
    MemT_Buffer_Per_Params.EmptyTable;
    MemT_Buffer_Per_Det.EmptyTable;
    MemT_Buffer_Per_Mat.EmptyTable;
    MemT_Buffer_Per_Ins.EmptyTable;
    MemT_Buffer_Per_Osn.EmptyTable;
    MemT_Buffer_Opers.LoadFromDataSet( Db_Copy_Doc_Info_Opers, -1, lmCopyStructureOnly, True );
    MemT_Buffer_Oper_Params.LoadFromDataSet( Db_Copy_Doc_Info_Oper_Params, -1, lmCopyStructureOnly, True );
    MemT_Buffer_Oper_Per.LoadFromDataSet( Db_Copy_Doc_Info_Oper_Per, -1, lmCopyStructureOnly, True );
    MemT_Buffer_Per_Params.LoadFromDataSet( Db_Copy_Doc_Info_Per_Params, -1, lmCopyStructureOnly, True );
    MemT_Buffer_Per_Osn.LoadFromDataSet( Db_Copy_Doc_Info_Oper_Per_Osn, -1, lmCopyStructureOnly, True );
    MemT_Buffer_Per_Ins.LoadFromDataSet( Db_Copy_Doc_Info_Oper_Per_Ins, -1, lmCopyStructureOnly, True );
    MemT_Buffer_Per_Mat.LoadFromDataSet( Db_Copy_Doc_Info_Oper_Per_Mat, -1, lmCopyStructureOnly, True );
    MemT_Buffer_Per_Det.LoadFromDataSet( Db_Copy_Doc_Info_Oper_Per_Det, -1, lmCopyStructureOnly, True );
  End;
  With DBGridEh do
  begin
    ASelectionType := Selection.SelectionType;
    if cpCut then v_Param := 'Вырезать' Else v_Param := 'Скопировать';

    {$Region 'Если выделена одна запись, то ASelectionType = gstNon'}
    if ( ASelectionType = gstNon ) and
       ( not DataSource.DataSet.IsEmpty ) and
       ( MessageBox( Application.ActiveFormHandle, PWideChar( v_Param + ' операцию?' ) ,'Внимание!' ,MB_YESNO  + MB_ICONINFORMATION ) = ID_YES )
    then
    begin
      {Clipboard.AsText := MemT_OpersID.AsString + MemT_OpersID_PART_TP.AsString + #9;}
      Copy_Oper_In_Buffer;
      if cpCut then DataSource.DataSet.Delete;
      Exit;
    end
    {$EndRegion 'Если выделена одна запись, то ASelectionType = gstNon'}

    {$Region 'Если выделена не одна запись'}
    Else if ( ASelectionType <> gstNon ) and
    ( not DataSource.DataSet.IsEmpty ) and
     (  MessageBox( Application.ActiveFormHandle, PWideChar( v_Param + ' операции?' ),'Внимание!',MB_YESNO  + MB_ICONINFORMATION ) = ID_YES )
    Then
    Begin
      With DataSource.DataSet as TMemTableEh
      Do
      Begin
        SaveBookmark;
        Try
          Case ASelectionType
          Of
            {$Region 'Выделены целиком строки'}
            gstRecordBookmarks:
            begin
              //BlockReadSize := Selection.Rows.Count;
              For i := 0 to Selection.Rows.Count - 1
              Do
              Begin
                Bookmark := Selection.Rows[i];
                Copy_Oper_In_Buffer;
                if cpCut then Delete;
                If Eof Then Break;
              end;//for
              Selection.Clear;
            end;
            {$EndRegion 'Выделены целиком строки'}

            {$Region 'Выделена прямоугольная область'}
            gstRectangle: //Выделена прямоугольная область
            Begin
              //BlockReadSize := 10;
              Bookmark := Selection.Rect.TopRow;
              BottomRec := BookmarkToRec(Selection.Rect.BottomRow);
              While True
              Do
              Begin
                Copy_Oper_In_Buffer;
                if cpCut then
                begin
                  if BottomRec = BookmarkToRec(Bookmark)
                  then
                  begin
                    Delete;
                    Break;
                  end
                  else
                    Delete;
                end
                else If not cpCut
                Then Next;
                If DataSetCompareBookmarks( DBGridEh.DataSource.DataSet,
                                            Bookmark,
                                            Selection.Rect.BottomRow ) = 1
                Then Break;
                If Eof Then Break;
              End;
              Selection.Clear;
            end;
           {$EndRegion 'Выделена прямоугольная область'}

            {$Region 'Выделены все'}
            gstAll: //Выделены все
            begin
              //BlockReadSize := 10;
              First;
              while True do
              Begin
                Copy_Oper_In_Buffer;
                if cpCut then Delete;
                If not cpCut Then Next;
                If Eof
                Then
                Begin
                  Copy_Oper_In_Buffer;
                  Break;
                End;
              End;
              Selection.Clear;
            End;
            {$EndRegion 'Выделены все'}
          End;
        Finally
          //BlockReadSize := 0;
          //EnableControls;
        End;
      End;
    End;
    {$EndRegion 'Если выделена не одна запись'}
  end;
end;

Procedure TFrame_TechProc.P_Insert_Opers_From_Buffer;
  var
    i,j,k,
    Oper_Counter,
    Oper_Params_Counter,
    Oper_Per_Counter,
    Per_Params_Counter,
    Per_Det_Counter,
    Per_Mat_Counter,
    Per_Ins_Counter,
    Per_Osn_Counter: Integer;
    Src_Oper_MemRec,
    Src_Oper_Per_MemRec,
    Src_Per_Det_MemRec,
    Src_Per_Mat_MemRec,
    Src_Per_Ins_MemRec,
    Src_Per_Osn_MemRec,
    Add_Oper_MemRec,
    Add_Oper_Per_MemRec,
    Add_Per_Det_MemRec,
    Add_Per_Mat_MemRec,
    Add_Per_Ins_MemRec,
    Add_Per_Osn_MemRec: TMemoryRecordEh;

    v_In_User_Params,
    v_Out_User_Params: TDynVarsEh;
begin
  Tp_Dm.MemT_Buffer_Opers.Active := True;
  Tp_Dm.MemT_Buffer_Oper_Params.Active := True;
  Tp_Dm.MemT_Buffer_Oper_Per.Active := True;
  Tp_Dm.MemT_Buffer_Per_Params.Active := True;
  Tp_Dm.MemT_Buffer_Per_Det.Active := True;
  Tp_Dm.MemT_Buffer_Per_Mat.Active := True;
  Tp_Dm.MemT_Buffer_Per_Ins.Active := True;
  Tp_Dm.MemT_Buffer_Per_Osn.Active := True;

  With DbGridEh
  Do
  Begin
    With TMemTableEh( DataSource.DataSet )
    Do
    Begin
      DisableControls;
      Tp_Dm.MemT_Buffer_Opers.First;
      For Oper_Counter := 1 To Tp_Dm.MemT_Buffer_Opers.RecordCount
      Do
      Begin
        Insert;//Append;
        CopyFields( Tp_Dm.MemT_Buffer_Opers );
        With Grid_Oper_Params.DataSource.DataSet
        Do
        Begin
          Tp_Dm.MemT_Buffer_Oper_Params.First;
          For Oper_Params_Counter := 1 to Tp_Dm.MemT_Buffer_Oper_Params.RecordCount
          Do
          Begin
            Insert;
            CopyFields( Tp_DM.MemT_Buffer_Oper_Params );
            Self.DataFrame.Seq_Oper_Params.Execute;
            FieldByName('ID_ROW_TP_OP_PRM').AsInteger := Self.DataFrame.Seq_Oper_Params.FieldAsInteger(0);
            Post;
            Next;
            Tp_Dm.MemT_Buffer_Oper_Params.Next;
          End;
        End;

        With Grid_Oper_Per.DataSource.DataSet
        Do
        Begin
          Tp_Dm.MemT_Buffer_Oper_Per.First;
          For Oper_Per_Counter := 1 To Tp_Dm.MemT_Buffer_Oper_Per.RecordCount
          Do
          Begin
            Insert;//Append;
            CopyFields( Tp_Dm.MemT_Buffer_Oper_Per );
            FieldByName('NOM_PER').AsInteger := Oper_Per_Counter;
            With Grid_per_Params.DataSource.DataSet
            Do
            Begin
              Tp_Dm.MemT_Buffer_Per_Params.First;
              For Per_Params_Counter := 1 to Tp_Dm.MemT_Buffer_Per_Params.RecordCount
              Do
              Begin
                Insert;
                CopyFields( Tp_DM.MemT_Buffer_Per_Params );
                Self.DataFrame.Seq_Per_Params.Execute;
                FieldByName('ID_ROW_TP_PR_PRM').AsInteger := Self.DataFrame.Seq_Per_Params.FieldAsInteger(0);
                Post;
                Next;
                Tp_Dm.MemT_Buffer_Per_Params.Next;
              End;
            End;
            Post;

            With Self.DataFrame.MemT_Per_Details
            Do
            Begin
              Tp_Dm.MemT_Buffer_Per_Det.First;
              For Per_Det_Counter := 1 To Tp_Dm.MemT_Buffer_Per_Det.RecordCount
              Do
              Begin
                Insert;//Append;
                CopyFields( Tp_Dm.MemT_Buffer_Per_Det );
                Post;
                Next;
                Tp_Dm.MemT_Buffer_Per_Det.Next;
              End;
            End;

            With Self.DataFrame. MemT_Per_Materials
            Do
            Begin
              Tp_Dm.MemT_Buffer_Per_Mat.First;
              For Per_Mat_Counter := 1 To Tp_Dm.MemT_Buffer_Per_Mat.RecordCount
              Do
              Begin
                Insert;//Append;
                CopyFields( Tp_Dm.MemT_Buffer_Per_Mat );
                Post;
                Next;
                Tp_Dm.MemT_Buffer_Per_Mat.Next;
              End;
            End;

            With Self.DataFrame.MemT_Per_Instruments
            Do
            Begin
              Tp_Dm.MemT_Buffer_Per_Ins.First;
              For Per_Ins_Counter := 1 To Tp_Dm.MemT_Buffer_Per_Ins.RecordCount
              Do
              Begin
                Insert;//Append;
                CopyFields( Tp_Dm.MemT_Buffer_Per_Ins );
                Post;
                Next;
                Tp_Dm.MemT_Buffer_Per_Ins.Next;
              End;
            End;

            With Self.DataFrame.MemT_Per_Osnast
            Do
            Begin
              Tp_Dm.MemT_Buffer_Per_Osn.First;
              For Per_Osn_Counter := 1 To Tp_Dm.MemT_Buffer_Per_Osn.RecordCount
              Do
              Begin
                Insert;//Append;
                CopyFields( Tp_Dm.MemT_Buffer_Per_Osn );
                Post;
                Next;
                Tp_Dm.MemT_Buffer_Per_Osn.Next;
              End;
            End;

            Next;
            Tp_Dm.MemT_Buffer_Oper_Per.Next;
          End;
        End;

        Post;
        Next;
        Tp_Dm.MemT_Buffer_Opers.Next;
      End;
      EnableControls;
    End;
  End;
end;

procedure TFrame_TechProc.P_Open_TechProc;
  var
  v_In_Params,
  v_In_Doc_Params,
  v_Out_Doc_Params: TDynVarsEh;
  EnOraDataSet: TOracleDataSet;
  EnMemTable: TMemTableEh;
  EnDataSet: TDataSet;
  i: Integer;
  RttiContext: TRttiContext;
  RttiType: TRttiType;
  props: TArray<TRttiProperty>;
  EnComponent: TComponent;
  ObjectProperty: PPropInfo;
  PropertyValue: String;
begin
  With Self.DataFrame
  Do
  Begin
    Grid_Doc_Parts.DataSource := Data_Doc_Parts;
    Grid_Opers.DataSource := Data_Opers;
    E_IOT.DataSource := Data_Opers;
    E_OBOR.DataSource := Data_Opers;
    E_DET_MAT.DataSource := Data_Opers;
    E_TARA_NUM.DataSource := Data_Opers;
    E_TARA_NAME.DataSource := Data_Opers;
    E_OPER_PRIM.DataSource := Data_Opers;
    E_Oper_TT.DataSource := Data_Opers;
    E_TT.DataSource := Data_Opers;
    Grid_Time_Norms.DataSource := Data_Oper_Time;
    Grid_Oper_Params.DataSource := Data_Oper_Params;
    Grid_Oper_Per.DataSource := Data_Oper_Per;
    E_OPER_PER_PRIM.DataSource := Data_Oper_Per;
    E_TT_PER.DataSource := Data_Oper_Per;
    Grid_Per_Params.DataSource := Data_Per_Params;
    E_TechProcSomeInformation.DataSource := Data_TechProcSomeInformation;

    {$Region 'Датасеты'}
    For I := 0 to Length(Arr_DataSetsOpenLine)-1
    Do
    Begin
      if Arr_DataSetsOpenLine[i] is TOracleDataSet
      then
      begin
        EnOraDataSet := (Arr_DataSetsOpenLine[i] as TOracleDataSet);
        if EnOraDataSet.VariableIndex('In_Doc_Id')<>-1
        then
          EnOraDataSet.SetVariable('In_Doc_Id',(FDocHeaderId));
        EnOraDataSet.Active:=True;
      end
      else if Arr_DataSetsOpenLine[i] is TMemTableEh
      then
      begin
        EnMemTable := Arr_DataSetsOpenLine[i] as TMemTableEh;
        EnOraDataSet := (EnMemTable.DataDriver as TDataSetDriverEh).ProviderDataSet as TOracleDataSet;
        if EnOraDataSet.VariableIndex('In_Doc_Id')<>-1
        then
          EnOraDataSet.SetVariable('In_Doc_Id',(FDocHeaderId));
        EnMemTable.Active:=True;
      end
      else
        Arr_DataSetsOpenLine[i].Active:=True;
    End;
    {$EndRegion 'Датасеты'}

    E_Addit_Num.Text := Db_Doc_InfoADDIT_INFO_NUM.AsString;
    E_Addit_Name.Text := Db_Doc_InfoADDIT_INFO_NAME.AsString;

    {Db_Frame_Params.First;
    while not Db_Frame_Params.Eof
    do
    begin
      EnComponent:=Self.FindComponent(Db_Frame_ParamsCOMPONENT_NAME.AsString);
      if EnComponent<>Nil
      then
      begin
        ObjectProperty := GetPropInfo(EnComponent.ClassType, Db_Frame_ParamsCOMPONENT_PROPERTY.AsString);
        case ObjectProperty.PropType^.Kind
          of tkEnumeration, tkInteger: SetOrdProp(EnComponent, ObjectProperty, Db_Frame_ParamsCOMPONENT_PRPTY_VALUE.AsVariant);
          tkUnknown: ShowMessage(Format('%s=tkUnknown', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkChar, tkString: SetStrProp(EnComponent, ObjectProperty, Db_Frame_ParamsCOMPONENT_PRPTY_VALUE.AsVariant);
          tkFloat: SetFloatProp(EnComponent, ObjectProperty, Db_Frame_ParamsCOMPONENT_PRPTY_VALUE.AsVariant);
          tkSet:
          begin
            if Copy(Db_Frame_ParamsCOMPONENT_PRPTY_VALUE.AsVariant, 0, 1)='-'
            then
            begin
              PropertyValue := GetSetProp(EnComponent, ObjectProperty, False);
              PropertyValue := StringReplace(PropertyValue,Copy(Db_Frame_ParamsCOMPONENT_PRPTY_VALUE.AsVariant, 2)+',', '', [rfReplaceAll]);
              SetSetProp(EnComponent, ObjectProperty, PropertyValue);
            end
            else if Copy(Db_Frame_ParamsCOMPONENT_PRPTY_VALUE.AsVariant, 0, 1)='+'
            then
            begin
              PropertyValue := GetSetProp(EnComponent, ObjectProperty, False);
              PropertyValue := PropertyValue+ ','+Copy(Db_Frame_ParamsCOMPONENT_PRPTY_VALUE.AsVariant, 2);
              SetSetProp(EnComponent, ObjectProperty, PropertyValue);
            end
            else
              SetSetProp(EnComponent, ObjectProperty, Db_Frame_ParamsCOMPONENT_PRPTY_VALUE.AsVariant);
          end;
          tkClass: ShowMessage(Format('%s=tkClass', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkMethod: ShowMessage(Format('%s=tkMethod', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkWChar: ShowMessage(Format('%s=tkWChar', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkLString: ShowMessage(Format('%s=tkLString', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkWString: ShowMessage(Format('%s=tkWString', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkVariant: ShowMessage(Format('%s=tkVariant', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkArray: ShowMessage(Format('%s=tkArray', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkRecord: ShowMessage(Format('%s=tkRecord', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkInterface: ShowMessage(Format('%s=tkInterface', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkInt64: ShowMessage(Format('%s=tkInt64', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkDynArray: ShowMessage(Format('%s=tkDynArray', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkUString: ShowMessage(Format('%s=tkUString', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkClassRef: ShowMessage(Format('%s=tkClassRef', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkPointer: ShowMessage(Format('%s=tkPointer', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
          tkProcedure: ShowMessage(Format('%s=tkProcedure', [Db_Frame_ParamsCOMPONENT_PROPERTY.AsString]));
        end;
      end;
      Db_Frame_Params.Next;
    end; }

    Change_Doc_Edit( Db_Doc_Info.FieldByName('DOC_EDIT_STAT').AsString );

    if (Db_Doc_Info.FieldByName('DOC_EDIT_STAT').AsString = 'UNLOCK')
       Or (Db_Doc_Info.FieldByName('DOC_EDIT_STAT').AsString = 'UNLOCK_FOR_NORM')
    then
    Begin
      StatusBar1.Panels[1].Text := DateTimeToStr(Now());
      StatusBar1.Panels[3].Text := '';
    End;
  End;
end;

Procedure TFrame_TechProc.P_Create_Copy_Doc(v_Params: TDynVarsEh);
Var
  Part_Count,
  Oper_Count : Integer;
  Row_Count : Integer;
  v_Copy_Opers_Dataset: TMemTableEh;
  v_Copy_Oper_Params_Dataset: TMemTableEh;
  v_Copy_Oper_Per_Dataset: TMemTableEh;
  v_Copy_Per_Params_Dataset: TMemTableEh;
  v_Copy_Per_Det_Dataset: TMemTableEh;
  v_Copy_Per_Mat_Dataset: TMemTableEh;
  v_Copy_Per_Ins_Dataset: TMemTableEh;
  v_Copy_Per_Osn_Dataset: TMemTableEh;

  {$Region ' Процедура для копирование операций, переходов и тд.'}
  Procedure Copy_Fields;
  Var
  Oper_Count,
  Oper_Param_Count,
  Per_Count,
  Per_Param_Count,
  Per_Det_Count,
  Per_Mat_Count,
  Per_Ins_Count,
  Per_Osn_Coint : Integer;
  Begin
    Grid_Opers.DataSource.DataSet.Append;
    Grid_Opers.DataSource.DataSet.CopyFields(v_Copy_Opers_Dataset);
    v_Copy_Oper_Params_Dataset.First;
    For Oper_Param_Count := 1 to v_Copy_Oper_Params_Dataset.RecordCount
    Do
    Begin
      Grid_Oper_Params.DataSource.DataSet.Append;
      Grid_Oper_Params.DataSource.DataSet.CopyFields(v_Copy_Oper_Params_Dataset);
      Self.DataFrame.Seq_Oper_Params.Execute;
      Grid_Oper_Params.DataSource.DataSet.FieldByName('ID_ROW_TP_OP_PRM').AsInteger := Self.DataFrame.Seq_Oper_Params.FieldAsInteger(0);
      Grid_Oper_Params.DataSource.DataSet.Post;
      v_Copy_Oper_Params_Dataset.Next;
    End;
    Grid_Opers.DataSource.DataSet.Post;

    v_Copy_Oper_Per_Dataset.First;
    For Per_Count := 1 To v_Copy_Oper_Per_Dataset.RecordCount
    Do
    Begin
      Grid_Oper_Per.DataSource.DataSet.Append;
      Grid_Oper_Per.DataSource.DataSet.CopyFields(v_Copy_Oper_Per_Dataset);
      Grid_Oper_Per.DataSource.DataSet.FieldByName('NOM_PER').AsInteger := Per_Count;

      v_Copy_Per_Params_Dataset.First;
      For Per_Param_Count := 1 to v_Copy_Per_Params_Dataset.RecordCount
      Do
      Begin
        Grid_Per_Params.DataSource.DataSet.Append;
        Grid_Per_Params.DataSource.DataSet.CopyFields(v_Copy_Per_Params_Dataset);
        Self.DataFrame.Seq_Per_Params.Execute;
        Grid_Per_Params.DataSource.DataSet.FieldByName('ID_ROW_TP_PR_PRM').AsInteger := Self.DataFrame.Seq_Per_Params.FieldAsInteger(0);
        Grid_Per_Params.DataSource.DataSet.Post;
        v_Copy_Per_Params_Dataset.Next;
      End;
      Grid_Oper_Per.DataSource.DataSet.Post;

      v_Copy_Per_Det_Dataset.First;
      For Per_Det_Count := 1 to v_Copy_Per_Det_Dataset.RecordCount
      Do
      Begin
        Self.DataFrame.MemT_Per_Details.Append;
        Self.DataFrame.MemT_Per_Details.CopyFields( v_Copy_Per_Det_Dataset );
        Self.DataFrame.MemT_Per_Details.Post;
        v_Copy_Per_Det_Dataset.Next;
      End;

      v_Copy_Per_Mat_Dataset.First;
      For Per_Mat_Count := 1 to v_Copy_Per_Mat_Dataset.RecordCount
      Do
      Begin
        Self.DataFrame.MemT_Per_Materials.Append;
        Self.DataFrame.MemT_Per_Materials.CopyFields( v_Copy_Per_Mat_Dataset );
        Self.DataFrame.MemT_Per_Materials.Post;
        v_Copy_Per_Mat_Dataset.Next;
      End;

      v_Copy_Per_Ins_Dataset.First;
      For Per_Ins_Count := 1 to v_Copy_Per_Ins_Dataset.RecordCount
      Do
      Begin
        Self.DataFrame.MemT_Per_Instruments.Append;
        Self.DataFrame.MemT_Per_Instruments.CopyFields( v_Copy_Per_Ins_Dataset );
        Self.DataFrame.MemT_Per_Instruments.Post;
        v_Copy_Per_Ins_Dataset.Next;
      End;

      v_Copy_Per_Osn_Dataset.First;
      For Per_Osn_Coint := 1 to v_Copy_Per_Osn_Dataset.RecordCount
      Do
      Begin
        Self.DataFrame.MemT_Per_Osnast.Append;
        Self.DataFrame.MemT_Per_Osnast.CopyFields( v_Copy_Per_Osn_Dataset );
        Self.DataFrame.MemT_Per_Osnast.Post;
        v_Copy_Per_Osn_Dataset.Next;
      End;
      v_Copy_Oper_Per_Dataset.Next;
    End;
  End;
  {$EndRegion 'Копирование операций, переходов и тд.'}

Begin
  If Not v_Params.DynVar[ 'Doc_Header_Id' ].IsNull
  Then
  Begin
    Grid_Doc_Parts.StartLoadingStatus('...');
    Grid_Opers.StartLoadingStatus('Копирование...');
    Grid_Oper_Per.StartLoadingStatus('Копирование...');

    Self.DataFrame.MemT_Oper_Params.EmptyTable;
    Self.DataFrame.MemT_Per_Params.EmptyTable;

    Self.DataFrame.MemT_Opers.DisableControls;
    Self.DataFrame.MemT_Oper_Params.DisableControls;
    Self.DataFrame.MemT_Oper_Per.DisableControls;
    Self.DataFrame.MemT_Per_Params.DisableControls;
    Self.DataFrame.MemT_Per_Details.DisableControls;
    Self.DataFrame.MemT_Per_Materials.DisableControls;
    Self.DataFrame.MemT_Per_Instruments.DisableControls;
    Self.DataFrame.MemT_Per_Osnast.DisableControls;
    Try
      With Tp_Data_Mode.Tp_Dm
      Do
      Begin

        {$Region 'Открытие датасетов'}
        if v_Params.DynVar[ 'Programm_Vers' ].AsString = 'New'
        Then
        Begin

          {$Region 'Датасеты из новой программы'}
          //Операции
          MemT_Copy_Opers.Close;
          Driver_Copy_Opers.ProviderDataSet := Db_Copy_Doc_Info_Opers;
          Db_Copy_Doc_Info_Opers.SetVariable( 'Doc_Header_Id', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Opers.Open;
          //Параметры операций
          MemT_Copy_Oper_Params.Close;
          Driver_Copy_Oper_Params.ProviderDataSet := Db_Copy_Doc_Info_Oper_Params;
          Db_Copy_Doc_Info_Oper_Params.SetVariable( 'Doc_Header_Id', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Oper_Params.Open;
          //Переходы
          MemT_Copy_Oper_Per.Close;
          Driver_Copy_Oper_Per.ProviderDataSet := Db_Copy_Doc_Info_Oper_Per;
          Db_Copy_Doc_Info_Oper_Per.SetVariable( 'Doc_Header_Id', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Oper_Per.Open;
          //Параметры переходов
          MemT_Copy_Per_Params.Close;
          Driver_Copy_Per_Params.ProviderDataSet := Db_Copy_Doc_Info_Per_Params;
          Db_Copy_Doc_Info_Per_Params.SetVariable( 'Doc_Header_Id', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Per_Params.Open;
          //Детали перехода
          MemT_Copy_Per_Det.Close;
          Driver_Copy_Per_Det.ProviderDataSet := Db_Copy_Doc_Info_Oper_Per_Det;
          Db_Copy_Doc_Info_Oper_Per_Det.SetVariable( 'Doc_Header_Id', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Per_Det.Open;
          //Материалы перехода
          MemT_Copy_Per_Mat.Close;
          Driver_Copy_Per_Mat.ProviderDataSet := Db_Copy_Doc_Info_Oper_Per_Mat;
          Db_Copy_Doc_Info_Oper_Per_Mat.SetVariable( 'Doc_Header_Id', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Per_Mat.Open;
          //Инструменты
          MemT_Copy_Per_Ins.Close;
          Driver_Copy_Per_Ins.ProviderDataSet := Db_Copy_Doc_Info_Oper_Per_Ins;
          Db_Copy_Doc_Info_Oper_Per_Ins.SetVariable( 'Doc_Header_Id', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Per_Ins.Open;
          //Оснастка
          MemT_Copy_Per_Osn.Close;
          Driver_Copy_Per_Osn.ProviderDataSet := Db_Copy_Doc_Info_Oper_Per_Osn;
          Db_Copy_Doc_Info_Oper_Per_Osn.SetVariable( 'Doc_Header_Id', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Per_Osn.Open;
          {$EndRegion 'Датасеты из новой программы'}

        End
        Else If v_Params.DynVar[ 'Programm_Vers' ].AsString = 'Old'
        Then
        Begin

          {$Region 'Датасеты из старой программы'}
          //Операций
          MemT_Copy_Opers.Close;
          Driver_Copy_Opers.ProviderDataSet := Db_Copy_Old_Info_Opers;
          Db_Copy_Old_Info_Opers.SetVariable( 'Id_Doc_Tp', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Opers.Open;
          //Параметры операций
          MemT_Copy_Oper_Params.Close;
          Driver_Copy_Oper_Params.ProviderDataSet := Db_Copy_Old_Info_Oper_Params;
          Db_Copy_Old_Info_Oper_Params.SetVariable( 'Id_Doc_Tp', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Oper_Params.Open;
          //Переходы
          MemT_Copy_Oper_Per.Close;
          Driver_Copy_Oper_Per.ProviderDataSet := Db_Copy_Old_Info_Oper_Per;
          Db_Copy_Old_Info_Oper_Per.SetVariable( 'Id_Doc_Tp', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Oper_Per.Open;
          //Параметры переходов
          MemT_Copy_Per_Params.Close;
          Driver_Copy_Per_Params.ProviderDataSet := Db_Copy_Old_Info_Per_Params;
          Db_Copy_Old_Info_Per_Params.SetVariable( 'Id_Doc_Tp', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Per_Params.Open;
          //Детали перехода
          MemT_Copy_Per_Det.Close;
          Driver_Copy_Per_Det.ProviderDataSet := Db_Copy_Old_Info_Oper_Per_Det;
          Db_Copy_Old_Info_Oper_Per_Det.SetVariable( 'Id_Doc_Tp', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Per_Det.Open;
          //Материалы перехода
          MemT_Copy_Per_Mat.Close;
          Driver_Copy_Per_Mat.ProviderDataSet := Db_Copy_Old_Info_Oper_Per_Mat;
          Db_Copy_Old_Info_Oper_Per_Mat.SetVariable( 'Id_Doc_Tp', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Per_Mat.Open;
          //Инструменты
          MemT_Copy_Per_Ins.Close;
          Driver_Copy_Per_Ins.ProviderDataSet := Db_Copy_Old_Info_Oper_Per_Ins;
          Db_Copy_Old_Info_Oper_Per_Ins.SetVariable( 'Id_Doc_Tp', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Per_Ins.Open;
          //Оснастка
          MemT_Copy_Per_Osn.Close;
          Driver_Copy_Per_Osn.ProviderDataSet := Db_Copy_Old_Info_Oper_Per_Osn;
          Db_Copy_Old_Info_Oper_Per_Osn.SetVariable( 'Id_Doc_Tp', v_Params.DynVar[ 'Doc_Header_Id' ].AsString );
          MemT_Copy_Per_Osn.Open;
          {$EndRegion 'Датасеты из старой программы'}

        End;
        {$EndRegion 'Открытие датасетов'}

        v_Copy_Opers_Dataset := MemT_Copy_Opers;
        v_Copy_Oper_Params_Dataset := MemT_Copy_Oper_Params;
        v_Copy_Oper_Per_Dataset := MemT_Copy_Oper_Per;
        v_Copy_Per_Params_Dataset := MemT_Copy_Per_Params;
        v_Copy_Per_Det_Dataset := MemT_Copy_Per_Det;
        v_Copy_Per_Mat_Dataset := MemT_Copy_Per_Mat;
        v_Copy_Per_Ins_Dataset := MemT_Copy_Per_Ins;
        v_Copy_Per_Osn_Dataset := MemT_Copy_Per_Osn;
      End;

      v_Copy_Opers_Dataset.First;
      If v_Params.DynVar[ 'Copy_Funct' ].AsString = '1'
      Then
      Begin

        {$Region 'Если все операции заменяются, очищаем'}
        If v_Params.DynVar[ 'Replace' ].AsString = '1'
        Then
        Begin
          If v_Params.DynVar[ 'Cursor_Flag' ].AsString = '0'
          Then
            Self.DataFrame.MemT_Doc_Parts.First;
          For Part_Count := 1 To Self.DataFrame.MemT_Doc_Parts.RecordCount
          Do
          Begin
            If Self.DataFrame.MemT_Doc_PartsCEH_ID.AsString = v_Params.DynVar[ 'Copy_Ceh' ].AsString
            Then
            Begin
              Self.DataFrame.MemT_Opers.First;
              For Oper_Count := 1 to Self.DataFrame.MemT_Opers.RecordCount
              Do
              Begin
                Try
                  Self.DataFrame.MemT_Opers.Delete
                Finally
                  Self.DataFrame.MemT_Opers.Next
                End;
              End;
            End;
            If v_Params.DynVar[ 'Cursor_Flag' ].AsString = '0'
            Then
              Self.DataFrame.MemT_Doc_Parts.Next;
          End;
        End;
        {$EndRegion 'Если все операции заменяются, очищаем'}

        {$Region 'Копирование по цеху'}

        If v_Params.DynVar[ 'Cursor_Flag' ].AsString = '0'
        Then
          Self.DataFrame.MemT_Doc_Parts.First;
        While True
        Do
        Begin
          If ( Self.DataFrame.MemT_Doc_PartsCEH_CODE.AsString = v_Copy_Opers_Dataset.FieldByName( 'CEH_CODE').AsString )
              And ( Self.DataFrame.MemT_Doc_PartsCEH_ID.AsString = v_Params.DynVar[ 'Copy_Ceh' ].AsString )
          Then
          Begin
            If v_Copy_Opers_Dataset.Eof
            Then
              Break;
            Try
              Try
                Copy_Fields;
              Except On E : Exception
              Do
                If E.ClassName = 'EAbort'
                Then
                Begin
                  Self.DataFrame.MemT_Doc_Parts.Next;
                End;
              End;
            Finally
              v_Copy_Opers_Dataset.Next;
            End;
          End
          Else
          Begin
            If ( Not Self.DataFrame.MemT_Doc_Parts.Eof )
                And ( v_Params.DynVar[ 'Cursor_Flag' ].AsString = '0' )
            Then
              Self.DataFrame.MemT_Doc_Parts.Next
            Else
              v_Copy_Opers_Dataset.Next;
          End;
          If ( ( Self.DataFrame.MemT_Doc_Parts.Eof )
              And ( v_Params.DynVar[ 'Cursor_Flag' ].AsString = '0' )
              And ( v_Copy_Opers_Dataset.Eof ) )
              Or ( ( v_Params.DynVar[ 'Cursor_Flag' ].AsString = '1' )
                    And ( v_Copy_Opers_Dataset.Eof ) )
          Then
          Begin
            Break;
          End;
        End;
       {$EndRegion 'Копирование по цеху'}

      End
      Else If v_Params.DynVar[ 'Copy_Funct' ].AsString = '2'
      Then
      Begin

        {$Region 'Если все операции заменяются, очищаем'}
        If v_Params.DynVar[ 'Replace' ].AsString = '1'
        Then
        Begin
          Self.DataFrame.MemT_Doc_Parts.First;
          For Part_Count := 1 To Self.DataFrame.MemT_Doc_Parts.RecordCount
          Do
          Begin
            Self.DataFrame.MemT_Opers.First;
            For Oper_Count := 1 to Self.DataFrame.MemT_Opers.RecordCount
            Do
            Begin
              Try
                Self.DataFrame.MemT_Opers.Delete
              Finally
                Self.DataFrame.MemT_Opers.Next
              End;
            End;
            Self.DataFrame.MemT_Doc_Parts.Next;
          End;
        End;
        Self.DataFrame.MemT_Doc_Parts.First;
        {$EndRegion 'Если все операции заменяются, очищаем'}

        {$Region 'Копирование всех операций'}
        While True
        Do
        Begin
          If ( Self.DataFrame.MemT_Doc_PartsCEH_CODE.AsString = v_Copy_Opers_Dataset.FieldByName( 'CEH_CODE' ).AsString )
          Then
          Begin
            If v_Copy_Opers_Dataset.Eof
            Then
              Break;
            Try
              Try
                Copy_Fields;
              Except On E : Exception
              Do
                If E.ClassName = 'EAbort'
                Then
                Begin
                  //Dm_Tech_Proc.MemT_Doc_Parts.Next;
                End
              End;
            Finally
              v_Copy_Opers_Dataset.Next;
            End;
          End
          Else
          Begin
            If Not Self.DataFrame.MemT_Doc_Parts.Eof
            Then
              Self.DataFrame.MemT_Doc_Parts.Next
            Else
              v_Copy_Opers_Dataset.Next;
          End;
          If (Self.DataFrame.MemT_Doc_Parts.Eof)
             And (v_Copy_Opers_Dataset.Eof)
          Then
          Begin
            Break;
          End;
        End;
       {$EndRegion 'Копирование всех операций'}

      End
      Else if v_Params.DynVar[ 'Copy_Funct' ].AsString = '3'
      Then
      Begin
        with TForm_Chs_Oper_For_Copy.Create(Self)
        do
        begin
          try
            If ShowModal = mrOk
            Then
            Begin
              With CreateMessageDialog( 'Копировать операции ко всем аналогичным цехам '
                                        + 'или только туда, где установлен курсор?',
                                        mtConfirmation,
                                        mbYesNo )
              Do
              Try
                TButton( FindComponent( 'Yes' ) ).Caption := 'Все';
                TButton( FindComponent( 'No' ) ).Caption := 'Курсор';
                Case ShowModal
                Of
                  mrYes: v_Params.DynVar[ 'Cursor_Flag' ].AsString := '0';
                  mrNo: v_Params.DynVar[ 'Cursor_Flag' ].AsString := '1';
                End;
              Finally
                Free;
              End;

              With Grid_Chosen_Opers
              Do
              Begin
                With DataSource.DataSet
                Do
                Begin
                  SaveBookmark;
                  Row_Count := 0;

                  {$Region 'Если все операции заменяются, очищаем'}
                  If v_Params.DynVar[ 'Replace' ].AsString = '1'
                  Then
                  Begin
                    If v_Params.DynVar[ 'Cursor_Flag' ].AsString = '0'
                    Then
                      Self.DataFrame.MemT_Doc_Parts.First;
                    While Row_Count < SelectedRows.Count
                    Do
                    Begin
                      Bookmark := Selection.Rows[Row_Count];
                      If ( Self.DataFrame.MemT_Doc_PartsCEH_CODE.AsString = FieldByName( 'CEH_CODE' ).AsString )
                          And ( Not Self.DataFrame.MemT_Opers.IsEmpty )
                      Then
                      Begin
                        Try
                          Self.DataFrame.MemT_Opers.First;
                          For Oper_Count := 1 to Self.DataFrame.MemT_Opers.RecordCount
                          Do
                          Begin
                            Try
                              Self.DataFrame.MemT_Opers.Delete
                            Finally
                              Self.DataFrame.MemT_Opers.Next
                            End;
                          End;
                        Finally
                          Inc(Row_Count);
                        End;
                      End
                      Else
                      Begin
                        If ( Not Self.DataFrame.MemT_Doc_Parts.Eof )
                            And ( v_Params.DynVar[ 'Cursor_Flag' ].AsString = '0' )
                        Then
                          Self.DataFrame.MemT_Doc_Parts.Next
                        Else
                          Inc(Row_Count);
                      End;
                    End;
                  End;
                  If v_Params.DynVar[ 'Cursor_Flag' ].AsString = '0'
                  Then
                    Self.DataFrame.MemT_Doc_Parts.First;
                  Row_Count := 0;
                  {$EndRegion 'Если все операции заменяются, очищаем'}

                  {$Region 'Копирование выбранных операций'}
                  While Row_Count < SelectedRows.Count
                  Do
                  Begin
                    Bookmark := Selection.Rows[Row_Count];
                    If ( Self.DataFrame.MemT_Doc_PartsCEH_CODE.AsString = FieldByName( 'CEH_CODE' ).AsString )
                    Then
                    Begin
                      If Eof
                      Then
                        Break;
                      Try
                        Try
                          Copy_Fields;
                        Except On E : Exception
                        Do
                          If E.ClassName = 'EAbort'
                          Then
                          Begin
                            Self.DataFrame.MemT_Doc_Parts.Next;
                          End
                        End;
                      Finally
                        Inc(Row_Count);
                      End;
                    End
                    Else
                    Begin
                      If ( Not Self.DataFrame.MemT_Doc_Parts.Eof )
                            And ( v_Params.DynVar[ 'Cursor_Flag' ].AsString = '0' )
                      Then
                        Self.DataFrame.MemT_Doc_Parts.Next
                      Else
                        Inc(Row_Count);
                    End;
                  End;
                  Selection.Clear;
                  {$EndRegion 'Копирование выбранных операций'}

                End;
              End;
            End;
          finally
            Free;
          end;
        end;
      End;
    Finally
      Self.DataFrame.MemT_Opers.EnableControls;
      Self.DataFrame.MemT_Oper_Params.EnableControls;
      Self.DataFrame.MemT_Oper_Per.EnableControls;
      Self.DataFrame.MemT_Per_Params.EnableControls;
      Self.DataFrame.MemT_Per_Details.EnableControls;
      Self.DataFrame.MemT_Per_Materials.EnableControls;
      Self.DataFrame.MemT_Per_Instruments.EnableControls;
      Self.DataFrame.MemT_Per_Osnast.EnableControls;
      Grid_Doc_Parts.FinishLoadingStatus();
      Grid_Opers.FinishLoadingStatus();
      Grid_Oper_Per.FinishLoadingStatus();
    End;
  End;
end;

end.
