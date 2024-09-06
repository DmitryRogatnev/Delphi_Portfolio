unit MK_SINGLE_TEMP_REPORT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VAR_FORM, frxClass, frxDBSet, Data.DB,
  OracleData, Vcl.ExtCtrls, frxExportXLS, frxExportPDF, frxOLE, Oracle, ShellApi,
  frxDesgn, DynVarsEh;

type
  TForm_Single_Tech_Proc_Rep = class(TForm)
    DB_OPERS: TOracleDataSet;
    DB_OPER_PER: TOracleDataSet;
    DATA_OPER_PER: TfrxDBDataset;
    DATA_OPERS: TfrxDBDataset;
    DB_PER_DETAILS: TOracleDataSet;
    DB_PER_DETAILSID: TFloatField;
    DB_PER_DETAILSID_ROW_PER: TFloatField;
    DB_PER_DETAILSDET_ID: TFloatField;
    DB_PER_DETAILSDET_NUM: TStringField;
    DB_PER_DETAILSDET_NAME: TStringField;
    DB_PER_DETAILSNOM_DET: TIntegerField;
    DB_PER_DETAILSDOK_IN: TFloatField;
    DB_PER_DETAILSDOK_OUT: TFloatField;
    DB_PER_DETAILSDATAIZM: TDateTimeField;
    DB_PER_DETAILSRAZRAB: TFloatField;
    DB_PER_DETAILSKOL: TFloatField;
    DB_PER_DETAILSRAZRAB_NAME: TStringField;
    DB_PER_MATERIALS: TOracleDataSet;
    DB_PER_MATERIALSID: TFloatField;
    DB_PER_MATERIALSID_ROW_PER: TFloatField;
    DB_PER_MATERIALSNOM_MAT: TIntegerField;
    DB_PER_MATERIALSMAT_ID: TFloatField;
    DB_PER_MATERIALSDOK_IN: TFloatField;
    DB_PER_MATERIALSDOK_OUT: TFloatField;
    DB_PER_MATERIALSDATAIZM: TDateTimeField;
    DB_PER_MATERIALSRAZRAB: TFloatField;
    DB_PER_MATERIALSNORMA_MIN: TFloatField;
    DB_PER_MATERIALSNORMA_MAX: TFloatField;
    DB_PER_MATERIALSED_ID: TFloatField;
    DB_PER_MATERIALSMAT_NAME: TStringField;
    DB_PER_MATERIALSED_NAME: TStringField;
    DB_PER_MATERIALSRAZRAB_NAME: TStringField;
    DB_PER_INSTRUMENTS: TOracleDataSet;
    DB_PER_INSTRUMENTSID: TFloatField;
    DB_PER_INSTRUMENTSID_ROW_PER: TFloatField;
    DB_PER_INSTRUMENTSINSTR_ID: TFloatField;
    DB_PER_INSTRUMENTSNOM_INSTR: TIntegerField;
    DB_PER_INSTRUMENTSDOK_IN: TFloatField;
    DB_PER_INSTRUMENTSDOK_OUT: TFloatField;
    DB_PER_INSTRUMENTSDATAIZM: TDateTimeField;
    DB_PER_INSTRUMENTSRAZRAB: TFloatField;
    DB_PER_INSTRUMENTSINSTR_NAME: TStringField;
    DB_PER_INSTRUMENTSRAZRAB_NAME: TStringField;
    DB_PER_OSNAST: TOracleDataSet;
    DB_PER_OSNASTID: TFloatField;
    DB_PER_OSNASTID_ROW_PER: TFloatField;
    DB_PER_OSNASTSHOSN_ID: TFloatField;
    DB_PER_OSNASTDOK_IN: TFloatField;
    DB_PER_OSNASTDOK_OUT: TFloatField;
    DB_PER_OSNASTDATAIZM: TDateTimeField;
    DB_PER_OSNASTRAZRAB: TFloatField;
    DB_PER_OSNASTSHOSN_NUM: TStringField;
    DB_PER_OSNASTSHOSN_NAME: TStringField;
    DB_PER_OSNASTRAZRAB_NAME: TStringField;
    DB_PER_OSNASTSHOSN_NOM: TFloatField;
    DATA_PER_DETAILS: TfrxDBDataset;
    DATA_PER_MATERIALS: TfrxDBDataset;
    DATA_PER_INSTRUMENTS: TfrxDBDataset;
    DATA_PER_OSNAST: TfrxDBDataset;
    frxReport1: TfrxReport;
    DB_EXECUTE_VARIABLES: TOracleDataSet;
    DATA_EXECUTE_VARIABLES: TfrxDBDataset;
    DB_OPER_TT: TOracleDataSet;
    DB_OPER_TT_NAME: TOracleDataSet;
    DB_OPER_PRIM: TOracleDataSet;
    DATA_OPER_TT: TfrxDBDataset;
    DATA_OPER_TT_NAME: TfrxDBDataset;
    DATA_OPER_PRIM: TfrxDBDataset;
    DATA_TARA_NUM: TfrxDBDataset;
    DB_TARA_NUM: TOracleDataSet;
    DB_OPER_PER_TT: TOracleDataSet;
    DATA_OPER_PER_TT: TfrxDBDataset;
    DATA_OPER_PER_PRIM: TfrxDBDataset;
    DB_OPER_PER_PRIM: TOracleDataSet;
    DB_OPER_OBOR: TOracleDataSet;
    DATA_OPER_OBOR: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    DB_OPER_MAT: TOracleDataSet;
    DATA_OPER_MAT: TfrxDBDataset;
    DB_SOGL_LIST: TOracleDataSet;
    DATA_SOGL_LIST: TfrxDBDataset;
    Db_First_Normalizer: TOracleDataSet;
    Data_First_Normalizer: TfrxDBDataset;
    Db_Second_Normalizer: TOracleDataSet;
    Data_Second_Normalizer: TfrxDBDataset;
    Db_3_Normalizer: TOracleDataSet;
    Data_3_Normalizer: TfrxDBDataset;
    Db_4_Normalizer: TOracleDataSet;
    Data_4_Normalizer: TfrxDBDataset;
    Db_5_Normalizer: TOracleDataSet;
    Data_5_Normalizer: TfrxDBDataset;
    Db_6_Normalizer: TOracleDataSet;
    Data_6_Normalizer: TfrxDBDataset;
    Db_Num_Of_Ins: TOracleDataSet;
    Data_Num_Of_Ins: TfrxDBDataset;
    DB_OPER_PERID: TFloatField;
    DB_OPER_PERID_ROW_OPER: TFloatField;
    DB_OPER_PERNOM_PER: TIntegerField;
    DB_OPER_PERPER: TStringField;
    DB_OPER_PERDOK_IN: TFloatField;
    DB_OPER_PERRAZRAB: TFloatField;
    DB_OPER_PERPRIM: TStringField;
    DB_OPER_PERTT_PER: TStringField;
    DB_OPER_PERGAS: TStringField;
    DB_OPER_PERSPEED: TStringField;
    DB_OPER_PERT_GAS: TStringField;
    DB_OPER_PERRAZRAB_NAME: TStringField;
    DB_OPER_PERID_PART_TP: TFloatField;
    DB_OPER_PERDATAIZM: TDateTimeField;
    DB_OPER_PERTIME: TFloatField;
    DB_OPER_PERHARDNESS: TStringField;
    PKG_TP_DOC: TOraclePackage;
    DB_OPERSOPER_NUM: TStringField;
    DB_OPERSOPER_NAME: TStringField;
    DB_OPERSID_PART_ROW_NUM: TFloatField;
    DB_OPERSNUM_PLOT: TFloatField;
    DB_OPERSIOT: TStringField;
    DB_OPERSNUM_WP: TFloatField;
    DB_OPERSDOC_NUM: TStringField;
    DB_OPERSCEH_NAME: TStringField;
    DB_OPERSID: TFloatField;
    DB_OPERSID_PART_TP: TFloatField;
    DB_OPERSAUTHOR_NAME: TStringField;
    Q_Main_Document: TOracleQuery;
    Q_Document_For_Ceh: TOracleQuery;
    Q_Document: TOracleQuery;
    DB_EXECUTE_VARIABLESDOC_NUM: TStringField;
    DB_EXECUTE_VARIABLESDET_NUM: TStringField;
    DB_EXECUTE_VARIABLESDET_NAME: TStringField;
    DB_EXECUTE_VARIABLESDET_MAR: TStringField;
    DB_EXECUTE_VARIABLESDATA_REG: TDateTimeField;
    DB_EXECUTE_VARIABLESIZD_NAME_TYPE: TStringField;
    DB_EXECUTE_VARIABLESFLAG_UTV: TStringField;
    DB_EXECUTE_VARIABLESDOC_LITER: TStringField;
    DB_OPER_PERUSER_ID_INSRT: TStringField;
    DB_OPER_PERDATE_INSRT: TDateTimeField;
    DB_OPER_PERUSER_ID_CORR: TStringField;
    DB_PER_DETAILSUSER_ID_INSRT: TStringField;
    DB_PER_DETAILSDATE_INSRT: TDateTimeField;
    DB_PER_DETAILSUSER_ID_CORR: TStringField;
    DB_PER_MATERIALSMAT_VISCOS: TStringField;
    DB_PER_MATERIALSUSER_ID_INSRT: TStringField;
    DB_PER_MATERIALSDATE_INSRT: TDateTimeField;
    DB_PER_MATERIALSUSER_ID_CORR: TStringField;
    DB_PER_INSTRUMENTSUSER_ID_INSRT: TStringField;
    DB_PER_INSTRUMENTSDATE_INSRT: TDateTimeField;
    DB_PER_INSTRUMENTSUSER_ID_CORR: TStringField;
    DB_PER_OSNASTUSER_ID_INSRT: TStringField;
    DB_PER_OSNASTDATE_INSRT: TDateTimeField;
    DB_PER_OSNASTUSER_ID_CORR: TStringField;
    DB_EXECUTE_VARIABLESAUTHOR_NAME: TStringField;
    DB_OPERSOPER_DOC_NUM: TStringField;
    DB_OPERSOPER_RAZRAB_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    v_Doc_Id :Integer;
    v_Type_Of_Report: Integer;

  Procedure P_Show_Tech_Proc( v_In_Params: TDynVarsEh);

  end;

