object Form35: TForm35
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1090#1088#1086#1082#1080' '#8470
  ClientHeight = 117
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 13
    Width = 73
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Label2: TLabel
    Left = 456
    Top = 13
    Width = 75
    Height = 13
    Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
  end
  object Label3: TLabel
    Left = 672
    Top = 13
    Width = 100
    Height = 13
    Caption = #1062#1077#1085#1072' '#1073#1077#1079' '#1053#1044#1057', '#1088#1091#1073'.'
  end
  object EName: TEdit
    Left = 8
    Top = 32
    Width = 329
    Height = 21
    TabOrder = 0
    Text = 'EName'
  end
  object ENom: TEdit
    Left = 360
    Top = 32
    Width = 265
    Height = 21
    TabOrder = 1
    Text = 'ENom'
  end
  object ECost: TEdit
    Left = 648
    Top = 32
    Width = 151
    Height = 21
    TabOrder = 2
    Text = 'ECost'
  end
  object Button1: TButton
    Left = 624
    Top = 72
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 724
    Top = 72
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    OnClick = Button2Click
  end
  object OraclePackage1: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 680
    Top = 24
  end
end
