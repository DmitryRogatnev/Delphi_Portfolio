object Form_Tp_ChronCards: TForm_Tp_ChronCards
  Left = 0
  Top = 0
  Caption = 'Form_Tp_ChronCards'
  ClientHeight = 626
  ClientWidth = 929
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
  object Grid_ChronCards: TDBGridEh
    Left = 0
    Top = 0
    Width = 929
    Height = 626
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_ChronCards
    DynProps = <>
    Flat = True
    OddRowColor = clMenu
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    RowHeight = 2
    RowLines = 1
    SearchPanel.Enabled = True
    STFilter.InstantApply = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <
          item
            Images.NormalImages = Form_Tech_Proc_Main.ImageList1
            Images.NormalIndex = 27
            Images.HotIndex = -1
            Images.PressedIndex = -1
            Images.DisabledIndex = -1
            Style = ebsGlyphEh
            Width = 20
            OnClick = Grid_ChronCardsColumns0CellButtons0Click
          end
          item
            Images.NormalImages = Form_Tech_Proc_Main.ImageList1
            Images.NormalIndex = 38
            Images.HotIndex = -1
            Images.PressedIndex = -1
            Images.DisabledIndex = -1
            Style = ebsGlyphEh
            Width = 20
            OnClick = Grid_ChronCardsColumns0CellButtons1Click
          end>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOC_NUMBER'
        Footers = <>
        Title.Caption = #8470' '#1076#1086#1082'.'
        Width = 143
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_START_MSR'
        Footers = <>
        Title.Caption = #1053#1072#1095#1072#1083#1086' '#1079#1072#1084#1077#1088#1086#1074
        Width = 201
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_END_MSR'
        Footers = <>
        Title.Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1079#1072#1084#1077#1088#1086#1074
        Width = 164
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.00000'
        DynProps = <>
        EditButtons = <>
        FieldName = 'TIME_NORM'
        Footers = <>
        Title.Caption = #1048#1090#1086#1075#1086', '#1095
        Width = 102
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'EMP_FIO'
        Footers = <>
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 110
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CREATE_DATE'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Db_ChronCards: TOracleDataSet
    SQL.Strings = (
      'select cc.*, u.Emp_Fio, a.Oper_Rw_Id'
      'from   Ogt.V_Tp_Ok_Oper_Time a'
      'Join   Ogt.V_CHRON_CARDS_TP_LINK c'
      'On     c.Time_Op_Rw_Id = a.Id_Rw_Op_Time'
      'left   join Src.V_CHRONMETR_CARDS cc'
      'On     cc.Doc_Header_Id = c.Doc_Header_Id'
      'left   Join stp.v_users u'
      'On     u.Id_User = cc.Create_User_Id'
      '       and u.Id_User_Add = cc.Create_User_Id_Add'
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
      05000000200000001600000055005300450052005F0049004E00530045005200
      54000100000000001600000044004100540045005F0049004E00530045005200
      54000100000000001600000055005300450052005F004300480041004E004700
      45000100000000001600000044004100540045005F004300480041004E004700
      450001000000000018000000490044005F00520057005F004300480052004E00
      5F0043000100000000001A00000044004F0043005F0048004500410044004500
      52005F00490044000100000000000C0000004400450050005F00490044000100
      000000001C00000044004100540045005F00530054004100520054005F004D00
      530052000100000000001800000044004100540045005F0045004E0044005F00
      4D00530052000100000000001A00000045004D0050005F00490044005F005700
      4F0052004B004500520001000000000012000000540049004D0045005F004E00
      4F0052004D00010000000000120000004400450054005F0043004F0055004E00
      54000100000000001C00000057004F0052004B005F0050004C005F0044004500
      50005F00490044000100000000000C00000049005A0044005F00490044000100
      000000001A0000004E004F0052004D005F00500052004F00460043004F004400
      45000100000000001A000000490044005F0044004F0043005F00480045004100
      4400450052000100000000001600000044004F0043005F005400590050004500
      5F00490044000100000000001000000044004F0043005F004400410054004500
      0100000000001400000044004F0043005F004E0055004D004200450052000100
      000000001600000043004C004D004E0031005F00560041004C00550045000100
      000000001600000043004C004D004E0032005F00560041004C00550045000100
      000000001600000043004C004D004E0033005F00560041004C00550045000100
      000000001C0000004300520045004100540045005F0055005300450052005F00
      49004400010000000000240000004300520045004100540045005F0055005300
      450052005F00490044005F004100440044000100000000001600000043005200
      45004100540045005F004400410054004500010000000000200000004C004100
      530054005F004D004F0044005F0055005300450052005F004900440001000000
      0000280000004C004100530054005F004D004F0044005F005500530045005200
      5F00490044005F004100440044000100000000001A0000004C00410053005400
      5F004D004F0044005F0044004100540045000100000000001400000053005200
      43005F004400450050005F00490044000100000000001600000053004E004400
      52005F004400450050005F00490044000100000000000E00000045004D005000
      5F00460049004F00010000000000140000004F005000450052005F0052005700
      5F0049004400010000000000}
    MasterFields = 'Id; Id_Vers'
    Session = DM_Main.Session
    Left = 600
    Top = 352
    object Db_ChronCardsID_RW_CHRN_C: TIntegerField
      FieldName = 'ID_RW_CHRN_C'
    end
    object Db_ChronCardsDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_ChronCardsDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_ChronCardsDATE_START_MSR: TDateTimeField
      FieldName = 'DATE_START_MSR'
    end
    object Db_ChronCardsDATE_END_MSR: TDateTimeField
      FieldName = 'DATE_END_MSR'
    end
    object Db_ChronCardsEMP_ID_WORKER: TIntegerField
      FieldName = 'EMP_ID_WORKER'
    end
    object Db_ChronCardsTIME_NORM: TFloatField
      FieldName = 'TIME_NORM'
    end
    object Db_ChronCardsDET_COUNT: TIntegerField
      FieldName = 'DET_COUNT'
    end
    object Db_ChronCardsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_ChronCardsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_ChronCardsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_ChronCardsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_ChronCardsWORK_PL_DEP_ID: TIntegerField
      FieldName = 'WORK_PL_DEP_ID'
    end
    object Db_ChronCardsIZD_ID: TIntegerField
      FieldName = 'IZD_ID'
    end
    object Db_ChronCardsNORM_PROFCODE: TStringField
      FieldName = 'NORM_PROFCODE'
      Size = 5
    end
    object Db_ChronCardsID_DOC_HEADER: TIntegerField
      FieldName = 'ID_DOC_HEADER'
    end
    object Db_ChronCardsDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_ChronCardsDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object Db_ChronCardsDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_ChronCardsCLMN1_VALUE: TStringField
      FieldName = 'CLMN1_VALUE'
      Size = 200
    end
    object Db_ChronCardsCLMN2_VALUE: TStringField
      FieldName = 'CLMN2_VALUE'
      Size = 200
    end
    object Db_ChronCardsCLMN3_VALUE: TStringField
      FieldName = 'CLMN3_VALUE'
      Size = 4000
    end
    object Db_ChronCardsCREATE_USER_ID: TStringField
      FieldName = 'CREATE_USER_ID'
      Size = 30
    end
    object Db_ChronCardsCREATE_USER_ID_ADD: TIntegerField
      FieldName = 'CREATE_USER_ID_ADD'
    end
    object Db_ChronCardsCREATE_DATE: TDateTimeField
      FieldName = 'CREATE_DATE'
    end
    object Db_ChronCardsLAST_MOD_USER_ID: TStringField
      FieldName = 'LAST_MOD_USER_ID'
      Size = 30
    end
    object Db_ChronCardsLAST_MOD_USER_ID_ADD: TIntegerField
      FieldName = 'LAST_MOD_USER_ID_ADD'
    end
    object Db_ChronCardsLAST_MOD_DATE: TDateTimeField
      FieldName = 'LAST_MOD_DATE'
    end
    object Db_ChronCardsSRC_DEP_ID: TIntegerField
      FieldName = 'SRC_DEP_ID'
    end
    object Db_ChronCardsSNDR_DEP_ID: TIntegerField
      FieldName = 'SNDR_DEP_ID'
    end
    object Db_ChronCardsEMP_FIO: TStringField
      FieldName = 'EMP_FIO'
      Size = 26
    end
    object Db_ChronCardsOPER_RW_ID: TFloatField
      FieldName = 'OPER_RW_ID'
    end
  end
  object Data_ChronCards: TDataSource
    DataSet = MemT_ChronCards
    Left = 448
    Top = 384
  end
  object Driver_ChronCards: TDataSetDriverEh
    ProviderDataSet = Db_ChronCards
    Left = 496
    Top = 248
  end
  object MemT_ChronCards: TMemTableEh
    Params = <>
    DataDriver = Driver_ChronCards
    SortOrder = 'Create_Date desc'
    Left = 592
    Top = 432
    object MemT_ChronCardsID_RW_CHRN_C: TIntegerField
      FieldName = 'ID_RW_CHRN_C'
    end
    object MemT_ChronCardsDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object MemT_ChronCardsDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object MemT_ChronCardsDATE_START_MSR: TDateTimeField
      FieldName = 'DATE_START_MSR'
    end
    object MemT_ChronCardsDATE_END_MSR: TDateTimeField
      FieldName = 'DATE_END_MSR'
    end
    object MemT_ChronCardsEMP_ID_WORKER: TIntegerField
      FieldName = 'EMP_ID_WORKER'
    end
    object MemT_ChronCardsTIME_NORM: TFloatField
      FieldName = 'TIME_NORM'
    end
    object MemT_ChronCardsDET_COUNT: TIntegerField
      FieldName = 'DET_COUNT'
    end
    object MemT_ChronCardsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_ChronCardsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_ChronCardsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_ChronCardsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_ChronCardsWORK_PL_DEP_ID: TIntegerField
      FieldName = 'WORK_PL_DEP_ID'
    end
    object MemT_ChronCardsIZD_ID: TIntegerField
      FieldName = 'IZD_ID'
    end
    object MemT_ChronCardsNORM_PROFCODE: TStringField
      FieldName = 'NORM_PROFCODE'
      Size = 5
    end
    object MemT_ChronCardsID_DOC_HEADER: TIntegerField
      FieldName = 'ID_DOC_HEADER'
    end
    object MemT_ChronCardsDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object MemT_ChronCardsDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object MemT_ChronCardsDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object MemT_ChronCardsCLMN1_VALUE: TStringField
      FieldName = 'CLMN1_VALUE'
      Size = 200
    end
    object MemT_ChronCardsCLMN2_VALUE: TStringField
      FieldName = 'CLMN2_VALUE'
      Size = 200
    end
    object MemT_ChronCardsCLMN3_VALUE: TStringField
      FieldName = 'CLMN3_VALUE'
      Size = 4000
    end
    object MemT_ChronCardsCREATE_USER_ID: TStringField
      FieldName = 'CREATE_USER_ID'
      Size = 30
    end
    object MemT_ChronCardsCREATE_USER_ID_ADD: TIntegerField
      FieldName = 'CREATE_USER_ID_ADD'
    end
    object MemT_ChronCardsCREATE_DATE: TDateTimeField
      FieldName = 'CREATE_DATE'
    end
    object MemT_ChronCardsLAST_MOD_USER_ID: TStringField
      FieldName = 'LAST_MOD_USER_ID'
      Size = 30
    end
    object MemT_ChronCardsLAST_MOD_USER_ID_ADD: TIntegerField
      FieldName = 'LAST_MOD_USER_ID_ADD'
    end
    object MemT_ChronCardsLAST_MOD_DATE: TDateTimeField
      FieldName = 'LAST_MOD_DATE'
    end
    object MemT_ChronCardsSRC_DEP_ID: TIntegerField
      FieldName = 'SRC_DEP_ID'
    end
    object MemT_ChronCardsSNDR_DEP_ID: TIntegerField
      FieldName = 'SNDR_DEP_ID'
    end
    object MemT_ChronCardsEMP_FIO: TStringField
      FieldName = 'EMP_FIO'
      Size = 26
    end
    object MemT_ChronCardsOPER_RW_ID: TFloatField
      FieldName = 'OPER_RW_ID'
    end
  end
end
