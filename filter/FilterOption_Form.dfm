object Form_OptionFilter: TForm_OptionFilter
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100#1089#1082#1080#1081' '#1092#1080#1083#1100#1090#1088
  ClientHeight = 125
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'clWindowText'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 92
    Width = 511
    Height = 33
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Btn_Apply: TButton
      AlignWithMargins = True
      Left = 351
      Top = 4
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Btn_ApplyClick
    end
    object Btn_Close: TButton
      AlignWithMargins = True
      Left = 432
      Top = 4
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Btn_CloseClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 511
    Height = 92
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    object Group_Codition_1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 216
      Height = 84
      Align = alLeft
      Caption = #1059#1089#1083#1086#1074#1080#1077' '#8470'1'
      TabOrder = 0
      object Comb_Operator1: TComboBox
        Left = 3
        Top = 23
        Width = 207
        Height = 22
        Style = csDropDownList
        TabOrder = 0
        OnChange = Comb_OperatorChange
      end
      object Comb_Value1: TComboBox
        Left = 3
        Top = 51
        Width = 207
        Height = 22
        TabOrder = 1
        Text = 'ComboBox1'
        OnChange = Comb_ValueChange
      end
    end
    object Group_Codition_2: TGroupBox
      AlignWithMargins = True
      Left = 289
      Top = 4
      Width = 218
      Height = 84
      Align = alRight
      Caption = #1059#1089#1083#1086#1074#1080#1077' '#8470'2'
      TabOrder = 1
      object Comb_Operator2: TComboBox
        Left = 6
        Top = 24
        Width = 207
        Height = 22
        Style = csDropDownList
        TabOrder = 0
        OnChange = Comb_OperatorChange
      end
      object Comb_Value2: TComboBox
        Left = 6
        Top = 51
        Width = 207
        Height = 22
        TabOrder = 1
        Text = 'ComboBox1'
        OnChange = Comb_ValueChange
      end
    end
    object Group_Relation: TRadioGroup
      Left = 223
      Top = 1
      Width = 63
      Height = 90
      Align = alClient
      Items.Strings = (
        #1048
        #1048#1083#1080)
      TabOrder = 2
      OnClick = Group_RelationClick
    end
  end
end
