object Form_Per_Osn: TForm_Per_Osn
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1086#1089#1085#1072#1089#1090#1082#1080' '#1082' '#1087#1077#1088#1077#1093#1086#1076#1091
  ClientHeight = 340
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Grid_Per_Osn: TDBGridEh
    Left = 0
    Top = 0
    Width = 675
    Height = 340
    Align = alClient
    AutoFitColWidths = True
    DataSource = Dm_Tech_Proc.Data_Per_Osnast
    DynProps = <>
    EditActions = [geaCopyEh, geaPasteEh]
    Flat = True
    OddRowColor = clMenuBar
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    PopupMenu = Pop_M_Per_Osn
    SearchPanel.Enabled = True
    TabOrder = 0
    OnGetCellParams = Grid_Per_OsnGetCellParams
    OnKeyUp = Grid_Per_OsnKeyUp
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SHOSN_NOM'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1087'/'#1087
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SHOSN_NUM'
        Footers = <>
        Title.Caption = #1064#1080#1092#1088
        Width = 200
        OnUpdateData = DBGridEh1Columns1UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SHOSN_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 300
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
  object Pop_M_Per_Osn: TPopupMenu
    OnPopup = Pop_M_Per_OsnPopup
    Left = 96
    Top = 88
    object Pop_M_Per_Osn_Btn_Delete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = Pop_M_Per_Osn_Btn_DeleteClick
    end
  end
end
