object Form_Setup_Time_Calc: TForm_Setup_Time_Calc
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1095#1077#1090' '#1087#1086#1076#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100#1085#1086'-'#1079#1072#1082#1083#1102#1095#1077#1090#1077#1083#1100#1085#1086#1075#1086' '#1074#1088#1077#1084#1077#1085#1080
  ClientHeight = 795
  ClientWidth = 1277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'clWindowText'
  Font.Style = []
  Menu = Main_M_T_Pz_Calc
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter2: TSplitter
    Left = 712
    Top = 0
    Width = 5
    Height = 795
    Align = alRight
    ExplicitLeft = 624
    ExplicitHeight = 680
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 712
    Height = 795
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel4'
    ShowCaption = False
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 0
      Top = 210
      Width = 712
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = 1
      ExplicitTop = 211
      ExplicitWidth = 625
    end
    object Splitter5: TSplitter
      Left = 0
      Top = 415
      Width = 712
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = 1
      ExplicitTop = 474
      ExplicitWidth = 627
    end
    object Panel3: TPanel
      Left = 0
      Top = 215
      Width = 712
      Height = 200
      Align = alTop
      Caption = 'Panel3'
      ShowCaption = False
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 710
        Height = 198
        Align = alClient
        Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
        TabOrder = 0
        object Grid_Params: TDBGridEh
          Left = 2
          Top = 17
          Width = 706
          Height = 179
          Align = alClient
          AutoFitColWidths = True
          DataSource = Data_Oper_Group_Params
          DynProps = <>
          EvenRowColor = clMenu
          Flat = True
          FooterRowCount = 1
          HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
          HorzScrollBar.ExtraPanel.Visible = True
          HorzScrollBar.ExtraPanel.VisibleItems = [gsbiRecordsInfoEh, gsbiSelAggregationInfoEh]
          EmptyDataInfo.Active = True
          EmptyDataInfo.Text = #1053#1077#1090' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074'...'
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
          RowHeight = 2
          RowLines = 1
          SearchPanel.Enabled = True
          SortLocal = True
          STFilter.Local = True
          STFilter.Location = stflInTitleFilterEh
          STFilter.Visible = True
          SumList.Active = True
          SumList.ExternalRecalc = True
          TabOrder = 0
          OnGetCellParams = Grid_ParamsGetCellParams
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MIN_VALUE'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'MAX_VALUE'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VL_CH_PRM'
              Footers = <>
              Visible = False
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SUM_TIME_VALUE'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CEH_CODE'
              Footers = <>
              Title.Caption = #1062#1077#1093
              Visible = False
              Width = 64
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PROF_CODE'
              Footers = <>
              Title.Caption = #1050#1086#1076' '#1087#1088#1086#1092#1077#1089#1089#1080#1080
              Visible = False
              Width = 114
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PROF_NAME'
              Footers = <>
              Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
              Visible = False
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'GRP_OBR_NAME'
              Footers = <>
              Title.Caption = #1043#1088#1091#1087#1087#1072' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
              Visible = False
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NAME_PARAM'
              Footers = <>
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
              Width = 300
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TP_PARAM_VALUE'
              Footer.Alignment = taRightJustify
              Footer.Value = #1048#1090#1086#1075#1086':'
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
              Width = 150
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##,0.00000'
              DynProps = <>
              EditButtons = <>
              FieldName = 'TIME_VALUE'
              Footer.DisplayFormat = '#,##,0.00000'
              Footer.FieldName = 'TIME_VALUE'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #1042#1088#1077#1084#1103', '#1084#1080#1085'.'
              Width = 94
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 712
      Height = 49
      Align = alTop
      ShowCaption = False
      TabOrder = 1
      DesignSize = (
        712
        49)
      object Btn_Calculate_Time: TButton
        Left = 632
        Top = 18
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1056#1072#1089#1089#1095#1077#1090
        TabOrder = 0
        OnClick = Btn_Calculate_TimeClick
      end
      object E_Result_Time: TDBNumberEditEh
        Left = 3
        Top = 19
        Width = 621
        Height = 23
        ControlLabel.Width = 66
        ControlLabel.Height = 15
        ControlLabel.Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090', '#1095
        ControlLabel.Visible = True
        Anchors = [akLeft, akTop, akRight]
        DisplayFormat = '#,##,0.00000'
        DynProps = <>
        EmptyDataInfo.Text = #1056#1072#1089#1089#1095#1077#1090' '#1085#1077' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1083#1089#1103'..'
        EditButtons = <>
        TabOrder = 1
        Visible = True
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 49
      Width = 712
      Height = 161
      Align = alTop
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 2
      object Grid_Groups: TDBGridEh
        Left = 1
        Top = 1
        Width = 710
        Height = 140
        Align = alClient
        AutoFitColWidths = True
        DataSource = Data_Oper_Obor_Groups
        DynProps = <>
        Flat = True
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
        RowHeight = 2
        RowLines = 1
        SearchPanel.Enabled = True
        SearchPanel.FilterEnabled = False
        STFilter.Local = True
        STFilter.Location = stflInTitleFilterEh
        STFilter.Visible = True
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CEH_CODE'
            Footers = <>
            Title.Caption = #1062#1077#1093
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROF_CODE'
            Footers = <>
            Title.Caption = #1050#1086#1076' '#1087#1088#1086#1092#1077#1089#1089#1080#1080
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROF_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'GRP_OBR_NAME'
            Footers = <>
            Title.Caption = #1043#1088#1091#1087#1087#1072' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
            Width = 300
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##,0.00000'
            DynProps = <>
            EditButtons = <>
            FieldName = 'CONST_TIME'
            Footers = <>
            Title.Caption = #1050#1086#1085#1089#1090#1072#1085#1090#1085#1086#1077' '#1074#1088#1077#1084#1103', '#1084#1080#1085'.'
            Width = 160
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object StatusBar1: TStatusBar
        Left = 1
        Top = 141
        Width = 710
        Height = 19
        Panels = <>
        SimplePanel = True
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 420
      Width = 712
      Height = 375
      Align = alClient
      Caption = 'Panel6'
      ShowCaption = False
      TabOrder = 3
      object GroupBox4: TGroupBox
        Left = 1
        Top = 1
        Width = 710
        Height = 373
        Align = alClient
        Caption = #1055#1077#1088#1077#1093#1086#1076#1099
        TabOrder = 0
        object Splitter6: TSplitter
          Left = 352
          Top = 17
          Width = 5
          Height = 354
          ExplicitLeft = 449
          ExplicitTop = 16
          ExplicitHeight = 275
        end
        object Grid_Op_Per_Time: TDBGridEh
          Left = 2
          Top = 17
          Width = 350
          Height = 354
          Align = alLeft
          AutoFitColWidths = True
          DataSource = Data_Oper_Per_Time
          DynProps = <>
          Flat = True
          EmptyDataInfo.Active = True
          EmptyDataInfo.Text = #1055#1077#1088#1077#1093#1086#1076#1086#1074' '#1085#1077#1090'...'
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
          RowHeight = 2
          RowLines = 1
          SearchPanel.Enabled = True
          STFilter.InstantApply = True
          STFilter.Local = True
          STFilter.Location = stflInTitleFilterEh
          STFilter.Visible = True
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PER'
              Footers = <>
              Title.Caption = #1055#1077#1088#1077#1093#1086#1076
              Width = 457
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Grid_Oper_Works: TDBGridEh
          Left = 357
          Top = 17
          Width = 351
          Height = 354
          Align = alClient
          AutoFitColWidths = True
          DynProps = <>
          Flat = True
          FooterRowCount = 1
          EmptyDataInfo.Active = True
          EmptyDataInfo.Text = #1056#1072#1073#1086#1090#1099' '#1085#1077' '#1091#1082#1072#1079#1072#1085#1099'...'
          SearchPanel.Enabled = True
          STFilter.Local = True
          STFilter.Location = stflInTitleFilterEh
          STFilter.Visible = True
          SumList.Active = True
          SumList.ExternalRecalc = True
          TabOrder = 1
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <
                item
                  DropDownFormParams.DropDownForm = Drop_D_Form_Gen_Chose.Owner
                  DropDownFormParams.PassParams = pspCustomValuesEh
                end>
              FieldName = 'WORK_NAME'
              Footer.Alignment = taRightJustify
              Footer.Value = #1048#1090#1086#1075#1086':'
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
              Width = 300
              OnCloseDropDownForm = Grid_Oper_WorksColumns0CloseDropDownForm
              OnOpenDropDownForm = Grid_Oper_WorksColumns0OpenDropDownForm
              OnUpdateData = Grid_Oper_WorksColumns0UpdateData
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##,0.00000'
              DynProps = <>
              EditButtons = <>
              FieldName = 'WRK_TIME'
              Footer.DisplayFormat = '#,##,0.00000'
              Footer.FieldName = 'WRK_TIME'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #1042#1088#1077#1084#1103', '#1084#1080#1085'.'
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 717
    Top = 0
    Width = 560
    Height = 795
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel5'
    ShowCaption = False
    TabOrder = 1
    object Splitter3: TSplitter
      Left = 0
      Top = 249
      Width = 560
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = 1
      ExplicitTop = 265
      ExplicitWidth = 643
    end
    object Splitter4: TSplitter
      Left = 0
      Top = 426
      Width = 560
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 441
      ExplicitWidth = 645
    end
    object GB_NORMA_TIME: TGroupBox
      Left = 0
      Top = 0
      Width = 560
      Height = 249
      Align = alTop
      Caption = #1053'. '#1074#1088#1077#1084#1077#1085#1080' '#1076#1083#1103' '#1086#1087#1077#1088#1072#1094#1080#1080
      TabOrder = 0
      object Grid_Time_Norms: TDBVertGridEh
        Left = 2
        Top = 17
        Width = 556
        Height = 230
        Align = alClient
        AllowedSelections = []
        RowCategories.Active = True
        RowCategories.CategoryProps = <
          item
            Name = 'Prof'
            DisplayText = #1055#1088#1086#1092#1077#1089#1089#1080#1103
            DefaultExpanded = True
          end
          item
            Name = 'Time_Norm'
            DisplayText = #1053#1086#1088#1084#1072' '#1074#1088#1077#1084#1077#1085#1080
            DefaultExpanded = True
          end>
        RowCategories.ExpandingGlyphStyle = tvgsExplorerThemedEh
        PrintService.ColorSchema = pcsFullColorEh
        DataSource = Dm_Tech_Proc.Data_Oper_Time
        DrawGraphicData = True
        DrawMemoText = True
        Flat = True
        OptionsEh = [dgvhHighlightFocusEh, dgvhClearSelectionEh, dgvhEnterToNextRowEh]
        RowsDefValues.EndEllipsis = True
        TabOrder = 0
        LabelColWidth = 150
        Rows = <
          item
            DisplayFormat = '#,##,0.00000'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ALL_OPER_TIME'
            RowLabel.Caption = #1053#1086#1088#1084#1072' '#1074#1088#1077#1084#1077#1085#1080', '#1085'/'#1095
            RowLabel.Font.Charset = DEFAULT_CHARSET
            RowLabel.Font.Color = clWindowText
            RowLabel.Font.Height = -12
            RowLabel.Font.Name = 'clWindowText'
            RowLabel.Font.Style = [fsBold]
            CategoryName = 'Time_Norm'
            OnUpdateData = Grid_Time_Norms_TimeRowsUpdateData
          end
          item
            Color = clMenu
            DisplayFormat = '#,##,0.00000'
            DynProps = <>
            EditButtons = <>
            FieldName = 'UNIT_TIME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGrayText
            Font.Height = -12
            Font.Name = 'clWindowText'
            Font.Style = [fsItalic]
            ReadOnly = True
            RowLabel.Caption = 'T '#1096#1090'., '#1095
            RowLabel.Color = clSilver
            RowLabel.Font.Charset = DEFAULT_CHARSET
            RowLabel.Font.Color = clGrayText
            RowLabel.Font.Height = -12
            RowLabel.Font.Name = 'clWindowText'
            RowLabel.Font.Style = [fsBold, fsItalic]
            CategoryName = 'Time_Norm'
          end
          item
            DisplayFormat = '#,##,0.00000'
            DynProps = <>
            EditButtons = <>
            FieldName = 'OPER_TIME'
            RowLabel.Caption = #1058' '#1086#1087'., '#1095
            CategoryName = 'Time_Norm'
            OnUpdateData = Grid_Time_Norms_TimeRowsUpdateData
          end
          item
            DisplayFormat = '#,##,0.00000'
            DynProps = <>
            EditButtons = <>
            FieldName = 'OTHER_TIME'
            RowLabel.Caption = #1058' '#1086#1073#1089'.+'#1058' '#1086#1090#1076'., '#1095
            CategoryName = 'Time_Norm'
            OnUpdateData = Grid_Time_Norms_TimeRowsUpdateData
          end
          item
            Color = clMenu
            DisplayFormat = '#,##,0.00000'
            DynProps = <>
            EditButtons = <>
            FieldName = 'SETUP_TIME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGrayText
            Font.Height = -12
            Font.Name = 'clWindowText'
            Font.Style = [fsItalic]
            ReadOnly = True
            RowLabel.Caption = #1058' '#1087#1079'., '#1095
            RowLabel.Color = clSilver
            RowLabel.Font.Charset = DEFAULT_CHARSET
            RowLabel.Font.Color = clGrayText
            RowLabel.Font.Height = -12
            RowLabel.Font.Name = 'clWindowText'
            RowLabel.Font.Style = [fsBold, fsItalic]
            CategoryName = 'Time_Norm'
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ALL_OPER_TIME_PERC'
            RowLabel.Caption = '%  '#1086#1090' '#1091#1090#1074'. '#1085#1086#1088#1084
            CategoryName = 'Time_Norm'
            OnUpdateData = Grid_Time_NormsRows4UpdateData
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'UNIT_COUNT'
            RowLabel.Caption = #1050#1086#1083'-'#1074#1086' '#1076#1077#1090#1072#1083#1077#1081
            CategoryName = 'Time_Norm'
            OnUpdateData = Grid_Time_NormsRows10UpdateData
          end
          item
            DynProps = <>
            EditButtons = <
              item
                ShortCut = 0
                Style = ebsEllipsisEh
              end>
            FieldName = 'PROF_CODE'
            RowLabel.Caption = #1050#1086#1076' '#1087#1088#1086#1092'.'
            CategoryName = 'Prof'
            OnUpdateData = Grid_Time_NormsRows5UpdateData
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROF_CLASS'
            RowLabel.Caption = #1056#1072#1079#1088#1103#1076
            CategoryName = 'Prof'
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROF_CTN'
            RowLabel.Caption = #1050#1086#1076' '#1091#1089#1083#1086#1074#1080#1081' '#1090#1088#1091#1076#1072
            CategoryName = 'Prof'
          end
          item
            DisplayFormat = '#,#0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROF_MONEY'
            RowLabel.Caption = #1056#1072#1089#1094#1077#1085#1082#1072', '#1088#1091#1073'.'
            CategoryName = 'Prof'
          end
          item
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'CALC_FROM'
            KeyList.Strings = (
              'norm;'
              'value')
            RowLabel.Caption = #1056#1072#1089#1089#1095#1077#1090' '#1086#1090' '#1091#1090#1074'. '#1085#1086#1088#1084
            CategoryName = 'Time_Norm'
            OnUpdateData = Grid_Time_Norms_TimeRowsUpdateData
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 431
      Width = 560
      Height = 364
      Align = alClient
      Caption = #1058#1088#1091#1076#1086#1077#1084#1082#1086#1089#1090#1100
      TabOrder = 1
      object Grid_Detail_Trud: TDBGridEh
        Left = 2
        Top = 17
        Width = 556
        Height = 345
        Align = alClient
        AutoFitColWidths = True
        DataSource = Data_Trud_For_Detail
        DynProps = <>
        EvenRowColor = clMenu
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterRowCount = 1
        HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh]
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        PopupMenu = Pop_M_Trud_For_Detail
        SearchPanel.Enabled = True
        SumList.Active = True
        SumList.VirtualRecords = True
        TabOrder = 0
        TitleParams.RowHeight = 30
        OnDblClick = Grid_Detail_TrudDblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOP'
            Footers = <>
            Visible = False
            WordWrap = True
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1093
            Width = 27
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KODPROF'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1076' '#1087#1088#1086#1092'.'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROFPOLN'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1080
            Width = 300
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RAZR'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1056#1072#1079#1088#1103#1076
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KVN'
            Footer.Value = #1048#1090#1086#1075#1086':'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1076' '#1091#1089#1083'. '#1090#1088#1091#1076#1072
            Width = 60
          end
          item
            CellButtons = <>
            DisplayFormat = '#,#0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'MONEY'
            Footer.DisplayFormat = '#,#0.00'
            Footer.FieldName = 'MONEY'
            Footer.ValueType = fvtSum
            Footers = <
              item
                DisplayFormat = '#,#0.00'
                FieldName = 'MONEY'
                ValueType = fvtSum
              end
              item
              end>
            Title.Alignment = taCenter
            Title.Caption = #1056#1072#1089#1094#1077#1085#1082#1072', '#1088#1091#1073'.'
            Width = 80
          end
          item
            CellButtons = <>
            DisplayFormat = '#,#0.00000'
            DynProps = <>
            EditButtons = <>
            FieldName = 'TIME'
            Footer.DisplayFormat = '#,#0.00000'
            Footer.FieldName = 'TIME'
            Footer.ValueType = fvtSum
            Footers = <
              item
                DisplayFormat = '#,#0.00000'
                FieldName = 'TIME'
                ValueType = fvtSum
              end>
            Title.Alignment = taCenter
            Title.Caption = #1053#1086#1088#1084#1072', '#1085'/'#1095
            Width = 60
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 254
      Width = 560
      Height = 172
      Align = alTop
      Caption = #1058#1088#1091#1076#1086#1077#1084#1082#1086#1089#1090#1100' '#1087#1086' '#1090#1077#1093'. '#1087#1088#1086#1094#1077#1089#1089#1091
      TabOrder = 2
      object DBGridEh1: TDBGridEh
        Left = 2
        Top = 17
        Width = 556
        Height = 153
        Align = alClient
        AutoFitColWidths = True
        DataGrouping.Active = True
        DataGrouping.Color = clMedGray
        DataGrouping.DefaultStateExpanded = True
        DataGrouping.Font.Charset = DEFAULT_CHARSET
        DataGrouping.Font.Color = clWindow
        DataGrouping.Font.Height = -12
        DataGrouping.Font.Name = 'Tahoma'
        DataGrouping.Font.Style = [fsBold]
        DataGrouping.Footers = <
          item
            Color = clMenu
            ColumnItems = <
              item
              end
              item
              end
              item
                Text = #1048#1090#1086#1075#1086':'
                ValueType = gfvStaticTextEh
              end
              item
                ValueType = gfvSumEh
              end
              item
                ValueType = gfvSumEh
              end>
            ParentColor = False
            Visible = True
          end>
        DataGrouping.GroupLevels = <
          item
            ColumnName = 'Column_0_PROF_CODE'
          end>
        DataGrouping.ParentColor = False
        DataGrouping.ParentFont = False
        DataSource = Data_Tp_Time
        DynProps = <>
        Flat = True
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        SearchPanel.Enabled = True
        STFilter.Local = True
        STFilter.Location = stflInTitleFilterEh
        STFilter.Visible = True
        SumList.Active = True
        SumList.ExternalRecalc = True
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROF_CODE'
            Footers = <>
            Title.Caption = #1050#1086#1076' '#1087#1088#1086#1092'.'
            Width = 93
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROF_CTN'
            Footers = <>
            Title.Caption = #1056#1072#1079#1088#1103#1076
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROF_CLASS'
            Footers = <>
            Title.Caption = #1050#1086#1076' '#1091#1089#1083#1086#1074#1080#1081' '#1090#1088#1091#1076#1072
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##,0.00000'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ALL_OPER_TIME'
            Footer.FieldName = 'ALL_OPER_TIME'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #1053#1086#1088#1084#1072' '#1074#1088#1077#1084#1077#1085#1080
            Width = 137
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ALL_OPER_TIME_PERC'
            Footer.FieldName = 'ALL_OPER_TIME_PERC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '% '#1086#1090' '#1091#1090#1074'. '#1085#1086#1088#1084
            Width = 140
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Db_Oper_Group_Params: TOracleDataSet
    SQL.Strings = (
      'Select p.Param_Row_Id,'
      '       p.Name_Param,'
      '       p.Type_Param,'
      '       Grp.Ceh_Code,'
      '       Grp.Prof_Code,'
      '       Grp.Prof_Name,'
      '       Grp.Grp_Obr_Name,'
      '       s.Op_Grp_Op_Lnk_Rw_Id,'
      '       ( Case '
      
        '           When s.Max_Value Is Not Null Or s.Min_Value Is Not Nu' +
        'll Then Nvl(s.Min_Value, 0)'
      '           Else Null'
      '         End ) Min_Value,'
      '       ( Case '
      
        '           When s.Max_Value Is Not Null Or s.Min_Value Is Not Nu' +
        'll Then Nvl(s.Max_Value, 999999999)'
      '           Else Null'
      '         End ) Max_Value,'
      '       s.Chosen_Value,'
      '       s.Vl_Ch_Prm,'
      '       ( Case'
      
        '           When Tp_P.Param_Value Is Null Then '#39#1047#1085#1072#1095#1077#1085#1080#1077' '#1085#1077' '#1091#1082#1072#1079#1072 +
        #1085#1086'...'#39
      '           Else Tp_P.Param_Value '
      '         End ) Tp_Param_Value,'
      '       ( Case'
      
        '           When s.Depends_On = '#39'value'#39' Then Tp_P.Numeric_Vl * s.' +
        'Time_Value'
      
        '           When s.Depends_On = '#39'param'#39' Then Tp_P_D.Numeric_Vl * ' +
        's.Time_Value'
      '           When s.Depends_On = '#39'none'#39' Then s.Time_Value'
      '         End ) Time_Value,'
      '       Sum (( Case'
      
        '           When s.Depends_On = '#39'value'#39' Then Tp_P.Numeric_Vl * s.' +
        'Time_Value'
      
        '           When s.Depends_On = '#39'param'#39' Then Tp_P_D.Numeric_Vl * ' +
        's.Time_Value'
      '           When s.Depends_On = '#39'none'#39' Then s.Time_Value'
      '         End )) Over () Sum_Time_Value'
      'From   Ogt.v_Tp_Op_Param_Link p'
      'Left   Join Ogt.v_Tp_Ok_Oper_Params Tp_P'
      'On     Tp_P.Param_Row_Id = p.Param_Row_Id'
      '       And Tp_P.Oper_Row_Id = :v_Oper_Row_Id'
      'Left   Join Ogt.v_Tp_Time_Op_Prms_Schem s'
      'On     p.Param_Row_Id = s.Op_Prm_Rw_Id'
      '       And ( Case'
      
        '              When P.Type_Param = '#39'numeric'#39' And Tp_P.Param_Value' +
        ' Between Nvl(s.Min_Value, 0) And Nvl(s.Max_Value, 999999999)'
      '              Then 1 '
      
        '              When P.Type_Param like '#39'choice_%'#39' And Tp_P.Param_V' +
        'alue = s.Vl_Ch_Prm'
      '              Then 1 '
      '              Else 0'
      '            End ) = 1'
      '       And s.Op_Grp_Op_Lnk_Rw_Id In ( Select t.ID_DEP_GRP_OP_LNK'
      
        '                                     From   Ogt.V_Tp_Time_Grps_W' +
        '_Kodprof t'
      
        '                                     Where  t.Ceh_Id Like Nvl(:v' +
        '_Ceh_Id, '#39'%'#39')'
      
        '                                            And Nvl(t.Prof_Code,' +
        ' '#39'-'#39') Like Nvl(:v_Prof_Code, '#39'%'#39')   '
      
        '                                            And Nvl(t.Grp_Obr_Rw' +
        '_Id, 0) Like Nvl(:v_Grp_Obr_Rw_Id, '#39'%'#39'))'
      'Left   Join Ogt.v_Tp_Ok_Oper_Params Tp_P_D'
      'On     Tp_P_D.Param_Row_Id = s.Depends_On_Id'
      '       And s.Depends_On = '#39'param'#39
      '       And Tp_P.Oper_Row_Id = :v_Oper_Row_Id'
      'Left   Join   Ogt.V_Tp_Time_Grps_W_Kodprof Grp'
      'On     s.Op_Grp_Op_Lnk_Rw_Id = Grp.Id_Dep_Grp_Op_Lnk'
      '       And Grp.Ceh_Id Like Nvl(:v_Ceh_Id, '#39'%'#39')'
      
        '       And Nvl(Grp.Prof_Code, '#39'-'#39') Like Nvl(:v_Prof_Code, '#39'%'#39')  ' +
        ' '
      
        '       And Nvl(Grp.Grp_Obr_Rw_Id, 0) Like Nvl(:v_Grp_Obr_Rw_Id, ' +
        #39'%'#39') '
      'Where  p.Param_Row_Id In ( Select Prm.Op_Prm_Rw_Id'
      '                           From   Ogt.V_Tp_Time_Grps_W_Kodprof t'
      
        '                           Join   Ogt.v_Tp_Time_Op_Prms_Schem Pr' +
        'm'
      
        '                           On     Prm.Op_Grp_Op_Lnk_Rw_Id = t.Id' +
        '_Dep_Grp_Op_Lnk'
      
        '                           Where  t.Ceh_Id Like Nvl(:v_Ceh_Id, '#39 +
        '%'#39')'
      
        '                                   And Nvl(t.Prof_Code, '#39'-'#39') Lik' +
        'e Nvl(:v_Prof_Code, '#39'%'#39')   '
      
        '                                   And Nvl(t.Grp_Obr_Rw_Id, 0) L' +
        'ike Nvl(:v_Grp_Obr_Rw_Id, '#39'%'#39') )'
      '       And p.Id_Oper = :v_Oper_Id'
      
        '       And p.Id_Dep In ( Select t.Dep_Id From Ogt.v_Tp_Ok_Dlp t ' +
        'Where t.Id_Row_Oper = :v_Oper_Row_Id  )'
      ''
      'Union All'
      ''
      'Select Prm.Op_Prm_Rw_Id,'
      '       Prm.Name_Param,'
      '       Prm.Type_Param,'
      '       Grp.Ceh_Code,'
      '       Grp.Prof_Code,'
      '       Grp.Prof_Name,'
      '       Grp.Grp_Obr_Name,'
      '       Prm.Op_Grp_Op_Lnk_Rw_Id,'
      '       Null Min_Value,'
      '       Null Max_Value,'
      '       Prm.Chosen_Value,'
      '       Prm.Vl_Ch_Prm,'
      
        '       To_Char( Ogt.Pkg_Tp_Doc.F_Calculate_Param_Value(in_id_par' +
        'am => Prm.Op_Prm_Rw_Id,'
      
        '                                                in_doc_tp_id => ' +
        'Nvl(:in_doc_tp_id, 0),'
      
        '                                                in_grp_id => Nvl' +
        '(:in_grp_id,0),'
      
        '                                                in_grp_prm => :i' +
        'n_grp_prm) ) Tp_Param_Value,'
      
        '       Ogt.Pkg_Tp_Doc.F_Calculate_Param_Value(in_id_param => Prm' +
        '.Op_Prm_Rw_Id,'
      
        '                                                in_doc_tp_id => ' +
        'Nvl(:in_doc_tp_id, 0),'
      
        '                                                in_grp_id => Nvl' +
        '(:in_grp_id,0),'
      
        '                                                in_grp_prm => :i' +
        'n_grp_prm) Time_Value,'
      
        '       Sum (( Ogt.Pkg_Tp_Doc.F_Calculate_Param_Value(in_id_param' +
        ' => Prm.Op_Prm_Rw_Id,'
      
        '                                                in_doc_tp_id => ' +
        'Nvl(:in_doc_tp_id, 0),'
      
        '                                                in_grp_id => Nvl' +
        '(:in_grp_id,0),'
      
        '                                                in_grp_prm => :i' +
        'n_grp_prm) )) Over () Sum_Time_Value'
      'From   Ogt.V_Tp_Time_Grps_W_Kodprof Grp'
      'Join   Ogt.v_Tp_Time_Op_Prms_Schem Prm'
      'On     Prm.Op_Grp_Op_Lnk_Rw_Id = Grp.Id_Dep_Grp_Op_Lnk'
      'Where  Grp.Ceh_Id Like Nvl(:v_Ceh_Id, '#39'%'#39')'
      
        '       And Nvl(Grp.Prof_Code, '#39'-'#39') Like Nvl(:v_Prof_Code, '#39'%'#39')  ' +
        ' '
      
        '       And Nvl(Grp.Grp_Obr_Rw_Id, 0) Like Nvl(:v_Grp_Obr_Rw_Id, ' +
        #39'%'#39')'
      '       And Prm.Type_Param = '#39'calculate'#39)
    Optimize = False
    Variables.Data = {
      0400000008000000120000003A0056005F004300450048005F00490044000500
      000002000000330000000000180000003A0056005F00500052004F0046005F00
      43004F0044004500050000000600000031393438300000000000200000003A00
      56005F004700520050005F004F00420052005F00520057005F00490044000500
      00000400000031343100000000001C0000003A0056005F004F00500045005200
      5F0052004F0057005F0049004400050000000600000032373430350000000000
      140000003A0056005F004F005000450052005F00490044000500000005000000
      3235303500000000001A0000003A0049004E005F0044004F0043005F00540050
      005F00490044000500000002000000300000000000140000003A0049004E005F
      004700520050005F00490044000500000002000000300000000000160000003A
      0049004E005F004700520050005F00500052004D000500000002000000300000
      000000}
    QBEDefinition.QBEFieldDefs = {
      050000000F000000260000004F0050005F004700520050005F004F0050005F00
      4C004E004B005F00520057005F0049004400010000000000140000004E004100
      4D0045005F0050004100520041004D00010000000000120000004D0049004E00
      5F00560041004C0055004500010000000000120000004D00410058005F005600
      41004C005500450001000000000018000000430048004F00530045004E005F00
      560041004C00550045000100000000001200000056004C005F00430048005F00
      500052004D0001000000000014000000540049004D0045005F00560041004C00
      550045000100000000001800000050004100520041004D005F0052004F005700
      5F00490044000100000000001400000054005900500045005F00500041005200
      41004D000100000000001C000000540050005F0050004100520041004D005F00
      560041004C00550045000100000000001C000000530055004D005F0054004900
      4D0045005F00560041004C005500450001000000000010000000430045004800
      5F0043004F004400450001000000000012000000500052004F0046005F004300
      4F004400450001000000000012000000500052004F0046005F004E0041004D00
      4500010000000000180000004700520050005F004F00420052005F004E004100
      4D004500010000000000}
    Session = DM_Main.Session
    Left = 376
    Top = 344
    object Db_Oper_Group_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object Db_Oper_Group_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object Db_Oper_Group_ParamsOP_GRP_OP_LNK_RW_ID: TIntegerField
      FieldName = 'OP_GRP_OP_LNK_RW_ID'
    end
    object Db_Oper_Group_ParamsMIN_VALUE: TFloatField
      FieldName = 'MIN_VALUE'
    end
    object Db_Oper_Group_ParamsMAX_VALUE: TFloatField
      FieldName = 'MAX_VALUE'
    end
    object Db_Oper_Group_ParamsCHOSEN_VALUE: TFloatField
      FieldName = 'CHOSEN_VALUE'
    end
    object Db_Oper_Group_ParamsVL_CH_PRM: TStringField
      FieldName = 'VL_CH_PRM'
      Size = 1000
    end
    object Db_Oper_Group_ParamsTIME_VALUE: TFloatField
      FieldName = 'TIME_VALUE'
    end
    object Db_Oper_Group_ParamsTP_PARAM_VALUE: TStringField
      FieldName = 'TP_PARAM_VALUE'
      Size = 4000
    end
    object Db_Oper_Group_ParamsSUM_TIME_VALUE: TFloatField
      FieldName = 'SUM_TIME_VALUE'
    end
    object Db_Oper_Group_ParamsCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Oper_Group_ParamsPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object Db_Oper_Group_ParamsPROF_NAME: TStringField
      FieldName = 'PROF_NAME'
      Size = 100
    end
    object Db_Oper_Group_ParamsGRP_OBR_NAME: TStringField
      FieldName = 'GRP_OBR_NAME'
      Size = 250
    end
    object Db_Oper_Group_ParamsPARAM_ROW_ID: TFloatField
      FieldName = 'PARAM_ROW_ID'
    end
  end
  object Data_Oper_Group_Params: TDataSource
    DataSet = MemT_Oper_Group_Params
    Left = 104
    Top = 344
  end
  object PKG_TP_OPERATIONS: TOraclePackage
    PackageName = 'PKG_TP_OPERATIONS'
    Left = 80
    Top = 280
  end
  object Db_Oper_Obor_Groups: TOracleDataSet
    SQL.Strings = (
      'Select t.*'
      'From   Ogt.V_Tp_Time_Grps_W_Kodprof t'
      'Where  t.Ceh_Id Like Nvl(:v_Ceh_Id, '#39'%'#39')'
      '       And Nvl(t.Prof_Code, '#39'-'#39') Like Nvl(:v_Prof_Code, '#39'%'#39')   '
      
        '       And Decode(t.Grp_Obr_Rw_Id, Null, Nvl(:v_Grp_Obr_Rw_Id, '#39 +
        '%'#39'), t.Grp_Obr_Rw_Id)  Like Nvl(:v_Grp_Obr_Rw_Id, '#39'%'#39')')
    Optimize = False
    Variables.Data = {
      0400000003000000120000003A0056005F004300450048005F00490044000500
      00000000000000000000180000003A0056005F00500052004F0046005F004300
      4F0044004500050000000000000000000000200000003A0056005F0047005200
      50005F004F00420052005F00520057005F004900440005000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      050000000E00000014000000470052004F00550050005F004E0041004D004500
      0100000000001400000043004F004500460046005F0046004C00410047000100
      000000000C0000004400450050005F0049004400010000000000100000004700
      52004F00550050005F004900440001000000000022000000490044005F004400
      450050005F004700520050005F004F0050005F004C004E004B00010000000000
      0C0000004300450048005F004900440001000000000010000000430045004800
      5F0043004F00440045000100000000001400000043004F004E00530054005F00
      540049004D00450001000000000012000000500052004F0046005F0043004F00
      4400450001000000000012000000500052004F0046005F004E0041004D004500
      0100000000001A0000004700520050005F004F00420052005F00520057005F00
      49004400010000000000180000004700520050005F004F00420052005F004E00
      41004D0045000100000000001800000043004F004E00530054005F0054004900
      4D0045005F0032000100000000001800000043004F004500460046005F004600
      4C00410047005F003200010000000000}
    Session = DM_Main.Session
    Left = 496
    Top = 112
    object Db_Oper_Obor_GroupsGROUP_ID: TFloatField
      FieldName = 'GROUP_ID'
      Required = True
    end
    object Db_Oper_Obor_GroupsGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Size = 100
    end
    object Db_Oper_Obor_GroupsID_DEP_GRP_OP_LNK: TFloatField
      FieldName = 'ID_DEP_GRP_OP_LNK'
      Required = True
    end
    object Db_Oper_Obor_GroupsCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Oper_Obor_GroupsDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Oper_Obor_GroupsCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Oper_Obor_GroupsCONST_TIME: TFloatField
      FieldName = 'CONST_TIME'
    end
    object Db_Oper_Obor_GroupsPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object Db_Oper_Obor_GroupsPROF_NAME: TStringField
      FieldName = 'PROF_NAME'
      Size = 100
    end
    object Db_Oper_Obor_GroupsGRP_OBR_RW_ID: TIntegerField
      FieldName = 'GRP_OBR_RW_ID'
    end
    object Db_Oper_Obor_GroupsGRP_OBR_NAME: TStringField
      FieldName = 'GRP_OBR_NAME'
      Size = 250
    end
    object Db_Oper_Obor_GroupsCOEFF_FLAG: TStringField
      FieldName = 'COEFF_FLAG'
      Size = 200
    end
    object Db_Oper_Obor_GroupsCONST_TIME_2: TFloatField
      FieldName = 'CONST_TIME_2'
    end
    object Db_Oper_Obor_GroupsCOEFF_FLAG_2: TStringField
      FieldName = 'COEFF_FLAG_2'
      Size = 200
    end
  end
  object Data_Oper_Obor_Groups: TDataSource
    DataSet = MemT_Oper_Obor_Groups
    Left = 104
    Top = 112
  end
  object Driver_Oper_Obor_Groups: TDataSetDriverEh
    KeyFields = 'Id_Full'
    ProviderDataSet = Db_Oper_Obor_Groups
    Left = 368
    Top = 112
  end
  object MemT_Oper_Obor_Groups: TMemTableEh
    Params = <>
    DataDriver = Driver_Oper_Obor_Groups
    AfterScroll = MemT_Oper_Obor_GroupsAfterScroll
    Left = 232
    Top = 112
    object MemT_Oper_Obor_GroupsGROUP_ID: TFloatField
      FieldName = 'GROUP_ID'
      Required = True
    end
    object MemT_Oper_Obor_GroupsGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Size = 100
    end
    object MemT_Oper_Obor_GroupsID_DEP_GRP_OP_LNK: TFloatField
      FieldName = 'ID_DEP_GRP_OP_LNK'
      Required = True
    end
    object MemT_Oper_Obor_GroupsCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object MemT_Oper_Obor_GroupsDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object MemT_Oper_Obor_GroupsCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object MemT_Oper_Obor_GroupsCONST_TIME: TFloatField
      FieldName = 'CONST_TIME'
    end
    object MemT_Oper_Obor_GroupsPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object MemT_Oper_Obor_GroupsPROF_NAME: TStringField
      FieldName = 'PROF_NAME'
      Size = 100
    end
    object MemT_Oper_Obor_GroupsGRP_OBR_RW_ID: TIntegerField
      FieldName = 'GRP_OBR_RW_ID'
    end
    object MemT_Oper_Obor_GroupsGRP_OBR_NAME: TStringField
      FieldName = 'GRP_OBR_NAME'
      Size = 250
    end
    object MemT_Oper_Obor_GroupsCOEFF_FLAG: TStringField
      FieldName = 'COEFF_FLAG'
      Size = 200
    end
    object MemT_Oper_Obor_GroupsCONST_TIME_2: TFloatField
      FieldName = 'CONST_TIME_2'
    end
    object MemT_Oper_Obor_GroupsCOEFF_FLAG_2: TStringField
      FieldName = 'COEFF_FLAG_2'
      Size = 200
    end
  end
  object Driver_Oper_Group_Params: TDataSetDriverEh
    KeyFields = 'Id'
    ProviderDataSet = Db_Oper_Group_Params
    Left = 280
    Top = 344
  end
  object MemT_Oper_Group_Params: TMemTableEh
    MasterSource = Data_Oper_Obor_Groups
    Params = <>
    DataDriver = Driver_Oper_Group_Params
    Left = 192
    Top = 344
    object MemT_Oper_Group_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object MemT_Oper_Group_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object MemT_Oper_Group_ParamsOP_GRP_OP_LNK_RW_ID: TIntegerField
      FieldName = 'OP_GRP_OP_LNK_RW_ID'
    end
    object MemT_Oper_Group_ParamsMIN_VALUE: TFloatField
      FieldName = 'MIN_VALUE'
    end
    object MemT_Oper_Group_ParamsMAX_VALUE: TFloatField
      FieldName = 'MAX_VALUE'
    end
    object MemT_Oper_Group_ParamsCHOSEN_VALUE: TFloatField
      FieldName = 'CHOSEN_VALUE'
    end
    object MemT_Oper_Group_ParamsVL_CH_PRM: TStringField
      FieldName = 'VL_CH_PRM'
      Size = 1000
    end
    object MemT_Oper_Group_ParamsTIME_VALUE: TFloatField
      FieldName = 'TIME_VALUE'
    end
    object MemT_Oper_Group_ParamsTP_PARAM_VALUE: TStringField
      FieldName = 'TP_PARAM_VALUE'
      Size = 4000
    end
    object MemT_Oper_Group_ParamsSUM_TIME_VALUE: TFloatField
      FieldName = 'SUM_TIME_VALUE'
    end
    object MemT_Oper_Group_ParamsCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object MemT_Oper_Group_ParamsPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object MemT_Oper_Group_ParamsPROF_NAME: TStringField
      FieldName = 'PROF_NAME'
      Size = 100
    end
    object MemT_Oper_Group_ParamsGRP_OBR_NAME: TStringField
      FieldName = 'GRP_OBR_NAME'
      Size = 250
    end
    object MemT_Oper_Group_ParamsPARAM_ROW_ID: TFloatField
      FieldName = 'PARAM_ROW_ID'
    end
  end
  object Main_M_T_Pz_Calc: TMainMenu
    Left = 434
    Top = 403
    object Main_M_T_Pz_Calc_Btn_Config: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
      OnClick = Main_M_T_Pz_Calc_Btn_ConfigClick
    end
    object N1: TMenuItem
      Caption = #1060#1086#1088#1084#1091#1083#1099' '#1088#1072#1089#1095#1077#1090#1072
      OnClick = N1Click
    end
    object Main_M_T_Pz_Calc_Btn_Exit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = Main_M_T_Pz_Calc_Btn_ExitClick
    end
  end
  object Db_Trud_For_Detail: TOracleDataSet
    SQL.Strings = (
      'Select Norm.*,'
      '       Prof.Profpoln'
      'From '
      '(Select '
      '       a.M05Id,'
      '       a.Time,'
      '       a.NC,'
      '       a.Nop,'
      '       a.Kodprof,'
      '       a.Razr,'
      '       a.Money,'
      '       a.Kvn'
      'From   Sveta.M05 a '
      
        'Where  a.Kd = Ogt.Asup_Ogt.Kd_Asup_Min(v_det => :v_Det_Num)     ' +
        '  '
      '       And a.Nc In (Select Dep.dep_Code'
      '                            From   STP.V_Dep_Mmbrs t'
      
        '                            Left   Join Stp.v_Dep_Mmbr_Pstns Sta' +
        't'
      
        '                            On     Stat.Id_dep_Mmbr_Pstn = t.dep' +
        '_Mmbr_Pstn_Id'
      '                            Left   Join Stp.v_Deps Dep'
      '                            On     Dep.id_dep = t.Dep_Id'
      '                            Where  (t.User_Id = User'
      '                                   And t.dep_Mmbr_Pstn_Id = 202)'
      
        '                                   Or Stp.Pkg_User.F_Check_Progr' +
        'am_Param( In_Object_Id => 8784,'
      
        '                                                                ' +
        ' In_Parametr => '#39'ADMIN'#39','
      
        '                                                                ' +
        ' In_Value => '#39'1'#39' ) = 1 )'
      'Union All'
      ''
      'Select 0,'
      '       a.Time,'
      '       a.NC,'
      '       a.Nop,'
      '       a.Kodprof,'
      '       a.Razr,'
      '       a.Money,'
      '       a.Kvn'
      'From   Sveta.M05_Otk a'
      'Where  a.Kd = Ogt.Asup_Ogt.Kd_Asup_Min(v_det => :v_Det_Num)'
      '       --And a.Proc in (0)   '
      '       And a.Nc In (Select Dep.dep_Code'
      '                            From   STP.V_Dep_Mmbrs t'
      
        '                            Left   Join Stp.v_Dep_Mmbr_Pstns Sta' +
        't'
      
        '                            On     Stat.Id_dep_Mmbr_Pstn = t.dep' +
        '_Mmbr_Pstn_Id'
      '                            Left   Join Stp.v_Deps Dep'
      '                            On     Dep.id_dep = t.Dep_Id'
      '                            Where  (t.User_Id = User'
      '                                   And t.dep_Mmbr_Pstn_Id = 202)'
      
        '                                   Or  Stp.Pkg_User.F_Check_Prog' +
        'ram_Param( In_Object_Id => 8784,'
      
        '                                                                ' +
        ' In_Parametr => '#39'ADMIN'#39','
      
        '                                                                ' +
        ' In_Value => '#39'1'#39' ) = 1 )) Norm'
      'Left   Join Sveta.M26 Prof'
      'On     Prof.Kodprof = Norm.Kodprof'
      'Where  Norm.M05Id like Nvl(:v_Id_Using_Norm, '#39'%'#39')'
      'Order  By Norm.Nop, Norm.Kodprof, Norm.Razr')
    Optimize = False
    Variables.Data = {
      0400000002000000140000003A0056005F004400450054005F004E0055004D00
      050000000000000000000000200000003A0056005F00490044005F0055005300
      49004E0047005F004E004F0052004D00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000090000000E0000004B004F004400500052004F004600010000000000
      08000000520041005A005200010000000000060000004B0056004E0001000000
      00000A0000004D004F004E004500590001000000000010000000500052004F00
      460050004F004C004E0001000000000008000000540049004D00450001000000
      0000040000004E004300010000000000060000004E004F005000010000000000
      0A0000004D003000350049004400010000000000}
    Session = DM_Main.Session
    Left = 1183
    Top = 577
    object Db_Trud_For_DetailTIME: TFloatField
      FieldName = 'TIME'
    end
    object Db_Trud_For_DetailNC: TStringField
      FieldName = 'NC'
      Size = 2
    end
    object Db_Trud_For_DetailKODPROF: TStringField
      FieldName = 'KODPROF'
      Size = 5
    end
    object Db_Trud_For_DetailRAZR: TIntegerField
      FieldName = 'RAZR'
    end
    object Db_Trud_For_DetailMONEY: TFloatField
      FieldName = 'MONEY'
    end
    object Db_Trud_For_DetailKVN: TIntegerField
      FieldName = 'KVN'
    end
    object Db_Trud_For_DetailPROFPOLN: TStringField
      FieldName = 'PROFPOLN'
      Size = 150
    end
    object Db_Trud_For_DetailNOP: TStringField
      FieldName = 'NOP'
      Size = 4
    end
    object Db_Trud_For_DetailM05ID: TFloatField
      FieldName = 'M05ID'
    end
  end
  object Driver_Trud_For_Detail: TDataSetDriverEh
    ProviderDataSet = Db_Trud_For_Detail
    Left = 1112
    Top = 576
  end
  object MemT_Trud_For_Detail: TMemTableEh
    Params = <>
    DataDriver = Driver_Trud_For_Detail
    Left = 1032
    Top = 576
    object MemT_Trud_For_DetailTIME: TFloatField
      FieldName = 'TIME'
    end
    object MemT_Trud_For_DetailNC: TStringField
      FieldName = 'NC'
      Size = 2
    end
    object MemT_Trud_For_DetailKODPROF: TStringField
      FieldName = 'KODPROF'
      Size = 5
    end
    object MemT_Trud_For_DetailRAZR: TIntegerField
      FieldName = 'RAZR'
    end
    object MemT_Trud_For_DetailMONEY: TFloatField
      FieldName = 'MONEY'
    end
    object MemT_Trud_For_DetailKVN: TIntegerField
      FieldName = 'KVN'
    end
    object MemT_Trud_For_DetailFLAG_TP: TFloatField
      FieldName = 'FLAG_TP'
    end
    object MemT_Trud_For_DetailPROFPOLN: TStringField
      FieldName = 'PROFPOLN'
      Size = 150
    end
    object MemT_Trud_For_DetailNOP: TStringField
      FieldName = 'NOP'
      Size = 4
    end
    object MemT_Trud_For_DetailM05ID: TFloatField
      FieldName = 'M05ID'
    end
  end
  object Data_Trud_For_Detail: TDataSource
    DataSet = MemT_Trud_For_Detail
    Left = 935
    Top = 576
  end
  object Pop_M_Trud_For_Detail: TPopupMenu
    Left = 831
    Top = 511
    object Pop_M_Trud_For_Detail_Btn_Chose_Norm: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1090#1088#1091#1076#1086#1077#1084#1082#1086#1089#1090#1100
      OnClick = Grid_Detail_TrudDblClick
    end
    object Pop_M_Trud_For_Detail_Btn_Print: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
    end
    object Pop_M_Trud_For_Detail_Btn_Export: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090
    end
  end
  object Save_Grid: TSaveDialog
    Filter = 
      #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' (*.txt)|.txt|'#1058#1077#1082#1089#1090#1086#1074#1086#1081' '#1092#1072#1081#1083' '#1089' '#1088#1072#1079#1076#1077#1083#1080#1090#1077#1083#1077#1084' '#1090#1080#1087#1072' '#8216 +
      ';'#8217' (*.txt)|.cvs|'#1042#1077#1073'-'#1089#1090#1088#1072#1085#1080#1094#1072' HTML|.htm|'#1044#1086#1082#1091#1084#1077#1085#1090' '#1074' '#1092#1086#1088#1084#1072#1090#1077' Excel|' +
      '.xlsx'
    Left = 664
    Top = 448
  end
  object Print_Grid: TPrintDBGridEh
    Options = [pghFitGridToPageWidth, pghColored, pghRowAutoStretch, pghFitingByColWidths]
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -13
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = [fsBold]
    PageHeader.LineType = pcltDoubleLine
    Units = MM
    Left = 746
    Top = 446
  end
  object Data_Tp_Time: TDataSource
    DataSet = MemT_Tp_Time
    Left = 840
    Top = 333
  end
  object MemT_Oper_Per_Time: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Oper_Per_Time
    Left = 96
    Top = 613
    object MemT_Oper_Per_TimeID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Oper_Per_TimeRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Oper_Per_TimeRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Oper_Per_TimeID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
      Required = True
    end
    object MemT_Oper_Per_TimeDOK_IN: TFloatField
      FieldName = 'DOK_IN'
      Required = True
    end
    object MemT_Oper_Per_TimeDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Oper_Per_TimeNOM_PER: TIntegerField
      FieldName = 'NOM_PER'
      Required = True
    end
    object MemT_Oper_Per_TimePER: TStringField
      FieldName = 'PER'
      Required = True
      Size = 1500
    end
    object MemT_Oper_Per_TimeRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object MemT_Oper_Per_TimePRIM: TStringField
      FieldName = 'PRIM'
      Size = 500
    end
    object MemT_Oper_Per_TimeTT_PER: TStringField
      FieldName = 'TT_PER'
      Size = 500
    end
    object MemT_Oper_Per_TimePER_TIME_PZ: TFloatField
      FieldName = 'PER_TIME_PZ'
    end
    object MemT_Oper_Per_TimeGAS: TStringField
      FieldName = 'GAS'
      Size = 100
    end
    object MemT_Oper_Per_TimeSPEED: TStringField
      FieldName = 'SPEED'
      Size = 30
    end
    object MemT_Oper_Per_TimeT_GAS: TStringField
      FieldName = 'T_GAS'
      Size = 100
    end
    object MemT_Oper_Per_TimeRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object MemT_Oper_Per_TimeTIME: TFloatField
      FieldName = 'TIME'
    end
    object MemT_Oper_Per_TimeHARDNESS: TStringField
      FieldName = 'HARDNESS'
      Size = 100
    end
    object MemT_Oper_Per_TimeUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object MemT_Oper_Per_TimeDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object MemT_Oper_Per_TimeUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object MemT_Oper_Per_TimeDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
    end
  end
  object Data_Oper_Per_Time: TDataSource
    DataSet = MemT_Oper_Per_Time
    Left = 33
    Top = 685
  end
  object Driver_Oper_Per_Time: TDataSetDriverEh
    ProviderDataSet = Db_Oper_Per_Time
    Left = 161
    Top = 685
  end
  object Db_Oper_Per_Time: TOracleDataSet
    SQL.Strings = (
      'Select t.*'
      'From   Ogt.v_Tp_Ok_Per_Dlp t'
      'Where  t.Id_Row_Oper = :v_Oper_Row_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0056005F004F005000450052005F0052004F00
      57005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000016000000040000004900440001000000000016000000490044005F00
      52004F0057005F004F005000450052000100000000000C00000044004F004B00
      5F0049004E000100000000000E0000004E004F004D005F005000450052000100
      00000000060000005000450052000100000000000C000000520041005A005200
      41004200010000000000080000005000520049004D000100000000000C000000
      540054005F00500045005200010000000000160000005000450052005F005400
      49004D0045005F0050005A000100000000000600000047004100530001000000
      00000A000000530050004500450044000100000000000A00000054005F004700
      4100530001000000000016000000520041005A005200410042005F004E004100
      4D00450001000000000008000000540049004D00450001000000000010000000
      48004100520044004E004500530053000100000000001A000000550053004500
      52005F00490044005F0049004E00530052005400010000000000140000004400
      4100540045005F0049004E005300520054000100000000001800000055005300
      450052005F00490044005F0043004F00520052000100000000000E0000004400
      41005400410049005A004D000100000000000E000000520057005F0056004500
      520053000100000000001C000000520057005F00490044005F004F004C004400
      5F0056004500520053000100000000001C00000044004F0043005F0054005000
      5F0056004500520053005F0049004400010000000000}
    Session = DM_Main.Session
    Left = 241
    Top = 645
    object Db_Oper_Per_TimeID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Oper_Per_TimeRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Oper_Per_TimeRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Oper_Per_TimeID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
      Required = True
    end
    object Db_Oper_Per_TimeDOK_IN: TFloatField
      FieldName = 'DOK_IN'
      Required = True
    end
    object Db_Oper_Per_TimeDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Oper_Per_TimeNOM_PER: TIntegerField
      FieldName = 'NOM_PER'
      Required = True
    end
    object Db_Oper_Per_TimePER: TStringField
      FieldName = 'PER'
      Required = True
      Size = 1500
    end
    object Db_Oper_Per_TimeRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object Db_Oper_Per_TimePRIM: TStringField
      FieldName = 'PRIM'
      Size = 500
    end
    object Db_Oper_Per_TimeTT_PER: TStringField
      FieldName = 'TT_PER'
      Size = 500
    end
    object Db_Oper_Per_TimePER_TIME_PZ: TFloatField
      FieldName = 'PER_TIME_PZ'
    end
    object Db_Oper_Per_TimeGAS: TStringField
      FieldName = 'GAS'
      Size = 100
    end
    object Db_Oper_Per_TimeSPEED: TStringField
      FieldName = 'SPEED'
      Size = 30
    end
    object Db_Oper_Per_TimeT_GAS: TStringField
      FieldName = 'T_GAS'
      Size = 100
    end
    object Db_Oper_Per_TimeRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Oper_Per_TimeTIME: TFloatField
      FieldName = 'TIME'
    end
    object Db_Oper_Per_TimeHARDNESS: TStringField
      FieldName = 'HARDNESS'
      Size = 100
    end
    object Db_Oper_Per_TimeUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object Db_Oper_Per_TimeDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object Db_Oper_Per_TimeUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object Db_Oper_Per_TimeDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
    end
  end
  object MemT_Tp_Time: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    Left = 721
    Top = 304
  end
end
