object Frame_TechProc: TFrame_TechProc
  Left = 0
  Top = 0
  Width = 1134
  Height = 717
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'clWindowText'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object SplitView1: TSplitView
    Left = 0
    Top = 28
    Width = 70
    Height = 670
    OpenedWidth = 70
    Placement = svpLeft
    TabOrder = 0
    object Grid_Doc_Parts: TDBGridEh
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 64
      Height = 664
      Align = alClient
      AllowedSelections = [gstRectangle, gstColumns, gstAll]
      AutoFitColWidths = True
      DataSource = Dm_Tech_Proc.Data_Doc_Parts
      DynProps = <>
      Flat = True
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbNextEh]
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghRecordMoving, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      PopupMenu = Pop_M_Doc_Parts
      TabOrder = 0
      VertScrollBar.VisibleMode = sbNeverShowEh
      OnExit = Grid_Doc_PartsExit
      OnGetCellParams = Grid_Doc_PartsGetCellParams
      OnMouseUp = Grid_OpersMouseUp
      OnMoveRecords = Grid_OpersMoveRecords
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ROW_NUM'
          Footers = <>
          Visible = False
          Width = 20
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CEH_CODE'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1062#1077#1093
          Width = 30
          OnUpdateData = DBGridEh3Columns0UpdateData
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EDIT'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CEH_ID'
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
          FieldName = 'ID_DOC_TP'
          Footers = <>
          Visible = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel_Part_Items: TPanel
    Left = 90
    Top = 28
    Width = 1044
    Height = 670
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel_Part_Items'
    Color = clMenu
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 0
      Top = 424
      Width = 1044
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = 1
      ExplicitTop = 288
      ExplicitWidth = 1090
    end
    object Panel_Oper_Items: TPanel
      Left = 0
      Top = 0
      Width = 1044
      Height = 424
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel_Oper_Items'
      ShowCaption = False
      TabOrder = 0
      object Splitter3: TSplitter
        Left = 789
        Top = 0
        Width = 5
        Height = 424
        Align = alRight
        ExplicitLeft = 914
        ExplicitTop = 3
        ExplicitHeight = 422
      end
      object Splitter4: TSplitter
        Left = 513
        Top = 0
        Width = 5
        Height = 424
        ExplicitLeft = 431
      end
      object Panel_Oper_Time: TPanel
        Left = 794
        Top = 0
        Width = 250
        Height = 424
        Align = alRight
        BevelKind = bkTile
        BevelOuter = bvNone
        Caption = 'Panel_Oper_Time'
        ShowCaption = False
        TabOrder = 0
        object GB_NORMA_TIME: TGroupBox
          Left = 0
          Top = 0
          Width = 246
          Height = 420
          Align = alClient
          Caption = #1053'. '#1074#1088#1077#1084#1077#1085#1080' '#1076#1083#1103' '#1086#1087#1077#1088#1072#1094#1080#1080
          TabOrder = 0
          DesignSize = (
            246
            420)
          object Btn_NormTimeHist: TButton
            Left = 4
            Top = 351
            Width = 126
            Height = 25
            Anchors = [akLeft, akRight, akBottom]
            Caption = #1048#1079#1084'-'#1103' '#1085#1086#1088#1084' '#1074#1088#1084'.'
            ImageIndex = 27
            Images = Form_Tech_Proc_Main.ImageList1
            TabOrder = 0
            OnClick = Btn_NormTimeHistClick
          end
          object Btn_NormTimePrams: TButton
            Left = 5
            Top = 382
            Width = 239
            Height = 25
            Anchors = [akLeft, akRight, akBottom]
            Caption = #1057#1087#1086#1089#1086#1073' '#1091#1089#1090'., '#1090#1077#1093#1085'. '#1086#1089#1085#1072#1089#1090#1082#1072
            TabOrder = 1
            OnClick = Btn_NormTimePramsClick
          end
          object Grid_Time_Norms: TDBVertGridEh
            Left = 5
            Top = 16
            Width = 236
            Height = 264
            Align = alCustom
            AllowedSelections = []
            Anchors = [akLeft, akTop, akRight, akBottom]
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
            TabOrder = 2
            LabelColWidth = 150
            OnAdvDrawDataCell = Grid_Time_NormsAdvDrawDataCell
            OnGetCellParams = Grid_Time_NormsGetCellParams
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
                OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
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
                OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
              end
              item
                DisplayFormat = '#,##,0.00000'
                DynProps = <>
                EditButtons = <>
                FieldName = 'OPER_TIME'
                RowLabel.Caption = #1058' '#1086#1087'., '#1095
                CategoryName = 'Time_Norm'
                OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
              end
              item
                DisplayFormat = '#,##,0.00000'
                DynProps = <>
                EditButtons = <>
                FieldName = 'OTHER_TIME'
                RowLabel.Caption = #1058' '#1086#1073#1089'.+'#1058' '#1086#1090#1076'., '#1095
                CategoryName = 'Time_Norm'
                OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
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
                OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'ALL_OPER_TIME_PERC'
                RowLabel.Caption = '%  '#1086#1090' '#1091#1090#1074'. '#1085#1086#1088#1084
                CategoryName = 'Time_Norm'
                OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'UNIT_COUNT'
                RowLabel.Caption = #1050#1086#1083'-'#1074#1086' '#1076#1077#1090#1072#1083#1077#1081
                CategoryName = 'Time_Norm'
                OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
              end
              item
                DynProps = <>
                EditButtons = <
                  item
                    ShortCut = 0
                    Style = ebsEllipsisEh
                    OnClick = Grid_Time_NormsRows5EditButtons0Click
                  end>
                FieldName = 'PROF_CODE'
                RowLabel.Caption = #1050#1086#1076' '#1087#1088#1086#1092'.'
                CategoryName = 'Prof'
                OnUpdateData = Grid_Time_NormsProfRowsUpdateData
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROF_CLASS'
                ReadOnly = True
                RowLabel.Caption = #1056#1072#1079#1088#1103#1076
                CategoryName = 'Prof'
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROF_CTN'
                ReadOnly = True
                RowLabel.Caption = #1050#1086#1076' '#1091#1089#1083#1086#1074#1080#1081' '#1090#1088#1091#1076#1072
                CategoryName = 'Prof'
              end
              item
                DisplayFormat = '#,#0.00'
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROF_MONEY'
                ReadOnly = True
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
                OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
              end>
          end
          object Btn_ChronCards: TButton
            Left = 136
            Top = 351
            Width = 107
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = #1061#1088#1086#1085'. '#1082#1072#1088#1090#1099
            ImageIndex = 58
            Images = Form_Tech_Proc_Main.ImageList1
            TabOrder = 3
            OnClick = Btn_ChronCardsClick
          end
          object Btn_DeleteNorm: TButton
            Left = 4
            Top = 286
            Width = 239
            Height = 25
            Anchors = [akLeft, akRight, akBottom]
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1086#1088#1084#1099
            ImageIndex = 4
            Images = Form_Tech_Proc_Main.ImageList1
            TabOrder = 4
            OnClick = Btn_DeleteNormClick
          end
        end
      end
      object Panel_Oper_Prms: TPanel
        Left = 518
        Top = 0
        Width = 271
        Height = 424
        Align = alClient
        BevelKind = bkTile
        BevelOuter = bvNone
        Caption = 'Panel_Oper_Prms'
        ShowCaption = False
        TabOrder = 1
        object GB_OPER_PARAM: TGroupBox
          Left = 0
          Top = 0
          Width = 267
          Height = 354
          Align = alClient
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1087#1077#1088#1072#1094#1080#1080
          TabOrder = 0
          DesignSize = (
            267
            354)
          object E_OBOR: TDBEditEh
            Left = 8
            Top = 33
            Width = 251
            Height = 23
            Hint = 
              #1063#1090#1086#1073#1099' '#1091#1082#1072#1079#1072#1090#1100' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077', '#1074#1085#1077#1089#1080#1090#1077' '#1087#1086#1083#1085#1086#1077', '#1083#1080#1073#1086' '#1095#1072#1089#1090#1100', '#1085#1072#1080#1084#1077#1085#1086#1074 +
              #1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103'.'
            Anchors = [akLeft, akTop, akRight]
            ControlLabel.Width = 83
            ControlLabel.Height = 15
            ControlLabel.Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
            ControlLabel.Visible = True
            Ctl3D = True
            DataField = 'OBOR_NAME'
            DataSource = Dm_Tech_Proc.Data_Opers
            DynProps = <>
            EditButtons = <
              item
                Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
                Style = ebsEllipsisEh
                OnClick = E_OBOREditButtons0Click
              end>
            EmptyDataInfo.Text = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077' '#1085#1077' '#1091#1082#1072#1079#1072#1085#1086'...'
            EmptyDataInfo.Alignment = taLeftJustify
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Visible = True
            OnExit = E_OBORExit
            OnKeyUp = E_OBORKeyUp
          end
          object E_DET_MAT: TDBEditEh
            Left = 8
            Top = 73
            Width = 251
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            ControlLabel.Width = 114
            ControlLabel.Height = 15
            ControlLabel.Caption = #1052#1072#1090#1077#1088#1080#1072#1083' '#1079#1072#1075#1086#1090#1086#1074#1082#1080
            ControlLabel.Visible = True
            DataField = 'MAT_NAME'
            DataSource = Dm_Tech_Proc.Data_Opers
            DynProps = <>
            EditButtons = <
              item
                Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
                ShortCut = 0
                Style = ebsEllipsisEh
                OnClick = E_DET_MATEditButtons0Click
              end>
            EmptyDataInfo.Text = #1052#1072#1090#1077#1088#1080#1072#1083' '#1079#1072#1075#1086#1090#1086#1074#1082#1080' '#1085#1077' '#1091#1082#1072#1079#1072#1085'...'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Visible = True
            OnExit = E_DET_MATExit
            OnKeyUp = E_DET_MATKeyUp
          end
          object Grid_Oper_Params: TDBGridEh
            Left = 8
            Top = 101
            Width = 252
            Height = 245
            AllowedOperations = [alopUpdateEh]
            Anchors = [akLeft, akTop, akRight, akBottom]
            AutoFitColWidths = True
            DataSource = Dm_Tech_Proc.Data_Oper_Params
            DynProps = <>
            Flat = True
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
            RowHeight = 2
            RowLines = 1
            SearchPanel.Enabled = True
            STFilter.Local = True
            STFilter.Location = stflInTitleFilterEh
            STFilter.Visible = True
            TabOrder = 2
            OnGetCellParams = Grid_Oper_ParamsGetCellParams
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ID_ROW_TP_OP_PRM'
                Footers = <>
                Visible = False
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PARAM_ROW_ID'
                Footers = <>
                Visible = False
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'OPER_ROW_ID'
                Footers = <>
                Visible = False
              end
              item
                CellButtons = <>
                Color = clMenu
                DynProps = <>
                EditButtons = <>
                FieldName = 'NAME_PARAM'
                Footers = <>
                ReadOnly = True
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 195
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <
                  item
                    DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
                    DropDownFormParams.SaveFormSize = False
                    ShortCut = 0
                  end>
                FieldName = 'PARAM_VALUE'
                Footers = <>
                Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
                Width = 200
                OnCloseDropDownForm = Grid_Oper_ParamsColumns1CloseDropDownForm
                OnOpenDropDownForm = Grid_Oper_ParamsColumns1OpenDropDownForm
                OnUpdateData = Grid_Oper_ParamsColumns2UpdateData
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PARAM_CH_ROW_ID'
                Footers = <>
                Visible = False
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object GB_TARA: TGroupBox
          Left = 0
          Top = 354
          Width = 267
          Height = 66
          Align = alBottom
          Caption = #1058#1072#1088#1072
          TabOrder = 1
          DesignSize = (
            267
            66)
          object E_TARA_NUM: TDBEditEh
            Left = 8
            Top = 33
            Width = 193
            Height = 23
            ControlLabel.Width = 77
            ControlLabel.Height = 15
            ControlLabel.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077
            ControlLabel.Visible = True
            DataField = 'TARA_NUM'
            DataSource = Dm_Tech_Proc.Data_Opers
            DynProps = <>
            EditButtons = <
              item
                Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1072#1088#1099
                ShortCut = 0
                Style = ebsEllipsisEh
                OnClick = E_TARA_NUMEditButtons0Click
              end
              item
                Hint = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1072#1088#1091' '#1076#1083#1103' '#1074#1089#1077#1093' '#1086#1087#1077#1088#1072#1094#1080#1081
                Style = ebsPlusEh
                OnClick = E_TARA_NUMEditButtons1Click
              end>
            EmptyDataInfo.Text = #1058#1072#1088#1072' '#1085#1077' '#1091#1082#1072#1079#1072#1085#1072'...'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Visible = True
            OnExit = E_TARA_NUMExit
            OnKeyUp = E_TARA_NUMKeyUp
          end
          object E_TARA_NAME: TDBEditEh
            Left = 207
            Top = 33
            Width = 53
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            ControlLabel.Width = 87
            ControlLabel.Height = 15
            ControlLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            ControlLabel.Visible = True
            DataField = 'TARA_NAME'
            DataSource = Dm_Tech_Proc.Data_Opers
            DynProps = <>
            EditButtons = <>
            EmptyDataInfo.Text = #1058#1072#1088#1072' '#1085#1077' '#1091#1082#1072#1079#1072#1085#1072'...'
            ReadOnly = True
            TabOrder = 1
            Visible = True
          end
        end
      end
      object Panel_Opers: TPanel
        Left = 0
        Top = 0
        Width = 513
        Height = 424
        Align = alLeft
        BevelKind = bkTile
        BevelOuter = bvNone
        Caption = 'Panel_Opers'
        ShowCaption = False
        TabOrder = 2
        DesignSize = (
          509
          420)
        object Grid_Opers: TDBGridEh
          Left = 0
          Top = 0
          Width = 509
          Height = 217
          PopupMenuParams.UseIndicatorMenu = True
          Align = alTop
          AllowedSelections = [gstRectangle, gstColumns, gstAll]
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoFitColWidths = True
          DynProps = <>
          EvenRowColor = clMenu
          Flat = True
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
          EmptyDataInfo.Active = True
          EmptyDataInfo.Text = #1053#1077#1090' '#1086#1087#1077#1088#1072#1094#1080#1081' '#1087#1086' '#1076#1072#1085#1085#1086#1084#1091' '#1094#1077#1093#1091
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghRecordMoving, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
          PopupMenu = Pop_M_Opers
          SearchPanel.Enabled = True
          TabOrder = 0
          OnExit = Grid_OpersExit
          OnGetCellParams = Grid_OpersGetCellParams
          OnKeyDown = Grid_OpersKeyDown
          OnMouseUp = Grid_OpersMouseUp
          OnMoveRecords = Grid_OpersMoveRecords
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'PART_ROW_NUM'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CEH_ID'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DOC_TP_VERS_ID'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'RW_STATUS'
              Footers = <>
              Visible = False
              Width = 90
            end
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
              FieldName = 'ID_PART_TP'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_NUMBER'
              Footers = <>
              ReadOnly = True
              Title.Caption = #8470' '#1086#1087#1077#1088'.'
              Width = 55
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <
                item
                  ShortCut = 0
                  Style = ebsEllipsisEh
                  OnClick = DBGrid_OpersColumns7EditButtons0Click
                end>
              FieldName = 'OPER_NAME'
              Footers = <>
              Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1103
              Width = 254
              OnUpdateData = DBGridEh1Columns0UpdateData
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'USER_NAME'
              Footers = <>
              Title.Caption = #1040#1074#1090#1086#1088
              Width = 120
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DATAIZM'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'EDIZM'
              Footers = <>
              Visible = False
              Width = 67
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object E_IOT: TDBEditEh
          Left = 4
          Top = 238
          Width = 185
          Height = 23
          Anchors = [akLeft, akBottom]
          ControlLabel.Width = 128
          ControlLabel.Height = 15
          ControlLabel.Caption = #1044#1086#1087'. '#1080#1085#1089#1090#1088#1091#1082#1094#1080#1080' '#1087#1086' '#1054#1058
          ControlLabel.Visible = True
          DataField = 'IOT'
          DataSource = Dm_Tech_Proc.Data_Opers
          DynProps = <>
          EditButtons = <
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_MemoText'
              DropDownFormParams.SaveFormSize = False
            end>
          EmptyDataInfo.Text = #1044#1086#1087'. '#1080#1085#1089#1090#1088#1091#1082#1094#1080#1080' '#1087#1086' '#1054#1058' '#1085#1077' '#1091#1082#1072#1079#1072#1085#1099'...'
          TabOrder = 1
          Visible = True
          OnCloseDropDownForm = EditControl_CloseDropDownForm
          OnOpenDropDownForm = EditControl_OpenDropDownForm
        end
        object E_OPER_PRIM: TDBEditEh
          Left = 4
          Top = 328
          Width = 493
          Height = 23
          Anchors = [akLeft, akRight, akBottom]
          ControlLabel.Width = 73
          ControlLabel.Height = 15
          ControlLabel.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          ControlLabel.Visible = True
          DataField = 'PRIM'
          DataSource = Dm_Tech_Proc.Data_Opers
          DynProps = <>
          EditButtons = <
            item
              Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1088#1080#1084#1077#1095#1072#1085#1080#1081' '#1082' '#1086#1087#1077#1088#1072#1094#1080#1103#1084
              ShortCut = 0
              Style = ebsEllipsisEh
              OnClick = E_OPER_PRIMEditButtons0Click
            end
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_MemoText'
            end>
          EmptyDataInfo.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1081' '#1085#1077#1090'...'
          EmptyDataInfo.Alignment = taLeftJustify
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Visible = True
          OnCloseDropDownForm = EditControl_CloseDropDownForm
          OnOpenDropDownForm = EditControl_OpenDropDownForm
        end
        object E_Oper_TT: TDBEditEh
          Left = 195
          Top = 238
          Width = 302
          Height = 23
          Anchors = [akLeft, akRight, akBottom]
          ControlLabel.Width = 177
          ControlLabel.Height = 15
          ControlLabel.Caption = #1054#1073#1097#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1082' '#1086#1087#1077#1088#1072#1094#1080#1080
          ControlLabel.Visible = True
          DataField = 'OPER_TT'
          DataSource = Dm_Tech_Proc.Data_Opers
          DynProps = <>
          EditButtons = <
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_MemoText'
            end>
          EmptyDataInfo.Text = #1054#1073#1097#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1082' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1085#1077' '#1091#1082#1072#1079#1072#1085#1099'...'
          TabOrder = 3
          Visible = True
          OnCloseDropDownForm = EditControl_CloseDropDownForm
          OnOpenDropDownForm = EditControl_OpenDropDownForm
        end
        object E_TT: TDBEditEh
          Left = 4
          Top = 284
          Width = 493
          Height = 23
          Anchors = [akLeft, akRight, akBottom]
          ControlLabel.Width = 209
          ControlLabel.Height = 15
          ControlLabel.Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1082' '#1086#1087#1077#1088#1072#1094#1080#1080
          ControlLabel.Visible = True
          DataField = 'TT'
          DataSource = Dm_Tech_Proc.Data_Opers
          DynProps = <>
          EditButtons = <
            item
              Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1093' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1082' '#1086#1087#1077#1088#1072#1094#1080#1080
              ShortCut = 0
              Style = ebsEllipsisEh
              OnClick = E_TTEditButtons0Click
            end
            item
              Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1058#1058' '#1076#1083#1103' '#1074#1089#1077#1093' '#1086#1087#1077#1088#1072#1094#1080#1081
              ShortCut = 0
              Style = ebsPlusEh
              OnClick = E_TTEditButtons1Click
            end
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_MemoText'
              DropDownFormParams.PassParams = pspCustomValuesEh
            end>
          EmptyDataInfo.Text = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1082' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1085#1077' '#1091#1082#1072#1079#1072#1085#1085#1099'...'
          EmptyDataInfo.Alignment = taLeftJustify
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Visible = True
          OnCloseDropDownForm = EditControl_CloseDropDownForm
          OnOpenDropDownForm = EditControl_OpenDropDownForm
        end
        object E_TechProcSomeInformation: TDBEditEh
          Left = 4
          Top = 374
          Width = 493
          Height = 23
          Anchors = [akLeft, akRight, akBottom]
          ControlLabel.Width = 191
          ControlLabel.Height = 15
          ControlLabel.Caption = #1054#1073#1097#1072#1103' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1082' '#1058#1077#1093#1087#1088#1086#1094#1077#1089#1089#1091
          ControlLabel.Visible = True
          DataField = 'Some_Information'
          DynProps = <>
          EditButtons = <
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_MemoText'
            end>
          EmptyDataInfo.Text = #1054#1073#1097#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1082' '#1090#1077#1093#1087#1088#1086#1094#1077#1089#1089#1091' '#1085#1077' '#1091#1082#1072#1079#1072#1085#1099'...'
          TabOrder = 5
          Visible = True
          OnCloseDropDownForm = EditControl_CloseDropDownForm
          OnOpenDropDownForm = EditControl_OpenDropDownForm
        end
      end
    end
    object Panel_Oper_Per_Items: TPanel
      Left = 0
      Top = 429
      Width = 1044
      Height = 241
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel_Oper_Per_Items'
      ShowCaption = False
      TabOrder = 1
      object Splitter5: TSplitter
        Left = 639
        Top = 0
        Width = 5
        Height = 241
        Align = alRight
        ExplicitLeft = 901
        ExplicitTop = 1
        ExplicitHeight = 291
      end
      object Panel_Op_Per_Prms: TPanel
        Left = 644
        Top = 0
        Width = 400
        Height = 241
        Align = alRight
        BevelKind = bkTile
        BevelOuter = bvNone
        Caption = 'Panel_Op_Per_Prms'
        ShowCaption = False
        TabOrder = 0
        object GB_PER_PARAM: TGroupBox
          Left = 0
          Top = 0
          Width = 396
          Height = 237
          Align = alClient
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1087#1077#1088#1077#1093#1086#1076#1072
          TabOrder = 0
          object Grid_Per_Params: TDBGridEh
            AlignWithMargins = True
            Left = 5
            Top = 20
            Width = 386
            Height = 212
            Align = alClient
            AllowedOperations = [alopUpdateEh]
            AutoFitColWidths = True
            DataSource = Dm_Tech_Proc.Data_Per_Params
            DynProps = <>
            Flat = True
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
            RowHeight = 2
            RowLines = 1
            SearchPanel.Enabled = True
            STFilter.Local = True
            STFilter.Location = stflInTitleFilterEh
            STFilter.Visible = True
            TabOrder = 0
            OnGetCellParams = Grid_Per_ParamsGetCellParams
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ID_ROW_TP_PR_PRM'
                Footers = <>
                Visible = False
              end
              item
                CellButtons = <>
                Color = clMenu
                DynProps = <>
                EditButtons = <>
                FieldName = 'NAME_PARAM'
                Footers = <>
                ReadOnly = True
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 221
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <
                  item
                    DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
                    DropDownFormParams.SaveFormSize = False
                    ShortCut = 0
                  end>
                FieldName = 'PARAM_VALUE'
                Footers = <>
                Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
                Width = 200
                OnCloseDropDownForm = Grid_Oper_ParamsColumns1CloseDropDownForm
                OnOpenDropDownForm = Grid_Oper_ParamsColumns1OpenDropDownForm
                OnUpdateData = Grid_Oper_ParamsColumns2UpdateData
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PARAM_CH_ROW_ID'
                Footers = <>
                Visible = False
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object Panel_Op_Pers: TPanel
        Left = 0
        Top = 0
        Width = 639
        Height = 241
        Align = alClient
        BevelKind = bkTile
        BevelOuter = bvNone
        Caption = 'Panel_Op_Pers'
        ShowCaption = False
        TabOrder = 1
        DesignSize = (
          635
          237)
        object Grid_Oper_Per: TDBGridEh
          Left = 0
          Top = 0
          Width = 635
          Height = 169
          PopupMenuParams.UseIndicatorMenu = True
          Align = alTop
          AllowedSelections = [gstRectangle, gstAll]
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoFitColWidths = True
          DynProps = <>
          EditActions = [geaCopyEh, geaPasteEh, geaSelectAllEh]
          Flat = True
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
          EmptyDataInfo.Active = True
          EmptyDataInfo.Text = #1053#1077#1090' '#1087#1077#1088#1077#1093#1086#1076#1086#1074
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghRecordMoving, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
          ParentShowHint = False
          PopupMenu = Pop_M_Oper_Per
          RowHeight = 2
          RowLines = 2
          SearchPanel.Enabled = True
          ShowHint = True
          EditButtonsShowOptions = [sebShowOnlyForCurCellEh, sebShowOnlyWhenGridActiveEh]
          STFilter.Local = True
          STFilter.Location = stflInTitleFilterEh
          STFilter.Visible = True
          TabOrder = 0
          VertScrollBar.SmoothStep = True
          OnExit = Grid_Oper_PerExit
          OnGetCellParams = Grid_Oper_PerGetCellParams
          OnMouseUp = Grid_OpersMouseUp
          OnMoveRecords = Grid_OpersMoveRecords
          Columns = <
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
              FieldName = 'RW_VERS'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DOC_TP_VERS_ID'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_PART_TP'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_ROW_OPER'
              Footers = <>
              Visible = False
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NOM_PER'
              Footers = <>
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = #8470' '#1087'/'#1087
              Visible = False
              Width = 45
              WordWrap = True
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButton.DefaultAction = False
              EditButtons = <
                item
                  Hint = #1054#1090#1082#1088#1099#1090#1100' '#1088#1077#1076#1072#1082#1090#1086#1088' '#1090#1077#1082#1089#1090#1072' '#1087#1077#1088#1077#1093#1086#1076#1072
                  ShortCut = 0
                  Style = ebsEllipsisEh
                  Width = 20
                  OnClick = DBGrid_Oper_PerColumns4EditButtons0Click
                end
                item
                  Hint = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1072
                  Images.NormalImages = Form_Tech_Proc_Main.ImageList1
                  Images.NormalIndex = 19
                  Images.HotIndex = 19
                  Images.PressedIndex = 19
                  Images.DisabledIndex = 19
                  Style = ebsGlyphEh
                  Width = 20
                  OnClick = DBGrid_Oper_PerColumns4EditButtons1Click
                end
                item
                  Hint = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1089#1085#1072#1089#1090#1082#1080
                  Images.NormalImages = Form_Tech_Proc_Main.ImageList1
                  Images.NormalIndex = 18
                  Images.HotIndex = 18
                  Images.PressedIndex = 18
                  Images.DisabledIndex = 18
                  Style = ebsGlyphEh
                  Width = 20
                  OnClick = DBGrid_Oper_PerColumns4EditButtons2Click
                end>
              FieldName = 'PER'
              Footers = <>
              MRUList.Active = True
              MRUList.Items.Strings = (
                #1074#1072#1087#1074#1099#1074#1072#1074#1099
                #1099#1074#1072#1087#1099#1074#1072#1099#1074
                #1088#1087#1099#1074#1072#1087#1099#1074#1072#1099#1074#1087#1099#1074#1072
                #1099#1074#1072#1099#1074#1087#1099#1074#1072)
              MRUList.ListSourceKind = lskDataSetFieldValuesEh
              Title.Caption = #1058#1077#1082#1089#1090' '#1087#1077#1088#1077#1093#1086#1076#1072
              Width = 438
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'USER_NAME'
              Footers = <>
              ReadOnly = True
              Title.Caption = #1040#1074#1090#1086#1088
              Width = 120
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DATAIZM'
              Footers = <>
              ReadOnly = True
              Title.Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object E_OPER_PER_PRIM: TDBEditEh
          Left = 4
          Top = 195
          Width = 150
          Height = 23
          Anchors = [akLeft, akRight, akBottom]
          ControlLabel.Width = 73
          ControlLabel.Height = 15
          ControlLabel.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          ControlLabel.Visible = True
          DataField = 'PRIM'
          DataSource = Dm_Tech_Proc.Data_Oper_Per
          DynProps = <>
          EditButtons = <
            item
              Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1088#1080#1084#1077#1095#1072#1085#1080#1081' '#1082' '#1087#1077#1088#1077#1093#1086#1076#1072#1084
              ShortCut = 0
              Style = ebsEllipsisEh
              OnClick = E_OPER_PER_PRIMEditButtons0Click
            end
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_MemoText'
            end>
          EmptyDataInfo.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1081' '#1085#1077#1090'...'
          EmptyDataInfo.Alignment = taLeftJustify
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Visible = True
          OnCloseDropDownForm = EditControl_CloseDropDownForm
          OnOpenDropDownForm = EditControl_OpenDropDownForm
        end
        object E_TT_PER: TDBEditEh
          Left = 160
          Top = 195
          Width = 457
          Height = 23
          Anchors = [akRight, akBottom]
          ControlLabel.Width = 205
          ControlLabel.Height = 15
          ControlLabel.Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1082' '#1087#1077#1088#1077#1093#1086#1076#1091
          ControlLabel.Visible = True
          DataField = 'TT_PER'
          DataSource = Dm_Tech_Proc.Data_Oper_Per
          DynProps = <>
          EditButtons = <
            item
              Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1093' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1082' '#1087#1077#1088#1077#1093#1086#1076#1072#1084
              Style = ebsEllipsisEh
              OnClick = E_TT_PEREditButtons0Click
            end
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_MemoText'
            end>
          EmptyDataInfo.Text = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103' '#1082' '#1087#1077#1088#1077#1093#1086#1076#1091' '#1085#1077' '#1091#1082#1072#1079#1072#1085#1085#1099'...'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Visible = True
          OnCloseDropDownForm = EditControl_CloseDropDownForm
          OnOpenDropDownForm = EditControl_OpenDropDownForm
        end
      end
    end
  end
  object Btn_Hide_Deps: TButton
    Left = 70
    Top = 28
    Width = 20
    Height = 670
    Align = alLeft
    Caption = '<'
    ImageAlignment = iaCenter
    Images = Form_Tech_Proc_Main.ImageList1
    TabOrder = 2
    OnClick = Btn_Hide_DepsClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 698
    Width = 1134
    Height = 19
    BorderWidth = 2
    Panels = <
      item
        Text = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077':'
        Width = 135
      end
      item
        Width = 150
      end
      item
        Text = #1058#1077#1082#1091#1097#1072#1103' '#1074#1077#1088#1089#1080#1103':'
        Width = 100
      end
      item
        Width = 50
      end>
    SizeGrip = False
  end
  object Control_Panel: TPanel
    Left = 0
    Top = 0
    Width = 1134
    Height = 28
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    ShowCaption = False
    TabOrder = 4
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1130
      Height = 24
      Align = alClient
      AutoSize = True
      ButtonHeight = 23
      Caption = 'ToolBar1'
      Customizable = True
      DrawingStyle = dsGradient
      Images = Form_Tech_Proc_Main.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object Tb_Save: TToolButton
        Left = 0
        Top = 0
        Action = Act_SaveDoc
      end
      object Tb_CopyDoc: TToolButton
        Left = 23
        Top = 0
        Action = Act_CopyDoc
      end
      object Tb_Print: TToolButton
        Left = 46
        Top = 0
        Action = Act_PrintDoc
        PopupMenu = Pm_Print
      end
      object Tb_SignDoc: TToolButton
        Left = 69
        Top = 0
        Action = Act_SingDoc
      end
      object ToolButton5: TToolButton
        Left = 92
        Top = 0
        Width = 23
        AutoSize = True
        Caption = 'ToolButton5'
        ImageIndex = 11
        Style = tbsDivider
      end
      object Tb_LockStatus: TToolButton
        Left = 115
        Top = 0
        Caption = 'Tb_LockStatus'
        ImageIndex = 50
      end
      object ToolButton1: TToolButton
        Left = 138
        Top = 0
        Width = 39
        Caption = 'ToolButton1'
        ImageIndex = 51
        Style = tbsSeparator
      end
      object Splitter1: TSplitter
        Left = 177
        Top = 0
        Height = 23
        ResizeStyle = rsUpdate
      end
      object E_Addit_Num: TEdit
        Left = 180
        Top = 0
        Width = 204
        Height = 23
        AutoSize = False
        BevelInner = bvNone
        ReadOnly = True
        TabOrder = 0
        Text = 'E_Addit_Num'
      end
      object Splitter6: TSplitter
        Left = 384
        Top = 0
        Height = 23
        ResizeStyle = rsUpdate
      end
      object E_Addit_Name: TEdit
        Left = 387
        Top = 0
        Width = 269
        Height = 23
        Align = alRight
        AutoSize = False
        BevelInner = bvNone
        ReadOnly = True
        TabOrder = 1
        Text = 'E_Addit_Name'
      end
    end
  end
  object Main_M_Tech_Proc: TMainMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 440
    Top = 160
    object Main_M_Tech_Proc_Btn_Print: TMenuItem
      Caption = #1052#1072#1088#1096#1088#1091#1090#1085#1072#1103' '#1082#1072#1088#1090#1072
      ImageIndex = 12
      object Main_M_Tech_Proc_Btn_See: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      end
      object Main_M_Tech_Proc_Btn_See_W_Files: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089' '#1087#1088#1080#1083#1086#1078#1077#1085#1085#1099#1084' '#1092#1072#1081#1083#1072#1084#1080
      end
      object Main_M_Tech_Proc_Btn_Export: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090
        object Main_M_Tech_Proc_Btn_Export_In_PDF: TMenuItem
          Caption = 'PDF'
        end
        object Main_M_Tech_Proc_Btn_Export_In_Excel: TMenuItem
          Caption = 'Excel'
        end
      end
    end
    object Main_M_Tech_Proc_Btn_Copy: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077
      ImageIndex = 25
      object Main_M_Tech_Proc_Btn_Copy_Opers_From_Doc: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1058#1055' '#1080#1079' '#1076#1088#1091#1075#1086#1075#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        OnClick = Main_M_Tech_Proc_Btn_Copy_Opers_From_DocClick
      end
    end
    object Main_M_Tech_Proc_Btn_Spr: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      ImageIndex = 27
      object Main_M_Tech_Proc_Btn_Spr_Opers: TMenuItem
        Caption = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1086#1087#1077#1088#1072#1094#1080#1081
        OnClick = Main_M_Tech_Proc_Btn_Spr_OpersClick
      end
      object Main_M_Tech_Proc_Btn_Spr_Tara: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1086#1081' '#1090#1072#1088#1099
      end
      object Main_M_Tech_Proc_Btn_Spr_Det: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1076#1077#1090#1072#1083#1077#1081
        OnClick = Main_M_Tech_Proc_Btn_Spr_DetClick
      end
    end
    object Main_M_Tech_Proc_Btn_Save: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 22
    end
    object Main_M_Tech_Proc_Btn_Exit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 32
    end
  end
  object Pop_M_Opers: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    MenuAnimation = [maLeftToRight]
    OnPopup = Pop_M_OpersPopup
    Left = 208
    Top = 152
    object Pop_M_Opers_Btn_Instr_Cards: TMenuItem
      Caption = #1050#1072#1088#1090#1072' '#1085#1072#1083#1072#1076#1082#1080
      ImageIndex = 43
      OnClick = Pop_M_Opers_Btn_Instr_CardsClick
    end
    object Pop_M_Opers_Btn_Lit_Params: TMenuItem
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1087#1077#1088#1072#1094#1080#1080' "'#1051#1080#1090#1077#1081#1085#1072#1103'"'
      ImageIndex = 42
      Visible = False
    end
    object Pop_M_Opers_Btn_Tt_Params: TMenuItem
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1087#1077#1088#1072#1094#1080#1080' "'#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1081' '#1082#1086#1085#1090#1088#1086#1083#1100'"'
      ImageIndex = 44
      Visible = False
      OnClick = Pop_M_Opers_Btn_Tt_ParamsClick
    end
    object Pop_M_Opers_Btn_Insert: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1087#1091#1089#1090#1091#1102' '#1089#1090#1088#1086#1082#1091
      ImageIndex = 24
      OnClick = Pop_M_Opers_Btn_InsertClick
    end
    object Pop_M_Opers_Btn_Files: TMenuItem
      Caption = #1055#1088#1080#1082#1088#1077#1087#1083#1077#1085#1085#1099#1077' '#1092#1072#1081#1083#1099
      ImageIndex = 17
      OnClick = Pop_M_Opers_Btn_FilesClick
    end
    object Pop_M_Opers_Btn_Paste_Oper: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1080
      ImageIndex = 20
      OnClick = Pop_M_Opers_Btn_Paste_OperClick
    end
    object Pop_M_Opers_Btn_Cut_Oper: TMenuItem
      Caption = #1042#1099#1088#1077#1079#1072#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1080
      ImageIndex = 19
      OnClick = Pop_M_Opers_Btn_Cut_OperClick
    end
    object Pop_M_Opers_Btn_Copy_Oper: TMenuItem
      Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1080
      ImageIndex = 25
      OnClick = Pop_M_Opers_Btn_Copy_OperClick
    end
    object Pop_M_Opers_Btn_Delete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 23
      OnClick = Pop_M_Opers_Btn_DeleteClick
    end
  end
  object Pop_M_Oper_Per: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 240
    Top = 544
    object Pop_M_Oper_Per_Btn_Text: TMenuItem
      Caption = #1058#1077#1082#1089#1090' '#1087#1077#1088#1077#1093#1086#1076#1072
      ImageIndex = 26
      OnClick = Pop_M_Oper_Per_Btn_TextClick
    end
    object Pop_M_Oper_Per_Btn_Spr_Per: TMenuItem
      Caption = #1057#1087#1080#1089#1086#1082' '#1087#1077#1088#1077#1093#1086#1076#1086#1074
      ImageIndex = 27
      OnClick = Pop_M_Oper_Per_Btn_Spr_PerClick
    end
    object Pop_M_Oper_Per_Btn_Det: TMenuItem
      Caption = #1057#1087#1080#1089#1086#1082' '#1076#1077#1090#1072#1083#1077#1081
      ImageIndex = 30
      OnClick = Pop_M_Oper_Per_Btn_Per_ItemsClick
    end
    object Pop_M_Oper_Per_Btn_Mat: TMenuItem
      Caption = #1057#1087#1080#1089#1086#1082' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
      ImageIndex = 28
      OnClick = Pop_M_Oper_Per_Btn_Per_ItemsClick
    end
    object Pop_M_Oper_Per_Btn_Ins: TMenuItem
      Caption = #1057#1087#1080#1089#1086#1082' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1086#1074
      ImageIndex = 21
      OnClick = Pop_M_Oper_Per_Btn_Per_ItemsClick
    end
    object Pop_M_Oper_Per_Btn_Osn: TMenuItem
      Caption = #1057#1087#1080#1089#1086#1082' '#1086#1089#1085#1072#1089#1090#1082#1080
      ImageIndex = 18
      OnClick = Pop_M_Oper_Per_Btn_Per_ItemsClick
    end
    object Pop_M_Oper_Per_Btn_Insert: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      ImageIndex = 24
      OnClick = Pop_M_Oper_Per_Btn_InsertClick
    end
    object Pop_M_Oper_Per_Btn_Delete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 23
      OnClick = Pop_M_Oper_Per_Btn_DeleteClick
    end
  end
  object Pop_M_Doc_Parts: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 32
    Top = 224
    object Pop_M_Doc_Parts_Btn_Insert: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      ImageIndex = 24
      OnClick = Pop_M_Doc_Parts_Btn_InsertClick
    end
    object Pop_M_Doc_Parts_Btn_Delete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      ImageIndex = 23
      OnClick = Pop_M_Doc_Parts_Btn_DeleteClick
    end
    object Pop_M_Doc_Parts_Btn_Correct_Tech_Mar: TMenuItem
      Caption = #1057#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1088#1096#1088#1091#1090' '#1074' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1085#1086#1074#1099#1084
      Visible = False
    end
  end
  object Q_Get_Det_Norm_Trud: TOracleQuery
    SQL.Strings = (
      'Select T_Norm.T_Norm'
      'From   ( Select t.Time T_Norm,'
      '                Row_Number() Over(Order By t.Datkortime) Rwn'
      '         From   Sveta.M05 t '
      '         Where  t.Kodprof = :v_Kodprof'
      '                And t.Razr = :v_Razr'
      '                And t.Kd = :v_Det_Kd'
      '                And t.Nc = :v_Ceh_Code ) T_Norm'
      'Where T_Norm.Rwn = 1'
      '                ')
    Session = DM_Main.Session
    Optimize = False
    Variables.Data = {
      0400000004000000140000003A0056005F004B004F004400500052004F004600
      0500000000000000000000000E0000003A0056005F00520041005A0052000500
      00000000000000000000120000003A0056005F004400450054005F004B004400
      050000000000000000000000160000003A0056005F004300450048005F004300
      4F0044004500050000000000000000000000}
    Left = 241
    Top = 208
  end
  object Db_Doc_Parts_Temp: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.Rowid '
      'From   Ogt.Tp_Ok_Mar_Parts_Temp t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000009000000040000004900440001000000000012000000490044005F00
      44004F0043005F0054005000010000000000140000004300450048005F004900
      44005F0050004100520001000000000008000000450044004900540001000000
      0000180000004300450048005F0043004F00440045005F005000410052000100
      000000001600000052004F0057005F004E0055004D005F005000410052000100
      00000000140000004300450048005F00490044005F0052004500430001000000
      0000180000004300450048005F0043004F00440045005F005200450043000100
      000000001600000052004F0057005F004E0055004D005F005200450043000100
      00000000}
    UpdatingTable = 'Ogt.Tp_Ok_Mar_Parts_Temp'
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 432
    Top = 536
    object Db_Doc_Parts_TempID: TFloatField
      FieldName = 'ID'
    end
    object Db_Doc_Parts_TempID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
    end
    object Db_Doc_Parts_TempCEH_ID_PAR: TFloatField
      FieldName = 'CEH_ID_PAR'
    end
    object Db_Doc_Parts_TempEDIT: TFloatField
      FieldName = 'EDIT'
    end
    object Db_Doc_Parts_TempCEH_CODE_PAR: TStringField
      FieldName = 'CEH_CODE_PAR'
      Size = 2
    end
    object Db_Doc_Parts_TempROW_NUM_PAR: TFloatField
      FieldName = 'ROW_NUM_PAR'
    end
    object Db_Doc_Parts_TempCEH_ID_REC: TIntegerField
      FieldName = 'CEH_ID_REC'
    end
    object Db_Doc_Parts_TempCEH_CODE_REC: TStringField
      FieldName = 'CEH_CODE_REC'
      Size = 2
    end
    object Db_Doc_Parts_TempROW_NUM_REC: TIntegerField
      FieldName = 'ROW_NUM_REC'
    end
  end
  object Data_Doc_Parts_Temp: TDataSource
    DataSet = Db_Doc_Parts_Temp
    Left = 432
    Top = 488
  end
  object Q_Update_Doc_Det_Mar: TOracleQuery
    SQL.Strings = (
      'Begin'
      'Update Ogt.V_Spr_Tp_Doc t'
      'Set    t.Det_Mar = :v_Det_Mar'
      'Where  t.Id = :v_Doc_Id;'
      ''
      'Update Ogt.V_Spr_Tp_Doc t'
      'Set    t.Det_Mar = :v_Det_Mar'
      'Where  t.Id = ( Case '
      '                      When ( Select Nvl( a.Main_Doc_Id, 0 )'
      '                             From   Ogt.v_Spr_Tp_Doc a'
      
        '                             Where  a.Id = :v_Doc_Id ) = 0 Then ' +
        ':v_Doc_Id'
      '                      When ( Select Nvl( a.Main_Doc_Id, 0 )'
      '                             From   Ogt.v_Spr_Tp_Doc a'
      
        '                             Where  a.Id = :v_Doc_Id ) <> 0 Then' +
        ' ( Select To_Char( Nvl( a.Main_Doc_Id, 0 ) )'
      
        '                                                                ' +
        '   From   Ogt.v_Spr_Tp_Doc a'
      
        '                                                                ' +
        '   Where  a.Id = :v_Doc_Id )'
      '                      End );'
      'Commit;'
      'End;')
    Session = DM_Main.Session
    Optimize = False
    Variables.Data = {
      0400000002000000140000003A0056005F004400450054005F004D0041005200
      050000000000000000000000120000003A0056005F0044004F0043005F004900
      4400050000000000000000000000}
    Left = 32
    Top = 144
  end
  object Q_Clear_Doc_Parts_Temp: TOracleQuery
    SQL.Strings = (
      'Delete '
      'From   Ogt.Tp_Ok_Mar_Parts_Temp t')
    Session = DM_Main.Session
    Optimize = False
    Left = 32
    Top = 88
  end
  object Pm_Print: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    TrackButton = tbLeftButton
    Left = 322
    Top = 142
    object Pm_Print_See: TMenuItem
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      ImageIndex = 44
      OnClick = Pm_Print_SeeClick
    end
    object Pm_Print_See_W_Files: TMenuItem
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089' '#1087#1088#1080#1083#1086#1078#1077#1085#1085#1099#1084' '#1092#1072#1081#1083#1072#1084#1080
      ImageIndex = 8
      OnClick = Pm_Print_See_W_FilesClick
    end
    object Pm_Print_Export: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090
      ImageIndex = 36
      object Pm_Print_Export_PDF: TMenuItem
        Caption = 'PDF'
        ImageIndex = 46
        OnClick = Pm_Print_Export_PDFClick
      end
      object Pm_Print_Export_Excel: TMenuItem
        Caption = 'Excel'
        ImageIndex = 47
        OnClick = Pm_Print_Export_ExcelClick
      end
    end
  end
  object ActionList1: TActionList
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 664
    Top = 272
    object Act_SingDoc: TAction
      Category = 'DocActions'
      Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      HelpKeyword = #1055#1086#1076#1087#1080#1089#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Hint = #1055#1086#1076#1087#1080#1089#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 10
      OnExecute = Act_SingDocExecute
    end
    object Act_SaveDoc: TAction
      Category = 'DocActions'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 22
      OnExecute = Act_SaveDocExecute
    end
    object Act_CopyDoc: TAction
      Category = 'DocActions'
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1080#1079' '#1076#1088#1091#1075#1086#1075#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1080#1079' '#1076#1088#1091#1075#1086#1075#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      ImageIndex = 25
      OnExecute = Act_CopyDocExecute
    end
    object Act_PrintDoc: TAction
      Category = 'DocActions'
      Caption = #1055#1077#1095#1072#1090#1100
      Hint = #1055#1077#1095#1072#1090#1100
      ImageIndex = 38
      OnExecute = Act_PrintDocExecute
    end
  end
end
