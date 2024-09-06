object Form41: TForm41
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1090#1076#1077#1083#1086#1074' / '#1094#1077#1093#1086#1074
  ClientHeight = 309
  ClientWidth = 329
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
    Width = 329
    Height = 309
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_Ceh
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
        FieldName = 'CEH'
        Footers = <>
        Title.Caption = #1050#1086#1076
        Width = 57
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CEH_ABBREV'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 227
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form2.OracleSession1
    Left = 17
    Top = 142
  end
  object Db_Ceh: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.Ceh, t.Ceh_Abbrev, t.Ceh_Naim from SPR_CEH t'
      
        'Where ( translate (upper(Ceh_Abbrev), '#39' .-'#39', '#39'%'#39') like '#39'%'#39' || tr' +
        'anslate (upper(:v_KeyWord),'#39' .-*'#39', '#39'%'#39') || '#39'%'#39
      'or upper(Ceh) like '#39'%'#39'||upper(:v_KeyWord)||'#39'%'#39' )'
      'And Pr_An = 1'
      'order by Ceh_Abbrev')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0056005F004B004500590057004F0052004400
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000004000000040000004900440001000000000006000000430045004800
      010000000000140000004300450048005F004100420042005200450056000100
      00000000100000004300450048005F004E00410049004D00010000000000}
    Session = Form2.OracleSession1
    Left = 72
    Top = 200
    object Db_CehID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_CehCEH: TStringField
      FieldName = 'CEH'
      Required = True
      Size = 2
    end
    object Db_CehCEH_ABBREV: TStringField
      FieldName = 'CEH_ABBREV'
      Size = 10
    end
    object Db_CehCEH_NAIM: TStringField
      FieldName = 'CEH_NAIM'
      Size = 100
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 216
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = N1Click
    end
  end
  object Data_Ceh: TDataSource
    DataSet = Db_Ceh
    Left = 128
    Top = 176
  end
end
