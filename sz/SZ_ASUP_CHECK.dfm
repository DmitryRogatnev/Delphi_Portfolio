object Form40: TForm40
  Left = 0
  Top = 0
  Caption = 'Form40'
  ClientHeight = 630
  ClientWidth = 1300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    1300
    630)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel14: TPanel
    Left = 0
    Top = 0
    Width = 1300
    Height = 49
    Align = alTop
    BevelEdges = [beBottom]
    Color = clMenuBar
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1300
      49)
    object Label4: TLabel
      Left = 17
      Top = 25
      Width = 21
      Height = 14
      Caption = #1047#1057' -'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object LCB_Contact: TDBLookupComboboxEh
      Left = 1152
      Top = 21
      Width = 145
      Height = 21
      ControlLabel.Width = 66
      ControlLabel.Height = 13
      ControlLabel.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
      ControlLabel.Visible = True
      Anchors = [akTop, akRight]
      DynProps = <>
      DataField = ''
      EditButtons = <>
      KeyField = 'FIO'
      ListField = 'FIO'
      ListSource = Data_Users
      TabOrder = 0
      Visible = True
    end
    object E_Det_Name: TDBEditEh
      Left = 116
      Top = 21
      Width = 217
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ControlLabel.Width = 149
      ControlLabel.Height = 13
      ControlLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      ControlLabel.Visible = True
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Text = 'E_Det_Name'
      Visible = True
      OnChange = E_Det_NameChange
    end
    object E_Det_Num: TDBEditEh
      Left = 339
      Top = 21
      Width = 242
      Height = 21
      Anchors = [akTop, akRight]
      ControlLabel.Width = 75
      ControlLabel.Height = 13
      ControlLabel.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
      ControlLabel.Visible = True
      DynProps = <>
      EditButtons = <>
      TabOrder = 2
      Text = 'E_Det_Num'
      Visible = True
      OnChange = E_Det_NumChange
    end
    object E_Sz_Num: TDBEditEh
      Left = 44
      Top = 21
      Width = 66
      Height = 21
      ControlLabel.Width = 30
      ControlLabel.Height = 13
      ControlLabel.Caption = #8470' '#1089'/'#1079
      ControlLabel.Visible = True
      DynProps = <>
      EditButtons = <>
      TabOrder = 3
      Text = 'E_Sz_Num'
      Visible = True
      OnChange = E_Sz_NumChange
    end
    object E_Det_Kd: TDBEditEh
      Left = 587
      Top = 21
      Width = 242
      Height = 21
      Anchors = [akTop, akRight]
      ControlLabel.Width = 20
      ControlLabel.Height = 13
      ControlLabel.Caption = #1050#1086#1076
      ControlLabel.Visible = True
      DynProps = <>
      EditButtons = <>
      TabOrder = 4
      Text = 'E_Det_Kd'
      Visible = True
      OnChange = E_Det_KdChange
    end
  end
  object DBGridEh_SIGN: TDBGridEh
    Left = 3
    Top = 55
    Width = 558
    Height = 266
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    AutoFitColWidths = True
    DataSource = Data_Info_Main
    DynProps = <>
    EvenRowColor = clMenu
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PM_GRID_SIGN
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NUMB'
        Footers = <>
        Title.Caption = #8470' '#1089'/'#1079
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_DATE'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072
        Width = 163
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_FROM'
        Footers = <>
        Title.Caption = #1054#1090
        Visible = False
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_TO'
        Footers = <>
        Title.Caption = #1050#1086#1084#1091
        Visible = False
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CONTACT'
        Footers = <>
        Title.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
        Width = 181
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STATUS'
        Footers = <>
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Visible = False
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridEh_SIGN_CONTENT: TDBGridEh
    Left = 3
    Top = 327
    Width = 1294
    Height = 267
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoFitColWidths = True
    DataSource = Data_Sz_Content
    DynProps = <>
    EditActions = [geaCutEh, geaCopyEh, geaPasteEh, geaDeleteEh, geaSelectAllEh]
    EvenRowColor = clMenuBar
    PopupMenu = PM_CONTENT
    TabOrder = 2
    TitleParams.RowHeight = 35
    OnDblClick = N21Click
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_STR'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1087'/'#1087
        Width = 25
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NAME_OB'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 403
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_IBYAL_OB'
        Footers = <>
        Title.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
        Width = 348
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_CODE_OB'
        Footers = <>
        Title.Caption = #1050#1086#1076
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 596
    Width = 1300
    Height = 34
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      1300
      34)
    object Btn_Comment: TButton
      Left = 17
      Top = 4
      Width = 89
      Height = 25
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Btn_CommentClick
    end
    object SIGN_BTN: TButton
      Left = 432
      Top = 4
      Width = 169
      Height = 25
      Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = SIGN_BTNClick
    end
    object Button6: TButton
      Left = 1200
      Top = 4
      Width = 89
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button6Click
    end
    object CANCEL_SIGN_BTN: TButton
      Left = 808
      Top = 4
      Width = 169
      Height = 25
      Caption = #1054#1090#1082#1072#1079#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = CANCEL_SIGN_BTNClick
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 567
    Top = 55
    Width = 730
    Height = 266
    Anchors = [akTop, akRight]
    AutoFitColWidths = True
    DataSource = Data_Main_Appr_Steps
    DynProps = <>
    TabOrder = 4
    OnGetCellParams = DBGridEh2GetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CEH_NAME'
        Footers = <>
        Title.Caption = #1054#1090#1076#1077#1083
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'APPR_STEP_NAME'
        Footers = <>
        Title.Caption = #1057#1086#1075#1083#1072#1089#1091#1102#1097#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
        Width = 160
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_IN'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_OUT'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RAZRAB_NAME'
        Footers = <>
        Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STATUS'
        Footers = <>
        Title.Caption = #1057#1090#1072#1090#1091#1089
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object PM_CONTENT: TPopupMenu
    Left = 644
    Top = 418
    object N21: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1074' '#1087#1086#1080#1089#1082#1077' '#1095#1077#1088#1090#1077#1078#1085#1086#1075#1086' '#8470
      OnClick = N21Click
    end
  end
  object PM_GRID_SIGN: TPopupMenu
    Left = 708
    Top = 466
    object N4: TMenuItem
      Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100
      OnClick = SIGN_BTNClick
    end
    object N5: TMenuItem
      Caption = #1054#1090#1082#1083#1086#1085#1080#1090#1100
      OnClick = CANCEL_SIGN_BTNClick
    end
    object N11: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = dsd1Click
    end
    object N15: TMenuItem
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      OnClick = Btn_CommentClick
    end
  end
  object TrayIcon1: TTrayIcon
    AnimateInterval = 500
    Hint = #1041#1072#1079#1072' '#1089'/'#1079
    BalloonTitle = #1041#1072#1079#1072' '#1089'/'#1079' '#1048#1053#1060#1054
    BalloonTimeout = 1
    BalloonFlags = bfInfo
    Icons = ImageList1
    Left = 108
    Top = 322
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 300000
    OnTimer = Timer3Timer
    Left = 148
    Top = 390
  end
  object ImageList1: TImageList
    Left = 200
    Top = 320
    Bitmap = {
      494C0101020008007C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EAD99AFFEAD99AFFEAD99AFFEAD99AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004CC460FF4CC460FF4CC460FF4CC460FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8CF89FFE0B76EFFE5B86EFFEBE0A2FFEAD99AFFEAD99AFFEAD99AFFEAD9
      9AFF000000000000000000000000000000000000000000000000000000000000
      00003CBA51FF31AE46FF32AF47FF5FCC71FF4CC460FF4CC460FF4CC460FF4CC4
      60FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F3E33FE5B8
      6EFFE5B86EFFE5B86EFFE5BC6DFFEDDC9DFFE4B56BFFEBB76AFFECDD9EFFEAD9
      9AFFEAD99AFF0000000000000000000000000000000000000000CFEED43F32AF
      47FF32AF47FF32AF47FF32B047FF53C866FF31AD45FF31AE46FF56CA69FF4CC4
      60FF4CC460FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4C782FFE3B3
      6BFFE6BA6DFFE3B96EFFE8B96FFFE7BA70FFE5B86EFFE5B86EFFE9B76FFFF2D5
      9CFFE5D997FFEAD99AFF0000000000000000000000000000000038B64DFF30AC
      44FF32AF47FF32AF47FF32AF47FF32B047FF32AF47FF32AF47FF32AF47FF49C2
      5DFF48C25CFF4CC460FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5B86EFFE5B86EFFE5B8
      6EFFE5B86EFFE5B86EFFE5B86EFFE5B86EFFE5B86EFFE5B86EFFE5B86EFFE7B6
      6AFFE7B56DFFE6D691FFEAD99AFF000000000000000032AF47FF32AF47FF32AF
      47FF32AF47FF32AF47FF32AF47FF32AF47FF32AF47FF32AF47FF32AF47FF31AD
      45FF31AE46FF40BD55FF4CC460FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5B86EFFE6BB72FFFFFF
      FFFFFFFFFFFFFDFFFEFFE9B66DFFFFFEFFFFE5B86EFFE5B86EFFFFFFFFFFF5FF
      F6FFFFFFFFFFE3B96CFFEAD99AFF000000000000000032AF47FF33B148FFFAFA
      FAFFFAFAFAFFF9FAF9FF31AE46FFF9FAF9FF32AF47FF32AF47FFFAFAFAFFF3F8
      F4FFFAFAFAFF31AF46FF4CC460FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E0ABD6E5B86EFFF2EDDEFFFFFF
      FFFFE5B96CFFFFFFFFFFE5B86EFFFFFFFFFFE5B86EFFE5BA6BFFFFFFFFFFE5BA
      71FFFFFFFFFFF3D9B1FFEAD99AFFFEFDFA0B6ACF7BD632AF47FFBDEAC4FFFAFA
      FAFF32AF47FFFAFAFAFF32AF47FFFAFAFAFF32AF47FF32AF47FFFAFAFAFF32B0
      47FFFAFAFAFF62CE74FF4CC460FFF7FCF80B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1B46AFFE5B86EFFFFFFFFFFFFFF
      FFFFE3BD6FFFFFFEFFFFE5B86EFFFFFFFFFFD6AF61FFE6B674FFE0B05EFFF0BE
      72FFFFFFFFFFF7DDAFFFEAD99AFFEAD99AFF30AC44FF32AF47FFFAFAFAFFFAFA
      FAFF33B048FFF9FAF9FF32AF47FFFAFAFAFF2EA842FF32AF47FF2EA842FF34B2
      49FFFAFAFAFF69D17AFF4CC460FF4CC460FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5BE74FFE5B86EFFFFFFFFFFFFFF
      FFFFE8B76DFFDFB05EFFE5B86EFFE2B466FFF8F7F9FFE5B86EFFE5B86EFFFFFF
      F0FFF8FFFFFFE3B96CFFEAD99AFFEAD99AFF34B249FF32AF47FFFAFAFAFFFAFA
      FAFF31AE46FF2EA842FF32AF47FF30AC44FFEBF6EDFF32AF47FF32AF47FFF1F8
      F2FFF9FAF9FF31AF46FF4CC460FF4CC460FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F3DC58E5B86EFFFFFFFFFFFFFF
      FFFFE5B96CFFFFFFFFFFE5B86EFFE2BA6FFFFFFFFFFFE5BA6BFFFFFFFFFFE5BA
      71FFFFFFFFFFE0B15DFFEAD99AFFFEFEFD03C2EBC95832AF47FFFAFAFAFFFAFA
      FAFF32AF47FFFAFAFAFF32AF47FF32AF47FFFAFAFAFF32AF47FFFAFAFAFF32B0
      47FFFAFAFAFF2EA942FF4CC460FFFCFEFD030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDB868FFDFB56AFFFFFF
      FFFFFFFFFFFFFFFFF8FFE5B86EFFE5B86EFFFFFFFFFFE2B86BFFFFFFFFFFFEFE
      FEFFFFFFFFFFE3B96CFFEAD99AFF000000000000000031AD45FF31AD45FFFAFA
      FAFFFAFAFAFFF6F8F6FF32AF47FF32AF47FFFAFAFAFF31AE46FFFAFAFAFFF8F9
      F8FFFAFAFAFF31AF46FF4CC460FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAD99AFFDDB96DFFEAB8
      70FFE8BB72FFE5B86FFFE5B86FFFE5B86FFFE7BA71FFE6B970FFE5B86FFFE7BA
      71FFE5B86FFFE4B871FFEADE96FF00000000000000004CC460FF31AE46FF32AF
      47FF33B148FF32AF47FF32AF47FF32AF47FF32B047FF32AF47FF32AF47FF32B0
      47FF32AF47FF32AF47FF50C663FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAD99AFFEAD9
      9AFFEAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD9
      9AFFEAD99AFFEBD89BFF000000000000000000000000000000004CC460FF4CC4
      60FF4CC460FF4CC460FF4CC460FF4CC460FF4CC460FF4CC460FF4CC460FF4CC4
      60FF4CC460FF4BC45FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EAD9
      9AFFEAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD9
      9AFFECD89FFF0000000000000000000000000000000000000000000000004CC4
      60FF4CC460FF4CC460FF4CC460FF4CC460FF4CC460FF4CC460FF4CC460FF4CC4
      60FF4FC663FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD99AFFEAD9
      9AFF000000000000000000000000000000000000000000000000000000000000
      00004CC460FF4CC460FF4CC460FF4CC460FF4CC460FF4CC460FF4CC460FF4CC4
      60FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFDFC07EAD99AFFEAD99AFFFEFEFD05000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFDFA074CC460FF4CC460FFFBFDFB05000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC3FFC3F00000000F00FF00F00000000
      C007C00700000000C003C0030000000080018001000000008001800100000000
      0000000000000000000000000000000000000000000000000000000000000000
      80018001000000008001800100000000C003C00300000000E007E00700000000
      F00FF00F00000000FC3FFC3F0000000000000000000000000000000000000000
      000000000000}
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2
    OnTimer = Timer1Timer
    Left = 36
    Top = 215
  end
  object DS_Users: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, sz_enter.GetNameUser(t.id) as FIO FROM MRK.SZ_USERS' +
        ' t where t.id_type_users = 1 or t.id_type_dop = 1'
      ''
      'union all'
      ''
      'select 999999, '#39#1042#1057#1045#39' from dual'
      ''
      'order by id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004900440001000000000006000000460049004F00
      010000000000}
    Session = Form20.OracleSession1
    Left = 1056
    Top = 432
    object FloatField2: TFloatField
      FieldName = 'ID'
    end
    object StringField6: TStringField
      FieldName = 'FIO'
      Size = 4000
    end
  end
  object Data_Users: TDataSource
    DataSet = DS_Users
    Left = 1060
    Top = 490
  end
  object Db_Info_Count: TOracleDataSet
    SQL.Strings = (
      'select count (*) as NUM_STR from mrk.V$SZ_MAIN_OP t '
      'where t.sz_id in ( Select a.Sz_Id '
      '                    From   Mrk.Sz_Op_Appr a'
      '                    Where  a.Id_Appr_Step = 4'
      '                           And a.Flag_In = 1 )'
      'order by SZ_DATE desc, SZ_NUMB desc'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000010000000E0000004E0055004D005F00530054005200010000000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 876
    Top = 466
    object Db_Info_CountNUM_STR: TFloatField
      FieldName = 'NUM_STR'
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form20.OracleSession1
    Left = 548
    Top = 482
  end
  object Db_Notifications: TOracleDataSet
    SQL.Strings = (
      
        'select t.*, t.rowid from SZ_TABLE_LOG  t where t.sz_usertype = 7' +
        ' and t.sz_otdel = 33')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000050000000C00000053005A005F004F00500054000100000000000E00
      000053005A005F0044004100540045000100000000001600000053005A005F00
      550053004500520054005900500045000100000000001000000053005A005F00
      4F005400440045004C000100000000001200000053005A005F00490044005F00
      530054005200010000000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 481
    Top = 471
    object Db_NotificationsSZ_OPT: TFloatField
      FieldName = 'SZ_OPT'
    end
    object Db_NotificationsSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object Db_NotificationsSZ_USERTYPE: TFloatField
      FieldName = 'SZ_USERTYPE'
    end
    object Db_NotificationsSZ_OTDEL: TFloatField
      FieldName = 'SZ_OTDEL'
    end
    object Db_NotificationsSZ_ID_STR: TFloatField
      FieldName = 'SZ_ID_STR'
    end
  end
  object Db_Admin_Notifications: TOracleDataSet
    SQL.Strings = (
      'select t.* from MRK.SZ_USERS_NOTIF t where t.id = :vID')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00560049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000B00000004000000490044000100000000000E000000530055005200
      4E0041004D004500010000000000080000004E0041004D004500010000000000
      1400000050004100540052004F004E0059004D00490043000100000000001A00
      0000490044005F0054005900500045005F005500530045005200530001000000
      00001A000000490044005F0054005900500045005F004F005400440045004C00
      0100000000000A000000500048004F004E004500010000000000160000005500
      5300450052005F004F004E004C0049004E004500010000000000140000004500
      4E005400450052005F0044004100540045000100000000001400000055005300
      450052005F004E004F005400490046000100000000000E0000004D0045005300
      5300410047004500010000000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 481
    Top = 530
    object Db_Admin_NotificationsID: TFloatField
      FieldName = 'ID'
    end
    object Db_Admin_NotificationsSURNAME: TStringField
      FieldName = 'SURNAME'
      Size = 50
    end
    object Db_Admin_NotificationsNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object Db_Admin_NotificationsPATRONYMIC: TStringField
      FieldName = 'PATRONYMIC'
      Size = 50
    end
    object Db_Admin_NotificationsID_TYPE_USERS: TIntegerField
      FieldName = 'ID_TYPE_USERS'
    end
    object Db_Admin_NotificationsID_TYPE_OTDEL: TIntegerField
      FieldName = 'ID_TYPE_OTDEL'
    end
    object Db_Admin_NotificationsPHONE: TStringField
      FieldName = 'PHONE'
    end
    object Db_Admin_NotificationsUSER_ONLINE: TFloatField
      FieldName = 'USER_ONLINE'
    end
    object Db_Admin_NotificationsENTER_DATE: TDateTimeField
      FieldName = 'ENTER_DATE'
    end
    object Db_Admin_NotificationsUSER_NOTIF: TFloatField
      FieldName = 'USER_NOTIF'
    end
    object Db_Admin_NotificationsMESSAGE: TStringField
      FieldName = 'MESSAGE'
      Size = 2000
    end
  end
  object Db_Info_Main: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.V$SZ_MAIN_OP t '
      'where  t.sz_id in ( Select a.Sz_Id '
      '                    From   Mrk.Sz_Op_Appr a'
      '                    Where  a.Id_Appr_Step = 4'
      '                           And a.Flag_In = 1 )'
      'and t.SZ_NUMB like '#39'%'#39'||:v_Sz_Num||'#39'%'#39
      'and Upper ( t.Contact ) like Upper( :v_Contact )||'#39'%'#39
      
        'and t.sz_id in (select distinct t.sz_id from sz_table_seo t wher' +
        'e translate (upper(t.sz_ibyal_ob), '#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-'#39', '#39'%'#39')  like '#39 +
        '%'#39' || translate (upper(:vNOM),'#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-*'#39', '#39'%'#39') || '#39'%'#39')'
      
        'and t.sz_id in (select distinct t.sz_id from sz_table_seo t wher' +
        'e upper(t.sz_name_ob) like '#39'%'#39' || translate (upper(:vNAIM),'#39'*'#39','#39 +
        '%'#39') || '#39'%'#39')'
      
        'and t.sz_id in (select distinct t.sz_id from sz_table_seo t wher' +
        'e upper(t.sz_code_ob) like '#39'%'#39' || upper(:vKOD) || '#39'%'#39')'
      'order by SZ_DATE desc, SZ_NUMB desc')
    Optimize = False
    Variables.Data = {
      04000000050000000A0000003A0056004E004F004D0005000000000000000000
      00000C0000003A0056004E00410049004D000500000000000000000000000A00
      00003A0056004B004F004400050000000000000000000000120000003A005600
      5F0053005A005F004E0055004D00050000000000000000000000140000003A00
      56005F0043004F004E005400410043005400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001C0000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F00460052004F004D000100000000000A00000053005A00
      5F0054004F000100000000000E00000053005A005F0044004100540045000100
      000000000E00000043004F004E00540041004300540001000000000018000000
      53005A005F0043004F004E0044004900540049004F004E000100000000001200
      000053005A005F0043004F004E0054005F005900010000000000120000005300
      5A005F00460052004F004D005F0059000100000000000E00000053005A005F00
      54004F005F0059000100000000001400000053005A005F00490044005F004300
      4F004E0054000100000000001C00000053005A005F0043004F004E0054005F00
      59005F0044004100540045000100000000001C00000053005A005F0046005200
      4F004D005F0059005F0044004100540045000100000000001800000053005A00
      5F0054004F005F0059005F0044004100540045000100000000000A0000005300
      5A005F00490044000100000000001400000053005A005F00460052004F004D00
      5F00490044000100000000001000000053005A005F0054004F005F0049004400
      0100000000000C00000053005400410054005500530001000000000018000000
      5300540041005400550053005F00560041004C00550045000100000000000A00
      000053005A005F004B0052000100000000000E00000053005A005F0054004500
      4D0041000100000000001200000053005A005F0043004F00500059005F005900
      0100000000000E00000053005A005F0043004F00500059000100000000001C00
      000053005A005F0043004F00500059005F0059005F0044004100540045000100
      000000001400000053005A005F0043004F00500059005F004900440001000000
      00001600000053005A005F00530045004F005F004E0055004D00420001000000
      00001600000053005A005F00530045004F005F00440041005400450001000000
      00001200000053005A005F00490044005F00530045004F000100000000001200
      000053005A005F00490053005F00440045004C00010000000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 340
    Top = 466
    object Db_Info_MainSZ_ID: TFloatField
      FieldName = 'SZ_ID'
      Required = True
    end
    object Db_Info_MainSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object Db_Info_MainSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object Db_Info_MainSZ_CONT_Y: TFloatField
      FieldName = 'SZ_CONT_Y'
    end
    object Db_Info_MainCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 1000
    end
    object Db_Info_MainSZ_CONT_Y_DATE: TDateTimeField
      FieldName = 'SZ_CONT_Y_DATE'
    end
    object Db_Info_MainSZ_CONDITION: TFloatField
      FieldName = 'SZ_CONDITION'
    end
    object Db_Info_MainSZ_KR: TFloatField
      FieldName = 'SZ_KR'
    end
    object Db_Info_MainSZ_TEMA: TStringField
      FieldName = 'SZ_TEMA'
      Size = 1000
    end
    object Db_Info_MainSZ_ID_CONT: TFloatField
      FieldName = 'SZ_ID_CONT'
    end
    object Db_Info_MainSZ_FROM_Y: TFloatField
      FieldName = 'SZ_FROM_Y'
    end
    object Db_Info_MainSZ_FROM: TStringField
      FieldName = 'SZ_FROM'
      Size = 4000
    end
    object Db_Info_MainSZ_FROM_Y_DATE: TDateTimeField
      FieldName = 'SZ_FROM_Y_DATE'
    end
    object Db_Info_MainSZ_TO_Y: TFloatField
      FieldName = 'SZ_TO_Y'
    end
    object Db_Info_MainSZ_TO: TStringField
      FieldName = 'SZ_TO'
      Size = 4000
    end
    object Db_Info_MainSZ_TO_Y_DATE: TDateTimeField
      FieldName = 'SZ_TO_Y_DATE'
    end
    object Db_Info_MainSZ_COPY_Y: TFloatField
      FieldName = 'SZ_COPY_Y'
    end
    object Db_Info_MainSZ_COPY: TStringField
      FieldName = 'SZ_COPY'
      Size = 4000
    end
    object Db_Info_MainSZ_COPY_Y_DATE: TDateTimeField
      FieldName = 'SZ_COPY_Y_DATE'
    end
    object Db_Info_MainSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 86
    end
    object Db_Info_MainSTATUS_VALUE: TFloatField
      FieldName = 'STATUS_VALUE'
    end
    object Db_Info_MainSZ_FROM_ID: TFloatField
      FieldName = 'SZ_FROM_ID'
    end
    object Db_Info_MainSZ_TO_ID: TFloatField
      FieldName = 'SZ_TO_ID'
    end
    object Db_Info_MainSZ_COPY_ID: TFloatField
      FieldName = 'SZ_COPY_ID'
    end
    object Db_Info_MainSZ_SEO_NUMB: TFloatField
      FieldName = 'SZ_SEO_NUMB'
    end
    object Db_Info_MainSZ_SEO_DATE: TDateTimeField
      FieldName = 'SZ_SEO_DATE'
    end
    object Db_Info_MainSZ_ID_SEO: TFloatField
      FieldName = 'SZ_ID_SEO'
    end
    object Db_Info_MainSZ_IS_DEL: TFloatField
      FieldName = 'SZ_IS_DEL'
    end
  end
  object Data_Info_Main: TDataSource
    DataSet = Db_Info_Main
    Left = 340
    Top = 522
  end
  object Data_Sz_Content: TDataSource
    AutoEdit = False
    DataSet = Db_Sz_Content
    Left = 248
    Top = 520
  end
  object Db_Sz_Content: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.SZ_TABLE_SEO t'
      'where t.sz_id = :sz_id'
      'order by t.id_str')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000090000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F004E0041004D0045005F004F0042000100000000001600000053005A005F00
      49004200590041004C005F004F0042000100000000000E000000490044005F00
      43004F004E0054000100000000000C000000490044005F005300540052000100
      000000001400000053005A005F0043004F00440045005F004F00420001000000
      00000A00000053005A005F00490044000100000000001000000053005A005F00
      43004800450043004B00010000000000}
    Master = Db_Info_Main
    MasterFields = 'SZ_ID'
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 252
    Top = 466
    object Db_Sz_ContentSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object Db_Sz_ContentSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object Db_Sz_ContentSZ_NAME_OB: TStringField
      FieldName = 'SZ_NAME_OB'
      Size = 1000
    end
    object Db_Sz_ContentSZ_IBYAL_OB: TStringField
      FieldName = 'SZ_IBYAL_OB'
      Size = 1000
    end
    object Db_Sz_ContentID_CONT: TFloatField
      FieldName = 'ID_CONT'
    end
    object Db_Sz_ContentID_STR: TFloatField
      FieldName = 'ID_STR'
    end
    object Db_Sz_ContentSZ_CHECK: TFloatField
      FieldName = 'SZ_CHECK'
    end
    object Db_Sz_ContentSZ_CODE_OB: TStringField
      FieldName = 'SZ_CODE_OB'
      Size = 1000
    end
    object Db_Sz_ContentSZ_ID: TFloatField
      FieldName = 'SZ_ID'
    end
  end
  object OraclePackage1: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 555
    Top = 16
  end
  object OraclePackage2: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_ENTER'
    Left = 499
    Top = 7
  end
  object MainMenu1: TMainMenu
    Left = 344
    Top = 1
    object dsd1: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = dsd1Click
    end
    object N1: TMenuItem
      Caption = #1055#1086#1080#1089#1082' '#1095#1077#1088#1090#1077#1078#1085#1086#1075#1086' '#8470
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Visible = False
      object N3: TMenuItem
        Caption = #1042#1082#1083#1102#1095#1077#1085#1080#1077' '#1087#1088#1080' '#1079#1072#1087#1091#1089#1082#1077' '#1089#1080#1089#1090#1077#1084#1099
      end
    end
    object N20: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
      Visible = False
      OnClick = N20Click
    end
  end
  object Db_Main_Appr_Steps: TOracleDataSet
    SQL.Strings = (
      'Select ( Select a.Appr_Step_Name '
      '         From   Mrk.Sz_Op_Appr_Steps a'
      '         Where  a.Id = t.Id_Appr_Step ) As Appr_Step_Name,'
      '       ( Select a.Appr_Step_Num '
      '         From   Mrk.Sz_Op_Appr_Steps a'
      '         Where  a.Id = t.Id_Appr_Step ) As Appr_Step_Num,'
      '       ( Case'
      
        '           When t.Flag_In = 0 And t.Flag_Out = 0 Then '#39#1053#1077' '#1087#1086#1083#1091#1095#1077 +
        #1085#39
      
        '           When t.Flag_In = 1 And t.Flag_Out = 0 Then '#39#1053#1072' '#1088#1072#1089#1089#1084#1086 +
        #1090#1088#1077#1085#1080#1080#39
      '           When t.Flag_Out = 1 Then '#39#1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#39
      '           When t.Flag_Out = 2 Then '#39#1054#1090#1082#1072#1079#39
      '        End ) as Status,'
      '       ( Case'
      '           When t.Flag_Out = 0 Then Null'
      
        '           When t.Flag_Out In (1, 2) Then ( Mrk.Sz_Enter.Get_Use' +
        'r_Name_by_Lnum ( t.User_Lnum ) )'
      '         End ) as Razrab_Name,'
      '       ( Case'
      '           When t.Flag_In = 0 And t.Flag_Out = 0 Then Null'
      '           When t.Flag_In = 1 Then t.Data_In'
      '           When t.Flag_Out In (1, 2)Then t.Data_In'
      '         End ) as Date_In,'
      '       ( Case'
      '           When t.Flag_Out = 0 Then Null'
      '           When t.Flag_Out In (1, 2) Then t.Data_Out'
      '         End ) as Date_Out,'
      '       ( Select a.Ceh_Abbrev'
      '         From   Ogt.Spr_Ceh a'
      '         Where  a.Id = t.Ceh_Id ) as Ceh_Name'
      'From   Mrk.Sz_Op_Appr t'
      'Where  t.Sz_Id = :Sz_Id')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000070000001C00000041005000500052005F0053005400450050005F00
      4E0041004D0045000100000000000C0000005300540041005400550053000100
      0000000016000000520041005A005200410042005F004E0041004D0045000100
      000000000E00000044004100540045005F0049004E0001000000000010000000
      44004100540045005F004F005500540001000000000010000000430045004800
      5F004E0041004D0045000100000000001A00000041005000500052005F005300
      5400450050005F004E0055004D00010000000000}
    Master = Db_Info_Main
    MasterFields = 'Sz_Id'
    Session = Form20.OracleSession1
    Left = 700
    Top = 210
    object Db_Main_Appr_StepsAPPR_STEP_NAME: TStringField
      FieldName = 'APPR_STEP_NAME'
      Size = 100
    end
    object Db_Main_Appr_StepsAPPR_STEP_NUM: TStringField
      FieldName = 'APPR_STEP_NUM'
      Size = 3
    end
    object Db_Main_Appr_StepsSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 15
    end
    object Db_Main_Appr_StepsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 4000
    end
    object Db_Main_Appr_StepsDATE_IN: TDateTimeField
      FieldName = 'DATE_IN'
    end
    object Db_Main_Appr_StepsDATE_OUT: TDateTimeField
      FieldName = 'DATE_OUT'
    end
    object Db_Main_Appr_StepsCEH_NAME: TStringField
      FieldName = 'CEH_NAME'
      Size = 10
    end
  end
  object Data_Main_Appr_Steps: TDataSource
    DataSet = Db_Main_Appr_Steps
    Left = 804
    Top = 210
  end
  object Db_Info_Count_2: TOracleDataSet
    SQL.Strings = (
      'select count (*) as NUM_STR from mrk.V$SZ_MAIN_OP t '
      'where t.sz_id in ( Select a.Sz_Id '
      '                    From   Mrk.Sz_Op_Appr a'
      '                    Where  a.Id_Appr_Step = 4'
      '                           And a.Flag_In = 1 )'
      'order by SZ_DATE desc, SZ_NUMB desc'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000010000000E0000004E0055004D005F00530054005200010000000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    AfterRefresh = Db_Info_Count_2AfterRefresh
    Left = 876
    Top = 418
    object Db_Info_Count_2NUM_STR: TFloatField
      FieldName = 'NUM_STR'
    end
  end
end
