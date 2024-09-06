unit Tp_Per_Instr_Card;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Data.DB, OracleData,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  MemTableDataEh, MemTableEh, DataDriverEh, frxClass, frxDBSet, frxCross, Math,
  Oracle, frxExportXLS, frxExportPDF, ShellApi, Tp_TechProc_DataFrame;

type
  TForm_Per_Instr_Card = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Splitter2: TSplitter;
    GroupBox2: TGroupBox;
    Splitter3: TSplitter;
    Main_M_Per_Instr_Card: TMainMenu;
    Main_M_Per_Instr_Card_Btn_Spr: TMenuItem;
    Main_M_Per_Instr_Card_Btn_Exit: TMenuItem;
    DBGrid_Oper_Per: TDBGridEh;
    Main_M_Per_Instr_Card_Btn_Spr_Instr: TMenuItem;
    Main_M_Per_Instr_Card_Btn_Crd_Types: TMenuItem;
    E_Instr_Crd_Num: TDBEditEh;
    Img_Instr_Crd_Tmplt: TDBImageEh;
    Img_Ins_Crd_Instr: TDBImageEh;
    Grid_Instr_Crd_Tmp_Prms: TDBGridEh;
    Grid_Ins_Crd_Instr_Tmp_Prms: TDBGridEh;
    E_Instr_Crd_Ins_Pos: TDBEditEh;
    Grid_Ins_Crd_Instrs: TDBGridEh;
    frxReport1: TfrxReport;
    RepData_Instr_Card: TfrxDBDataset;
    RepData_Ins_Crd_Per_Instrs: TfrxDBDataset;
    RepData_Instr_Crd_Prms: TfrxDBDataset;
    RepData_Ins_Crd_Ins_Tmplts: TfrxDBDataset;
    RepData_Ins_Crd_Ins_Tmp_Prms: TfrxDBDataset;
    RepData_Doc_Info: TfrxDBDataset;
    RepData_Opers: TfrxDBDataset;
    RepData_Oper_Per: TfrxDBDataset;
    Main_M_Per_Instr_Card_Btn_Doc: TMenuItem;
    RepData_Instr_Card_Img_Rep: TfrxDBDataset;
    RepData_Ins_Crd_Instr_Img: TfrxDBDataset;
    Grid_Linked_Instrs: TDBGridEh;
    RepData_Linked_Instr_List: TfrxDBDataset;
    Q_Check_Ins_Childs: TOracleQuery;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    Main_M_Per_Instr_Card_Btn_Print: TMenuItem;
    Main_M_Per_Instr_Card_Btn_Export: TMenuItem;
    Main_M_Per_Instr_Card_Btn_Export_Pdf: TMenuItem;
    Main_M_Per_Instr_Card_Btn_Export_Excel: TMenuItem;
    Main_M_Per_Instr_Card_Btn_Info: TMenuItem;
    Pop_M_Crd_Instr: TPopupMenu;
    PM_Crd_Instr_Btn_Add: TMenuItem;
    PM_Crd_Instr_Btn_Delete: TMenuItem;
    procedure Main_M_Per_Instr_Card_Btn_Spr_InstrClick(Sender: TObject);
    procedure Main_M_Per_Instr_Card_Btn_Crd_TypesClick(Sender: TObject);
    procedure Main_M_Per_Instr_Card_Btn_ExitClick(Sender: TObject);
    procedure E_Instr_Crd_NumEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Grid_Instr_Crd_Tmp_PrmsColumns1UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Instr_Crd_Tmp_PrmsColumns1OpenDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Instr_Crd_Tmp_PrmsColumns1CloseDropDownForm(
      Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
      Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure Grid_Instr_Crd_Tmp_PrmsColumns1GetCellParams(Sender: TObject;
      EditMode: Boolean; Params: TColCellParamsEh);
    procedure DBGridEh4Columns1GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure E_Instr_Crd_Ins_PosEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Grid_Ins_Crd_InstrsExit(Sender: TObject);
    procedure DBGrid_Oper_PerColumns4EditButtons1Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGrid_Oper_PerColumns4EditButtons2Click(Sender: TObject;
      var Handled: Boolean);
    procedure Main_M_Per_Instr_Card_Btn_PrintClick(Sender: TObject);
    procedure Grid_Ins_Crd_Instr_Tmp_PrmsColumns1UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure E_Instr_Crd_NumExit(Sender: TObject);
    procedure Grid_Instr_Crd_Tmp_PrmsExit(Sender: TObject);
    procedure E_Instr_Crd_Ins_PosExit(Sender: TObject);
    procedure Grid_Ins_Crd_Instr_Tmp_PrmsExit(Sender: TObject);
    procedure Grid_Ins_Crd_InstrsColumns1UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure Grid_Ins_Crd_InstrsCheckRowHaveDetailPanel(
      Sender: TCustomDBGridEh; var RowHaveDetailPanel: Boolean);
    procedure Main_M_Per_Instr_Card_Btn_Export_PdfClick(Sender: TObject);
    procedure Main_M_Per_Instr_Card_Btn_InfoClick(Sender: TObject);
    procedure PM_Crd_Instr_Btn_DeleteClick(Sender: TObject);
    procedure PM_Crd_Instr_Btn_AddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TechProcDataFrame: TFrameData_TechProc;
    Procedure P_AddInstrFromSPR;
  end;

var
  Form_Per_Instr_Card: TForm_Per_Instr_Card;

implementation

{$R *.dfm}
uses
Udm_Main, Tp_Main_Form, Tp_Data_Mode, Tp_TechProc_Frame;

procedure TForm_Per_Instr_Card.DBGridEh4Columns1GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
  With Grid_Ins_Crd_Instr_Tmp_Prms.{(Sender as TDBGridEh)}DataSource.DataSet
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

procedure TForm_Per_Instr_Card.DBGrid_Oper_PerColumns4EditButtons1Click(
  Sender: TObject; var Handled: Boolean);
  var
    ActiveFrame: TFrame_TechProc;
begin
  with Form_Tech_Proc_Main
  do
  begin
    ActiveFrame := FindOpenedFrame(Page_Control.ActivePage).ViewFrame as TFrame_TechProc;
    ActiveFrame.Pop_M_Oper_Per_Btn_Per_ItemsClick(ActiveFrame.Pop_M_Oper_Per_Btn_Ins);
  end;
end;

procedure TForm_Per_Instr_Card.DBGrid_Oper_PerColumns4EditButtons2Click(
  Sender: TObject; var Handled: Boolean);
  var
    ActiveFrame: TFrame_TechProc;
begin
  with Form_Tech_Proc_Main
  do
  begin
    ActiveFrame := FindOpenedFrame(Page_Control.ActivePage).ViewFrame as TFrame_TechProc;
    ActiveFrame.Pop_M_Oper_Per_Btn_Per_ItemsClick(ActiveFrame.Pop_M_Oper_Per_Btn_Osn);
  end;
end;

procedure TForm_Per_Instr_Card.E_Instr_Crd_Ins_PosEditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  P_AddInstrFromSPR;
end;

procedure TForm_Per_Instr_Card.E_Instr_Crd_Ins_PosExit(Sender: TObject);
begin
  Try E_Instr_Crd_Ins_Pos.DataSource.DataSet.Post Except End;
end;

procedure TForm_Per_Instr_Card.E_Instr_Crd_NumEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
  Var
  Vl_Out_Params: TDynVarsEh;
  Mem_Strm: TMemoryStream;
  Img_Temp_File_Path: String;
  I: Integer;
begin
  Vl_Out_Params := DM_Main.F_Show_Modal_Form('Instr_Card_Tmplts');
  If Vl_Out_Params <> Nil
  Then
  Begin
    With E_Instr_Crd_Num.DataSource.DataSet
    Do
    Begin
      Edit;
      FieldByName('CRD_TMPLT_ID').AsString := Vl_Out_Params.DynVar['ID_RW_INS_CRD_TMPLT'].AsString;
      TechProcDataFrame.Db_Instr_Crd_Tmp_Prms_List.SetVariable('CRD_TMPLT_ID', Vl_Out_Params.DynVar['ID_RW_INS_CRD_TMPLT'].AsString);
      TechProcDataFrame.Db_Instr_Crd_Tmp_Prms_List.Refresh;

      With Grid_Instr_Crd_Tmp_Prms.DataSource.DataSet as TMemTableEh
      Do
      Begin
        If Not IsEmpty
        Then
        Begin
          First;
          For I := 0 to RecordsView.Count-1
          Do
          Begin
            Delete;
            Next;
          End;
        End;
      End;
      FieldByName('CRD_TMPLT_IMG_PATH').AsString := Vl_Out_Params.DynVar['TMPLT_IMG_PATH'].AsString;
      Post;

      If FieldByName('CRD_TMPLT_IMG_PATH').AsString <> ''
      Then
      Begin
        Img_Temp_File_Path := GetEnvironmentVariable('temp')
           + '\' + 'INS_CRD_TMP' + '\'
           + FieldByName('CRD_TMPLT_ID').AsString
           + ExtractFileExt(FieldByName('CRD_TMPLT_IMG_PATH').AsString);

        If Not DirectoryExists(GetEnvironmentVariable('temp')
           + '\' + 'INS_CRD_TMP')
        Then
          CreateDir(GetEnvironmentVariable('temp')
           + '\' + 'INS_CRD_TMP');


        //Чтение Файла и копирование в temp
        if (FileExists(Img_Temp_File_Path))
        Then
        Begin
           Img_Instr_Crd_Tmplt.Picture.LoadFromFile(Img_Temp_File_Path);
        End
        Else
        Begin
          Mem_Strm := TMemoryStream.Create;
          With TIdHTTP.Create(nil)
          Do
          Begin
            Try
              Get( 'http://websrv-01/service/GetFileAll.php?'
                    + 'file_folder=' + FieldByName('CRD_TMPLT_ID').AsString
                    + '&task=INS_CRD_TMP'
                    + '&NewFileName=' + FieldByName('CRD_TMPLT_ID').AsString, Mem_Strm );


              Mem_Strm.SaveToFile(Img_Temp_File_Path);
              Img_Instr_Crd_Tmplt.Picture.LoadFromFile(Img_Temp_File_Path);
            Finally
              Free;
              Mem_Strm.Free;
            End;
          End;
        End;
      End
      Else
      Begin
        Img_Instr_Crd_Tmplt.Picture := Nil;
      End;
    End;
  End;

end;

procedure TForm_Per_Instr_Card.E_Instr_Crd_NumExit(Sender: TObject);
begin
  Try E_Instr_Crd_Num.DataSource.DataSet.Post Except End;
end;

procedure TForm_Per_Instr_Card.FormShow(Sender: TObject);
begin
  Grid_Instr_Crd_Tmp_Prms.DataSource := TechProcDataFrame.Data_Instr_Crd_Prms;
  DBGrid_Oper_Per.DataSource := TechProcDataFrame.Data_Oper_Per;
  Grid_Ins_Crd_Instrs.DataSource := TechProcDataFrame.Data_Ins_Crd_Per_Instrs;
  Grid_Ins_Crd_Instr_Tmp_Prms.DataSource := TechProcDataFrame.Data_Ins_Crd_Ins_Tmp_Prms;
  Form_Per_Instr_Card.Caption := 'Карта наладки для операции № '
                                  + TechProcDataFrame.MemT_Opers.FieldByName('OPER_NUMBER').AsString
                                  + ' ' + TechProcDataFrame.MemT_Opers.FieldByName('OPER_NAME').AsString
                                  + '. '
                                  + Form_Tech_Proc_Main.Page_Control.ActivePage.Caption;
end;

procedure TForm_Per_Instr_Card.Grid_Instr_Crd_Tmp_PrmsColumns1CloseDropDownForm(
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
      If Grid.DataSource = TechProcDataFrame.Data_Instr_Crd_Prms
      Then
      Begin
        If (FieldByName( 'ID_RW_TP_OP_INS_CRD_PRM' ).IsNull)
        Then
        Begin
          TechProcDataFrame.Seq_Instr_Crd_Prms.Execute;
          FieldByName( 'ID_RW_TP_OP_INS_CRD_PRM' ).AsInteger := TechProcDataFrame.Seq_Instr_Crd_Prms.FieldAsInteger(0);
          FieldByName('DOC_TP_VERS_ID').AsInteger := TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
        End;
      End
      Else if Grid.DataSource = TechProcDataFrame.Data_Ins_Crd_Ins_Tmp_Prms
      Then
      Begin
        If (FieldByName( 'ID_RW_TP_PER_I_CRD_T_PRM' ).IsNull)
        Then
        Begin
          TechProcDataFrame.Seq_Ins_Crd_Ins_Tmp_Prms.Execute;
          FieldByName( 'ID_RW_TP_PER_I_CRD_T_PRM' ).AsInteger := TechProcDataFrame.Seq_Ins_Crd_Ins_Tmp_Prms.FieldAsInteger(0);
          FieldByName('DOC_TP_VERS_ID').AsInteger := TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
        End;
      End;

    End;
  End;
end;

procedure TForm_Per_Instr_Card.Grid_Instr_Crd_Tmp_PrmsColumns1GetCellParams(
  Sender: TObject; EditMode: Boolean; Params: TColCellParamsEh);
begin
  With Grid_Instr_Crd_Tmp_Prms.{(Sender as TDBGridEh)}DataSource.DataSet
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

procedure TForm_Per_Instr_Card.Grid_Instr_Crd_Tmp_PrmsColumns1OpenDropDownForm(
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

procedure TForm_Per_Instr_Card.Grid_Instr_Crd_Tmp_PrmsColumns1UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
begin

  With (Grid_Instr_Crd_Tmp_Prms.DataSource.DataSet as TMemTableEh)
  Do
  Begin
    if FieldByName('PARAM_ROW_ID').IsNull
    Then
      Abort;

    if Name = 'MemT_Instr_Crd_Prms'
    Then
    Begin
      If (FieldByName('ID_RW_TP_OP_INS_CRD_PRM').IsNull)
         And ( (Text <> '')
                Or (Value <> '') )
      Then
      Begin
        Edit;
        TechProcDataFrame.Seq_Instr_Crd_Prms.Execute;
        FieldByName('ID_RW_TP_OP_INS_CRD_PRM').AsInteger := TechProcDataFrame.Seq_Instr_Crd_Prms.FieldAsInteger(0);
        FieldByName('DOC_TP_VERS_ID').AsInteger := TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
      End;
    End;
  End;
end;

procedure TForm_Per_Instr_Card.Grid_Instr_Crd_Tmp_PrmsExit(Sender: TObject);
begin
  Try Grid_Instr_Crd_Tmp_Prms.DataSource.DataSet.Post Except End;
end;

procedure TForm_Per_Instr_Card.Grid_Ins_Crd_InstrsCheckRowHaveDetailPanel(
  Sender: TCustomDBGridEh; var RowHaveDetailPanel: Boolean);
begin
  If (Sender.DataSource.DataSet.FieldByName('INS_ID').AsString <> '')
  Then
  Begin
    Q_Check_Ins_Childs.SetVariable('Id_Instr', Sender.DataSource.DataSet.FieldByName('INS_ID').AsString);
    Q_Check_Ins_Childs.Execute;
    If Q_Check_Ins_Childs.FieldAsInteger(0) = 1
    Then
      RowHaveDetailPanel := True
    Else
      RowHaveDetailPanel := False;
  End
  Else
    RowHaveDetailPanel := False;

end;

procedure TForm_Per_Instr_Card.Grid_Ins_Crd_InstrsColumns1UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
  Var
    Vl_Ins_Wrk_Time,
    Vl_Ins_Faces_Num,
    Vl_Ins_Strong,
    Vl_Ins_Coeff: Double;
begin


  With Grid_Ins_Crd_Instrs.DataSource.DataSet
  Do
  Begin
    If (Sender as TDBGridColumnEh).FieldName = 'INS_CORR_COEF'
    Then
    Begin
      Vl_Ins_Coeff := StrToFloat(Text);
      Vl_Ins_Wrk_Time := FieldByName('INS_WRK_TIME').AsFloat;
      Vl_Ins_Faces_Num := FieldByName('INS_FACES_NUM').AsFloat;
      Vl_Ins_Strong := FieldByName('INS_STRONG').AsFloat;
    End
    Else if (Sender as TDBGridColumnEh).FieldName = 'INS_WRK_TIME'
    Then
    Begin
      Vl_Ins_Coeff := FieldByName('INS_CORR_COEF').AsFloat;
      Vl_Ins_Wrk_Time := StrToFloat(Text);
      Vl_Ins_Faces_Num := FieldByName('INS_FACES_NUM').AsFloat;
      Vl_Ins_Strong := FieldByName('INS_STRONG').AsFloat;
    End
    Else if (Sender as TDBGridColumnEh).FieldName = 'INS_FACES_NUM'
    Then
    Begin
      Vl_Ins_Coeff := FieldByName('INS_CORR_COEF').AsFloat;
      Vl_Ins_Wrk_Time := FieldByName('INS_WRK_TIME').AsFloat;
      Vl_Ins_Faces_Num := StrToFloat(Text);
      Vl_Ins_Strong := FieldByName('INS_STRONG').AsFloat;
    End
    Else if (Sender as TDBGridColumnEh).FieldName = 'INS_STRONG'
    Then
    Begin
      Vl_Ins_Coeff := FieldByName('INS_CORR_COEF').AsFloat;
      Vl_Ins_Wrk_Time := FieldByName('INS_WRK_TIME').AsFloat;
      Vl_Ins_Faces_Num := FieldByName('INS_FACES_NUM').AsFloat;
      Vl_Ins_Strong := StrToFloat(Text);
    End;

    Try
      if (Vl_Ins_Wrk_Time > 0)
         And (Vl_Ins_Coeff > 0)
         And (Vl_Ins_Faces_Num > 0)
         And (Vl_Ins_Strong > 0)
      Then
      Begin
        Edit;
        FieldByName('INS_COUNT').AsInteger := Ceil ( (Vl_Ins_Wrk_Time / 60.00)
                                                      / ( Vl_Ins_Faces_Num
                                                          * Vl_Ins_Strong
                                                          * Vl_Ins_Coeff ) );
      End;
    Except
      On E : Exception
      Do
      Begin
        {If (E.ClassType = EDivByZero)
        Then}
          FieldByName('INS_COUNT').AsInteger := 0;
      End;

    End;
  End;
end;

procedure TForm_Per_Instr_Card.Grid_Ins_Crd_InstrsExit(Sender: TObject);
begin
  Try Grid_Ins_Crd_Instrs.DataSource.DataSet.Post Except End;
end;

procedure TForm_Per_Instr_Card.Grid_Ins_Crd_Instr_Tmp_PrmsColumns1UpdateData(
  Sender: TObject; var Text: string; var Value: Variant; var UseText,
  Handled: Boolean);
begin

  With (Grid_Ins_Crd_Instr_Tmp_Prms.DataSource.DataSet as TMemTableEh)
  Do
  Begin
    if FieldByName('PARAM_ROW_ID').IsNull
    Then
      Abort;

    if Name = 'MemT_Ins_Crd_Ins_Tmp_Prms'
    Then
    Begin
      If (FieldByName('ID_RW_TP_PER_I_CRD_T_PRM').IsNull)
         And ( (Text <> '')
                Or (Value <> '') )
      Then
      Begin
        Edit;
        TechProcDataFrame.Seq_Ins_Crd_Ins_Tmp_Prms.Execute;
        FieldByName('ID_RW_TP_PER_I_CRD_T_PRM').AsInteger := TechProcDataFrame.Seq_Ins_Crd_Ins_Tmp_Prms.FieldAsInteger(0);
        FieldByName('DOC_TP_VERS_ID').AsInteger := TechProcDataFrame.Db_Doc_Info.FieldByName('Id_Vers').AsInteger;
      End;
    End;
  End;
end;

procedure TForm_Per_Instr_Card.Grid_Ins_Crd_Instr_Tmp_PrmsExit(Sender: TObject);
begin
  Try Grid_Ins_Crd_Instr_Tmp_Prms.DataSource.DataSet.Post Except End;
end;

procedure TForm_Per_Instr_Card.Main_M_Per_Instr_Card_Btn_Crd_TypesClick(
  Sender: TObject);
begin
  DM_Main.P_Show_Form( 'Instr_Card_Tmplts' );
end;

procedure TForm_Per_Instr_Card.Main_M_Per_Instr_Card_Btn_ExitClick(
  Sender: TObject);
begin
  Form_Per_Instr_Card.Close;
end;

procedure TForm_Per_Instr_Card.Main_M_Per_Instr_Card_Btn_Export_PdfClick(
  Sender: TObject);
begin
  frxReport1.PrepareReport();
  If Sender = Main_M_Per_Instr_Card_Btn_Export_Pdf
  Then
  Begin
    frxPDFExport1.FileName := Form_Per_Instr_Card.Caption;
    frxReport1.Export(frxPDFExport1);
  End
  Else if Sender = Main_M_Per_Instr_Card_Btn_Export_Excel
  Then
  Begin
    frxXLSExport1.FileName := Form_Per_Instr_Card.Caption;
    frxReport1.Export(frxXLSExport1);
  End;
end;

procedure TForm_Per_Instr_Card.Main_M_Per_Instr_Card_Btn_InfoClick(
  Sender: TObject);
var
  FilePath: String;
begin
  if FileExists(GetCurrentDir+'\Памятка пользователя Журнал техпроцессов-Карты Наладки.pdf')
  then
  begin
    ShellExecute( Handle,
                  Nil,
                  PChar(GetCurrentDir+'\Памятка пользователя Журнал техпроцессов-Карты Наладки.pdf'),
                  Nil,
                  Nil,
                  SW_SHOWNORMAL );
  end
  else
    MessageBox(Handle, 'Файл справки не найден!', 'Ошибка!', MB_OK  + MB_ICONERROR);
end;

procedure TForm_Per_Instr_Card.Main_M_Per_Instr_Card_Btn_PrintClick(
  Sender: TObject);
begin
  frxReport1.ShowReport();
end;

procedure TForm_Per_Instr_Card.Main_M_Per_Instr_Card_Btn_Spr_InstrClick(
  Sender: TObject);
begin
  DM_Main.P_Show_Form( 'Spr_Instr' );
end;

procedure TForm_Per_Instr_Card.PM_Crd_Instr_Btn_AddClick(Sender: TObject);
Var
  Vl_In_Params_LinkedInstrs,
  Vl_Out_Params_LinkedInstrs: TDynVarsEh;
  I: Integer;
begin
  If ActiveControl as TDBGridEh = Grid_Ins_Crd_Instrs
  Then
  Begin
    P_AddInstrFromSPR;
  End
  Else if ActiveControl as TDBGridEh = Grid_Linked_Instrs
  Then
  Begin
    Vl_In_Params_LinkedInstrs := TDynVarsEh.Create(Application.MainForm);
    Vl_In_Params_LinkedInstrs.DynVar['Find'].AsString := 'LINK_INSTR';
    Vl_In_Params_LinkedInstrs.DynVar['Filter'].AsString := ' t.Prnt_Instr_Id = '
                                                              + Grid_Ins_Crd_Instrs.DataSource.DataSet.FieldByName('INS_ID').AsString;
    Vl_In_Params_LinkedInstrs.DynVar[ 'MultiSelect' ].AsBoolean := True;
    Vl_Out_Params_LinkedInstrs := Form_Tech_Proc_Main.F_Gen_Chose_Form(Vl_In_Params_LinkedInstrs);
    if Vl_Out_Params_LinkedInstrs <> Nil
    Then
    Begin
      With Tp_Dm.MemT_Buffer.RecordsView
      Do
      Begin
        For I := 0 to Count-1
        Do
        Begin
          Grid_Linked_Instrs.DataSource.DataSet.Append;
          Grid_Linked_Instrs.DataSource.DataSet.FieldByName('Ins_Id').AsString := Rec[i].DataValues['CHLD_INSTR_ID', dvvValueEh];
          Grid_Linked_Instrs.DataSource.DataSet.FieldByName('Ins_Name').AsString := Rec[i].DataValues['CHLD_INSTR_FULL_NAME', dvvValueEh];
          Grid_Linked_Instrs.DataSource.DataSet.Post;
        End;
      End;
    End;
  End;
end;

procedure TForm_Per_Instr_Card.PM_Crd_Instr_Btn_DeleteClick(Sender: TObject);
begin
  Form_Tech_Proc_Main.P_DeleteFromDBGridEh(ActiveControl as TDBGridEh);
end;

procedure TForm_Per_Instr_Card.P_AddInstrFromSPR;
  Var
  Vl_Out_Params: TDynVarsEh;
  Mem_Strm: TMemoryStream;
  Img_Temp_File_Path: String;
  Vl_In_Params_LinkedInstrs,
  Vl_Out_Params_LinkedInstrs: TDynVarsEh;
  I: Integer;
begin
  If E_Instr_Crd_Num.DataSource.DataSet.FieldByName('ID_RW_INS_CRD').AsString = ''
  Then
    Abort;

  Vl_Out_Params := DM_Main.F_Show_Modal_Form('Spr_Instr');
  If Vl_Out_Params <> Nil
  Then
  Begin
    With Grid_Ins_Crd_Instrs.DataSource.DataSet
    Do
    Begin
      If (IsEmpty)
          Or (FieldByName('INS_ID').AsString <> Vl_Out_Params.DynVar['ID_INSTR'].AsString)
      Then
      Begin
        Edit;
        FieldByName('Ins_Id').AsString := Vl_Out_Params.DynVar['Id_Instr'].AsString;
        FieldByName('Ins_Name').AsString := Vl_Out_Params.DynVar['INSTR_FULL_NAME'].AsString;
        Post;
        Vl_In_Params_LinkedInstrs := TDynVarsEh.Create(Application.MainForm);
        Vl_In_Params_LinkedInstrs.DynVar['Find'].AsString := 'LINK_INSTR';
        Vl_In_Params_LinkedInstrs.DynVar['Filter'].AsString := ' t.Prnt_Instr_Id = '
                                                                  + Vl_Out_Params.DynVar['Id_Instr'].AsString;
        Vl_In_Params_LinkedInstrs.DynVar[ 'MultiSelect' ].AsBoolean := True;
        Vl_Out_Params_LinkedInstrs := Form_Tech_Proc_Main.F_Gen_Chose_Form(Vl_In_Params_LinkedInstrs);
        if Vl_Out_Params_LinkedInstrs <> Nil
        Then
        Begin
          For I := 0 to Tp_Dm.MemT_Buffer.RecordsView.Count-1
          Do
          Begin
            Grid_Linked_Instrs.DataSource.DataSet.Append;
            Grid_Linked_Instrs.DataSource.DataSet.FieldByName('Ins_Id').AsString := Tp_Dm.MemT_Buffer.RecordsView.Rec[i].DataValues['CHLD_INSTR_ID', dvvValueEh];
            Grid_Linked_Instrs.DataSource.DataSet.FieldByName('Ins_Name').AsString := Tp_Dm.MemT_Buffer.RecordsView.Rec[i].DataValues['CHLD_INSTR_FULL_NAME', dvvValueEh];
            Grid_Linked_Instrs.DataSource.DataSet.Post;
          End;
        End;
      End;
    End;

    With E_Instr_Crd_Ins_Pos.DataSource.DataSet
    Do
    Begin
      Edit;
      FieldByName('INS_TMPLT_ID').AsString := Vl_Out_Params.DynVar['ID_RW_INSTR_TMPLT'].AsString;

      With Grid_Ins_Crd_Instr_Tmp_Prms.DataSource.DataSet as TMemTableEh
      Do
      Begin
        If Not IsEmpty
        Then
        Begin
          First;
          For I := 0 to RecordsView.Count-1
          Do
          Begin
            Delete;
            Next;
          End;
        End;
      End;

      TechProcDataFrame.Db_Instr_Tmplt_Prms_List.SetVariable('ID_RW_INSTR_TMPLT', Vl_Out_Params.DynVar['ID_RW_INSTR_TMPLT'].AsString);
      TechProcDataFrame.Db_Instr_Tmplt_Prms_List.Refresh;
      FieldByName('INS_TMPLT_IMG_PATH').AsString := Vl_Out_Params.DynVar['TMPLT_IMG_PATH'].AsString;
      Post;

      If FieldByName('INS_TMPLT_IMG_PATH').AsString <> ''
      Then
      Begin
        Img_Temp_File_Path := GetEnvironmentVariable('temp')
           + '\' + 'SPR_INSTR' + '\'
           + FieldByName('INS_TMPLT_ID').AsString
           + ExtractFileExt(FieldByName('INS_TMPLT_IMG_PATH').AsString);

        If Not DirectoryExists(GetEnvironmentVariable('temp')
           + '\' + 'SPR_INSTR')
        Then
          CreateDir(GetEnvironmentVariable('temp')
           + '\' + 'SPR_INSTR');


        //Чтение Файла и копирование в temp
        if (FileExists(Img_Temp_File_Path))
        Then
        Begin
          Img_Ins_Crd_Instr.Picture.LoadFromFile(Img_Temp_File_Path);
        End
        Else
        Begin
          Mem_Strm := TMemoryStream.Create;
          With TIdHTTP.Create(nil)
          Do
          Begin
            Try
              Get( 'http://websrv-01/service/GetFileAll.php?'
                    + 'file_folder=' + Grid_Ins_Crd_Instrs.DataSource.DataSet.FieldByName('INS_ID').AsString
                    + '&task=SPR_INSTR'
                    + '&NewFileName=' + FieldByName('INS_TMPLT_ID').AsString, Mem_Strm );


              Mem_Strm.SaveToFile(Img_Temp_File_Path);
              Img_Ins_Crd_Instr.Picture.LoadFromFile(Img_Temp_File_Path);
            Finally
              Free;
              Mem_Strm.Free;
            End;
          End;
        End;
      End
      Else
      Begin
        Img_Ins_Crd_Instr.Picture:= Nil;
      End;
    End;
  End;
end;

end.
