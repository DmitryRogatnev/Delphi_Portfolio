object Frame_TechProc_List: TFrame_TechProc_List
  Left = 0
  Top = 0
  Width = 1150
  Height = 720
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'clWindowText'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1150
    Height = 720
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel_Main_Info: TPanel
      Left = 1
      Top = 25
      Width = 1148
      Height = 694
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        1148
        694)
      object Grid_Docs_List: TDBGridEh
        Left = 0
        Top = 6
        Width = 241
        Height = 691
        Anchors = [akLeft, akTop, akBottom]
        DataSource = Data_Info
        DynProps = <>
        EvenRowColor = clMenu
        Flat = True
        HorzScrollBar.VisibleMode = sbNeverShowEh
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = Pop_M
        RowDetailPanel.VertSizing = True
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        TabOrder = 0
        TreeViewParams.GlyphStyle = tvgsExplorerThemedEh
        OnDblClick = Grid_Docs_ListDblClick
        OnGetCellParams = Grid_Docs_ListGetCellParams
        Columns = <
          item
            CellButtons = <
              item
                Hint = #1055#1086#1076#1087#1080#1089#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
                Images.NormalImages = Form_Tech_Proc_Main.ImageList1
                Images.NormalIndex = 10
                Images.HotIndex = -1
                Images.PressedIndex = -1
                Images.DisabledIndex = -1
                ShortCut = 0
                Style = ebsGlyphEh
                Visible = False
                Width = 20
                DrawBackTime = edbtNeverEh
                OnClick = Grid_Docs_ListColumns0CellButtons0Click
                HorzPlacement = ebhpLeftEh
                OnDraw = Grid_Docs_ListColumns0CellButtons1Draw
              end
              item
                Hint = #1055#1077#1095#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
                Images.NormalImages = Form_Tech_Proc_Main.ImageList1
                Images.NormalIndex = 38
                Images.HotIndex = -1
                Images.PressedIndex = -1
                Images.DisabledIndex = -1
                ShortCut = 0
                Style = ebsGlyphEh
                Visible = False
                Width = 20
                DrawBackTime = edbtWhenHotEh
                OnClick = Grid_Docs_ListColumns0CellButtons1Click
                HorzPlacement = ebhpLeftEh
                OnDraw = Grid_Docs_ListColumns0CellButtons1Draw
              end>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_NUM'
            Footers = <>
            Title.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Width = 226
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATA_REG'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_VERS'
            Footers = <>
            Title.Caption = #1042#1077#1088#1089#1080#1103
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CEH_CODE'
            Footers = <>
            Title.Caption = #1062#1077#1093
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AUTHOR_NAME'
            Footers = <>
            Title.Caption = #1040#1074#1090#1086#1088
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REASON'
            Footers = <>
            Title.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1074#1099#1087#1091#1089#1082#1072
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_LITER'
            Footers = <>
            Title.Caption = #1051#1080#1090#1077#1088#1072
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_TYPE_NAME'
            Footers = <>
            Title.Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TP_NUM'
            Footers = <>
            Title.Caption = #1053#1086#1084#1077#1088' '#1058#1055
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TP_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1058#1055
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TP_WORK_TYPE_NAME'
            Footers = <>
            Title.Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IZD_NAME_TYPE'
            Footers = <>
            Title.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077'/'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DET_NUM_NAME'
            Footers = <>
            Title.Caption = #1064#1080#1092#1088'/'#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080'/'#1089#1073#1086#1088#1082#1080
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DET_MAR'
            Footers = <>
            Title.Caption = #1052#1072#1088#1096#1088#1091#1090' '#1076#1077#1090#1072#1083#1080'/'#1089#1073#1086#1088#1082#1080
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MAIN_DOC_NUM'
            Footers = <>
            Title.Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CANCEL_DOC_NUM'
            Footers = <>
            Title.Caption = #1047#1072#1084#1077#1085#1077#1085' '#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACT_NUM'
            Footers = <>
            Title.Caption = #8470' '#1072#1082#1090#1072
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACT_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1072#1082#1090#1072
          end>
        object RowDetailData: TRowDetailPanelControlEh
          object Grid_Cehs_Docs: TDBGridEh
            Left = 0
            Top = 0
            Width = 0
            Height = 0
            Align = alClient
            AutoFitColWidths = True
            DynProps = <>
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DOC_NUM'
                Footers = <>
                Title.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object VGrid_Info: TDBVertGridEh
        Left = 247
        Top = 3
        Width = 901
        Height = 327
        AllowedSelections = []
        Anchors = [akLeft, akTop, akRight]
        RowCategories.CategoryProps = <>
        PrintService.ColorSchema = pcsFullColorEh
        DataSource = Data_Info
        DrawGraphicData = True
        DrawMemoText = True
        Flat = True
        TabOrder = 1
        LabelColWidth = 237
        OnGetCellParams = VGrid_InfoGetCellParams
        Rows = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_HEADER_ID'
            RowLabel.Caption = 'ID'
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_VERS'
            RowLabel.Caption = #1042#1077#1088#1089#1080#1103
          end
          item
            ButtonStyle = cbsNone
            DynProps = <>
            DropDownFormParams.DropDownFormClassName = 'TDropDown_Filter'
            EditButton.DropDownFormParams.DropDownFormClassName = 'TDropDown_Filter'
            EditButton.Visible = False
            EditButtons = <
              item
                DropDownFormParams.Align = daRight
                DropDownFormParams.SaveFormSize = False
              end>
            FieldName = 'DOC_NUM'
            RowLabel.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          end
          item
            ButtonStyle = cbsNone
            DynProps = <>
            EditButton.Enabled = False
            EditButton.Visible = False
            EditButtons = <
              item
                DropDownFormParams.DropDownFormClassName = 'TDropDown_Filter'
              end>
            FieldName = 'DATA_REG'
            RowLabel.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATE_START_ROUTE'
            RowLabel.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'CANCEL_FLAG_NAME'
            RowLabel.Caption = #1057#1090#1072#1090#1091#1089
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'MAIN_DOC_NUM'
            RowLabel.Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PARENT_DOC'
            RowLabel.Caption = #1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'CEH_CODE'
            RowLabel.Caption = #1062#1077#1093
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'AUTHOR_NAME'
            RowLabel.Caption = #1040#1074#1090#1086#1088
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'REASON'
            RowLabel.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1074#1099#1087#1091#1089#1082#1072
          end
          item
            DynProps = <>
            EditButtons = <
              item
                DropDownFormParams.DropDownFormClassName = 'TDropDown_Filter'
              end>
            FieldName = 'DOC_LITER'
            RowLabel.Caption = #1051#1080#1090#1077#1088#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_TYPE_NAME'
            RowLabel.Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TP_NUM'
            RowLabel.Caption = #1053#1086#1084#1077#1088' '#1058#1055
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TP_NAME'
            RowLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1058#1055
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TP_WORK_TYPE_NAME'
            RowLabel.Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'IZD_NAME_TYPE'
            RowLabel.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077' / '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DET_NUM_NAME'
            RowLabel.Caption = #1064#1080#1092#1088' / '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080' / '#1089#1073#1086#1088#1082#1080
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DET_MAR'
            RowLabel.Caption = #1052#1072#1088#1096#1088#1091#1090' '#1076#1077#1090#1072#1083#1080' / '#1089#1073#1086#1088#1082#1080
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'CANCEL_DOC_NUM'
            RowLabel.Caption = #1047#1072#1084#1077#1085#1077#1085' '#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACT_NUM'
            RowLabel.Caption = #8470' '#1072#1082#1090#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACT_DATE'
            RowLabel.Caption = #1044#1072#1090#1072' '#1072#1082#1090#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'CANCEL_FLAG'
            Visible = False
          end>
      end
      object Grid_Doc_Appr: TDBGridEh
        Left = 247
        Top = 336
        Width = 901
        Height = 358
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoFitColWidths = True
        DataSource = Data_Appr
        DynProps = <>
        Flat = True
        EmptyDataInfo.Active = True
        EmptyDataInfo.Text = #1053#1077#1090' '#1084#1072#1088#1096#1088#1091#1090#1072'...'
        RowDetailPanel.Height = 150
        RowDetailPanel.VertSizing = True
        SearchPanel.Enabled = True
        TabOrder = 2
        OnGetCellParams = Grid_Doc_ApprGetCellParams
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEP_CODE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1093' / '#1086#1090#1076#1077#1083
            Width = 82
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'POINT_NAME'
            Footers = <>
            Title.Caption = #1057#1086#1075#1083#1072#1089#1091#1102#1097#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATE_IN'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
            Width = 115
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATE_OUT'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103
            Width = 110
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EMP_FIO'
            Footers = <>
            Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RESULT_NAME'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 150
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel_Main_Filter_Btn: TPanel
      Left = 1
      Top = 1
      Width = 1148
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object Btn_Open_Filters: TButton
        Left = 0
        Top = 0
        Width = 130
        Height = 24
        Align = alLeft
        Caption = #1060#1080#1083#1100#1090#1088#1099
        ImageIndex = 52
        Images = Form_Tech_Proc_Main.ImageList1
        TabOrder = 0
        OnClick = Btn_Open_FiltersClick
      end
      object Btn_Refresh_Info: TButton
        Left = 1122
        Top = 0
        Width = 26
        Height = 24
        Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
        Align = alRight
        HotImageIndex = 5
        ImageAlignment = iaCenter
        ImageIndex = 5
        Images = Form_Tech_Proc_Main.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = Btn_Refresh_InfoClick
      end
    end
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 0
    Width = 0
    Height = 720
    AnimationDelay = 10
    AnimationStep = 100
    Opened = False
    OpenedWidth = 400
    Placement = svpLeft
    TabOrder = 1
    object VGrid_Filter: TDBVertGridEh
      Left = 0
      Top = 0
      Width = 0
      Height = 720
      Align = alClient
      AllowedSelections = []
      RowCategories.CategoryProps = <>
      PrintService.ColorSchema = pcsFullColorEh
      DataSource = Data_Filters
      DrawGraphicData = True
      DrawMemoText = True
      Flat = True
      ReadOnly = True
      SearchPanel.Enabled = True
      TabOrder = 0
      LabelColWidth = 150
      OnGetCellParams = VGrid_FilterGetCellParams
    end
  end
  object Db_Info: TOracleDataSet
    SQL.Strings = (
      '/*FROM START*/'
      'Select *'
      'From ('
      'Select  t.Id,'
      '        t.Id_Vers,'
      '        t.Id_Doc_Full,'
      '        t.Doc_Header_Id,'
      '        r.Date_Start_Route,'
      '        t.Doc_Num, '
      '        t.Parent_Doc_Id,'
      #9'p.Doc_Num Parent_Doc,'
      '        t.Main_Doc_Id, '
      '        t.Create_User_Id,'
      '        Main_D.Doc_Num Main_Doc_Num,'
      '        t.Cancel_Doc_Id,  '
      '        Canc_D.Doc_Num Cancel_Doc_Num,'
      '        ( Case '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Not Null Then 1'
      
        #9'    When t.Date_End_Action Is Null And t.Date_Start_Action Is N' +
        'ot Null and r.Date_End_Route is Not Null Then 0'
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers > 1 Then 2'
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers = 1 Then 1'
      '          End ) Cancel_Flag,'
      '        ( Case '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Not Null Then '#39#1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#39
      
        '            When t.Date_End_Action Is Null And t.Date_Start_Acti' +
        'on Is Null Then '#39#1040#1082#1090#1091#1072#1083#1077#1085#39' '
      
        '            When t.Date_End_Action Is Null And t.Date_Start_Acti' +
        'on Is Not Null and r.Date_End_Route is Not Null Then '#39#1059#1090#1074#1077#1088#1078#1076#1077#1085#39 +
        ' '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers > 1 Then '#39#1053#1077' '#1072#1082#1090#1091#1072#1083#1077#1085#39'  '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers = 1 Then '#39#1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#39
      '          End ) Cancel_Flag_Name,'
      '        t.Det_Id,'
      '        t.Det_Num||'#39' '#39'||t.Det_Name Det_Num_Name,'
      '        t.Ceh_Id,'
      '        t.Ceh_Code,'
      '        t.Project_Flag,'
      '        u.Emp_Id Author_Lnum, '
      '        u.Emp_Fio Author_Name,'
      '        t.Data_Reg,'
      '        t.Reason,'
      '        t.Ceh_Docs_Flag,'
      '        t.Det_Mar,'
      '        t.Doc_Type,'
      '        ( Case t.Doc_Type '
      '            When 1'
      '            Then '#39#1045#1076#1080#1085#1080#1095#1085#1099#1081#39
      '            When 2'
      '            Then '#39#1058#1080#1087#1086#1074#1086#1081#39
      '            When 3'
      '            Then '#39#1043#1088#1091#1087#1087#1086#1074#1086#1081#39
      '            When 4'
      '            Then '#39#1042#1077#1076#1086#1084#1086#1089#1090#1100#39
      '            When 5'
      '            Then '#39#1050#1086#1084#1087#1083#1077#1082#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074#39
      '          End ) Doc_Type_Name,'
      '        t.Doc_Liter,'
      '        t.Tp_Num,'
      '        t.Tp_Name,        '
      '        t.Tp_Work_Type,'
      '        t.Flag_Imp,'
      '        ( Case t.Flag_Imp'
      '            When 1 Then '#39#1057#1087#1077#1094#1080#1072#1083#1100#1085#1099#1081#39
      '            When 2 Then '#39#1054#1090#1074#1077#1090#1089#1074#1090#1077#1085#1085#1099#1081#39'  '
      '            When 0 Then '#39#1053#1077' '#1091#1082#1072#1079#1072#1085#39'      '
      '          End ) Flag_Imp_Name,'
      '        (Case '
      '           when t.Tp_Work_Type is Null then Null'
      '           else '#39'('#39'||t.Tp_Work_Type||'#39') '#39'||t.Tp_Work_Type_Name '
      '         End) Tp_Work_Type_Name,        '
      '        ( Case t.Doc_Type'
      '            When 1'
      '            Then Det.Primen_txt'
      '            When 5'
      '            Then t.Izd_Name'
      '            When 4'
      '            Then t.Izd_Name'
      '         End ) As Izd_Name_Type,'
      '        ( Case t.Doc_Type'
      '            When 1'
      '            Then Det.Primen_Id'
      '            When 5'
      '            Then t.Izd_Id'
      '            When 4'
      '            Then t.Izd_Id'
      '         End ) As Izd_Id,'
      '        t.Act_Num,'
      '        t.Act_Date,'
      '        (Case'
      '           When n.Doc_Header_Id is Null Then 0'
      '           Else 1 '
      '         End) Negative_Flag'
      'From    Src.V_Tech_Proc t'
      'Left    Join Stp.V_Users u'
      'On      t.Create_User_Id=u.Id_User'
      '        And t.Create_User_Id_Add=u.Id_User_Add'
      'Left    Join Src.V_Doc_Routs r'
      'On      r.Doc_Header_Id = t.Doc_Header_Id'
      'Left    Join Ogt.v_Spr_Tp_Doc P'
      'On      p.Doc_Header_Id = t.PARENT_DOC_ID'
      'Left    Join Ogt.Spr_Det_Txt Det'
      'On      Det.Id = t.Det_Id  '
      'Left    Join Ogt.v_Spr_Tp_Doc_Actual Main_D'
      'On      Main_D.Id = t.Main_Doc_Id'
      'Left    Join Ogt.v_Spr_Tp_Doc_Actual Canc_D'
      'On      Canc_D.Id = t.Cancel_Doc_Id '
      'Left    Join (Select Distinct t.Doc_Rout_Id Doc_Header_Id'
      '              From   Src.V_Doc_Rout_Points t'
      '              Join Stp.v_Doc_Resolution_Results r'
      
        '              On     r.Id_Doc_Resolution_Result = t.Stp_Doc_Reso' +
        'lution_Result_Id'
      '              Where  r.Result_Value = -1) n'
      'On      n.Doc_Header_Id = t.Doc_Header_Id ) a'
      'Where   /*FILTER START*/ (1=1) /*FILTER END*/'
      '        And  (Case '
      
        '          When Stp.pkg_user.f_check_task_acc(in_task => '#39'TECH_PR' +
        'OC'#39')=1 then 1         '
      
        #9#9#9#9#9'When Stp.pkg_user.f_check_task_acc(in_task => '#39'TECH_PROC'#39')=' +
        '0 and Cancel_Flag=0 Then 1'
      #9#9#9#9#9'Else 0'
      #9#9#9#9'End)=1'
      '/*FROM END*/'
      'Order by a.Data_Reg Desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000002800000004000000490044000100000000000E00000044004F004300
      5F004E0055004D000100000000000C0000004400450054005F00490044000100
      000000000C0000004300450048005F0049004400010000000000160000004100
      5500540048004F0052005F004C004E0055004D00010000000000100000004400
      4100540041005F005200450047000100000000000C0000005200450041005300
      4F004E000100000000001A000000430041004E00430045004C005F0044004F00
      43005F0049004400010000000000160000004D00410049004E005F0044004F00
      43005F0049004400010000000000180000004400450054005F004E0055004D00
      5F004E0041004D0045000100000000001600000041005500540048004F005200
      5F004E0041004D0045000100000000001C000000430041004E00430045004C00
      5F0044004F0043005F004E0055004D00010000000000180000004D0041004900
      4E005F0044004F0043005F004E0055004D000100000000001600000043004100
      4E00430045004C005F0046004C00410047000100000000001A00000043004500
      48005F0044004F00430053005F0046004C00410047000100000000000E000000
      4400450054005F004D00410052000100000000001000000044004F0043005F00
      54005900500045000100000000001200000044004F0043005F004C0049005400
      450052000100000000001A00000044004F0043005F0054005900500045005F00
      4E0041004D0045000100000000000C000000540050005F004E0055004D000100
      000000000E000000540050005F004E0041004D00450001000000000018000000
      540050005F0057004F0052004B005F0054005900500045000100000000002200
      0000540050005F0057004F0052004B005F0054005900500045005F004E004100
      4D0045000100000000001000000046004C00410047005F0049004D0050000100
      000000001A00000049005A0044005F004E0041004D0045005F00540059005000
      4500010000000000100000004300450048005F0043004F004400450001000000
      000020000000430041004E00430045004C005F0046004C00410047005F004E00
      41004D0045000100000000001A00000046004C00410047005F0049004D005000
      5F004E0041004D00450001000000000018000000500052004F004A0045004300
      54005F0046004C00410047000100000000001A00000044004F0043005F004800
      450041004400450052005F00490044000100000000000E000000410043005400
      5F004E0055004D00010000000000100000004100430054005F00440041005400
      45000100000000000C00000049005A0044005F00490044000100000000000E00
      0000490044005F00560045005200530001000000000016000000490044005F00
      44004F0043005F00460055004C004C000100000000001A0000004E0045004700
      410054004900560045005F0046004C0041004700010000000000140000005000
      4100520045004E0054005F0044004F0043000100000000002000000044004100
      540045005F00530054004100520054005F0052004F0055005400450001000000
      00001C0000004300520045004100540045005F0055005300450052005F004900
      44000100000000001A00000050004100520045004E0054005F0044004F004300
      5F0049004400010000000000}
    UniqueFields = 'Doc_Header_Id'
    Session = DM_Main.Session
    AfterScroll = Db_InfoAfterScroll
    AfterRefresh = Db_InfoAfterScroll
    Left = 472
    Top = 496
    object Db_InfoID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_InfoID_VERS: TIntegerField
      FieldName = 'ID_VERS'
      Required = True
    end
    object Db_InfoID_DOC_FULL: TStringField
      FieldName = 'ID_DOC_FULL'
      Size = 14
    end
    object Db_InfoDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_InfoDATE_START_ROUTE: TDateTimeField
      FieldName = 'DATE_START_ROUTE'
    end
    object Db_InfoDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_InfoPARENT_DOC_ID: TIntegerField
      FieldName = 'PARENT_DOC_ID'
    end
    object Db_InfoPARENT_DOC: TStringField
      FieldName = 'PARENT_DOC'
      Size = 15
    end
    object Db_InfoMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_InfoCREATE_USER_ID: TStringField
      FieldName = 'CREATE_USER_ID'
      Required = True
      Size = 30
    end
    object Db_InfoMAIN_DOC_NUM: TStringField
      FieldName = 'MAIN_DOC_NUM'
      Size = 15
    end
    object Db_InfoCANCEL_DOC_ID: TFloatField
      FieldName = 'CANCEL_DOC_ID'
    end
    object Db_InfoCANCEL_DOC_NUM: TStringField
      FieldName = 'CANCEL_DOC_NUM'
      Size = 15
    end
    object Db_InfoCANCEL_FLAG: TFloatField
      FieldName = 'CANCEL_FLAG'
    end
    object Db_InfoCANCEL_FLAG_NAME: TStringField
      FieldName = 'CANCEL_FLAG_NAME'
      Size = 11
    end
    object Db_InfoDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_InfoDET_NUM_NAME: TStringField
      FieldName = 'DET_NUM_NAME'
      Size = 151
    end
    object Db_InfoCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_InfoCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_InfoPROJECT_FLAG: TIntegerField
      FieldName = 'PROJECT_FLAG'
    end
    object Db_InfoAUTHOR_LNUM: TIntegerField
      FieldName = 'AUTHOR_LNUM'
    end
    object Db_InfoAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object Db_InfoDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object Db_InfoREASON: TStringField
      FieldName = 'REASON'
      Size = 1000
    end
    object Db_InfoCEH_DOCS_FLAG: TFloatField
      FieldName = 'CEH_DOCS_FLAG'
    end
    object Db_InfoDET_MAR: TStringField
      FieldName = 'DET_MAR'
      Size = 100
    end
    object Db_InfoDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_InfoDOC_TYPE_NAME: TStringField
      FieldName = 'DOC_TYPE_NAME'
      Size = 19
    end
    object Db_InfoDOC_LITER: TStringField
      FieldName = 'DOC_LITER'
      Size = 2
    end
    object Db_InfoTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object Db_InfoTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object Db_InfoTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object Db_InfoFLAG_IMP: TFloatField
      FieldName = 'FLAG_IMP'
    end
    object Db_InfoFLAG_IMP_NAME: TStringField
      FieldName = 'FLAG_IMP_NAME'
      Size = 13
    end
    object Db_InfoTP_WORK_TYPE_NAME: TStringField
      FieldName = 'TP_WORK_TYPE_NAME'
      Size = 146
    end
    object Db_InfoIZD_NAME_TYPE: TStringField
      FieldName = 'IZD_NAME_TYPE'
      Size = 4000
    end
    object Db_InfoIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object Db_InfoACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
    end
    object Db_InfoACT_DATE: TDateTimeField
      FieldName = 'ACT_DATE'
    end
    object Db_InfoNEGATIVE_FLAG: TFloatField
      FieldName = 'NEGATIVE_FLAG'
    end
  end
  object Data_Info: TDataSource
    DataSet = Db_Info
    Left = 472
    Top = 456
  end
  object Pop_M: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    OnPopup = Pop_MPopup
    Left = 412
    Top = 360
    object PM_Btn_Create: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100
      ImageIndex = 6
      OnClick = PM_Btn_CreateClick
    end
    object PM_Btn_New_Vers: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1074#1077#1088#1089#1080#1102' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      ImageIndex = 25
      OnClick = PM_Btn_New_VersClick
    end
    object PM_Btn_Edit: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '
      ImageIndex = 7
      object PM_Btn_Edit_Doc_Info: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1102
        ImageIndex = 15
        OnClick = PM_Btn_Edit_Doc_InfoClick
      end
      object PM_Btn_Edit_Doc_Tech_Proc: TMenuItem
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090
        ImageIndex = 14
        OnClick = PM_Btn_Edit_Doc_Tech_ProcClick
      end
    end
    object PM_Btn_Doc_Edit: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 14
      OnClick = PM_Btn_Edit_Doc_Tech_ProcClick
    end
    object N1: TMenuItem
      Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1077#1077' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077
      ImageIndex = 61
      OnClick = N1Click
    end
    object PM_Btn_Sign_Doc: TMenuItem
      Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 10
      OnClick = PM_Btn_Sign_DocClick
    end
    object PM_Btn_UnSign_Doc: TMenuItem
      Caption = #1057#1085#1103#1090#1100' '#1087#1086#1076#1087#1080#1089#1100
      ImageIndex = 11
      OnClick = PM_Btn_UnSign_DocClick
    end
    object PM_Btn_Merge_Doc: TMenuItem
      Caption = #1057#1083#1080#1103#1085#1080#1077' '#1089' '#1088#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1081' '#1074#1077#1088#1089#1080#1077#1081
      ImageIndex = 57
      OnClick = PM_Btn_Merge_DocClick
    end
    object PM_Btn_CoAuthors: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1089#1086#1072#1074#1090#1086#1088#1089#1090#1074#1072
      ImageIndex = 60
      OnClick = PM_Btn_CoAuthorsClick
    end
    object PM_Btn_Doc_Delete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 41
      OnClick = PM_Btn_Doc_DeleteClick
    end
    object PM_Btn_Doc_Print: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      ImageIndex = 38
      object PM_Btn_Doc_See_Main_Doc_Rep: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088
        ImageIndex = 44
        OnClick = PM_Btn_Doc_See_Main_Doc_RepClick
      end
      object PM_Btn_Doc_See_Main_Doc_Rep_W_Files: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089' '#1087#1088#1080#1083#1086#1078#1077#1085#1085#1099#1084' '#1092#1072#1081#1083#1072#1084#1080
        OnClick = PM_Btn_Doc_See_Main_Doc_RepClick
      end
      object PM_Btn_Doc_See_Main_Doc_Export: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090
        object PM_Btn_Doc_See_Main_Doc_Export_PDF: TMenuItem
          Caption = 'PDF'
          ImageIndex = 46
          OnClick = PM_Btn_Doc_See_Main_Doc_RepClick
        end
        object PM_Doc_See_Main_Doc_Export_Excel: TMenuItem
          Caption = 'Excel'
          ImageIndex = 47
          OnClick = PM_Btn_Doc_See_Main_Doc_RepClick
        end
      end
      object PM_Btn_Doc_See_Doc_By_Ceh: TMenuItem
        Caption = #1055#1086' '#1094#1077#1093#1091' / '#1086#1090#1076#1077#1083#1091
        object PM_Btn_Doc_See_Doc_By_Ceh_Rep: TMenuItem
          Caption = #1055#1088#1086#1089#1084#1086#1090#1088
          OnClick = PM_Btn_Doc_See_Main_Doc_RepClick
        end
        object PM_Btn_Doc_See_Doc_By_Ceh_Rep_Export: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090
          object PM_Btn_Doc_See_Doc_By_Ceh_Rep_Export_PDF: TMenuItem
            Caption = 'PDF'
            OnClick = PM_Btn_Doc_See_Main_Doc_RepClick
          end
          object PM_Btn_Doc_See_Doc_By_Ceh_Rep_Export_Excel: TMenuItem
            Caption = 'Excel'
            OnClick = PM_Btn_Doc_See_Main_Doc_RepClick
          end
        end
      end
    end
    object Pop_M_Main_Btn_Doc_Changes: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1103' '#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
      ImageIndex = 37
      Visible = False
      OnClick = Pop_M_Main_Btn_Doc_ChangesClick
    end
    object Pop_M_Main_Btn_Doc_Files: TMenuItem
      Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1103
      ImageIndex = 8
      OnClick = Pop_M_Main_Btn_Doc_FilesClick
    end
    object Pop_M_Main_Btn_Doc_Com: TMenuItem
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      ImageIndex = 13
      OnClick = Pop_M_Main_Btn_Doc_ComClick
    end
    object Pop_M_Main_Btn_Doc_Lst: TMenuItem
      Caption = #1057#1087#1080#1089#1086#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      ImageIndex = 16
      object Pop_M_Main_Btn_Doc_Lst_Prnt: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100
        ImageIndex = 38
        OnClick = Pop_M_Main_Btn_Doc_Lst_PrntClick
      end
      object Pop_M_Main_Btn_Doc_Lst_Export: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090
        ImageIndex = 36
        OnClick = Pop_M_Main_Btn_Doc_Lst_ExportClick
      end
    end
  end
  object Save_Grid: TSaveDialog
    Filter = 
      #1044#1086#1082#1091#1084#1077#1085#1090' '#1074' '#1092#1086#1088#1084#1072#1090#1077' Excel|.xlsx|'#1058#1077#1082#1089#1090#1086#1074#1086#1081' '#1092#1072#1081#1083' '#1089' '#1088#1072#1079#1076#1077#1083#1080#1090#1077#1083#1077#1084' '#1090#1080#1087 +
      #1072' '#8216';'#8217' (*.txt)|.cvs|'#1042#1077#1073'-'#1089#1090#1088#1072#1085#1080#1094#1072' HTML|.htm|'#1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' (*.txt)' +
      '|.txt'
    Left = 416
    Top = 264
  end
  object Print_Grid: TPrintDBGridEh
    DBGridEh = Grid_Docs_List
    Options = [pghFitGridToPageWidth, pghRowAutoStretch, pghOptimalColWidths]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 1.000000000000000000
    Page.TopMargin = 1.000000000000000000
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
    Left = 498
    Top = 262
  end
  object PKG_TP_DOC: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Ogt.PKG_TP_DOC'
    Left = 600
    Top = 235
  end
  object Q_Delete_Doc: TOracleQuery
    SQL.Strings = (
      'Begin'
      'Delete '
      'From    Src.V_Tech_Proc a'
      'Where   a.Doc_Header_Id = :In_Doc_Tp_Id;'
      'Commit;'
      'End;')
    Session = DM_Main.Session
    Optimize = False
    Variables.Data = {
      04000000010000001A0000003A0049004E005F0044004F0043005F0054005000
      5F0049004400050000000000000000000000}
    Left = 592
    Top = 392
  end
  object Db_Appr: TOracleDataSet
    SQL.Strings = (
      'Select p.*,'
      '        ( Case '
      
        '            When inf.Date_End_Action Is Not Null And inf.Date_St' +
        'art_Action Is Not Null Then 1'
      '            When inf.Date_End_Action Is Null Then 0 '
      
        '            When inf.Date_End_Action Is Not Null And inf.Date_St' +
        'art_Action Is Null And inf.Id_Vers > 1 Then 2'
      
        '            When inf.Date_End_Action Is Not Null And inf.Date_St' +
        'art_Action Is Null And inf.Id_Vers = 1 Then 1'
      '          End ) Cancel_Flag'
      'From   Src.v_Tech_Proc inf'
      'Left   Join  Src.v_Doc_Routs r'
      'On     r.Doc_Header_Id = Inf.DOC_HEADER_ID'
      'Left   Join   (Select t.Id_Doc_Rout_Point,'
      '                      t.Doc_Rout_Id,'
      '                      t.Stp_Doc_Rout_Point_Id,'
      #9#9#9' ps.Dep_Code,'
      #9#9#9' t.Point_Position,'
      #9#9#9' t.Point_Name,'
      #9#9#9' (Case '
      
        '                            When Instr(t.Point_Position, '#39'1.'#39') <' +
        '> 0 '
      '                            Then r.Date_Start_Route'
      '                            Else s.Date_In '
      '                          End) Date_In,'
      #9#9#9' t.Result_Date Date_Out,'
      #9#9#9' (Case'
      '                            When s.Date_In Is Not Null '
      '                                 And t.Result_Date Is Null '
      '                            Then '#39#1053#1072' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1080#39
      
        '                            When Instr(t.Point_Position, '#39'1.'#39') <' +
        '> 0 '
      
        '                                 And r.Date_Start_Route Is Not N' +
        'ull'
      '                                 And t.Result_Date Is Null '
      '                            Then '#39#1053#1072' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1080#39
      '                            When s.Date_In Is Null '
      '                                 And t.Result_Date Is Null '
      '                            Then '#39#1053'e '#1087#1086#1083#1091#1095#1077#1085#39
      '                            Else r.Result_Name'
      '                          End) Result_Name,'
      #9#9#9' u.Emp_Fio,'
      #9#9#9' '#39'started'#39' Rout_Status'
      'From   Src.v_Doc_Rout_Points t'
      'Left   Join Src.V_Doc_Routs r'
      'On     r.Doc_Header_Id = t.Doc_Rout_Id'
      
        'Left   Join (Select Count(pp.Result_Date)/Count(c.P_DOC_ROUT_POI' +
        'NT_ID) Signed_Points,'
      '                    (Case'
      
        '                      When Max(Nvl(pp.Result_Date, to_Date('#39'01.0' +
        '1.0001'#39')))=to_Date('#39'01.01.0001'#39')'
      '                      Then Null'
      '                      Else Max(pp.Result_Date)'
      '                    End) Date_In,'
      '                    c.C_DOC_ROUT_POINT_ID Id_Doc_Rout_Point'
      '             From   Src.v_Doc_Rout_Point_Cnnctns c'
      #9#9#9#9#9#9' Left   Join Src.v_Doc_Rout_Points pp'
      #9#9#9#9#9#9' On     pp.Id_Doc_Rout_Point=c.P_DOC_ROUT_POINT_ID'
      
        '                    And pp.Stp_Doc_Resolution_Result_Id Is Not N' +
        'ull'
      #9#9#9#9#9#9#9#9#9#9'And pp.Stp_Doc_Resolution_Result_Id <>0'
      #9#9#9#9#9#9' Group  By c.C_DOC_ROUT_POINT_ID'
      #9#9#9#9#9#9' Union  All'
      #9#9#9#9#9#9' Select 1, r.Date_Start_Route, p.Id_Doc_Rout_Point'
      #9#9#9#9#9#9' From   Src.v_Doc_Rout_Points p'
      #9#9#9#9#9#9' Join   Src.v_Doc_Routs r'
      #9#9#9#9#9#9' On     r.Doc_Header_Id=p.Doc_Rout_Id'
      #9#9#9#9#9#9'        And Instr(p.Point_Position, '#39'1.'#39')<>0 ) s'
      'On  s.Id_Doc_Rout_Point = t.Id_Doc_Rout_Point'
      '      And s.Signed_Points=1'
      'Left   Join (Select Distinct ps.Doc_Rout_Point_Id, dep.dep_Code'
      '             From   Src.v_Doc_Rout_Point_Pstns ps'
      #9#9#9#9#9#9' Left   Join Src.v_Doc_Rout_Point_Pstn_Ds psd'
      
        #9#9#9#9#9#9' On     psd.Doc_Rout_Point_Pstn_Id = ps.Id_Doc_Rout_Point_' +
        'Pstn'
      #9#9#9#9#9#9' Left   Join Stp.v_Dep_Mmbr_Pstns dps'
      #9#9#9#9#9#9' On     dps.Id_dep_Mmbr_Pstn = ps.Dep_Mmbr_Pstn_Id'
      #9#9#9#9#9#9' Left   Join Stp.v_Deps dep'
      #9#9#9#9#9#9' On     dep.id_dep = Psd.Dep_Id'
      #9#9#9#9#9#9'  '#9#9#9'And Nvl(dep.Date_Effective, Sysdate) >= Sysdate) ps'
      'On     ps.Doc_Rout_Point_Id = t.Id_Doc_Rout_Point'
      'Left   Join Stp.v_Users u'
      'On     u.Id_User = t.Result_User_Id'
      '       And u.Id_User_Add = t.Result_User_Id_Add'
      'Left   Join Stp.v_Doc_Resolution_Results r'
      
        'On     r.Id_Doc_Resolution_Result = t.Stp_Doc_Resolution_Result_' +
        'Id'
      ''
      'Union All'
      ''
      'Select a.Id_Dc_Rt_Us_Pnt,'
      '       a.Doc_Header_Id,'
      '       a.Stp_Doc_Rout_Point_Id,'
      #9#9#9' Dep.dep_Code,'
      #9#9#9' a.Point_Position,'
      #9#9#9' a.Point_Name,'
      #9#9#9' Null,'
      #9#9#9' Null,'
      #9#9#9' '#39#1053#1077' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1086' '#1085#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077#39','
      #9#9#9' Null,'
      #9#9#9' '#39'not_started'#39
      'From   Src.v_Doc_Rout_User_Pnts a'
      'Left   Join Src.v_Doc_Rout_Us_Pnt_Deps udp'
      'On     udp.Dc_Rt_Us_Pnt_Id = a.Id_Dc_Rt_Us_Pnt'
      'Left   Join Stp.v_Deps dep'
      'On     dep.id_dep = udp.Dep_Id'
      #9#9#9' And Nvl(dep.Date_Effective, Sysdate) >= Sysdate'
      'Order  By Point_Position) p'
      'On     p.Doc_Rout_Id = Inf.DOC_HEADER_ID'
      '       And (Case '
      #9#9#9'        When r.Date_Start_Route Is Null Then '#39'not_started'#39' '
      #9#9#9'        Else '#39'started'#39
      #9#9#9'      End) = p.Rout_Status'
      'Where  Inf.DOC_HEADER_ID = :Doc_Header_Id'
      '/*select t.Id,'
      '       t.Id_Doc_Tp,'
      '       t.Cancel_Doc_Id,'
      '       t.Cancel_Flag,'
      '       t.Ceh_Id,'
      '       t.Flag_In,'
      '       t.Flag_Out,'
      '       t.Razrab,'
      '       t.Appr_Step,'
      '       t.Flag_Group, '
      '       t.Ceh_Code, '
      '       t.Main_Doc_Id, '
      '        ( ( Case '
      '             When t.Main_Doc_Id = t.Id_Doc_Tp'
      '             Then Null'
      '             Else '#39'('#39'||t.Doc_Num||'#39') '#39
      '           End )||t.Appr_Step_Name||( Case'
      
        '                                        When t.Appr_Step = '#39'006'#39 +
        ' Then '#39' ('#39'||Dep.Dep_Sname||'#39')'#39
      '                                        Else Null'
      '                                      End ) ) Appr_Step_Name,'
      '       t.Appr_Step_Id,'
      '       (Case'
      '         When t.Flag_In = 0 And t.Flag_Out = 0 Then '#39#1053#1077' '#1087#1086#1083#1091#1095#1077#1085#39
      
        '         When t.Flag_In = 1 And t.Flag_Out = 0 Then '#39#1053#1072' '#1088#1072#1089#1089#1084#1086#1090#1088 +
        #1077#1085#1080#1080#39
      '         When t.Flag_Out = 1 Then '#39#1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#39
      '         When t.Flag_Out = -1 Then '#39#1054#1090#1082#1072#1079#39
      '        End) as Status,'
      '       (Case'
      '          When t.Flag_Out = 0 Then Null'
      '          When t.Flag_Out In (1, -1) Then t.Razrab_Name'
      '        End) as Razrab_Name,'
      '       (Case'
      '          When t.Flag_In = 0 And t.Flag_Out = 0 Then Null'
      '          When t.Flag_In = 1 Then t.Date_In'
      '          When t.Flag_Out In (1, -1)Then t.Date_In'
      '        End) as Date_In,'
      '       (Case'
      '          When t.Flag_Out = 0 Then Null'
      '          When t.Flag_Out In (1, -1) Then t.Date_Out'
      '        End) as Date_Out'
      'From   Ogt.V_SPR_TP_DOC_APPR t'
      'Left   Join Stp.v_Deps Dep'
      'On     t.Dep_Id = Dep.Id_Dep'
      'Where  t.Doc_Header_Id = :Doc_Header_Id '
      'Order by Appr_Step_Id*/')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000C0000000E00000044004100540045005F0049004E00010000000000
      1000000044004100540045005F004F0055005400010000000000220000004900
      44005F0044004F0043005F0052004F00550054005F0050004F0049004E005400
      0100000000001600000044004F0043005F0052004F00550054005F0049004400
      010000000000100000004400450050005F0043004F0044004500010000000000
      1C00000050004F0049004E0054005F0050004F0053004900540049004F004E00
      0100000000001400000050004F0049004E0054005F004E0041004D0045000100
      000000001600000052004500530055004C0054005F004E0041004D0045000100
      000000000E00000045004D0050005F00460049004F0001000000000016000000
      52004F00550054005F005300540041005400550053000100000000002A000000
      5300540050005F0044004F0043005F0052004F00550054005F0050004F004900
      4E0054005F004900440001000000000016000000430041004E00430045004C00
      5F0046004C0041004700010000000000}
    Session = DM_Main.Session
    Left = 928
    Top = 552
    object Db_ApprID_DOC_ROUT_POINT: TIntegerField
      FieldName = 'ID_DOC_ROUT_POINT'
    end
    object Db_ApprDOC_ROUT_ID: TIntegerField
      FieldName = 'DOC_ROUT_ID'
    end
    object Db_ApprDEP_CODE: TStringField
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object Db_ApprPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Size = 30
    end
    object Db_ApprPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Size = 50
    end
    object Db_ApprDATE_OUT: TDateTimeField
      FieldName = 'DATE_OUT'
    end
    object Db_ApprRESULT_NAME: TStringField
      FieldName = 'RESULT_NAME'
      Size = 30
    end
    object Db_ApprEMP_FIO: TStringField
      FieldName = 'EMP_FIO'
      Size = 26
    end
    object Db_ApprROUT_STATUS: TStringField
      FieldName = 'ROUT_STATUS'
      Size = 11
    end
    object Db_ApprSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_ApprCANCEL_FLAG: TFloatField
      FieldName = 'CANCEL_FLAG'
    end
    object Db_ApprDATE_IN: TDateTimeField
      FieldName = 'DATE_IN'
    end
  end
  object Data_Appr: TDataSource
    DataSet = Db_Appr
    Left = 924
    Top = 504
  end
  object MemT_Filters: TMemTableEh
    Params = <>
    Left = 148
    Top = 178
  end
  object Data_Filters: TDataSource
    DataSet = MemT_Filters
    Left = 148
    Top = 122
  end
  object Db_Main_Info: TOracleDataSet
    SQL.Strings = (
      '/*FROM START*/'
      'Select *'
      'From ('
      'Select  t.Id,'
      '        t.Id_Vers,'
      '        t.Id_Doc_Full,'
      '        t.Doc_Header_Id,'
      '        r.Date_Start_Route,'
      '        t.Doc_Num, '
      '        t.Parent_Doc_Id,'
      #9'p.Doc_Num Parent_Doc,'
      '        t.Main_Doc_Id, '
      '        t.Create_User_Id,'
      '        Main_D.Doc_Num Main_Doc_Num,'
      '        t.Cancel_Doc_Id,  '
      '        Canc_D.Doc_Num Cancel_Doc_Num,'
      '        ( Case '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Not Null Then 1'
      
        #9'    When t.Date_End_Action Is Null And t.Date_Start_Action Is N' +
        'ot Null and r.Date_End_Route is Not Null Then 0'
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers > 1 Then 2'
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers = 1 Then 1'
      '          End ) Cancel_Flag,'
      '        ( Case '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Not Null Then '#39#1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#39
      
        '            When t.Date_End_Action Is Null And t.Date_Start_Acti' +
        'on Is Null Then '#39#1040#1082#1090#1091#1072#1083#1077#1085#39' '
      
        '            When t.Date_End_Action Is Null And t.Date_Start_Acti' +
        'on Is Not Null and r.Date_End_Route is Not Null Then '#39#1059#1090#1074#1077#1088#1078#1076#1077#1085#39 +
        ' '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers > 1 Then '#39#1053#1077' '#1072#1082#1090#1091#1072#1083#1077#1085#39'  '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers = 1 Then '#39#1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#39
      '          End ) Cancel_Flag_Name,'
      '        t.Det_Id,'
      '        t.Det_Num||'#39' '#39'||t.Det_Name Det_Num_Name,'
      '        t.Ceh_Id,'
      '        t.Ceh_Code,'
      '        t.Project_Flag,'
      '        u.Emp_Id Author_Lnum, '
      '        u.Emp_Fio Author_Name,'
      '        t.Data_Reg,'
      '        t.Reason,'
      '        t.Ceh_Docs_Flag,'
      '        t.Det_Mar,'
      '        t.Doc_Type,'
      '        d.Tp_Doc_Type_Name Doc_Type_Name,'
      '        t.Doc_Liter,'
      '        t.Tp_Num,'
      '        t.Tp_Name,        '
      '        t.Tp_Work_Type,'
      '        t.Flag_Imp,'
      '        ( Case t.Flag_Imp'
      '            When 1 Then '#39#1057#1087#1077#1094#1080#1072#1083#1100#1085#1099#1081#39
      '            When 2 Then '#39#1054#1090#1074#1077#1090#1089#1074#1090#1077#1085#1085#1099#1081#39'  '
      '            When 0 Then '#39#1053#1077' '#1091#1082#1072#1079#1072#1085#39'      '
      '          End ) Flag_Imp_Name,'
      '        (Case '
      '           when t.Tp_Work_Type is Null then Null'
      '           else '#39'('#39'||t.Tp_Work_Type||'#39') '#39'||t.Tp_Work_Type_Name '
      '         End) Tp_Work_Type_Name,        '
      '        ( Case t.Doc_Type'
      '            When 1'
      '            Then Det.Primen_txt'
      '            When 5'
      '            Then t.Izd_Name'
      '            When 4'
      '            Then t.Izd_Name'
      '         End ) As Izd_Name_Type,'
      '        ( Case t.Doc_Type'
      '            When 1'
      '            Then Det.Primen_Id'
      '            When 5'
      '            Then t.Izd_Id'
      '            When 4'
      '            Then t.Izd_Id'
      '         End ) As Izd_Id,'
      '        t.Act_Num,'
      '        t.Act_Date,'
      '        (Case'
      '           When n.Doc_Header_Id is Null Then 0'
      '           Else 1 '
      '         End) Negative_Flag'
      'From    Src.V_Tech_Proc t'
      'Left    Join Ogt.V_Spr_Tp_Doc_Types d'
      'On      t.Doc_Type=d.Id_Tp_Doc_Type'
      'Left    Join Stp.V_Users u'
      'On      t.Create_User_Id=u.Id_User'
      '        And t.Create_User_Id_Add=u.Id_User_Add'
      'Left    Join Src.V_Doc_Routs r'
      'On      r.Doc_Header_Id = t.Doc_Header_Id'
      'Left    Join Ogt.v_Spr_Tp_Doc P'
      'On      p.Doc_Header_Id = t.PARENT_DOC_ID'
      'Left    Join Ogt.Spr_Det_Txt Det'
      'On      Det.Id = t.Det_Id  '
      'Left    Join Ogt.v_Spr_Tp_Doc_Actual Main_D'
      'On      Main_D.Id = t.Main_Doc_Id'
      'Left    Join Ogt.v_Spr_Tp_Doc_Actual Canc_D'
      'On      Canc_D.Id = t.Cancel_Doc_Id '
      'Left    Join (Select Distinct t.Doc_Rout_Id Doc_Header_Id'
      '              From   Src.V_Doc_Rout_Points t'
      '              Join Stp.v_Doc_Resolution_Results r'
      
        '              On     r.Id_Doc_Resolution_Result = t.Stp_Doc_Reso' +
        'lution_Result_Id'
      '              Where  r.Result_Value = -1) n'
      'On      n.Doc_Header_Id = t.Doc_Header_Id ) a'
      'Where   /*FILTER START*/ (1=1) /*FILTER END*/'
      '        And  (Case '
      
        '          When Stp.pkg_user.f_check_task_acc(in_task => '#39'TECH_PR' +
        'OC'#39')=1 then 1         '
      
        #9#9#9#9#9'When Stp.pkg_user.f_check_task_acc(in_task => '#39'TECH_PROC'#39')=' +
        '0 and Cancel_Flag=0 Then 1'
      #9#9#9#9#9'Else 0'
      #9#9#9#9'End)=1'
      '/*FROM END*/'
      'Order by a.Data_Reg Desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000002800000004000000490044000100000000000E00000044004F004300
      5F004E0055004D000100000000000C0000004400450054005F00490044000100
      000000000C0000004300450048005F0049004400010000000000160000004100
      5500540048004F0052005F004C004E0055004D00010000000000100000004400
      4100540041005F005200450047000100000000000C0000005200450041005300
      4F004E000100000000001A000000430041004E00430045004C005F0044004F00
      43005F0049004400010000000000160000004D00410049004E005F0044004F00
      43005F0049004400010000000000180000004400450054005F004E0055004D00
      5F004E0041004D0045000100000000001600000041005500540048004F005200
      5F004E0041004D0045000100000000001C000000430041004E00430045004C00
      5F0044004F0043005F004E0055004D00010000000000180000004D0041004900
      4E005F0044004F0043005F004E0055004D000100000000001600000043004100
      4E00430045004C005F0046004C00410047000100000000001A00000043004500
      48005F0044004F00430053005F0046004C00410047000100000000000E000000
      4400450054005F004D00410052000100000000001000000044004F0043005F00
      54005900500045000100000000001200000044004F0043005F004C0049005400
      450052000100000000001A00000044004F0043005F0054005900500045005F00
      4E0041004D0045000100000000000C000000540050005F004E0055004D000100
      000000000E000000540050005F004E0041004D00450001000000000018000000
      540050005F0057004F0052004B005F0054005900500045000100000000002200
      0000540050005F0057004F0052004B005F0054005900500045005F004E004100
      4D0045000100000000001000000046004C00410047005F0049004D0050000100
      000000001A00000049005A0044005F004E0041004D0045005F00540059005000
      4500010000000000100000004300450048005F0043004F004400450001000000
      000020000000430041004E00430045004C005F0046004C00410047005F004E00
      41004D0045000100000000001A00000046004C00410047005F0049004D005000
      5F004E0041004D00450001000000000018000000500052004F004A0045004300
      54005F0046004C00410047000100000000001A00000044004F0043005F004800
      450041004400450052005F00490044000100000000000E000000410043005400
      5F004E0055004D00010000000000100000004100430054005F00440041005400
      45000100000000000C00000049005A0044005F00490044000100000000000E00
      0000490044005F00560045005200530001000000000016000000490044005F00
      44004F0043005F00460055004C004C000100000000001A0000004E0045004700
      410054004900560045005F0046004C0041004700010000000000140000005000
      4100520045004E0054005F0044004F0043000100000000002000000044004100
      540045005F00530054004100520054005F0052004F0055005400450001000000
      00001C0000004300520045004100540045005F0055005300450052005F004900
      44000100000000001A00000050004100520045004E0054005F0044004F004300
      5F0049004400010000000000}
    UniqueFields = 'Doc_Header_Id'
    QueryAllRecords = False
    Session = DM_Main.Session
    Left = 104
    Top = 344
    object Db_Main_InfoID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Main_InfoID_VERS: TIntegerField
      FieldName = 'ID_VERS'
      Required = True
    end
    object Db_Main_InfoID_DOC_FULL: TStringField
      FieldName = 'ID_DOC_FULL'
      Size = 14
    end
    object Db_Main_InfoDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Main_InfoDATE_START_ROUTE: TDateTimeField
      FieldName = 'DATE_START_ROUTE'
    end
    object Db_Main_InfoDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_Main_InfoPARENT_DOC_ID: TIntegerField
      FieldName = 'PARENT_DOC_ID'
    end
    object Db_Main_InfoPARENT_DOC: TStringField
      FieldName = 'PARENT_DOC'
      Size = 15
    end
    object Db_Main_InfoMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Main_InfoCREATE_USER_ID: TStringField
      FieldName = 'CREATE_USER_ID'
      Required = True
      Size = 30
    end
    object Db_Main_InfoMAIN_DOC_NUM: TStringField
      FieldName = 'MAIN_DOC_NUM'
      Size = 15
    end
    object Db_Main_InfoCANCEL_DOC_ID: TFloatField
      FieldName = 'CANCEL_DOC_ID'
    end
    object Db_Main_InfoCANCEL_DOC_NUM: TStringField
      FieldName = 'CANCEL_DOC_NUM'
      Size = 15
    end
    object Db_Main_InfoCANCEL_FLAG: TFloatField
      FieldName = 'CANCEL_FLAG'
    end
    object Db_Main_InfoCANCEL_FLAG_NAME: TStringField
      FieldName = 'CANCEL_FLAG_NAME'
      Size = 11
    end
    object Db_Main_InfoDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Main_InfoDET_NUM_NAME: TStringField
      FieldName = 'DET_NUM_NAME'
      Size = 151
    end
    object Db_Main_InfoCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Main_InfoCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Main_InfoPROJECT_FLAG: TIntegerField
      FieldName = 'PROJECT_FLAG'
    end
    object Db_Main_InfoAUTHOR_LNUM: TIntegerField
      FieldName = 'AUTHOR_LNUM'
    end
    object Db_Main_InfoAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object Db_Main_InfoDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object Db_Main_InfoREASON: TStringField
      FieldName = 'REASON'
      Size = 1000
    end
    object Db_Main_InfoCEH_DOCS_FLAG: TFloatField
      FieldName = 'CEH_DOCS_FLAG'
    end
    object Db_Main_InfoDET_MAR: TStringField
      FieldName = 'DET_MAR'
      Size = 100
    end
    object Db_Main_InfoDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_Main_InfoDOC_TYPE_NAME: TStringField
      FieldName = 'DOC_TYPE_NAME'
      Size = 19
    end
    object Db_Main_InfoDOC_LITER: TStringField
      FieldName = 'DOC_LITER'
      Size = 2
    end
    object Db_Main_InfoTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object Db_Main_InfoTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object Db_Main_InfoTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object Db_Main_InfoFLAG_IMP: TFloatField
      FieldName = 'FLAG_IMP'
    end
    object Db_Main_InfoFLAG_IMP_NAME: TStringField
      FieldName = 'FLAG_IMP_NAME'
      Size = 13
    end
    object Db_Main_InfoTP_WORK_TYPE_NAME: TStringField
      FieldName = 'TP_WORK_TYPE_NAME'
      Size = 146
    end
    object Db_Main_InfoIZD_NAME_TYPE: TStringField
      FieldName = 'IZD_NAME_TYPE'
      Size = 4000
    end
    object Db_Main_InfoIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object Db_Main_InfoACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
    end
    object Db_Main_InfoACT_DATE: TDateTimeField
      FieldName = 'ACT_DATE'
    end
    object Db_Main_InfoNEGATIVE_FLAG: TFloatField
      FieldName = 'NEGATIVE_FLAG'
    end
  end
  object Db_Sogl_Info: TOracleDataSet
    SQL.Strings = (
      '/*FROM START*/'
      'Select *'
      'From ('
      'Select  t.Id,'
      '        t.Id_Vers,'
      '        t.Id_Doc_Full,'
      '        t.Doc_Header_Id,'
      '        r.Date_Start_Route,'
      '        t.Create_User_Id,'
      '        t.Doc_Num, '
      '        t.Parent_Doc_Id,'
      #9'p.Doc_Num Parent_Doc,'
      '        t.Main_Doc_Id, '
      '        Main_D.Doc_Num Main_Doc_Num,'
      '        t.Cancel_Doc_Id,  '
      '        Canc_D.Doc_Num Cancel_Doc_Num,'
      '       ( Case '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Not Null Then 1'
      
        #9'    When t.Date_End_Action Is Null And t.Date_Start_Action Is N' +
        'ot Null and r.Date_End_Route is Not Null Then 0'
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers > 1 Then 2'
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers = 1 Then 1'
      '          End ) Cancel_Flag,'
      '        ( Case '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Not Null Then '#39#1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#39
      
        '            When t.Date_End_Action Is Null And t.Date_Start_Acti' +
        'on Is Null Then '#39#1040#1082#1090#1091#1072#1083#1077#1085#39' '
      
        '            When t.Date_End_Action Is Null And t.Date_Start_Acti' +
        'on Is Not Null and r.Date_End_Route is Not Null Then '#39#1059#1090#1074#1077#1088#1078#1076#1077#1085#39 +
        ' '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers > 1 Then '#39#1053#1077' '#1072#1082#1090#1091#1072#1083#1077#1085#39'  '
      
        '            When t.Date_End_Action Is Not Null And t.Date_Start_' +
        'Action Is Null And t.Id_Vers = 1 Then '#39#1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#39
      '          End ) Cancel_Flag_Name,'
      '        t.Det_Id,'
      '        t.Det_Num||'#39' '#39'||t.Det_Name Det_Num_Name,'
      '        t.Ceh_Id,'
      '        t.Ceh_Code,'
      '        t.Project_Flag,'
      '        u.Emp_Id Author_Lnum, '
      '        u.Emp_Fio Author_Name,'
      '        t.Data_Reg,'
      '        t.Reason,'
      '        t.Ceh_Docs_Flag,'
      '        t.Det_Mar,'
      '        t.Doc_Type,'
      '        d.Tp_Doc_Type_Name Doc_Type_Name,'
      '        t.Doc_Liter,'
      '        t.Tp_Num,'
      '        t.Tp_Name,        '
      '        t.Tp_Work_Type,'
      '        t.Flag_Imp,'
      '        ( Case t.Flag_Imp'
      '            When 1 Then '#39#1057#1087#1077#1094#1080#1072#1083#1100#1085#1099#1081#39
      '            When 2 Then '#39#1054#1090#1074#1077#1090#1089#1074#1090#1077#1085#1085#1099#1081#39'  '
      '            When 0 Then '#39#1053#1077' '#1091#1082#1072#1079#1072#1085#39'      '
      '          End ) Flag_Imp_Name,'
      '        (Case '
      '           when t.Tp_Work_Type is Null then Null'
      '           else '#39'('#39'||t.Tp_Work_Type||'#39') '#39'||t.Tp_Work_Type_Name '
      '         End) Tp_Work_Type_Name,        '
      '        ( Case t.Doc_Type'
      '            When 1'
      '            Then Det.Primen_txt'
      '            When 5'
      '            Then t.Izd_Name'
      '            When 4'
      '            Then t.Izd_Name'
      '         End ) As Izd_Name_Type,'
      '        ( Case t.Doc_Type'
      '            When 1'
      '            Then Det.Primen_Id'
      '            When 5'
      '            Then t.Izd_Id'
      '            When 4'
      '            Then t.Izd_Id'
      '         End ) As Izd_Id,'
      '        t.Act_Num,'
      '        t.Act_Date,'
      '        (Case'
      '           When n.Doc_Header_Id is Null Then 0'
      '           Else 1 '
      '         End) Negative_Flag'
      'From    Src.V_Tech_Proc t'
      'Left    Join Ogt.V_Spr_Tp_Doc_Types d'
      'On      t.Doc_Type=d.Id_Tp_Doc_Type'
      'Join (  Select p.Doc_Rout_Id'
      'From   Src.v_Doc_Rout_Points p'
      'Left   Join Src.v_Doc_Rout_Point_Pstns ps'
      'On     ps.Doc_Rout_Point_Id=p.Id_Doc_Rout_Point'
      'Left   Join Src.v_Doc_Rout_Point_Pstn_Ds dps'
      'On     dps.Doc_Rout_Point_Pstn_Id=ps.Id_Doc_Rout_Point_Pstn'
      'Left   Join Src.v_Doc_Rout_Point_Pstn_Us ups'
      'On     ups.DOC_ROUT_POINT_PSTN_ID=ps.Id_Doc_Rout_Point_Pstn'
      'Join   Stp.v_Dep_Mmbrs dm'
      
        'On     ((dm.dep_Id=dps.Dep_Id And dm.dep_Mmbr_Pstn_Id=ps.Dep_Mmb' +
        'r_Pstn_Id)'
      #9#9#9#9' or  dm.User_Id=ups.USER_ID)'
      #9'     And dm.User_Id=User'
      
        'Join (Select Count(pp.Result_Date)/Count(c.P_DOC_ROUT_POINT_ID) ' +
        'Signed_Points,'
      '                    (Case'
      
        '                      When Max(Nvl(pp.Result_Date, to_Date('#39'01.0' +
        '1.0001'#39')))=to_Date('#39'01.01.0001'#39')'
      '                      Then Null'
      '                      Else Max(pp.Result_Date)'
      '                    End) Date_In,'
      '                    c.C_DOC_ROUT_POINT_ID'
      '             From   Src.v_Doc_Rout_Point_Cnnctns c'
      #9#9#9#9#9#9' Left   Join Src.v_Doc_Rout_Points pp'
      #9#9#9#9#9#9' On     pp.Id_Doc_Rout_Point=c.P_DOC_ROUT_POINT_ID'
      
        '                    And pp.Stp_Doc_Resolution_Result_Id Is Not N' +
        'ull'
      #9#9#9#9#9#9#9#9#9#9'And pp.Stp_Doc_Resolution_Result_Id <>0'
      #9#9#9#9#9#9' Group  By c.C_DOC_ROUT_POINT_ID'
      #9#9#9#9#9#9' Union  All'
      #9#9#9#9#9#9' Select 1, r.Date_Start_Route, p.Id_Doc_Rout_Point'
      #9#9#9#9#9#9' From   Src.v_Doc_Rout_Points p'
      #9#9#9#9#9#9' Join   Src.v_Doc_Routs r'
      #9#9#9#9#9#9' On     r.Doc_Header_Id=p.Doc_Rout_Id'
      #9#9#9#9#9#9'        And Instr(p.Point_Position, '#39'1.'#39')<>0  ) c'
      'On    c.C_DOC_ROUT_POINT_ID=p.Id_Doc_Rout_Point'
      '      And c.Signed_Points=1'
      '      And p.Result_Date Is Null'
      'Group  By p.Doc_Rout_Id) p'
      'On p.Doc_Rout_Id=t.Doc_Header_Id'
      'Left    Join Stp.V_Users u'
      'On      t.Create_User_Id=u.Id_User'
      '        And t.Create_User_Id_Add=u.Id_User_Add'
      'Left    Join Src.V_Doc_Routs r'
      'On      r.Doc_Header_Id = t.Doc_Header_Id'
      'Left    Join Ogt.v_Spr_Tp_Doc P'
      'On      p.Doc_Header_Id = t.PARENT_DOC_ID'
      'Left    Join Ogt.Spr_Det_Txt Det'
      'On      Det.Id = t.Det_Id  '
      'Left    Join Ogt.v_Spr_Tp_Doc_Actual Main_D'
      'On      Main_D.Id = t.Main_Doc_Id'
      'Left    Join Ogt.v_Spr_Tp_Doc_Actual Canc_D'
      'On      Canc_D.Id = t.Cancel_Doc_Id '
      'Left    Join (Select Distinct t.Doc_Rout_Id Doc_Header_Id'
      '              From   Src.V_Doc_Rout_Points t'
      '              Join Stp.v_Doc_Resolution_Results r'
      
        '              On     r.Id_Doc_Resolution_Result = t.Stp_Doc_Reso' +
        'lution_Result_Id'
      '              Where  r.Result_Value = -1) n'
      'On      n.Doc_Header_Id = t.Doc_Header_Id'
      'Where   t.Date_End_Action Is Null ) a'
      'Where   /*FILTER START*/ (1=1) /*FILTER END*/'
      '        And  (Case '
      
        '          When Stp.pkg_user.f_check_task_acc(in_task => '#39'TECH_PR' +
        'OC'#39')=1 then 1         '
      
        #9#9#9#9#9'When Stp.pkg_user.f_check_task_acc(in_task => '#39'TECH_PROC'#39')=' +
        '0 and Cancel_Flag=0 Then 1'
      #9#9#9#9#9'Else 0'
      #9#9#9#9'End)=1'
      '/*FROM END*/'
      'Order by a.Data_Reg Desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000002800000004000000490044000100000000000E00000044004F004300
      5F004E0055004D000100000000000C0000004400450054005F00490044000100
      000000000C0000004300450048005F0049004400010000000000160000004100
      5500540048004F0052005F004C004E0055004D00010000000000100000004400
      4100540041005F005200450047000100000000000C0000005200450041005300
      4F004E000100000000001A000000430041004E00430045004C005F0044004F00
      43005F0049004400010000000000160000004D00410049004E005F0044004F00
      43005F0049004400010000000000180000004400450054005F004E0055004D00
      5F004E0041004D0045000100000000001600000041005500540048004F005200
      5F004E0041004D0045000100000000001C000000430041004E00430045004C00
      5F0044004F0043005F004E0055004D00010000000000180000004D0041004900
      4E005F0044004F0043005F004E0055004D000100000000001600000043004100
      4E00430045004C005F0046004C00410047000100000000001A00000043004500
      48005F0044004F00430053005F0046004C004100470001000000000010000000
      44004F0043005F0054005900500045000100000000001200000044004F004300
      5F004C0049005400450052000100000000001A00000044004F0043005F005400
      5900500045005F004E0041004D0045000100000000000C000000540050005F00
      4E0055004D000100000000000E000000540050005F004E0041004D0045000100
      0000000018000000540050005F0057004F0052004B005F005400590050004500
      01000000000022000000540050005F0057004F0052004B005F00540059005000
      45005F004E0041004D0045000100000000000E0000004400450054005F004D00
      410052000100000000001A00000049005A0044005F004E0041004D0045005F00
      54005900500045000100000000001000000046004C00410047005F0049004D00
      5000010000000000100000004300450048005F0043004F004400450001000000
      000020000000430041004E00430045004C005F0046004C00410047005F004E00
      41004D0045000100000000001A00000044004F0043005F004800450041004400
      450052005F00490044000100000000000E0000004100430054005F004E005500
      4D00010000000000100000004100430054005F00440041005400450001000000
      00000C00000049005A0044005F00490044000100000000000E00000049004400
      5F00560045005200530001000000000016000000490044005F0044004F004300
      5F00460055004C004C0001000000000018000000500052004F004A0045004300
      54005F0046004C00410047000100000000001A00000046004C00410047005F00
      49004D0050005F004E0041004D0045000100000000001A0000004E0045004700
      410054004900560045005F0046004C0041004700010000000000140000005000
      4100520045004E0054005F0044004F0043000100000000002000000044004100
      540045005F00530054004100520054005F0052004F0055005400450001000000
      00001C0000004300520045004100540045005F0055005300450052005F004900
      44000100000000001A00000050004100520045004E0054005F0044004F004300
      5F0049004400010000000000}
    QueryAllRecords = False
    Session = DM_Main.Session
    Left = 104
    Top = 400
    object Db_Sogl_InfoID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Sogl_InfoID_VERS: TIntegerField
      FieldName = 'ID_VERS'
      Required = True
    end
    object Db_Sogl_InfoID_DOC_FULL: TStringField
      FieldName = 'ID_DOC_FULL'
      Size = 14
    end
    object Db_Sogl_InfoDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Sogl_InfoDATE_START_ROUTE: TDateTimeField
      FieldName = 'DATE_START_ROUTE'
    end
    object Db_Sogl_InfoCREATE_USER_ID: TStringField
      FieldName = 'CREATE_USER_ID'
      Required = True
      Size = 30
    end
    object Db_Sogl_InfoDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_Sogl_InfoPARENT_DOC_ID: TIntegerField
      FieldName = 'PARENT_DOC_ID'
    end
    object Db_Sogl_InfoPARENT_DOC: TStringField
      FieldName = 'PARENT_DOC'
      Size = 15
    end
    object Db_Sogl_InfoMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Sogl_InfoMAIN_DOC_NUM: TStringField
      FieldName = 'MAIN_DOC_NUM'
      Size = 15
    end
    object Db_Sogl_InfoCANCEL_DOC_ID: TFloatField
      FieldName = 'CANCEL_DOC_ID'
    end
    object Db_Sogl_InfoCANCEL_DOC_NUM: TStringField
      FieldName = 'CANCEL_DOC_NUM'
      Size = 15
    end
    object Db_Sogl_InfoCANCEL_FLAG: TFloatField
      FieldName = 'CANCEL_FLAG'
    end
    object Db_Sogl_InfoCANCEL_FLAG_NAME: TStringField
      FieldName = 'CANCEL_FLAG_NAME'
      Size = 11
    end
    object Db_Sogl_InfoDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Sogl_InfoDET_NUM_NAME: TStringField
      FieldName = 'DET_NUM_NAME'
      Size = 151
    end
    object Db_Sogl_InfoCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Sogl_InfoCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Sogl_InfoPROJECT_FLAG: TIntegerField
      FieldName = 'PROJECT_FLAG'
    end
    object Db_Sogl_InfoAUTHOR_LNUM: TIntegerField
      FieldName = 'AUTHOR_LNUM'
    end
    object Db_Sogl_InfoAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object Db_Sogl_InfoDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object Db_Sogl_InfoREASON: TStringField
      FieldName = 'REASON'
      Size = 1000
    end
    object Db_Sogl_InfoCEH_DOCS_FLAG: TFloatField
      FieldName = 'CEH_DOCS_FLAG'
    end
    object Db_Sogl_InfoDET_MAR: TStringField
      FieldName = 'DET_MAR'
      Size = 100
    end
    object Db_Sogl_InfoDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_Sogl_InfoDOC_TYPE_NAME: TStringField
      FieldName = 'DOC_TYPE_NAME'
      Size = 19
    end
    object Db_Sogl_InfoDOC_LITER: TStringField
      FieldName = 'DOC_LITER'
      Size = 2
    end
    object Db_Sogl_InfoTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object Db_Sogl_InfoTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object Db_Sogl_InfoTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object Db_Sogl_InfoFLAG_IMP: TFloatField
      FieldName = 'FLAG_IMP'
    end
    object Db_Sogl_InfoFLAG_IMP_NAME: TStringField
      FieldName = 'FLAG_IMP_NAME'
      Size = 13
    end
    object Db_Sogl_InfoTP_WORK_TYPE_NAME: TStringField
      FieldName = 'TP_WORK_TYPE_NAME'
      Size = 146
    end
    object Db_Sogl_InfoIZD_NAME_TYPE: TStringField
      FieldName = 'IZD_NAME_TYPE'
      Size = 4000
    end
    object Db_Sogl_InfoIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object Db_Sogl_InfoACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
    end
    object Db_Sogl_InfoACT_DATE: TDateTimeField
      FieldName = 'ACT_DATE'
    end
    object Db_Sogl_InfoNEGATIVE_FLAG: TFloatField
      FieldName = 'NEGATIVE_FLAG'
    end
  end
  object Pkg_Tech_Proc: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Src.PKG_TECH_PROC'
    Left = 400
    Top = 48
  end
  object Pkg_Doc: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Src.PKG_DOC'
    Left = 520
    Top = 440
  end
end
