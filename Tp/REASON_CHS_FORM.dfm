object Form6: TForm6
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1088#1080#1095#1080#1085' '#1074#1099#1087#1091#1089#1082#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 309
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 28
    Width = 591
    Height = 281
    Align = alClient
    AutoFitColWidths = True
    DataSource = DATA_REASONS
    DynProps = <>
    OddRowColor = clMenuBar
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    OnKeyUp = DBGridEh1KeyUp
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'REASON'
        Footers = <>
        Title.Caption = #1055#1088#1080#1095#1080#1085#1072
        Width = 573
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 28
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -54
    ExplicitWidth = 645
    object E_KEYWORD: TDBEditEh
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 583
      Height = 20
      Hint = #1053#1077#1080#1079#1074#1077#1089#1090#1085#1099#1077' '#1089#1080#1084#1074#1086#1083#1099' '#1079#1072#1084#1077#1085#1103#1102#1090#1089#1103' '#39'%'#39
      Align = alClient
      DynProps = <>
      EditButtons = <>
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'E_KEYWORD'
      Visible = True
      OnChange = E_KEYWORDChange
      ExplicitWidth = 637
      ExplicitHeight = 21
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
      OnClick = DBGridEh1DblClick
    end
  end
  object DATA_REASONS: TDataSource
    DataSet = DB_REASONS
    Left = 248
    Top = 176
  end
  object DB_REASONS: TOracleDataSet
    SQL.Strings = (
      'Select '
      '       Distinct t.Reason '
      'From   Ogt.Spr_Tp_Doc t'
      'Where  t.Reason Is Not Null'
      '       And Upper( t.Reason ) Like '#39'%'#39'||Upper( :v_KeyWord )||'#39'%'#39)
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0056005F004B004500590057004F0052004400
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {05000000010000000C00000052004500410053004F004E00010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DB_REASONSREASON: TStringField
      FieldName = 'REASON'
      Size = 1000
    end
  end
end
