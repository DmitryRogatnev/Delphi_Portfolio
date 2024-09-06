object Form_TechProc_TimeNormHist: TForm_TechProc_TimeNormHist
  Left = 0
  Top = 0
  Caption = 'Form_TechProc_TimeNormHist'
  ClientHeight = 631
  ClientWidth = 958
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'clWindowText'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Grid_TimeNormHist: TDBGridEh
    Left = 0
    Top = 0
    Width = 958
    Height = 631
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_NormTimeHist
    DynProps = <>
    Flat = True
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    RowHeight = 2
    RowLines = 1
    SearchPanel.Enabled = True
    SortLocal = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 0
    OnGetCellParams = Grid_TimeNormHistGetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PROF_CODE'
        Footers = <>
        Title.Caption = #1050#1086#1076' '#1087#1088#1086#1092#1077#1089#1089#1080#1080
        Width = 102
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ALL_OPER_TIME'
        Footers = <>
        Title.Caption = #1053#1086#1088#1084#1072' '#1074#1088#1077#1084#1077#1085#1080', '#1085'/'#1095
        Width = 135
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ALL_OPER_TIME_PERC'
        Footers = <>
        Title.Caption = #1053#1086#1088#1084#1072' '#1074#1088#1077#1084#1077#1085#1080', %'
        Width = 126
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UNIT_TIME'
        Footers = <>
        Title.Caption = #1058' '#1096#1090', '#1095
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_TIME'
        Footers = <>
        Title.Caption = #1058' '#1086#1087#1077#1088', '#1095
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SETUP_TIME'
        Footers = <>
        Title.Caption = #1058' '#1087#1079', '#1095
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OTHER_TIME'
        Footers = <>
        Title.Caption = #1058#1086#1073#1089'+'#1058#1086#1090#1076', '#1095
        Width = 83
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_INSERT'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_CHANGE'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Db_NormTimeHist: TOracleDataSet
    SQL.Strings = (
      'select a.*'
      'from   Ogt.V_Tp_Ok_Oper_Time a'
      'Where  (a.Doc_Tp_Id = :Id'
      '        And a.Doc_Tp_Vers_Id In ( Select a.Id_Vers'
      '                                  From   ogt.v_Spr_Tp_Doc a '
      '                                  Where  a.Id = :Id'
      
        '                                  Connect By Prior a.Parent_Doc_' +
        'Id = a.Doc_Header_Id'
      '                                  Start  With a.Id = :Id'
      
        '                                         And a.Id_Vers = :Id_Ver' +
        's))'
      'Connect  By Prior a.Id_Rw_Op_Time = a.Rw_Id_Old_Vers'
      'Start With a.Rw_Id_Old_Vers is Null')
    Optimize = False
    Variables.Data = {
      0400000002000000060000003A00490044000500000000000000000000001000
      00003A00490044005F005600450052005300050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001A0000001A000000490044005F00520057005F004F0050005F005400
      49004D0045000100000000000E000000520057005F0056004500520053000100
      0000000012000000520057005F00530054004100540055005300010000000000
      1C000000520057005F00490044005F004F004C0044005F005600450052005300
      010000000000140000004F005000450052005F00520057005F00490044000100
      000000001C0000004700520050005F004F005000450052005F00520057005F00
      490044000100000000001200000044004F0043005F00540050005F0049004400
      0100000000001C00000044004F0043005F00540050005F005600450052005300
      5F00490044000100000000001A00000041004C004C005F004F00500045005200
      5F00540049004D0045000100000000002400000041004C004C005F004F005000
      450052005F00540049004D0045005F0050004500520043000100000000001A00
      00005500530049004E0047005F004E004F0052004D005F004900440001000000
      00001E0000005500530049004E0047005F004E004F0052004D005F0054004900
      4D00450001000000000012000000430041004C0043005F00460052004F004D00
      01000000000012000000500052004F0046005F0043004F004400450001000000
      000010000000500052004F0046005F00430054004E0001000000000014000000
      500052004F0046005F0043004C00410053005300010000000000140000005000
      52004F0046005F004D004F004E00450059000100000000001200000055004E00
      490054005F00540049004D004500010000000000120000004F00500045005200
      5F00540049004D00450001000000000014000000530045005400550050005F00
      540049004D004500010000000000140000004F0054004800450052005F005400
      49004D0045000100000000001400000055004E00490054005F0043004F005500
      4E0054000100000000001600000055005300450052005F0049004E0053004500
      520054000100000000001600000044004100540045005F0049004E0053004500
      520054000100000000001600000055005300450052005F004300480041004E00
      470045000100000000001600000044004100540045005F004300480041004E00
      47004500010000000000}
    MasterFields = 'Id; Id_Vers'
    Session = DM_Main.Session
    Left = 360
    Top = 264
    object Db_NormTimeHistID_RW_OP_TIME: TFloatField
      FieldName = 'ID_RW_OP_TIME'
    end
    object Db_NormTimeHistRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_NormTimeHistRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_NormTimeHistRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_NormTimeHistOPER_RW_ID: TFloatField
      FieldName = 'OPER_RW_ID'
    end
    object Db_NormTimeHistGRP_OPER_RW_ID: TFloatField
      FieldName = 'GRP_OPER_RW_ID'
    end
    object Db_NormTimeHistDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
    end
    object Db_NormTimeHistDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_NormTimeHistALL_OPER_TIME: TFloatField
      FieldName = 'ALL_OPER_TIME'
    end
    object Db_NormTimeHistALL_OPER_TIME_PERC: TFloatField
      FieldName = 'ALL_OPER_TIME_PERC'
    end
    object Db_NormTimeHistUSING_NORM_ID: TFloatField
      FieldName = 'USING_NORM_ID'
    end
    object Db_NormTimeHistUSING_NORM_TIME: TFloatField
      FieldName = 'USING_NORM_TIME'
    end
    object Db_NormTimeHistCALC_FROM: TStringField
      FieldName = 'CALC_FROM'
      Size = 30
    end
    object Db_NormTimeHistPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object Db_NormTimeHistPROF_CTN: TIntegerField
      FieldName = 'PROF_CTN'
    end
    object Db_NormTimeHistPROF_CLASS: TIntegerField
      FieldName = 'PROF_CLASS'
    end
    object Db_NormTimeHistPROF_MONEY: TFloatField
      FieldName = 'PROF_MONEY'
    end
    object Db_NormTimeHistUNIT_TIME: TFloatField
      FieldName = 'UNIT_TIME'
    end
    object Db_NormTimeHistOPER_TIME: TFloatField
      FieldName = 'OPER_TIME'
    end
    object Db_NormTimeHistSETUP_TIME: TFloatField
      FieldName = 'SETUP_TIME'
    end
    object Db_NormTimeHistOTHER_TIME: TFloatField
      FieldName = 'OTHER_TIME'
    end
    object Db_NormTimeHistUNIT_COUNT: TIntegerField
      FieldName = 'UNIT_COUNT'
    end
    object Db_NormTimeHistUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_NormTimeHistDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_NormTimeHistUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_NormTimeHistDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
  end
  object Data_NormTimeHist: TDataSource
    DataSet = MemT_NormTimeHist
    Left = 448
    Top = 384
  end
  object MemT_NormTimeHist: TMemTableEh
    Params = <>
    DataDriver = Driver_NormTimeHist
    SortOrder = 'Date_Insert desc'
    Left = 312
    Top = 168
    object MemT_NormTimeHistID_RW_OP_TIME: TFloatField
      FieldName = 'ID_RW_OP_TIME'
    end
    object MemT_NormTimeHistRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_NormTimeHistRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_NormTimeHistRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_NormTimeHistOPER_RW_ID: TFloatField
      FieldName = 'OPER_RW_ID'
    end
    object MemT_NormTimeHistGRP_OPER_RW_ID: TFloatField
      FieldName = 'GRP_OPER_RW_ID'
    end
    object MemT_NormTimeHistDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
    end
    object MemT_NormTimeHistDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_NormTimeHistALL_OPER_TIME: TFloatField
      FieldName = 'ALL_OPER_TIME'
    end
    object MemT_NormTimeHistALL_OPER_TIME_PERC: TFloatField
      FieldName = 'ALL_OPER_TIME_PERC'
    end
    object MemT_NormTimeHistUSING_NORM_ID: TFloatField
      FieldName = 'USING_NORM_ID'
    end
    object MemT_NormTimeHistUSING_NORM_TIME: TFloatField
      FieldName = 'USING_NORM_TIME'
    end
    object MemT_NormTimeHistCALC_FROM: TStringField
      FieldName = 'CALC_FROM'
      Size = 30
    end
    object MemT_NormTimeHistPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object MemT_NormTimeHistPROF_CTN: TIntegerField
      FieldName = 'PROF_CTN'
    end
    object MemT_NormTimeHistPROF_CLASS: TIntegerField
      FieldName = 'PROF_CLASS'
    end
    object MemT_NormTimeHistPROF_MONEY: TFloatField
      FieldName = 'PROF_MONEY'
    end
    object MemT_NormTimeHistUNIT_TIME: TFloatField
      FieldName = 'UNIT_TIME'
    end
    object MemT_NormTimeHistOPER_TIME: TFloatField
      FieldName = 'OPER_TIME'
    end
    object MemT_NormTimeHistSETUP_TIME: TFloatField
      FieldName = 'SETUP_TIME'
    end
    object MemT_NormTimeHistOTHER_TIME: TFloatField
      FieldName = 'OTHER_TIME'
    end
    object MemT_NormTimeHistUNIT_COUNT: TIntegerField
      FieldName = 'UNIT_COUNT'
    end
    object MemT_NormTimeHistUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_NormTimeHistDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_NormTimeHistUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_NormTimeHistDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
  end
  object Driver_NormTimeHist: TDataSetDriverEh
    ProviderDataSet = Db_NormTimeHist
    Left = 496
    Top = 248
  end
end
