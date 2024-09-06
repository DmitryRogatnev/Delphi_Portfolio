object Form3: TForm3
  Left = 743
  Top = 321
  Caption = #1042#1099#1073#1086#1088' '#1089#1090#1088#1086#1082#1080
  ClientHeight = 171
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 246
    Height = 58
    Align = alTop
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 48
    Top = 104
    Width = 137
    Height = 49
    Caption = #1054#1050
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 64
    Top = 72
    Width = 105
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'Edit1'
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form20.OracleSession1
    Left = 200
    Top = 80
  end
end
