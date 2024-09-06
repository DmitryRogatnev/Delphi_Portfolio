object Form_Doc_Files: TForm_Doc_Files
  Left = 0
  Top = 0
  Caption = 'Form_Doc_Files'
  ClientHeight = 486
  ClientWidth = 1011
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GRID_MAIN: TDBGridEh
    Left = 0
    Top = 0
    Width = 1011
    Height = 486
    Align = alClient
    AllowedOperations = [alopUpdateEh, alopDeleteEh, alopAppendEh]
    AutoFitColWidths = True
    DataSource = Data_Oper_Files
    DynProps = <>
    EvenRowColor = clWindow
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbDeleteEh, nbRefreshEh]
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    SearchPanel.Enabled = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOC_NUM'
        Footers = <>
        Title.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 130
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_NAME'
        Footers = <>
        Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1103
        Width = 351
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME_FILE'
        Footers = <>
        Title.Caption = #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091
        Visible = False
        Width = 278
        WordWrap = True
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COMMENT_FILE'
        Footers = <>
        Title.Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
        Width = 360
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RAZRAB_NAME'
        Footers = <>
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 109
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATAIZM'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 504
    Top = 272
    object N5: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
      OnClick = N3Click
    end
  end
  object MainMenu1: TMainMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 672
    Top = 328
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      ImageIndex = 33
      object N3: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N3Click
      end
    end
    object N2: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 32
      OnClick = N2Click
    end
  end
  object Db_Oper_Files: TOracleDataSet
    SQL.Strings = (
      'Select t.*, Oper.Oper_Name'
      'From Ogt.V_TP_OK_FILES_DLP t'
      'Left   Join Ogt.V_Tp_Ok_Dlp Oper'
      'On     Oper.Id_Row_Oper = t.Id_Row_Oper'
      
        '       And Oper.Id_Rw_Vers = Ogt.pkg_tp_doc.f_get_oper_lastidver' +
        's(in_id_row_oper => t.Id_Row_Oper)'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Id_Doc_Tp = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id Root_Row, '
      '                                                (Case '
      
        '          When a.Id = CONNECT_BY_ROOT a.Id Then Level||'#39'('#39'||a.Id' +
        '||'#39')'#39
      '          Else CONNECT_BY_ROOT a.Id||'#39'/'#39'||Level||'#39'('#39'||a.Id||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_TP_OK_FILE' +
        'S_DLP_VERS a '
      
        '                                         Left  Join Ogt.V_Spr_Tp' +
        '_Doc_Actual Info'
      #9#9#9#9#9' On    a.Id_Doc_Tp = Info.Id'
      
        '                                         Where  (a.Id_Doc_Tp = :' +
        'Id'
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select a.Id_Vers'
      
        '                                                                ' +
        '          From   ogt.v_Spr_Tp_Doc a '
      
        '                                                                ' +
        '          Where  a.Id = :Id'
      
        '                                                                ' +
        '          Connect By Prior a.Parent_Doc_Id = a.Doc_Header_Id'
      
        '                                                                ' +
        '          Start With a.Id = :Id'
      
        '                                                                ' +
        '                     And a.Id_Vers = :Id_Vers))'
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Id_Doc_Tp ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.Id ' +
        '= a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                           On Substr(c.Actual,Instr(c.Actual, '#39'(' +
        #39')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(' +
        'to_Char(t.Id))'
      'Where ((Case'
      '           when t.Id_Doc_Tp = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)')
    Optimize = False
    Variables.Data = {
      0400000003000000060000003A00490044000500000000000000000000001000
      00003A00490044005F0056004500520053000500000000000000000000001C00
      00003A004C0049004E004B00450044005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000E00000016000000490044005F0052004F0057005F004F0050004500
      5200010000000000120000004E0041004D0045005F00460049004C0045000100
      000000001800000043004F004D004D0045004E0054005F00460049004C004500
      01000000000004000000490044000100000000000C000000520041005A005200
      410042000100000000000E000000440041005400410049005A004D0001000000
      000016000000520041005A005200410042005F004E0041004D00450001000000
      000012000000490044005F0044004F0043005F00540050000100000000001200
      00004F005000450052005F004E0041004D0045000100000000000E0000005500
      5300450052005F00490044000100000000000E000000520057005F0056004500
      5200530001000000000012000000520057005F00530054004100540055005300
      0100000000001C000000520057005F00490044005F004F004C0044005F005600
      4500520053000100000000001C00000044004F0043005F00540050005F005600
      4500520053005F0049004400010000000000}
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 920
    Top = 384
    object Db_Oper_FilesID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Oper_FilesRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Oper_FilesRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Oper_FilesRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Oper_FilesID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
      Required = True
    end
    object Db_Oper_FilesID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
    end
    object Db_Oper_FilesDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Oper_FilesNAME_FILE: TStringField
      FieldName = 'NAME_FILE'
      Required = True
      Size = 500
    end
    object Db_Oper_FilesCOMMENT_FILE: TStringField
      FieldName = 'COMMENT_FILE'
      Required = True
      Size = 500
    end
    object Db_Oper_FilesRAZRAB: TIntegerField
      FieldName = 'RAZRAB'
      Required = True
    end
    object Db_Oper_FilesRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Oper_FilesDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
    end
    object Db_Oper_FilesUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
    object Db_Oper_FilesOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
  end
  object Data_Oper_Files: TDataSource
    DataSet = MemT_Oper_Files
    Left = 920
    Top = 248
  end
  object Driver_Oper_Files: TDataSetDriverEh
    ProviderDataSet = Db_Oper_Files
    Left = 920
    Top = 336
  end
  object MemT_Oper_Files: TMemTableEh
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'RW_VERS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'RW_STATUS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'RW_ID_OLD_VERS'
        DataType = ftInteger
        Precision = 15
      end
      item
        Name = 'ID_ROW_OPER'
        Attributes = [faRequired]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'ID_DOC_TP'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'DOC_TP_VERS_ID'
        DataType = ftInteger
        Precision = 15
      end
      item
        Name = 'NAME_FILE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 500
      end
      item
        Name = 'COMMENT_FILE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 500
      end
      item
        Name = 'RAZRAB'
        Attributes = [faRequired]
        DataType = ftInteger
        Precision = 15
      end
      item
        Name = 'RAZRAB_NAME'
        DataType = ftString
        Size = 26
      end
      item
        Name = 'DATAIZM'
        DataType = ftDateTime
      end
      item
        Name = 'USER_ID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'OPER_NAME'
        DataType = ftString
        Size = 100
      end>
    FetchAllOnOpen = True
    IndexDefs = <>
    Params = <>
    DataDriver = Driver_Oper_Files
    StoreDefs = True
    Left = 920
    Top = 296
    object MemT_Oper_FilesID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Oper_FilesRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Oper_FilesRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Oper_FilesRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Oper_FilesID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
      Required = True
    end
    object MemT_Oper_FilesID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
    end
    object MemT_Oper_FilesDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Oper_FilesNAME_FILE: TStringField
      FieldName = 'NAME_FILE'
      Required = True
      Size = 500
    end
    object MemT_Oper_FilesCOMMENT_FILE: TStringField
      FieldName = 'COMMENT_FILE'
      Required = True
      Size = 500
    end
    object MemT_Oper_FilesRAZRAB: TIntegerField
      FieldName = 'RAZRAB'
      Required = True
    end
    object MemT_Oper_FilesRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object MemT_Oper_FilesDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
    end
    object MemT_Oper_FilesUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
    object MemT_Oper_FilesOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
  end
  object Db_Doc_Info: TOracleDataSet
    SQL.Strings = (
      'Select t.*,'
      '       ( Case'
      '            When t.Main_Doc_Id Is Null'
      '            Then t.Id'
      '            Else t.Main_Doc_Id'
      '          End ) Linked_Doc_Id,'
      '       ( Case'
      '            When t.Main_Doc_Id Is Null'
      '            Then t.Id_Vers'
      '            Else m_d.Id_Vers'
      '          End ) Linked_Doc_Id_Vers,'
      '       ( Case'
      '            When t.Main_Doc_Id Is Null'
      '            Then t.Doc_Header_Id'
      '            Else m_d.Doc_Header_Id'
      '          End ) Linked_Doc_Header_Id,'
      
        '       Ogt.Pkg_Tp_Doc.F_Get_Doc_Edit_Status(in_doc_header_id => ' +
        't.Doc_Header_Id,'
      
        '                                            v_user_lnum => Null)' +
        ' Doc_Edit_Stat,'
      '       (Case'
      '          When prnt.Id is Null'
      '          Then t.id '
      '          Else prnt.Id'
      '        End) Parent_Id_Doc,       '
      '       (Case'
      '          When prnt.Id_Vers is Null'
      '          Then t.id_vers'
      '          Else prnt.Id_vers'
      '        End) Parent_Id_Vers'
      'From   Ogt.v_Spr_Tp_Doc t'
      'Left   Join Ogt.V_Spr_Tp_Doc prnt'
      'On     prnt.Doc_Header_Id = t.Parent_Doc_Id'
      'Left   Join Ogt.V_Spr_Tp_doc_Actual m_d'
      'On     m_d.Id = t.main_doc_Id'
      'Left   Join Ogt.Spr_Det_Txt Det'
      'On     Det.Id = t.Det_Id  '
      'Where  t.Doc_Header_Id = :In_Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000220000003A0049004E005F0044004F0043005F0048004500
      41004400450052005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000003000000004000000490044000100000000000E00000044004F004300
      5F004E0055004D000100000000001200000044004F0043005F004C0049005400
      450052000100000000001000000044004F0043005F0054005900500045000100
      000000000C000000540050005F004E0055004D000100000000000E0000005400
      50005F004E0041004D00450001000000000018000000540050005F0057004F00
      52004B005F00540059005000450001000000000022000000540050005F005700
      4F0052004B005F0054005900500045005F004E0041004D004500010000000000
      0C00000049005A0044005F00490044000100000000001000000049005A004400
      5F004E0041004D0045000100000000001000000049005A0044005F0054005900
      500045000100000000001600000043004F004D0050004C004500430054005F00
      490044000100000000000E000000540050005F00540059005000450001000000
      00001000000046004C00410047005F0049004D0050000100000000000C000000
      4400450054005F00490044000100000000000E0000004400450054005F004E00
      55004D00010000000000100000004400450054005F004E0041004D0045000100
      000000000E0000004400450054005F004D00410052000100000000000C000000
      4300450048005F0049004400010000000000100000004300450048005F004300
      4F00440045000100000000001600000041005500540048004F0052005F004C00
      4E0055004D000100000000001600000041005500540048004F0052005F004E00
      41004D0045000100000000001000000044004100540041005F00520045004700
      0100000000000C00000052004500410053004F004E000100000000001A000000
      430041004E00430045004C005F0044004F0043005F0049004400010000000000
      160000004D00410049004E005F0044004F0043005F0049004400010000000000
      16000000430041004E00430045004C005F0046004C0041004700010000000000
      1A0000004300450048005F0044004F00430053005F0046004C00410047000100
      000000000E0000004100430054005F004E0055004D0001000000000010000000
      4100430054005F0044004100540045000100000000001A00000044004F004300
      5F004800450041004400450052005F00490044000100000000000E0000004500
      4D00500053005F004900440001000000000018000000500052004F004A004500
      430054005F0046004C0041004700010000000000160000005500530045005200
      5F0049004E005300450052005400010000000000160000004400410054004500
      5F0049004E005300450052005400010000000000160000005500530045005200
      5F004300480041004E0047004500010000000000160000004400410054004100
      5F004300480041004E00470045000100000000001A0000004C0049004E004B00
      450044005F0044004F0043005F00490044000100000000001A00000044004F00
      43005F0045004400490054005F0053005400410054000100000000000E000000
      490044005F00560045005200530001000000000016000000490044005F004400
      4F0043005F00460055004C004C00010000000000220000004400410054004500
      5F00530054004100520054005F0041004300540049004F004E00010000000000
      1E00000044004100540045005F0045004E0044005F0041004300540049004F00
      4E00010000000000240000004C0049004E004B00450044005F0044004F004300
      5F00490044005F0056004500520053000100000000001A000000500041005200
      45004E0054005F0044004F0043005F00490044000100000000001A0000005000
      4100520045004E0054005F00490044005F0044004F0043000100000000001C00
      000050004100520045004E0054005F00490044005F0056004500520053000100
      00000000280000004C0049004E004B00450044005F0044004F0043005F004800
      450041004400450052005F0049004400010000000000}
    Session = DM_Main.Session
    Left = 679
    Top = 216
    object Db_Doc_InfoID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Doc_InfoDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_Doc_InfoDOC_LITER: TStringField
      FieldName = 'DOC_LITER'
      Size = 2
    end
    object Db_Doc_InfoDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_Doc_InfoTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object Db_Doc_InfoTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object Db_Doc_InfoTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object Db_Doc_InfoTP_WORK_TYPE_NAME: TStringField
      FieldName = 'TP_WORK_TYPE_NAME'
      Size = 103
    end
    object Db_Doc_InfoIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object Db_Doc_InfoIZD_NAME: TStringField
      FieldName = 'IZD_NAME'
      Size = 50
    end
    object Db_Doc_InfoIZD_TYPE: TStringField
      FieldName = 'IZD_TYPE'
      Size = 100
    end
    object Db_Doc_InfoCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object Db_Doc_InfoTP_TYPE: TFloatField
      FieldName = 'TP_TYPE'
    end
    object Db_Doc_InfoFLAG_IMP: TFloatField
      FieldName = 'FLAG_IMP'
    end
    object Db_Doc_InfoDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Doc_InfoDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_Doc_InfoDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_Doc_InfoDET_MAR: TStringField
      FieldName = 'DET_MAR'
      Size = 100
    end
    object Db_Doc_InfoCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Doc_InfoCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Doc_InfoAUTHOR_LNUM: TFloatField
      FieldName = 'AUTHOR_LNUM'
      Required = True
    end
    object Db_Doc_InfoAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object Db_Doc_InfoDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object Db_Doc_InfoREASON: TStringField
      FieldName = 'REASON'
      Size = 1000
    end
    object Db_Doc_InfoCANCEL_DOC_ID: TFloatField
      FieldName = 'CANCEL_DOC_ID'
    end
    object Db_Doc_InfoMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Doc_InfoCANCEL_FLAG: TFloatField
      FieldName = 'CANCEL_FLAG'
    end
    object Db_Doc_InfoCEH_DOCS_FLAG: TFloatField
      FieldName = 'CEH_DOCS_FLAG'
    end
    object Db_Doc_InfoACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
    end
    object Db_Doc_InfoACT_DATE: TDateTimeField
      FieldName = 'ACT_DATE'
    end
    object Db_Doc_InfoDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Doc_InfoEMPS_ID: TStringField
      FieldName = 'EMPS_ID'
      Size = 30
    end
    object Db_Doc_InfoPROJECT_FLAG: TIntegerField
      FieldName = 'PROJECT_FLAG'
    end
    object Db_Doc_InfoUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Doc_InfoDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Doc_InfoUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Doc_InfoDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object Db_Doc_InfoLINKED_DOC_ID: TFloatField
      FieldName = 'LINKED_DOC_ID'
    end
    object Db_Doc_InfoDOC_EDIT_STAT: TStringField
      FieldName = 'DOC_EDIT_STAT'
      Size = 4000
    end
    object Db_Doc_InfoID_VERS: TIntegerField
      FieldName = 'ID_VERS'
      Required = True
    end
    object Db_Doc_InfoID_DOC_FULL: TStringField
      FieldName = 'ID_DOC_FULL'
      Size = 14
    end
    object Db_Doc_InfoDATE_START_ACTION: TDateTimeField
      FieldName = 'DATE_START_ACTION'
    end
    object Db_Doc_InfoDATE_END_ACTION: TDateTimeField
      FieldName = 'DATE_END_ACTION'
    end
    object Db_Doc_InfoLINKED_DOC_ID_VERS: TFloatField
      FieldName = 'LINKED_DOC_ID_VERS'
    end
    object Db_Doc_InfoPARENT_DOC_ID: TIntegerField
      FieldName = 'PARENT_DOC_ID'
    end
    object Db_Doc_InfoPARENT_ID_DOC: TFloatField
      FieldName = 'PARENT_ID_DOC'
    end
    object Db_Doc_InfoPARENT_ID_VERS: TFloatField
      FieldName = 'PARENT_ID_VERS'
    end
    object Db_Doc_InfoLINKED_DOC_HEADER_ID: TFloatField
      FieldName = 'LINKED_DOC_HEADER_ID'
    end
  end
end
