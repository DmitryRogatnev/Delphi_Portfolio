object Form32: TForm32
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1089#1085#1072#1089#1090#1082#1080
  ClientHeight = 351
  ClientWidth = 564
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
    Width = 564
    Height = 351
    Align = alClient
    AutoFitColWidths = True
    DataSource = DATA_OSNAST
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
        FieldName = 'SHOSN'
        Footers = <>
        Title.Caption = #1064#1080#1092#1088
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOSN'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 300
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
  object DATA_OSNAST: TDataSource
    DataSet = DB_OSNAST
    Left = 248
    Top = 176
  end
  object DB_OSNAST: TOracleDataSet
    SQL.Strings = (
      'Select t.Id, t.SHOSN, t.NOSN From Ogt.Spr_OSN t'
      'Where ( Upper(t.Shosn) like '#39'%'#39'||Upper(:v_KeyWord)||'#39'%'#39
      'Or Upper(t.Nosn) like '#39'%'#39'||Upper(:v_KeyWord)||'#39'%'#39' )'
      'And Nvl( An, '#39'1'#39' ) = '#39'1'#39
      'Order By SHOSN'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0056005F004B004500590057004F0052004400
      0500000003000000DDCD0000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000300000004000000490044000100000000000A000000530048004F00
      53004E00010000000000080000004E004F0053004E00010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DB_OSNASTID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object DB_OSNASTSHOSN: TStringField
      FieldName = 'SHOSN'
      Required = True
      Size = 50
    end
    object DB_OSNASTNOSN: TStringField
      FieldName = 'NOSN'
      Size = 100
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 208
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = N1Click
    end
  end
end
