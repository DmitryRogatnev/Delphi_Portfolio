object Form_KodProf_Chs: TForm_KodProf_Chs
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1086#1076#1086#1074' '#1087#1088#1086#1092#1092#1077#1089#1089#1080#1080
  ClientHeight = 309
  ClientWidth = 559
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
    Width = 559
    Height = 309
    Align = alClient
    AutoFitColWidths = True
    DataSource = DATA_KODPROF
    DynProps = <>
    OddRowColor = clMenuBar
    PopupMenu = PopupMenu1
    SearchPanel.Enabled = True
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDblClick = DBGridEh1DblClick
    OnKeyUp = DBGridEh1KeyUp
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KODPROF'
        Footers = <>
        Title.Caption = #1050#1086#1076' '#1087#1088#1086#1092#1077#1089#1089#1080#1080
        Width = 81
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KVN'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1091#1089#1083#1086#1074#1080#1081' '#1090#1088#1091#1076#1072
        Width = 75
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RAZR'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1056#1072#1079#1088#1103#1076
        Width = 46
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PROF'
        Footers = <>
        Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
        Width = 323
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DB_KODPROF: TOracleDataSet
    SQL.Strings = (
      'Select Prof.Kodprof, '
      '       Prof.Prof,'
      '       Razr.Razr,'
      '       Razr.Kvn,'
      '       Prof_C.Nc'
      'From   Sveta.M26 Prof '
      'Join   Skl.S109_Factch_Prof Prof_C'
      'On     Prof_C.KodProf = Prof .Kodprof'
      'Left   Join ( Select Distinct a.Kodprof, a.Razr, a.Nc, a.Kvn'
      '              From   Sveta.M05 a ) Razr'
      'On     Razr.Kodprof = Prof.Kodprof'
      '       And Razr.Nc = Prof_C.Nc '
      'Where   ( ( Upper(Prof.Kodprof) Like '#39'%'#39'||Upper(:v_KeyWord)||'#39'%'#39
      
        '              Or Upper(Prof.Prof) Like '#39'%'#39'||Upper(:v_KeyWord)||'#39 +
        '%'#39' ) )'
      '       And Prof_C.Nc = :v_Ceh_Code'
      'Order by Prof.KodProf, Razr.Razr')
    Optimize = False
    Variables.Data = {
      0400000002000000140000003A0056005F004B004500590057004F0052004400
      050000000000000000000000160000003A0056005F004300450048005F004300
      4F0044004500050000000300000030310000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000050000000E0000004B004F004400500052004F004600010000000000
      08000000500052004F00460001000000000008000000520041005A0052000100
      00000000040000004E004300010000000000060000004B0056004E0001000000
      0000}
    Session = DM_Main.Session
    Left = 136
    Top = 168
    object DB_KODPROFKODPROF: TStringField
      FieldName = 'KODPROF'
      Required = True
      Size = 5
    end
    object DB_KODPROFPROF: TStringField
      FieldName = 'PROF'
      Size = 100
    end
    object DB_KODPROFRAZR: TIntegerField
      FieldName = 'RAZR'
    end
    object DB_KODPROFNC: TStringField
      FieldName = 'NC'
      Required = True
      Size = 2
    end
    object DB_KODPROFKVN: TIntegerField
      FieldName = 'KVN'
    end
  end
  object DATA_KODPROF: TDataSource
    DataSet = DB_KODPROF
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
