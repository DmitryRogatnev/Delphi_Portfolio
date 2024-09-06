object Form12: TForm12
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1087#1077#1088#1072#1094#1080#1081
  ClientHeight = 309
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 691
    Height = 309
    Align = alClient
    AutoFitColWidths = True
    DataSource = DATA_OPERS
    DynProps = <>
    OddRowColor = clMenuBar
    PopupMenu = PopupMenu1
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    OnKeyUp = DBGridEh1KeyUp
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CODE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
        Width = 92
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'IOT'
        Footers = <>
        Title.Caption = #1048#1054#1058
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TT'
        Footers = <>
        Title.Caption = #1058#1058
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DB_OPERS: TOracleDataSet
    SQL.Strings = (
      
        'Select t.Id, t.Oper, t.Iot, t.TT, (t.Kod_Vid||t.Kod_Name) as Cod' +
        'e From Ogt.Spr_Oper t'
      'Where Upper(t.Oper) like '#39'%'#39'||Upper(:v_KeyWord)||'#39'%'#39
      'Or Upper(t.Kod_Vid||t.Kod_Name) like '#39'%'#39'||Upper(:v_KeyWord)||'#39'%'#39
      'Order By Oper'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0056005F004B004500590057004F0052004400
      0500000005000000313132310000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000005000000080000004F00500045005200010000000000060000004900
      4F00540001000000000004000000540054000100000000000400000049004400
      0100000000000800000043004F0044004500010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DB_OPERSOPER: TStringField
      FieldName = 'OPER'
      Required = True
      Size = 100
    end
    object DB_OPERSIOT: TStringField
      FieldName = 'IOT'
      Size = 50
    end
    object DB_OPERSTT: TStringField
      FieldName = 'TT'
      Size = 500
    end
    object DB_OPERSID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object DB_OPERSCODE: TStringField
      FieldName = 'CODE'
      Size = 4
    end
  end
  object DATA_OPERS: TDataSource
    DataSet = DB_OPERS
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
