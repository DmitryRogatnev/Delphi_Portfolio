object Form_Oper_Files: TForm_Oper_Files
  Left = 0
  Top = 0
  Caption = #1055#1088#1080#1082#1088#1077#1087#1083#1077#1085#1085#1099#1077' '#1092#1072#1081#1083#1099
  ClientHeight = 513
  ClientWidth = 1001
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Main_M_Oper_Files
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Grid_Oper_Files: TDBGridEh
    Left = 0
    Top = 81
    Width = 1001
    Height = 432
    Align = alClient
    AllowedOperations = [alopUpdateEh, alopDeleteEh, alopAppendEh]
    AutoFitColWidths = True
    DynProps = <>
    EvenRowColor = clWindow
    Flat = True
    HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbDeleteEh, nbRefreshEh]
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    EmptyDataInfo.Active = True
    EmptyDataInfo.Text = #1060#1072#1081#1083#1099' '#1085#1077' '#1076#1086#1073#1072#1074#1083#1077#1085#1099
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    PopupMenu = Pop_M_Oper_Files
    ReadOnly = True
    SearchPanel.Enabled = True
    STFilter.InstantApply = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 0
    OnGetCellParams = Grid_Oper_FilesGetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_ROW_OPER'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME_FILE'
        Footers = <>
        Title.Caption = #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091
        Width = 350
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COMMENT_FILE'
        Footers = <>
        Title.Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
        Width = 360
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RAZRAB_NAME'
        Footers = <>
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 109
      end
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'FLAG_DET_CPY'
        Footers = <>
        KeyList.Strings = (
          '1;'
          '0')
        Title.Alignment = taCenter
        Title.Caption = #1055#1088'.'
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATAIZM'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1001
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      1001
      81)
    object Lb_Copy_Status: TLabel
      Left = 444
      Top = 54
      Width = 89
      Height = 14
      Anchors = [akTop, akRight]
      Caption = 'Lb_Copy_Status'
      Layout = tlCenter
      Visible = False
    end
    object Lb_Copy_File: TLabel
      Left = 596
      Top = 50
      Width = 385
      Height = 22
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Lb_Copy_File'
      Layout = tlCenter
      Visible = False
    end
    object Btn_File_Add: TButton
      Left = 750
      Top = 19
      Width = 111
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100' '#1092#1072#1081#1083
      TabOrder = 0
      OnClick = Btn_File_AddClick
    end
    object Btn_Dir_Add: TButton
      Left = 867
      Top = 19
      Width = 114
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100' '#1087#1072#1087#1082#1091
      TabOrder = 1
      OnClick = Btn_Dir_AddClick
    end
    object Progress_Bar_Copying: TProgressBar
      Left = 8
      Top = 50
      Width = 430
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object E_File_Path: TDBEditEh
      Left = 8
      Top = 20
      Width = 736
      Height = 22
      ControlLabel.Width = 80
      ControlLabel.Height = 14
      ControlLabel.Caption = #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091':'
      ControlLabel.Visible = True
      DynProps = <>
      EditButtons = <
        item
          Hint = #1054#1073#1079#1086#1088
          ShortCut = 0
          Style = ebsEllipsisEh
          OnClick = E_File_PathEditButtons0Click
        end>
      EmptyDataInfo.Text = #1060#1072#1081#1083' '#1085#1077' '#1091#1082#1072#1079#1072#1085'...'
      ReadOnly = True
      TabOrder = 3
      Text = 'E_File_Path'
      Visible = True
    end
  end
  object Pop_M_Oper_Files: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 504
    Top = 272
    object Pop_M_Oper_Files_Btn_Open_File: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
      OnClick = Main_M_Oper_Files_Btn_File_OpenClick
    end
    object Pop_M_Oper_Files_Btn_Replace_File: TMenuItem
      Caption = #1047#1072#1084#1077#1085#1080#1090#1100' '
      OnClick = Main_M_Oper_Files_Btn_File_ReplaceClick
    end
    object Pop_M_Oper_Files_Btn_Delete_File: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = Main_M_Oper_Files_Btn_File_DeleteClick
    end
  end
  object Main_M_Oper_Files: TMainMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 672
    Top = 328
    object Main_M_Oper_Files_Btn_File: TMenuItem
      Caption = #1060#1072#1081#1083
      ImageIndex = 33
      object Main_M_Oper_Files_Btn_File_Open: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = Main_M_Oper_Files_Btn_File_OpenClick
      end
      object Main_M_Oper_Files_Btn_File_Replace: TMenuItem
        Caption = #1047#1072#1084#1077#1085#1080#1090#1100
        OnClick = Main_M_Oper_Files_Btn_File_ReplaceClick
      end
      object Main_M_Oper_Files_Btn_File_Delete: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = Main_M_Oper_Files_Btn_File_DeleteClick
      end
    end
    object Main_M_Oper_Files_Btn_Save: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 22
      OnClick = Main_M_Oper_Files_Btn_SaveClick
    end
    object Main_M_Oper_Files_Btn_Exit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 32
      OnClick = Main_M_Oper_Files_Btn_ExitClick
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 648
    Top = 208
  end
end
