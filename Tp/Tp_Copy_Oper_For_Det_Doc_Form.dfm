object Form_Copy_Opers_From_TTP: TForm_Copy_Opers_From_TTP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1086#1087#1077#1088#1072#1094#1080#1081
  ClientHeight = 448
  ClientWidth = 900
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
  object Panel1: TPanel
    Left = 0
    Top = 422
    Width = 900
    Height = 26
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      900
      26)
    object COPY_1_Check: TCheckBox
      Left = 8
      Top = 4
      Width = 201
      Height = 17
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1089' '#1079#1072#1084#1077#1085#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = COPY_1_CheckClick
    end
    object COPY_2_Check: TCheckBox
      Left = 215
      Top = 4
      Width = 234
      Height = 17
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1100' '#1080#1084#1077#1102#1097#1080#1077#1089#1103' '#1086#1087#1077#1088#1072#1094#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = COPY_2_CheckClick
    end
    object COPY_BTN: TButton
      Left = 684
      Top = 2
      Width = 103
      Height = 20
      Anchors = [akTop, akRight]
      Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = COPY_BTNClick
    end
    object EXIT_BTN: TButton
      Left = 791
      Top = 2
      Width = 103
      Height = 20
      Anchors = [akTop, akRight]
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = EXIT_BTNClick
    end
    object Btn_Chose_All: TButton
      Left = 428
      Top = 2
      Width = 103
      Height = 20
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Btn_Chose_AllClick
    end
    object Btn_Unchose_All: TButton
      Left = 537
      Top = 2
      Width = 103
      Height = 20
      Caption = #1057#1085#1103#1090#1100' '#1074#1089#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Btn_Unchose_AllClick
    end
  end
  object Grid_Operations: TDBGridEh
    Left = 0
    Top = 0
    Width = 900
    Height = 422
    Align = alClient
    AllowedSelections = [gstRecordBookmarks, gstAll]
    AutoFitColWidths = True
    DataSource = Dm_TechProc_List.Data_Operations_For_Copy
    DynProps = <>
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRowselCheckboxesEh]
    EmptyDataInfo.Active = True
    EmptyDataInfo.Text = #1054#1087#1077#1088#1072#1094#1080#1080' '#1085#1077' '#1085#1072#1081#1076#1077#1085#1099
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentFont = False
    PopupMenu = Pop_M_Operations_For_Copy
    SearchPanel.Enabled = True
    SortLocal = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 1
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CEH_CODE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1093
        Title.TitleButton = True
        Width = 56
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ROW_NUM_GEN'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '
        Title.TitleButton = True
        Width = 45
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
        Title.TitleButton = True
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_IOT'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1044#1086#1087'. '#1080#1085#1089#1090#1088#1091#1082#1094#1080#1080' '#1087#1086' '#1054#1058
        Title.TitleButton = True
        Width = 300
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Pop_M_Operations_For_Copy: TPopupMenu
    Left = 632
    Top = 128
    object Pop_M_Operations_For_Copy_Btn_Chose: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = Pop_M_Operations_For_Copy_Btn_ChoseClick
    end
    object Pop_M_Operations_For_Copy_Btn_UnChose: TMenuItem
      Caption = #1057#1085#1103#1090#1100
      OnClick = Pop_M_Operations_For_Copy_Btn_UnChoseClick
    end
  end
end