var
  Form_Single_Tech_Proc_Rep: TForm_Single_Tech_Proc_Rep;

implementation

{$R *.dfm}
Uses
Tp_Main_Form, Udm_Main;


Procedure TForm_Single_Tech_Proc_Rep.P_Show_Tech_Proc(v_In_Params: TDynVarsEh);
Var
  v_Path_Of_Oper_Docs: String;
  v_Full_Path: String;
  v_Output_Path: String;
  v_Startup_Info: TStartupInfo;
  v_Process_Info: TProcessInformation;
  Cmd_Line: String;
  Process_Result: Bool;
  App: pChar;
  Error:integer; //номер ошибкок
  ExitCode: Cardinal; //код завершения
  v_Count_Of_Copies: Integer;
  searchResult: TSearchRec;
  v_Start_Path: String;
  v_End_Path: String;
begin

  {$Region 'Формирование запроса для основного датасета (Db_Opers)'}
  DB_OPERS.SQL.Clear;
  DB_OPERS.DeleteVariables;
  If v_In_Params.DynVar[ 'Format' ].AsString = 'Document'
  Then
  Begin
    {$Region 'Запрос операций по документу'}
    DB_OPERS.DeclareVariable( 'v_Doc_Id', otInteger );
    DB_OPERS.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
    DB_OPERS.SQL := Q_Document.SQL;
    {$EndRegion 'Запрос операций по документу'}
  End
  Else if v_In_Params.DynVar[ 'Format'].AsString = 'Main_Document'
  Then
  Begin
    {$Region 'Запрос операций по основному документу'}
    DB_OPERS.DeclareVariable( 'v_Doc_Id', otInteger );
    DB_OPERS.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
    Db_Opers.SQL := Q_Main_Document.SQL;
    {$EndRegion 'Запрос операций по документу'}
  End
  Else if v_In_Params.DynVar[ 'Format' ].AsString = 'Document_For_Ceh'
  Then
  Begin
    {$Region 'Запрос операций по основному документу'}
    DB_OPERS.DeclareVariable( 'v_Doc_Id', otInteger );
    DB_OPERS.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
    DB_OPERS.DeclareVariable( 'v_Ceh_Id', otInteger );
    DB_OPERS.SetVariable('v_Ceh_Id', v_In_Params.DynVar[ 'v_Ceh_Id' ].AsString);
    Db_Opers.SQL := Q_Document_For_Ceh.SQL;
    {$EndRegion 'Запрос операций по документу'}
  End;
  DB_OPERS.Close;
  DB_OPERS.Open;
  {$EndRegion 'Формирование запроса для основного датасета (Db_Opers)'}

  {$Region 'Датасеты'}
  DB_OPER_PER.Close;
  DB_OPER_PER.Open;
  DB_PER_DETAILS.Close;
  DB_PER_DETAILS.Open;
  DB_PER_MATERIALS.Close;
  DB_PER_MATERIALS.Open;
  DB_PER_INSTRUMENTS.Close;
  DB_PER_INSTRUMENTS.Open;
  DB_PER_OSNAST.Close;
  DB_PER_OSNAST.Open;
  DB_EXECUTE_VARIABLES.Close;
  DB_SOGL_LIST.Close;
  If v_In_Params.DynVar[ 'Format' ].AsString = 'Document'
  Then
  Begin
    DB_SOGL_LIST.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
    DB_EXECUTE_VARIABLES.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
  End
  Else if (v_In_Params.DynVar[ 'Format'].AsString = 'Main_Document')
           Or (v_In_Params.DynVar[ 'Format' ].AsString = 'Document_For_Ceh')
  Then
  Begin
    DB_SOGL_LIST.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Main_Doc_Id' ].AsString);
    DB_EXECUTE_VARIABLES.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Main_Doc_Id' ].AsString);
  End;
  DB_SOGL_LIST.Open;
  DB_EXECUTE_VARIABLES.Open;

  {$Region 'Нормировщики'}
  Db_First_Normalizer.Close;
  If v_In_Params.DynVar[ 'Format' ].AsString = 'Document'
  Then
  Begin
    Db_First_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
    Db_First_Normalizer.SetVariable( 'v_Main_Doc_Flag', '0' );
  End
  Else if (v_In_Params.DynVar[ 'Format'].AsString = 'Main_Document')
           Or (v_In_Params.DynVar[ 'Format' ].AsString = 'Document_For_Ceh')
  Then
  Begin
    Db_First_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Main_Doc_Id' ].AsString);
    Db_First_Normalizer.SetVariable( 'v_Main_Doc_Flag', '1' );
  End;
  Db_First_Normalizer.Open;
  Db_Second_Normalizer.Close;
  If v_In_Params.DynVar[ 'Format' ].AsString = 'Document'
  Then
  Begin
    Db_Second_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
    Db_Second_Normalizer.SetVariable( 'v_Main_Doc_Flag', '0' );
  End
  Else if (v_In_Params.DynVar[ 'Format'].AsString = 'Main_Document')
           Or (v_In_Params.DynVar[ 'Format' ].AsString = 'Document_For_Ceh')
  Then
  Begin
    Db_Second_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Main_Doc_Id' ].AsString);
    Db_Second_Normalizer.SetVariable( 'v_Main_Doc_Flag', '1' );
  End;
  Db_Second_Normalizer.Open;
  Db_3_Normalizer.Close;
  If v_In_Params.DynVar[ 'Format' ].AsString = 'Document'
  Then
  Begin
    Db_3_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
    Db_3_Normalizer.SetVariable( 'v_Main_Doc_Flag', '0' );
  End
  Else if (v_In_Params.DynVar[ 'Format'].AsString = 'Main_Document')
           Or (v_In_Params.DynVar[ 'Format' ].AsString = 'Document_For_Ceh')
  Then
  Begin
    Db_3_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Main_Doc_Id' ].AsString);
    Db_3_Normalizer.SetVariable( 'v_Main_Doc_Flag', '1' );
  End;
  Db_3_Normalizer.Open;
  Db_4_Normalizer.Close;
  If v_In_Params.DynVar[ 'Format' ].AsString = 'Document'
  Then
  Begin
    Db_4_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
    Db_4_Normalizer.SetVariable( 'v_Main_Doc_Flag', '0' );
  End
  Else if (v_In_Params.DynVar[ 'Format'].AsString = 'Main_Document')
           Or (v_In_Params.DynVar[ 'Format' ].AsString = 'Document_For_Ceh')
  Then
  Begin
    Db_4_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Main_Doc_Id' ].AsString);
    Db_4_Normalizer.SetVariable( 'v_Main_Doc_Flag', '1' );
  End;
  Db_4_Normalizer.Open;
  Db_5_Normalizer.Close;
  If v_In_Params.DynVar[ 'Format' ].AsString = 'Document'
  Then
  Begin
    Db_5_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
    Db_5_Normalizer.SetVariable( 'v_Main_Doc_Flag', '0' );
  End
  Else if (v_In_Params.DynVar[ 'Format'].AsString = 'Main_Document')
           Or (v_In_Params.DynVar[ 'Format' ].AsString = 'Document_For_Ceh')
  Then
  Begin
    Db_5_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Main_Doc_Id' ].AsString);
    Db_5_Normalizer.SetVariable( 'v_Main_Doc_Flag', '1' );
  End;
  Db_5_Normalizer.Open;
  Db_6_Normalizer.Close;
  If v_In_Params.DynVar[ 'Format' ].AsString = 'Document'
  Then
  Begin
    Db_6_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
    Db_6_Normalizer.SetVariable( 'v_Main_Doc_Flag', '0' );
  End
  Else if (v_In_Params.DynVar[ 'Format'].AsString = 'Main_Document')
           Or (v_In_Params.DynVar[ 'Format' ].AsString = 'Document_For_Ceh')
  Then
  Begin
    Db_6_Normalizer.SetVariable( 'v_Doc_Id', v_In_Params.DynVar[ 'v_Main_Doc_Id' ].AsString);
    Db_6_Normalizer.SetVariable( 'v_Main_Doc_Flag', '1' );
  End;
  Db_6_Normalizer.Open;
  {$EndRegion 'Нормировщики'}

  DB_OPER_TT.Close;
  DB_OPER_TT.Open;
  DB_OPER_TT_NAME.Close;
  DB_OPER_TT_NAME.Open;
  DB_OPER_PRIM.Close;
  DB_OPER_PRIM.Open;
  DB_TARA_NUM.Close;
  DB_TARA_NUM.Open;
  DB_OPER_PER_TT.Close;
  DB_OPER_PER_TT.Open;
  DB_OPER_PER_PRIM.Close;
  DB_OPER_PER_PRIM.Open;
  DB_OPER_OBOR.Close;
  DB_OPER_OBOR.Open;
  DB_OPER_MAT.Close;
  DB_OPER_MAT.SetVariable('v_Doc_Id', v_In_Params.DynVar[ 'v_Doc_Id' ].AsString);
  DB_OPER_MAT.Open;
  Db_Num_Of_Ins.Close;
  Db_Num_Of_Ins.Open;
  {$EndRegion 'Датасеты'}

  {$Region 'Действия'}
  If v_In_Params.DynVar[ 'Action' ].AsString = 'Show'
  Then
  Begin
    //Репорт
    frxReport1.ShowReport();
  End
  Else if v_In_Params.DynVar[ 'Action' ].AsString = 'Export_In_Pdf'
  Then
  Begin
    //Экспорт в PDF
    frxReport1.PrepareReport();
    frxPDFExport1.FileName := 'Маршрутная карта для '
                              + DB_EXECUTE_VARIABLESDET_NUM.AsString
                              + ' ' + DB_EXECUTE_VARIABLESDET_NAME.AsString;
    frxReport1.Export(frxPDFExport1);
  End
  Else if v_In_Params.DynVar[ 'Action' ].AsString = 'Export_In_Excel'
  Then
  Begin
    //Экспорт в Excel
    frxReport1.PrepareReport();
    frxXLSExport1.FileName := 'Маршрутная карта для '
                              + DB_EXECUTE_VARIABLESDET_NUM.AsString
                              + ' ' + DB_EXECUTE_VARIABLESDET_NAME.AsString;
    frxReport1.Export(frxXLSExport1);
  End
  Else if v_In_Params.DynVar[ 'Action' ].AsString = 'Show_All_In_Pdf'
  Then
  Begin
    {$Region 'Открытие репорта со всеми файлами в PDF формате'}
    frxReport1.PrepareReport();
    //Список всех прикрепренных файлов
    v_Path_Of_Oper_Docs := PKG_TP_DOC.CallStringFunction( 'F_Get_All_Tp_Files_Path', [ v_In_Params.DynVar[ 'v_Doc_Id' ].AsInteger ] );

    {$Region 'Проверка директорий'}
    if Not DirectoryExists ( 'C:\Temp\Technical_Process_Files' )
    Then
      CreateDir( 'C:\Temp\Technical_Process_Files' );

    if Not DirectoryExists ( 'C:\Temp\Technical_Process_Files\'
                                + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString )
    Then
      CreateDir( 'C:\Temp\Technical_Process_Files\'
                  + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString );
    {$EndRegion 'Проверка директорий'}

    //Удаляем старую версию
    If FileExists( 'C:\Temp\Technical_Process_Files\'
                   + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString + '\' + 'all_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                   + '.pdf' )
    Then
      DeleteFile( ' C:\Temp\Technical_Process_Files\'
                   + IntToStr( v_Doc_Id ) + '\' + 'all_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                   + '.pdf' );

    {$Region 'Формирование PDF версии отчета'}

    frxPDFExport1.DefaultPath := 'C:\Temp\Technical_Process_Files\'
                                + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString;
    frxPDFExport1.FileName := 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                             + '.pdf';
    frxPDFExport1.ShowDialog := False; //Делаем это фоном
    frxPDFExport1.ShowProgress := False;
    frxPDFExport1.OpenAfterExport := False;
    frxReport1.Export( frxPDFExport1 );

    v_Full_Path := ' C:\Temp\Technical_Process_Files\'
                   + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString + '\' + 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                   + '.pdf'
                   + ' '
                   + v_Path_Of_Oper_Docs;
    v_Output_Path := ' C:\Temp\Technical_Process_Files\'
                              + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString + '\' + 'all_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                              + '.pdf ';

    {$EndRegion 'Формирование PDF версии отчета'}

    {$Region 'Объединение PDF файлов и PDF-версии отчета через Cmd'}
    //Заполнение нулями всего StartUpInfo.
    FillChar(v_Startup_Info, SizeOf(TStartUpInfo), 0);
    with v_Startup_Info do
    begin
      //Содержит количество байтов, занимаемых структурой TStartUpInfo.
      //Обязательно для заполнения. Инициализируйте как SizeOf(TStartUpInfo).
      cb := SizeOf( TStartUpInfo );
      //Содержит набор флагов, позволяющих управлять созданием дочернего процесса.
      //Показываем окно, курсор - часики.
      dwFlags := STARTF_USESHOWWINDOW or STARTF_FORCEONFEEDBACK;
      //Определяет как должно выглядеть окно запущенного приложения.
      //Нормальное отображение
      wShowWindow := SW_SHOWNORMAL;
    end;

    Cmd_Line := v_Full_Path
                + ' cat '
                + ' output '
                + v_Output_Path;
    App := '\\SERVER\ogt1\pdftk.exe';
    Process_Result := CreateProcess( PChar( App ),
                                     PChar( Cmd_Line ),
                                     nil,
                                     nil,
                                     False,
                                     NORMAL_PRIORITY_CLASS,
                                     nil,
                                     nil,
                                     v_Startup_Info,
                                     v_Process_Info );

    //Отслеживаем выполнение.
    //Если запуск успешен
    if Process_Result then
    with v_Process_Info do
    begin
      //Ждем завершения инициализации.
      WaitForInputIdle( hProcess, INFINITE );
      //Ждем завершения процесса.
      WaitforSingleObject( v_Process_Info.hProcess, INFINITE );
      //Получаем код завершения.
      GetExitCodeProcess( v_Process_Info.hProcess, ExitCode );
      //Закрываем дескриптор процесса.
      CloseHandle( hThread );
      //Закрываем дескриптор потока.
      CloseHandle( hProcess );
    end
    //Иначе
    else
    begin
      //В случае ошибки - выводим на экран сообщение.
      Error := GetLastError;
      MessageDlg( SysErrorMessage(Error), mtError, [mbOk], 0 );
    end;
    {$EndRegion 'Объединение PDF файлов и PDF-версии отчета через Cmd'}

    //Открытие файла
    if FileExists( 'C:\Temp\Technical_Process_Files\'
                    + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                    + '\' + 'all_'
                    + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                    + '.pdf' )
    Then
    Begin
      ShellExecute( Handle,
                    nil,
                    PChar ( 'C:\Temp\Technical_Process_Files\'
                             + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                             + '\' + 'all_'
                             + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                             + '.pdf' ),
                    nil,
                    nil,
                    SW_SHOWNORMAL );
    End
    Else
    Begin
      //В случае ошибки - выводим на экран сообщение.
      Error := GetLastError;
      MessageDlg( SysErrorMessage(Error), mtError, [mbOk], 0 );
    End;
    {$EndRegion 'Открытие репорта со всеми файлами в PDF формате'}
  End
  Else If v_In_Params.DynVar[ 'Action' ].AsString = 'Create_Pdf_Copy'
  Then
  Begin
    {$Region 'Создание PDF копии'}
    frxReport1.PrepareReport();
    //Находим все файлы с данным форматом
    v_Count_Of_Copies := 0;
    If FindFirst( '\\SERVER\ogt-tp\DLP\TP_PDF\'
                  + 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                  + '_*.pdf',
                  faAnyFile,
                  searchResult ) = 0
    Then
    begin
      repeat
        Inc( v_Count_Of_Copies );
      until FindNext( searchResult ) <> 0;
      FindClose( searchResult );
    end;
    Inc( v_Count_Of_Copies );
    frxPDFExport1.DefaultPath := 'C:\Temp';
    frxPDFExport1.FileName := 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                             + '_' + IntToStr( v_Count_Of_Copies )
                             + '.pdf';
    frxPDFExport1.ShowDialog := False; //Фоном
    frxPDFExport1.ShowProgress := False;
    frxPDFExport1.OpenAfterExport := False;
    frxReport1.Export( frxPDFExport1 );
    v_Start_Path := 'C:\Temp\'
                     + 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                     + '_' + IntToStr( v_Count_Of_Copies ) + '.pdf';
    v_End_Path := '\\SERVER\ogt-tp$\DLP\TP_PDF\'
                     + 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                     + '_' + IntToStr( v_Count_Of_Copies ) + '.pdf';
    CopyFile ( PChar( v_Start_Path ),
              PChar( v_End_Path ),
              False );
    DeleteFile ( 'C:\Temp\'
                 + 'i_' + v_In_Params.DynVar[ 'v_Doc_Id' ].AsString
                 + '_' + IntToStr( v_Count_Of_Copies ) + '.pdf' );
    {$EndRegion 'Создание PDF копии'}
  End;
  {$EndRegion 'Действия'}

end;

end.
