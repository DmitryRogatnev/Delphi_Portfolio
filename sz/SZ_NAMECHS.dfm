object Form24: TForm24
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1087#1086#1079#1080#1094#1080#1080' '#8470' '
  ClientHeight = 365
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid_MainSZ: TDBGrid
    Left = 0
    Top = 0
    Width = 547
    Height = 316
    Align = alClient
    DataSource = DS_INFO
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NAIM'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOM'
        Title.Caption = #1048#1041#1071#1051
        Width = 180
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 316
    Width = 547
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Save_but: TButton
      Left = 360
      Top = 16
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 0
      OnClick = Save_butClick
    end
    object Close_but: TButton
      Left = 465
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Close_butClick
    end
  end
  object DS_NOM: TOracleDataSet
    SQL.Strings = (
      
        'select * from sveta.M08 t  where translate (t.nom, '#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.' +
        '-'#39', '#39'%'#39') like translate (:vNOM, '#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-'#39', '#39'%'#39')'
      'and t.snpr = 1')
    Optimize = False
    Variables.Data = {
      04000000010000000A0000003A0056004E004F004D0005000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      0500000012000000040000004B004400010000000000060000004E004F004D00
      010000000000080000004E00410049004D000100000000000A00000044005400
      4B004F0052000100000000000C0000005000520049004D0045004E0001000000
      00000E0000004E00450057005F004E004F004D00010000000000060000004D00
      44005600010000000000060000005000520055000100000000000A0000004B00
      44005A0041004D000100000000000C0000004E004F004D005A0041004D000100
      000000000C00000049005A0044005F00470052000100000000000C0000005000
      52005F0049005A0044000100000000000C00000043004F004D0045004E005400
      010000000000120000004E0041004D0045005F004500540049004B0001000000
      00000800000053004E00500052000100000000000C000000490044005F004F00
      4700540001000000000008000000500052004F0043000100000000000A000000
      500052005F0045004C00010000000000}
    Session = Form20.OracleSession1
    Left = 443
    Top = 161
    object DS_NOMKD: TStringField
      FieldName = 'KD'
      Required = True
      Size = 13
    end
    object DS_NOMNOM: TStringField
      FieldName = 'NOM'
      Required = True
      Size = 100
    end
    object DS_NOMNAIM: TStringField
      FieldName = 'NAIM'
      Required = True
      Size = 100
    end
    object DS_NOMDTKOR: TDateTimeField
      FieldName = 'DTKOR'
    end
    object DS_NOMPRIMEN: TStringField
      FieldName = 'PRIMEN'
      Size = 535
    end
    object DS_NOMNEW_NOM: TStringField
      FieldName = 'NEW_NOM'
      Size = 100
    end
    object DS_NOMMDV: TStringField
      FieldName = 'MDV'
      Size = 300
    end
    object DS_NOMPRU: TStringField
      FieldName = 'PRU'
      Size = 1
    end
    object DS_NOMKDZAM: TStringField
      FieldName = 'KDZAM'
      Size = 13
    end
    object DS_NOMNOMZAM: TStringField
      FieldName = 'NOMZAM'
      Size = 35
    end
    object DS_NOMIZD_GR: TStringField
      FieldName = 'IZD_GR'
      Size = 100
    end
    object DS_NOMPR_IZD: TStringField
      FieldName = 'PR_IZD'
      Size = 1
    end
    object DS_NOMCOMENT: TStringField
      FieldName = 'COMENT'
      Size = 300
    end
    object DS_NOMNAME_ETIK: TStringField
      FieldName = 'NAME_ETIK'
      Size = 100
    end
    object DS_NOMSNPR: TIntegerField
      FieldName = 'SNPR'
    end
    object DS_NOMID_OGT: TFloatField
      FieldName = 'ID_OGT'
    end
    object DS_NOMPROC: TFloatField
      FieldName = 'PROC'
    end
    object DS_NOMPR_EL: TStringField
      FieldName = 'PR_EL'
      Size = 50
    end
  end
  object DS_INFO: TDataSource
    DataSet = DS_NOM
    Left = 323
    Top = 151
  end
end
