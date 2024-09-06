object Form_Add_Sym: TForm_Add_Sym
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1077#1094'. '#1089#1080#1084#1074#1086#1083
  ClientHeight = 187
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 243
    Height = 181
    Align = alClient
    Columns = <>
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnDblClick = ListView1DblClick
    OnKeyUp = ListView1KeyUp
  end
  object PopupMenu1: TPopupMenu
    Left = 109
    Top = 111
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = ListView1DblClick
    end
  end
end
