object Form49: TForm49
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1076#1077#1090#1072#1083#1077#1081
  ClientHeight = 292
  ClientWidth = 821
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 821
    Height = 292
    Align = alClient
    AutoFitColWidths = True
    DataSource = DETAILS_DATA
    DynProps = <>
    OddRowColor = clMenuBar
    PopupMenu = PopupMenu1
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    OnKeyUp = DBGridEh1KeyUp
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DET'
        Footers = <>
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 229
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ND'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 383
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MAR'
        Footers = <>
        Title.Caption = #1052#1072#1088#1096#1088#1091#1090
        Width = 180
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DETAILS_DB: TOracleDataSet
    SQL.Strings = (
      'select t.det, t.id, t.nd, t.mar, t.kodd'
      'from SPR_DET t'
      
        'where translate (upper(t.det), '#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-'#39', '#39'%'#39') like '#39'%'#39' ||' +
        ' translate (upper(:det),'#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-*'#39', '#39'%'#39') || '#39'%'#39
      'or upper(nd) like '#39'%'#39'||upper(:Det)||'#39'%'#39
      'or upper(mar) like '#39'%'#39'||upper(:Det)||'#39'%'#39)
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00440045005400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000500000006000000440045005400010000000000040000004E004400
      010000000000060000004D004100520001000000000004000000490044000100
      00000000080000004B004F0044004400010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DETAILS_DBDET: TStringField
      FieldName = 'DET'
      Required = True
      Size = 50
    end
    object DETAILS_DBID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object DETAILS_DBND: TStringField
      FieldName = 'ND'
      Size = 100
    end
    object DETAILS_DBMAR: TStringField
      FieldName = 'MAR'
      Size = 100
    end
    object DETAILS_DBKODD: TStringField
      FieldName = 'KODD'
      Size = 13
    end
  end
  object DETAILS_DATA: TDataSource
    DataSet = DETAILS_DB
    Left = 248
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 208
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = N1Click
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form2.OracleSession1
    Left = 401
    Top = 158
  end
end
