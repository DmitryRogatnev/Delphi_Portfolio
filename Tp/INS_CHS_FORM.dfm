object Form30: TForm30
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 309
  ClientWidth = 501
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
    Width = 501
    Height = 309
    Align = alClient
    AutoFitColWidths = True
    DataSource = DATA_INSTRUMENTS
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
        FieldName = 'NAME_INSTR'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
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
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form2.OracleSession1
    Left = 401
    Top = 158
  end
  object DATA_INSTRUMENTS: TDataSource
    DataSet = DB_INSTRUMENTS
    Left = 248
    Top = 176
  end
  object DB_INSTRUMENTS: TOracleDataSet
    SQL.Strings = (
      'Select t.Id, t.Name_Instr From Ogt.Spr_Instr t'
      'Where Upper(t.Name_Instr) like '#39'%'#39'||Upper(:v_KeyWord)||'#39'%'#39
      'Order By Name_Instr'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0056005F004B004500590057004F0052004400
      0500000005000000313132310000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000000400000049004400010000000000140000004E0041004D00
      45005F0049004E00530054005200010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DB_INSTRUMENTSID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object DB_INSTRUMENTSNAME_INSTR: TStringField
      FieldName = 'NAME_INSTR'
      Required = True
      Size = 100
    end
  end
  object PKG_TP_DOC: TOraclePackage
    Session = Form2.OracleSession1
    PackageName = 'PKG_TP_DOC'
    Left = 232
    Top = 83
  end
end
