object Form11: TForm11
  Left = 457
  Top = 257
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089'/'#1079
  ClientHeight = 620
  ClientWidth = 950
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
  object Panel3: TPanel
    Left = 0
    Top = 145
    Width = 950
    Height = 16
    Align = alTop
    Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1089'/'#1079
    Color = clAppWorkSpace
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 145
    Align = alTop
    TabOrder = 1
    DesignSize = (
      950
      145)
    object Label1: TLabel
      Left = 9
      Top = 10
      Width = 30
      Height = 13
      Caption = #8470' '#1089'/'#1079
    end
    object Label2: TLabel
      Left = 120
      Top = 10
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object ENum_SZ: TEdit
      Left = 45
      Top = 7
      Width = 57
      Height = 21
      TabOrder = 0
    end
    object EDate: TEdit
      Left = 152
      Top = 7
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 247
      Top = 33
      Width = 689
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      Caption = #1044#1086#1087#1086#1083#1085#1077#1085#1080#1077
      TabOrder = 2
      DesignSize = (
        689
        49)
      object Edit1: TEdit
        Left = 8
        Top = 17
        Width = 562
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        Text = #1062#1077#1085#1099' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1099' '
      end
      object DateTimePicker1: TDateTimePicker
        Left = 576
        Top = 17
        Width = 98
        Height = 21
        Anchors = [akTop, akRight]
        Date = 44082.646284548610000000
        Time = 44082.646284548610000000
        TabOrder = 1
      end
    end
    object CheckBox2: TCheckBox
      Left = 287
      Top = 8
      Width = 129
      Height = 19
      Caption = #1057#1074#1086#1073#1086#1076#1085#1099#1081' '#1079#1072#1075#1086#1083#1086#1074#1086#1082
      TabOrder = 3
      OnClick = CheckBox2Click
    end
    object FreeFormBox: TGroupBox
      Left = 247
      Top = 90
      Width = 689
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082
      TabOrder = 4
      Visible = False
      DesignSize = (
        689
        49)
      object EFreeFormTop: TEdit
        Left = 7
        Top = 16
        Width = 670
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 35
      Width = 233
      Height = 49
      Caption = #1054#1090
      TabOrder = 5
      object FROM_LCB: TDBLookupComboboxEh
        Left = 7
        Top = 16
        Width = 218
        Height = 21
        DynProps = <>
        DataField = ''
        EditButtons = <>
        KeyField = 'ID'
        ListField = 'USER_FROM'
        ListSource = FROM_DATA
        TabOrder = 0
        Visible = True
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 90
      Width = 233
      Height = 49
      Caption = #1050#1086#1084#1091
      TabOrder = 6
      object TO_LCB: TDBLookupComboboxEh
        Left = 8
        Top = 16
        Width = 217
        Height = 21
        DynProps = <>
        DataField = ''
        EditButtons = <>
        KeyField = 'ID'
        ListField = 'USER_TO'
        ListSource = TO_DATA
        TabOrder = 0
        Visible = True
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 161
    Width = 950
    Height = 416
    Align = alClient
    AutoFitColWidths = True
    DataSource = DS_INFO
    DynProps = <>
    EvenRowColor = clMenuBar
    Flat = True
    HorzScrollBar.ExtraPanel.Visible = True
    TabOrder = 2
    TitleParams.RowHeight = 40
    OnDblClick = DBGrid1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_STR'
        Footers = <>
        Title.Caption = #8470' '#1087'/'#1087
        Width = 38
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NAME_OB'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_IBYAL_OB'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_CODE_OB'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076
        Width = 138
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_COST'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1077#1079' '#1053#1044#1057', '#1088#1091#1073'.'
        Width = 82
      end
      item
        Alignment = taLeftJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NDS'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1044#1057', %'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_COST_W_NDS'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089' '#1053#1044#1057', '#1088#1091#1073'.'
        Width = 78
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_IMP_NUMB'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1074#1093#1086#1076#1103#1097#1077#1081' '#1089'/'#1079
        Width = 70
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 577
    Width = 950
    Height = 43
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      950
      43)
    object Save_but: TButton
      Left = 783
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Save_butClick
    end
    object Close_but: TButton
      Left = 864
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Close_butClick
    end
    object Delete_BTN: TButton
      Left = 678
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object SZ_PACKAGE: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 464
    Top = 425
  end
  object SZ_ENTER: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_ENTER'
    Left = 320
    Top = 425
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form20.OracleSession1
    Left = 152
    Top = 409
  end
  object EDIT_SZ_INFO_DB: TOracleDataSet
    SQL.Strings = (
      'select '
      ' t.sz_numb,'
      ' t.sz_date,'
      ' t.sz_from_id,'
      ' t.sz_to_id,'
      ' t.sz_add,'
      ' t.sz_data_ceny,'
      ' t.sz_free_form,'
      ' t.sz_free_form_top'
      'from MRK.SZ_SEO_MAIN t'
      'where t.sz_id = :vID')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00560049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000080000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F00460052004F004D005F00490044000100000000001000000053005A005F00
      54004F005F00490044000100000000000C00000053005A005F00410044004400
      0100000000001800000053005A005F0044004100540041005F00430045004E00
      59000100000000001800000053005A005F0046005200450045005F0046004F00
      52004D000100000000002000000053005A005F0046005200450045005F004600
      4F0052004D005F0054004F005000010000000000}
    Session = Form20.OracleSession1
    Left = 232
    Top = 416
    object EDIT_SZ_INFO_DBSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object EDIT_SZ_INFO_DBSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object EDIT_SZ_INFO_DBSZ_FROM_ID: TFloatField
      FieldName = 'SZ_FROM_ID'
    end
    object EDIT_SZ_INFO_DBSZ_TO_ID: TFloatField
      FieldName = 'SZ_TO_ID'
    end
    object EDIT_SZ_INFO_DBSZ_ADD: TStringField
      FieldName = 'SZ_ADD'
      Size = 1000
    end
    object EDIT_SZ_INFO_DBSZ_DATA_CENY: TDateTimeField
      FieldName = 'SZ_DATA_CENY'
    end
    object EDIT_SZ_INFO_DBSZ_FREE_FORM: TFloatField
      FieldName = 'SZ_FREE_FORM'
    end
    object EDIT_SZ_INFO_DBSZ_FREE_FORM_TOP: TStringField
      FieldName = 'SZ_FREE_FORM_TOP'
      Size = 4000
    end
  end
  object TO_DB: TOracleDataSet
    SQL.Strings = (
      'select t.FIO_TO as USER_TO, t.ID from V$SZ_HEADS_ALL t'
      'where t.user_ceh = '#39'33'#39)
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000004000000490044000100000000000E000000550053004500
      52005F0054004F00010000000000}
    Session = Form20.OracleSession1
    Left = 96
    Top = 408
  end
  object TO_DATA: TDataSource
    DataSet = TO_DB
    Left = 96
    Top = 456
  end
  object FROM_DATA: TDataSource
    DataSet = FROM_DB
    Left = 24
    Top = 456
  end
  object FROM_DB: TOracleDataSet
    SQL.Strings = (
      'select t.FIO_FROM as USER_FROM, t.ID from V$SZ_HEADS_ALL t'
      'where t.user_ceh = '#39'38'#39)
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000001200000055005300450052005F00460052004F004D000100
      000000000400000049004400010000000000}
    Session = Form20.OracleSession1
    Left = 24
    Top = 408
  end
  object Info_main: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from SZ_SEO_CONTENT_TEMP t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000F0000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F004E0041004D0045005F004F0042000100000000001600000053005A005F00
      49004200590041004C005F004F0042000100000000000E000000490044005F00
      43004F004E0054000100000000000C000000490044005F005300540052000100
      000000001400000053005A005F0043004F00440045005F004F00420001000000
      00001A00000053005A005F0043004F00530054005F0057005F004E0044005300
      0100000000000C00000053005A005F004E00440053000100000000000E000000
      53005A005F0043004F00530054000100000000001600000053005A005F004900
      4D0050005F004E0055004D0042000100000000001600000053005A005F004900
      4D0050005F0044004100540045000100000000001800000053005A005F004400
      4100540045005F0043004F00530054000100000000001200000053005A005F00
      49004D0050005F00490044000100000000001C00000053005A005F0052004500
      50004500410054005F0046004C0041004700010000000000}
    Session = Form20.OracleSession1
    OnNewRecord = Info_mainNewRecord
    Left = 392
    Top = 425
    object Info_mainSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object Info_mainSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object Info_mainSZ_NAME_OB: TStringField
      FieldName = 'SZ_NAME_OB'
      Size = 1000
    end
    object Info_mainSZ_IBYAL_OB: TStringField
      FieldName = 'SZ_IBYAL_OB'
      Size = 1000
    end
    object Info_mainSZ_COST_W_NDS: TFloatField
      FieldName = 'SZ_COST_W_NDS'
    end
    object Info_mainSZ_NDS: TFloatField
      FieldName = 'SZ_NDS'
    end
    object Info_mainSZ_COST: TFloatField
      FieldName = 'SZ_COST'
    end
    object Info_mainID_CONT: TFloatField
      FieldName = 'ID_CONT'
    end
    object Info_mainID_STR: TFloatField
      FieldName = 'ID_STR'
    end
    object Info_mainSZ_IMP_NUMB: TFloatField
      FieldName = 'SZ_IMP_NUMB'
    end
    object Info_mainSZ_IMP_DATE: TDateTimeField
      FieldName = 'SZ_IMP_DATE'
    end
    object Info_mainSZ_CODE_OB: TStringField
      FieldName = 'SZ_CODE_OB'
      Size = 1000
    end
    object Info_mainSZ_DATE_COST: TDateTimeField
      FieldName = 'SZ_DATE_COST'
    end
    object Info_mainSZ_IMP_ID: TFloatField
      FieldName = 'SZ_IMP_ID'
    end
    object Info_mainSZ_REPEAT_FLAG: TFloatField
      FieldName = 'SZ_REPEAT_FLAG'
    end
  end
  object DS_INFO: TDataSource
    DataSet = Info_main
    Left = 392
    Top = 473
  end
  object PopupMenu1: TPopupMenu
    Left = 432
    Top = 344
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1047#1072#1084#1077#1085#1080#1090#1100
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N3Click
    end
  end
end
