object Form7: TForm7
  Left = 400
  Top = 257
  Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
  ClientHeight = 431
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel
    Left = 0
    Top = 361
    Width = 648
    Height = 70
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 61
      Top = 24
      Width = 139
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 206
      Top = 24
      Width = 139
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1084#1084'.'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Close_but: TButton
      Left = 552
      Top = 24
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      OnClick = Close_butClick
    end
    object Button3: TButton
      Left = 375
      Top = 24
      Width = 139
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1086#1084#1084'.'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 648
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 13
      Width = 30
      Height = 13
      Caption = #8470' '#1089'/'#1079
    end
    object Label2: TLabel
      Left = 184
      Top = 13
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object ENum_SZ: TEdit
      Left = 48
      Top = 10
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = 'ENum_SZ'
    end
    object EDate: TEdit
      Left = 216
      Top = 10
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = 'EDate'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 648
    Height = 16
    Align = alTop
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103
    Color = clSilver
    ParentBackground = False
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 146
    Width = 648
    Height = 16
    Align = alTop
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080' '#1085#1072#1095'. '#1080#1089#1087#1086#1083#1085#1090#1077#1083#1103
    Color = clSilver
    ParentBackground = False
    TabOrder = 3
  end
  object Panel5: TPanel
    Left = 0
    Top = 251
    Width = 648
    Height = 16
    Align = alTop
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
    Color = clSilver
    ParentBackground = False
    TabOrder = 4
  end
  object MUserComments: TRichEdit
    Left = 0
    Top = 57
    Width = 648
    Height = 89
    Align = alTop
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      'MUserComments')
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    Zoom = 100
  end
  object MHeadUComments: TRichEdit
    Left = 0
    Top = 162
    Width = 648
    Height = 89
    Align = alTop
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      'MHeadUComments')
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    Zoom = 100
  end
  object MToComments: TRichEdit
    Left = 0
    Top = 267
    Width = 648
    Height = 94
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      'MToComments')
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    Zoom = 100
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form20.OracleSession1
    Left = 472
    Top = 24
  end
  object CommentarySet: TOracleDataSet
    SQL.Strings = (
      'select * from SZ_COMMENTARY_SEO t'
      'where t.sz_numb like :vNum || '#39'%'#39'  '
      'and t.sz_date like to_date (:vDate,'#39'DD.MM.YYYY'#39') || '#39'%'#39' '
      'and t.sz_type_user like :TypeofUsr || '#39'%'#39' '
      'and t.id_str like :idStr || '#39'%'#39
      'and t.id_otdel like :vOtdel || '#39'%'#39' ')
    Optimize = False
    Variables.Data = {
      04000000050000000A0000003A0056004E0055004D0005000000000000000000
      00000C0000003A00560044004100540045000500000000000000000000001400
      00003A0054005900500045004F00460055005300520005000000000000000000
      00000C0000003A00490044005300540052000500000000000000000000000E00
      00003A0056004F005400440045004C00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000A0000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000000E00000053005A00
      5F0043004F004D004D000100000000001400000053005A005F00550053004500
      52005F00490044000100000000001A00000043004F004D004D0045004E005400
      5F0044004100540045005F000100000000000C000000490044005F0053005400
      52000100000000001800000053005A005F0054005900500045005F0055005300
      4500520001000000000010000000490044005F004F005400440045004C000100
      000000001800000053005A005F0043004F004D004D005F00560041005A004800
      0100000000001A00000053005A005F0043004F004D004D005F00490053004400
      45004C00010000000000}
    Session = Form20.OracleSession1
    Left = 448
    Top = 104
    object CommentarySetSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object CommentarySetSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object CommentarySetSZ_COMM: TStringField
      FieldName = 'SZ_COMM'
      Size = 4000
    end
    object CommentarySetSZ_USER_ID: TFloatField
      FieldName = 'SZ_USER_ID'
    end
    object CommentarySetCOMMENT_DATE_: TStringField
      FieldName = 'COMMENT_DATE_'
      Size = 1000
    end
    object CommentarySetID_STR: TFloatField
      FieldName = 'ID_STR'
    end
    object CommentarySetSZ_TYPE_USER: TFloatField
      FieldName = 'SZ_TYPE_USER'
    end
    object CommentarySetID_OTDEL: TFloatField
      FieldName = 'ID_OTDEL'
    end
    object CommentarySetSZ_COMM_VAZH: TFloatField
      FieldName = 'SZ_COMM_VAZH'
    end
    object CommentarySetSZ_COMM_ISDEL: TFloatField
      FieldName = 'SZ_COMM_ISDEL'
    end
  end
  object OraclePackage2: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_ENTER'
    Left = 424
    Top = 24
  end
  object OraclePackage1: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 560
    Top = 32
  end
end
