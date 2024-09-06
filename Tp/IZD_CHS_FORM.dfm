object Form44: TForm44
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1080#1079#1076#1077#1083#1080#1081
  ClientHeight = 309
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 599
    Height = 309
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_Izdelia
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
        FieldName = 'IZD'
        Footers = <>
        Title.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103
        Width = 264
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ND_IZD'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103
        Width = 258
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form2.OracleSession1
    Left = 401
    Top = 158
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 208
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = N1Click
    end
  end
  object Data_Izdelia: TDataSource
    DataSet = Db_Izdelia
    Left = 248
    Top = 176
  end
  object Db_Izdelia: TOracleDataSet
    SQL.Strings = (
      'Select t.Id, '
      '       t.Izd, '
      '       t.Nd_Izd, '
      '       t.Nommtm'
      'From   Ogt.Spr_Izd t'
      'Where  Upper(t.Izd) like '#39'%'#39'||Upper(:v_KeyWord)||'#39'%'#39
      '       And t.Arhiv = 1'
      'Order By Izd'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0056005F004B004500590057004F0052004400
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000400000004000000490044000100000000000600000049005A004400
      0100000000000C0000004E0044005F0049005A0044000100000000000C000000
      4E004F004D004D0054004D00010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object Db_IzdeliaID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_IzdeliaIZD: TStringField
      FieldName = 'IZD'
      Required = True
      Size = 50
    end
    object Db_IzdeliaND_IZD: TStringField
      FieldName = 'ND_IZD'
      Size = 100
    end
    object Db_IzdeliaNOMMTM: TFloatField
      FieldName = 'NOMMTM'
    end
  end
end
