object Form_Tp_Connected_Details: TForm_Tp_Connected_Details
  Left = 0
  Top = 0
  Caption = 'Form_Tp_Connected_Details'
  ClientHeight = 683
  ClientWidth = 1139
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = Main_M_Tp_Connected_Details
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 0
    Top = 217
    Width = 1139
    Height = 5
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = -1
    ExplicitTop = 38
    ExplicitWidth = 1184
  end
  object Panel_Doc_Items: TPanel
    Left = 0
    Top = 222
    Width = 1139
    Height = 442
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel_Doc_Items'
    ShowCaption = False
    TabOrder = 0
    object Splitter3: TSplitter
      Left = 492
      Top = 0
      Width = 5
      Height = 442
      Align = alRight
      ExplicitLeft = 155
      ExplicitHeight = 474
    end
    object Panel_Doc_Items_Opers: TPanel
      Left = 0
      Top = 0
      Width = 492
      Height = 442
      Align = alClient
      Caption = 'Panel_Doc_Items_Opers'
      Constraints.MinWidth = 400
      ShowCaption = False
      TabOrder = 0
      object Group_Doc_Items_Opers: TGroupBox
        Left = 1
        Top = 1
        Width = 490
        Height = 440
        Align = alClient
        Caption = #1054#1087#1077#1088#1072#1094#1080#1080
        TabOrder = 0
        DesignSize = (
          490
          440)
        object DBGrid_Operations: TDBGridEh
          Left = 3
          Top = 16
          Width = 479
          Height = 333
          Align = alCustom
          AllowedOperations = [alopUpdateEh, alopDeleteEh, alopAppendEh]
          AllowedSelections = [gstRecordBookmarks, gstAll]
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoFitColWidths = True
          DataSource = Dm_TechProc_List.Data_Detail_Operations
          DynProps = <>
          Flat = True
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
          PopupMenu = Pop_M_Operations
          RowHeight = 2
          RowLines = 1
          SearchPanel.Enabled = True
          SortLocal = True
          SumList.Active = True
          SumList.ExternalRecalc = True
          TabOrder = 0
          OnExit = GridExit
          OnGetCellParams = DBGrid_OperationsGetCellParams
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
              FieldName = 'ID_ROW_DET'
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
            end
            item
              Alignment = taCenter
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ROW_NUM_GEN'
              Footers = <>
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = #8470' '
              Width = 43
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
              FieldName = 'CEH_CODE'
              Footers = <>
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = #1062#1077#1093
              Width = 35
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_NAME'
              Footers = <>
              ReadOnly = True
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
              Width = 213
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_IOT'
              Footers = <>
              ReadOnly = True
              Title.Caption = #1044#1086#1087'. '#1080#1085#1089#1090#1088#1091#1082#1094#1080#1080' '#1087#1086' '#1054#1058
              Width = 157
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object E_Oper_Prim: TDBEditEh
          Left = 3
          Top = 412
          Width = 484
          Height = 22
          Anchors = [akLeft, akRight, akBottom]
          ControlLabel.Width = 71
          ControlLabel.Height = 14
          ControlLabel.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          ControlLabel.Font.Charset = DEFAULT_CHARSET
          ControlLabel.Font.Color = clWindowText
          ControlLabel.Font.Height = -12
          ControlLabel.Font.Name = 'Tahoma'
          ControlLabel.Font.Style = []
          ControlLabel.ParentFont = False
          ControlLabel.Visible = True
          DataField = 'PRIM'
          DataSource = Dm_TechProc_List.Data_Detail_Operations
          DynProps = <>
          EditButtons = <
            item
            end>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = True
          OnDblClick = E_Oper_PrimDblClick
        end
        object E_OPER_AUTHOR_NAME: TDBEditEh
          Left = 3
          Top = 370
          Width = 151
          Height = 22
          Anchors = [akLeft, akBottom]
          ControlLabel.Width = 34
          ControlLabel.Height = 14
          ControlLabel.Caption = #1040#1074#1090#1086#1088
          ControlLabel.Visible = True
          DataField = 'RAZRAB_NAME'
          DataSource = Dm_TechProc_List.Data_Detail_Operations
          DynProps = <>
          EditButtons = <>
          ReadOnly = True
          TabOrder = 2
          Visible = True
        end
        object E_OPER_DATA_CHANGE: TDBEditEh
          Left = 160
          Top = 370
          Width = 145
          Height = 22
          Anchors = [akLeft, akBottom]
          ControlLabel.Width = 92
          ControlLabel.Height = 14
          ControlLabel.Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          ControlLabel.Visible = True
          DataField = 'DATA_CHANGE'
          DataSource = Dm_TechProc_List.Data_Detail_Operations
          DynProps = <>
          EditButtons = <>
          ReadOnly = True
          TabOrder = 3
          Visible = True
        end
      end
    end
    object Btn_Hide_Oper_Params: TButton
      Left = 1123
      Top = 0
      Width = 16
      Height = 442
      Hint = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1077#1090#1072#1083#1080
      Align = alRight
      Caption = '<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Btn_Hide_Det_ParamsClick
    end
    object Panel_Doc_Items_Oper_Params: TPanel
      Left = 497
      Top = 0
      Width = 626
      Height = 442
      Align = alRight
      Caption = 'Panel_Doc_Items_Oper_Params'
      ShowCaption = False
      TabOrder = 2
      object GB_NORMA_TIME: TGroupBox
        Left = 1
        Top = 1
        Width = 624
        Height = 240
        Align = alTop
        Caption = #1042#1088#1077#1084#1103' '#1086#1087#1077#1088#1072#1094#1080#1080
        TabOrder = 0
        object Grid_Time_Norms: TDBVertGridEh
          Left = 2
          Top = 16
          Width = 620
          Height = 222
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
          DataSource = Dm_TechProc_List.Data_Oper_Time
          DrawGraphicData = True
          DrawMemoText = True
          OptionsEh = [dgvhHighlightFocusEh, dgvhClearSelectionEh, dgvhEnterToNextRowEh]
          TabOrder = 0
          LabelColWidth = 150
          Rows = <
            item
              DisplayFormat = '#,##,0.00000'
              DynProps = <>
              EditButtons = <>
              FieldName = 'ALL_OPER_TIME'
              RowLabel.Caption = #1053#1086#1088#1084#1072' '#1074#1088#1077#1084#1077#1085#1080', '#1085'/'#1095
              CategoryName = 'Time_Norm'
              OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
            end
            item
              DisplayFormat = '#,##,0.00000'
              DynProps = <>
              EditButtons = <>
              FieldName = 'UNIT_TIME'
              RowLabel.Caption = 'T '#1096#1090'., '#1095
              CategoryName = 'Time_Norm'
              OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
            end
            item
              DisplayFormat = '#,##,0.00000'
              DynProps = <>
              EditButtons = <>
              FieldName = 'SETUP_TIME'
              RowLabel.Caption = #1058' '#1087#1079'., '#1095
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
              DisplayFormat = '#,##,0.00000'
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_TIME'
              RowLabel.Caption = #1058' '#1086#1087'., '#1095
              CategoryName = 'Time_Norm'
              OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
            end
            item
              DisplayFormat = '#,##,0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'ALL_OPER_TIME_PERC'
              RowLabel.Caption = '%  '#1086#1090' '#1091#1090#1074'. '#1085#1086#1088#1084
              CategoryName = 'Time_Norm'
              OnUpdateData = Grid_Time_NormsTimeRowsUpdateData
            end
            item
              DynProps = <>
              EditButtons = <
                item
                  Style = ebsEllipsisEh
                  OnClick = Grid_Time_NormsRows5EditButtons0Click
                end>
              FieldName = 'PROF_CODE'
              RowLabel.Caption = #1050#1086#1076' '#1087#1088#1086#1092'.'
              CategoryName = 'Prof'
              OnUpdateData = Grid_Time_NormsRows6UpdateData
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
            end>
        end
      end
      object GroupBox4: TGroupBox
        Left = 1
        Top = 241
        Width = 624
        Height = 200
        Align = alClient
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1087#1077#1088#1072#1094#1080#1080
        TabOrder = 1
        object VGrid_Oper_Params: TDBVertGridEh
          Left = 2
          Top = 16
          Width = 620
          Height = 182
          Align = alClient
          AllowedSelections = []
          RowCategories.CategoryProps = <>
          LabelColParams.Images = Form_Tech_Proc_Main.ImageList1
          PrintService.ColorSchema = pcsFullColorEh
          DataSource = Dm_TechProc_List.Data_Detail_Operations
          DrawGraphicData = True
          DrawMemoText = True
          Flat = True
          OptionsEh = [dgvhHighlightFocusEh, dgvhClearSelectionEh, dgvhEnterToNextRowEh]
          TabOrder = 0
          LabelColWidth = 152
          Rows = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OBOR_NAME'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
              RowLabel.Color = 13353215
              OnUpdateData = VGrid_Oper_ParamsRows0UpdateData
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ENVIRON'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1057#1088#1077#1076#1072
              RowLabel.Color = 15128749
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'HARDNESS'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1058#1074#1077#1088#1076#1086#1089#1090#1100
              RowLabel.Color = 15128749
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'T_MIN'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072', '#1075#1088#1072#1076'. ('#1084#1080#1085')'
              RowLabel.Color = 12180223
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'T_MAX'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072', '#1075#1088#1072#1076'. ('#1084#1072#1082#1089')'
              RowLabel.Color = 12180223
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'TIME_MIN'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1042#1088#1077#1084#1103' '#1086#1087#1077#1088#1072#1094#1080#1080', ('#1084#1080#1085')'
              RowLabel.Color = 55295
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'TIME_MAX'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1042#1088#1077#1084#1103' '#1086#1087#1077#1088#1072#1094#1080#1080', ('#1084#1072#1082#1089')'
              RowLabel.Color = 55295
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'TIME_EDIZM_NAME'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1045#1076'. '#1080#1079#1084'.'
              RowLabel.Color = 55295
              LookupParams.KeyFieldNames = 'TIME_EDIZM'
              LookupParams.LookupDataSet = Dm_TechProc_List.Db_Time_Edizm
              LookupParams.LookupDisplayFieldName = 'ED_NAME'
              LookupParams.LookupKeyFieldNames = 'ED_KOD'
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'TIME_EDIZM'
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_KOID'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              ReadOnly = True
              RowLabel.Caption = #1050#1054#1048#1044
              RowLabel.Color = 9498256
              OnUpdateData = VGrid_Oper_ParamsRows9UpdateData
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_KUP'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1050#1059#1055
              RowLabel.Color = 9498256
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_PPPD'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1055#1055#1055#1044
              RowLabel.Color = 9498256
              OnUpdateData = VGrid_Oper_ParamsRows11UpdateData
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_COUNT_INS'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1050#1086#1083'-'#1074#1086' '#1087#1088#1080#1089#1087'. (n)'
              RowLabel.Color = 9498256
              OnUpdateData = VGrid_Oper_ParamsRows12UpdateData
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_COUNT_BATH'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1050#1086#1083'-'#1074#1086' '#1086#1089#1085#1086#1074#1085#1099#1093' '#1074#1072#1085#1085' (N)'
              RowLabel.Color = 9498256
              OnUpdateData = VGrid_Oper_ParamsRows13UpdateData
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_OPPP_DET'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1054#1055#1055#1055' '#1076#1077#1090'. '#1085#1072' '#1087#1088'.'
              RowLabel.Color = 9498256
              OnUpdateData = VGrid_Oper_ParamsRows14UpdateData
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_KDP'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1050#1044#1055
              RowLabel.Color = 9498256
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_KDA'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1050#1044#1040
              RowLabel.Color = 9498256
              OnUpdateData = VGrid_Oper_ParamsRows16UpdateData
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_KSL'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1050' '#1089#1083'.'
              RowLabel.Color = 9498256
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_TOLSCH'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1058#1086#1083#1097#1080#1085#1072', '#1084#1082#1084
              RowLabel.Color = 9498256
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OPER_TOLSCH_RANGE'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1090#1086#1083#1097#1080#1085', '#1084#1082#1084
              RowLabel.Color = 9498256
            end
            item
              DynProps = <>
              DropDownRows = 3
              EditButtons = <>
              FieldName = 'OPER_CHS_PARAMS'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = 'I, D, '#1042#1088#1077#1084#1103
              RowLabel.Color = 9498256
              LookupParams.KeyFieldNames = 'OPER_CHS_PARAMS'
              LookupParams.LookupDataSet = Dm_TechProc_List.Db_Chosen_Params
              LookupParams.LookupDisplayFieldName = 'PARAM'
              LookupParams.LookupKeyFieldNames = 'PARAM'
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'COLOR_NAME'
              FitRowHeightToData = True
              FitRowHeightToTextLines = False
              RowLabel.Caption = #1062#1074#1077#1090
              RowLabel.Color = 9498256
              LookupParams.KeyFieldNames = 'OPER_COLOR_ID'
              LookupParams.LookupDataSet = Dm_TechProc_List.Db_Colors
              LookupParams.LookupDisplayFieldName = 'COLOR_NAME'
              LookupParams.LookupKeyFieldNames = 'ID'
            end>
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1139
    Height = 217
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    object Btn_Hide_Det_Params: TButton
      Left = 1123
      Top = 0
      Width = 16
      Height = 217
      Hint = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1077#1090#1072#1083#1080
      Align = alRight
      Caption = '<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Btn_Hide_Det_ParamsClick
    end
    object Group_Doc_Items_Det: TGroupBox
      Left = 0
      Top = 0
      Width = 1123
      Height = 217
      Align = alClient
      Caption = #1044#1077#1090#1072#1083#1080
      TabOrder = 1
      object Splitter4: TSplitter
        Left = 645
        Top = 16
        Width = 5
        Height = 199
        Align = alRight
        ExplicitLeft = 643
        ExplicitTop = 13
        ExplicitHeight = 197
      end
      object DBGrid_Details: TDBGridEh
        Left = 2
        Top = 16
        Width = 643
        Height = 199
        Align = alClient
        AllowedSelections = [gstRecordBookmarks, gstAll]
        AutoFitColWidths = True
        DataSource = Dm_TechProc_List.Data_Doc_Details
        DynProps = <>
        Flat = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
        PopupMenu = Pop_M_Doc_Details
        RowHeight = 2
        RowLines = 1
        SearchPanel.Enabled = True
        TabOrder = 0
        OnExit = GridExit
        OnGetCellParams = DBGrid_DetailsGetCellParams
        Columns = <
          item
            CellButtons = <>
            Color = clCream
            DynProps = <>
            EditButtons = <>
            FieldName = 'DET_NUM'
            Footers = <>
            Title.Caption = #1064#1080#1092#1088' '#1076#1077#1090#1072#1083#1080' / '#1089#1073#1086#1088#1082#1080
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DET_NAME'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080' / '#1089#1073#1086#1088#1082#1080
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DET_ID'
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
            FieldName = 'RAZRAB_NAME'
            Footers = <>
            Title.Caption = #1040#1074#1090#1086#1088
            Width = 152
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATE_CHANGE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object VGrid_Det_Params: TDBVertGridEh
        Left = 650
        Top = 16
        Width = 471
        Height = 199
        Align = alRight
        AllowedSelections = []
        RowCategories.CategoryProps = <>
        PrintService.ColorSchema = pcsFullColorEh
        DataSource = Dm_TechProc_List.Data_Doc_Details
        DrawGraphicData = True
        DrawMemoText = True
        Flat = True
        OptionsEh = [dgvhHighlightFocusEh, dgvhClearSelectionEh, dgvhEnterToNextRowEh]
        TabOrder = 1
        LabelColWidth = 125
        Rows = <
          item
            DynProps = <>
            EditButtons = <
              item
                ShortCut = 0
                Style = ebsEllipsisEh
                OnClick = VGrid_Det_ParamsRows0EditButtons0Click
              end>
            FieldName = 'DET_MAT_NAME'
            FitRowHeightToData = True
            FitRowHeightToTextLines = False
            RowLabel.Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1084#1072#1090#1077#1088#1080#1072#1083
            RowLabel.Color = 12180223
            OnUpdateData = VGrid_Det_ParamsRows0UpdateData
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DET_EV_CODE'
            FitRowHeightToData = True
            FitRowHeightToTextLines = False
            RowLabel.Caption = #1045#1042
            RowLabel.Color = 12180223
            OnUpdateData = VGrid_Det_ParamsRows1UpdateData
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DET_MASS'
            FitRowHeightToData = True
            RowLabel.Caption = #1052#1044
            RowLabel.Color = 12180223
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DIFC_GROUP'
            FitRowHeightToData = True
            FitRowHeightToTextLines = False
            RowLabel.Caption = #1043#1057
            RowLabel.Color = 12180223
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DET_EV_ID'
            Visible = False
          end>
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 664
    Width = 1139
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
  object Main_M_Tp_Connected_Details: TMainMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 176
    Top = 104
    object Main_M_Tp_Connected_Details_Btn_Doc: TMenuItem
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 12
      object Main_M_Tp_Connected_Details_Btn_Doc_Vtp: TMenuItem
        Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1076#1077#1090#1072#1083#1077#1081
        object Main_M_Tp_Connected_Details_Btn_Doc_Vtp_See: TMenuItem
          Caption = #1055#1088#1086#1089#1084#1086#1090#1088
          OnClick = Main_M_Tp_Connected_Details_Btn_Doc_Vtp_SeeClick
        end
        object Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090
          object Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export_PDF: TMenuItem
            Caption = 'PDF'
            OnClick = Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export_PDFClick
          end
          object Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export_Excel: TMenuItem
            Caption = 'Excel'
            OnClick = Main_M_Tp_Connected_Details_Btn_Doc_Vtp_Export_ExcelClick
          end
        end
      end
      object Main_M_Tp_Connected_Details_Btn_Doc_Det: TMenuItem
        Caption = #1058#1077#1093#1087#1088#1086#1094#1077#1089#1089' '#1076#1083#1103' '#1076#1077#1090#1072#1083#1080
        object Main_M_Tp_Connected_Details_Btn_Doc_Det_See: TMenuItem
          Caption = #1055#1088#1086#1089#1084#1086#1090#1088
          OnClick = Main_M_Tp_Connected_Details_Btn_Doc_Det_SeeClick
        end
        object Main_M_Tp_Connected_Details_Btn_Doc_Det_Export: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090
          object Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_Pdf: TMenuItem
            Caption = 'PDF'
            OnClick = Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_PdfClick
          end
          object Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_Excel: TMenuItem
            Caption = 'Excel'
            OnClick = Main_M_Tp_Connected_Details_Btn_Doc_Det_Export_ExcelClick
          end
        end
      end
    end
    object Main_M_Tp_Connected_Details_Btn_Copy_Opers_From_Chem_Cover: TMenuItem
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1074#1077#1076#1086#1084#1086#1089#1090#1100' '#1080#1079' '#1093#1080#1084'. '#1087#1086#1082#1088#1099#1090#1080#1081
      OnClick = Main_M_Tp_Connected_Details_Btn_Copy_Opers_From_Chem_CoverClick
    end
    object Main_M_Tp_Connected_Details_Btn_Save: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 22
      OnClick = Main_M_Tp_Connected_Details_Btn_SaveClick
    end
    object Main_M_Tp_Connected_Details_Btn_Exit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 32
      OnClick = Main_M_Tp_Connected_Details_Btn_ExitClick
    end
  end
  object Pop_M_Doc_Details: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    OnPopup = Pop_M_Doc_DetailsPopup
    Left = 424
    Top = 560
    object Pop_M_Doc_Details_Btn_Add_Det: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1076#1077#1090#1072#1083#1080' '#1080#1079' '#1088#1072#1089#1094#1077#1093#1086#1074#1082#1080
      ImageIndex = 24
      OnClick = Pop_M_Doc_Details_Btn_Add_DetClick
    end
    object Pop_M_Doc_Details_Btn_Det_Params: TMenuItem
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1077#1090#1072#1083#1080
      OnClick = Pop_M_Doc_Details_Btn_Det_ParamsClick
    end
    object Pop_M_Doc_Details_Btn_Delete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 23
      OnClick = Pop_M_Doc_Details_Btn_DeleteClick
    end
  end
  object Pop_M_Operations: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    OnPopup = Pop_M_OperationsPopup
    Left = 608
    Top = 506
    object Pop_M_Operations_Btn_Add_Opers: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1080#1079' '#1058#1055
      ImageIndex = 24
      OnClick = Pop_M_Operations_Btn_Add_OpersClick
    end
    object Pop_M_Operations_Btn_Copy_Opers: TMenuItem
      Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
      OnClick = Pop_M_Operations_Btn_Copy_OpersClick
    end
    object Pop_M_Operations_Btn_Paste_Opers: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      OnClick = Pop_M_Operations_Btn_Paste_OpersClick
    end
    object Pop_M_Operations_Btn_Oper_Time: TMenuItem
      Caption = #1056#1072#1089#1089#1095#1077#1090' '#1058#1087#1079
      OnClick = Pop_M_Operations_Btn_Oper_TimeClick
    end
    object Pop_M_Operations_Btn_Opers_Params: TMenuItem
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1087#1077#1088#1072#1094#1080#1080
      OnClick = Pop_M_Operations_Btn_Opers_ParamsClick
    end
    object Pop_M_Operations_Btn_Delete_Opers: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 23
      OnClick = Pop_M_Operations_Btn_Delete_OpersClick
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
    Left = 353
    Top = 352
  end
  object Db_Operations_Temp: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Row_Oper,'
      '       t.Row_Num_Gen,'
      '       t.Prim,'
      '       t.Oper_Name,'
      '       t.Oper_Iot,'
      '       t.Ceh_Id,'
      '       t.Ceh_Name Ceh_Code,'
      '       t.Oper_Obor_En,'
      '       t.Oper_Obor_Time_Pz,'
      '       t.Oper_Obor_Time_Sh,'
      '       t.Obor_Id,'
      '       t.Obor_Name,'
      '       t.Prof_Code,'
      '       t.Environ,'
      '       t.Hardness,'
      '       t.T_Min,'
      '       t.T_Max,'
      '       t.Time_Min,'
      '       t.Time_Max,'
      '       t.Time_Edizm,'
      '       t.Time_Edizm_Name,'
      '       t.Oper_Koid,'
      '       t.Oper_Kup,'
      '       t.Oper_PPPD,'
      '       t.Oper_OPPP_Det,'
      '       t.Oper_KDP,'
      '       t.Oper_Kda,'
      '       t.Oper_Ksl,'
      '       t.Oper_Tolsch,'
      '       t.Oper_Tolsch_Range,'
      '       t.Oper_Chs_Params,'
      '       t.Oper_Color_Id,'
      '       t.Oper_Color_Name Color_Name,'
      '       t.Oper_Count_Ins'
      'From   Ogt.TP_GKTTP_OPER_DLP_Temp t'
      'Where  t.Id_Row_Det = :Id_Row'
      'Order  By Row_Num_Gen')
    Optimize = False
    Variables.Data = {
      04000000010000000E0000003A00490044005F0052004F005700050000000000
      000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000002200000016000000490044005F0052004F0057005F004F0050004500
      52000100000000001600000052004F0057005F004E0055004D005F0047004500
      4E00010000000000080000005000520049004D00010000000000120000004F00
      5000450052005F004E0041004D004500010000000000100000004F0050004500
      52005F0049004F0054000100000000000C0000004300450048005F0049004400
      010000000000100000004300450048005F0043004F0044004500010000000000
      180000004F005000450052005F004F0042004F0052005F0045004E0001000000
      0000220000004F005000450052005F004F0042004F0052005F00540049004D00
      45005F0050005A00010000000000220000004F005000450052005F004F004200
      4F0052005F00540049004D0045005F00530048000100000000000E0000004F00
      42004F0052005F0049004400010000000000120000004F0042004F0052005F00
      4E0041004D00450001000000000012000000500052004F0046005F0043004F00
      440045000100000000000E00000045004E005600490052004F004E0001000000
      00001000000048004100520044004E004500530053000100000000000A000000
      54005F004D0049004E000100000000000A00000054005F004D00410058000100
      0000000010000000540049004D0045005F004D0049004E000100000000001000
      0000540049004D0045005F004D00410058000100000000001400000054004900
      4D0045005F004500440049005A004D000100000000001E000000540049004D00
      45005F004500440049005A004D005F004E0041004D0045000100000000001200
      00004F005000450052005F004B004F0049004400010000000000100000004F00
      5000450052005F004B0055005000010000000000120000004F00500045005200
      5F0050005000500044000100000000001A0000004F005000450052005F004F00
      5000500050005F00440045005400010000000000100000004F00500045005200
      5F004B0044005000010000000000100000004F005000450052005F004B004400
      4100010000000000100000004F005000450052005F004B0053004C0001000000
      0000160000004F005000450052005F0054004F004C0053004300480001000000
      00001E0000004F005000450052005F004300480053005F005000410052004100
      4D0053000100000000001A0000004F005000450052005F0043004F004C004F00
      52005F00490044000100000000001400000043004F004C004F0052005F004E00
      41004D0045000100000000001C0000004F005000450052005F0043004F005500
      4E0054005F0049004E005300010000000000220000004F005000450052005F00
      54004F004C005300430048005F00520041004E0047004500010000000000}
    Master = Db_Details_Temp
    MasterFields = 'Id_Row'
    Session = DM_Main.Session
    Left = 704
    Top = 392
    object Db_Operations_TempID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
    end
    object Db_Operations_TempROW_NUM_GEN: TStringField
      FieldName = 'ROW_NUM_GEN'
      Size = 50
    end
    object Db_Operations_TempPRIM: TStringField
      FieldName = 'PRIM'
      Size = 2000
    end
    object Db_Operations_TempOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 200
    end
    object Db_Operations_TempOPER_IOT: TStringField
      FieldName = 'OPER_IOT'
      Size = 200
    end
    object Db_Operations_TempCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Operations_TempCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Operations_TempOPER_OBOR_EN: TFloatField
      FieldName = 'OPER_OBOR_EN'
    end
    object Db_Operations_TempOPER_OBOR_TIME_PZ: TFloatField
      FieldName = 'OPER_OBOR_TIME_PZ'
    end
    object Db_Operations_TempOPER_OBOR_TIME_SH: TFloatField
      FieldName = 'OPER_OBOR_TIME_SH'
    end
    object Db_Operations_TempOBOR_ID: TFloatField
      FieldName = 'OBOR_ID'
    end
    object Db_Operations_TempOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 200
    end
    object Db_Operations_TempPROF_CODE: TFloatField
      FieldName = 'PROF_CODE'
    end
    object Db_Operations_TempENVIRON: TStringField
      FieldName = 'ENVIRON'
      Size = 200
    end
    object Db_Operations_TempHARDNESS: TStringField
      FieldName = 'HARDNESS'
      Size = 200
    end
    object Db_Operations_TempT_MIN: TFloatField
      FieldName = 'T_MIN'
    end
    object Db_Operations_TempT_MAX: TFloatField
      FieldName = 'T_MAX'
    end
    object Db_Operations_TempTIME_MIN: TFloatField
      FieldName = 'TIME_MIN'
    end
    object Db_Operations_TempTIME_MAX: TFloatField
      FieldName = 'TIME_MAX'
    end
    object Db_Operations_TempTIME_EDIZM: TStringField
      FieldName = 'TIME_EDIZM'
      Size = 2
    end
    object Db_Operations_TempTIME_EDIZM_NAME: TStringField
      FieldName = 'TIME_EDIZM_NAME'
      Size = 200
    end
    object Db_Operations_TempOPER_KOID: TFloatField
      FieldName = 'OPER_KOID'
    end
    object Db_Operations_TempOPER_KUP: TFloatField
      FieldName = 'OPER_KUP'
    end
    object Db_Operations_TempOPER_PPPD: TFloatField
      FieldName = 'OPER_PPPD'
    end
    object Db_Operations_TempOPER_OPPP_DET: TFloatField
      FieldName = 'OPER_OPPP_DET'
    end
    object Db_Operations_TempOPER_KDP: TFloatField
      FieldName = 'OPER_KDP'
    end
    object Db_Operations_TempOPER_KDA: TFloatField
      FieldName = 'OPER_KDA'
    end
    object Db_Operations_TempOPER_KSL: TFloatField
      FieldName = 'OPER_KSL'
    end
    object Db_Operations_TempOPER_TOLSCH: TFloatField
      FieldName = 'OPER_TOLSCH'
    end
    object Db_Operations_TempOPER_CHS_PARAMS: TStringField
      FieldName = 'OPER_CHS_PARAMS'
      Size = 200
    end
    object Db_Operations_TempOPER_COLOR_ID: TFloatField
      FieldName = 'OPER_COLOR_ID'
    end
    object Db_Operations_TempCOLOR_NAME: TStringField
      FieldName = 'COLOR_NAME'
      Size = 200
    end
    object Db_Operations_TempOPER_COUNT_INS: TFloatField
      FieldName = 'OPER_COUNT_INS'
    end
    object Db_Operations_TempOPER_TOLSCH_RANGE: TStringField
      FieldName = 'OPER_TOLSCH_RANGE'
      Size = 30
    end
  end
  object Db_Details_Temp: TOracleDataSet
    SQL.Strings = (
      'Select t.Id Id_Row,'
      '       t.Det_Id,'
      '       t.Det_Num,'
      '       t.Det_Name,'
      '       t.Det_Mat_Id,'
      '       t.Det_Mat_Name,'
      '       t.Det_Mass,'
      '       t.Difc_Group,'
      '       t.Det_Ev_Id,'
      '       t.Det_Ev_Name, '
      '       t.rowid '
      'From   Ogt.TP_GKTTP_DET_DLP_TEMP t'
      'order by t.Det_Num')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000A0000000C000000490044005F0052004F0057000100000000000C00
      00004400450054005F00490044000100000000000E0000004400450054005F00
      4E0055004D00010000000000100000004400450054005F004E0041004D004500
      010000000000140000004400450054005F004D00410054005F00490044000100
      00000000180000004400450054005F004D00410054005F004E0041004D004500
      010000000000100000004400450054005F004D00410053005300010000000000
      1400000044004900460043005F00470052004F00550050000100000000001200
      00004400450054005F00450056005F0049004400010000000000160000004400
      450054005F00450056005F004E0041004D004500010000000000}
    Session = DM_Main.Session
    Left = 288
    Top = 592
    object Db_Details_TempID_ROW: TFloatField
      FieldName = 'ID_ROW'
    end
    object Db_Details_TempDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Details_TempDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 100
    end
    object Db_Details_TempDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 150
    end
    object Db_Details_TempDET_MAT_ID: TFloatField
      FieldName = 'DET_MAT_ID'
    end
    object Db_Details_TempDET_MAT_NAME: TStringField
      FieldName = 'DET_MAT_NAME'
      Size = 150
    end
    object Db_Details_TempDET_MASS: TFloatField
      FieldName = 'DET_MASS'
    end
    object Db_Details_TempDIFC_GROUP: TFloatField
      FieldName = 'DIFC_GROUP'
    end
    object Db_Details_TempDET_EV_ID: TFloatField
      FieldName = 'DET_EV_ID'
    end
    object Db_Details_TempDET_EV_NAME: TStringField
      FieldName = 'DET_EV_NAME'
      Size = 4
    end
  end
end
