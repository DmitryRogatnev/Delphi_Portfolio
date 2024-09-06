object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Form16'
  ClientHeight = 261
  ClientWidth = 566
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
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
    ReportOptions.LastChange = 44078.633152118100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 344
    Top = 24
    Datasets = <
      item
        DataSet = DATA_COMM
        DataSetName = 'DATA_COMM'
      end
      item
        DataSet = Data_Sz_Appr_Steps
        DataSetName = 'Data_Sz_Appr_Steps'
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
        DataSet = frxDB_USER
        DataSetName = 'frxDB_USER'
      end
      item
        DataSet = frxDBCONTENT
        DataSetName = 'frxDBCONTENT'
      end
      item
        DataSet = SIGN_IMAGES_DATA
        DataSetName = 'SIGN_IMAGES_DATA'
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
        Height = 37.795300000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        Child = frxReport1.Child2
        DataSet = frxDBCONTENT
        DataSetName = 'frxDBCONTENT'
        RowCount = 0
        Stretched = True
        object Memo22: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000022000
          Width = 680.315400000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCONTENT
          DataSetName = 'frxDBCONTENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Highlight.ApplyFill = False
          Highlight.Font.Charset = RUSSIAN_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -19
          Highlight.Font.Name = 'Times New Roman'
          Highlight.Font.Style = [fsItalic]
          Highlight.Condition = '<frxDBCONTENT."SZ_CHECK"> = 0'
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            
              '[frxDBCONTENT."ID_STR"]. [frxDBCONTENT."SZ_NAME_OB"] [frxDBCONTE' +
              'NT."SZ_IBYAL_OB"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 222.992270000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Child = frxReport1.Child1
        Stretched = True
        object Memo5: TfrxMemoView
          Left = 26.456710000000000000
          Top = 71.811070000000000000
          Width = 691.653990000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1050#1086#1084#1091': [frxDB_MAIN."SZ_TO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 18.897650000000000000
          Top = 109.606370000000000000
          Width = 699.213050000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1050#1086#1087#1080#1103': [frxDB_MAIN."SZ_COPY"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 49.133890000000000000
          Top = 147.401670000000000000
          Width = 668.976810000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1054#1090': [frxDB_MAIN."SZ_FROM"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 30.236240000000000000
          Top = 185.196970000000000000
          Width = 687.874460000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            #1058#1077#1084#1072': [frxDB_MAIN."SZ_TEMA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1057#1083#1091#1078#1077#1073#1085#1072#1103' '#1079#1072#1087#1080#1089#1082#1072' '#8470' '#1047#1057'-33/[frxDB_MAIN."SZ_NUMB"] '#1086#1090' [frxDB_MAIN.' +
              '"SZ_DATE"]')
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
        Height = 79.370130000000000000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Picture5: TfrxPictureView
          Align = baBottom
          ShiftMode = smWhenOverlapped
          Left = 323.149815000000000000
          Top = 7.559059999999999000
          Width = 154.960730000000000000
          Height = 71.811070000000000000
          Center = True
          DataField = 'FROM_SIGN'
          DataSet = SIGN_IMAGES_DATA
          DataSetName = 'SIGN_IMAGES_DATA'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo16: TfrxMemoView
          ShiftMode = smDontShift
          Top = 42.252010000000040000
          Width = 283.464505910000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
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
          Formats = <
            item
            end
            item
            end>
        end
        object frxDB_NACHFIO: TfrxMemoView
          Left = 517.795610000000000000
          Top = 41.574829999999900000
          Width = 200.315090000000000000
          Height = 22.677165350000000000
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
        object Line2: TfrxLineView
          Align = baBottom
          Left = 291.023810000000000000
          Top = 79.370130000000000000
          Width = 219.212740000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Header5: TfrxHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Top = 22.677180000000020000
          Width = 680.315400000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1088#1086#1096#1091' '#1089#1086#1086#1073#1097#1080#1090#1100' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103':')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 857.953310000000000000
        Width = 718.110700000000000000
        object Memo27: TfrxMemoView
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1048#1089#1087'.: [frxDB_MAIN."CONTACT"] '#1090#1077#1083'.: [frxDB_USER."PHONE"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 619.842920000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Top = 64.252010000000040000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1086':')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 740.787880000000000000
        Width = 718.110700000000000000
        DataSet = Data_Sz_Appr_Steps
        DataSetName = 'Data_Sz_Appr_Steps'
        RowCount = 0
        object Picture1: TfrxPictureView
          Left = 151.181200000000000000
          Width = 113.385900000000000000
          Height = 56.692950000000000000
          Center = True
          DataField = 'RAZRAB_SIGN'
          DataSet = Data_Sz_Appr_Steps
          DataSetName = 'Data_Sz_Appr_Steps'
          HightQuality = True
          Transparent = True
          TransparentColor = clWhite
        end
        object Data_Sz_Appr_StepsAPPR_STEP_NAME: TfrxMemoView
          Left = 18.897650000000000000
          Top = 12.000000000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          DataField = 'APPR_STEP_NAME'
          DataSet = Data_Sz_Appr_Steps
          DataSetName = 'Data_Sz_Appr_Steps'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Data_Sz_Appr_Steps."APPR_STEP_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Data_Sz_Appr_StepsRAZRAB_NAME: TfrxMemoView
          Left = 264.567100000000000000
          Top = 12.000000000000000000
          Width = 151.181200000000000000
          Height = 30.236240000000000000
          DataField = 'RAZRAB_NAME'
          DataSet = Data_Sz_Appr_Steps
          DataSetName = 'Data_Sz_Appr_Steps'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Data_Sz_Appr_Steps."RAZRAB_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Data_Sz_Appr_StepsDATA_OUT: TfrxMemoView
          Left = 415.748300000000000000
          Top = 12.000000000000000000
          Width = 158.740260000000000000
          Height = 30.236240000000000000
          DataField = 'DATA_OUT'
          DataSet = Data_Sz_Appr_Steps
          DataSetName = 'Data_Sz_Appr_Steps'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Data_Sz_Appr_Steps."DATA_OUT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 162.519790000000000000
          Top = 12.000000000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 11.338590000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Top = 3.779530000000022000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        Stretched = True
        object frxDBCONTENTSZ_CHECKFLAG: TfrxMemoView
          Left = 37.795300000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SZ_CHECKFLAG'
          DataSet = frxDBCONTENT
          DataSetName = 'frxDBCONTENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'times New Roman'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[frxDBCONTENT."SZ_CHECKFLAG"]')
          ParentFont = False
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
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 79.370130000000000000
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo55: TfrxMemoView
          Top = 3.779529999999990000
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
      'SZ_KR=SZ_KR'
      'SZ_TEMA=SZ_TEMA'
      'SZ_ID_CONT=SZ_ID_CONT'
      'SZ_FROM=SZ_FROM'
      'SZ_TO=SZ_TO'
      'SZ_COPY=SZ_COPY'
      'STATUS=STATUS'
      'SZ_SEO_NUMB=SZ_SEO_NUMB'
      'SZ_SEO_DATE=SZ_SEO_DATE'
      'SZ_FROM_ID=SZ_FROM_ID'
      'SZ_FROM_Y_DATE=SZ_FROM_Y_DATE'
      'SZ_TO_Y_DATE=SZ_TO_Y_DATE'
      'SZ_COPY_Y_DATE=SZ_COPY_Y_DATE'
      'SZ_CONT_Y_DATE=SZ_CONT_Y_DATE')
    DataSet = INFO_MAIN
    BCDToCurrency = False
    Left = 168
    Top = 192
  end
  object frxDB_NACH: TfrxDBDataset
    UserName = 'frxDB_NACH'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PROF=PROF'
      'FIO=FIO')
    DataSet = DS_NACH
    BCDToCurrency = False
    Left = 248
    Top = 192
  end
  object frxDB_USER: TfrxDBDataset
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
    Left = 336
    Top = 192
  end
  object SIGN_IMAGES_DATA: TfrxDBDataset
    UserName = 'SIGN_IMAGES_DATA'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COPY_SIGN=COPY_SIGN'
      'FROM_SIGN=FROM_SIGN'
      'TO_SIGN=TO_SIGN'
      'AVTOR_SIGN=AVTOR_SIGN')
    DataSet = DB_SIGN_IMAGES
    BCDToCurrency = False
    Left = 424
    Top = 192
  end
  object frxDBCONTENT: TfrxDBDataset
    UserName = 'frxDBCONTENT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SZ_NUMB=SZ_NUMB'
      'SZ_DATE=SZ_DATE'
      'SZ_NAME_OB=SZ_NAME_OB'
      'SZ_IBYAL_OB=SZ_IBYAL_OB'
      'ID_CONT=ID_CONT'
      'ID_STR=ID_STR'
      'SZ_CHECK=SZ_CHECK'
      'SZ_CODE_OB=SZ_CODE_OB'
      'SZ_ID=SZ_ID'
      'DATE_CHANGE=DATE_CHANGE'
      'ID_POS=ID_POS'
      'USER_ID_INS=USER_ID_INS'
      'USER_ID_COR=USER_ID_COR'
      'DATE_INS=DATE_INS'
      'EMP_ID_INS=EMP_ID_INS'
      'EMP_ID_COR=EMP_ID_COR'
      'SZ_CHECKFLAG=SZ_CHECKFLAG')
    DataSet = Info_Content
    BCDToCurrency = False
    Left = 504
    Top = 192
  end
  object INFO_MAIN: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.v$sz_main_op t'
      'where t.sz_id = :vId')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00560049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000130000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F00460052004F004D000100000000000A00000053005A00
      5F0054004F000100000000000E00000043004F004E0054004100430054000100
      000000000E00000053005A005F0044004100540045000100000000000E000000
      53005A005F00540045004D0041000100000000000E00000053005A005F004300
      4F00500059000100000000001400000053005A005F00490044005F0043004F00
      4E0054000100000000001800000053005A005F0043004F004E00440049005400
      49004F004E000100000000001600000053005A005F00530045004F005F004E00
      55004D0042000100000000001600000053005A005F00530045004F005F004400
      4100540045000100000000000A00000053005A005F004B005200010000000000
      0A00000053005A005F00490044000100000000000C0000005300540041005400
      550053000100000000001400000053005A005F00460052004F004D005F004900
      44000100000000001C00000053005A005F00460052004F004D005F0059005F00
      44004100540045000100000000001800000053005A005F0054004F005F005900
      5F0044004100540045000100000000001C00000053005A005F0043004F005000
      59005F0059005F0044004100540045000100000000001C00000053005A005F00
      43004F004E0054005F0059005F004400410054004500010000000000}
    Session = Form20.OracleSession1
    Left = 168
    Top = 120
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
    object INFO_MAINSZ_KR: TFloatField
      FieldName = 'SZ_KR'
    end
    object INFO_MAINSZ_TEMA: TStringField
      FieldName = 'SZ_TEMA'
      Size = 1000
    end
    object INFO_MAINSZ_ID_CONT: TFloatField
      FieldName = 'SZ_ID_CONT'
    end
    object INFO_MAINSZ_FROM: TStringField
      FieldName = 'SZ_FROM'
      Size = 4000
    end
    object INFO_MAINSZ_TO: TStringField
      FieldName = 'SZ_TO'
      Size = 4000
    end
    object INFO_MAINSZ_COPY: TStringField
      FieldName = 'SZ_COPY'
      Size = 4000
    end
    object INFO_MAINSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 86
    end
    object INFO_MAINSZ_SEO_NUMB: TFloatField
      FieldName = 'SZ_SEO_NUMB'
    end
    object INFO_MAINSZ_SEO_DATE: TDateTimeField
      FieldName = 'SZ_SEO_DATE'
    end
    object INFO_MAINSZ_FROM_ID: TFloatField
      FieldName = 'SZ_FROM_ID'
    end
    object INFO_MAINSZ_FROM_Y_DATE: TDateTimeField
      FieldName = 'SZ_FROM_Y_DATE'
    end
    object INFO_MAINSZ_TO_Y_DATE: TDateTimeField
      FieldName = 'SZ_TO_Y_DATE'
    end
    object INFO_MAINSZ_COPY_Y_DATE: TDateTimeField
      FieldName = 'SZ_COPY_Y_DATE'
    end
    object INFO_MAINSZ_CONT_Y_DATE: TDateTimeField
      FieldName = 'SZ_CONT_Y_DATE'
    end
  end
  object DS_NACH: TOracleDataSet
    SQL.Strings = (
      'select t.prof ,t.fio'
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
    Left = 248
    Top = 120
    object DS_NACHPROF: TStringField
      FieldName = 'PROF'
      Size = 4000
    end
    object DS_NACHFIO: TStringField
      FieldName = 'FIO'
      Size = 55
    end
  end
  object DS_USER: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.SZ_USERS t'
      'where Id = :sz_id_cont')
    Optimize = False
    Variables.Data = {
      0400000001000000160000003A0053005A005F00490044005F0043004F004E00
      5400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000F00000004000000490044000100000000000E000000530055005200
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
      4D0049004E00010000000000}
    Master = INFO_MAIN
    MasterFields = 'SZ_ID_CONT'
    Session = Form20.OracleSession1
    Left = 336
    Top = 120
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
  object DB_SIGN_IMAGES: TOracleDataSet
    SQL.Strings = (
      'Select * from'
      '('
      ' Select '
      '  ( Select t.SIGNBMP '
      '    From   Mrk.SZ_USERS t'
      '    Where  User_Lnum = ( Select c.User_Lnum '
      '                         From   Mrk.Sz_Op_Appr c '
      '                         Where  c.Sz_Id = :sz_id'
      
        '                                And c.Id_Appr_Step = 3 ) ) as CO' +
        'PY_SIGN, '
      ' '
      '  ( Select t.SIGNBMP '
      '    From   Mrk.SZ_USERS t'
      '    Where  User_Lnum = ( Select c.User_Lnum '
      '                         From   Mrk.Sz_Op_Appr c '
      '                         Where  c.Sz_Id = :sz_id'
      
        '                                And c.Id_Appr_Step = 2 ) ) as FR' +
        'OM_SIGN,'
      ''
      '  ( Select t.SIGNBMP '
      '    From   Mrk.SZ_USERS t'
      '    Where  User_Lnum = ( Select c.User_Lnum '
      '                         From   Mrk.Sz_Op_Appr c '
      '                         Where  c.Sz_Id = :sz_id'
      
        '                                And c.Id_Appr_Step = 5 ) ) as TO' +
        '_SIGN,'
      ''
      '  ( Select t.SIGNBMP '
      '    From   Mrk.SZ_USERS t'
      '    Where  User_Lnum = ( Select c.User_Lnum '
      '                         From   Mrk.Sz_Op_Appr c '
      '                         Where  c.Sz_Id = :sz_id'
      
        '                                And c.Id_Appr_Step = 1 ) ) as AV' +
        'TOR_SIGN,  '
      '  '
      '  ( Select t.SIGNBMP '
      '    From   Mrk.SZ_USERS t'
      '    Where  User_Lnum = ( Select c.User_Lnum '
      '                         From   Mrk.Sz_Op_Appr c '
      '                         Where  c.Sz_Id = :sz_id'
      
        '                                And c.Id_Appr_Step = 4 ) ) as AS' +
        'UP_SIGN'
      ''
      'From dual'
      ')')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000001200000043004F00500059005F005300490047004E000000
      0000000012000000460052004F004D005F005300490047004E00000000000000
      0E00000054004F005F005300490047004E000000000000001400000041005600
      54004F0052005F005300490047004E00000000000000}
    Master = INFO_MAIN
    MasterFields = 'SZ_ID'
    Session = Form20.OracleSession1
    Left = 424
    Top = 120
    object DB_SIGN_IMAGESCOPY_SIGN: TBlobField
      FieldName = 'COPY_SIGN'
      BlobType = ftOraBlob
    end
    object DB_SIGN_IMAGESFROM_SIGN: TBlobField
      FieldName = 'FROM_SIGN'
      BlobType = ftOraBlob
    end
    object DB_SIGN_IMAGESTO_SIGN: TBlobField
      FieldName = 'TO_SIGN'
      BlobType = ftOraBlob
    end
    object DB_SIGN_IMAGESAVTOR_SIGN: TBlobField
      FieldName = 'AVTOR_SIGN'
      BlobType = ftOraBlob
    end
  end
  object Info_Content: TOracleDataSet
    SQL.Strings = (
      'select t.*, (Case'
      
        '               When t.sz_Check=0 Then '#39'('#1055#1086#1079#1080#1094#1080#1103' '#1085#1077' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1072' '#1074 +
        ' '#39'||(Select t.Ceh_SName From Ogt.V_Spr_Ceh t Where t.Ceh_Id=31)|' +
        '|'#39')'#39
      '               Else Null'
      '             End) Sz_CheckFlag from mrk.SZ_TABLE_SEO t '
      'where t.sz_id = :sz_id'
      'order by t.id_str')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000110000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F004E0041004D0045005F004F0042000100000000001600000053005A005F00
      49004200590041004C005F004F0042000100000000000E000000490044005F00
      43004F004E0054000100000000000C000000490044005F005300540052000100
      000000001000000053005A005F0043004800450043004B000100000000001400
      000053005A005F0043004F00440045005F004F0042000100000000000A000000
      53005A005F00490044000100000000001600000044004100540045005F004300
      480041004E00470045000100000000000C000000490044005F0050004F005300
      0100000000001600000055005300450052005F00490044005F0049004E005300
      0100000000001600000055005300450052005F00490044005F0043004F005200
      0100000000001000000044004100540045005F0049004E005300010000000000
      1400000045004D0050005F00490044005F0049004E0053000100000000001400
      000045004D0050005F00490044005F0043004F00520001000000000018000000
      53005A005F0043004800450043004B0046004C0041004700010000000000}
    Master = INFO_MAIN
    MasterFields = 'SZ_ID'
    Session = Form20.OracleSession1
    Left = 504
    Top = 120
    object Info_ContentSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object Info_ContentSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object Info_ContentSZ_NAME_OB: TStringField
      FieldName = 'SZ_NAME_OB'
      Size = 1000
    end
    object Info_ContentSZ_IBYAL_OB: TStringField
      FieldName = 'SZ_IBYAL_OB'
      Size = 1000
    end
    object Info_ContentID_CONT: TFloatField
      FieldName = 'ID_CONT'
    end
    object Info_ContentID_STR: TFloatField
      FieldName = 'ID_STR'
    end
    object Info_ContentSZ_CHECK: TFloatField
      FieldName = 'SZ_CHECK'
    end
    object Info_ContentSZ_CODE_OB: TStringField
      FieldName = 'SZ_CODE_OB'
      Size = 1000
    end
    object Info_ContentSZ_ID: TFloatField
      FieldName = 'SZ_ID'
    end
    object Info_ContentDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Info_ContentID_POS: TFloatField
      FieldName = 'ID_POS'
      Required = True
    end
    object Info_ContentUSER_ID_INS: TStringField
      FieldName = 'USER_ID_INS'
      Size = 30
    end
    object Info_ContentUSER_ID_COR: TStringField
      FieldName = 'USER_ID_COR'
      Size = 30
    end
    object Info_ContentDATE_INS: TDateTimeField
      FieldName = 'DATE_INS'
    end
    object Info_ContentEMP_ID_INS: TFloatField
      FieldName = 'EMP_ID_INS'
    end
    object Info_ContentEMP_ID_COR: TFloatField
      FieldName = 'EMP_ID_COR'
    end
    object Info_ContentSZ_CHECKFLAG: TStringField
      FieldName = 'SZ_CHECKFLAG'
      Size = 35
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
  object DB_COMM: TOracleDataSet
    SQL.Strings = (
      'select avtor,'
      '('#39'('#39'||t.comment_date_||'#39')'#39') as Data_comm,'
      't.comment_text,'
      
        'decode (t.sz_type_user, 1, '#39#1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100#39', 2, '#39#1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1087#1086#1076#1088#1072#1079#1076#1077 +
        #1083#1077#1085#1080#1103' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103#39', 3, '#39#1057#1086#1090#1088#1091#1076#1085#1080#1082' '#1057#1069#1054#39', 4, '#39#1057#1086#1090#1088#1091#1076#1085#1080#1082' '#1054#1057#1058#1044#39') as ' +
        'User_Type,'
      'rownum as rwn'
      ' from V$SZ_COMMENTARY_ALL t '
      'where t.sz_id = :sz_id'
      'and t.otdel_type = 1'
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
    DetailFields = 'SZ_ID'
    Session = Form20.OracleSession1
    Left = 88
    Top = 120
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
      'SZ_COMM=SZ_COMM'
      'USER_TYPE=USER_TYPE'
      'RWN=RWN'
      'AVTOR=AVTOR'
      'COMMENT_TEXT=COMMENT_TEXT'
      'DATA_COMM=DATA_COMM')
    DataSet = DB_COMM
    BCDToCurrency = False
    Left = 88
    Top = 192
  end
  object Db_Sz_Appr_Steps: TOracleDataSet
    SQL.Strings = (
      'Select t.*,'
      
        '       Decode ( t.Id_Appr_Step, 1, '#39#1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100#39', 2, '#39#1053#1072#1095#1072#1083#1100#1085#1080#1082' ' +
        #1086#1090#1076#1077#1083#1072#39', ( Select a.Ceh_Abbrev'
      
        '                                                                ' +
        '            From   Ogt.Spr_Ceh a'
      
        '                                                                ' +
        '            Where  a.Id = t.Ceh_Id ) ) As Appr_Step_Name,'
      '       ( Case'
      '           When t.Flag_Out = 0 Then Null'
      
        '           When t.Flag_Out In ( 1, 2 ) Then ( Mrk.Sz_Enter.Get_U' +
        'ser_Name_by_Lnum ( t.User_Lnum ) )'
      '         End ) as Razrab_Name,'
      '       ( Case'
      '           When t.Flag_Out = 0 Then Null'
      '           When t.Flag_Out = 1 Then ( Select a.SIGNBMP '
      '                                      From   Mrk.SZ_USERS a'
      
        '                                      Where  a.User_Lnum = t.Use' +
        'r_Lnum )'
      '         End ) as Razrab_Sign,'
      '       ( Case'
      '           When t.Flag_Out = 0 Then Null'
      
        '           When t.Flag_Out In ( 1, 2 ) Then To_Char( t.Data_Out,' +
        ' '#39'DD/MM/YYYY'#39' )'
      '         End ) as Date_Out'
      'From   Mrk.Sz_Op_Appr t'
      'Where  t.Sz_Id = :Sz_Id'
      'Order by Id_Appr_Step Desc')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000003000000
      32320000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000E000000040000004900440001000000000018000000490044005F00
      41005000500052005F0053005400450050000100000000000A00000053005A00
      5F00490044000100000000000E00000044004100540041005F0049004E000100
      000000000E00000046004C00410047005F0049004E0001000000000010000000
      44004100540041005F004F00550054000100000000001000000046004C004100
      47005F004F00550054000100000000001200000055005300450052005F004C00
      4E0055004D000100000000001200000044004100540041005F00430048004E00
      47000100000000000C0000004300450048005F00490044000100000000001C00
      000041005000500052005F0053005400450050005F004E0041004D0045000100
      0000000016000000520041005A005200410042005F004E0041004D0045000100
      0000000016000000520041005A005200410042005F005300490047004E000000
      000000001000000044004100540045005F004F0055005400010000000000}
    Master = INFO_MAIN
    MasterFields = 'SZ_ID'
    Session = Form20.OracleSession1
    Left = 32
    Top = 120
  end
  object Data_Sz_Appr_Steps: TfrxDBDataset
    UserName = 'Data_Sz_Appr_Steps'
    CloseDataSource = False
    DataSet = Db_Sz_Appr_Steps
    BCDToCurrency = False
    Left = 32
    Top = 192
  end
end
