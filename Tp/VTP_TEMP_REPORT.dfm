object Form_VTP_Rep: TForm_VTP_Rep
  Left = 0
  Top = 0
  Caption = 'Form_VTP_Rep'
  ClientHeight = 463
  ClientWidth = 552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Db_Detail_Docs: TOracleDataSet
    SQL.Strings = (
      'select t.*, ( Select a.Tp_Num'
      '              From   Ogt.V_Spr_Tp_Doc a'
      '              Where  a.Id = t.Main_Doc_Id ) as Tp_Main_Doc_Num'
      'from Ogt.V_SPR_TP_DOC t'
      'where t.Id = :v_Doc_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000002200000004000000490044000100000000000E00000044004F004300
      5F004E0055004D000100000000000C0000004400450054005F00490044000100
      000000000C0000004300450048005F0049004400010000000000160000004100
      5500540048004F0052005F004C004E0055004D00010000000000100000004400
      4100540041005F00520045004700010000000000160000004400410054004100
      5F004300480041004E00470045000100000000000C0000005200450041005300
      4F004E000100000000001A000000430041004E00430045004C005F0044004F00
      43005F0049004400010000000000160000004D00410049004E005F0044004F00
      43005F00490044000100000000000E0000004400450054005F004D0041005200
      0100000000001200000044004F0043005F004C00490054004500520001000000
      00001000000044004F0043005F0054005900500045000100000000000C000000
      540050005F004E0055004D000100000000000E000000540050005F004E004100
      4D00450001000000000018000000540050005F0057004F0052004B005F005400
      5900500045000100000000000E0000004400450054005F004E0055004D000100
      00000000100000004400450054005F004E0041004D0045000100000000001600
      000041005500540048004F0052005F004E0041004D0045000100000000002200
      0000540050005F0057004F0052004B005F0054005900500045005F004E004100
      4D0045000100000000000C00000049005A0044005F0049004400010000000000
      1000000049005A0044005F004E0041004D004500010000000000100000004900
      5A0044005F0054005900500045000100000000001E000000540050005F004D00
      410049004E005F0044004F0043005F004E0055004D0001000000000016000000
      43004F004D0050004C004500430054005F00490044000100000000000E000000
      540050005F0054005900500045000100000000001000000046004C0041004700
      5F0049004D005000010000000000100000004300450048005F0043004F004400
      450001000000000016000000430041004E00430045004C005F0046004C004100
      47000100000000001A0000004300450048005F0044004F00430053005F004600
      4C00410047000100000000000E0000004100430054005F004E0055004D000100
      00000000100000004100430054005F0044004100540045000100000000001A00
      000044004F0043005F004800450041004400450052005F004900440001000000
      00000E00000045004D00500053005F0049004400010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 40
    Top = 24
    object Db_Detail_DocsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Detail_DocsDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_Detail_DocsDOC_LITER: TStringField
      FieldName = 'DOC_LITER'
      Size = 2
    end
    object Db_Detail_DocsDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_Detail_DocsTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object Db_Detail_DocsTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object Db_Detail_DocsTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object Db_Detail_DocsTP_WORK_TYPE_NAME: TStringField
      FieldName = 'TP_WORK_TYPE_NAME'
      Size = 103
    end
    object Db_Detail_DocsIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object Db_Detail_DocsIZD_NAME: TStringField
      FieldName = 'IZD_NAME'
      Size = 50
    end
    object Db_Detail_DocsIZD_TYPE: TStringField
      FieldName = 'IZD_TYPE'
      Size = 100
    end
    object Db_Detail_DocsCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object Db_Detail_DocsTP_TYPE: TFloatField
      FieldName = 'TP_TYPE'
    end
    object Db_Detail_DocsFLAG_IMP: TFloatField
      FieldName = 'FLAG_IMP'
    end
    object Db_Detail_DocsDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Detail_DocsDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_Detail_DocsDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_Detail_DocsDET_MAR: TStringField
      FieldName = 'DET_MAR'
      Size = 100
    end
    object Db_Detail_DocsCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Detail_DocsCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Detail_DocsAUTHOR_LNUM: TFloatField
      FieldName = 'AUTHOR_LNUM'
      Required = True
    end
    object Db_Detail_DocsAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object Db_Detail_DocsDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object Db_Detail_DocsDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object Db_Detail_DocsREASON: TStringField
      FieldName = 'REASON'
      Size = 1000
    end
    object Db_Detail_DocsCANCEL_DOC_ID: TFloatField
      FieldName = 'CANCEL_DOC_ID'
    end
    object Db_Detail_DocsMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Detail_DocsCANCEL_FLAG: TFloatField
      FieldName = 'CANCEL_FLAG'
    end
    object Db_Detail_DocsCEH_DOCS_FLAG: TFloatField
      FieldName = 'CEH_DOCS_FLAG'
    end
    object Db_Detail_DocsACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
    end
    object Db_Detail_DocsACT_DATE: TDateTimeField
      FieldName = 'ACT_DATE'
    end
    object Db_Detail_DocsDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Detail_DocsEMPS_ID: TStringField
      FieldName = 'EMPS_ID'
      Size = 30
    end
    object Db_Detail_DocsTP_MAIN_DOC_NUM: TStringField
      FieldName = 'TP_MAIN_DOC_NUM'
      Size = 30
    end
  end
  object Db_Doc_Details: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       ( Select a.Mat '
      '         From   Ogt.Spr_Matx a'
      '         Where  a.Id = ( Select c.Mat'
      '                         From Ogt.Spr_Det c'
      '                         Where  c.Id = t.Det_Id ) ) as Det_Mat'
      'From  Ogt.V_TP_GKTTP_DET_DLP t'
      'Where t.Id_Doc_Tp = :Id'
      'Order by Det_Num')
    Optimize = False
    Variables.Data = {0400000001000000060000003A0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000008000000040000004900440001000000000012000000490044005F00
      44004F0043005F00540050000100000000000C0000004400450054005F004900
      44000100000000001600000044004100540045005F004300480041004E004700
      45000100000000000E0000004400450054005F004E0055004D00010000000000
      100000004400450054005F004E0041004D0045000100000000000C0000005200
      41005A0052004100420001000000000016000000520041005A00520041004200
      5F004E0041004D004500010000000000}
    Master = Db_Detail_Docs
    MasterFields = 'ID'
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 112
    Top = 26
    object Db_Doc_DetailsID: TFloatField
      FieldName = 'ID'
    end
    object Db_Doc_DetailsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
    end
    object Db_Doc_DetailsDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Doc_DetailsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Doc_DetailsDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 100
    end
    object Db_Doc_DetailsDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 150
    end
    object Db_Doc_DetailsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object Db_Doc_DetailsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 150
    end
  end
  object Db_Detail_Operations: TOracleDataSet
    SQL.Strings = (
      'Select t.*'
      'From   Ogt.V_TP_GKTTP_OPER_DLP t'
      'Where  t.Id_Doc_Tp = :Id_Doc_Tp'
      '       And t.Id_Row_Det = :Id'
      'Order  By Row_Num_Gen')
    Optimize = False
    Variables.Data = {
      0400000002000000140000003A00490044005F0044004F0043005F0054005000
      050000000000000000000000060000003A004900440005000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      050000002A000000040000004900440001000000000012000000490044005F00
      44004F0043005F00540050000100000000000C0000004400450054005F004900
      440001000000000016000000490044005F0052004F0057005F004F0050004500
      52000100000000001600000052004F0057005F004E0055004D005F0047004500
      4E00010000000000080000005000520049004D00010000000000120000004F00
      5000450052005F004E0041004D004500010000000000100000004F0050004500
      52005F0049004F0054000100000000000C000000520041005A00520041004200
      01000000000016000000520041005A005200410042005F004E0041004D004500
      0100000000001600000044004100540041005F004300480041004E0047004500
      01000000000014000000490044005F0052004F0057005F004400450054000100
      00000000180000004F005000450052005F004F0042004F0052005F0045004E00
      010000000000220000004F005000450052005F004F0042004F0052005F005400
      49004D0045005F0050005A00010000000000220000004F005000450052005F00
      4F0042004F0052005F00540049004D0045005F00530048000100000000000E00
      00004F0042004F0052005F0049004400010000000000120000004F0042004F00
      52005F004E0041004D00450001000000000012000000500052004F0046005F00
      43004F00440045000100000000000E00000045004E005600490052004F004E00
      0100000000001000000048004100520044004E00450053005300010000000000
      0A00000054005F004D0049004E000100000000000A00000054005F004D004100
      580001000000000010000000540049004D0045005F004D0049004E0001000000
      000010000000540049004D0045005F004D004100580001000000000014000000
      540049004D0045005F004500440049005A004D000100000000001E0000005400
      49004D0045005F004500440049005A004D005F004E0041004D00450001000000
      0000120000004F005000450052005F004B004F00490044000100000000001000
      00004F005000450052005F004B0055005000010000000000120000004F005000
      450052005F0050005000500044000100000000001A0000004F00500045005200
      5F004F005000500050005F00440045005400010000000000100000004F005000
      450052005F004B0044005000010000000000100000004F005000450052005F00
      4B0044004100010000000000100000004F005000450052005F004B0053004C00
      010000000000160000004F005000450052005F0054004F004C00530043004800
      0100000000001E0000004F005000450052005F004300480053005F0050004100
      520041004D0053000100000000001A0000004F005000450052005F0043004F00
      4C004F0052005F00490044000100000000001C0000004F005000450052005F00
      43004F0055004E0054005F0049004E005300010000000000160000004D004100
      49004E005F0044004F0043005F00490044000100000000001000000043004500
      48005F0043004F004400450001000000000012000000500052004F0046005F00
      520041005A00520001000000000010000000500052004F0046005F004B005600
      4E000100000000001400000043004F004C004F0052005F004E0041004D004500
      010000000000}
    Master = Db_Doc_Details
    MasterFields = 'ID; ID_DOC_TP'
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 176
    Top = 26
    object Db_Detail_OperationsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Detail_OperationsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object Db_Detail_OperationsMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Detail_OperationsID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
    end
    object Db_Detail_OperationsROW_NUM_GEN: TStringField
      FieldName = 'ROW_NUM_GEN'
      Size = 50
    end
    object Db_Detail_OperationsCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Detail_OperationsOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object Db_Detail_OperationsOPER_IOT: TStringField
      FieldName = 'OPER_IOT'
      Size = 50
    end
    object Db_Detail_OperationsID_ROW_DET: TFloatField
      FieldName = 'ID_ROW_DET'
      Required = True
    end
    object Db_Detail_OperationsDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object Db_Detail_OperationsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object Db_Detail_OperationsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Detail_OperationsPRIM: TStringField
      FieldName = 'PRIM'
      Size = 2000
    end
    object Db_Detail_OperationsDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object Db_Detail_OperationsOPER_OBOR_EN: TFloatField
      FieldName = 'OPER_OBOR_EN'
    end
    object Db_Detail_OperationsOPER_OBOR_TIME_PZ: TFloatField
      FieldName = 'OPER_OBOR_TIME_PZ'
    end
    object Db_Detail_OperationsOPER_OBOR_TIME_SH: TFloatField
      FieldName = 'OPER_OBOR_TIME_SH'
    end
    object Db_Detail_OperationsOBOR_ID: TFloatField
      FieldName = 'OBOR_ID'
    end
    object Db_Detail_OperationsOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object Db_Detail_OperationsOPER_KOID: TFloatField
      FieldName = 'OPER_KOID'
    end
    object Db_Detail_OperationsPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object Db_Detail_OperationsPROF_RAZR: TFloatField
      FieldName = 'PROF_RAZR'
    end
    object Db_Detail_OperationsPROF_KVN: TFloatField
      FieldName = 'PROF_KVN'
    end
    object Db_Detail_OperationsENVIRON: TStringField
      FieldName = 'ENVIRON'
      Size = 200
    end
    object Db_Detail_OperationsHARDNESS: TStringField
      FieldName = 'HARDNESS'
      Size = 200
    end
    object Db_Detail_OperationsT_MIN: TFloatField
      FieldName = 'T_MIN'
    end
    object Db_Detail_OperationsT_MAX: TFloatField
      FieldName = 'T_MAX'
    end
    object Db_Detail_OperationsTIME_MIN: TFloatField
      FieldName = 'TIME_MIN'
    end
    object Db_Detail_OperationsTIME_MAX: TFloatField
      FieldName = 'TIME_MAX'
    end
    object Db_Detail_OperationsTIME_EDIZM: TStringField
      FieldName = 'TIME_EDIZM'
      Size = 2
    end
    object Db_Detail_OperationsTIME_EDIZM_NAME: TStringField
      FieldName = 'TIME_EDIZM_NAME'
      Size = 7
    end
    object Db_Detail_OperationsOPER_KUP: TFloatField
      FieldName = 'OPER_KUP'
    end
    object Db_Detail_OperationsOPER_PPPD: TFloatField
      FieldName = 'OPER_PPPD'
    end
    object Db_Detail_OperationsOPER_OPPP_DET: TFloatField
      FieldName = 'OPER_OPPP_DET'
    end
    object Db_Detail_OperationsOPER_KDP: TFloatField
      FieldName = 'OPER_KDP'
    end
    object Db_Detail_OperationsOPER_KDA: TFloatField
      FieldName = 'OPER_KDA'
    end
    object Db_Detail_OperationsOPER_KSL: TFloatField
      FieldName = 'OPER_KSL'
    end
    object Db_Detail_OperationsOPER_TOLSCH: TFloatField
      FieldName = 'OPER_TOLSCH'
    end
    object Db_Detail_OperationsOPER_CHS_PARAMS: TStringField
      FieldName = 'OPER_CHS_PARAMS'
      Size = 200
    end
    object Db_Detail_OperationsOPER_COLOR_ID: TFloatField
      FieldName = 'OPER_COLOR_ID'
    end
    object Db_Detail_OperationsCOLOR_NAME: TStringField
      FieldName = 'COLOR_NAME'
      Size = 200
    end
    object Db_Detail_OperationsOPER_COUNT_INS: TFloatField
      FieldName = 'OPER_COUNT_INS'
    end
  end
  object Data_Detail_Docs: TfrxDBDataset
    UserName = 'Data_Detail_Docs'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DOC_NUM=DOC_NUM'
      'DOC_LITER=DOC_LITER'
      'DOC_TYPE=DOC_TYPE'
      'TP_NUM=TP_NUM'
      'TP_NAME=TP_NAME'
      'TP_WORK_TYPE=TP_WORK_TYPE'
      'TP_WORK_TYPE_NAME=TP_WORK_TYPE_NAME'
      'IZD_ID=IZD_ID'
      'IZD_NAME=IZD_NAME'
      'IZD_TYPE=IZD_TYPE'
      'COMPLECT_ID=COMPLECT_ID'
      'TP_TYPE=TP_TYPE'
      'FLAG_IMP=FLAG_IMP'
      'DET_ID=DET_ID'
      'DET_NUM=DET_NUM'
      'DET_NAME=DET_NAME'
      'DET_MAR=DET_MAR'
      'CEH_ID=CEH_ID'
      'CEH_CODE=CEH_CODE'
      'AUTHOR_LNUM=AUTHOR_LNUM'
      'AUTHOR_NAME=AUTHOR_NAME'
      'DATA_REG=DATA_REG'
      'DATA_CHANGE=DATA_CHANGE'
      'REASON=REASON'
      'CANCEL_DOC_ID=CANCEL_DOC_ID'
      'MAIN_DOC_ID=MAIN_DOC_ID'
      'CANCEL_FLAG=CANCEL_FLAG'
      'CEH_DOCS_FLAG=CEH_DOCS_FLAG'
      'ACT_NUM=ACT_NUM'
      'ACT_DATE=ACT_DATE'
      'DOC_HEADER_ID=DOC_HEADER_ID'
      'EMPS_ID=EMPS_ID'
      'TP_MAIN_DOC_NUM=TP_MAIN_DOC_NUM')
    DataSet = Db_Detail_Docs
    BCDToCurrency = False
    Left = 40
    Top = 96
  end
  object Data_Doc_Details: TfrxDBDataset
    UserName = 'Data_Doc_Details'
    CloseDataSource = False
    DataSet = Db_Doc_Details
    BCDToCurrency = False
    Left = 112
    Top = 96
  end
  object Data_Detail_Operations: TfrxDBDataset
    UserName = 'Data_Detail_Operations'
    CloseDataSource = False
    DataSet = Db_Detail_Operations
    BCDToCurrency = False
    Left = 176
    Top = 96
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    Left = 32
    Top = 176
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.OutlineVisible = True
    PreviewOptions.OutlineWidth = 180
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44853.606278807870000000
    ReportOptions.LastChange = 44853.606278807870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  If <Data_Oper_Prim."PRIM"> = '#39#39
      '  Then'
      '    MasterData3.Visible := False'
      '  Else If <Data_Oper_Prim."PRIM"> <> '#39#39
      '  Then    '
      '    MasterData3.Visible := True;           '
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  If <DATA_OPER_OBOR."OBOR_NAME"> = '#39#39
      '  Then'
      '    MasterData2.Visible := False'
      '  Else If <DATA_OPER_OBOR."OBOR_NAME"> <> '#39#39
      '  Then    '
      '    MasterData2.Visible := True;    '
      'end;'
      ''
      'procedure DetailData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  If <Data_Det_Mat."DET_MAT"> = '#39#39
      '  Then'
      '    DetailData2.Visible := False'
      '  Else If <Data_Det_Mat."DET_MAT"> <> '#39#39
      '  Then'
      '      DetailData2.Visible := True;        '
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  If <Data_Second_Normalizer."SECOND_NORM_NAME"> = '#39#39' '
      '  Then'
      '    Memo27.Text := '#39#39
      '  Else Memo27.Text := '#39#1053#1086#1088#1084#1080#1088'.'#39';'
      '  If <Data_3_Normalizer."ELSE_NORM_NAME"> <> '#39#39
      '  Then'
      '  Begin'
      '    Data_Else_NormalizerELSE_NORM_NAME.Visible := True;'
      '    Memo215.Visible := True;'
      '    Memo216.Visible := True;'
      '    Memo217.Visible := True;        '
      '  End'
      '  Else'
      '  Begin'
      '    Data_Else_NormalizerELSE_NORM_NAME.Visible := False;      '
      '    Memo215.Visible := False;'
      '    Memo216.Visible := False;'
      '    Memo217.Visible := False;              '
      '  End;'
      ''
      '  If <Data_4_Normalizer."ELSE_NORM_NAME"> <> '#39#39
      '  Then'
      '  Begin'
      '    Memo218.Visible := True;'
      '    Memo219.Visible := True;'
      '    Memo220.Visible := True;'
      '    Memo221.Visible := True;        '
      '  End'
      '  Else'
      '  Begin'
      '    Memo218.Visible := False;      '
      '    Memo219.Visible := False;'
      '    Memo220.Visible := False;'
      '    Memo221.Visible := False;              '
      '  End;'
      '    '
      '  If <Data_5_Normalizer."ELSE_NORM_NAME"> <> '#39#39
      '  Then'
      '  Begin'
      '    Memo222.Visible := True;'
      '    Memo223.Visible := True;'
      '    Memo224.Visible := True;'
      '    Memo225.Visible := True;        '
      '  End'
      '  Else'
      '  Begin'
      '    Memo222.Visible := False;      '
      '    Memo223.Visible := False;'
      '    Memo224.Visible := False;'
      '    Memo225.Visible := False;              '
      '  End;'
      ''
      '  If <Data_6_Normalizer."ELSE_NORM_NAME"> <> '#39#39
      '  Then'
      '  Begin'
      '    Memo226.Visible := True;'
      '    Memo227.Visible := True;'
      '    Memo228.Visible := True;'
      '    Memo229.Visible := True;        '
      '  End'
      '  Else'
      '  Begin'
      '    Memo226.Visible := False;      '
      '    Memo227.Visible := False;'
      '    Memo228.Visible := False;'
      '    Memo229.Visible := False;              '
      '  End;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 96
    Top = 176
    Datasets = <
      item
        DataSet = Data_3_Normalizer
        DataSetName = 'Data_3_Normalizer'
      end
      item
        DataSet = Data_4_Normalizer
        DataSetName = 'Data_4_Normalizer'
      end
      item
        DataSet = Data_5_Normalizer
        DataSetName = 'Data_5_Normalizer'
      end
      item
        DataSet = Data_6_Normalizer
        DataSetName = 'Data_6_Normalizer'
      end
      item
        DataSet = Data_Det_Mat
        DataSetName = 'Data_Det_Mat'
      end
      item
        DataSet = Data_Detail_Docs
        DataSetName = 'Data_Detail_Docs'
      end
      item
        DataSet = Data_Detail_Operations
        DataSetName = 'Data_Detail_Operations'
      end
      item
        DataSet = Data_Doc_Details
        DataSetName = 'Data_Doc_Details'
      end
      item
        DataSet = DATA_EXECUTE_VARIABLES
        DataSetName = 'DATA_EXECUTE_VARIABLES'
      end
      item
        DataSet = Data_First_Normalizer
        DataSetName = 'Data_First_Normalizer'
      end
      item
        DataSet = DATA_OPER_OBOR
        DataSetName = 'DATA_OPER_OBOR'
      end
      item
        DataSet = Data_Oper_Prim
        DataSetName = 'Data_Oper_Prim'
      end
      item
        DataSet = Data_Second_Normalizer
        DataSetName = 'Data_Second_Normalizer'
      end
      item
        DataSet = DATA_SOGL_LIST
        DataSetName = 'DATA_SOGL_LIST'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      LargeDesignHeight = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 264.567100000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object DATA_EXECUTE_VARIABLESV_FLAG_UTV: TfrxMemoView
          Left = 491.338900000000000000
          Top = 75.590600000000000000
          Width = 230.551330000000000000
          Height = 56.692950000000000000
          DataField = 'FLAG_UTV'
          DataSet = DATA_EXECUTE_VARIABLES
          DataSetName = 'DATA_EXECUTE_VARIABLES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12961023
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_EXECUTE_VARIABLES."FLAG_UTV"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1091#1073#1083'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1079#1072#1084'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1076#1087'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 56.692950000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 56.692950000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 56.692950000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 113.385900000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 170.078850000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 170.078850000000000000
          Top = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DATA_EXECUTE_VARIABLESV_IZD_NAME: TfrxMemoView
          Left = 207.874150000000000000
          Width = 472.441250000000000000
          Height = 56.692950000000010000
          DataField = 'IZD_NAME'
          DataSet = Data_Detail_Docs
          DataSetName = 'Data_Detail_Docs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          GapY = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Detail_Docs."IZD_NAME"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo13: TfrxMemoView
          Left = 680.315400000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object DATA_EXECUTE_VARIABLESV_DOC_NUM: TfrxMemoView
          Left = 680.315400000000000000
          Top = 18.897650000000000000
          Width = 94.488249999999990000
          Height = 18.897650000000000000
          DataField = 'DOC_NUM'
          DataSet = Data_Detail_Docs
          DataSetName = 'Data_Detail_Docs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Detail_Docs."DOC_NUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DATA_EXECUTE_VARIABLESV_DATE_REG: TfrxMemoView
          Left = 812.598949999999900000
          Top = 18.897650000000000000
          Width = 75.590599999999990000
          Height = 18.897650000000000000
          DataField = 'DATA_REG'
          DataSet = Data_Detail_Docs
          DataSetName = 'Data_Detail_Docs'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Detail_Docs."DATA_REG"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 774.803650000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 888.189550000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 888.189550000000000000
          Top = 37.795300000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 680.315400000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 774.803650000000000000
          Top = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 812.598950000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 774.803650000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 812.598950000000000000
          Top = 56.692949999999990000
          Width = 75.590548740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TotalPages]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 888.189550000000000000
          Top = 56.692949999999990000
          Width = 120.944908740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Top = 56.692949999999990000
          Width = 774.803598740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Top = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1079#1088#1072#1073'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 94.488250000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1074'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Top = 113.385900000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1088#1084#1080#1088'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Top = 132.283550000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1088#1084#1080#1088'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Top = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1090#1074'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object DATA_EXECUTE_VARIABLESV_AUTHOR_NAME: TfrxMemoView
          Left = 75.590599999999990000
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'DOC_AUTHOR_NAME'
          DataSet = DATA_SOGL_LIST
          DataSetName = 'DATA_SOGL_LIST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[DATA_SOGL_LIST."DOC_AUTHOR_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 188.976500000000000000
          Top = 75.590600000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 188.976500000000000000
          Top = 94.488250000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 226.771800000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'DOC_AUTHOR_DATE'
          DataSet = DATA_SOGL_LIST
          DataSetName = 'DATA_SOGL_LIST'
          DisplayFormat.FormatStr = 'dd.mm.yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_SOGL_LIST."DOC_AUTHOR_DATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 226.771800000000000000
          Top = 94.488250000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'DOC_PROV_DATE'
          DataSet = DATA_SOGL_LIST
          DataSetName = 'DATA_SOGL_LIST'
          DisplayFormat.FormatStr = 'dd.mm.yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_SOGL_LIST."DOC_PROV_DATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 226.771800000000000000
          Top = 113.385900000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'DATE_OUT'
          DataSet = Data_First_Normalizer
          DataSetName = 'Data_First_Normalizer'
          DisplayFormat.FormatStr = 'dd.mm.yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_First_Normalizer."DATE_OUT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 226.771800000000000000
          Top = 132.283550000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'DATE_OUT'
          DataSet = Data_Second_Normalizer
          DataSetName = 'Data_Second_Normalizer'
          DisplayFormat.FormatStr = 'dd.mm.yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Second_Normalizer."DATE_OUT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 226.771800000000000000
          Top = 151.181200000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'DOC_UTV_DATE'
          DataSet = DATA_SOGL_LIST
          DataSetName = 'DATA_SOGL_LIST'
          DisplayFormat.FormatStr = 'dd.mm.yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_SOGL_LIST."DOC_UTV_DATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 188.976500000000000000
          Top = 113.385900000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 188.976500000000000000
          Top = 132.283550000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 188.976500000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 75.590600000000000000
          Top = 94.488250000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'DOC_PROV_NAME'
          DataSet = DATA_SOGL_LIST
          DataSetName = 'DATA_SOGL_LIST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[DATA_SOGL_LIST."DOC_PROV_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 75.590600000000000000
          Top = 113.385900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'FIRST_NORM_NAME'
          DataSet = Data_First_Normalizer
          DataSetName = 'Data_First_Normalizer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Data_First_Normalizer."FIRST_NORM_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 75.590600000000000000
          Top = 132.283550000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'SECOND_NORM_NAME'
          DataSet = Data_Second_Normalizer
          DataSetName = 'Data_Second_Normalizer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Second_Normalizer."SECOND_NORM_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 75.590599999999990000
          Top = 151.181200000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'DOC_UTV_NAME'
          DataSet = DATA_SOGL_LIST
          DataSetName = 'DATA_SOGL_LIST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[DATA_SOGL_LIST."DOC_UTV_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 283.464750000000000000
          Top = 75.590600000000000000
          Width = 207.874150000000000000
          Height = 56.692950000000000000
          Center = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000002BA0000
            00E90806000000CB7894690000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000003EC69545874584D4C3A636F6D2E
            61646F62652E786D7000000000003C3F787061636B657420626567696E3D22EF
            BBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964
            223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E73
            3A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520
            352E332D633031312036362E3134353636312C20323031322F30322F30362D31
            343A35363A32372020202020202020223E203C7264663A52444620786D6C6E73
            3A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F
            32322D7264662D73796E7461782D6E7323223E203C7264663A44657363726970
            74696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474
            703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E73
            3A64633D22687474703A2F2F7075726C2E6F72672F64632F656C656D656E7473
            2F312E312F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E6164
            6F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A7374526566
            3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F7354
            7970652F5265736F75726365526566232220786D703A43726561746F72546F6F
            6C3D22436F72656C445241572058372220786D704D4D3A496E7374616E636549
            443D22786D702E6969643A323541443145453233454134313145423944393939
            44303036453831433037382220786D704D4D3A446F63756D656E7449443D2278
            6D702E6469643A32354144314545333345413431314542394439393944303036
            45383143303738223E203C64633A63726561746F723E203C7264663A5365713E
            203C7264663A6C693E52454B4C414D41323C2F7264663A6C693E203C2F726466
            3A5365713E203C2F64633A63726561746F723E203C64633A7469746C653E203C
            7264663A416C743E203C7264663A6C6920786D6C3A6C616E673D22782D646566
            61756C74223ED09BD0BED0B3D0BED182D0B8D0BF2E6364723C2F7264663A6C69
            3E203C2F7264663A416C743E203C2F64633A7469746C653E203C786D704D4D3A
            4465726976656446726F6D2073745265663A696E7374616E636549443D22786D
            702E6969643A3235414431454530334541343131454239443939394430303645
            383143303738222073745265663A646F63756D656E7449443D22786D702E6469
            643A323541443145453133454134313145423944393939443030364538314330
            3738222F3E203C2F7264663A4465736372697074696F6E3E203C2F7264663A52
            44463E203C2F783A786D706D6574613E203C3F787061636B657420656E643D22
            72223F3E46386E18000072814944415478DAED9D07982445F9C60B453872CEE9
            489291204876899241044E54100195287F4554301D0A8A0A460454D4434C2B22
            2AA808A2478E8AE40CC79173CEA8FFF7BDAEBEEBE9A9EAAED4D333B3DFEF79EA
            E9DDD9EEAF6B7A67BADFAAFAC24CFFFBDFFF94200882200882200C1B3389D015
            044110044110861111BA822008822008C250224257100441100441184A44E80A
            8220088220084389085D411004411004612811A12B0882200882200C25227405
            411004411084A14484AE200882200882309488D015044110044110861211BA82
            20088230448CCEB5E23CD8CCA47F9D0D6D56FDF3CC687316762DEE67625EC753
            FE17EDB9D26B2FA0BD51F8FD75B4170BBFBF8AF632DA2B139EBFF395B6AF9930
            BC88D015044110848681F81C87CD1C6873A94C60F2E739F5761EFD335BBEDF5B
            F4BE6F5699E07C13DADCFAF539F47E6CB3A3CDA2F77D53DBEF33028A5D8ADF97
            D05E539928A638CE05F3F368FF417B46FFFCBCFE5BFEF333A5DFF933C5F7B310
            D22274C630227405411004A1023D433AAF472B8BD84117A1830E85EF13684FA1
            3DA9B7797BBCF073FEB727208E9F6EBBD3421A44E80A822008630208D6F9B059
            A0D41636BC5616AEC2D883B3CA8FA03DAC5BFEF3A3680FA23D966F218A5F6FBB
            B3821D11BA822008C2C001D1CA19D28554265417435B506FF9DAFCCA2C62DFDC
            76BF85A184B3C253D1EE333508E1A7DAEEE0584684AE200882D01740BCD2FF94
            427591425B54BFB658614B014B612BEE00C220407FE1A2F8BD1BED0EB4DBD1EE
            9519E16611A12B088220340A042C23FB294E975099705D4A658275B1C2CF8BEB
            7D04612CC140BB7B55267AEF283608E007DBEEDC302042571004410846671358
            46658295627509DD162FFC4E713B73DB7D1584018333C1B7A05D8F7643BE8500
            7EB6ED8E0D122274054110042310B1F469A5485D5ACD10B34BEB6DFEF3826DF7
            5310C618747FE810BF68774100FFB7ED8EF5232274054110C62810B2CCC1BAAC
            6E4B175A2E6239232B33B182D0FF70F6F75AB46B74BB1AC2F7BEB63BD50F88D0
            1504411852206459488082753CDA7286ED426DF7511084C6604AB4CBD12ED3DB
            7F41FCBED676A77A8D085D411084014507792DA966CCCAB28D5733C42CFD6325
            3381200884D5E7AE429BACDB9563A1FCB2085D4110843E46E78BA52BC10A682B
            EAB6BC6E7C6D5CDB7D1C525E5659D10006FEE4A5685F32BCC6FD58BA96E566E9
            23F98A6E242F5BFB1FFDB32AECAF0AC7BCA16D99C8CF59E67FE5A0241D18E8F3
            796049E13705FC9C9721CECB0FCFA3B7E5D7B81F2BC4CD8636ABCA8A6FD0C64C
            4DFDD3042FF839E44CEFF9BAFD7B18FD7C45E80A8220B40C040AFD6019ECB542
            A951D47276F62D6DF771007846650294E2F185427B4EBF5E7CEDF9D26BCFEB2D
            6DBC8E87FD8B6DBF9961069F778A5F96459E5BB7FCE7794BBFB3B19A5D5E0064
            41BD9DA3EDF730A4B04CF205687F41FB33BE074FB6DDA11488D0150441E81178
            C0335FEC4ABAAD8CF656DDC62B09FAE2CC251FACCF18DAD355AFE181FC4CDB9D
            177A87F63DA7E09D5FB7854ABF2F5A6AFCBBCC22FBC1995DCEF69E83F6477CC7
            6E6BBB43A188D015044148081EC25CA2CD05EC2A7A4B514B713B77DBFDEB119C
            216559D4270BED09DD8CAF8D055F41A11D749A3C162359D4D2F27479CC32223E
            ED666E423B8B0DDFD51BDBEE8C0F22740541100230CCCEE65BBA200CDBC392BE
            7C8FA92C8AFB71BDE5EF8FEAC6D71E565AC04A49536110D12E440CE0CC852FBF
            CBC5747BDCCED7763FFB805BD17E8EF64B7CD7A7B4DD993A44E80A8220548087
            1F1F7CABA2ADA65BFEF33C6DF72D12064051A43E80F690FE3917B01DA2160FB3
            E7DAEEAC20F403B81FD07F38F7A16740E88A85DF176FBB7F2DC0D4653FE5A5C1
            7DE28558634D2042571004410D95A065847F2E601FD6ED419509D7070BAF3D86
            07933C00042111B88730BB4439A094F79135D4E0DD477CA1C81D45FB21EE2B57
            B7DD99222274054118530CB8A0A50BC1FD2A13B153F5F67EDD285E3933FBD830
            A60812844166C0EF3BBEB032DBF75436CBDB7A810A11BA82200C25BABC2D1F24
            6B96DAFC6DF7CD02FD5A39E3FA806E2CDF797FE1F7A978683CDE762705414807
            EE532CF8B2BACA667DD7D56D85B6FB9508BA409DC4867BD7D36D754284AE2008
            038DAE0E365E750B5A3E2CFA29288C8502A6181A052D67671F9599584110704F
            E32CEFBAA536C8E29779A94F453B11F7B8877B7D7211BA82200C0C7800303D17
            45EC1A6A86A0E5CF73B5DD376517B2D31A6EF08FB5DD414110069382F85D1F6D
            53B48D5456606390600A410ADEE3703F7CA2572715A12B08425F821B3BF35BAE
            83B6B66EFC79D916BBC49B255D0BEE2EB4BB94085941107A8C2E0D4ED7AC4D54
            267C3756590AB4418033BCDF423BBE17550845E80A82D03AB869B3CC6D59D42E
            D24257E8273B05ED4EB47B542664B99D266C71537EB5ED6B2508826002F751E6
            F9A5F07D27DA562A4B7FD6CF3078F628B4339ACC0023425710849EA113B2B3B0
            4259D4F6B2621897CFEE509988CD5B2E6A1FC00DF73F6D5F274110845870BF1D
            8FCD96685BEBD6AF81B857A27D18F7DE9B9A302E4257108446D0A2962974E853
            F676B4B5D0DE8636AE07A767501783BC6E5799A8BD43FFCC99DAA9923F561084
            B1842E83CC7BF1F6683BA86C92A19FE06ADAF12AF3DF4DBA7226425710846874
            E603CED4E6C11214B6BC91CED6F0A919D0709BCA046C51D4DED90FF91B054110
            FA119DD66C17B45DD146D0666EBB4F9A1BD0F6C2FDFB96540645E80A82E00D6E
            92AC014F41BB6E61DB94FB016767E95AC01BDFAD7A3B4DD4B6999B5110046118
            D0191D7646DB4B652E0E6D8B5EBA977D02F7F753521813A12B0842253AFB0167
            68F399DAF5D0166CE0545CBAE26C6C2E66F32D05ED2B6D5F074110846107F77B
            FAF1BE1BED032A0B6A9BA9C5EE9C8E7660ECFD5F84AE2008D3C14D6E56950587
            6D88B6816E4B253E0DF3CDD2DDA02866B9BD0B37B437DABE06822008C2F495BB
            BDD1F6415BB1A56E5C8BB6139E0D8F841A10A12B086318DCC898773117B414B7
            14B9B32432CF195A0ADA1BD1184D7BB3CAFCAFA64A0530411084C140C7607076
            F72368BBA3BDA5C75D607AC76DF1DCB82BE46011BA823046C0CD8AD90E286459
            516703BD5D2C8169DE447823CA852CB714B6B7CB0CAD2008C2F080E7C8C2D81C
            807608DAE23D3C350BF26C8567CA8DBE078AD015842145E750DC50CD7043607A
            AFD891F83368D7EB7683DEDE829BCF4B6DBF5F411004A137E0F9C267C91E681F
            5759EC462F60969DCDF0BCB9D5E72011BA823004E8D95ADE6CF2D95A8ADB4523
            4CD2B5808161B9989DB6C50DE6FEB6DFAB200882D03FE0F9B32D369F51997B43
            D34C45DB10CFA2875C0F10A12B0803884E074331BB99CAEA9C3313C2AC81E65E
            509990BD4E370ADB9B712379B9EDF7290882200C06782E8D60F325953D939A84
            016A9BB93EA344E80AC200A0537CE5A296B5CCD7447B5380A9C7D50C41FB6FB4
            7FA92CDB81048709822008D1E079C5EA6B5F515925CCA6F8299E5BFBB9EC2842
            5710FA10DC2898CA65D3425B3EC00CDD0C38F2CD85ED75B8313CD8F67B130441
            10861B3CC33811C3A0B563D1166AE8347BE099F6DBBA9D44E80A42CBE81AE49C
            A12D0ADB453CCDE4A2F69F79C30DE0F1B6DF9B2008823076C1F36D5E6CBEACB2
            2C0DA98B4FF019B70A9E754F56ED244257107A0CBEF82CAF489FDACD55E68E40
            5F5B9FF2B9226A054110848101CF3D3EE74E435B35B1E953F0FC3BB86A0711BA
            82D0307AC6766DB411B42D5536633B87E3E14FA35DA3DB55DCC6548811044110
            8436D095378F433B22A1D9FFA0AD5C554C62CC0B5D5C78CEAA3D11928458104C
            E82A327445E0676B44B7791C0E653D6FFAD25EAD1B45ED9D6DBF1F4110044148
            059E91DB60F333E5EFA267E3343C2B3F6CFBE39816BAB8D85B60732EDA8B685B
            88D81542C16769656CB6D08DB904177438EC76B42BD1AE5099B0BD512A890982
            2008C30E9E99ACAA7636DAFA09CC31CDD8E2787E3E63FAE39815BAB8C8DB6173
            16DA6CFA2556DC10B12B3881CFCF0A2A9BA9E5AC2DDD11EA46A6CFAACCF5E00A
            BDBD129FB5A7DB7E1F82200882D006DA95E18768FB243077109EA9A79AFE3026
            852E2EEECED8302545B91C2AC5EEBB70B1FED5761F85FE029F99C5B0D95A6533
            B62368CB54ECCE2FD5CD6897AB19E2F6367CAEC6DE974D100441102C6857BFAF
            A11D1969EA023C63B731FD61CC09DD0A919BF31CDA36B86057B5DD57A13D7449
            5D068DBD0B8D5F9E352A76A7EB0B3F2F14B697A15D81CFCFB36DBF0741100441
            1804F0CC6509E1AF4698608CCB7C78F6BE52FEC39812BA0E223747C4EE18438F
            2A2966396B4B714B913BCEB2FB032A13B4B9B0BD5E7C6B05411004211C3C8799
            6FF7731126DE8167F1D5E517C78CD0C5057C3F3693D066763C44C4EE9083CFC4
            C22A13B6DBE8ED62965DE9867029DA456897E13331B5EDBE0B822008C2B081E7
            F2C9D81C1478F801783EFFB8FCE29810BA5AE43295C59B3C0FA5D8DD1917EEA2
            B6DF83108F767CDF58CD704758CBB01B73F2B108C32579C3FFFFA9B6FB2E0882
            2008C30E9ED35C713F5F65B130BE1C8BE7F5E7CB2F0EBDD07510B947A32D8D76
            A0E5EF4C5BB1232EDEDFDB7E2F823FF8FFAF82CDB62A9BB11D5133B26CE4F0FF
            CB59FB8B55266CE95FFB62DBFD1604411084B1089EDB0B61C30C58BE79764FC6
            F3FB90F28B432D7471B1F6C586D3D836917B142ECAF1DA3FF3DB681FB3EC2762
            7740D041644CF9B5836EE34BBBF07F49DFDAC9BA5D8DFFEB6B6DF75B10044110
            840C3CCBF9FC3ED7F3B0D3F13CDFB7FCE2D00A5D5C24FA789C5CB1CB21B82027
            978E391E9B4F5BF617B1EB00AEE127559C3379081CC8D0F7FA5634CEE016676D
            45D80A822008C280013DF16B6C26781CF2533CDFF72BBF389442D741E41E8C8B
            718AE5D83AB13B01C79ED3F67BEC5770FDCE53990F6C5BBCAE3261FB77DD44D8
            0A822008C280013D41B75256101DE778C8D7F0BCFF4CF9C5A113BA3522F7BF2A
            AB9EF1C31A1B556297426A77D8F863DBEFB5DFC0757B33360CDC9ABBA52E9C80
            F645FC6F5E6AFB5A0882200882100774C549D81CE2B8FBA178FE7FBFFCE25009
            5D5C904FA9ACC286098ADC7D70117EE168EB0BD81C63F9B3885D03B866EBA82C
            63415B7C08FF93496D5F074110044110E281AE6015D27BD16672D87D5768803F
            945F1C1AA15B5355C34BE43ADA14B15B02D7EB709505F5B5C5DEF87FFCBCEDEB
            2008822008421AA02D2EC0662B875D978606B8BFFCE250085D0741BA17DEFC59
            0DD86635AC7D7D05F4B0826BC5AA73EF69B10BEFC6FFE2F76D5F074110044110
            D2006DB13F36A7D5EC3615CFFF654C7F1878A18B0BC008FF2F5BFE5C3BEB8AE3
            E7C4E6BF557E9D4DCC160F23B84E8F62B3708B5D10A12B088220084384765F98
            52B3DB2FF1FC7FBFE90F032D746B82C61869BF878B6B810E60E3457AB6621F3A
            439F64F9F39817BBB83E2B61735BCBDD10A12B08822008430634C6546C96AAD8
            654F3CFFCF34FD6160856ECA9CB7BA0AC7E92A7371A812BB75191DE8C67046DB
            D7A60D706D0EC0E6472D774384AE200882200C1935A94B9F475B04CFFF974D7F
            1C48A1DB446107D8DC1B9B43D1B68910BBC49AA37798C175E140619F96BB2142
            5710044110860C688C53B1F9A8E5CF67E0D96FD51F03257475A9DEEFA01D66D9
            E539B45DF0862707DABE52FFEA227699ABCD96EE62CC885D9D3B7704ED6CB4B9
            224C3DA832FFDEB744D810A12B088220084346CD04E7FA78F65F633B766084AE
            16A29C493DD0B20B452E05EA5511E7D8049B4BD0AE56F562974ECF3F5359F959
            13432B76F1DE2946B7545986856DD0EE42DB22C224DD3E5864E232B4B745D811
            A12B08822008430674C7446CBE68F8D3DFF1DCDFB2EAD88110BABD10B9857331
            0DD96E6837A16D019B8F57EC5B27760FC7F1DF6DF3DAA5A2206EF740DB4065A2
            94817E17A2ED82F6AB08F3B7E03AAD86734CC1CFCB44D811A12B088220084306
            F40173F41F6EF8D3B678EEFFB5EAD8BE17BA7A699C6E0236DF8C27542672AF4B
            74BE55552672675269C4EE5138FEF8962E5FECB5C8DD12286E9955E1729589DB
            6BF09EFE5BD88F839083224E35CDBF06761EC3CF0B45D811A12B088220084306
            F40175D6DEA5972FC2337FA4EED8BE16BA5A68F1CDBDCFB20B452E85E88D89CF
            CB12723BEB5F5DC4EE5E2ACBDA60F32F1D18B18BF742C1BEB1CADC121651991B
            C71FD0FF7B2A8EE1355A2DE2B4D366BE61E705FC3C47841D11BA822008823064
            401F5C8CCDA68597285ED7C133FFDF75C7F6ADD07510B99CFDDB2AB5C8D5E71E
            C1E61F85975CC42E85312B830DA4D845FFD7C56657B4F954266ECF457F9F7238
            6E7E950D385CEA50DBD804E7BA0CB6623F8CBB48496641100441181EF404DCD3
            2A8BE5C9390DCFFB0FBB1CDF9742D741E432427F046FF2AE06FB703336AB165E
            A2D8DD0EE77CA0E2983AB17B0C8E9FD8E0A5F37D8F2B60B303DABC687CBFE7A1
            7F2F78DAD84965EE0CA1E4816833A33D13F996360FC9B82108822008427F029D
            B10A36B7145E6215D6D5F0BC7FD2E5F8BE13BA7843B360F34B952D9D9B685CE4
            EA7E7C0A9BAF955EBE5B9F3B46EC7E0DC77FA6C9BED7BCAF4555962181A58FF9
            3E2E447F5E8DB0F70D6C3E19D1A5DB71FE95616731FCFC50E4DBF312BA3AC891
            C1746F723DA6C4F5385F87733C6CEE18793D8E85CDBFF91C80739EA3E252BBD5
            F108FAF4DE9003D1370EA2FACD9DE404BC9F730D7DE560CBEBDA97A0EFFA9196
            EBC040CECF47D8FE016C77047CC226033066EDC1F5AAE31CF4EDC452DF7E82CD
            726D77AC002B5FFED0F407F4F5D7D82CDAE0B9F99065069F57D058DD899326F4
            2DBCCFC708FAF90935C3A52E84BD71CEFB0D76791FE477749E40BB8FC1EE9E96
            3E73C6EDFD9EF69AE293E8E7B52107EAD81DBAF4315685D5B9F8BDE3F5F25DC9
            E444129FB77CD6DDA9B2B8977FA25F5E420CFDA186D8B6E1EBF57CA1AF77A05D
            AAB2675ECF4523DEEFC7B1F966E1A59DD18F735C8FEF2BA1AB452E45E24E965D
            2834B76D5AE4EABE2CA1322168EA439DD8DD0E1B666F98CDB24B4FC52EFA4351
            CB2F29FD5FE98E7009CEFF9F44B6997BF81D1126A6D5A7869DE55596A62C065F
            A1BBB8CA064EA1FC0AE7EB5875804DA63F99D8C3F7C059F93B23CEE7C27DE8D3
            F89003D1BFB5B04912289A10AECC9C67E82BDFE3BD11764F87DD7D2DD7E1A7D8
            ECEB65AD930F144B8CC31E5D8C6A5D8B7AC444F4ED98D2FB65DFE66BBB63058C
            1970B4C8A3009DA5853E51381CE33AB0455F3938DB21E27C73E25C2F1AECAE83
            CD3F23EC5E09BB1B5AFA6C0A206A8B55D04FE732F5E83B9FDF0C8267A0F55B1B
            ECD7149589B853D1BFD71DFBC6CFCC962EFB2686CF9A13D07E82BEBED1AB93E2
            FD4EC6E69DFA57EB7DD646DF085D47915B29301BE8137D55D70BE90B8EE5AC29
            6F4CAD885DEDD3B206DAEC2A730FB83695B82D9C83B639533173849923D0AF6F
            261244BE22712395A5490BE5AB38DFD1259B9CC9FA5084CDE560D3596CE17CFB
            62F3D388F3B9C051FC5A2107EA158E3F34DC3F5F8C0F3C836FBE2F46D724ED8A
            F508DA8211B63785ED4B0B36FB6900F121F46D52A16F1C583FDF76A74A18FDF7
            130C7653F03DB4FF2B66B2311119F4FB24EC1B3F7FB0CB41CA1722FA3F6A5BF1
            290994B6990DFD7CC5E90D65CFEF492A9BBDED15D41B3BA18F8F39F48F9342CB
            F7B06F6526A3BDC7258E2716BC57A61CE5339183520AED75715EAFFB4B5F085D
            BC9171D8FC46F591C8D5FDDA5E653962E91FB2B6CA96FB9DFBE4207679833B3C
            E55200CEC94C099CB9E5C0E1CED4E2D6F0FE2E8C34F34EF4F162D86234E5C591
            B67C852E6FCE31F97F0FC4F97E50B2C9D2D39B07DAE3836E9CEBA85E9F2F5658
            BB1023743FA6B26A86FDC41C783F2F19FACA1292A747D8DD0F76BB061D854234
            312C55BCD7C0260347CFEED1F5AAA3E37B87BEAD8E4DF220E148DE863EDE507E
            31C16037155F47FF3E5DB503FACA87FB9C8EF6CA7079FCED16BBD763B36644DF
            AD93360972A3A7E271F47161971D75CAD0492A6E0227140E5E37AA12E42DAF42
            14E1C07BF3A66776F17EBFA432B72FAE466C80F3DDE46BA375A1AB670529066D
            E2806F8AD9151E6DE0DCF41FE48D831F1CDE449EB38DAAB5FF1E6F8A2C26C174
            62FCD2F0C1B379952B8583D865FDE68353885D3D73A49A14B7A5F34D54E64A25
            AEF03DCFC3D1196CBD0B3F9F17618BF80A5DDE9CBF1A71BEAE2570D8E40028D4
            37F17ED85BDAE7009C8F23DC1522DE830B314297BE9B9F68B87F3E581F78E82B
            67B58EF1B457644BD8FEBBC16EAC1F3B1F24B3967257D337FCDBBDB964B574AC
            42A06F5C5E3F37C25E13CC873E7605BB2618ECA6A2325592CE6EE3147863E16C
            D8DECD6077BC8A73D72107C1F6A906DB7C1ED1C7F3CD4D5D340FE83FBF7EDD4E
            E833679FE916D086C8CDF92CFAFA958A3EF6C32A44CEA1E8EBF79B32AE5787A6
            A02D80B617CEF5EB103BAD0A5D47915B99D6CBF13C2BABACF001DD10E86B4387
            725B6102A6CAA2E335C5EB152A9B89B9A52844B59B05FD8EF8F06210D0488DD8
            A540FE8BEA4C8D512499D8ED2509FC84A605A2695BEFC6E677915DF215BABCEE
            1F75DDDF40C712B87617E148FB2D81F62E85BD4D5D77D681850F475D31376284
            2EDD91DE13726C43581F780966C79737E59B865DDE4F568CB07B2FEC760C9E60
            933E7D1FEFC1F5AAA36B15027D3B5865457EFA8567D1BF794D7F4830D84D0903
            0E8DD53F13F8D17E0BB6BB069C89064C3BC0F69F0DB63968F70AB86B90336D01
            7385FE32C08C9AA3E989833A3881B64CC5A45BBFAC4290DBD0CF559A328EF7FA
            7FD87C4B39AC7854D19AD07510B91CD96E132A72619F656A2946398A8D8DA8A5
            CF0C1FD81C4D5C967F00F5120297100F43FB488DD865C0D6F96A48C4AE9EE1A6
            7FEEEC1166A605A2697BFBAA785F535FA1CBC1474CE46A87CF17EC2D89CDFD11
            F67E017B1FF0E83F6FDCA311E7732546E832CA79DD1EF4D195B3F05E76B7F435
            66E0C6EFEDAC65B7131DAD7D73649FFF01BB5B94EC7250F8EEDE5CB24ABA5621
            D0B7AF637364A0BD26B07E7E130C7653F210FAB984A59FB11301B660BC1857AB
            1CA679BAA5FC226C6F86CD450D5E2F1F4E441F2B5755D0DF43B039A9ED8E6AD6
            AE98DDEF9755881CE3003F16BDE24E4DC5FBF25E31DAA815A18B37C0B41C4C0D
            619BBDA2533645EEB39E7639D3BA2FDA11AAB92849CECE7084C1C8BF97F57939
            83C7A09BBF55F5D941ECFE9CFDEF95EB410C7A207145A499698168DADEA12AF3
            598EC157E8F2E61C3A1AED5A02873D66B6B834D01E390E363FE7D17F5EAF4323
            CEE74A8CD0E5403526082B35D6075E6480C783B0BBA4C1E651D87C25C05E91AE
            28E33E1A4074AD42A06F1C7CED1968AF0998FECC98962BC160373574E57ACED0
            CF7C662B94AEAA913A730727716297E96DD91C38D1F4B3E62F991387A18F9522
            16FDA55FF9EA6D7754D39165A5D4CF7E5A85208D146AD22E5F5C7DDB1AF65F8B
            B1D573A1AB45EEF9FA0D98F016B97AC9F8232A73585EBC476F853708FAF4FDD8
            C7195B8B5DE6BFB4E52C640EE17DFA5DECE27D502C7C23D2CCB440346DCF94B7
            D8175FA1CB80A4D95CF72FD1B5040E7B4C35F68B407B84AB023FF2E83F47FC6F
            F33C077DD17D73EE06095DBD6AF3A2EF7105789F98507A8D82252660CCF8C04B
            E076C2959E4D0C763918DC20A2BFA42B9B03EC72B05C97FF99F7C318FF680AC0
            AB6AF679BD2C7222530ED2A7B3BC0247F11113CCF73DF4F163A63FC40E76D58C
            09157ED60F50713EDE6425F4F50E433FE95E707880BD9CAE19421D74F5F3C8FE
            566573E0A0FDCB11B6B95A9A6A46F8A52AB184BE3243D10D1EF6CA305682136C
            FCBED02D92CFB29854701F477F8D2E25095621D6D7FDA5EFF456687CE6C4E461
            DF1F7DFD49C4F1A6F7C8E0C8492A7BA67B4D789AE8A9D07510B993D176F514B9
            BCA1D21FACADD90D2E4B1E803E5FE9D1677EA9B864649BE9EA7BB18BF7C09451
            31C9CBA707A2697B13555C601B7116BA381F6F46B5695C2AF82DCEB547C92653
            8D1D1761F35DB079BE63FFF95D6249449F84E5F43F67B085EF527AA8D08D5DB6
            3F05E73DB86493C2EDC4407BA4A93453D3DD700A3629D8986C3DA63C36E948DF
            E50ACE4F111393ACBF23D383C779994A6D91C0734EF7DB2FD8631116E7E4F006
            A6AF1C19FA9A7AB0CBF47423117D352E59C32E336CEC1A61B72B180F3699E968
            8F407B3955D91C4EC366FF08DB2BF62267BEEE6BB920812FCC067055C11EE381
            AE8EB0F739D8333E4B12AC42CC9EAF466B7B1355DCB3D72ACA43D06E91CC66F4
            99D8F8AC9C9E095D0791CB1BC48EA6B43F167B1C8D70C4C8595597CA56148D5C
            EEA320CD83CD98038E954A781198928BC293411F1CA57316865F6097191EFAEC
            1EAFB2C4E9AE099F5DC4EE077B9994D915ED9BCC08E09884F01D0FB4043316C4
            EAD764780FFCDF5E1371AEAE2570D8E497F32311368DB33996FE33F5DD9F3CED
            5F807674C0FB0E15BA2C9CF267DFE30A7C1AE7FD7AC926FD0C0F8BB0D9549A29
            534E655685FA61A0BD22C66C0E75E0FC9C05DDC4F7384D57A607C7733255E4CB
            3EC794F82BCED9F1104FE0D6B4076CFED6D0D72606BBB1F7B1354CE99360F75F
            2A4B7119C2F3B03977C91E03AF38F00D4D5796F33BD836069BE21CBCDF6C1568
            97CFE471B14BD6AE440E24B80A317B292B0AFF57FF8AE8D2D1B067744F68C0E5
            2ED6FF3B69E605F487AB787F4F2572494F84AEBEA1F0466DF37FF115B9B4C71B
            D76635BBF24BC299002E275F00FB2F78F69BCB517C58F366C67CBAE36A0EE183
            E53DAEFF2007B1CBBEEFDEAB2FBBC775499127F3D7785F7B156C52107C38D2A6
            8FD06540D29911E7EA5A02874DA61A7B57844D9F84E61C58F946A172398D7DF4
            2D8A102A7419417E4AC4F5782FCEDB116C079BF433DC25C2E6BCA615A3046E27
            1F2D97984D50C92A2728D803E767B9D9D084F75D991E1CCFC94982DB23DEEB0F
            71DE8E6559D86425A623226CAE672AFDDAA783DDC560F311435F632ACDDD089B
            6B96ECC50E42738CD91CF43962B28D3C0CBBBD72438C4DD3D8C42A84D58DAD81
            5588581796AEFB74283A8D1E07D849B309352E741D44AE9798D3A562F9B0AEFA
            50F241C61980EFC0EE1309DF074B0172B43E7FC5AE4CA7C2742B4E4BB65AECD2
            6777B114D7A717241030E453784FD37D7C132CB3121FA1CB07E70911E7EAAAB5
            0D9B4C35B652A0BD4761CF393B08CEC5A0B78D3DCFC10021CE3EF8562A0B15BA
            2162BCC8866597A040BFE49C26D34CB134F95F0BF6B842C47B4FDDE0B80EEF22
            22FAFC5C89E2A0C965B5CB4457A607C7F36EA3B2FB59285D3944132CB12F6C9A
            7CE8D3C1EE2C86CC1DF49F7C2ED01EE90AC6834DDEBF0F0CB457A4A9D2CA57C0
            EE4609FA578B9EDDA6780CFDAE34B10AD1153CA8ED72522C66A6B309973BD639
            882D1CD5288D0ADD06442E4521534DD82A9CD03DE164B42F989283277A4F7C50
            D2658282D716ADCA071CF3FF3ACD7AC22645FB64B4252CBBF495D8457F99DAE4
            BD91663A966313CCD4111FA19B7C091C36B9641B2A6CAE823DA7A025BD3CCC07
            9F6FE01407891CCDFBA6A6B9047DAB5B3D31F593E9F826F81E57A06B760B36F9
            BD9E27D05E9369A6CA399599D6F0AC087B39C66C0E752428043009E7F5CE298C
            F37236F307BEC715783FCEFBCB924D5B2976175E863D630AC404FEDE3D19EC26
            5841FB3EEC1E5AB047114ADFEB1433A68CA9E91A38E31C9CB87928C26EC78A5F
            93C82A44F4BD6F65D88CB97E8DD398D0D5394539BAB5D5E6E643E07D1E227759
            95B906D8C4E0EDDA5E8C5F8CCFFBA30FCE1915EF8F6277D3E2C3AFC65E9DD8E5
            32E80457F78E86DFFB0315FD74A5630939513E471FA1CB80A49D5CF6B5D09106
            08F638F88AA9DEF71BD8731285BA7ACF644FFB4FC3FEFC3896C121A7791E7B11
            8E1DF17D4338D7E5D86C18783D5EC339672DD9A39F614C04EE1F61D338984AED
            76027BCC0CB14F84BD1C6336873A70FE11E5EFA252A42BD383E3798FC5E6B311
            E7E53DB323451F6CF27BE554BED5C0ADB0B7AAA5AF0331D84DB00C7E24EC9E50
            B0171B2855C4163C179B7ED25A563835B20AD13B97BBB66844E86A913B59D973
            527A6515D07E1B5757D8E3B2F741753EB83A0A9C3353CCD440DF218A353AE3F3
            2230FA9F028E7E451C315D502C6B69B1C71B1A45836DC99DE560DF013B4EA51B
            1DC4AE972F7313242A197917DE4387EF16EC3262B5B644630D3E4237A6BEFB33
            38CF7C257BEC7B5D2AA62ABE019B9F72EC7B48DA1EE678DE3A301F67A8D0E58C
            CE62BEC769EEC439DF5AB2C7FFD7F581F6485369A63A66E274A02C839CE60FB4
            57C4AB8848A10FFBAAB8022C7D91E9214170DB79B0B79DA5AFFD36D83556EF4A
            50696E4FD83DB3602F763052A4A9D2CAC6B2C24D20AB10BD73B96B8BE442B701
            91CB651646976F67D985BE259FB755CDD0AE069C96FFA0F27F905134FD5865CB
            7856115D233C9807704B8FF7CBEBF6D78AEBD7AAD845FF384B1593C7749A19F4
            BFC3F52151B26E1FA19B74091CF6387AFF4D44DF0F81CD931DFBCECFC7369EF6
            A7CD90E058E656FD92E7B1DE4257176F7935E27A70A0D9F11E6193A224263179
            4FD24C05CEB8DBE8CAE6E002FAC06C3431395DE97AE53D231C99E981BEA9E34A
            D1EB0CF2B935E27D5495D58DF1F7EED9603741A5394EB65C5DB097AA30C273B0
            6BBC8726F079DF0EB6CF4BD0C75A1208FF4DD0D78E8C2DB0C981EE4281F6067E
            15A2DF482A741D442EA3920FF6C90F5B5359E828D83ADE721C4744BC69D01F65
            8EC8B7C6195946AC7FDB16145253F0A06B6923F23AB62676D13746821E1069A6
            23104DDB9D82CD3291769D84AE1EFC3C1D719E3FE03C1DA9681214D0E0FFB336
            5D989E2DE4F2BDEF677ADAAC0E8EE7C3C777493044E87275E2CE88EB711ACED9
            918523418007FDDCBBFC6653CFC4C11EC5F4C723EC15E9CAE6E002FAC004EEDE
            3EB605FA22D303EC31C8E72F11EFA3EA19311083DD04CBE08BC0EE63DA16AFEF
            DD11B68A74657328F499EFE3A008DBC6B2C24D20AB10E95721FA8D6442573FD8
            28C06C81135C8638788247BD62D8E40C2C858B2972F304D83AD2721C6754587A
            706995167EF1F6B6F901E3BC9C5D36CDBE3027E57AAEB38DDA569DD86545B19D
            53540DF121729923A72B2F28EC723011BBD4EB2A746397C0BF8BF374E4CA844D
            FA3D1D1261D3983FD3D0F7D0608469C205C77F073F7FCCF3D810A1CBFC991744
            5C0FAED21C5BB2D9AF011E1DF7A2D1B852C2659C8B8894DE538CCF7BDF647A48
            B0ACBC176CFEDAD0D77E1CECEE049BE71AFA1A5369EE15D89CAD602BB6304291
            AAD2CA4C5DB69DA7BD2273F46A222730834D8EAC4238BADCB54912A1EBE05BCA
            D1DDA19E22972E0BBC598F18FECC11FE0E267B388EE98C386B155B8DC80683E7
            28D87F6CE9337DA14C09B4E998BFB1E735A813BBDEE592634830FACBE9CA651A
            B97C92E32A747973F64DB155A46B091C36E9F7B46384CDB95CF23C073EA8A605
            A2E9E327A9CC8DC78710A11B12F4568403CA8EDC8EB0C9EFD6EE11361732A51B
            4C19E0015B0C4EAD1DB078D091CDC19548B11D9AE98101C3DEB3C0057E8AF3EE
            57B2C995B0A3226CF29E7BB9A1AF0333D81D4D58690EB626ABAC3A620A3AB239
            94FACCF49AAB7ADACBE92A6AD024B20AD11B97BB368916BA0E2237287AB2E2E1
            C32502FA993C55DA9F2293379A831DCCA7C058A24FCF14D007C6F4C5F14EAC3C
            9A9511E5CC98CDA7AA6762177DA180FF6DA41953201AFF775E15982CB80A5DCE
            687E27E23C2C0AD251490636F93F5F23D0DE53B0B780CB8E380FCFFB6E4FFBD3
            02D1F4F121623144E8D20FF8F381D7836C86735E52B21913E0C15AF746778F94
            3371B0455FBF63236C95F18E68461F38A3CA637CD3CFE5F44DA607D8644C474C
            9AA92560B32BCDD5A00C76132C834FCFF1AA83BA19C91F3AE35EA6239B43A9DF
            7C1FA12E83D6B2C2A969681582314131817403BF0AD16F44095D3D7BC1C098D4
            2297C287EE01A69C975D5183FA981425647D317ED1D1972D5596EFB70C7D1657
            9EE05F56B32E1F714FC46EA26B6C0A448BFD02E738F9152658027F3BCEF3CF92
            4DFA3DCD1568EF3AD85BC7A1DFFC5ED0D76EC17A931D7C1DF63FAD6DD00F787B
            CFE343842E5D87F60EBC1E64199C736AC966BF0678AC99E7CC8E14E36582229A
            F54AD0FD11E7ED9B4C0F91CBCA5C7D1B6759F9EBB7C1EEF45597924DBA8979CF
            E81798BE0C9E2890B888ADB4726C5183B3603766E5C699043ECBB20AE1E072D7
            36C14277B4BE7C6D501E466DDB36DAEE1A91E8FD7D6ACAB3B41CBF9CCC86C01B
            081F9E1CD5F101CAF73482C664EF2EE51679F19830BB2B121C7D3A4BDB2963AC
            78E2704DEAC4EE752AF3E74B561FDAD0078ABB5A4156C3A7D1C7AF97EC72A0F4
            40A0BD22CBC2F61487F7C1FFFF7BEACD59E95802873D7E569E8AB07736ECED56
            B75384EFD7F41982C0A5CB10A1CBEF977791090D7DDAC7158356618F7E86313E
            7B7F813DA3C04F15E0013B4CC0FF60849D325DE53A5D403F5851EA32DFE30A84
            667AF822361323CEBB39CE3BB964332667F7DDB067ACA0392883DD94395E13DC
            F7CA74647328F4795D6CAE0DB097D355D4A0296415A2372E776D1324741D44AE
            D5C7C4D1BEC9919D1D5DBD1C89A91FFE5CAE9EB5C62C73BF320D1813F3BF5173
            7EDA62C4326FDC75332A14386B943F98DAA583452CCA4B221763DF201F292D76
            596ACF366BC091D5164D88DDD1AC0CE5332A7ED98B33CF1D414AB04D57863B12
            74D355E8F226BC6EE0395EC439E62CD9E3CAC37511FD66368FDA28FD88C09CB7
            C2FE9DDA4648304388D09DA2C2B3684CC1F9962DD96B32C023C94C5C8225CB32
            4111CDE8C7FBB0F945C479FB22D3834E51C765E5D0788B0B616F2B4B5F530F76
            6357A58C83DD54395EF5338D01BFB119888A4CCFE650EA736C55406359E12618
            B05508AE3AC55C979EAC42F423DE42B707229709E6398A2F0BAADFC1EE7B4AFB
            F206483FBEBA0F151F3E47F84671C2FE02FAD8BA6594AEFAD1FA785B5A98AE65
            598F3ED1119D51D8B6999E46C46E0207FB9C050CFED5B14231C755E8C62C81DF
            8273AC56B2C75586B323FAFD71D8FCB643BF43D2E0709669DEFCC6091B1C50AC
            E869E3CF387E07D79D710E96C6A6407973E0F5E812D67D1CE0F16FD85D5BDB89
            8D342F1314D15C9392D185BEC8F4906059F927B0B7BFA5AFFD36D8FD0E6CFE9F
            A19FB64C3EAE4CCBF10A3BFCFEA6F4A56CB2A8C12EA655D2261863AB105D5967
            7AE172D70F78095D5C14A6386112E7792DBB30B3424C0597AAA8F2AD61FB6FA5
            7D5D82A33E86E382736F6A314D67EDBA0F9829693405F8A5867D3F897D836F04
            6D88DD04375CD215A1AA6D8FA8B8E5A39C5AA1ABF32BBF18718EAE2570D8A4DF
            53AD50ADC0C99D257096B4235822F0266C7419AAE827FB3825E27A9C8EF3ED5B
            B2C9D9D853226C361AE0013B143E9C319B25C25699AE729D2E8CC6D7AE0FCDF4
            4051BA9CEF719AFB71CEA54BF6F8B9BD30E27D7C11368DC55152FB7B3735D84D
            95E315763843FFE1083B653AB23994FA1C92C2B0C85AB01DE38BEACC185F85E8
            89CB5D3FE02C74B5C8A5B89ADBB20B536EC53C88F2F3988265185831BE1CC4E5
            E0331AEC276CE817D389ED57B1CB9F70AE1D4BC7F0C3CE2FC1F8D2BE4125554B
            B6EBC42E97AAB72826B28E3C1FF3F66E1A69C636F3CDFF776DB104075C842E1F
            5037479CE3149CA323B347820201EBDA723317CEC12C1E21AB00E51CAF21B397
            BE4297BEB917455C8F2FE37C5F28D98C0DF0D80836AF30F4956E1CCEF9AD0D4C
            9B894B90A2CC445044F3680BB5EB9BC8F4009BBCDFFE38D01EF9206CFECCD0D7
            2606BBB1C16DC6C16E8A1CAFFA67FA8EA72CD53A3D9B83A1CF7C1FBB44D83696
            156E823E5C85F831EC190B32C136737D8766A3E8D92A443FE224746B442EFFD9
            14B9317E44F9797893E4EC4AD98FE824D83FACB42FFB74658539CE106EE59BE1
            A0A26FF471E20371E58ADD28C6EF2B1DC799DB4F94F663BA182E27BF16D9270A
            160A44DB8D905FB89158B1AB53DCF0C653E7075D8771F938A1487011BAB14BE0
            9FC1393A2AE005A6FC2AD2E5CE61E83767757EEE68AF48C74C26ECF0FBE03BDB
            E02B7463A3BBF7C7F97E52B2D9AF011E9F80DD6F259879331114D13CDA42EDFA
            26323DC0E64495C54984C27B5FD7806B342B44145375AB6783DDC81CAFF7C0E6
            F20ECFCA109A2A6AF02CECCE1B78AC37B20AD1BCCB5D3F502B74713138CAA698
            B289DC7DF06663021F8AE7E2ECEC3F0D7FEA1AED5A04640EA3B5F99088095E31
            F56F5F55EDB86E12419CE53DC7B0EF86D837FAE6A3672738EB631B95468B5DFD
            19B824F4F8025D8168DAFEBE2A2E2020C745E8265F028FCC46F13CECCD5DB753
            C4727431102D3427A7AFD065D0E79703AF073155CE63BA9D0D03ED359A660A8D
            FE847C08B9646AF1A1A35CA72B784F8C4598CDF738CDD538A77715AE0A372D57
            BE82F37EB6647392F22F6E52C4783F68C2DFBB89C16EAA1CAF0956434C1C0DDB
            5F35FD01E7E36455A858E567D7B5A222BF1B1C08DCA4DFAB573123598588BEF7
            ED069B3142B967540A5D3D3AA18832DD34938A5C7D3E8EE8CF30FC69419CE7C9
            D2BE1C91AF6231655C224FD0BFBA64F05DFE357AD6D5B40C73C0044375B5C07E
            B9885D3ACD07CDB824086EC931CE5C26F8C2E5B8085D3EA03E1D710EFA299707
            5014E9A137F69BD1E7D5EB761A0DAB34540E446384EC939E3688AFD06545B4FD
            5DF737B022CE7757C9664C804757919282DDAA01B30B0C68E277FCEF11364C04
            45348FB654BBBE894C0FB0C955B991407B9CEC1867CAB0D3D0603726B8ED05D8
            EB0A084A95E335F0DE51C7B46C0E863E73D0DED3B2F41ADEE398866D22FAE554
            D25656219A77B9EB17AC42B746E4D227E57DA664D13E681FD685F391D8A8B99A
            D293F8FB82A5E36CE231C756339C2337E7E8F1028C1EA780E5C3BB6AF4D79519
            429FD7F490EE9AC188BC967562973E5A236501E1683BD6E78F1803D1B47D1615
            F9AAA73D132E423776093C355DBEDD863E8726602F07A28D57599A3D5F7C852E
            8346B70CBC1EBC218D2BBAF5F4798007FF37BC67A52E561314D13CDA52ED7A9C
            9703C0E37C8F2BD095E9013619DFB06CA0BDA9B0670CDC4C30D8ED5A8D834D06
            F938553734601CEC2608D29DA8B2C1C79D11366C3455D420055F40DF6A579464
            15A27997BB7EC128741D44EEEE21E93F74DA218E7A37D58DD3FE174CD095B2F0
            77CE8CED5B3AEC0AFC7DA3921D2E615E6E390D47F2739B52892588B0AE82239B
            4D2DE7E507ACECDB3B39B57F8B16BBF475B555BEF216BBB04991CF0F73EDF27A
            0DD659F6D1F872B1392E42376609BC09ACF5E20B7D0EF5A52A07A23135E00D01
            767C856E480AB39C0771AE254BF696C7C67B8056A02AC0233ACD146C70F0303E
            A27F26BCAE79E1FDC4FABB0765CE4990E98115236F2FD8E37D87839B9903ED5D
            027BC682250906BB8BC3F6C3057B0CF2793EC29E71B09B22C7ABCA066231255E
            6D2C657287AB70D5EB35D6F2C485BE36B10A3159F917E4C919F855887EA54BE8
            EAE08C5135235AB38897C8D5C28BA22217B5FCB99C7B6F7AE4DEA8B99A98A93E
            F39EBA8F26AAD29E342574E927C42A318F3460DB0B3DFBC5592A5BA5272FB10B
            7BCC119A6279A22A8F69AAF2CD1DE9532CE76240D26209CE958AAE4A71863E87
            E64F2C07A28506A5388B2EBD4A4381129A66CB34B08D0DF0B0CEF0C03667CA7D
            4B2AE77049980FCB2666B082229A475BAA5D9F3AD3434496919C33606F1F4B5F
            93FA7B27C8E47232EC7595614DB00CCED53D4E22C466CB29F3BABE065D81DEE8
            3307EDC1E93C13F2AACA064F536C3BC82A44FA55887EA543E86A914B91645A9E
            6710CB8EE5209122DA079082369FB1652A8CBAA4F1D35380E178FAD86C53FA7B
            50DD754BFF9A10BAF483E48728C67F26298E62776B9760BD043962738C8168FA
            1C75A9DB5CA94C4B936009BC0926A0CFBFA9DA01FD6699CDF5026C77E443851D
            3EF8427C497D846E6C19DC5FE15CEF2BD9ECDB000F95AD2CC504DED9088A681E
            6DA9767DEA4C0F0902608F854DE32A51E460F74ED87D6BC95E6C7A44E3603741
            8E57BAB150DCC456B32CD3645183941C877E7ECEF647F49599A23E12615F5621
            0684B2D0ADF257630EB7910996EA62DA2D81C772B6955FFC71CA8DA2D0A5102A
            FBD25947E6BE3424748D89E8DBA6A63A0D47E2F4B11E75B093AA3EFAC2B60216
            38C7AFB0796F8273D4095DDE9C9BF0578BC1582FBED067DE90F89E7CAB8CB1FE
            F83CC559970817081FA1BB013657B8EC6BE1AB3857476112D83C069B2F04DA23
            EF84CD8B0D7D8DCEA9AC323111BAFC574557B94E17F09EB8DAB693EF71054233
            3D7022C4F59E5FE62A9C7383923D5B60B22B1F86CDD30CFD8C1DECFE0D76B72E
            D93C089B9323FA6A8C5E4F90E395CBDDDEA59C1DE8F0FD2FF5D9560DB40DAE47
            3FD7B2FD515621A2EE7D0393439794856EDD4C202FF6F67883955195FAE1CC0F
            103FF054FD55F5B58B42D7E41C1DE4AB66E957134297D5D0464C7E356D5113DC
            E5952D03B6E88EB1486497BAF20D96CEC13CA63B2778EB7542978328D7D435BD
            62B12A9797883E77CD0E44E4E2FD356C39CD26E01C1CB0FC2AE27A1C84739D5A
            B23949C5057874E5B7D67659AEF7CF117619446BFA6EF01EC387C8267EE63A08
            8A681E6DA1767D13991E1C32DCD4D1554953DB8D1DEC76F97B27C8DC61AC4417
            B90CCEFB3C632B4C6E39744D89998D9B96CDC1F48788D5A726A0FBC21CE8EB7F
            2C7D1DCBAB10B1F9C33F029B3F8A38BEA7987C74EBC42E3FC8DBD489DD823D06
            B4F161CD1B192F6E39A8E978D83A4AEF3B49753FD02EC5DF372DD9E487F36BCA
            0CDFD05EA6CA3E0DFAE806452A37416291CBEBEC5D0AD44065A9C04807FE2275
            423776093C35AFA2BF95B36011817ADF82ED4F946CB10468C80C4F5749DE8AFE
            C666D0D80EE73AAF6473B2EACF000F1BFC7EF1FF1A95CDA19C52D185D1166AD7
            3791E96134BE64EDF4FCD125BBB183DDCFC36E8700874DBA0778E71ED6F03935
            57F9F39920C7AB0D3E03F82C8EC998D4545103BA01E433FB1C70B14854ECACA1
            F59930C65721A89F62348BB1D264BF62CBBAC06552FAB4BDCF721CDD1876B02D
            45DBD0FF302E7970A69733B74CB0FE13D8D95FFF9D0FC8CF940E7B187F5FBC64
            870ED4554147B6D17C9359177609C94491921A91C100823DD047E7511CEC71E6
            22C5A88D814455012EBC992DE368AB8A3AA11B9BDD813E93E599410633CC1E60
            8B5803270B7D0ECD25FA81F28006B6789DBF1560CB47E852381EE8B2AF85AED9
            ADC8AC06F7C19EF1D804011E36F6D476A3B239F81E94E0FE169AE981F7F3DFF8
            1E57E0109CB763E91F3619E4B375A03DC2C1CDAB86BEC60E7639517046C11ED3
            E8FD2DC25E9708D1766373BCDAA00BCF4F55643607F47992A1CFA1056972CE83
            DDED4A36635628C892B0D9153330965721608F33D1F4C30F0D44635C039FB5AF
            071EDF73AAF2E8D6895D5EA82D7CC56EC9FE88CAD2944CD2AF7136779261F779
            CB33C835CB3A93B07F9713FF6856C6F7A080EE72569A1F94AA52811458EBE0BC
            1D794A75EEDED50CFB4F4D9983CE41E47AA7844BB064DC6BEA842E3FCF7B47D8
            5F06F6A716ECF1F3F44A843DA6D6DBC6F6473D30E4FB09A97265128C8CE09E18
            60CB47E8D215603B977D2DCC8E73BD5CB0D76480077DEB2744F4D504FDE1B85C
            7C8F8AC8E61012D13CDA52EDFA26323DC02667F7DE1A68AF6B72A4603776B0CB
            E0254EF47020C2CFD551FAE7503E85BE765DBB04395E6D30508CABAA51D91CD0
            E7C9863E73D01E538DB4ABAC306C725011138CDE118455B03B48AB10B18329BA
            8231F08ECF2BDE5728C8435D62C8B9E8674C1C40CFA9AB8CE62276B7F22DBD57
            713EDB878F7EC17F29ED5B3573C487CD5B4D7E79117DA39F31971267ADD8CD54
            02D8F6213526DC0EEC5BD5CD3B26EF714C1DF036A813BA9355C22570D8E383F8
            F6407BE447B0678DFAADC9175D4557209AB6C7C8EE2303ECF908DDAA8A85753C
            8EF32C5CB247DFEE98EF7153011E36E876419785986C0E7F469FBD0BDBE0FDEC
            82CDEF7D8F2BD037991E6093839B5903ED752D2B17EC9E8E4D92E0E604F09EB2
            34FAFA90A19FB1395E6D7076904227269BC320153598B5587CA660772CAD42A4
            A6365350BF5129748916BBBC39BCDFB20BC5D0882979B42F7AE98342A57C833B
            11F63F59DA97A3E98B2ACC250B622B5C07F6AD6AF46E9A45E35246B9021AC5D2
            DCC599AB887E552DBFC6885C56728BFE9FF6983AA13B4585BB48742D8127F0F7
            FB2C6C5A4B2BC33EFFAFC77BD8CB31CE624608121FA14B913D87CBBE06AEC179
            D62FD9A37FFEC581F6C89761D398B1A1A19CCA2CB3C9FB5254368709A5729D2E
            8CC697D20ECDF4C0020131C14DBC173E5FB0C7A5D58723EC8DE645880C7D9DAC
            D2C403A4E02CF473774B3F6373BC9A98B65290209BC338D3B235ECB260C8A9FE
            26A793BAA8C1B3B0672CCD3EC6562152C27BE6B2A6C1433F532B74894E02CFD1
            8B6D0635A5D835950F35450DB24FFC60555560EA1A7545F4ABCE9FEF229C6BC4
            709C6986AB2B297E037D0A16B9DA766CF47C1B54051E70E99BB344BE69BA72BA
            FEBF097C98F7864D6B1604D8E78D34A4647557209AB6374985B9A23809DDD1F0
            52C5395D0FFE86033C5E0DB057077D2B590635269B436D111113A32DD5AE4F9D
            E921418ABAAFC1E6674C7F881CECA684426155F4F36E4B3F6373BC9A9856B236
            329B8335830EEC72D07E5444FFBA56392383DBAC2E407DB80A7125EC195797FA
            6C15A22BF663107012BAC441EC7279712BD78A5B15E7B1F99A9ABE04FBAA6AA7
            7AAF2C03017D2A628A16B755153B1AFBC644A6372A72B57D9601F59E556A992A
            A19B7C09DC325BEF034B461BFDF074D4355D65E6F533390DE3CD286219D055E8
            B240CC3511D7C3B472C384EF3105199A0AF030712DCEB55E826C0EEF75C9716D
            784FA6CA923E04D5AE4F9DE961B4BAF2A50B07C366D7F5D7AB721CDC840E7653
            7238FAF85DDB1F13E47835C1CC109C218DC9E6D09505A9D0E7D8A2064B14DD38
            52147481BDED2D7D8D5D8560A68C170AF6C6C22A043375EC59CCC73B28380B5D
            E22076BDCACB5ACEC191E63D863F9984066F58FCE2AE5561926F908EF7C7994A
            16D6F485A333567A39B466575BE4ACADE297316FA247BF1A15B9FA1C37AACC71
            7D9098D5B6A4E2E0EA5247D7127882E0B6A56CAB20B0CD59C1D0D2B2B6BC9CA1
            0F4F57A14B917556C4F5380CE739A9649333E60704DA232B9AEE470DE554FE1C
            CE755C826C0E5DE53A5D885CE66D2BD3C3EF71DE8EC1176C32C8E76B81F60833
            0275CDA82718ECA6627AEE781B91395E4D50842DA15B4C36076BA552F49939E5
            43572AF9DC9A35715103AB0B90AC427843DFEBDD6D05C3FA1D2FA14BB4D8E5C3
            C836DB47B1CB1AD0C11F50CB08868EFB2B971F5AD897A3547EC1EA46E99C69FA
            94295AD4F21E1955481F9E3A9F1BFEE3D72A474B8E66A55099816196D2FED625
            0AC77E550D34E8F3CB3467510FF0D1AC9433D3B7F553A9DC5AF0BEADFDC57BA2
            20FD9987B932FBC3FE4F4A36E93B1A5A479E7EDAE32A92997359ED243F938DE1
            2A74ABAAF1B9D095A2AFC1000FA6343C2DC05E15D39633136473A82C226263B4
            85DAF54D647A48B09AB4DA044349F60483DD58E8D6F351531534435F6396C14D
            FC10E7FD6882A206D6B2BAB0CD41FB128176BBCA0A27086EB3BA00C92A8433FC
            1C72E5F278DBB36A10F016BA3935B316BCE132F5D88D81B66D7E79C6086AEC4F
            BFA0AFD41ACEE04D991183BCE1DD92A72DD3FE85BCD1D33F981F5A57A7725B4E
            41DB6C6EA55F66C5357111B93BC2F6DF7D6D1BCEC5259D7362EDF49A1AA19B7C
            091C36996A6CA9407BF7C29E35A34543A9AF427115BA5C8A3D2CE23C6FC3796E
            28D9BC4355FBE157D1CB008FE9FFCFC86C0EB545442CEF8701802FF81E5720A8
            76FD687859E99CAE4C0F11BEE93973C266D7927782C16E28745FA38BDD8F5D02
            9013E47835316D963B4136076345AC04450D2E84DDAD4A36635D80BA82DBB45D
            E6EF8F49ED3916562138EBCFCFC9774DE9D9068D60A14B1CC42E7D76BD975F75
            E010976E9637FC7933D8BCA4B43FBF5CBC8185E4DBA33BC39B022FC137D19723
            0CFDA7AF222BC895BFF4FCF0ACE01BB1D84B91ABCF179A86AA556A842E67EFF6
            8F30DFB1049E20B8CD5A2F5EDB6F22234028D36683EA76429F99DA6A9788F330
            25DA73259B31335BD6A0CF046E2765BE8D737D5CDB4E5AAED3852697796BCE1B
            9BE961B7F20C276C32C867B5407B4FC29E317F7182C1EE992A8B3AAF820F544E
            9EF0F94717BC6B020A2BC5E6782DC301102BEDBD9A209B03576BCF37F49983BC
            BB03ECE54C2F1C55B0D9880B5043AB107C3E87E4E8CF696A1582836E97B80966
            3DE1E7760ADABFD0977B1C8E1918A2842EA9F930F2A1C572C1DE5FDA8A403366
            5A58B73C62D7234ACE94EED1FC659B06D3A81C5C76CCD629D2F8253255BC3A00
            FB7BE5C3EBB5C8D5E78C296959E447BAEF5570E9FFBB0EB66AA911BA74E7D8CA
            C35C11FE8FC7150728B0375E65AE29A1586749619B03BCA8A0CEC438151240BF
            FF8DCDDB02CFD1950AA8E1000F3E3C36F3B457C5B424FA4D1711B1BED1B95664
            D0CD9F22CEDB37991E60930FDDD0220CFF84BDB75BFA9A74B0DB140996C1CBFC
            16FDDE43DB8E2D6AB0126CDD61E83307ED1746D8ED2A2B0C9BCCFAF3DE407BC4
            E80234C65621BC35C730122D7409FE191C211E6DF97390D8D5BE291C89AC6DF8
            F3CF616F6FCB31F4113CBCE1EBC6E0B62F9BA20F2B6E24AC18B3E684524D7387
            6BC03433B69B7313229791AECC5C90A2C63A2334CFAC391F93EBC7D45D9F4E8D
            D04DBA040E7B23D8FC23A2BBD68014876C22BDC655E8F273334FE039AEC739D6
            2AD91B94000F06632D441FB604D91C2A8B88D8C079399B14934A3134D3436C42
            FF8E4C0F3A3EE0C9087BBF83BDF758FA1A33D825B3FAAEC6859020C76B99E9EE
            7209B2393455D4E083B0DB21E8225D805ED37D353DA3C7D22A8431EBCC582389
            D0253529B8B874B28BAF2083CDF5B0E1ECA2C9B5E008D8FBA6E5388E0219D030
            BF4A0B6797E893FB57CB79999DE17B863FF1226FE25309CDA12A5D7291ABCF1B
            3B322FB27CDD12484A516713BA7A569CB36CB3F8599C4ED712386CD257FCF488
            EE1A7DBBB56D9B7F775BD40A5DF49965459F75B467A2ABC00B6CD247F9D781F6
            C841B0D995C03E81DB4999E9B10309B2397C1EB68EF53D6840333DBC8073CE55
            B2C7209F7F46BC0F630E696DBB117FEFD424C8F15A8401440BE78389C86C0E8F
            C2CEA2963E4F5471658599ADA96389BE2917205985187B2413BAA446EC060933
            D8647AAF232C7FAE120B8BA82C5A90A50E631F684C7D42E13C310F5E339C8F95
            E3284C4DA29C0EDDCEB3CC6D895C7D6EDEAC262630F514FA571B015E3138F0A6
            42E8F26659E75B57C5AF60BBE37F019B4C35764C84CD2D6DFFBFC8077213B808
            DD987468E47B38C7C74A369B0AF0E04CEE9484D7677A45B104D91C4283558722
            D303EC7176D8BB3A5B01637EDA2606BB4D916019BCC864F47B7A15B4489FF7AA
            D2CA935458319A9C8EB2C2090ABA585D80066C152236EB4C4F5621FA9DA44297
            3888DDDD4D0F9F0A7B5C42E748CFB484C140B28FC1DEF72B8EA7933C45265D1D
            E6F37C3BBCF14F52359187FAE146970593C8E58CC726A6E51E8BAD3A914B5790
            1D6C850662B154A60BE1AFE8E3B60EE763D09BB76FA0890AA19B7C091C36996A
            2CA65EBC71B63BD22F9559206C7EC3F41D0FF5BB7611BA4CC71793BBB96B85A6
            8F033C8AF07BBD609E3C3E413687AE605B17705E7EBE37F03D2E7F0F81991E38
            83F5BCEF7105BA323DC0263F67DF8AB0F96ED8FCBDA1AFB1FEDEBF86DD986208
            CE44E6782D33DD9F544FFE780F668A5D6BA8A801679DC715DDFA12B80031C385
            31FFB6AC428C3D920B5D52235EBC0B1AC01ECB6AF283B4B06517CEFA1E55E5FF
            AA05F388CABE8C8C6AE587871F827C84CF7E512830D88D5F048EA4AEACCA1DA7
            4529FD676C650F39DBF176D8704A0FE228728382FB1CCFCF255DCE58CF9EC0DC
            B472930EE79CA8E296BCA653217463CB19772D81470E08F8A5E348DB542F9E41
            23BF09B46B4CFDA3EDB20CF52D9EF6725C846EECCC3CEF091DC5266093C155DB
            07DA237398129C27703B29F2679C63FAEC5B826C0ECBC0DE54DF830634D3C3C9
            386FC7123D6C5294C5C458AC0D9BFF36F4B5317FEFD444E6782DB31CFA7DAFB6
            1B9BCDE11BB0F5294B9F63CA0A4F85DD654AF61A7301925588B147234297D404
            47F001BFA769E45D618F4BA39CE998DBB20BFD5FDFE72A2A0B76292EFF175035
            8DF953B9C4688BDCE6CD8AB9849D467A7AA986C120BB56D86B4CE4EA3E70C6CF
            DB4FCFC2F4E5DC9A7372F6A636D0C9850AA1EB52C2B90A537967FA3D2D1F68EF
            41D85BD2D2D7985CB45DBE6305BB31B30E2E42B7CAC5C885F5708E6B4B36FB35
            C0A3080B00FCB0603B269B436511111BC394E9013619E4B36BA03D622C03DEC4
            60B70912E4782D7223FABC66C1766C36874360AFEB99AE9FA1FCFCCD1C68F712
            D8EDF8CE34E502D4A7AB10BBC2E61F0C7D1D9855887EA731A14B6AC42E85E53E
            F8473827AF86BD8DB1A1E0B0397D73F6860FB06F36E597A2052967AF8EA9E9C7
            4EAE3EB4DA26330FEC64D9A57191ABFB9132DAD769660AE7E4C3A33647AB03D6
            E5D7044BE0ABC2F6AD057B14D45CB20ECD4C7119EC6D62E96B688A2E7EDEE734
            CD126BBB232A3C4B848BD065768DDD03ED13662D78A26493EE007304DA6B32C0
            238737CF258A6E4D91D91CA6C096F7AC18CEC9D5A93B7C8F2B109AE9817977BF
            EF7B5C8109386FC7EA056C72A0B676A0BDE761CF381102BB0CD43B3EA2AF5D83
            DD264890E3B54847D9F204F7F7A68A1A7415824AE002F44ED8BCD8D057598518
            83342A74490362973353FCB22D52B11B976AF8859EE45289C6F1BC9C35A14B01
            678396ABD8950FEB1D5D4569BF885CDD178E2A774E60EA09F47721C773720979
            1F977D6BE8CAC35A38073F2FDB45D8EE58021FCDCA3B3F1861EF97B0F77E433F
            999A8BB33921054CAE85CDF56C7F8CAC76E722745920653D477B655E82FD394A
            F6B8B4F844A03D72166C1A8577423FF4AB718EE97ECF09B2395C047B23BE070D
            53A607D8E4E7DF379622A76306B364B7117FEFD424C8F15AA463952441368769
            25AE0D7D8E2D2B7C2CEC7688DAA65C806415626CD2B8D025F88771B680A5FC4C
            0F708ADD437CFE213AC08C3EBE75CB9A7C50F28342217DB529A75ECD79387347
            BF263E30197854E7D7C3912297EC6F77B4DF4F2277267DBD52A464730A44D3E7
            8DADA695532574F97F5935D0EEE3B0BB70C91EFD9E2E8BE8EB5761B32BEF34EC
            528C3B076A96F8016CDA8A8AC4FAFEBA08DDC7B0711ADC18B815F6572DD9EBD7
            008F2247E31CD35D62126473702AB56C783F0CBAF991EF7105FA22D303ECD12F
            F5B9087BE7C09E71A09E7AB0DB14E8276706BF1D6D281B882F557CE625C8E630
            571E7459EA332B929E1161F7C3B0DBE1A61019DC667501925588B1494F842EA9
            49BF455865CCB9AE35ECCDA6B21B82EB921B451CFDE738F34421CA884E065EB1
            1A09C53603B02864B974C83C839CA9A1DFD0228EF6F9A038D054DDA4A2FFF497
            6A5DE4EAFED0C1FEC644E69C02D1F4796393B8E75409DDA44BE0B047BFA75F46
            F4B5C3AFB360376686CC1A88A66DEFABC2F3159F00DBD692D0FAB31C2302FE02
            FB1D4167B0B91B366705DA234D057814E998E54B90CDE14BB0E71D9889F3D25D
            EB7311E7DD34248BCB685C05C52E57A304F7A0EFC3E6A196BE261DEC3645821C
            AF395D259D23B33958D345C22EEFF5DE2B0205BA8A1A44BA00DD077BE32D7D8D
            5D85D8A0FC4C1EEBAB108340CF842E7110BB9FC03FC6CBA91B36391BC82A27A9
            AA1CF9C268E7834DCEE4157DA6A8E6E87A73CB2E14E5DBC3A64B8DEA24A04F9C
            0D741E68D4E01488A6CFCB07ECC609CE6914BAB0CF8024AF5AF325BA96C01304
            B76D6B2A3A12792DAC8168DA764C35206B15376D9BE5AE6F7537D785A9763C1F
            F6DF0CB4477631657649E076927317EC77CC0A27C8E6B03F6CFEC4F7A001CDF4
            7007CEB952C95E8C7B0D3912364FB0F4B5117FEFD424C8F19AD3758F89CCE670
            1DECAD63E973D2B2C2095C80CE873D63F5B704AE72A95721A6976736F4752056
            2106819E0A5DE220769926CC6BBA5ECF28517C30EA3BF466E60B676E29CA9972
            C5F983EE287299AD21D5ECAA6BBF3843992A42D3F9C119117C55C62674992FF1
            DA007B3927C2EE274B366303E85681CDDB4A3639BBC515869099C6CA40346D3F
            469CD7095D2E173B0FF40C98D2B7F56B80478EE973413FC32F45D8B41611A902
            E765D0CDA681E7EC9B4C0F099695F780CDAE72E24D0C769B027DA5BBCE3A9166
            985560A162EEF604450DCE86BDDD2C7D8E2D6A30AED4D7D81CBA5657AB48F1D8
            C42A4447C060C9F640AC420C023D17BA443B5953ECDAA2D63F877FD2710176B9
            B4C2A52BA6670ACD9357076F98F427FA36FAF858E1DC14EE739B9CCA0BFBF4A5
            C8D57D7B009B251298720E44D3E78DC9BF58C42674932F818FC6D78B9F0D363B
            44026CD21F6D72A0BDCA40346D9F5942BEE068AF4C9DD08D5D6EDD7842A93C76
            02DFEDA6023C72BAA2BA136473580136EFF63D08E765C4FBD281E70CCDF4C0BC
            BB4EB10816BA323DC026837C8E0CB447DE019B571BFA9A7CB0DB1491395E737E
            83FE76F84E27C8E6C0E79DF13B0EDBFC1C78E761D67415354830E0D917368D2B
            2B91BEBF5D2E11A3F165CAADAB9F83B20A3108B42274899E05E2E8DB26768353
            63E8D9063ADD73398FA3B7D092873914255C06620AA5DF96AB9CE17C5B60C30F
            D589B699913E17B9E395BDA2962FCE8168FADC4CCDB4A8EBFE15D8842E03924E
            8CB0DBB5040E9BF47B5A25D09EB15E7C646ED7CA40346D3F6686D42A74619701
            A1F4590BBD21332BCABCE5748091011E55FEDAB16E278433638B94BFEB098A88
            8CF34D8B38C0991EBA26336093413E7B04DA238B14271F0A761BF1F74E4D821C
            AF39EF477F3B6208126473985E61CDD0EF646585618BB3901C942C15D1D7A561
            F37E4B5F27AB70A14BE1B9D884195510B9FAC6017A689535C60671E6BD2B6FF2
            20AD420C02AD095DD2A4D82D9C834B0DF47BA4C0E4079223CFF1CAEE3AC10F1F
            6737394A65B0053FC8975AA24D69978EF84FAB2C4D9A4DE4326D147DCF6CCB8B
            AD895CDD3F0E087E96C89C73209A3E3767DDE649705E9BD0A55FEAC722ECBE0D
            766F28D9A4DFD36C81F6AE81BDF50DFD8C9925AE0C44D3F663FCE8A60B5D7D73
            679A3D6EB96CB79F8A731732FAD33518E0413FF4033DED95316647806D2EB7AE
            1068D35A44A48A0483D4BEC9F41019DCF632EC192B3A3631D86D023D68BC29D2
            0C5D51162AAF6624286AD0546965BA6A30ED1935005716783F710D0037710BFA
            69CDC694C0CD82FDE5A0896E629CCD8D9935ED10F9A57E0ECC2AC420D0AAD025
            0E6297918787FAA606AB39271FD2FC327104CD8734452FC50B7D6D1FA99A55D1
            C7326882FEC04C33C591739DC8E5976B7D8BC95645AEEE231F5807441BCA700E
            44D3E74EF57FB509DDA44BE07AC6E1D1087B67C2DE9EA53E72368EFEB9A182B1
            32104D9F83A2E2FD8EF6CA14856EACFF5C1993E0995B5F8F509A4C33457683FD
            8ED9B104D91C2E874DEF40C416333D30CADE79406BA02BD3036C32C82754E4DC
            0E7B2B5BFA9A7CB0DB040972BC920BD1D7AE2C3609DC8BD681DD2ED787843EEF
            A9F824FA691DD4A0BF748938D8C35E9318B3EFE87E0EC42AC4A0D0BAD025F8A7
            D2CD806E01B6593206AA1C9C52EC7AF48D2298A55EE903C9E009A603CB73CD0E
            BCC8D5FD6460D44AD186327C02D13803E3948ECD019BD08D0976EBB2097B1CC1
            C764C3E84AD51569B336104D9F2346F017852EDD742E8C78FF45B8CCBC8CC15F
            3936C0E324D83496518E743B21ECEB02E568E604D91C7E059BEFF33D6880333D
            742C2FEB95B798E23E5697A9A6FCBD5393C03795D8D2EAC5667358C0B2C41E5B
            5638259CA85A0EFDB406DD25588948C5E3BAAF2F98FE3828AB1083425F085DA2
            1FA0F461B5895DDE8C3FE21B1D1CD9A7AF60F32965F67FABEC8F83C8656A9E6D
            FB40E43270ECB1684319BE8168B1D5AF8A18A34C710EBA95CC1B608F5C0F9B6B
            95ECD1EFE9CC887E1E069B27956CC62C2BD606A2E973509C6E11788EA2D0E5D2
            E28F23DE7F91FD60B72BB76FC369A638B09ADDD35E11E36C31EC6EA83237A750
            8C4544EAC0791960784CC479FB22D303EC71A07D5BA03D62F5534F3DD86D8A04
            395EC978F4B7AB1C6F83450DF87CFC5A2FAE8F03B5B398FA9943578BD0F2EDA9
            A81C6026C83AB316EC5FDFF27BEC1B1A11BA74AAB78D546A8EAB13BB9533A80D
            BC0F5B4680CA19660791CB999F111C7F572FDE47CD7B7C8FCA5C4752E01B8836
            5EA50B823345C4265F021F8DAF17BF136C9E5BB21933DB521B88A6CF4111B661
            E0398A4237B6067D0E2395DF67FA0EE11CCC9CF2BD08DB4DA599225D559CB4ED
            56CA75B698E981AB36A10143F7E29CCB95EC71B5ECAF81F6C86761F32B96BEC6
            F87BDF00BB29D21FD692A0D25CD7C0BC603B269BC34DB06B2C3491A0A8412A78
            4FDDD5451BA0CF14C387D59B6C0CEBBDAFD0C78158851814920B5DFC8398F7ED
            7FB8C84109E41DC5EE877CA39303FAC1D1AFC9EFB14EE47246933324AB5B4CF7
            8DC8D5FD8D1D3916F10D444B598DCD247419901433AAFD1E6C76F8F625B849AE
            599EC5874D8AAF0503EDD506A2E973C4CC6A1585EE246C3E18F1FE0905E1BEB6
            EF70823453EB9B8AAD24703BE1779E51D75D3EDA09B2390495EB1CD04C0F9371
            CE8EEC33A35999F81F04DA235D9906B4DDC6FCBD5313198C478CD951126473F8
            13ECEE68E9736C59E11470897E2FD7E208DA65EE1FCA3E11D52495F7BE421F07
            62156250482A74F1CFE1979453E63137AC3CA7283FBC735B76E1B2E6EE4D8A5D
            8BF3FE50895CDD67467686A64729E31B88C61B4DAA12C726A14B7FEA183FA523
            60B3A33A176CD2DE4E81F6C83CC5022309AA8AD506A2E9F34C51E1D503BF8073
            7C59DB99ACC2D3F330D888056126D5F4B55FD34C5D01BB1B59FA1C9BCDA1AB88
            880B382FEF25CB079EB36F323DC026538D79BB6E14E8CAC5ACED261FEC364582
            548BB680B1D86C0E55A5956977354F7BA9A02F2E5D774EF18DDFD115CD1808F6
            DE1EF59533EAFC7C9FE6D2D7415985181492095D2D72B974B44D0AD7026D8FCB
            FF3D17BB3A0F2F03258AFEA6C32872F965E7F2C69B626D69BC4A89E2FC232A1B
            59A7C02474932F818FC6D58B7F1AF6E62FD98B99C9720A44D3E7E12C6468A59C
            E9393461870267BCC7B1F489BD44657ECD0CB8AA0D38C23998F4BFD6EFD84293
            69A63E03DB467FC404D91C6677B936A573B695E921A6B809E99A798CCC0A4296
            82CD070C7D8DF5F7AE8CE24F45824A73F7A39FC6A22109B2397C1AB6BF6EB11D
            53D420045E23CE7C73307C46888B64A9FF74E7E20095D7287455CD06679839F8
            62B0DE2F5CBFDF83B40A31282411BA7AC4C825B4AD718163F30016EDD6895D06
            D8ECECBA64E171DE725ED9A113B9BADFFC62EF186D28E3BF787F5EB978717EFA
            F8852EBB9679C1204AE9AFB656A03D72DE84425D736D9351C6A1C14CCF1AD252
            51D085CE883CE73A838EF3E4B96F43B81AE7B945DBA118A90BE4E08C351F4053
            D0EE0E282FCB80BF3903FBDAF53928D8E5CA45E82085D007DD983354AF1E84FA
            40BE0EBBBFF03DA890D33894A98181685C19D8DCF7B80257955DDBB48FEEE281
            F6C8CF60F3BF86BE321DDE2611762FEDC57D1BFDA4588C59C5E040DF3869D0D4
            35D0691163326FB8C27B0907CC0CB2BBABA9955CBC1FC6E3B0CDA3C273BBBFA0
            66DCFBD8D73702FAC17B5F4CB1873B71DECB9AB846834AB4D0C53F85A3488E5A
            7EDD44826207B1CB2FF78EA9C4AE9E25E1F24F3EF5CFE8ED4F55885C96CDA56F
            DD40895C41100441108461274AE8EA994C26FDE64CC6F2107331D3ED55E76110
            C95F947D69814BA33BA538BFCEE99B47C5575666C3BEF46F9BACEC3E725CC6DF
            5244AE200882200842EF0916BA7AD98CCB5EF4F16280C9F14D7614E75B439FCF
            2676E9D7B74D8CD8D54B318C76E4EC6CACC865CA9E1193DF98200882200882D0
            3C314297118B1F466342FEA5639DC21DCFE92276B7AFAA8C52639FF928999752
            44AE200882200846A00318AB40D74D06993DEE12142CB44390D02D952AFC0EFE
            C1FFD7AB0E3B885D06C3B1ACAE5762781D0C70A7CA821A44E40A82200882301D
            3CFF99DF9F2BBE0CB065C5B83BDBEE93508FB7D0D5FEB257A0CDAC5F5A1DFFEC
            9B7BD9695D9482016A4B5876F116BBB0C91432AFD7885C46AF32BB842D1FA988
            5C411004411812741A4E66ADA058E20AF6B5BDAACE2AA4C14BE8EA594F26A77F
            AB7EE936FCC35769A3E35A744E5676B1CB00B0CD5D44A74EF14481FA8D8A7DEA
            CE27225710044110061C3CEF17C386555A19B7C3149317E1D9FE6ADBFD12C2F0
            15BACC27FBD1C24B5FC73FFFD36D753E85F8D47E360C62FB53C53E2272054110
            046148D1F50098CF99E296CFF4F37C8BB808FD89B3D0C587606B95B90B14D905
            1F849812ABD13888D07BD0DE654BF1C54C0B55CB1029678E0541100441681F9D
            658959A3DEA5B222385CAD3EB71781F5426F7112BA7AD693F5C2CB6E0A4BE243
            F160DB6F425734B940D903C4828A36C02E5D3418F896CC17581004411084DE83
            67FA7C2A13B6232AF3B9BD4889B81D7A5C85EE91D8946B5D5B6BCAB781433604
            8ADDADD0E7DB1CED3592DD411004411084DE80673927E858EA9EB3B70C26FB83
            CACA798B5BC218A156E8E24332BFCAEA36CF55FAD33DF8A02CAFFA0807B1FB84
            CAC4E98D357644E40A822008C28081E7F7ACD86CA63271BB3E1A9FF7BF43BB50
            72DD8E4D5C84EE446CBE68F8D3F5F8D0ACD5F61B30F4374AEC8AC81504411084
            C101CFEDE5B0D95E656E097439643CD1596897482A30A152E8E2C333273653D1
            E633FCF9667C80566FFB0D58FACDD420FCA0DBFAC732C10C50BBAA749C885C41
            100441E863F0AC1E87CD3BD1B6D38D79FD296C39737B159ED161255F85A1A44E
            E81E8ECDB72D7F7E101FA625DB7E03157D5F4865A2D526769F53595AB1ABF4FE
            5CE2608A3111B982200882D047E019BDB2CAD27F6DAB32917B071AB33E9D8DE7
            F2BFDBEE9FD0BFD409DD7F62B38EE5CF5C0E981D1FB0D7DA7E1315FD7711BBBB
            A2BDA4B219E0B92DFB89C815044110841E81E7F702D86CA9327704A6375D5865
            CFF373D1CEC1F3F8FEB6FB280C0656A1ABCBECD695F67D1B3E6C37B4FD26AA70
            10BB8CBCA483BA4DE45EAD32378767DA7E2F82200882308CE0593D0B361BAA6C
            D6966D5D95C5D470A59533B717481A3021842AA1CB00B48935C71F8A0FDEF7DB
            7E1375E8CC117F515904A60F14B9746F78B6EDF72008822008C3029ECB3361C3
            B81896DADD4A65B96DE750D9041B852D676EAFC4F3F7BF6DF755186CAA84EE85
            2AFB0056F1477C087769FB4DB880F7338FCADC135CC5AE88DC3E45976AE4FF71
            45B445D0189840171AE648645110FA6B5DE51B6D0BBB2386979F859DEB22FACA
            20894D0C7FE20DFC95409B0B6B9B7C48B09809572358E5E779B48754E6BB7629
            ECDF137E95A79D675E6C52645679A0AA588BF6BD5B34C17972DEC0F92EAD381F
            AB1D16E30BFE1DB26263F8DF3E13E32B087B4BA92CD727AFC7E22A7BE873B589
            FFD7292A4B9374896FFE4F1D54FCF6C24B8FB8E613D7C733B87719957DCFC85D
            52095208411777A23B02852DF505575CDF5059A6240A5B6A8A7BDBEEA7305C18
            85AEAE844681375BCDF114178BE383F964DB6FC4050FB12B22B7CFC0FF8E0FDA
            83D0F6569908A883FED43F47FB06FE8F0F3B9EC334EAA3FFF662B0F15C60BF77
            53593470996561738A871D8AAABDD00E54D9F2DE4C0E8751CCFC18EDB4402137
            82CD3F42DE7789EFE0FCFF57719E49D87C30C17972383899B7E27C0CB03DBCF0
            124B784F0EB83E3CC7D385972E829D91001BFBA37D086D3587435E443B1BEDAB
            38D72D8EE7E060A538583B1DC7EE5B730C3F5FFCBC1DA1BAE3343E8EE3BFAD04
            A1063D28CF676C2970C7EB3F3DA5B25556CEDCFE559EB54293D8842E6F6CFF74
            B471043EA4DF6CFB8DB8E2207645E4F611F87FB1FADEB16887AAAC1EB92FF4E9
            E283F9348773D922330FC1F12707F69FFEE19B1BFEE42C74B5E0FC81CAF24386
            4031F679B4937DD2EE88D0ADBD3EC142570BC98FA92C47F97C2EC794E0FFF144
            B4A3EB92E0FB0A5DED2BC9344D3B587611A12B18D13131CC8830A25B3E78E3E7
            F51A9589DBF3F8B3E4B7157A854DE84EC0E6D78E36B854BA6C3F675F30BC3F2E
            E571245916202272FB08BDC4CC728DAB96FEF40FFD3A07635C42E56C252BF78D
            57D9D22F45D3CAA56328F20EA9399F4D04061547D14BF2B75AFEEC247461E328
            9509FD37155EA6B0E1ACDEDFD0FE85F6A8CA822AE7D7EF9B33287BAAEE996F7E
            E6F7769D9D36085D2ECB5FE47028DD02DE53F8DD57E8FE526533F2A1B03CF951
            15E76B55E8EAC1DB992A4B705F84D95D7E8376251ADD4EF8B9669527BA0EAC87
            B687EA7627E3406A279CF7A58AF3F90ADDF2F5E16091DFB7DCFDE43C1C7FA5EF
            F512868F0A614B1E43FBABCAC4EDF983B2F22B0C1F36A1CB87D2B73CEC0CD4AC
            AE7E8F7CD8D0272817BB2272FB08FC7F28D22E533396BAC8B5681FA9F399C5B1
            14855CE2E7677896C29F0EC7B1DFAD38AEF865E0C37DCEC2EF1BFA3EDC61EF3B
            2A9BB5230CA8288AD55AA18BE3BF8CCDE70A2FD106833F8FC3B18FD61CCBF7CD
            25F1AFA2CD53F81385EB0E2E7E9E06A15B2958438F3308DDB59BCC8BD9A6D0D5
            FF17CE681507D99C2CF828DA9FEA66DC713C7388F27A2D5278F9E7386EEF8A63
            9C852EF6A5A0666EF1DC3586FE9223D87F6AD8D5168609ED8AC0F2BA23AA5BD8
            7286F6723543DC5E27851B847EC02674272A73D95F1B0C9658C9D517B25F2888
            5DB26BA81FA690162D543953F5CEC2CB9C01FB80CFCA01ECBC5B654BB0391477
            ABDB82B44A42979F0B0A843C68A9D6AFB1648B814414300C14FB9FB6B7536197
            4AA16BE83B3F9BBBE1980B3DAF2503F6F8D02996C43E15760E7238764489D0AD
            B2132274E96EF089C24BDE39BA7530260781C501CCCEB0718E657F1FA1CBEB50
            FCDE790FF084E1019F87F12A0BB8DC4CB7954ABB3CA8B2811BEF31174A1A4EA1
            1F4925740973DDED346823382D7655D5D29FD05BF03FD9079BD30B2FF121CD07
            EEAB01B64E55D96C59CE29B073B065DFE267974BB5740B3846FF4E91BCB8EB8D
            1CB63E8CCD0FF5AF7F46BB53758A2BABD0D5AE355C26CE67EDD8AFAD7D456EC1
            1E452EDD3C8AC2A856C088D0ADB5E32574756E720ADB7CB694C7AE1992C100B6
            F65359A061CEB5B0B39E655F27A18BFD76C4A628967F85FDDE177089850145BB
            5B71A0B3A96E4B9776E144030759BCA73188ECC6B6FB2C0875D884EEA7B1393E
            C05EE5D2B020B880CF1FFD5A8B3EB69CF10A0A8AD22E1014748C50A7D863DAAD
            BF58F62D0B5D0AE2FB5456479D7C0CC77ECFF1BC146A6FD3BFD21793D57D5C85
            6EB9F4F624ECFBA1C86B4AFFE4930A2FFD0D36B7AE39664489D0ADB2E32B74CF
            C0E60385978EC2FE21F7D97CD5830331CEF4D3A5874296C2F40DC3BEB5425767
            F5E035CF97A2E907BE92A47A1A5EB41B0D8B3270C67623BD5DD0B02BC52C07D9
            8C09988CCFC48B6DF75D107CB009DDF26C812BBCC96E1B3AF32408868C1FB7E3
            F3B472A83DCF7377085D9C7757BCF65B3523B0EA26BCB686831D3E342ED3BFD2
            4D82EE03F4617715BAE5D2DB6B61DFEB23DF1B1F6A2C99B9B07E89EF7549D87D
            A8E298112542B7CA8EB3D0C5BE4CD548F78439F44BBC572E82FD9F6AEA7D16CE
            ED2274E94E7162E12527F7166170D02575796FDA5837AE00CC6AD89583FB5CD8
            D21DE1B1B6FB2E0831D8842E237B43C52A97763793250D21047CF63EAE325198
            73223E4B9FECD1B94D4297B91FFF56789D9FED4B6AEC307FEFFBF5AF9FC4FE27
            1AC49551E8EA87D1138597A662BF6512BD3FA628FB48E1A5FD61FB2715FB8F28
            11BA55767C842E67CB2E71D9B781F75B2974F5E0924144B9E8E13D7C25113883
            8B4E5FC774841BA919B3B5B609030EB6F87DBD4065C2F62EA79308C2806013BA
            4C5314930A840FEA0DE50B23F882CF1E855771997E2F7C8E5C53DDC59EDB2474
            F9C060E1853C876D5D843B674C3973CA1954FAF572D6F4290FA1CB68FCBF175E
            FA3DF67B77A2F7B72F363F2DBC74126C1F56B1FF886A47E872763174C9FC259C
            EBFC9AFE95FF178C127F24E05CFC1FEF55F8BD4AE87276B4988BF99BD8F788C0
            F7E88549E8AA2C2307AB54D12F973996E7D77F63668FDDD1B7B37BD137210DF8
            1F33E87583427B879AF13F2DC3FB122B074E13B62AAB0C28657685A1A5AA0430
            EB4DAFEA67AE034663BE0B5FA09BDB7E93C2E080CF1D73BD16B3136C8CCFD0E5
            3D3A7797D0D5AF1767991910B7B86DC959E7BDFD8AFEF5A7D86F3FFDBAABD0A5
            88FE59E1A54A31EAF9FE4654A7003D1BB677F3D8BF57423786FB70AEF135FD2B
            FF2F52512574BFA0660436924F605F9F148EC11884AE0DAEC21D52B76221B48B
            F6CFE6EC2C2B2452D072C696CF6A5BB5448A58A6CFCCDD11AE0809EC158441A5
            4AE896D3E084C040895D42960585B1093E77BC191793E237BA8C5D3AB74DE872
            668491F179496C636528FD00A24F6EEE6AB02EF6FB97FE9BABD06505B862C0DB
            97B09F6F0614DBFB5B5B65014C395CA6DCAA62FF112542D7872AA17B1C364717
            5E3A10FBFEA0813E98CEED2274E93FCC9CCDA78B08EA2FF0FF5B5465953C296A
            D7D33FCF537108852DFFDF935556E0E562C90F2F8C65AA842EBF5429F227327A
            F7609712AC8280CF1D974C772DBC14E43F19786EA3D0D57F9BA4668831BA32AC
            5A4EA5877D765659B6067225FEBE61E16FAE42974BCAC5EFCAB7B05FEC8033B7
            CD2C0BC565FD4AB78816852E0560882B0179A6AE3CADE17FC119FB90C114D3C0
            15D37155095D8ADCE30A2F4DF3DD0E7C8F5E18842EFF37CC0041D144D78B62B9
            64A6C1DBB357834BA1139D5A9099107251CBED523587B15003336F4C56991FF8
            A5226C05610656A14B4A299262A16F2005EF2B6DBF69A17F29551323FBE03373
            468FCE5D2574398B7255E1EF5D021CFB306DD9B6FA5796DAFD79E16FAE427707
            35A388094996CB14B669E71785972ACB224B305AAD1D9F60B4B24BCA77B16F13
            B3CAA6735B83D1F037A69362C9E562AA39A68FDA2934A59FE006AE3D83FFD654
            99B07DBBCA7C6B57519D15144D70F288AE089CADCD85ED0B6DBF1F41E857EA84
            6EF9E61C0B93A5EF2DB305820DC38C66AB59174A7FE7B2FFDAFAD70E01AA8B32
            70368C7E725C065EAAB804EC217417535945B59C9BB1DFEA89DE1FFD8C3F5E78
            E9A3B0FDC38AFD479408DD2A3B3E429782A698228ECBC9EF543DC021EB0283EA
            B812B16D611FCE086E80FD6EEB451F871D5CE3B760C3D484EB161A3F13B3381C
            CEFB0857572FD6ED7229702408EED4095D2611678042CA3CA6ACAC3211ED1BA6
            E4E6C2D8069F3996DCBDBFF0D2ADF89CC40445E669B5385B72B56E7F84CD470D
            FBD509DD03B0F991FE959FE325B0CF13FA6F27609347D17F05AF7FB674AC93D0
            D5FB96F3E8AE8C7D6F8FBC069C25621694655DFAA08F19512274ABECF8085D0E
            80E8E7BDB87E89B372CCA3FBB40A04360F54D967EE1A957DAECF330953C73CBA
            7C2F5CB1786BE1657E5EDE2ECBE07EE8E726EF599CA5CD452DFF07B33A9A6056
            0406E072B696B3B657CA4AA8208453297409BEB4DBA9ACDC5F6A6E50D98C92D4
            51173AC0678E37F84D0A2FBD139F938B036D31ED0E13A0E77E88FCC0AF007BF7
            18F6AD13BA4CF6CFD9D6B9F54B798E5C3EC098658439701908420139B574AC8F
            D02D57319B9EBD21E29ABE179B5F155EE272E7A635C78CA84EC17A0C8E99E870
            AEF271635EE8EAFD9965A1781D8EC0FEDF5481C01EEF9DEF28BCC4B4606719F6
            732D01CC090D0AE6B90A2FFF16FBEE11DAC761471702E14C2D07A66BEB2D5760
            C67998E16099C2F632DDAEC1357FADEDF72608C342ADD025F832D3AFAF899AE7
            3C3997A93F6F9A6113C626F8BC31E555F181CD192BA6197B3DC0164BAC7EBAF0
            1267BDB6B3EC5B2974F53ECC8870A8FE755AD5B692EFAB31C0CB53E87239936E
            10C53AF3F4993C5705A0A3B62974162DBC5C2BEE701CCB169F5778E98B38E64B
            0EE71B5122744DFB7336FD0E35A3A43453D4AD1A72EF832D56EBFB6DE12506EF
            2D631248AE4257EFBB3B3667965E3E08FB9FEADBC76103D786990E18B3C219DA
            B575A34FED9B3D4D71D69D796C296E2F8F5DAD1104A11A57A1CBF44A7CF0D445
            7F864247FAAFAA2CC2FCE5B62F8AD02E7A999742A9E8C33809ED007C3EFEE361
            8762800FED3CBF248F6539DD9B2CFBBB085D2E491673437356F4D8425FB7C671
            7F331CE72C74F5FEDBA8AC90410EBF17BBE198F39407DA15844172453FDF9FC1
            4E6D3A2F4329F0FD70DC4F1D8E1B5122746DC77C039BA2CF39DD055836FD198F
            F3AEA632A154CC96F041D8F899657F67A1ABF7A7A8FD68E125FA886E3096622B
            700DC6AB4CD416DBF201A6E872C0813A676AF93FA31B424C312641103C7112BA
            045F7CFA38D25FC8C5793E14CE4A7006EE1459BA19DBE8070D9751172ABC3C59
            65993B6EAD3996AE0447AA2C417F3182B93227AD8BD0D5FBF17BB099FE956E16
            B90B0067665629A71DD3C778095D7D0C67A28F2FBC44B7082E7F1F5B278CF460
            E1FD7AFF050B7FE235DDD2254ADB20409D5C4844E8561E33BBCA04CFDA859739
            7B7FB06980543A96FF53AE1EB0C2DADC853FFD496533FEFFB31CE72B74B9EC4E
            B78862C61DFAEBAE83E39EF7BFE2FD8B7EAFABAB6E513B4FA0493EC38A6E08FF
            0A59891204211DCE4297349085C1068391BE8EF66399E11DBBE85CCE5CAE2F0A
            357E6039AB49D706CE94D01796334E7C3071B695C526289A962C99E32CD5C136
            31A0CFE72A74CBFEAE3987E398EF5A8EF116BAFA386649E02C60717994C1419C
            A966710D06AE3DA9AF01AF13838938BBBC87EA0C2C22149FEFB60517E15CEB69
            1BCC1AC13467ACE6950F1438F05C08C73EE7D0E711D55E1EDD9C2B6DB3DF6D0A
            5D7DDC122AFB0C97B36930172ACB5D5308535832CD17F3AAAE80B6311AEFBFE5
            748F1453AC40F962C5F9BC84AE3E6665DD9F398A2FE3B8F7FA5EA77E410F9ED7
            D08DD79ED785DF115FD7831CDE2FB83A345DD89A7CFF054168172FA14B70B3E0
            B2DB377AD43F3EC0291C4ECEA3DB85B1854EDBC5E5F24D034D50001C6D13A0A5
            73B90A5DAE6A3082BE38DBCCF32C6E1382A142571FCB129F9CC50BCD69CD5938
            162B38A1CAF503E7A1BFFCFE963F7F13C71EA11C68B9325AED39DB16BAFA580E
            CCE8EFBD77E0FBE3FFF114B423EB22F24384AE3EEE032A2B2C51E4C3FD5EFC47
            BBDA317517C56C51D8CE1563173CACB21591ABF4F6EA619BE1168461C45BE812
            DC483EA3329FDA5EC1595DCEA07D6F2CF98909197AC996FEB687A94CF0CEE470
            186725192076BC6BB08FABD0D5FB7E059BA30A2FFD00FB1F58B17FB0D0D5C773
            D689416E87EA6B5097549E70567092EE5BED4011E7A04B8829952067193FE8EA
            4E2442D7CB0607311C407006DD25FD14EF85BF473B0EE7BAD961FF60A1AB8F9D
            A43AFF3714D5EBE3F81B7DAF576A7415310683D16779753543D82E1E6357C381
            2B574B7251CB158207DA7ECF8220F8132474096E327C8830358E8BE848099788
            B8B4799624CD1E7BE073C7145E5C9AE7036EBCCA7C152910F800E6923C239AB9
            E47AA5AF6F1C6C1785EDC338FEAA8A7D399BBB71E1A5ABB0FFC315FBF3015C0C
            66393FF4F3ABAFC1E62A7BB03333036707298439BBF4B0BE0697C0FE9D9E760F
            529950585865DF6B2EC352F05FEA6987EE0FC5F47077570923ECBF8EEACC3091
            02EB390DFF8B4B43568C7411801D0A2F3DE17BAD0AB6E8BBCB010CFFA77455E0
            E79A6E03FC0CF3737DAFCAC4EAC5BE55B0F4ECF1E68597A6C2C6BF1C8F651FB6
            2EBDEC7C7C0A4A82966D55BD5D26D129E8FB4E17843CCF36FD936FF1097C1504
            A17F0916BA44A7A2E1D2964FCEC054708998A52B7F821BD2352D9C5F10044148
            847639A0A05D496F530BDA1CCECC52CCF2B9C1C1ECB5553ECE82200C36514297
            E8802106C634957ACC05E6A6E432F52F71C3BAABC57E08822008167485BEF12A
            739129360ADB05C32D5BE14C3D5D1038033DCDBFB66AE5451084E1235AE812BD
            54491FDAADDA7E432A1BA1D387ED4CDCD0EE6EBB33822008630DEDF2C08C06C5
            19DA9574732D85EB4B2E6AF3766DB942A12008638F244297E8913AFD7619A4D3
            D48DCC178EE2297ACF91203641108474681FE5F12A13B42BE8C69F39439BDAE7
            BA0C034C7341CB7BBB885A41108C2413BA39BA6ACF24B4B7B7FDE64AD02FEB1C
            952557FF8704B209822054A3B37DD04796027645D5296859D2383407AD0F4551
            CB40D37FE2FEFD60DBD7461084C120B9D025FAE6C8086EE6EE9C3BD25C1330B9
            3EA3A399B4FD7CB41BAB0A090882200C2BFA7ECD180B66A2E06C6C2E66296C97
            437B4B8FBAC2EC078CB1F8B76ED7738B7BF3436D5F234110069746846E0E6EA0
            8BA9AC842993A2F73A0D990FF4EDFABBCA727F72B6F7F6B63B240882900ADC8B
            E75399685D566F97D75B36BA19CCDCE32E31CBC10D4A8B59DD6E92EC078220A4
            A651A19B839B2CEBBA9FA0B2F2AC8300CB8F5EA166947664BDF257DBEE942008
            8209ED2F4BC19A8B570AD9650BBFCFDB62F7E836960BDA7CCB3CC7FF6DF39A09
            823036E889D0CDC1CD785B6C26A2BDA3ED37EE092B42D13F8CA2779A00C64DFA
            91B63B2508C2D800F74E06F8D2577669BD2DB6F12A733D70A996D724ACDA76B3
            6E14B49CB1A5EBC1932DF74B1084314C4F856E8E16BC9F559DD593068D292A0B
            8CE0EC04B33B5C27E2571084107439619388E56BE3D11669BB8F05DE5059EEF2
            9B74BB516FEF91595A4110FA8D56846E0E6EEEEB617324DA6EAA37D1BB4D43A1
            4BD14BF17B9DFEF95E09741384B18BCE29BB946E8BA32DA97FE6766935A38C73
            3F729FCA6666296439534B517B1BEE69AFB5DD31411004175A15BA397810D097
            EC40B4FD5433D571DA84A58AF990B84D650F8A5B75BB4F04B0200C363AC86B49
            435B42CD10B3FD9879A6CCFD2ABB47DDA266CCD43238EC85B63B26088210435F
            08DD1CED87B607DA47D0366DBB3F0DC3E8E27CF92F7FC05000DF2BB32582D02E
            BADAE3C22A13AADC52B8D27D8033B2CC26B3A8CA6662C7B5DD570FFE83768FCA
            EE35C57B0E67689F6FBB738220084DD05742B7081E34CCE1F841B47D54363332
            56A08F1BA394F940BABBD4E803F774DB1D148441440FA429602956CBE295C275
            31FD335F9BA5EDFE46C00C31B7A9929845BB5D06D182208C35FA56E8E6E8D2C2
            9CDDDD4B65BEBC0BB5DDA796A1D0CD45F0149589E2BC71F9F151718910C602BA
            D001852BEF098BEA9F296017D13F2FA27F5F50FF7DAEB6FB9C9887D1EE54D9CA
            10737FE7C2768A048509822064F4BDD02DA273456E89F61EB49D55F610133A79
            5D6582B7287EF3DF1FD18D62F895B63B2A0839FABB3DBF6E0BE8ED4286D77231
            BB901A3E7F7E13F4F1CF856C2E6AA7357137100441A867A0846E113DD3BB11DA
            AE683BA9ACF6BAE00E1FA014BD8FA96C66E8F1C2EFD3C4B07EED493C509F69BB
            B342FFA3C52AB307CC5BD8967F2E8AD6FC670AD6619B6DF581EE0414AF2C7F7B
            BBFE99A296AE068FB5DD39411084416660856E193C6459FD6707B4EDD146D460
            0589F43B5C067D4A656E134F95DA13A5BF71FBBC6E14D3CF8A2B457FA3D35FCD
            89C62D3304CC55F89DDB79F5CF7CDD2460F3EDEC6DBF973E86DF85BB2DED7E71
            351004416886A111BA45F0E0A6C8E56C2FDD1CB6427BBB6ABF6AD0588619269E
            2FB5674ABFBFACF7A3EBC5B32A4B4ACFD75FD57F7B41BFF68CDEF2F75786D105
            43074DCDA67FA5C07C8BFE9982927EA914A30C969A5DB759F4DF66569918CD8F
            CF8F2DFE6D6EFD7A2E62FB357FEB20F2A0D241A36A8688E52CED3D521D4C1004
            A11D8652E8968170E0C37C53DDDE89B6AECA1EFCC2F04081FC92FE3917C28433
            65CF15F6B3B96130F5528CCFE3BC96D739C02AE7512D8BD799542660E7ECF955
            137CE0006C4AA1DDAB6688DA7B8671D025088230E88C09A15B06C297B3601BE8
            B691DE2ED076BF04416815CEBA4E559D62366F2CF0F26CDB1D14044110FC1893
            42D704C4EF0AD8BC4365B3BD7475585BC90C9B200C0B9CD97F4865D947286699
            89644AB1491530411084E14384AE059DD561159509DE35745B5D8DADE2158230
            0850C432534831955EDEA6EAEDC310B26FB4DD51411004A1B788D0F5040298BE
            98B9E8CDB76B2A09EA118426602022852AD36C31D82B9F9515112B088220D422
            42371110C09CE97D6BA1D11582658C99F6EC2D11A605611861860D0AD78775E3
            CF8FEA2D676729681F82807D2EF80C822008C29847846EC3E832A54BAB4CF8AE
            ACB76CCBE9D725F7A8302C30588B33AF79F191C7F5EF8F165E637B1002F6C5B6
            3B2B0882200C3F22745B064298D5A1962E34CE0C2F53F87D312539808576A070
            CD0B823023412E569F5033842C1B67649F80787DB5ED0E0B822008421111BA7D
            8E2EABBAB8CA04EFA2BA2D52D8F2F585F576B6C0D308C30DFD5CF3CA75D3CA3A
            AB1995ED9ED4AD2868A76D215CFFD376C705411004210611BA43044431D3A151
            142FA432113C1FDAFC8556FC7D01BD95146AFD0D6749B9CCCFD9D567F436FFF9
            99D2EBCF98F683607DBDED3721088220086D2042778CA3678C7311CCCC1114BE
            73157ECE4BC5CEADDB9C8596BFF62635A3C2D758CB3E41119A972BE60C28C525
            BF54149B7955B6BCEADAF37AFF175D7F97595541100441084784AED008BAEC32
            856F2E84CB5B0AE56219E69955F7EC72B154AE529DE574F9C10DA954552E094C
            5199CF7896CB00B380409EB68A33AB2FEBC69F5F82087DADCD6B2C0882200842
            35227405411004411084A14484AE200882200882309488D01504411004411086
            1211BA822008822008C250224257100441100441184A44E80A82200882200843
            89085D411004411004612811A12B0882200882200C25227405411004411084A1
            4484AE2008822008823094FC3F91B3C586D10A87570000000049454E44AE4260
            82}
          HightQuality = True
          Transparent = True
          TransparentColor = clWhite
        end
        object Memo43: TfrxMemoView
          Left = 861.732840000000000000
          Top = 75.590600000000000000
          Width = 147.401670000000000000
          Height = 56.692950000000000000
          DataSet = Data_Detail_Docs
          DataSetName = 'Data_Detail_Docs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '00226247.'
            '[Data_Detail_Docs."TP_NUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 721.890230000000000000
          Top = 75.590600000000000000
          Width = 139.842610000000000000
          Height = 56.692950000000000000
          DataSet = Form_Typed_Chem_Tech_Proc_Rep.DATA_EXECUTE_VARIABLES
          DataSetName = 'DATA_EXECUTE_VARIABLES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '00226247.'
            '[Data_Detail_Docs."TP_MAIN_DOC_NUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DATA_EXECUTE_VARIABLESV_IZD_NAME1: TfrxMemoView
          Left = 283.464750000000000000
          Top = 132.283550000000000000
          Width = 612.283860000000000000
          Height = 37.795300000000000000
          DataField = 'TP_NAME'
          DataSet = Data_Detail_Docs
          DataSetName = 'Data_Detail_Docs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Detail_Docs."TP_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 971.339210000000000000
          Top = 132.283550000000000000
          Width = 37.795275590000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 933.543910000000000000
          Top = 132.283550000000000000
          Width = 37.795275590000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 895.748610000000000000
          Top = 132.283550000000000000
          Width = 37.795275590000000000
          Height = 37.795275590000000000
          AllowHTMLTags = True
          DataSet = Data_Detail_Docs
          DataSetName = 'Data_Detail_Docs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Top = 207.874150000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 37.795300000000000000
          Top = 207.874150000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1093)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 75.590599999999990000
          Top = 207.874150000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1095)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 113.385900000000000000
          Top = 207.874150000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1052)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 151.181200000000000000
          Top = 207.874150000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1077#1088'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 207.874150000000000000
          Top = 207.874150000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076', '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 491.338900000000000000
          Top = 207.874150000000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Top = 226.771800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1041)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 37.795300000000000000
          Top = 226.771800000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076', '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 491.338900000000000000
          Top = 226.771800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 529.134200000000000000
          Top = 226.771800000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1092'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 585.827150000000000000
          Top = 226.771800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 623.622450000000000000
          Top = 226.771800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1058)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 661.417750000000000000
          Top = 226.771800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 699.213050000000000000
          Top = 226.771800000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 755.906000000000000000
          Top = 226.771800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1053)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 793.701300000000000000
          Top = 226.771800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 831.496600000000000000
          Top = 226.771800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050' '#1096#1090'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 869.291900000000000000
          Top = 226.771800000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058' '#1087'.'#1079'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 937.323440000000000000
          Top = 226.771800000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058' '#1096#1090'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Top = 245.669450000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 37.795300000000000000
          Top = 245.669450000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1088#1077#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 491.338900000000000000
          Top = 245.669450000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1088#1077#1084#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 755.906000000000000000
          Top = 245.669450000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1074#1077#1088#1076#1086#1089#1090#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Top = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 37.795300000000000000
          Top = 170.078850000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1055#1055)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 151.181200000000000000
          Top = 170.078850000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 491.338900000000000000
          Top = 170.078850000000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Top = 188.976500000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 37.795300000000000000
          Top = 188.976500000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 151.181200000000000000
          Top = 188.976500000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1042)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 491.338900000000000000
          Top = 188.976500000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1079#1072#1075#1086#1090#1086#1074#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 207.874150000000000000
          Top = 188.976500000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1044)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 264.567100000000000000
          Top = 188.976500000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1053)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 321.260050000000000000
          Top = 188.976500000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053'. '#1088#1072#1089#1093'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 434.645950000000000000
          Top = 188.976500000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1048#1052)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 642.520100000000000000
          Top = 188.976500000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1092#1080#1083#1100' '#1080' '#1088#1072#1079#1084#1077#1088#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 831.496600000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1044)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 925.984850000000000000
          Top = 188.976500000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1047)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 207.874150000000000000
        Top = 306.141930000000000000
        Width = 1084.725110000000000000
        PrintOnFirstPage = False
        object Memo76: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1091#1073#1083'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1079#1072#1084'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1076#1087'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 56.692950000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 56.692950000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 56.692950000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 113.385900000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 170.078850000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 170.078850000000000000
          Top = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 207.874150000000000000
          Width = 472.441250000000000000
          Height = 56.692950000000000000
          DataSet = Form_Typed_Chem_Tech_Proc_Rep.DATA_EXECUTE_VARIABLES
          DataSetName = 'DATA_EXECUTE_VARIABLES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 680.315400000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          GapX = 15.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 680.315400000000000000
          Top = 18.897650000000000000
          Width = 94.488249999999990000
          Height = 18.897650000000000000
          DataField = 'DOC_NUM'
          DataSet = Data_Detail_Docs
          DataSetName = 'Data_Detail_Docs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Detail_Docs."DOC_NUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 812.598949999999900000
          Top = 18.897650000000000000
          Width = 75.590599999999990000
          Height = 18.897650000000000000
          DataField = 'DATA_REG'
          DataSet = Data_Detail_Docs
          DataSetName = 'Data_Detail_Docs'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Detail_Docs."DATA_REG"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 774.803649999999900000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 888.189550000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 888.189550000000000000
          Top = 37.795300000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 680.315400000000000000
          Top = 37.795300000000000000
          Width = 94.488249999999990000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 774.803649999999900000
          Top = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 812.598949999999900000
          Top = 37.795300000000000000
          Width = 75.590599999999990000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 774.803650000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 812.598950000000000000
          Top = 56.692949999999990000
          Width = 75.590548740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TotalPages]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 888.189550000000000000
          Top = 56.692949999999990000
          Width = 120.944908740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Top = 56.692949999999990000
          Width = 774.803598740000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Top = 75.590600000000000000
          Width = 75.590599999999990000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Top = 94.488250000000000000
          Width = 75.590599999999990000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 75.590599999999990000
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = Form_Typed_Chem_Tech_Proc_Rep.DATA_EXECUTE_VARIABLES
          DataSetName = 'DATA_EXECUTE_VARIABLES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 188.976500000000000000
          Top = 75.590600000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 188.976500000000000000
          Top = 94.488250000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 226.771800000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 226.771800000000000000
          Top = 94.488250000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 75.590599999999990000
          Top = 94.488250000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 283.464750000000000000
          Top = 75.590600000000000000
          Width = 438.425480000000000000
          Height = 37.795275590000000000
          DataField = 'TP_NAME'
          DataSet = Data_Detail_Docs
          DataSetName = 'Data_Detail_Docs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Detail_Docs."TP_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Left = 207.874150000000000000
          Width = 472.441250000000000000
          Height = 56.692950000000010000
          DataField = 'FLAG_UTV'
          DataSet = DATA_EXECUTE_VARIABLES
          DataSetName = 'DATA_EXECUTE_VARIABLES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12961023
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_EXECUTE_VARIABLES."FLAG_UTV"]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 861.732840000000000000
          Top = 75.590600000000000000
          Width = 147.401670000000000000
          Height = 37.795275590000000000
          DataSet = Data_Detail_Docs
          DataSetName = 'Data_Detail_Docs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '00226247.'
            '[Data_Detail_Docs."TP_NUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 721.890230000000000000
          Top = 75.590600000000000000
          Width = 139.842610000000000000
          Height = 37.795275590000000000
          DataSet = Form_Typed_Chem_Tech_Proc_Rep.DATA_EXECUTE_VARIABLES
          DataSetName = 'DATA_EXECUTE_VARIABLES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '00226247.'
            '[Data_Detail_Docs."TP_MAIN_DOC_NUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 207.874150000000000000
          Width = 472.441250000000000000
          Height = 56.692950000000010000
          DataField = 'IZD_NAME'
          DataSet = Data_Detail_Docs
          DataSetName = 'Data_Detail_Docs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          GapY = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Detail_Docs."IZD_NAME"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo125: TfrxMemoView
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 37.795300000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1093)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 75.590599999999990000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1095)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 113.385900000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1052)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 151.181200000000000000
          Top = 151.181200000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1077#1088'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 207.874150000000000000
          Top = 151.181200000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076', '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 491.338900000000000000
          Top = 151.181200000000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Top = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1041)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 37.795300000000000000
          Top = 170.078850000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076', '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 491.338900000000000000
          Top = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 529.134200000000000000
          Top = 170.078850000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1092'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 585.827150000000000000
          Top = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 623.622450000000000000
          Top = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1059#1058)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 661.417750000000000000
          Top = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 699.213050000000000000
          Top = 170.078850000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          Left = 755.905999999999900000
          Top = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1053)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 793.701299999999900000
          Top = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 831.496599999999900000
          Top = 170.078850000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050' '#1096#1090'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 869.291900000000000000
          Top = 170.078850000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058' '#1087'.'#1079'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 937.323440000000000000
          Top = 170.078850000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058' '#1096#1090'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Top = 188.976500000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1056)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          Left = 37.795300000000000000
          Top = 188.976500000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1088#1077#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 491.338900000000000000
          Top = 188.976500000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1088#1077#1084#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 755.906000000000000000
          Top = 188.976500000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1074#1077#1088#1076#1086#1089#1090#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          Top = 113.385900000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          Left = 37.795300000000000000
          Top = 113.385900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1055#1055)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          Left = 151.181200000000000000
          Top = 113.385900000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          Left = 491.338900000000000000
          Top = 113.385900000000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          Top = 132.283550000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          Left = 37.795300000000000000
          Top = 132.283550000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          Left = 151.181200000000000000
          Top = 132.283550000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1042)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          Left = 491.338900000000000000
          Top = 132.283550000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1079#1072#1075#1086#1090#1086#1074#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          Left = 207.874150000000000000
          Top = 132.283550000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1044)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          Left = 264.567100000000000000
          Top = 132.283550000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1053)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          Left = 321.260050000000000000
          Top = 132.283550000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053'. '#1088#1072#1089#1093'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          Left = 434.645950000000000000
          Top = 132.283550000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1048#1052)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo161: TfrxMemoView
          Left = 642.520100000000000000
          Top = 132.283550000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1086#1092#1080#1083#1100' '#1080' '#1088#1072#1079#1084#1077#1088#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          Left = 831.496600000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1044)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          Left = 925.984850000000000000
          Top = 132.283550000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1047)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 574.488560000000000000
        Width = 1084.725110000000000000
        DataSet = Data_Doc_Details
        DataSetName = 'Data_Doc_Details'
        OutlineText = 
          '<Data_Doc_Details."DET_NAME"> + '#39'  '#39' + <Data_Doc_Details."DET_NU' +
          'M">  '
        RowCount = 0
        Stretched = True
        object Memo164: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          Left = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Data_Doc_DetailsDET_NAME: TfrxMemoView
          Left = 151.181200000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'DET_NAME'
          DataSet = Data_Doc_Details
          DataSetName = 'Data_Doc_Details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Doc_Details."DET_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Data_Doc_DetailsDET_NUM: TfrxMemoView
          Left = 491.338900000000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = Data_Doc_Details
          DataSetName = 'Data_Doc_Details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Doc_Details."DET_NUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 699.213050000000000000
        Width = 1084.725110000000000000
        Child = frxReport1.Child1
        DataSet = Data_Detail_Operations
        DataSetName = 'Data_Detail_Operations'
        RowCount = 0
        Stretched = True
        object Memo166: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Data_Detail_OperationsCEH_NAME: TfrxMemoView
          Left = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CEH_CODE'
          DataSet = Data_Detail_Operations
          DataSetName = 'Data_Detail_Operations'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Detail_Operations."CEH_CODE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Data_Detail_OperationsROW_NUM_GEN: TfrxMemoView
          Left = 151.181200000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ROW_NUM_GEN'
          DataSet = Data_Detail_Operations
          DataSetName = 'Data_Detail_Operations'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_Detail_Operations."ROW_NUM_GEN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Data_Detail_OperationsOPER_NAME: TfrxMemoView
          Left = 207.874150000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'OPER_NAME'
          DataSet = Data_Detail_Operations
          DataSetName = 'Data_Detail_Operations'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Data_Detail_Operations."OPER_NAME"]')
          ParentFont = False
        end
        object Data_Detail_OperationsOPER_IOT: TfrxMemoView
          Left = 491.338900000000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'OPER_IOT'
          DataSet = Data_Detail_Operations
          DataSetName = 'Data_Detail_Operations'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Data_Detail_Operations."OPER_IOT"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 75.590599999999990000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          Left = 113.385900000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Top = 740.787880000000000000
        Width = 1084.725110000000000000
        Stretched = True
        object Subreport1: TfrxSubreport
          Width = 94.488249999999990000
          Page = frxReport1.Page2
          PrintOnParent = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 1542.048240000000000000
        Width = 1084.725110000000000000
        object Memo171: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1058#1055)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          Left = 37.795300000000000000
          Width = 971.339210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Data_Detail_Docs."TP_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 657.638220000000000000
        Width = 1084.725110000000000000
        OnBeforePrint = 'DetailData2OnBeforePrint'
        DataSet = Data_Det_Mat
        DataSetName = 'Data_Det_Mat'
        RowCount = 0
        object Memo174: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052)
          ParentFont = False
          VAlign = vaCenter
        end
        object Data_Det_MatDET_MAT: TfrxMemoView
          Left = 37.795300000000000000
          Width = 971.339210000000000000
          Height = 18.897650000000000000
          DataField = 'DET_MAT'
          DataSet = Data_Det_Mat
          DataSetName = 'Data_Det_Mat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Data_Det_Mat."DET_MAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 616.063390000000000000
        Width = 1084.725110000000000000
        object Memo175: TfrxMemoView
          Width = 1009.134510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object Overlay1: TfrxOverlay
        FillType = ftBrush
        Height = 718.488188980000000000
        Top = 763.465060000000000000
        Width = 1084.725110000000000000
        object Data_Else_NormalizerELSE_NORM_NAME: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 642.519685040000000000
          Width = 18.897637800000000000
          Height = 75.590551180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1088#1084#1080#1088'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          Width = 1009.134510000000000000
          Height = 718.488188980000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 529.133858270000000000
          Width = 18.897637800000000000
          Height = 113.385826770000000000
          DataField = 'ELSE_NORM_NAME'
          DataSet = Data_3_Normalizer
          DataSetName = 'Data_3_Normalizer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_3_Normalizer."ELSE_NORM_NAME"]')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo216: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 491.338582679999900000
          Width = 18.897637800000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo217: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 434.645669290000100000
          Width = 18.897637800000000000
          Height = 56.692913390000000000
          DataField = 'ELSE_NORM_NAME'
          DataSet = Data_3_Normalizer
          DataSetName = 'Data_3_Normalizer'
          DisplayFormat.FormatStr = 'dd.mm.yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_3_Normalizer."ELSE_NORM_NAME"]')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo218: TfrxMemoView
          Left = 1028.032160000000000000
          Top = 642.519685040000000000
          Width = 18.897637800000000000
          Height = 75.590551180000000000
          DataSet = Data_3_Normalizer
          DataSetName = 'Data_3_Normalizer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1088#1084#1080#1088'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo219: TfrxMemoView
          Left = 1028.032160000000000000
          Top = 529.133858270000000000
          Width = 18.897637800000000000
          Height = 113.385826770000000000
          DataField = 'ELSE_NORM_NAME'
          DataSet = Data_4_Normalizer
          DataSetName = 'Data_4_Normalizer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_4_Normalizer."ELSE_NORM_NAME"]')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo220: TfrxMemoView
          Left = 1028.032160000000000000
          Top = 491.338582679999900000
          Width = 18.897637800000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          Left = 1028.032160000000000000
          Top = 434.645669290000100000
          Width = 18.897637800000000000
          Height = 56.692913390000000000
          DataField = 'DATE_OUT'
          DataSet = Data_4_Normalizer
          DataSetName = 'Data_4_Normalizer'
          DisplayFormat.FormatStr = 'dd.mm.yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Data_4_Normalizer."DATE_OUT"]')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo222: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 359.055118109999900000
          Width = 18.897637800000000000
          Height = 75.590551180000000000
          DataSet = Data_3_Normalizer
          DataSetName = 'Data_3_Normalizer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1088#1084#1080#1088'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo223: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 245.669291340000000000
          Width = 18.897637800000000000
          Height = 113.385826770000000000
          DataField = 'ELSE_NORM_NAME'
          DataSet = Data_5_Normalizer
          DataSetName = 'Data_5_Normalizer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_5_Normalizer."ELSE_NORM_NAME"]')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo224: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 207.874015750000000000
          Width = 18.897637800000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo225: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 151.181102360000100000
          Width = 18.897637800000000000
          Height = 56.692913390000000000
          DataField = 'DATE_OUT'
          DataSet = Data_5_Normalizer
          DataSetName = 'Data_5_Normalizer'
          DisplayFormat.FormatStr = 'dd.mm.yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_5_Normalizer."DATE_OUT"]')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo226: TfrxMemoView
          Left = 1028.032160000000000000
          Top = 359.055118109999900000
          Width = 18.897637800000000000
          Height = 75.590551180000000000
          DataSet = Data_3_Normalizer
          DataSetName = 'Data_3_Normalizer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1088#1084#1080#1088'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo227: TfrxMemoView
          Left = 1028.032160000000000000
          Top = 245.669291340000000000
          Width = 18.897637800000000000
          Height = 113.385826770000000000
          DataField = 'ELSE_NORM_NAME'
          DataSet = Data_6_Normalizer
          DataSetName = 'Data_6_Normalizer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_6_Normalizer."ELSE_NORM_NAME"]')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo228: TfrxMemoView
          Left = 1028.032160000000000000
          Top = 207.874015750000000000
          Width = 18.897637800000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo229: TfrxMemoView
          Left = 1028.032160000000000000
          Top = 151.181102360000100000
          Width = 18.897637800000000000
          Height = 56.692913390000000000
          DataField = 'DATE_OUT'
          DataSet = Data_6_Normalizer
          DataSetName = 'Data_6_Normalizer'
          DisplayFormat.FormatStr = 'dd.mm.yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_6_Normalizer."DATE_OUT"]')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      LargeDesignHeight = True
      PrintIfEmpty = False
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = DATA_OPER_OBOR
        DataSetName = 'DATA_OPER_OBOR'
        RowCount = 0
        object Memo170: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = DATA_OPER_OBOR
          DataSetName = 'DATA_OPER_OBOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1041)
          ParentFont = False
          VAlign = vaCenter
        end
        object DATA_OPER_OBOROBOR_NAME: TfrxMemoView
          Left = 37.795300000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          DataField = 'OBOR_NAME'
          DataSet = DATA_OPER_OBOR
          DataSetName = 'DATA_OPER_OBOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[DATA_OPER_OBOR."OBOR_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          Left = 491.338900000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          Left = 529.134200000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'KODPROF'
          DataSet = DATA_OPER_OBOR
          DataSetName = 'DATA_OPER_OBOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_OPER_OBOR."KODPROF"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          Left = 585.827150000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'RAZR'
          DataSet = DATA_OPER_OBOR
          DataSetName = 'DATA_OPER_OBOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_OPER_OBOR."RAZR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          Left = 623.622450000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'UT'
          DataSet = DATA_OPER_OBOR
          DataSetName = 'DATA_OPER_OBOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_OPER_OBOR."UT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          Left = 661.417750000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'KR'
          DataSet = DATA_OPER_OBOR
          DataSetName = 'DATA_OPER_OBOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_OPER_OBOR."KR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo181: TfrxMemoView
          Left = 699.213050000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo182: TfrxMemoView
          Left = 755.906000000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'OPER_OBOR_EN'
          DataSet = DATA_OPER_OBOR
          DataSetName = 'DATA_OPER_OBOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_OPER_OBOR."OPER_OBOR_EN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo183: TfrxMemoView
          Left = 793.701299999999900000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          Left = 831.496599999999900000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 869.291900000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'OPER_OBOR_TIME_PZ'
          DataSet = DATA_OPER_OBOR
          DataSetName = 'DATA_OPER_OBOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_OPER_OBOR."OPER_OBOR_TIME_PZ"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          Left = 937.323440000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'OPER_OBOR_TIME_SH'
          DataSet = DATA_OPER_OBOR
          DataSetName = 'DATA_OPER_OBOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATA_OPER_OBOR."OPER_OBOR_TIME_SH"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          Left = 491.338900000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = DATA_OPER_OBOR
          DataSetName = 'DATA_OPER_OBOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo188: TfrxMemoView
          Left = 699.213050000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = DATA_OPER_OBOR
          DataSetName = 'DATA_OPER_OBOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 60.472480000000000000
        Width = 1084.725110000000000000
        OnBeforePrint = 'MasterData3OnBeforePrint'
        DataSet = Data_Oper_Prim
        DataSetName = 'Data_Oper_Prim'
        RowCount = 0
        Stretched = True
        object Data_Oper_PrimPRIM: TfrxMemoView
          Left = 37.795300000000000000
          Width = 971.339210000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'PRIM'
          DataSet = Data_Oper_Prim
          DataSetName = 'Data_Oper_Prim'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Data_Oper_Prim."PRIM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = Data_Oper_Prim
          DataSetName = 'Data_Oper_Prim'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
    end
  end
  object DB_EXECUTE_VARIABLES: TOracleDataSet
    SQL.Strings = (
      'Select ( Select Case b.Flag_Out'
      '                  When 0 Then '#39#1053#1045' '#1059#1058#1042#1045#1056#1046#1044#1045#1053#39
      '                  When 1 Then Null'
      '                End '
      '         From   Ogt.V_Spr_Tp_Doc_Appr b'
      '         Where  b.Id_Doc_Tp = :Id'
      '                And b.Appr_Step = '#39'005'#39' ) Flag_Utv'
      'From  Dual')
    Optimize = False
    Variables.Data = {0400000001000000060000003A0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000010000001000000046004C00410047005F0055005400560001000000
      0000}
    Master = Db_Detail_Docs
    MasterFields = 'Id'
    Session = DM_Main.Session
    Left = 288
    Top = 24
    object DB_EXECUTE_VARIABLESFLAG_UTV: TStringField
      FieldName = 'FLAG_UTV'
      Size = 12
    end
  end
  object DATA_EXECUTE_VARIABLES: TfrxDBDataset
    UserName = 'DATA_EXECUTE_VARIABLES'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FLAG_UTV=FLAG_UTV')
    DataSet = DB_EXECUTE_VARIABLES
    BCDToCurrency = False
    Left = 288
    Top = 88
  end
  object DB_SOGL_LIST: TOracleDataSet
    SQL.Strings = (
      'Select     '
      '  /* '#1040#1042#1058#1054#1056' */'
      '  ( Select ( Case '
      '               When a.Main_Doc_Id Is Null'
      '                    And ( Select b.Ceh_Docs_Flag'
      '                          From   Ogt.v_Spr_Tp_Doc b'
      '                          Where  b.Id = a.Id_Doc_Tp ) <> 0'
      '             Then Null'
      '             Else a.Razrab_Name'
      '             End )'
      '    From   Ogt.v_Spr_Tp_Doc_Appr a'
      '    Where  a.Id_Doc_Tp = :Id'
      '           And a.Appr_Step = '#39'001'#39' ) Doc_Author_Name,'
      '    ( Select ( Case '
      '                 When a.Main_Doc_Id Is Null'
      '                      And ( Select b.Ceh_Docs_Flag'
      '                            From   Ogt.v_Spr_Tp_Doc b'
      '                            Where  b.Id = a.Id_Doc_Tp ) <> 0'
      '                 Then Null'
      '                 Else a.Date_Out'
      '               End )'
      '    From   Ogt.v_Spr_Tp_Doc_Appr a'
      '    Where  a.Id_Doc_Tp = :Id'
      '           And a.Appr_Step = '#39'001'#39' ) Doc_Author_Date,     '
      '  /* '#1042#1077#1076#1091#1097#1080#1081' */'
      '  ( Select a.Razrab_Name'
      '    From   Ogt.v_Spr_Tp_Doc_Appr a'
      '    Where  a.Id_Doc_Tp = :Id'
      '           And a.Appr_Step = '#39'002'#39' ) Doc_Prov_Name,'
      '    ( Select  a.Date_Out'
      '      From   Ogt.v_Spr_Tp_Doc_Appr a'
      '      Where  a.Id_Doc_Tp = :Id'
      '             And a.Appr_Step = '#39'002'#39' ) Doc_Prov_Date, '
      '  /* '#1059#1090#1074#1077#1088#1076#1080#1083' */'
      '  ( Select a.Razrab_Name'
      '    From   Ogt.v_Spr_Tp_Doc_Appr a'
      '    Where  a.Id_Doc_Tp = :Id'
      '           And a.Appr_Step = '#39'005'#39' ) Doc_Utv_Name,'
      '    ( Select  a.Date_Out'
      '      From   Ogt.v_Spr_Tp_Doc_Appr a'
      '      Where  a.Id_Doc_Tp = :Id'
      '             And a.Appr_Step = '#39'005'#39' ) Doc_Utv_Date'
      '      '
      'From Dual')
    Optimize = False
    Variables.Data = {0400000001000000060000003A0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000060000001E00000044004F0043005F0041005500540048004F005200
      5F004E0041004D0045000100000000001E00000044004F0043005F0041005500
      540048004F0052005F0044004100540045000100000000001A00000044004F00
      43005F00500052004F0056005F004E0041004D0045000100000000001A000000
      44004F0043005F00500052004F0056005F004400410054004500010000000000
      1800000044004F0043005F005500540056005F004E0041004D00450001000000
      00001800000044004F0043005F005500540056005F0044004100540045000100
      00000000}
    Master = Db_Detail_Docs
    MasterFields = 'Id'
    Session = DM_Main.Session
    Left = 192
    Top = 176
  end
  object DATA_SOGL_LIST: TfrxDBDataset
    UserName = 'DATA_SOGL_LIST'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DOC_AUTHOR_NAME=DOC_AUTHOR_NAME'
      'DOC_AUTHOR_DATE=DOC_AUTHOR_DATE'
      'DOC_PROV_NAME=DOC_PROV_NAME'
      'DOC_PROV_DATE=DOC_PROV_DATE'
      'DOC_UTV_NAME=DOC_UTV_NAME'
      'DOC_UTV_DATE=DOC_UTV_DATE')
    DataSet = DB_SOGL_LIST
    BCDToCurrency = False
    Left = 192
    Top = 232
  end
  object DB_OPER_OBOR: TOracleDataSet
    SQL.Strings = (
      'Select ( Case '
      '           When t.Obor_Name Is Null'
      '           Then Oper.Obor_Name'
      '           Else t.Obor_Name'
      '        End ) As Obor_Name,'
      '       Oper.Kr,'
      '      ( Case '
      '           When t.Prof_Razr Is Null'
      '           Then Oper.Razr'
      '           Else t.Prof_Razr'
      '        End ) As Razr,'
      '       ( Case '
      '           When t.Prof_Code Is Null'
      '           Then Oper.Kodprof'
      '           Else t.Prof_Code'
      '        End ) As Kodprof,'
      '       Oper.Ut,'
      '       t.Oper_Obor_En,'
      '       t.Oper_Obor_Time_Pz,'
      '       t.Oper_Obor_Time_Sh'
      'From   Ogt.V_TP_GKTTP_OPER_DLP t'
      'Left   Join Ogt.V_Tp_Ok_Dlp Oper'
      'On     Oper.Id = t.Id_Row_Oper'
      'Where  t.Id = :Id')
    Optimize = False
    Variables.Data = {0400000001000000060000003A0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000008000000120000004F0042004F0052005F004E0041004D0045000100
      00000000040000004B00520001000000000008000000520041005A0052000100
      000000000E0000004B004F004400500052004F00460001000000000004000000
      55005400010000000000220000004F005000450052005F004F0042004F005200
      5F00540049004D0045005F0050005A00010000000000220000004F0050004500
      52005F004F0042004F0052005F00540049004D0045005F005300480001000000
      0000180000004F005000450052005F004F0042004F0052005F0045004E000100
      00000000}
    Master = Db_Detail_Operations
    MasterFields = 'ID'
    Session = DM_Main.Session
    Left = 264
    Top = 184
  end
  object DATA_OPER_OBOR: TfrxDBDataset
    UserName = 'DATA_OPER_OBOR'
    CloseDataSource = False
    FieldAliases.Strings = (
      'OBOR_NAME=OBOR_NAME'
      'KR=KR'
      'RAZR=RAZR'
      'KODPROF=KODPROF'
      'UT=UT'
      'OPER_OBOR_EN=OPER_OBOR_EN'
      'OPER_OBOR_TIME_PZ=OPER_OBOR_TIME_PZ'
      'OPER_OBOR_TIME_SH=OPER_OBOR_TIME_SH')
    DataSet = DB_OPER_OBOR
    BCDToCurrency = False
    Left = 264
    Top = 248
  end
  object Db_Oper_Prim: TOracleDataSet
    SQL.Strings = (
      'Select t.Prim'
      'From   Ogt.V_TP_GKTTP_OPER_DLP t'
      'Where  t.Id = :Id'
      'Order  By Row_Num_Gen')
    Optimize = False
    Variables.Data = {0400000001000000060000003A0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {0500000001000000080000005000520049004D00010000000000}
    Master = Db_Detail_Operations
    MasterFields = 'ID'
    Session = DM_Main.Session
    Left = 400
    Top = 32
  end
  object Data_Oper_Prim: TfrxDBDataset
    UserName = 'Data_Oper_Prim'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRIM=PRIM')
    DataSet = Db_Oper_Prim
    BCDToCurrency = False
    Left = 400
    Top = 96
  end
  object Db_Det_Mat: TOracleDataSet
    SQL.Strings = (
      'select ( Select a.Mat '
      '         From   Ogt.Spr_Matx a'
      '         Where  a.Id = ( Select c.Mat'
      '                         From Ogt.Spr_Det c'
      '                         Where  c.Id = :Det_Id ) ) as Det_Mat'
      'from Dual')
    Optimize = False
    Variables.Data = {
      04000000010000000E0000003A004400450054005F0049004400050000000000
      000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000010000000E0000004400450054005F004D0041005400010000000000}
    Master = Db_Doc_Details
    MasterFields = 'Det_ID'
    Session = Form2.OracleSession1
    Left = 480
    Top = 32
  end
  object Data_Det_Mat: TfrxDBDataset
    UserName = 'Data_Det_Mat'
    CloseDataSource = False
    DataSet = Db_Det_Mat
    BCDToCurrency = False
    Left = 480
    Top = 96
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = True
    PrintOptimized = True
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 300
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 384
    Top = 200
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 456
    Top = 200
  end
  object Db_First_Normalizer: TOracleDataSet
    SQL.Strings = (
      'Select b.Date_Out,'
      '       b.First_Norm_Name'
      'From'
      '( Select a.*, '
      '         Rownum as R_Num'
      '  From'
      '         ( Select t.Date_Out,'
      '                  t.Razrab_Name First_Norm_Name'
      '           From   Ogt.V_Spr_Tp_Doc_Appr t '
      '           Where  t.Appr_Step = '#39'003'#39
      '                  And t.Id_Doc_Tp = :v_Doc_Id '
      '                  And t.Flag_Out = 1'
      '           Order  By t.Ceh_Id'
      '          ) a '
      '  )b'
      'Where b.R_Num = 1')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000001000000044004100540045005F004F005500540001000000
      00001E000000460049005200530054005F004E004F0052004D005F004E004100
      4D004500010000000000}
    Session = DM_Main.Session
    Left = 32
    Top = 296
  end
  object Db_Second_Normalizer: TOracleDataSet
    SQL.Strings = (
      'Select b.Date_Out,'
      '       b.Second_Norm_Name'
      'From'
      '( Select a.*, '
      '         Rownum as R_Num'
      '  From'
      '         ( Select t.Date_Out,'
      '                  t.Razrab_Name Second_Norm_Name'
      '           From   Ogt.V_Spr_Tp_Doc_Appr t '
      '           Where  t.Appr_Step = '#39'003'#39
      '                  And t.Id_Doc_Tp = :v_Doc_Id'
      '                  And t.Flag_Out = 1 '
      '           Order  By t.Ceh_Id'
      '          ) a '
      '  )b'
      'Where b.R_Num = 2')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000001000000044004100540045005F004F005500540001000000
      0000200000005300450043004F004E0044005F004E004F0052004D005F004E00
      41004D004500010000000000}
    Session = DM_Main.Session
    Left = 128
    Top = 296
  end
  object Db_3_Normalizer: TOracleDataSet
    SQL.Strings = (
      'Select b.Date_Out,'
      '       b.Else_Norm_Name'
      'From'
      '( Select a.*, '
      '         Rownum as R_Num'
      '  From'
      '         ( Select t.Date_Out,'
      '                  t.Razrab_Name Else_Norm_Name'
      '           From   Ogt.V_Spr_Tp_Doc_Appr t '
      '           Where  t.Appr_Step = '#39'003'#39
      '                  And t.Id_Doc_Tp = :v_Doc_Id '
      '                  And t.Flag_Out = 1'
      '           Order  By t.Ceh_Id'
      '          ) a '
      '  )b'
      'Where b.R_Num = 3')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000001000000044004100540045005F004F005500540001000000
      00001C00000045004C00530045005F004E004F0052004D005F004E0041004D00
      4500010000000000}
    Session = DM_Main.Session
    Left = 232
    Top = 296
  end
  object Db_4_Normalizer: TOracleDataSet
    SQL.Strings = (
      'Select b.Date_Out,'
      '       b.Else_Norm_Name'
      'From'
      '( Select a.*, '
      '         Rownum as R_Num'
      '  From'
      '         ( Select t.Date_Out,'
      '                  t.Razrab_Name Else_Norm_Name'
      '           From   Ogt.V_Spr_Tp_Doc_Appr t '
      '           Where  t.Appr_Step = '#39'003'#39
      '                  And t.Id_Doc_Tp = :v_Doc_Id'
      '                  And t.Flag_Out = 1 '
      '           Order  By t.Ceh_Id'
      '          ) a '
      '  )b'
      'Where b.R_Num = 4')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000001000000044004100540045005F004F005500540001000000
      00001C00000045004C00530045005F004E004F0052004D005F004E0041004D00
      4500010000000000}
    Session = DM_Main.Session
    Left = 320
    Top = 304
  end
  object Db_5_Normalizer: TOracleDataSet
    SQL.Strings = (
      'Select b.Date_Out,'
      '       b.Else_Norm_Name'
      'From'
      '( Select a.*, '
      '         Rownum as R_Num'
      '  From'
      '         ( Select t.Date_Out,'
      '                  t.Razrab_Name Else_Norm_Name'
      '           From   Ogt.V_Spr_Tp_Doc_Appr t '
      '           Where  t.Appr_Step = '#39'003'#39
      '                  And t.Id_Doc_Tp = :v_Doc_Id'
      '                  And t.Flag_Out = 1 '
      '           Order  By t.Ceh_Id'
      '          ) a '
      '  )b'
      'Where b.R_Num = 5')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000001000000044004100540045005F004F005500540001000000
      00001C00000045004C00530045005F004E004F0052004D005F004E0041004D00
      4500010000000000}
    Session = DM_Main.Session
    Left = 408
    Top = 304
  end
  object Db_6_Normalizer: TOracleDataSet
    SQL.Strings = (
      'Select b.Date_Out,'
      '       b.Else_Norm_Name'
      'From'
      '( Select a.*, '
      '         Rownum as R_Num'
      '  From'
      '         ( Select t.Date_Out,'
      '                  t.Razrab_Name Else_Norm_Name'
      '           From   Ogt.V_Spr_Tp_Doc_Appr t '
      '           Where  t.Appr_Step = '#39'003'#39
      '                  And t.Id_Doc_Tp = :v_Doc_Id '
      '                  And t.Flag_Out = 1'
      '           Order  By t.Ceh_Id'
      '          ) a '
      '  )b'
      'Where b.R_Num = 6')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000001000000044004100540045005F004F005500540001000000
      00001C00000045004C00530045005F004E004F0052004D005F004E0041004D00
      4500010000000000}
    Session = DM_Main.Session
    Left = 496
    Top = 304
  end
  object Data_6_Normalizer: TfrxDBDataset
    UserName = 'Data_6_Normalizer'
    CloseDataSource = False
    DataSet = Db_6_Normalizer
    BCDToCurrency = False
    Left = 496
    Top = 368
  end
  object Data_5_Normalizer: TfrxDBDataset
    UserName = 'Data_5_Normalizer'
    CloseDataSource = False
    DataSet = Db_5_Normalizer
    BCDToCurrency = False
    Left = 408
    Top = 368
  end
  object Data_4_Normalizer: TfrxDBDataset
    UserName = 'Data_4_Normalizer'
    CloseDataSource = False
    DataSet = Db_4_Normalizer
    BCDToCurrency = False
    Left = 320
    Top = 368
  end
  object Data_3_Normalizer: TfrxDBDataset
    UserName = 'Data_3_Normalizer'
    CloseDataSource = False
    DataSet = Db_3_Normalizer
    BCDToCurrency = False
    Left = 232
    Top = 360
  end
  object Data_Second_Normalizer: TfrxDBDataset
    UserName = 'Data_Second_Normalizer'
    CloseDataSource = False
    DataSet = Db_Second_Normalizer
    BCDToCurrency = False
    Left = 128
    Top = 360
  end
  object Data_First_Normalizer: TfrxDBDataset
    UserName = 'Data_First_Normalizer'
    CloseDataSource = False
    DataSet = Db_First_Normalizer
    BCDToCurrency = False
    Left = 40
    Top = 360
  end
end
