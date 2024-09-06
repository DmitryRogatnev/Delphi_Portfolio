object Form51: TForm51
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1077#1076#1080#1085#1080#1094' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
  ClientHeight = 305
  ClientWidth = 279
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
    Width = 279
    Height = 305
    Align = alClient
    AutoFitColWidths = True
    DataSource = ED_DATA
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
        FieldName = 'ED'
        Footers = <>
        Title.Caption = #1050#1086#1076
        Width = 115
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ED_NAIM'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 134
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ED_DB: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.Ed, t.Ed_Naim from SPR_ED t'
      
        'Where translate (upper(ED_NAIM), '#39' .-'#39', '#39'%'#39') like '#39'%'#39' || transla' +
        'te (upper(:ED),'#39' .-*'#39', '#39'%'#39') || '#39'%'#39
      'or upper(ED) like '#39'%'#39'||upper(:ED)||'#39'%'#39)
    Optimize = False
    Variables.Data = {0400000001000000060000003A0045004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000003000000040000004900440001000000000004000000450044000100
      000000000E000000450044005F004E00410049004D00010000000000}
    Session = Form2.OracleSession1
    Left = 72
    Top = 200
    object ED_DBID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object ED_DBED: TStringField
      FieldName = 'ED'
      Required = True
      Size = 3
    end
    object ED_DBED_NAIM: TStringField
      FieldName = 'ED_NAIM'
      Size = 25
    end
  end
  object ED_DATA: TDataSource
    DataSet = ED_DB
    Left = 128
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 216
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = N1Click
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form2.OracleSession1
    Left = 17
    Top = 142
  end
end
