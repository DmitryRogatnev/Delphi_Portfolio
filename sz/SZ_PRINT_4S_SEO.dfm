object Form29: TForm29
  Left = 0
  Top = 0
  Caption = 'Form29'
  ClientHeight = 255
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43826.365928877300000000
    ReportOptions.LastChange = 43826.365928877300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 312
    Top = 24
    Datasets = <
      item
        DataSet = DATA_COMM
        DataSetName = 'DATA_COMM'
      end
      item
        DataSet = frx_CONTENT
        DataSetName = 'frx_CONTENT'
      end
      item
        DataSet = frxDB_MAIN
        DataSetName = 'frxDB_MAIN'
      end
      item
        DataSet = frxDB_NACH
        DataSetName = 'frxDB_NACH'
      end
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxDB_SZ_IMP'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDB_USER'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 442.205010000000000000
        Width = 718.110700000000000000
        DataSet = frx_CONTENT
        DataSetName = 'frx_CONTENT'
        RowCount = 0
        Stretched = True
        object Memo13: TfrxMemoView
          Left = 41.574830000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SZ_NAME_OB'
          DataSet = frx_CONTENT
          DataSetName = 'frx_CONTENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_CONTENT."SZ_NAME_OB"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 230.551330000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SZ_IBYAL_OB'
          DataSet = frx_CONTENT
          DataSetName = 'frx_CONTENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_CONTENT."SZ_IBYAL_OB"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 404.409710000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SZ_COST'
          DataSet = frx_CONTENT
          DataSetName = 'frx_CONTENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_CONTENT."SZ_COST"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 514.016080000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NDS_COST'
          DataSet = frx_CONTENT
          DataSetName = 'frx_CONTENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_CONTENT."NDS_COST"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SZ_COST_W_NDS'
          DataSet = frx_CONTENT
          DataSetName = 'frx_CONTENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_CONTENT."SZ_COST_W_NDS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ID_STR'
          DataSet = frx_CONTENT
          DataSetName = 'frx_CONTENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_CONTENT."ID_STR"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 249.448980000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Top = 132.283550000000000000
          Width = 721.890230000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1083#1091#1078#1077#1073#1085#1072#1103' '#1079#1072#1087#1080#1089#1082#1072' '#8470'38/[frxDB_MAIN."SZ_NUMB"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 204.094620000000000000
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '      '#1042' '#1086#1090#1074#1077#1090' '#1085#1072' '#1042#1072#1096#1080' '#1089#1083#1091#1078#1077#1073#1085#1099#1077' '#1079#1072#1087#1080#1089#1082#1080' '#8470#1047#1057'-33/[frxDB_SZ_IMP."SZ' +
              '_IMP_LIST"] '#1089#1086#1086#1073#1097#1072#1077#1084' '#1042#1072#1084' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1072' '#1089#1083#1077#1076#1091#1102#1097#1080#1077' '#1080#1079#1076#1077#1083#1080#1103':')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 158.740260000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1090' [frxDB_MAIN."SZ_DATE"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 377.953000000000000000
          Top = 18.897650000000000000
          Width = 321.259903540000000000
          Height = 56.692950000000000000
          StretchMode = smActualHeight
          DataField = 'SZ_TO'
          DataSet = frxDB_MAIN
          DataSetName = 'frxDB_MAIN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB_MAIN."SZ_TO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 634.961040000000000000
        Width = 718.110700000000000000
        object Memo29: TfrxMemoView
          Width = 449.764070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1048#1089#1087'.: [frxDB_MAIN."CONTACT"] '#1090#1077#1083'.: [frxDB_USER."PHONE"]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 41.574830000000000000
          Top = 26.456709999999870000
          Width = 188.976500000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 230.551330000000000000
          Top = 26.456709999999870000
          Width = 173.858380000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1093#1085#1080#1095#1077#1089#1082#1072#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 404.409710000000000000
          Top = 26.456709999999870000
          Width = 109.606370000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1090#1086#1074#1072#1103' '#1094#1077#1085#1072' '#1073#1077#1079' '#1053#1044#1057', '#1088#1091#1073'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 514.016080000000000000
          Top = 26.456709999999870000
          Width = 90.708720000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1044#1057', '#1088#1091#1073'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 604.724800000000000000
          Top = 26.456709999999870000
          Width = 113.385900000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1090#1086#1074#1072#1103' '#1094#1077#1085#1072' '#1089' '#1053#1044#1057', '#1088#1091#1073'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 26.456709999999870000
          Width = 41.574830000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDB_MAINSZ_ADD: TfrxMemoView
          Left = 317.480520000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxDB_MAIN
          DataSetName = 'frxDB_MAIN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB_MAIN."SZ_ADD"] [frxDB_MAIN."SZ_DATA_CENY"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 483.779840000000000000
        Width = 718.110700000000000000
        Stretched = True
        object frxDB_NACHDOLZ: TfrxMemoView
          Top = 49.133890000000010000
          Width = 279.685220000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'PROF'
          DataSet = frxDB_NACH
          DataSetName = 'frxDB_NACH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDB_NACH."PROF"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Line1: TfrxLineView
          Align = baBottom
          Left = 279.685220000000000000
          Top = 90.708720000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Diagonal = True
        end
        object frxDB_NACHFIO: TfrxMemoView
          Left = 510.236550000000000000
          Top = 49.811070000000030000
          Width = 207.874150000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataField = 'FIO'
          DataSet = frxDB_NACH
          DataSetName = 'frxDB_NACH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB_NACH."FIO"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo55: TfrxMemoView
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080)
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = -3.779530000000000000
          Top = 34.015770000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 86.929190000000000000
        Width = 718.110700000000000000
        DataSet = DATA_COMM
        DataSetName = 'DATA_COMM'
        RowCount = 0
        Stretched = True
        object DATA_COMMRWN: TfrxMemoView
          Left = 113.385900000000000000
          Width = 457.323130000000000000
          Height = 41.574830000000000000
          StretchMode = smMaxHeight
          DataField = 'COMMENT_TEXT'
          DataSet = DATA_COMM
          DataSetName = 'DATA_COMM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[DATA_COMM."COMMENT_TEXT"]')
          ParentFont = False
        end
        object DATA_COMMFIO: TfrxMemoView
          Left = 570.709030000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'AVTOR'
          DataSet = DATA_COMM
          DataSetName = 'DATA_COMM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[DATA_COMM."AVTOR"]')
          ParentFont = False
        end
        object DATA_COMMDATA_COMM: TfrxMemoView
          Left = 570.709030000000000000
          Top = 22.677180000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'DATA_COMM'
          DataSet = DATA_COMM
          DataSetName = 'DATA_COMM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[DATA_COMM."DATA_COMM"]')
          ParentFont = False
        end
        object DATA_COMMUSER_TYPE: TfrxMemoView
          Width = 113.385900000000000000
          Height = 41.574830000000000000
          DataField = 'USER_TYPE'
          DataSet = DATA_COMM
          DataSetName = 'DATA_COMM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[DATA_COMM."USER_TYPE"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDB_USER'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'SURNAME=SURNAME'
      'NAME=NAME'
      'PATRONYMIC=PATRONYMIC'
      'PASSWORD=PASSWORD'
      'ID_TYPE_USERS=ID_TYPE_USERS'
      'ID_TYPE_OTDEL=ID_TYPE_OTDEL'
      'STATUS=STATUS'
      'HEADS=HEADS'
      'SIGNBMP=SIGNBMP'
      'SIGNBMP1=SIGNBMP1'
      'PHONE=PHONE')
    DataSet = DS_USER
    BCDToCurrency = False
    Left = 288
    Top = 192
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDB_SZ_IMP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SZ_IMP_LIST=SZ_IMP_LIST')
    DataSet = DS_SZ_IMP
    BCDToCurrency = False
    Left = 352
    Top = 192
  end
  object DS_USER: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from mrk.SZ_USERS t'
      'where Id = :sz_id_cont')
    Optimize = False
    Variables.Data = {
      0400000001000000160000003A0053005A005F00490044005F0043004F004E00
      5400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001000000004000000490044000100000000000E000000530055005200
      4E0041004D004500010000000000080000004E0041004D004500010000000000
      1400000050004100540052004F004E0059004D00490043000100000000001000
      0000500041005300530057004F00520044000100000000001A00000049004400
      5F0054005900500045005F00550053004500520053000100000000001A000000
      490044005F0054005900500045005F004F005400440045004C00010000000000
      0C0000005300540041005400550053000100000000000A000000480045004100
      440053000100000000000E0000005300490047004E0042004D00500000000000
      0000100000005300490047004E0042004D00500031000000000000000A000000
      500048004F004E0045000100000000001600000055005300450052005F004F00
      4E004C0049004E0045000100000000001400000045004E005400450052005F00
      44004100540045000100000000001400000055005300450052005F0041004400
      4D0049004E00010000000000120000004100550054004F005F004C004F004100
      4400010000000000}
    Master = INFO_MAIN
    MasterFields = 'sz_id_cont'
    Session = Form20.OracleSession1
    Left = 288
    Top = 128
    object DS_USERID: TFloatField
      FieldName = 'ID'
    end
    object DS_USERSURNAME: TStringField
      FieldName = 'SURNAME'
      Size = 50
    end
    object DS_USERNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object DS_USERPATRONYMIC: TStringField
      FieldName = 'PATRONYMIC'
      Size = 50
    end
    object DS_USERPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Size = 50
    end
    object DS_USERID_TYPE_USERS: TIntegerField
      FieldName = 'ID_TYPE_USERS'
    end
    object DS_USERID_TYPE_OTDEL: TIntegerField
      FieldName = 'ID_TYPE_OTDEL'
    end
    object DS_USERSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object DS_USERHEADS: TIntegerField
      FieldName = 'HEADS'
    end
    object DS_USERSIGNBMP: TBlobField
      FieldName = 'SIGNBMP'
      BlobType = ftOraBlob
    end
    object DS_USERSIGNBMP1: TBlobField
      FieldName = 'SIGNBMP1'
      BlobType = ftOraBlob
    end
    object DS_USERPHONE: TStringField
      FieldName = 'PHONE'
    end
  end
  object DS_SZ_IMP: TOracleDataSet
    SQL.Strings = (
      
        'select (sz_package.Get_SZ_List_by_ID (v_id_sz => :sz_id)) as SZ_' +
        'IMP_LIST from dual'
      '')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000010000001600000053005A005F0049004D0050005F004C0049005300
      5400010000000000}
    Master = INFO_MAIN
    MasterFields = 'SZ_ID'
    Session = Form20.OracleSession1
    Left = 352
    Top = 128
    object DS_SZ_IMPSZ_IMP_LIST: TStringField
      FieldName = 'SZ_IMP_LIST'
      Size = 4000
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 24
    Top = 72
  end
  object OraclePackage1: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 128
    Top = 16
  end
  object OraclePackage2: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_ENTER'
    Left = 224
    Top = 16
  end
  object Content: TOracleDataSet
    SQL.Strings = (
      'select t.*,'
      
        '       (t.sz_cost * (t.sz_Nds/100)) Nds_Cost from mrk.SZ_SEO_CON' +
        'TENT t where t.sz_id = :sz_id'
      'order by t.id_str')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000120000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F004E0041004D0045005F004F0042000100000000001600000053005A005F00
      49004200590041004C005F004F0042000100000000001A00000053005A005F00
      43004F00530054005F0057005F004E00440053000100000000000C0000005300
      5A005F004E00440053000100000000000E00000053005A005F0043004F005300
      54000100000000000E000000490044005F0043004F004E005400010000000000
      0C000000490044005F005300540052000100000000001600000053005A005F00
      49004D0050005F004E0055004D0042000100000000001600000053005A005F00
      49004D0050005F0044004100540045000100000000001400000053005A005F00
      43004F00440045005F004F0042000100000000001800000053005A005F004400
      4100540045005F0043004F00530054000100000000000A00000053005A005F00
      490044000100000000001200000053005A005F0049004D0050005F0049004400
      0100000000000400000049004400010000000000160000004400410054004500
      5F004300480041004E0047004500010000000000100000004E00440053005F00
      43004F0053005400010000000000}
    Master = INFO_MAIN
    MasterFields = 'SZ_ID'
    Session = Form20.OracleSession1
    Left = 88
    Top = 128
    object ContentSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object ContentSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object ContentSZ_NAME_OB: TStringField
      FieldName = 'SZ_NAME_OB'
      Size = 1000
    end
    object ContentSZ_IBYAL_OB: TStringField
      FieldName = 'SZ_IBYAL_OB'
      Size = 1000
    end
    object ContentSZ_COST_W_NDS: TFloatField
      FieldName = 'SZ_COST_W_NDS'
    end
    object ContentSZ_NDS: TFloatField
      FieldName = 'SZ_NDS'
    end
    object ContentSZ_COST: TFloatField
      FieldName = 'SZ_COST'
    end
    object ContentID_CONT: TFloatField
      FieldName = 'ID_CONT'
    end
    object ContentID_STR: TFloatField
      FieldName = 'ID_STR'
    end
    object ContentSZ_IMP_NUMB: TFloatField
      FieldName = 'SZ_IMP_NUMB'
    end
    object ContentSZ_IMP_DATE: TDateTimeField
      FieldName = 'SZ_IMP_DATE'
    end
    object ContentSZ_CODE_OB: TStringField
      FieldName = 'SZ_CODE_OB'
      Size = 1000
    end
    object ContentSZ_DATE_COST: TDateTimeField
      FieldName = 'SZ_DATE_COST'
    end
    object ContentSZ_ID: TFloatField
      FieldName = 'SZ_ID'
    end
    object ContentSZ_IMP_ID: TFloatField
      FieldName = 'SZ_IMP_ID'
    end
    object ContentID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object ContentDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object ContentNDS_COST: TFloatField
      FieldName = 'NDS_COST'
    end
  end
  object frx_CONTENT: TfrxDBDataset
    UserName = 'frx_CONTENT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SZ_NUMB=SZ_NUMB'
      'SZ_DATE=SZ_DATE'
      'SZ_NAME_OB=SZ_NAME_OB'
      'SZ_IBYAL_OB=SZ_IBYAL_OB'
      'SZ_COST_W_NDS=SZ_COST_W_NDS'
      'SZ_NDS=SZ_NDS'
      'SZ_COST=SZ_COST'
      'ID_CONT=ID_CONT'
      'ID_STR=ID_STR'
      'SZ_IMP_NUMB=SZ_IMP_NUMB'
      'SZ_IMP_DATE=SZ_IMP_DATE'
      'SZ_CODE_OB=SZ_CODE_OB'
      'SZ_DATE_COST=SZ_DATE_COST'
      'SZ_ID=SZ_ID'
      'SZ_IMP_ID=SZ_IMP_ID'
      'ID=ID'
      'DATE_CHANGE=DATE_CHANGE'
      'NDS_COST=NDS_COST')
    DataSet = Content
    BCDToCurrency = False
    Left = 80
    Top = 192
  end
  object DB_COMM: TOracleDataSet
    SQL.Strings = (
      'select avtor,'
      '('#39'('#39'||t.comment_date_||'#39')'#39') as Data_comm,'
      't.comment_text,'
      ' (case'
      '   when t.sz_type_user = 3 then '#39#1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100#39' '
      
        '   when t.sz_type_user = 2 and t.user_otdel = 38 then '#39#1053#1072#1095#1072#1083#1100#1085#1080#1082 +
        ' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103#39' '
      
        '   when t.sz_type_user = 2 and t.user_otdel = 33 then '#39#1053#1072#1095#1072#1083#1100#1085#1080#1082 +
        ' '#1086#1090#1076#1077#1083#1072' '#1087#1088#1086#1076#1072#1078#39' '
      ' end) as User_Type,'
      'rownum as rwn'
      ' from V$SZ_COMMENTARY_ALL t '
      'where t.sz_id = :sz_id'
      'and t.otdel_type = 2'
      'order by t.id_str')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000050000001200000044004100540041005F0043004F004D004D000100
      000000001200000055005300450052005F005400590050004500010000000000
      06000000520057004E000100000000000A0000004100560054004F0052000100
      000000001800000043004F004D004D0045004E0054005F005400450058005400
      010000000000}
    Master = INFO_MAIN
    MasterFields = 'SZ_ID'
    Session = Form20.OracleSession1
    Left = 24
    Top = 128
    object DB_COMMUSER_TYPE: TStringField
      FieldName = 'USER_TYPE'
      Size = 35
    end
    object DB_COMMRWN: TFloatField
      FieldName = 'RWN'
    end
    object DB_COMMAVTOR: TStringField
      FieldName = 'AVTOR'
      Size = 4000
    end
    object DB_COMMCOMMENT_TEXT: TStringField
      FieldName = 'COMMENT_TEXT'
      Size = 4000
    end
    object DB_COMMDATA_COMM: TStringField
      FieldName = 'DATA_COMM'
      Size = 1002
    end
  end
  object DATA_COMM: TfrxDBDataset
    UserName = 'DATA_COMM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'USER_TYPE=USER_TYPE'
      'RWN=RWN'
      'AVTOR=AVTOR'
      'COMMENT_TEXT=COMMENT_TEXT'
      'DATA_COMM=DATA_COMM')
    DataSet = DB_COMM
    BCDToCurrency = False
    Left = 16
    Top = 192
  end
  object INFO_MAIN: TOracleDataSet
    SQL.Strings = (
      
        'select t.*, (select distinct c.sz_date_cost from mrk.sz_seo_cont' +
        'ent c where c.sz_id = t.sz_id and c.sz_date_cost is not null) as' +
        ' SZ_DATA_COST from mrk.V$SZ_MAIN_SEO t'
      'where t.sz_id = :vId')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00560049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000190000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F00460052004F004D000100000000000A00000053005A00
      5F0054004F000100000000000E00000043004F004E0054004100430054000100
      000000000E00000053005A005F00440041005400450001000000000012000000
      53005A005F0043004F004E0054005F0059000100000000001C00000053005A00
      5F00460052004F004D005F0059005F0044004100540045000100000000001800
      000053005A005F0054004F005F0059005F004400410054004500010000000000
      1400000053005A005F00490044005F0043004F004E0054000100000000001800
      000053005A005F0043004F004E0044004900540049004F004E00010000000000
      0A00000053005A005F00490044000100000000000C00000053005A005F004100
      440044000100000000001800000053005A005F0044004100540041005F004300
      4F00530054000100000000000C00000053005400410054005500530001000000
      00001400000053005A005F00460052004F004D005F0049004400010000000000
      1C00000053005A005F0043004F004E0054005F0059005F004400410054004500
      0100000000001200000053005A005F00460052004F004D005F00590001000000
      00000E00000053005A005F0054004F005F005900010000000000100000005300
      5A005F0054004F005F00490044000100000000002000000053005A005F004600
      5200450045005F0046004F0052004D005F0054004F0050000100000000001800
      000053005A005F0046005200450045005F0046004F0052004D00010000000000
      1A00000053005A005F00500052004900430045005F0049004E00440046000100
      000000001800000053005A005F0041005300550050005F0049004E0044004600
      0100000000001800000053005A005F0044004100540041005F00430045004E00
      5900010000000000180000005300540041005400550053005F00560041004C00
      55004500010000000000}
    Session = Form20.OracleSession1
    Left = 160
    Top = 128
    object INFO_MAINSZ_ID: TFloatField
      FieldName = 'SZ_ID'
      Required = True
    end
    object INFO_MAINSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object INFO_MAINSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object INFO_MAINCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 1000
    end
    object INFO_MAINSZ_CONDITION: TFloatField
      FieldName = 'SZ_CONDITION'
    end
    object INFO_MAINSZ_ID_CONT: TFloatField
      FieldName = 'SZ_ID_CONT'
    end
    object INFO_MAINSZ_CONT_Y: TFloatField
      FieldName = 'SZ_CONT_Y'
    end
    object INFO_MAINSZ_CONT_Y_DATE: TDateTimeField
      FieldName = 'SZ_CONT_Y_DATE'
    end
    object INFO_MAINSZ_FROM_Y: TFloatField
      FieldName = 'SZ_FROM_Y'
    end
    object INFO_MAINSZ_FROM: TStringField
      FieldName = 'SZ_FROM'
      Size = 4000
    end
    object INFO_MAINSZ_FROM_Y_DATE: TDateTimeField
      FieldName = 'SZ_FROM_Y_DATE'
    end
    object INFO_MAINSZ_FROM_ID: TFloatField
      FieldName = 'SZ_FROM_ID'
    end
    object INFO_MAINSZ_TO_Y: TFloatField
      FieldName = 'SZ_TO_Y'
    end
    object INFO_MAINSZ_TO: TStringField
      FieldName = 'SZ_TO'
      Size = 4000
    end
    object INFO_MAINSZ_TO_Y_DATE: TDateTimeField
      FieldName = 'SZ_TO_Y_DATE'
    end
    object INFO_MAINSZ_TO_ID: TFloatField
      FieldName = 'SZ_TO_ID'
    end
    object INFO_MAINSZ_ADD: TStringField
      FieldName = 'SZ_ADD'
      Size = 1000
    end
    object INFO_MAINSZ_FREE_FORM_TOP: TStringField
      FieldName = 'SZ_FREE_FORM_TOP'
      Size = 4000
    end
    object INFO_MAINSZ_FREE_FORM: TFloatField
      FieldName = 'SZ_FREE_FORM'
    end
    object INFO_MAINSZ_PRICE_INDF: TFloatField
      FieldName = 'SZ_PRICE_INDF'
    end
    object INFO_MAINSZ_ASUP_INDF: TFloatField
      FieldName = 'SZ_ASUP_INDF'
    end
    object INFO_MAINSZ_DATA_CENY: TDateTimeField
      FieldName = 'SZ_DATA_CENY'
    end
    object INFO_MAINSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 72
    end
    object INFO_MAINSTATUS_VALUE: TFloatField
      FieldName = 'STATUS_VALUE'
    end
    object INFO_MAINSZ_DATA_COST: TDateTimeField
      FieldName = 'SZ_DATA_COST'
    end
  end
  object frxDB_MAIN: TfrxDBDataset
    UserName = 'frxDB_MAIN'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SZ_ID=SZ_ID'
      'SZ_NUMB=SZ_NUMB'
      'SZ_DATE=SZ_DATE'
      'CONTACT=CONTACT'
      'SZ_CONDITION=SZ_CONDITION'
      'SZ_ID_CONT=SZ_ID_CONT'
      'SZ_CONT_Y=SZ_CONT_Y'
      'SZ_CONT_Y_DATE=SZ_CONT_Y_DATE'
      'SZ_FROM_Y=SZ_FROM_Y'
      'SZ_FROM=SZ_FROM'
      'SZ_FROM_Y_DATE=SZ_FROM_Y_DATE'
      'SZ_FROM_ID=SZ_FROM_ID'
      'SZ_TO_Y=SZ_TO_Y'
      'SZ_TO=SZ_TO'
      'SZ_TO_Y_DATE=SZ_TO_Y_DATE'
      'SZ_TO_ID=SZ_TO_ID'
      'SZ_ADD=SZ_ADD'
      'SZ_FREE_FORM_TOP=SZ_FREE_FORM_TOP'
      'SZ_FREE_FORM=SZ_FREE_FORM'
      'SZ_PRICE_INDF=SZ_PRICE_INDF'
      'SZ_ASUP_INDF=SZ_ASUP_INDF'
      'SZ_DATA_CENY=SZ_DATA_CENY'
      'STATUS=STATUS'
      'STATUS_VALUE=STATUS_VALUE'
      'SZ_DATA_COST=SZ_DATA_COST')
    DataSet = INFO_MAIN
    BCDToCurrency = False
    Left = 152
    Top = 192
  end
  object DS_NACH: TOracleDataSet
    SQL.Strings = (
      'select t.prof , t.FIO '
      '  from mrk.V$SZ_HEADS_ALL t'
      ' where t.id = :sz_from_id')
    Optimize = False
    Variables.Data = {
      0400000001000000160000003A0053005A005F00460052004F004D005F004900
      4400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000200000006000000460049004F000100000000000800000050005200
      4F004600010000000000}
    Master = INFO_MAIN
    MasterFields = 'SZ_FROM_ID'
    Session = Form20.OracleSession1
    Left = 224
    Top = 128
    object DS_NACHPROF: TStringField
      FieldName = 'PROF'
      Size = 4000
    end
    object DS_NACHFIO: TStringField
      FieldName = 'FIO'
      Size = 55
    end
  end
  object frxDB_NACH: TfrxDBDataset
    UserName = 'frxDB_NACH'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PROF=PROF'
      'FIO=FIO')
    DataSet = DS_NACH
    BCDToCurrency = False
    Left = 224
    Top = 192
  end
end
