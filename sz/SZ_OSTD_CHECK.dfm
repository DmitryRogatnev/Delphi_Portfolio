object Form15: TForm15
  Left = 400
  Top = 257
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1089'/'#1079
  ClientHeight = 421
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 385
    Width = 682
    Height = 36
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      682
      36)
    object Save_but: TButton
      Left = 511
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Save_butClick
    end
    object Close_but: TButton
      Left = 591
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Close_butClick
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 682
    Height = 385
    Align = alClient
    AutoFitColWidths = True
    DataSource = DS_INFO
    DynProps = <>
    EditActions = [geaCutEh, geaCopyEh, geaPasteEh, geaDeleteEh, geaSelectAllEh]
    PopupMenu = PopupMenu1
    TabOrder = 1
    OnCellClick = DBGrid1CellClick
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_STR'
        Footers = <>
        Title.Caption = #8470' '#1087'/'#1087
        Width = 40
      end
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_CHECK'
        Footers = <>
        KeyList.Strings = (
          '1;'
          '0')
        Title.Caption = #1057#1090#1072#1090'.'
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NAME_OB'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 321
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_IBYAL_OB'
        Footers = <>
        Title.Caption = #1048#1041#1071#1051
        Width = 249
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Info_main: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.sz_table_seo t '
      'where t.SZ_ID = :sz_id'
      'order by t.id_str ')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000070000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F004E0041004D0045005F004F0042000100000000001600000053005A005F00
      49004200590041004C005F004F0042000100000000000E000000490044005F00
      43004F004E0054000100000000000C000000490044005F005300540052000100
      000000001000000053005A005F0043004800450043004B00010000000000}
    Session = Form20.OracleSession1
    Left = 544
    Top = 105
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
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form20.OracleSession1
    Left = 616
    Top = 105
  end
  object OraclePackage2: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_ENTER'
    Left = 616
    Top = 33
  end
  object OraclePackage1: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 544
    Top = 33
  end
  object DS_INFO: TDataSource
    DataSet = Info_main
    Left = 544
    Top = 169
  end
  object PopupMenu1: TPopupMenu
    Left = 468
    Top = 217
    object N7: TMenuItem
      Caption = #1055#1088#1080#1085#1103#1090#1100
      OnClick = N7Click
    end
    object N8: TMenuItem
      Caption = #1054#1090#1082#1083#1086#1085#1080#1090#1100
      OnClick = N8Click
    end
  end
end
