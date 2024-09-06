object Form19: TForm19
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089'/'#1079' '#1074' '#1086#1090#1095#1077#1090
  ClientHeight = 329
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh_OUTP: TDBGridEh
    Left = 0
    Top = 0
    Width = 444
    Height = 329
    Align = alClient
    AutoFitColWidths = True
    DataSource = DS_SEOINFO
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    SearchPanel.Enabled = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NUMB'
        Footers = <>
        Title.Caption = #8470' '#1089'/'#1079
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_DATE'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CONTACT'
        Footers = <>
        Title.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STATUS'
        Footers = <>
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SZ_ENTER: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_ENTER'
    Left = 32
    Top = 184
  end
  object SZ_PACKAGE: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 128
    Top = 184
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form20.OracleSession1
    Left = 364
    Top = 26
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 32
    Top = 128
  end
  object SEO_INFO: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.V$SZ_MAIN_SEO t'
      'where t.sz_cont_y = 0 '
      'order by SZ_DATE desc, SZ_NUMB desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000160000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F00460052004F004D000100000000000A00000053005A00
      5F0054004F000100000000000E00000053005A005F0044004100540045000100
      000000000E00000043004F004E00540041004300540001000000000018000000
      53005A005F0043004F004E0044004900540049004F004E000100000000001200
      000053005A005F0043004F004E0054005F005900010000000000120000005300
      5A005F00460052004F004D005F0059000100000000000E00000053005A005F00
      54004F005F0059000100000000001400000053005A005F00490044005F004300
      4F004E0054000100000000001C00000053005A005F0043004F004E0054005F00
      59005F0044004100540045000100000000001C00000053005A005F0046005200
      4F004D005F0059005F0044004100540045000100000000001800000053005A00
      5F0054004F005F0059005F0044004100540045000100000000000C0000005300
      5A005F004100440044000100000000001A00000053005A005F00500052004900
      430045005F0049004E00440046000100000000001800000053005A005F004600
      5200450045005F0046004F0052004D000100000000002000000053005A005F00
      46005200450045005F0046004F0052004D005F0054004F005000010000000000
      0A00000053005A005F00490044000100000000001400000053005A005F004600
      52004F004D005F00490044000100000000001000000053005A005F0054004F00
      5F00490044000100000000000C00000053005400410054005500530001000000
      0000180000005300540041005400550053005F00560041004C00550045000100
      00000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 196
    Top = 171
    object SEO_INFOSZ_ID: TFloatField
      FieldName = 'SZ_ID'
      Required = True
    end
    object SEO_INFOSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object SEO_INFOSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object SEO_INFOCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 1000
    end
    object SEO_INFOSZ_CONDITION: TFloatField
      FieldName = 'SZ_CONDITION'
    end
    object SEO_INFOSZ_ID_CONT: TFloatField
      FieldName = 'SZ_ID_CONT'
    end
    object SEO_INFOSZ_CONT_Y: TFloatField
      FieldName = 'SZ_CONT_Y'
    end
    object SEO_INFOSZ_CONT_Y_DATE: TDateTimeField
      FieldName = 'SZ_CONT_Y_DATE'
    end
    object SEO_INFOSZ_FROM_Y: TFloatField
      FieldName = 'SZ_FROM_Y'
    end
    object SEO_INFOSZ_FROM: TStringField
      FieldName = 'SZ_FROM'
      Size = 4000
    end
    object SEO_INFOSZ_FROM_Y_DATE: TDateTimeField
      FieldName = 'SZ_FROM_Y_DATE'
    end
    object SEO_INFOSZ_FROM_ID: TFloatField
      FieldName = 'SZ_FROM_ID'
    end
    object SEO_INFOSZ_TO_Y: TFloatField
      FieldName = 'SZ_TO_Y'
    end
    object SEO_INFOSZ_TO: TStringField
      FieldName = 'SZ_TO'
      Size = 4000
    end
    object SEO_INFOSZ_TO_Y_DATE: TDateTimeField
      FieldName = 'SZ_TO_Y_DATE'
    end
    object SEO_INFOSZ_TO_ID: TFloatField
      FieldName = 'SZ_TO_ID'
    end
    object SEO_INFOSZ_ADD: TStringField
      FieldName = 'SZ_ADD'
      Size = 1000
    end
    object SEO_INFOSZ_FREE_FORM_TOP: TStringField
      FieldName = 'SZ_FREE_FORM_TOP'
      Size = 4000
    end
    object SEO_INFOSZ_FREE_FORM: TFloatField
      FieldName = 'SZ_FREE_FORM'
    end
    object SEO_INFOSZ_PRICE_INDF: TFloatField
      FieldName = 'SZ_PRICE_INDF'
    end
    object SEO_INFOSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 72
    end
    object SEO_INFOSTATUS_VALUE: TFloatField
      FieldName = 'STATUS_VALUE'
    end
  end
  object DS_SEOINFO: TDataSource
    DataSet = SEO_INFO
    Left = 252
    Top = 195
  end
  object PopupMenu1: TPopupMenu
    Left = 288
    Top = 120
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1089'/'#1079
      OnClick = N2Click
    end
  end
end
