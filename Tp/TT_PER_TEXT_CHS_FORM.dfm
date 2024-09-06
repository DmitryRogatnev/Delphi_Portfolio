object Form22: TForm22
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1077#1093'. '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1076#1083#1103' '#1087#1077#1088#1077#1093#1086#1076#1086#1074
  ClientHeight = 309
  ClientWidth = 645
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
    Top = 28
    Width = 645
    Height = 281
    Align = alClient
    AutoFitColWidths = True
    DataSource = DATA_TT_TEXT
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
        FieldName = 'TT'
        Footers = <>
        Title.Caption = #1058#1077#1082#1089#1090' '#1090#1077#1093'. '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103
        Width = 300
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 28
    Align = alTop
    TabOrder = 1
    object E_KEYWORD: TDBEditEh
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 637
      Height = 20
      Hint = #1053#1077#1080#1079#1074#1077#1089#1090#1085#1099#1077' '#1089#1080#1084#1074#1086#1083#1099' '#1079#1072#1084#1077#1085#1103#1102#1090#1089#1103' '#39'%'#39
      Align = alClient
      DynProps = <>
      EditButtons = <>
      EmptyDataInfo.Text = 
        #1059#1082#1072#1078#1080#1090#1077' '#1090#1077#1082#1089#1090' '#1090#1077#1093'. '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103', '#1085#1077#1080#1079#1074#1077#1089#1090#1085#1099#1077' '#1089#1080#1084#1074#1086#1083#1099' '#1084#1086#1078#1085#1086' '#1079#1072#1084#1077#1085#1080#1090 +
        #1100' '#1085#1072' "%"...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'E_KEYWORD'
      Visible = True
      OnChange = E_KEYWORDChange
      ExplicitHeight = 21
    end
  end
  object DB_TT_TEXT: TOracleDataSet
    SQL.Strings = (
      'Select *'
      'From   ( Select '
      '                Distinct Trim(t.TT_PER) as TT '
      '         From   Ogt.Tp_Ok_Per_Dlp t'
      '         Where t.Tt_Per Is Not Null'
      ''
      '         Union All'
      ''
      '         Select '
      '                Distinct Trim(t.TT_PER) as TT'
      '         From   Ogt.Tp_Ok_Per t'
      '         Where  t.Tt_Per Is Not Null )'
      'Where  Upper( TT ) Like '#39'%'#39'||Upper( :v_KeyWord )||'#39'%'#39
      ''
      'Order by TT')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0056005F004B004500590057004F0052004400
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {05000000010000000400000054005400010000000000}
    QueryAllRecords = False
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DB_TT_TEXTTT: TStringField
      FieldName = 'TT'
      Size = 1000
    end
  end
  object DATA_TT_TEXT: TDataSource
    DataSet = DB_TT_TEXT
    Left = 248
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 208
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = DBGridEh1DblClick
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form2.OracleSession1
    Left = 401
    Top = 158
  end
end
