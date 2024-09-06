object Form_Dc_Comm_Files: TForm_Dc_Comm_Files
  Left = 0
  Top = 0
  Caption = #1060#1072#1081#1083#1099' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1103
  ClientHeight = 439
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'clWindowText'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Grid_Files: TDBGridEh
    Left = 0
    Top = 24
    Width = 840
    Height = 415
    Align = alClient
    AutoFitColWidths = True
    DataSource = Form_Main_Dc_Comm.Data_Dc_Files
    DynProps = <>
    EvenRowColor = clMenu
    Flat = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    ReadOnly = True
    RowHeight = 2
    RowLines = 1
    SearchPanel.Enabled = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FILE_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1072#1081#1083#1072
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_INSERT'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 840
    Height = 24
    ButtonHeight = 23
    Caption = 'ToolBar1'
    Images = Form_Main_Dc_Comm.Img_List_Dc_Comm
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = Act_Add
    end
    object ToolButton4: TToolButton
      Left = 23
      Top = 0
      Action = Act_RepalceFile
    end
    object ToolButton2: TToolButton
      Left = 46
      Top = 0
      Action = Act_AddDir
    end
    object ToolButton3: TToolButton
      Left = 69
      Top = 0
      Action = Act_OpenFile
    end
    object ToolButton5: TToolButton
      Left = 92
      Top = 0
      Action = Act_Delete
    end
  end
  object Pop_M_Dc_Comm_Files: TPopupMenu
    Left = 352
    Top = 240
    object N4: TMenuItem
      Action = Act_Add
    end
    object N1: TMenuItem
      Action = Act_OpenFile
    end
    object N2: TMenuItem
      Action = Act_RepalceFile
    end
    object N3: TMenuItem
      Action = Act_Delete
    end
  end
  object Dlg_Open_File: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 168
    Top = 280
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 377
    Top = 173
  end
  object ActionList1: TActionList
    Images = Form_Main_Dc_Comm.Img_List_Dc_Comm
    Left = 616
    Top = 272
    object Act_Add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1092#1072#1081#1083
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1092#1072#1081#1083
      ImageIndex = 44
      OnExecute = Act_AddExecute
    end
    object Act_AddDir: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1072#1087#1082#1091
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1072#1087#1082#1091
      ImageIndex = 77
      Visible = False
      OnExecute = Act_AddDirExecute
    end
    object Act_OpenFile: TAction
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088
      ImageIndex = 76
      OnExecute = Act_OpenFileExecute
    end
    object Act_RepalceFile: TAction
      Caption = #1047#1072#1084#1077#1085#1080#1090#1100
      Hint = #1047#1072#1084#1077#1085#1080#1090#1100
      ImageIndex = 10
      OnExecute = Act_RepalceFileExecute
    end
    object Act_Delete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 8
      OnExecute = Act_DeleteExecute
    end
  end
end
