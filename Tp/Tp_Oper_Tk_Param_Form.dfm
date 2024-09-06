object Form_Oper_TK_Params: TForm_Oper_TK_Params
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1087#1077#1088#1072#1094#1080#1080' "'#1058#1077#1093#1085'. '#1082#1086#1085#1090#1088#1086#1083#1100'"'
  ClientHeight = 150
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object E_PARAM: TDBEditEh
    Left = 8
    Top = 21
    Width = 263
    Height = 24
    ControlLabel.Width = 159
    ControlLabel.Height = 16
    ControlLabel.Caption = #1050#1086#1085#1090#1088#1086#1083#1080#1088#1091#1077#1084#1099#1081' '#1087#1072#1088#1072#1084#1077#1090#1088
    ControlLabel.Visible = True
    DataField = 'PARAM_OTK'
    DataSource = Dm_Tech_Proc.Data_Opers
    DynProps = <>
    EditButtons = <>
    TabOrder = 0
    Visible = True
  end
  object E_CODE_TO: TDBEditEh
    Left = 8
    Top = 67
    Width = 263
    Height = 24
    ControlLabel.Width = 99
    ControlLabel.Height = 16
    ControlLabel.Caption = #1050#1086#1076' '#1089#1088#1077#1076#1089#1090#1074#1072' '#1058#1054
    ControlLabel.Visible = True
    DataField = 'MEANS_OTK'
    DataSource = Dm_Tech_Proc.Data_Opers
    DynProps = <>
    EditButtons = <>
    TabOrder = 1
    Visible = True
  end
  object E_VOLUME: TDBEditEh
    Left = 8
    Top = 115
    Width = 263
    Height = 24
    ControlLabel.Width = 68
    ControlLabel.Height = 16
    ControlLabel.Caption = #1054#1073#1098#1077#1084' '#1080' '#1055#1050
    ControlLabel.Visible = True
    DataField = 'VOLUME_OTK'
    DataSource = Dm_Tech_Proc.Data_Opers
    DynProps = <>
    EditButtons = <
      item
      end>
    TabOrder = 2
    Visible = True
  end
end
