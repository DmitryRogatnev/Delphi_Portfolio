object Form10: TForm10
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089'/'#1079
  ClientHeight = 568
  ClientWidth = 733
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
  object Panel2: TPanel
    Left = 0
    Top = 528
    Width = 733
    Height = 40
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      733
      40)
    object Save_but: TButton
      Left = 564
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Save_butClick
    end
    object Close_but: TButton
      Left = 645
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Close_butClick
    end
    object Delete_BTN: TButton
      Left = 460
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 137
    Width = 733
    Height = 17
    Align = alTop
    Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1089'/'#1079
    Color = clAppWorkSpace
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 733
    Height = 137
    Align = alTop
    TabOrder = 2
    DesignSize = (
      733
      137)
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 30
      Height = 13
      Caption = #8470' '#1089'/'#1079
    end
    object Label2: TLabel
      Left = 137
      Top = 11
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object Label3: TLabel
      Left = 44
      Top = 11
      Width = 21
      Height = 14
      Caption = #1047#1057' -'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 31
      Width = 247
      Height = 49
      Caption = #1054#1090
      TabOrder = 0
      object FROM_LCB: TDBLookupComboboxEh
        Left = 7
        Top = 16
        Width = 231
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
    object GroupBox2: TGroupBox
      Left = 485
      Top = 31
      Width = 237
      Height = 49
      Caption = #1050#1086#1087#1080#1103
      TabOrder = 1
      object COPY_LCB: TDBLookupComboboxEh
        Left = 10
        Top = 16
        Width = 220
        Height = 21
        DynProps = <>
        DataField = ''
        EditButtons = <>
        KeyField = 'ID'
        ListField = 'USER_TO'
        ListSource = COPY_DATA
        TabOrder = 0
        Visible = True
        OnKeyValueChanged = COPY_LCBKeyValueChanged
      end
    end
    object GroupBox3: TGroupBox
      Left = 261
      Top = 31
      Width = 218
      Height = 49
      Caption = #1050#1086#1084#1091
      TabOrder = 2
      object TO_LCB: TDBLookupComboboxEh
        Left = 8
        Top = 16
        Width = 201
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
    object GroupBox4: TGroupBox
      Left = 8
      Top = 82
      Width = 714
      Height = 47
      Anchors = [akLeft, akTop, akRight]
      Caption = #1058#1077#1084#1072
      TabOrder = 3
      DesignSize = (
        714
        47)
      object ETema: TEdit
        Left = 8
        Top = 17
        Width = 697
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        Text = #1056#1072#1089#1095#1077#1090' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      end
    end
    object ENum_SZ: TEdit
      Left = 71
      Top = 8
      Width = 57
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object EDate: TEdit
      Left = 174
      Top = 8
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object OSTD_Check: TCheckBox
      Left = 572
      Top = 10
      Width = 161
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1041#1077#1079' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' '#1089' '#1054#1057#1058#1044
      TabOrder = 6
      OnClick = OSTD_CheckClick
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 154
    Width = 733
    Height = 374
    Align = alClient
    AutoFitColWidths = True
    DataSource = DS_INFO
    DynProps = <>
    EvenRowColor = clMenuBar
    HorzScrollBar.ExtraPanel.Visible = True
    PopupMenu = PopupMenu1
    TabOrder = 3
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
        Title.Caption = #1050#1086#1076
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Info_main: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from SZ_TABLE_SEO_TEMP t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000080000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F004E0041004D0045005F004F0042000100000000001600000053005A005F00
      49004200590041004C005F004F0042000100000000000E000000490044005F00
      43004F004E0054000100000000000C000000490044005F005300540052000100
      000000001000000053005A005F0043004800450043004B000100000000001400
      000053005A005F0043004F00440045005F004F004200010000000000}
    CommitOnPost = False
    Session = Form20.OracleSession1
    OnNewRecord = Info_mainNewRecord
    Left = 520
    Top = 353
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
    object Info_mainID_CONT: TFloatField
      FieldName = 'ID_CONT'
    end
    object Info_mainID_STR: TFloatField
      FieldName = 'ID_STR'
    end
    object Info_mainSZ_CHECK: TFloatField
      FieldName = 'SZ_CHECK'
    end
    object Info_mainSZ_CODE_OB: TStringField
      FieldName = 'SZ_CODE_OB'
      Size = 1000
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form20.OracleSession1
    Left = 96
    Top = 385
  end
  object SZ_PACKAGE: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 152
    Top = 385
  end
  object SZ_ENTER_PKG: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_ENTER'
    Left = 32
    Top = 385
  end
  object DS_INFO: TDataSource
    DataSet = Info_main
    Left = 520
    Top = 401
  end
  object FROM_DB: TOracleDataSet
    SQL.Strings = (
      'select t.FIO_FROM as USER_FROM, t.ID from V$SZ_HEADS_ALL t'
      'where t.user_ceh = '#39'33'#39)
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000001200000055005300450052005F00460052004F004D000100
      000000000400000049004400010000000000}
    Session = Form20.OracleSession1
    Left = 232
    Top = 352
  end
  object FROM_DATA: TDataSource
    DataSet = FROM_DB
    Left = 232
    Top = 400
  end
  object TO_DB: TOracleDataSet
    SQL.Strings = (
      'select t.FIO_TO as USER_TO, t.ID from V$SZ_HEADS_ALL t'
      'where t.user_ceh = '#39'38'#39)
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000004000000490044000100000000000E000000550053004500
      52005F0054004F00010000000000}
    Session = Form20.OracleSession1
    Left = 304
    Top = 352
  end
  object TO_DATA: TDataSource
    DataSet = TO_DB
    Left = 304
    Top = 400
  end
  object COPY_DATA: TDataSource
    DataSet = COPY_DB
    Left = 368
    Top = 400
  end
  object COPY_DB: TOracleDataSet
    SQL.Strings = (
      'select t.FIO_TO as USER_TO, t.ID from V$SZ_HEADS_ALL t'
      'where t.user_ceh = '#39'04'#39
      'order by id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000004000000490044000100000000000E000000550053004500
      52005F0054004F00010000000000}
    Session = Form20.OracleSession1
    Left = 368
    Top = 352
    object COPY_DBUSER_TO: TStringField
      FieldName = 'USER_TO'
      Size = 4000
    end
    object COPY_DBID: TFloatField
      FieldName = 'ID'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 320
    Top = 272
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
  object EDIT_SZ_INFO_DB: TOracleDataSet
    SQL.Strings = (
      'select '
      '  (case'
      
        '     when t.sz_from_id = 0 then (select c.id from v$sz_heads_all' +
        ' c where (c.PROF_FROM)||'#39' '#39'||(c.FIO_FROM) = t.sz_from)'
      '     when t.sz_from_id <> 0 then t.sz_from_id'
      '   end) as FROM_ID,'
      '  (case'
      
        '     when t.sz_to_id = 0 then (select c.id from v$sz_heads_all c' +
        ' where (c.PROF_TO)||'#39' '#39'||(c.FIO_TO) = t.sz_to)'
      '     when t.sz_to_id <> 0 then t.sz_to_id'
      '   end) as TO_ID,'
      '  (case'
      
        '     when t.sz_copy_id = 0 then (select c.id from v$sz_heads_all' +
        ' c where (c.PROF_TO)||'#39' '#39'||(c.FIO_TO) = t.sz_copy)'
      '     when t.sz_copy_id <> 0 then t.sz_copy_id'
      '   end) as COPY_ID,'
      '  sz_numb, '
      '  sz_date, '
      '  sz_tema,'
      '  sz_kr'
      'from SZ_TABLE_TEST t'
      'where t.sz_id = :vID')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00560049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000070000000E000000460052004F004D005F0049004400010000000000
      0A00000054004F005F00490044000100000000000E00000043004F0050005900
      5F00490044000100000000000E00000053005A005F004E0055004D0042000100
      000000000E00000053005A005F0044004100540045000100000000000E000000
      53005A005F00540045004D0041000100000000000A00000053005A005F004B00
      5200010000000000}
    Session = Form20.OracleSession1
    Left = 440
    Top = 352
    object EDIT_SZ_INFO_DBFROM_ID: TFloatField
      FieldName = 'FROM_ID'
    end
    object EDIT_SZ_INFO_DBTO_ID: TFloatField
      FieldName = 'TO_ID'
    end
    object EDIT_SZ_INFO_DBCOPY_ID: TFloatField
      FieldName = 'COPY_ID'
    end
    object EDIT_SZ_INFO_DBSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object EDIT_SZ_INFO_DBSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object EDIT_SZ_INFO_DBSZ_TEMA: TStringField
      FieldName = 'SZ_TEMA'
      Size = 1000
    end
    object EDIT_SZ_INFO_DBSZ_KR: TFloatField
      FieldName = 'SZ_KR'
    end
  end
end
