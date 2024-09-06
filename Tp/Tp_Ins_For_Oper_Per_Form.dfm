object Form_Per_Ins: TForm_Per_Ins
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1086#1074' '#1082' '#1087#1077#1088#1077#1093#1086#1076#1091
  ClientHeight = 338
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop_M_Per_Ins
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Grid_Per_Ins: TDBGridEh
    Left = 0
    Top = 0
    Width = 789
    Height = 338
    Align = alClient
    AutoFitColWidths = True
    DataSource = Dm_Tech_Proc.Data_Per_Instruments
    DynProps = <>
    EditActions = [geaCopyEh, geaPasteEh]
    Flat = True
    OddRowColor = clMenuBar
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    PopupMenu = Pop_M_Per_Ins
    SearchPanel.Enabled = True
    TabOrder = 0
    OnGetCellParams = Grid_Per_InsGetCellParams
    OnKeyUp = Grid_Per_InsKeyUp
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOM_INSTR'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1087'/'#1087
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'INSTR_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 383
        OnUpdateData = DBGridEh1Columns1UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATAIZM'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Pop_M_Per_Ins: TPopupMenu
    OnPopup = Pop_M_Per_InsPopup
    Left = 96
    Top = 88
    object Pop_M_Per_Ins_Btn_Delete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = Pop_M_Per_Ins_Btn_DeleteClick
    end
  end
end
