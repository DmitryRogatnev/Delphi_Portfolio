object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1103
  ClientHeight = 62
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 62
    Align = alClient
    TabOrder = 0
    object EComment: TEdit
      Left = 12
      Top = 5
      Width = 611
      Height = 22
      TabOrder = 0
      Text = 'EComment'
    end
    object Vazhn_Check: TCheckBox
      Left = 629
      Top = -5
      Width = 57
      Height = 42
      Caption = #1042#1072#1078#1085'.'
      TabOrder = 1
      OnClick = Vazhn_CheckClick
    end
    object Close_but: TButton
      Left = 611
      Top = 33
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      OnClick = Close_butClick
    end
    object Save_but: TButton
      Left = 530
      Top = 33
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 3
      OnClick = Save_butClick
    end
  end
  object OraclePackage1: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 472
    Top = 8
  end
end
