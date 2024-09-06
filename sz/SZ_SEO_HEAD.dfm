object Form18: TForm18
  Left = 343
  Top = 193
  Caption = #1041#1072#1079#1072' '#1079#1072#1087#1088#1086#1089#1086#1074' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
  ClientHeight = 650
  ClientWidth = 1300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1300
    Height = 616
    ActivePage = EXP_SZ
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object EXP_SZ: TTabSheet
      BorderWidth = 2
      Caption = #1057'/'#1079' '#1085#1072' '#1087#1086#1076#1087#1080#1089#1100
      object CONTROL_INFO: TPanel
        Left = 0
        Top = 0
        Width = 1288
        Height = 583
        Align = alClient
        Caption = 'CONTROL_INFO'
        TabOrder = 0
        object DBGridEh_IMP_CONTENT: TDBGridEh
          Left = 3
          Top = 327
          Width = 1279
          Height = 249
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoFitColWidths = True
          DataSource = DS_CONTENT_SEO
          DynProps = <>
          EditActions = [geaCutEh, geaCopyEh, geaPasteEh, geaDeleteEh, geaSelectAllEh]
          Flat = True
          TabOrder = 0
          TitleParams.RowHeight = 35
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_STR'
              Footers = <>
              Title.Caption = #8470' '#1087'/'#1087
              Width = 40
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
              DisplayFormat = '#,##,0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'SZ_COST'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1077#1079' '#1053#1044#1057', '#1088#1091#1073'.'
              Width = 75
              WordWrap = True
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##,0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'SZ_NDS'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1053#1044#1057', '#1088#1091#1073'.'
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##,0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'SZ_COST_W_NDS'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089' '#1053#1044#1057', '#1088#1091#1073'.'
              Width = 75
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object DBGridEh_IMP: TDBGridEh
          Left = 3
          Top = 55
          Width = 1279
          Height = 266
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          AutoFitColWidths = True
          DataSource = DS_SEOINFO
          DynProps = <>
          Flat = True
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PM_GRID_FOR_SIG
          TabOrder = 1
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SZ_NUMB'
              Footers = <>
              Title.Caption = #8470' '#1089'/'#1079
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SZ_DATE'
              Footers = <>
              Title.Caption = #1044#1072#1090#1072
              Width = 70
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SZ_FROM'
              Footers = <>
              Title.Caption = #1054#1090
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SZ_TO'
              Footers = <>
              Title.Caption = #1050#1086#1084#1091
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CONTACT'
              Footers = <>
              Title.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'STATUS'
              Footers = <>
              Title.Caption = #1057#1090#1072#1090#1091#1089
              Width = 150
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 1286
          Height = 49
          Align = alTop
          BevelEdges = [beBottom]
          BevelOuter = bvNone
          Color = clMenuBar
          ParentBackground = False
          TabOrder = 2
          DesignSize = (
            1286
            49)
          object Label1: TLabel
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
          object LCB_Contact_Main: TDBLookupComboboxEh
            Left = 1136
            Top = 21
            Width = 145
            Height = 22
            ControlLabel.Width = 75
            ControlLabel.Height = 14
            ControlLabel.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
            ControlLabel.Visible = True
            Anchors = [akTop, akRight]
            DynProps = <>
            DataField = ''
            EditButtons = <>
            KeyField = 'FIO'
            ListField = 'FIO'
            ListSource = Data_Users_Seo
            TabOrder = 0
            Visible = True
            OnKeyValueChanged = LCB_Contact_MainKeyValueChanged
          end
          object E_Det_Name_Main: TDBEditEh
            Left = 116
            Top = 21
            Width = 205
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            ControlLabel.Width = 168
            ControlLabel.Height = 14
            ControlLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            ControlLabel.Visible = True
            DynProps = <>
            EditButtons = <>
            TabOrder = 1
            Text = 'E_Det_Name_Main'
            Visible = True
            OnChange = E_Det_Name_MainChange
          end
          object E_Det_Num_Main: TDBEditEh
            Left = 327
            Top = 21
            Width = 242
            Height = 22
            Anchors = [akTop, akRight]
            ControlLabel.Width = 85
            ControlLabel.Height = 14
            ControlLabel.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
            ControlLabel.Visible = True
            DynProps = <>
            EditButtons = <>
            TabOrder = 2
            Text = 'E_Det_Num_Main'
            Visible = True
            OnChange = E_Det_Num_MainChange
          end
          object E_Sz_Num_Main: TDBEditEh
            Left = 44
            Top = 21
            Width = 66
            Height = 22
            ControlLabel.Width = 34
            ControlLabel.Height = 14
            ControlLabel.Caption = #8470' '#1089'/'#1079
            ControlLabel.Visible = True
            DynProps = <>
            EditButtons = <>
            TabOrder = 3
            Text = 'E_Sz_Num_Seo'
            Visible = True
            OnChange = E_Sz_Num_MainChange
          end
          object E_Det_Code_Main: TDBEditEh
            Left = 575
            Top = 21
            Width = 242
            Height = 22
            Anchors = [akTop, akRight]
            ControlLabel.Width = 21
            ControlLabel.Height = 14
            ControlLabel.Caption = #1050#1086#1076
            ControlLabel.Visible = True
            DynProps = <>
            EditButtons = <>
            TabOrder = 4
            Text = 'E_Det_Code_Main'
            Visible = True
          end
        end
      end
    end
    object INM_SZ: TTabSheet
      BorderWidth = 2
      Caption = #1055#1086#1076#1087#1080#1089#1072#1085#1085#1099#1077' '#1089'/'#1079
      DesignSize = (
        1288
        583)
      object Panel1: TPanel
        Left = 0
        Top = 566
        Width = 1288
        Height = 17
        Align = alBottom
        ParentBackground = False
        TabOrder = 0
        object Label11: TLabel
          Left = 24
          Top = 1
          Width = 68
          Height = 12
          Caption = '- '#1057'/'#1079' '#1087#1086#1076#1087#1080#1089#1072#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 110
          Top = 1
          Width = 118
          Height = 12
          Caption = '- '#1057'/'#1079' '#1085#1072' '#1089#1090#1072#1076#1080#1080' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 247
          Top = 1
          Width = 66
          Height = 12
          Caption = '- '#1057'/'#1079' '#1086#1090#1082#1083#1086#1085#1077#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Panel3: TPanel
          Left = 12
          Top = 3
          Width = 10
          Height = 9
          BevelOuter = bvLowered
          Color = clBlue
          ParentBackground = False
          TabOrder = 0
        end
        object Panel10: TPanel
          Left = 98
          Top = 2
          Width = 10
          Height = 10
          BevelOuter = bvLowered
          Color = clGreen
          ParentBackground = False
          TabOrder = 1
        end
        object Panel11: TPanel
          Left = 234
          Top = 3
          Width = 10
          Height = 9
          BevelOuter = bvLowered
          Color = clRed
          ParentBackground = False
          TabOrder = 2
        end
      end
      object DBGridEh_SIGN: TDBGridEh
        Left = 3
        Top = 55
        Width = 578
        Height = 266
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        AutoFitColWidths = True
        DataSource = DS_SEOSIGN
        DynProps = <>
        Flat = True
        PopupMenu = PM_GRID_SIGN
        TabOrder = 1
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SZ_NUMB'
            Footers = <>
            Title.Caption = #8470' '#1089'/'#1079
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SZ_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072
            Width = 70
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
            Width = 100
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
      object DBGridEh2: TDBGridEh
        Left = 3
        Top = 327
        Width = 1302
        Height = 236
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoFitColWidths = True
        DataSource = DS_CONTENT_2
        DynProps = <>
        EditActions = [geaCutEh, geaCopyEh, geaPasteEh, geaDeleteEh, geaSelectAllEh]
        Flat = True
        TabOrder = 2
        TitleParams.RowHeight = 35
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_STR'
            Footers = <>
            Title.Caption = #8470' '#1087'/'#1087
            Width = 40
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
            DisplayFormat = '#,##,0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'SZ_COST'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1077#1079' '#1053#1044#1057', '#1088#1091#1073'.'
            Width = 75
            WordWrap = True
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##,0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'SZ_NDS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1044#1057', '#1088#1091#1073'.'
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##,0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'SZ_COST_W_NDS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089' '#1053#1044#1057', '#1088#1091#1073'.'
            Width = 75
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1288
        Height = 49
        Align = alTop
        BevelEdges = [beBottom]
        BevelOuter = bvNone
        Color = clMenuBar
        ParentBackground = False
        TabOrder = 3
        DesignSize = (
          1288
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
        object LCB_Contact_Seo: TDBLookupComboboxEh
          Left = 979
          Top = 21
          Width = 145
          Height = 22
          ControlLabel.Width = 75
          ControlLabel.Height = 14
          ControlLabel.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          ControlLabel.Visible = True
          Anchors = [akTop, akRight]
          DynProps = <>
          DataField = ''
          EditButtons = <>
          KeyField = 'FIO'
          ListField = 'FIO'
          ListSource = Data_Users_Seo
          TabOrder = 0
          Visible = True
          OnKeyValueChanged = LCB_Contact_SeoKeyValueChanged
        end
        object LCB_Status_Seo: TDBLookupComboboxEh
          Left = 1139
          Top = 21
          Width = 144
          Height = 22
          ControlLabel.Width = 37
          ControlLabel.Height = 14
          ControlLabel.Caption = #1057#1090#1072#1090#1091#1089
          ControlLabel.Visible = True
          Anchors = [akTop, akRight]
          DynProps = <>
          DataField = ''
          EditButtons = <>
          KeyField = 'APPR_STEP_FLAG'
          ListField = 'APPR_STEP_NAME'
          ListSource = STATUS_TYPE_DATA
          TabOrder = 1
          Visible = True
          OnKeyValueChanged = LCB_Status_SeoKeyValueChanged
        end
        object E_Det_Name_Seo: TDBEditEh
          Left = 116
          Top = 21
          Width = 205
          Height = 22
          Anchors = [akLeft, akTop, akRight]
          ControlLabel.Width = 168
          ControlLabel.Height = 14
          ControlLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
          ControlLabel.Visible = True
          DynProps = <>
          EditButtons = <>
          TabOrder = 2
          Text = 'E_Det_Name_Seo'
          Visible = True
          OnChange = E_Det_Name_SeoChange
        end
        object E_Det_Num_Seo: TDBEditEh
          Left = 327
          Top = 21
          Width = 242
          Height = 22
          Anchors = [akTop, akRight]
          ControlLabel.Width = 85
          ControlLabel.Height = 14
          ControlLabel.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
          ControlLabel.Visible = True
          DynProps = <>
          EditButtons = <>
          TabOrder = 3
          Text = 'E_Det_Num_Seo'
          Visible = True
          OnChange = E_Det_Num_SeoChange
        end
        object E_Sz_Num_Seo: TDBEditEh
          Left = 44
          Top = 21
          Width = 66
          Height = 22
          ControlLabel.Width = 34
          ControlLabel.Height = 14
          ControlLabel.Caption = #8470' '#1089'/'#1079
          ControlLabel.Visible = True
          DynProps = <>
          EditButtons = <>
          TabOrder = 4
          Text = 'E_Sz_Num_Seo'
          Visible = True
          OnChange = E_Sz_Num_SeoChange
        end
      end
      object Grid_Appr_Steps: TDBGridEh
        Left = 587
        Top = 55
        Width = 718
        Height = 266
        Anchors = [akTop, akRight]
        AutoFitColWidths = True
        DataSource = Data_Seo_Appr_Steps
        DynProps = <>
        Flat = True
        TabOrder = 4
        OnGetCellParams = Grid_Appr_StepsGetCellParams
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
    end
    object TabSheet1: TTabSheet
      Caption = #1048#1053#1060#1054
      ImageIndex = 2
      object DBGridEh_STATUS: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 52
        Width = 1286
        Height = 532
        Align = alClient
        AutoFitColWidths = True
        DataSource = STATUS_SZ_DATA
        DynProps = <>
        Flat = True
        PopupMenu = PM_GRID_STATUS
        TabOrder = 0
        OnGetCellParams = DBGridEh_STATUSGetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SZ_NUMB'
            Footers = <>
            Title.Caption = #8470' '#1089'/'#1079
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SZ_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STATUS'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 615
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SZ_INF_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
            Width = 161
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AVTOR_MESSAGE'
            Footers = <>
            Title.Caption = #1040#1074#1090#1086#1088
            Width = 180
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1292
        Height = 49
        Align = alTop
        BevelEdges = [beBottom]
        BevelOuter = bvNone
        Color = clMenuBar
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          1292
          49)
        object Label27: TLabel
          Left = 154
          Top = 6
          Width = 7
          Height = 14
          Caption = #1057
        end
        object Label28: TLabel
          Left = 234
          Top = 6
          Width = 15
          Height = 14
          Caption = #1055#1086
        end
        object Label29: TLabel
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
        object DTP_Date_To: TDateTimePicker
          Left = 202
          Top = 21
          Width = 81
          Height = 22
          Date = 43783.487831643500000000
          Time = 43783.487831643500000000
          TabOrder = 0
          OnCloseUp = DATE_TOCloseUp
        end
        object DTP_Date_From: TDateTimePicker
          Left = 115
          Top = 21
          Width = 81
          Height = 22
          Date = 43783.487706157400000000
          Time = 43783.487706157400000000
          TabOrder = 1
          OnCloseUp = DATE_FROMCloseUp
        end
        object LCB_Contact_Info: TDBLookupComboboxEh
          Left = 1144
          Top = 21
          Width = 145
          Height = 22
          ControlLabel.Width = 75
          ControlLabel.Height = 14
          ControlLabel.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
          ControlLabel.Visible = True
          Anchors = [akTop, akRight]
          DynProps = <>
          DataField = ''
          EditButtons = <>
          KeyField = 'FIO'
          ListField = 'FIO'
          ListSource = Data_Users_Info
          TabOrder = 2
          Visible = True
        end
        object LCB_Otdel: TDBLookupComboboxEh
          Left = 290
          Top = 21
          Width = 124
          Height = 22
          ControlLabel.Width = 36
          ControlLabel.Height = 14
          ControlLabel.Caption = #1054#1090#1076#1077#1083
          ControlLabel.Visible = True
          DynProps = <>
          DataField = ''
          EditButtons = <>
          KeyField = 'OTDEL_TYPE'
          ListField = 'OTDEL_NAME'
          ListSource = OTDEL_TYPE_DATA
          TabOrder = 3
          Visible = True
          OnKeyValueChanged = LCB_OtdelKeyValueChanged
        end
        object E_Sz_Num_Info: TDBEditEh
          Left = 44
          Top = 21
          Width = 66
          Height = 22
          ControlLabel.Width = 34
          ControlLabel.Height = 14
          ControlLabel.Caption = #8470' '#1089'/'#1079
          ControlLabel.Visible = True
          DynProps = <>
          EditButtons = <>
          TabOrder = 4
          Text = 'E_Sz_Num_Info'
          Visible = True
          OnChange = E_Sz_Num_InfoChange
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 616
    Width = 1300
    Height = 34
    Align = alBottom
    TabOrder = 1
    object Btn_Comment: TButton
      Left = 24
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
      Left = 1184
      Top = 4
      Width = 89
      Height = 25
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
  object OraclePackage2: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_ENTER'
    Left = 672
    Top = 160
  end
  object OraclePackage1: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 728
    Top = 160
  end
  object DS_SEOSIGN: TDataSource
    DataSet = SEO_SIGN
    Left = 212
    Top = 538
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 984
    Top = 440
  end
  object TrayIcon1: TTrayIcon
    Animate = True
    BalloonTitle = #1041#1072#1079#1072' '#1089'/'#1079' '#1048#1053#1060#1054
    BalloonTimeout = 1
    BalloonFlags = bfInfo
    Icons = ImageList1
    Left = 68
    Top = 426
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2
    OnTimer = Timer1Timer
    Left = 20
    Top = 426
  end
  object SEO_INFO_2: TOracleDataSet
    SQL.Strings = (
      'select count (*) as NUM_STR '
      'from mrk.V$SZ_MAIN_SEO t '
      'where t.sz_id in ( Select a.Sz_Id '
      '                 From   Mrk.Sz_Seo_Appr a'
      '                 Where  a.Id_Appr_Step = 2'
      '                        And a.Flag_In = 1 )'
      'order by SZ_DATE desc, SZ_NUMB desc'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000010000000E0000004E0055004D005F00530054005200010000000000}
    Session = Form20.OracleSession1
    Left = 980
    Top = 370
    object SEO_INFO_2NUM_STR: TFloatField
      FieldName = 'NUM_STR'
    end
  end
  object MainMenu1: TMainMenu
    Left = 376
    Top = 9
    object N211: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = N211Click
    end
    object C1: TMenuItem
      Caption = 'C'#1087#1088#1072#1074#1082#1072
      object N1: TMenuItem
        Caption = #1055#1086#1084#1086#1097#1100
        OnClick = N1Click
      end
      object N2: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Visible = False
      object N4: TMenuItem
        Caption = #1042#1082#1083#1102#1095#1077#1085#1080#1077' '#1087#1088#1080' '#1079#1072#1087#1091#1089#1082#1077' '#1089#1080#1089#1090#1077#1084#1099
        OnClick = N4Click
      end
    end
    object N20: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
      Visible = False
      OnClick = N20Click
    end
  end
  object DS_CONTENT_2: TDataSource
    AutoEdit = False
    DataSet = SZ_CONTENT_SEO_2
    Left = 120
    Top = 528
  end
  object DS_CONTENT_SEO: TDataSource
    AutoEdit = False
    DataSet = SZ_CONTENT_SEO
    Left = 24
    Top = 528
  end
  object DS_NOTIF: TOracleDataSet
    SQL.Strings = (
      
        'select t.*, t.rowid from SZ_TABLE_LOG t where t.sz_usertype = 2 ' +
        'and t.sz_otdel = 38')
    Optimize = False
    QueryAllRecords = False
    Session = Form20.OracleSession1
    AfterRefresh = DS_NOTIFAfterRefresh
    Left = 980
    Top = 298
  end
  object ImageList1: TImageList
    Left = 608
    Top = 544
    Bitmap = {
      494C010102000800D00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object DS_Admin_NOTIF: TOracleDataSet
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
    AfterRefresh = DS_Admin_NOTIFAfterRefresh
    Left = 985
    Top = 242
    object DS_Admin_NOTIFID: TFloatField
      FieldName = 'ID'
    end
    object DS_Admin_NOTIFSURNAME: TStringField
      FieldName = 'SURNAME'
      Size = 50
    end
    object DS_Admin_NOTIFNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object DS_Admin_NOTIFPATRONYMIC: TStringField
      FieldName = 'PATRONYMIC'
      Size = 50
    end
    object DS_Admin_NOTIFID_TYPE_USERS: TIntegerField
      FieldName = 'ID_TYPE_USERS'
    end
    object DS_Admin_NOTIFID_TYPE_OTDEL: TIntegerField
      FieldName = 'ID_TYPE_OTDEL'
    end
    object DS_Admin_NOTIFPHONE: TStringField
      FieldName = 'PHONE'
    end
    object DS_Admin_NOTIFUSER_ONLINE: TFloatField
      FieldName = 'USER_ONLINE'
    end
    object DS_Admin_NOTIFENTER_DATE: TDateTimeField
      FieldName = 'ENTER_DATE'
    end
    object DS_Admin_NOTIFUSER_NOTIF: TFloatField
      FieldName = 'USER_NOTIF'
    end
    object DS_Admin_NOTIFMESSAGE: TStringField
      FieldName = 'MESSAGE'
      Size = 2000
    end
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 300000
    OnTimer = Timer3Timer
    Left = 124
    Top = 422
  end
  object STATUS_TYPE_DB: TOracleDataSet
    SQL.Strings = (
      'Select *'
      'From   ( Select '#39'10'#39'||t.Id as Appr_Step_Flag, '
      '                t.Appr_Step_Name'
      '         From   Mrk.Sz_Seo_Appr_Steps t'
      '         Where  t.Id <> 1'
      ''
      '         Union All'
      ''
      '         Select '#39'%'#39', '#39#1042#1057#1045#39
      '         From   Dual'
      ''
      '         Union All'
      ''
      '         Select '#39'01'#39'||t.Id as Appr_Step_Flag, '
      '                '#39#1055#1086#1076#1087#1080#1089#1072#1085#1072' '#1055#1086#1083#1091#1095#1072#1090#1077#1083#1077#1084#39' As Appr_Step_Name'
      '         From   Mrk.Sz_Seo_Appr_Steps t'
      '         Where  t.Id = 3 ) a'
      'Order  By a.Appr_Step_Flag')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000001C00000041005000500052005F0053005400450050005F00
      46004C00410047000100000000001C00000041005000500052005F0053005400
      450050005F004E0041004D004500010000000000}
    Session = Form20.OracleSession1
    Left = 472
    Top = 488
    object STATUS_TYPE_DBAPPR_STEP_FLAG: TStringField
      FieldName = 'APPR_STEP_FLAG'
      Size = 42
    end
    object STATUS_TYPE_DBAPPR_STEP_NAME: TStringField
      FieldName = 'APPR_STEP_NAME'
      Size = 100
    end
  end
  object STATUS_TYPE_DATA: TDataSource
    DataSet = STATUS_TYPE_DB
    Left = 472
    Top = 544
  end
  object SEO_INFO: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.V$SZ_MAIN_SEO t '
      'where t.SZ_NUMB like  Nvl(:vNum, '#39'%'#39') ||'#39'%'#39
      
        'and upper(t.CONTACT) like '#39'%'#39' || upper(Nvl(:vContact, '#39'%'#39')) ||'#39'%' +
        #39' '
      'and t.sz_id in ( Select a.Sz_Id '
      '                 From   Mrk.Sz_Seo_Appr a'
      '                 Where  a.Id_Appr_Step = 2'
      '                        And a.Flag_In = 1 )'
      
        'and t.sz_id in (select distinct t.sz_id from sz_seo_content t wh' +
        'ere translate (upper(decode(t.sz_ibyal_ob, null,'#39'%'#39', t.sz_ibyal_' +
        'ob)), '#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-'#39', '#39'%'#39')  like '#39'%'#39' || translate (upper(:vNOM)' +
        ','#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-*'#39', '#39'%'#39') || '#39'%'#39
      
        '                                                                ' +
        '  and upper(Nvl(t.sz_name_ob, '#39'%'#39')) like '#39'%'#39' || translate (upper' +
        '(:vNAIM),'#39'*'#39','#39'%'#39') || '#39'%'#39' '
      
        '                                                                ' +
        '  and upper(t.sz_code_ob) like '#39'%'#39' || translate (upper(:vKOD),'#39'*' +
        #39','#39'%'#39') || '#39'%'#39'  )'
      'order by SZ_DATE desc, SZ_NUMB desc')
    Optimize = False
    Variables.Data = {
      0400000005000000120000003A00560043004F004E0054004100430054000500
      000000000000000000000A0000003A0056004E0055004D000500000000000000
      000000000A0000003A0056004E004F004D000500000000000000000000000C00
      00003A0056004E00410049004D000500000000000000000000000A0000003A00
      56004B004F004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000160000000E00000053005A005F004E0055004D004200010000000000
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
      5F0054004F005F0059005F0044004100540045000100000000000C0000005300
      5A005F004100440044000100000000001A00000053005A005F00500052004900
      430045005F0049004E00440046000100000000001800000053005A005F004600
      5200450045005F0046004F0052004D000100000000002000000053005A005F00
      46005200450045005F0046004F0052004D005F0054004F005000010000000000
      0A00000053005A005F00490044000100000000001400000053005A005F004600
      52004F004D005F00490044000100000000001000000053005A005F0054004F00
      5F00490044000100000000000C00000053005400410054005500530001000000
      0000180000005300540041005400550053005F00560041004C00550045000100
      00000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 340
    Top = 482
    object SEO_INFOSZ_ID: TFloatField
      FieldName = 'SZ_ID'
      Required = True
    end
    object SEO_INFOSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object SEO_INFOSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object SEO_INFOCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 1000
    end
    object SEO_INFOSZ_CONDITION: TFloatField
      FieldName = 'SZ_CONDITION'
    end
    object SEO_INFOSZ_ID_CONT: TFloatField
      FieldName = 'SZ_ID_CONT'
    end
    object SEO_INFOSZ_CONT_Y: TFloatField
      FieldName = 'SZ_CONT_Y'
    end
    object SEO_INFOSZ_CONT_Y_DATE: TDateTimeField
      FieldName = 'SZ_CONT_Y_DATE'
    end
    object SEO_INFOSZ_FROM_Y: TFloatField
      FieldName = 'SZ_FROM_Y'
    end
    object SEO_INFOSZ_FROM: TStringField
      FieldName = 'SZ_FROM'
      Size = 4000
    end
    object SEO_INFOSZ_FROM_Y_DATE: TDateTimeField
      FieldName = 'SZ_FROM_Y_DATE'
    end
    object SEO_INFOSZ_FROM_ID: TFloatField
      FieldName = 'SZ_FROM_ID'
    end
    object SEO_INFOSZ_TO_Y: TFloatField
      FieldName = 'SZ_TO_Y'
    end
    object SEO_INFOSZ_TO: TStringField
      FieldName = 'SZ_TO'
      Size = 4000
    end
    object SEO_INFOSZ_TO_Y_DATE: TDateTimeField
      FieldName = 'SZ_TO_Y_DATE'
    end
    object SEO_INFOSZ_TO_ID: TFloatField
      FieldName = 'SZ_TO_ID'
    end
    object SEO_INFOSZ_ADD: TStringField
      FieldName = 'SZ_ADD'
      Size = 1000
    end
    object SEO_INFOSZ_FREE_FORM_TOP: TStringField
      FieldName = 'SZ_FREE_FORM_TOP'
      Size = 4000
    end
    object SEO_INFOSZ_FREE_FORM: TFloatField
      FieldName = 'SZ_FREE_FORM'
    end
    object SEO_INFOSZ_PRICE_INDF: TFloatField
      FieldName = 'SZ_PRICE_INDF'
    end
    object SEO_INFOSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 72
    end
    object SEO_INFOSTATUS_VALUE: TFloatField
      FieldName = 'STATUS_VALUE'
    end
  end
  object DS_SEOINFO: TDataSource
    DataSet = SEO_INFO
    Left = 340
    Top = 538
  end
  object SEO_SIGN: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.V$SZ_MAIN_SEO t '
      'where SZ_NUMB like  :vNum ||'#39'%'#39
      'and upper(t.CONTACT) like '#39'%'#39' || upper(:vContact) ||'#39'%'#39' '
      'and t.sz_id in ( Select a.Sz_Id '
      '                 From   Mrk.Sz_Seo_Appr a'
      '                 Where  a.Id_Appr_Step = 2'
      '                        And a.Flag_Out = 1 )'
      'and t.sz_id In ( Select a.Sz_Id '
      '                 From   Mrk.Sz_Seo_Appr a'
      
        '                 Where  a.Flag_In||Decode( a.Flag_Out, 1, 1, 0, ' +
        '0, 2, 0 )||a.Id_Appr_Step Like :v_Appr_Step||'#39'%'#39' ) '
      
        'and t.sz_id in (select distinct t.sz_id from sz_seo_content t wh' +
        'ere translate (upper(decode(t.sz_ibyal_ob, null,'#39'%'#39', t.sz_ibyal_' +
        'ob)), '#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-'#39', '#39'%'#39')  like '#39'%'#39' || translate (upper(:vNOM)' +
        ','#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-*'#39', '#39'%'#39') || '#39'%'#39')'
      
        'and t.sz_id in (select distinct t.sz_id from sz_seo_content t wh' +
        'ere upper(t.sz_name_ob) like '#39'%'#39' || translate (upper(:vNAIM),'#39'*'#39 +
        ','#39'%'#39') || '#39'%'#39')  '
      'order by SZ_DATE desc, SZ_NUMB desc')
    Optimize = False
    Variables.Data = {
      04000000050000000A0000003A0056004E0055004D0005000000000000000000
      0000120000003A00560043004F004E0054004100430054000500000000000000
      000000000A0000003A0056004E004F004D000500000000000000000000000C00
      00003A0056004E00410049004D00050000000000000000000000180000003A00
      56005F0041005000500052005F00530054004500500005000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      05000000160000000E00000053005A005F004E0055004D004200010000000000
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
      5F0054004F005F0059005F0044004100540045000100000000000C0000005300
      5A005F004100440044000100000000001A00000053005A005F00500052004900
      430045005F0049004E00440046000100000000001800000053005A005F004600
      5200450045005F0046004F0052004D000100000000002000000053005A005F00
      46005200450045005F0046004F0052004D005F0054004F005000010000000000
      0A00000053005A005F00490044000100000000001400000053005A005F004600
      52004F004D005F00490044000100000000001000000053005A005F0054004F00
      5F00490044000100000000000C00000053005400410054005500530001000000
      0000180000005300540041005400550053005F00560041004C00550045000100
      00000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 212
    Top = 474
    object SEO_SIGNSZ_ID: TFloatField
      FieldName = 'SZ_ID'
      Required = True
    end
    object SEO_SIGNSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object SEO_SIGNSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object SEO_SIGNCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 1000
    end
    object SEO_SIGNSZ_CONDITION: TFloatField
      FieldName = 'SZ_CONDITION'
    end
    object SEO_SIGNSZ_ID_CONT: TFloatField
      FieldName = 'SZ_ID_CONT'
    end
    object SEO_SIGNSZ_CONT_Y: TFloatField
      FieldName = 'SZ_CONT_Y'
    end
    object SEO_SIGNSZ_CONT_Y_DATE: TDateTimeField
      FieldName = 'SZ_CONT_Y_DATE'
    end
    object SEO_SIGNSZ_FROM_Y: TFloatField
      FieldName = 'SZ_FROM_Y'
    end
    object SEO_SIGNSZ_FROM: TStringField
      FieldName = 'SZ_FROM'
      Size = 4000
    end
    object SEO_SIGNSZ_FROM_Y_DATE: TDateTimeField
      FieldName = 'SZ_FROM_Y_DATE'
    end
    object SEO_SIGNSZ_FROM_ID: TFloatField
      FieldName = 'SZ_FROM_ID'
    end
    object SEO_SIGNSZ_TO_Y: TFloatField
      FieldName = 'SZ_TO_Y'
    end
    object SEO_SIGNSZ_TO: TStringField
      FieldName = 'SZ_TO'
      Size = 4000
    end
    object SEO_SIGNSZ_TO_Y_DATE: TDateTimeField
      FieldName = 'SZ_TO_Y_DATE'
    end
    object SEO_SIGNSZ_TO_ID: TFloatField
      FieldName = 'SZ_TO_ID'
    end
    object SEO_SIGNSZ_ADD: TStringField
      FieldName = 'SZ_ADD'
      Size = 1000
    end
    object SEO_SIGNSZ_FREE_FORM_TOP: TStringField
      FieldName = 'SZ_FREE_FORM_TOP'
      Size = 4000
    end
    object SEO_SIGNSZ_FREE_FORM: TFloatField
      FieldName = 'SZ_FREE_FORM'
    end
    object SEO_SIGNSZ_PRICE_INDF: TFloatField
      FieldName = 'SZ_PRICE_INDF'
    end
    object SEO_SIGNSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 72
    end
    object SEO_SIGNSTATUS_VALUE: TFloatField
      FieldName = 'STATUS_VALUE'
    end
  end
  object SZ_CONTENT_SEO: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.SZ_SEO_CONTENT t'
      'where t.sz_id = :sz_id'
      'order by t.id_str')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      050000000B0000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F004E0041004D0045005F004F0042000100000000001600000053005A005F00
      49004200590041004C005F004F0042000100000000000E000000490044005F00
      43004F004E0054000100000000000C000000490044005F005300540052000100
      000000001A00000053005A005F0043004F00530054005F0057005F004E004400
      53000100000000000C00000053005A005F004E00440053000100000000000E00
      000053005A005F0043004F00530054000100000000001600000053005A005F00
      49004D0050005F004E0055004D0042000100000000001600000053005A005F00
      49004D0050005F004400410054004500010000000000}
    Master = SEO_INFO
    MasterFields = 'SZ_ID'
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 28
    Top = 474
    object SZ_CONTENT_SEOSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object SZ_CONTENT_SEOSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object SZ_CONTENT_SEOSZ_NAME_OB: TStringField
      FieldName = 'SZ_NAME_OB'
      Size = 1000
    end
    object SZ_CONTENT_SEOSZ_IBYAL_OB: TStringField
      FieldName = 'SZ_IBYAL_OB'
      Size = 1000
    end
    object SZ_CONTENT_SEOSZ_COST_W_NDS: TFloatField
      FieldName = 'SZ_COST_W_NDS'
    end
    object SZ_CONTENT_SEOSZ_NDS: TFloatField
      FieldName = 'SZ_NDS'
    end
    object SZ_CONTENT_SEOSZ_COST: TFloatField
      FieldName = 'SZ_COST'
    end
    object SZ_CONTENT_SEOID_CONT: TFloatField
      FieldName = 'ID_CONT'
    end
    object SZ_CONTENT_SEOID_STR: TFloatField
      FieldName = 'ID_STR'
    end
    object SZ_CONTENT_SEOSZ_IMP_NUMB: TFloatField
      FieldName = 'SZ_IMP_NUMB'
    end
    object SZ_CONTENT_SEOSZ_IMP_DATE: TDateTimeField
      FieldName = 'SZ_IMP_DATE'
    end
  end
  object SZ_CONTENT_SEO_2: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.SZ_SEO_CONTENT t'
      'where t.sz_id = :sz_id'
      'order by t.id_str')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      050000000B0000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F004E0041004D0045005F004F0042000100000000001600000053005A005F00
      49004200590041004C005F004F0042000100000000000E000000490044005F00
      43004F004E0054000100000000000C000000490044005F005300540052000100
      000000001A00000053005A005F0043004F00530054005F0057005F004E004400
      53000100000000000C00000053005A005F004E00440053000100000000000E00
      000053005A005F0043004F00530054000100000000001600000053005A005F00
      49004D0050005F004E0055004D0042000100000000001600000053005A005F00
      49004D0050005F004400410054004500010000000000}
    Master = SEO_SIGN
    MasterFields = 'SZ_ID'
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 124
    Top = 474
    object FloatField15: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object StringField11: TStringField
      FieldName = 'SZ_NAME_OB'
      Size = 1000
    end
    object StringField12: TStringField
      FieldName = 'SZ_IBYAL_OB'
      Size = 1000
    end
    object FloatField16: TFloatField
      FieldName = 'SZ_COST_W_NDS'
    end
    object FloatField17: TFloatField
      FieldName = 'SZ_NDS'
    end
    object FloatField18: TFloatField
      FieldName = 'SZ_COST'
    end
    object FloatField19: TFloatField
      FieldName = 'ID_CONT'
    end
    object FloatField20: TFloatField
      FieldName = 'ID_STR'
    end
    object FloatField21: TFloatField
      FieldName = 'SZ_IMP_NUMB'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'SZ_IMP_DATE'
    end
  end
  object STATUS_SZ_DB: TOracleDataSet
    SQL.Strings = (
      'select * from V$SZ_TABLE_LOG_SIGNING_ALL t'
      'where t.avtor_sz like '#39'%'#39' || :vContact ||'#39'%'#39
      'and SZ_NUMB like  :vNum ||'#39'%'#39
      
        'and t.sz_inf_date between to_date (:DATE_FROM, '#39'dd.mm.yyyy'#39') and' +
        ' to_date(:DATE_TO, '#39'dd.mm.yyyy'#39')'
      'and t.otdel_type = 2'
      'order by id_str desc')
    Optimize = False
    Variables.Data = {
      0400000004000000120000003A00560043004F004E0054004100430054000500
      00000000000000000000140000003A0044004100540045005F00460052004F00
      4D00050000000000000000000000100000003A0044004100540045005F005400
      4F000500000000000000000000000A0000003A0056004E0055004D0005000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000A0000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001800000053005A00
      5F0043004F004E0044004900540049004F004E000100000000000C0000004900
      44005F005300540052000100000000001600000053005A005F0049004E004600
      5F0044004100540045000100000000001A0000004100560054004F0052005F00
      4D00450053005300410047004500010000000000100000004100560054004F00
      52005F0053005A000100000000000C0000005300540041005400550053000100
      000000000A00000053005A005F0049004400010000000000140000004F005400
      440045004C005F005400590050004500010000000000}
    Session = Form20.OracleSession1
    Left = 272
    Top = 480
    object STATUS_SZ_DBSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object STATUS_SZ_DBSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object STATUS_SZ_DBSZ_CONDITION: TFloatField
      FieldName = 'SZ_CONDITION'
    end
    object STATUS_SZ_DBID_STR: TFloatField
      FieldName = 'ID_STR'
    end
    object STATUS_SZ_DBSZ_INF_DATE: TDateTimeField
      FieldName = 'SZ_INF_DATE'
    end
    object STATUS_SZ_DBAVTOR_MESSAGE: TStringField
      FieldName = 'AVTOR_MESSAGE'
      Size = 4000
    end
    object STATUS_SZ_DBAVTOR_SZ: TStringField
      FieldName = 'AVTOR_SZ'
      Size = 4000
    end
    object STATUS_SZ_DBSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 38
    end
    object STATUS_SZ_DBSZ_ID: TFloatField
      FieldName = 'SZ_ID'
    end
    object STATUS_SZ_DBOTDEL_TYPE: TFloatField
      FieldName = 'OTDEL_TYPE'
    end
  end
  object STATUS_SZ_DATA: TDataSource
    DataSet = STATUS_SZ_DB
    Left = 268
    Top = 538
  end
  object PM_GRID_FOR_SIG: TPopupMenu
    Left = 436
    Top = 266
    object N9: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = N211Click
    end
    object N10: TMenuItem
      Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100
      OnClick = SIGN_BTNClick
    end
    object MenuItem1: TMenuItem
      Caption = #1054#1090#1082#1072#1079#1072#1090#1100
      OnClick = CANCEL_SIGN_BTNClick
    end
    object N14: TMenuItem
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      OnClick = Btn_CommentClick
    end
  end
  object PM_GRID_SIGN: TPopupMenu
    Left = 588
    Top = 330
    object N11: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = N211Click
    end
    object N15: TMenuItem
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      OnClick = Btn_CommentClick
    end
  end
  object PM_GRID_STATUS: TPopupMenu
    Left = 636
    Top = 378
    object N12: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = N211Click
    end
    object N16: TMenuItem
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      OnClick = Btn_CommentClick
    end
  end
  object SEO_INFO_3: TOracleDataSet
    SQL.Strings = (
      'select count (*) as NUM_STR from mrk.V$SZ_MAIN_SEO t'
      'where t.sz_id in ( Select a.Sz_Id '
      '                 From   Mrk.Sz_Seo_Appr a'
      '                 Where  a.Id_Appr_Step = 2'
      '                        And a.Flag_In = 1 )'
      'order by SZ_DATE desc, SZ_NUMB desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000010000000E0000004E0055004D005F00530054005200010000000000}
    Session = Form20.OracleSession1
    AfterRefresh = SEO_INFO_3AfterRefresh
    Left = 908
    Top = 370
    object SEO_INFO_3NUM_STR: TFloatField
      FieldName = 'NUM_STR'
    end
  end
  object Db_Seo_Appr_Steps: TOracleDataSet
    SQL.Strings = (
      'Select ( Select a.Appr_Step_Name '
      '         From   Mrk.Sz_Seo_Appr_Steps a'
      '         Where  a.Id = t.Id_Appr_Step ) As Appr_Step_Name,'
      '       ( Select a.Appr_Step_Num '
      '         From   Mrk.Sz_Seo_Appr_Steps a'
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
      'From   Mrk.Sz_Seo_Appr t'
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
    Master = SEO_SIGN
    MasterFields = 'SZ_ID'
    Session = Form20.OracleSession1
    Left = 748
    Top = 274
    object Db_Seo_Appr_StepsAPPR_STEP_NAME: TStringField
      FieldName = 'APPR_STEP_NAME'
      Size = 100
    end
    object Db_Seo_Appr_StepsAPPR_STEP_NUM: TStringField
      FieldName = 'APPR_STEP_NUM'
      Size = 3
    end
    object Db_Seo_Appr_StepsSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 15
    end
    object Db_Seo_Appr_StepsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 4000
    end
    object Db_Seo_Appr_StepsDATE_IN: TDateTimeField
      FieldName = 'DATE_IN'
    end
    object Db_Seo_Appr_StepsDATE_OUT: TDateTimeField
      FieldName = 'DATE_OUT'
    end
    object Db_Seo_Appr_StepsCEH_NAME: TStringField
      FieldName = 'CEH_NAME'
      Size = 10
    end
  end
  object Data_Seo_Appr_Steps: TDataSource
    DataSet = Db_Seo_Appr_Steps
    Left = 812
    Top = 274
  end
  object OTDEL_TYPE_DB: TOracleDataSet
    SQL.Strings = (
      'select '#39#1054#1090#1076#1077#1083' '#1087#1088#1086#1076#1072#1078#39' as Otdel_name, 1 as otdel_type from dual'
      ''
      'union all'
      ''
      'select '#39#1057#1069#1054#39' as Otdel_name, 2 as otdel_type from dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000140000004F005400440045004C005F004E0041004D004500
      010000000000140000004F005400440045004C005F0054005900500045000100
      00000000}
    Session = Form20.OracleSession1
    Left = 712
    Top = 456
    object OTDEL_TYPE_DBOTDEL_NAME: TStringField
      FieldName = 'OTDEL_NAME'
      Size = 12
    end
    object OTDEL_TYPE_DBOTDEL_TYPE: TFloatField
      FieldName = 'OTDEL_TYPE'
    end
  end
  object OTDEL_TYPE_DATA: TDataSource
    DataSet = OTDEL_TYPE_DB
    Left = 816
    Top = 512
  end
  object Ds_Users_Info: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, sz_enter.GetNameUser(t.id) as FIO FROM MRK.SZ_USERS' +
        ' t where t.id_type_users = :v_User_Type or t.id_type_dop = :v_Us' +
        'er_Type'
      ''
      'union all'
      ''
      'select 999999, '#39#1042#1057#1045#39' from dual'
      ''
      'order by id')
    Optimize = False
    Variables.Data = {
      0400000001000000180000003A0056005F0055005300450052005F0054005900
      50004500050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004900440001000000000006000000460049004F00
      010000000000}
    Session = Form20.OracleSession1
    Left = 456
    Top = 384
    object FloatField3: TFloatField
      FieldName = 'ID'
    end
    object StringField7: TStringField
      FieldName = 'FIO'
      Size = 4000
    end
  end
  object Data_Users_Info: TDataSource
    DataSet = Ds_Users_Info
    Left = 460
    Top = 441
  end
  object DS_Users_Seo: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, sz_enter.GetNameUser(t.id) as FIO FROM MRK.SZ_USERS' +
        ' t where t.id_type_users = 3 or t.id_type_dop = 3'
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
    Left = 392
    Top = 488
    object FloatField2: TFloatField
      FieldName = 'ID'
    end
    object StringField6: TStringField
      FieldName = 'FIO'
      Size = 4000
    end
  end
  object Data_Users_Seo: TDataSource
    DataSet = DS_Users_Seo
    Left = 396
    Top = 546
  end
end
