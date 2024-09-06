object Form34: TForm34
  Left = 0
  Top = 0
  Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082'  '#1089'/'#1079' '#8470#1047#1057'-'
  ClientHeight = 501
  ClientWidth = 766
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 57
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 81
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 127
      Top = 8
      Width = 81
      Height = 33
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 294
      Top = 8
      Width = 81
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 636
      Top = 8
      Width = 81
      Height = 33
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 766
    Height = 444
    Align = alClient
    DataSource = DS_INFO_MAIN
    DynProps = <>
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1072#1081#1083#1072
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NOTE'
        Footers = <>
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS_INFO_MAIN: TDataSource
    AutoEdit = False
    DataSet = INFO_MAIN
    Left = 400
    Top = 283
  end
  object INFO_MAIN: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from SZ_GOZ_EXP t'
      'where t.sz_numb = :vNum'
      'and t.sz_date = :vDate'
      '')
    Optimize = False
    Variables.Data = {
      04000000020000000A0000003A0056004E0055004D0005000000000000000000
      00000C0000003A0056004400410054004500050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000080000000A000000550053004500520053000100000000000A000000
      53005A005F00490044000100000000000E00000053005A005F004E0055004D00
      42000100000000000E00000053005A005F004E0041004D004500010000000000
      0E00000053005A005F005400450052004D000100000000000E00000053005A00
      5F0044004100540041000100000000000E00000053005A005F004E004F005400
      45000100000000000E00000053005A005F004400410054004500010000000000}
    QueryAllRecords = False
    Session = OracleSession1
    Left = 320
    Top = 307
    object INFO_MAINSZ_ID: TFloatField
      FieldName = 'SZ_ID'
    end
    object INFO_MAINSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object INFO_MAINSZ_NAME: TStringField
      FieldName = 'SZ_NAME'
      Size = 200
    end
    object INFO_MAINUSERS: TFloatField
      FieldName = 'USERS'
    end
    object INFO_MAINSZ_TERM: TStringField
      FieldName = 'SZ_TERM'
      Size = 50
    end
    object INFO_MAINSZ_DATA: TDateTimeField
      FieldName = 'SZ_DATA'
    end
    object INFO_MAINSZ_NOTE: TStringField
      FieldName = 'SZ_NOTE'
      Size = 300
    end
    object INFO_MAINSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
  end
  object OracleSession1: TOracleSession
    LogonUsername = 'mrk'
    LogonPassword = 'mrkt'
    LogonDatabase = 'SDB'
    Preferences.ConvertUTF = cuUTF8ToUTF16
    Connected = True
    Left = 240
    Top = 275
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = OracleSession1
    Left = 172
    Top = 275
  end
  object OpenDialog1: TOpenDialog
    Left = 224
    Top = 176
  end
end
