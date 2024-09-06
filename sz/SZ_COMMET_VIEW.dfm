object Form6: TForm6
  Left = 457
  Top = 193
  Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
  ClientHeight = 453
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'clWindowText'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 799
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      799
      41)
    object Label1: TLabel
      Left = 12
      Top = 13
      Width = 33
      Height = 14
      Caption = #1040#1074#1090#1086#1088
    end
    object Close_but: TButton
      Left = 706
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 0
      OnClick = Close_butClick
    end
    object COM_TYPE_LCB: TDBLookupComboboxEh
      Left = 51
      Top = 10
      Width = 121
      Height = 22
      DynProps = <>
      DataField = ''
      EditButtons = <>
      KeyField = 'SZ_TYPE_USER'
      ListField = 'NAME_TYPE'
      ListSource = COMMENT_TYPE_DATA
      TabOrder = 1
      Visible = True
      OnKeyValueChanged = COM_TYPE_LCBKeyValueChanged
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 799
    Height = 412
    Align = alClient
    AutoFitColWidths = True
    DataSource = COMMENTARY_DATA
    DynProps = <>
    Flat = True
    PopupMenu = PM_GRID
    SearchPanel.Enabled = True
    TabOrder = 1
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COMMENT_TEXT'
        Footers = <>
        Title.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        Width = 567
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AVTOR'
        Footers = <>
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COMMENT_DATE_'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form20.OracleSession1
    Left = 176
    Top = 304
  end
  object SZ_PACKAGE: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 32
    Top = 304
  end
  object OraclePackage2: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_ENTER'
    Left = 104
    Top = 304
  end
  object CommentarySet: TOracleDataSet
    SQL.Strings = (
      'select '
      't.comment_text,'
      'AVTOR, '
      
        't.comment_date_, t.sz_type_user, t.sz_comm_vazh, t.sz_comm_isdel' +
        ', t.sz_id, t.id_com, t.otdel_type'
      ''
      'from V$SZ_COMMENTARY_ALL t '
      ''
      'where t.sz_id = :vId  '
      'and t.sz_type_user like :TypeofUsr || '#39'%'#39
      'and t.otdel_type = :vOtdel_type ')
    Optimize = False
    Variables.Data = {
      0400000003000000140000003A0054005900500045004F004600550053005200
      050000000000000000000000080000003A005600490044000500000000000000
      00000000180000003A0056004F005400440045004C005F005400590050004500
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000090000001A00000043004F004D004D0045004E0054005F0044004100
      540045005F000100000000001800000053005A005F0054005900500045005F00
      55005300450052000100000000001800000053005A005F0043004F004D004D00
      5F00560041005A0048000100000000001A00000053005A005F0043004F004D00
      4D005F0049005300440045004C000100000000001800000043004F004D004D00
      45004E0054005F0054004500580054000100000000000A000000410056005400
      4F0052000100000000000A00000053005A005F00490044000100000000000C00
      0000490044005F0043004F004D00010000000000140000004F00540044004500
      4C005F005400590050004500010000000000}
    Session = Form20.OracleSession1
    Left = 232
    Top = 304
    object CommentarySetCOMMENT_TEXT: TStringField
      FieldName = 'COMMENT_TEXT'
      Size = 4000
    end
    object CommentarySetAVTOR: TStringField
      FieldName = 'AVTOR'
      Size = 4000
    end
    object CommentarySetCOMMENT_DATE_: TStringField
      FieldName = 'COMMENT_DATE_'
      Size = 1000
    end
    object CommentarySetSZ_TYPE_USER: TFloatField
      FieldName = 'SZ_TYPE_USER'
    end
    object CommentarySetSZ_COMM_VAZH: TFloatField
      FieldName = 'SZ_COMM_VAZH'
    end
    object CommentarySetSZ_COMM_ISDEL: TFloatField
      FieldName = 'SZ_COMM_ISDEL'
    end
    object CommentarySetSZ_ID: TFloatField
      FieldName = 'SZ_ID'
    end
    object CommentarySetID_COM: TFloatField
      FieldName = 'ID_COM'
    end
    object CommentarySetOTDEL_TYPE: TFloatField
      FieldName = 'OTDEL_TYPE'
    end
  end
  object COMMENTARY_DATA: TDataSource
    DataSet = CommentarySet
    Left = 296
    Top = 304
  end
  object PM_GRID: TPopupMenu
    Left = 368
    Top = 304
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      OnClick = N3Click
    end
  end
  object COMMENT_TYPES: TOracleDataSet
    SQL.Strings = (
      'select distinct '
      '(case'
      ' when t.sz_type_user = 1 and t.user_otdel = 1 then '#39#1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100#39
      
        ' when t.sz_type_user = 2 and t.user_otdel = 1 then '#39#1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1087#1086 +
        #1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103#39
      
        ' when t.sz_type_user = 3 and t.user_otdel = 1 then '#39#1057#1086#1090#1088#1091#1076#1085#1080#1082' '#1057#1069 +
        #1054#39
      
        ' when t.sz_type_user = 4 and t.user_otdel = 1 then '#39#1057#1086#1090#1088#1091#1076#1085#1080#1082' '#1054#1057 +
        #1058#1044#39
      
        ' when t.sz_type_user = 3 and t.user_otdel = 38 then '#39#1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100 +
        #39
      
        ' when t.sz_type_user = 2 and t.user_otdel = 38 then '#39#1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1087 +
        #1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103#39
      
        ' when t.sz_type_user = 2 and t.user_otdel = 33 then '#39#1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1086 +
        #1090#1076#1077#1083#1072' '#1087#1088#1086#1076#1072#1078#39
      'end) as name_type, t.sz_type_user from V$SZ_COMMENTARY_ALL t'
      'where t.otdel_type = :Otdel_type'
      ''
      'union all'
      ''
      'select '#39#1042#1057#1045#39' as name_type, 0 from dual')
    Optimize = False
    Variables.Data = {
      0400000001000000160000003A004F005400440045004C005F00540059005000
      45000500000002000000320000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000120000004E0041004D0045005F0054005900500045000100
      000000001800000053005A005F0054005900500045005F005500530045005200
      010000000000}
    Session = Form20.OracleSession1
    Left = 440
    Top = 304
    object COMMENT_TYPESNAME_TYPE: TStringField
      FieldName = 'NAME_TYPE'
      Size = 35
    end
    object COMMENT_TYPESSZ_TYPE_USER: TFloatField
      FieldName = 'SZ_TYPE_USER'
    end
  end
  object COMMENT_TYPE_DATA: TDataSource
    DataSet = COMMENT_TYPES
    Left = 536
    Top = 312
  end
end
