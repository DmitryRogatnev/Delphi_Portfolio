object Form_Doc_TypesConfig: TForm_Doc_TypesConfig
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1090#1080#1087#1086#1074' '#1090#1077#1093#1087#1088#1086#1094#1077#1089#1089#1086#1074
  ClientHeight = 630
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 237
    Width = 1126
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 209
    ExplicitWidth = 421
  end
  object Grid_DocTypes: TDBGridEh
    Left = 0
    Top = 28
    Width = 1126
    Height = 209
    Align = alTop
    AutoFitColWidths = True
    DataSource = Data_Tp_Doc_Types
    DynProps = <>
    EvenRowColor = clMenu
    Flat = True
    SearchPanel.Enabled = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_TP_DOC_TYPE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'ID'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TP_DOC_TYPE_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TASK_NAME'
        Footers = <>
        Title.Caption = #1047#1072#1076#1072#1095#1072
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FRAME_CLASS'
        Footers = <>
        KeyList.Strings = (
          'TFrame_TechProc'
          'TFrame_Tp_TechProc_DocDetList'
          'TFrame_Tp_TechProcComplect')
        PickList.Strings = (
          'TFrame_TechProc'
          'TFrame_Tp_TechProc_DocDetList'
          'TFrame_Tp_TechProcComplect')
        Title.Caption = 'TFrame'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 240
    Width = 1126
    Height = 390
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 496
      Top = 0
      Height = 390
      ExplicitLeft = 504
      ExplicitTop = 200
      ExplicitHeight = 100
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 496
      Height = 390
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 0
      OnResize = Panel2Resize
      DesignSize = (
        496
        390)
      object SpPutIn: TSpeedButton
        Left = 231
        Top = 150
        Width = 23
        Height = 22
        Action = Act_PutIn
        ParentShowHint = False
        ShowHint = True
      end
      object SpPutOut: TSpeedButton
        Left = 231
        Top = 178
        Width = 23
        Height = 22
        Action = Act_PutOut
      end
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 133
        Height = 13
        Caption = #1050#1086#1083#1086#1085#1082#1080' '#1076#1083#1103' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103':'
      end
      object Label2: TLabel
        Left = 260
        Top = 6
        Width = 127
        Height = 13
        Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1077#1084#1099#1077' '#1082#1086#1083#1086#1085#1082#1080':'
      end
      object ListColumnsVars: TListView
        Left = 8
        Top = 25
        Width = 217
        Height = 356
        Anchors = [akLeft, akTop, akBottom]
        Columns = <
          item
            Caption = #1050#1086#1083#1086#1085#1082#1080' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
            Width = 100
          end>
        FlatScrollBars = True
        GridLines = True
        MultiSelect = True
        ReadOnly = True
        RowSelect = True
        SortType = stText
        TabOrder = 0
        ViewStyle = vsList
      end
      object ListColumnsDocType: TListView
        Left = 260
        Top = 25
        Width = 225
        Height = 356
        Anchors = [akLeft, akTop, akRight, akBottom]
        Checkboxes = True
        Columns = <
          item
            AutoSize = True
          end>
        GridLines = True
        MultiSelect = True
        ReadOnly = True
        RowSelect = True
        SortType = stText
        TabOrder = 1
        ViewStyle = vsList
        OnItemChecked = ListColumnsDocTypeItemChecked
      end
    end
    object Panel3: TPanel
      Left = 499
      Top = 0
      Width = 627
      Height = 390
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      ShowCaption = False
      TabOrder = 1
      object Splitter3: TSplitter
        Left = 0
        Top = 185
        Width = 627
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = 1
        ExplicitTop = 121
        ExplicitWidth = 294
      end
      object Grid_FrameProp: TDBGridEh
        Left = 0
        Top = 0
        Width = 627
        Height = 185
        Align = alTop
        AutoFitColWidths = True
        DataSource = Data_Frame_Params
        DynProps = <>
        EvenRowColor = clMenu
        Flat = True
        SearchPanel.Enabled = True
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMPONENT_NAME'
            Footers = <>
            MRUList.Active = True
            Title.Caption = #1050#1086#1084#1087#1086#1085#1077#1085#1090
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMPONENT_PROPERTY'
            Footers = <>
            MRUList.Active = True
            Title.Caption = #1057#1074#1086#1081#1089#1090#1074#1086
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMPONENT_PRPTY_VALUE'
            Footers = <>
            MRUList.Active = True
            Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
            Width = 200
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Grid_ConstApprSteps: TDBGridEh
        Left = 0
        Top = 188
        Width = 627
        Height = 202
        Align = alClient
        AutoFitColWidths = True
        DataSource = Data_Const_Steps
        DynProps = <>
        EvenRowColor = clMenu
        Flat = True
        SearchPanel.Enabled = True
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsEllipsisEh
                OnClick = Grid_ConstApprStepsColumns0EditButtons0Click
              end>
            FieldName = 'DEP_SNAME'
            Footers = <>
            Title.Caption = #1062#1077#1093
            Width = 100
            OnUpdateData = Grid_ConstApprStepsColumns0UpdateData
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
                DropDownFormParams.PassParams = pspCustomValuesEh
              end>
            FieldName = 'POINT_USER_NAME'
            Footers = <>
            Title.Caption = #1057#1090#1091#1087#1077#1085#1100
            Width = 200
            OnCloseDropDownForm = Grid_ConstApprStepsColumns1CloseDropDownForm
            OnOpenDropDownForm = Grid_ConstApprStepsColumns1OpenDropDownForm
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Control_Panel: TPanel
    Left = 0
    Top = 0
    Width = 1126
    Height = 28
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1122
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
        Action = Act_Save
      end
      object Tb_Exit: TToolButton
        Left = 23
        Top = 0
        Action = Act_Exit
      end
    end
  end
  object Db_Tp_Doc_Types: TOracleDataSet
    SQL.Strings = (
      'Select d.*, d.rowid,'
      '       t.Task_Name'
      'From   Ogt.V_Spr_Tp_Doc_Types d'
      'Left   Join Stp.V_Tasks t'
      'On     t.Id_Task=d.Task_Id'
      'Order  By d.Id_Tp_Doc_Type')
    Optimize = False
    SequenceField.Field = 'ID_TP_DOC_TYPE'
    SequenceField.Sequence = 'OGT.S_SPR_TP_DOC_TYPES_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000050000001C000000490044005F00540050005F0044004F0043005F00
      540059005000450001000000000020000000540050005F0044004F0043005F00
      54005900500045005F004E0041004D0045000100000000000E00000054004100
      53004B005F0049004400010000000000160000004600520041004D0045005F00
      43004C00410053005300010000000000120000005400410053004B005F004E00
      41004D004500010000000000}
    UniqueFields = 'ID_TP_DOC_TYPE'
    UpdatingTable = 'Ogt.V_Spr_Tp_Doc_Types'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    AfterScroll = Db_Tp_Doc_TypesAfterScroll
    Left = 496
    Top = 144
    object Db_Tp_Doc_TypesID_TP_DOC_TYPE: TIntegerField
      FieldName = 'ID_TP_DOC_TYPE'
      Required = True
    end
    object Db_Tp_Doc_TypesTP_DOC_TYPE_NAME: TStringField
      FieldName = 'TP_DOC_TYPE_NAME'
      Size = 100
    end
    object Db_Tp_Doc_TypesTASK_ID: TIntegerField
      FieldName = 'TASK_ID'
    end
    object Db_Tp_Doc_TypesFRAME_CLASS: TStringField
      FieldName = 'FRAME_CLASS'
      Size = 100
    end
    object Db_Tp_Doc_TypesTASK_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'TASK_NAME'
      Size = 30
    end
  end
  object Data_Tp_Doc_Types: TDataSource
    DataSet = Db_Tp_Doc_Types
    Left = 600
    Top = 120
  end
  object Db_Frame_Params: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid'
      'From   Ogt.V_Spr_Tp_Doc_Type_Frame_Prms t'
      'Where  t.Tp_Doc_Type_Id=:Id_Tp_Doc_Type')
    Optimize = False
    Variables.Data = {
      04000000010000001E0000003A00490044005F00540050005F0044004F004300
      5F005400590050004500050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000001C000000540050005F0044004F0043005F00540059005000
      45005F00490044000100000000001C00000043004F004D0050004F004E004500
      4E0054005F004E0041004D0045000100000000002400000043004F004D005000
      4F004E0045004E0054005F00500052004F005000450052005400590001000000
      00002A00000043004F004D0050004F004E0045004E0054005F00500052005000
      540059005F00560041004C0055004500010000000000}
    UniqueFields = 'TP_DOC_TYPE_ID; COMPONENT_NAME; COMPONENT_PROPERTY'
    Master = Db_Tp_Doc_Types
    MasterFields = 'Id_Tp_Doc_Type'
    UpdatingTable = 'Ogt.V_Spr_Tp_Doc_Type_Frame_Prms'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    AfterScroll = Db_Frame_ParamsAfterScroll
    OnNewRecord = Db_Const_StepsNewRecord
    Left = 720
    Top = 328
    object Db_Frame_ParamsTP_DOC_TYPE_ID: TIntegerField
      FieldName = 'TP_DOC_TYPE_ID'
      Required = True
    end
    object Db_Frame_ParamsCOMPONENT_NAME: TStringField
      FieldName = 'COMPONENT_NAME'
      Required = True
      Size = 100
    end
    object Db_Frame_ParamsCOMPONENT_PROPERTY: TStringField
      FieldName = 'COMPONENT_PROPERTY'
      Required = True
      Size = 100
    end
    object Db_Frame_ParamsCOMPONENT_PRPTY_VALUE: TStringField
      FieldName = 'COMPONENT_PRPTY_VALUE'
      Size = 500
    end
  end
  object Data_Frame_Params: TDataSource
    DataSet = Db_Frame_Params
    Left = 683
    Top = 276
  end
  object Db_Const_Steps: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid,'
      '       d.Dep_Sname,'
      '       p.Point_User_Name'
      'From   Ogt.V_Spr_Tp_Doc_Type_Cnst_Apr_Stp t'
      'Left   Join Stp.v_Deps d'
      'on     d.Id_Dep=t.Dep_Id'
      '       And Nvl(d.Date_Expitation, Sysdate)>=Sysdate'
      'Left   Join Stp.v_Doc_Rout_Point_Pos p'
      'On     p.Id_Doc_Rt_Pnt_Pos=t.Doc_Rt_Pnt_Pos_Id'
      'Where  t.Tp_Doc_Type_Id=:Id_Tp_Doc_Type'
      'Order  By t.Dep_Id, p.Pos_Rw_Num')
    Optimize = False
    Variables.Data = {
      04000000010000001E0000003A00490044005F00540050005F0044004F004300
      5F005400590050004500050000000000000000000000}
    SequenceField.Field = 'ID_CONST_TP_STEP'
    SequenceField.Sequence = 'OGT.S_SPR_TP_DC_T_CNTS_A_STEP_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000000600000020000000490044005F0043004F004E00530054005F005400
      50005F0053005400450050000100000000001C000000540050005F0044004F00
      43005F0054005900500045005F00490044000100000000000C00000044004500
      50005F00490044000100000000002200000044004F0043005F00520054005F00
      50004E0054005F0050004F0053005F0049004400010000000000120000004400
      450050005F0053004E0041004D0045000100000000001E00000050004F004900
      4E0054005F0055005300450052005F004E0041004D004500010000000000}
    UniqueFields = 'ID_CONST_TP_STEP'
    Master = Db_Tp_Doc_Types
    MasterFields = 'Id_Tp_Doc_Type'
    UpdatingTable = 'Ogt.V_Spr_Tp_Doc_Type_Cnst_Apr_Stp'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Const_StepsNewRecord
    Left = 672
    Top = 496
    object Db_Const_StepsID_CONST_TP_STEP: TIntegerField
      FieldName = 'ID_CONST_TP_STEP'
      Required = True
    end
    object Db_Const_StepsTP_DOC_TYPE_ID: TIntegerField
      FieldName = 'TP_DOC_TYPE_ID'
    end
    object Db_Const_StepsDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Const_StepsDOC_RT_PNT_POS_ID: TIntegerField
      FieldName = 'DOC_RT_PNT_POS_ID'
    end
    object Db_Const_StepsDEP_SNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object Db_Const_StepsPOINT_USER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'POINT_USER_NAME'
      Size = 300
    end
  end
  object Data_Const_Steps: TDataSource
    DataSet = Db_Const_Steps
    Left = 803
    Top = 484
  end
  object Db_Type_Clmns: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid'
      'From   Ogt.V_Spr_Tp_Doc_Type_Clmns t'
      'Where  t.Tp_Doc_Type_Id=:Id_Tp_Doc_Type'
      '')
    Optimize = False
    Variables.Data = {
      04000000010000001E0000003A00490044005F00540050005F0044004F004300
      5F005400590050004500050000000000000000000000}
    SequenceField.Field = 'ID_CLMN'
    SequenceField.Sequence = 'OGT.S_SPR_TP_DOC_TYPE_CLMNS_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000040000001C000000540050005F0044004F0043005F00540059005000
      45005F00490044000100000000000E000000490044005F0043004C004D004E00
      0100000000001600000043004F004C0055004D004E005F004E0041004D004500
      0100000000001400000056004900450057005F00530054004100540045000100
      00000000}
    UniqueFields = 'ID_CLMN'
    Master = Db_Tp_Doc_Types
    MasterFields = 'Id_Tp_Doc_Type'
    UpdatingTable = 'Ogt.V_Spr_Tp_Doc_Type_Clmns'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Type_ClmnsNewRecord
    Left = 336
    Top = 496
    object Db_Type_ClmnsID_CLMN: TIntegerField
      FieldName = 'ID_CLMN'
      Required = True
    end
    object Db_Type_ClmnsTP_DOC_TYPE_ID: TIntegerField
      FieldName = 'TP_DOC_TYPE_ID'
    end
    object Db_Type_ClmnsCOLUMN_NAME: TStringField
      FieldName = 'COLUMN_NAME'
      Size = 30
    end
    object Db_Type_ClmnsVIEW_STATE: TStringField
      FieldName = 'VIEW_STATE'
      Size = 30
    end
  end
  object Data_Type_Clmns: TDataSource
    DataSet = Db_Type_Clmns
    Left = 403
    Top = 452
  end
  object Db_Doc_Info: TOracleDataSet
    SQL.Strings = (
      'Select t.*,'
      '       Main_D.Doc_Num Main_Doc_Num,'
      '       Canc_D.Doc_Num Cancel_Doc_Num,'
      '       r.Date_Start_Route,'
      '       t.rowid '
      'From   SRC.V_TECH_PROC t'
      'Left   Join Src.V_Doc_Routs r'
      'On     t.Doc_Header_Id = r.Doc_Header_Id'
      'Left    Join Ogt.v_Spr_Tp_Doc Main_D'
      'On      Main_D.Id = t.Main_Doc_Id'
      '        And Main_D.Date_End_Action Is Null'
      'Left    Join Ogt.v_Spr_Tp_Doc Canc_D'
      'On      Canc_D.Id = t.Cancel_Doc_Id '
      '        And Canc_D.Date_End_Action Is Null'
      'Where  t.Doc_Header_Id = :v_Doc_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'ogt.SPR_TP_DOC$SQN$ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000003A00000004000000490044000100000000000E00000044004F004300
      5F004E0055004D000100000000000C0000004400450054005F00490044000100
      000000000C0000004300450048005F0049004400010000000000160000004100
      5500540048004F0052005F004C004E0055004D00010000000000100000004400
      4100540041005F00520045004700010000000000160000004400410054004100
      5F004300480041004E00470045000100000000000C0000005200450041005300
      4F004E000100000000001A000000430041004E00430045004C005F0044004F00
      43005F0049004400010000000000160000004D00410049004E005F0044004F00
      43005F00490044000100000000000E0000004400450054005F004D0041005200
      0100000000001200000044004F0043005F004C00490054004500520001000000
      00001000000044004F0043005F0054005900500045000100000000000C000000
      540050005F004E0055004D000100000000000E000000540050005F004E004100
      4D00450001000000000018000000540050005F0057004F0052004B005F005400
      5900500045000100000000000E0000004400450054005F004E0055004D000100
      00000000100000004400450054005F004E0041004D0045000100000000001600
      000041005500540048004F0052005F004E0041004D0045000100000000002200
      0000540050005F0057004F0052004B005F0054005900500045005F004E004100
      4D0045000100000000000C00000049005A0044005F0049004400010000000000
      1000000049005A0044005F004E0041004D004500010000000000100000004900
      5A0044005F0054005900500045000100000000000E000000540050005F005400
      5900500045000100000000001600000043004F004D0050004C00450043005400
      5F00490044000100000000001000000046004C00410047005F0049004D005000
      0100000000000E0000004100430054005F004E0055004D000100000000001000
      00004100430054005F0044004100540045000100000000001000000043004500
      48005F0043004F004400450001000000000016000000430041004E0043004500
      4C005F0046004C00410047000100000000001A0000004300450048005F004400
      4F00430053005F0046004C00410047000100000000001A00000044004F004300
      5F004800450041004400450052005F00490044000100000000000E0000004500
      4D00500053005F00490044000100000000001A000000490044005F0044004F00
      43005F004800450041004400450052000100000000001600000044004F004300
      5F0054005900500045005F00490044000100000000001000000044004F004300
      5F0044004100540045000100000000001400000044004F0043005F004E005500
      4D004200450052000100000000001600000043004C004D004E0031005F005600
      41004C00550045000100000000001600000043004C004D004E0032005F005600
      41004C00550045000100000000001600000043004C004D004E0033005F005600
      41004C00550045000100000000001C0000004300520045004100540045005F00
      55005300450052005F0049004400010000000000240000004300520045004100
      540045005F0055005300450052005F00490044005F0041004400440001000000
      0000160000004300520045004100540045005F00440041005400450001000000
      0000200000004C004100530054005F004D004F0044005F005500530045005200
      5F0049004400010000000000280000004C004100530054005F004D004F004400
      5F0055005300450052005F00490044005F004100440044000100000000001A00
      00004C004100530054005F004D004F0044005F00440041005400450001000000
      0000140000005300520043005F004400450050005F0049004400010000000000
      1600000053004E00440052005F004400450050005F0049004400010000000000
      1A00000046004C00410047005F0049004D0050005F004E0041004D0045000100
      0000000018000000500052004F004A004500430054005F0046004C0041004700
      0100000000000E000000490044005F0056004500520053000100000000001600
      0000490044005F0044004F0043005F00460055004C004C000100000000002200
      000044004100540045005F00530054004100520054005F004100430054004900
      4F004E000100000000001E00000044004100540045005F0045004E0044005F00
      41004300540049004F004E00010000000000180000004D00410049004E005F00
      44004F0043005F004E0055004D000100000000001C000000430041004E004300
      45004C005F0044004F0043005F004E0055004D000100000000001A0000005000
      4100520045004E0054005F0044004F0043005F00490044000100000000002000
      000044004100540045005F00530054004100520054005F0052004F0055005400
      4500010000000000}
    UniqueFields = 'ID; ID_VERS'
    UpdatingTable = 'SRC.V_TECH_PROC'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 312
    Top = 160
    object Db_Doc_InfoID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Doc_InfoID_VERS: TIntegerField
      FieldName = 'ID_VERS'
      Required = True
    end
    object Db_Doc_InfoID_DOC_FULL: TStringField
      FieldName = 'ID_DOC_FULL'
      Size = 14
    end
    object Db_Doc_InfoDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_Doc_InfoDATE_START_ACTION: TDateTimeField
      FieldName = 'DATE_START_ACTION'
    end
    object Db_Doc_InfoDATE_END_ACTION: TDateTimeField
      FieldName = 'DATE_END_ACTION'
    end
    object Db_Doc_InfoDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Doc_InfoDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_Doc_InfoDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_Doc_InfoCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Doc_InfoCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Doc_InfoAUTHOR_LNUM: TFloatField
      FieldName = 'AUTHOR_LNUM'
      Required = True
    end
    object Db_Doc_InfoAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object Db_Doc_InfoDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object Db_Doc_InfoDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object Db_Doc_InfoREASON: TStringField
      FieldName = 'REASON'
      Size = 1000
    end
    object Db_Doc_InfoCANCEL_DOC_ID: TFloatField
      FieldName = 'CANCEL_DOC_ID'
    end
    object Db_Doc_InfoMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Doc_InfoCANCEL_FLAG: TFloatField
      FieldName = 'CANCEL_FLAG'
    end
    object Db_Doc_InfoCEH_DOCS_FLAG: TFloatField
      FieldName = 'CEH_DOCS_FLAG'
    end
    object Db_Doc_InfoDET_MAR: TStringField
      FieldName = 'DET_MAR'
      Size = 100
    end
    object Db_Doc_InfoDOC_LITER: TStringField
      FieldName = 'DOC_LITER'
      Size = 2
    end
    object Db_Doc_InfoDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_Doc_InfoTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object Db_Doc_InfoTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object Db_Doc_InfoTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object Db_Doc_InfoTP_WORK_TYPE_NAME: TStringField
      FieldName = 'TP_WORK_TYPE_NAME'
      Size = 103
    end
    object Db_Doc_InfoIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object Db_Doc_InfoIZD_NAME: TStringField
      FieldName = 'IZD_NAME'
      Size = 50
    end
    object Db_Doc_InfoIZD_TYPE: TStringField
      FieldName = 'IZD_TYPE'
      Size = 100
    end
    object Db_Doc_InfoCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object Db_Doc_InfoTP_TYPE: TFloatField
      FieldName = 'TP_TYPE'
    end
    object Db_Doc_InfoFLAG_IMP: TFloatField
      FieldName = 'FLAG_IMP'
    end
    object Db_Doc_InfoFLAG_IMP_NAME: TStringField
      FieldName = 'FLAG_IMP_NAME'
      Size = 13
    end
    object Db_Doc_InfoACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
    end
    object Db_Doc_InfoACT_DATE: TDateTimeField
      FieldName = 'ACT_DATE'
    end
    object Db_Doc_InfoDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Doc_InfoEMPS_ID: TStringField
      FieldName = 'EMPS_ID'
      Size = 30
    end
    object Db_Doc_InfoPROJECT_FLAG: TIntegerField
      FieldName = 'PROJECT_FLAG'
    end
    object Db_Doc_InfoID_DOC_HEADER: TIntegerField
      FieldName = 'ID_DOC_HEADER'
      Required = True
    end
    object Db_Doc_InfoDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Doc_InfoDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object Db_Doc_InfoDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Doc_InfoCLMN1_VALUE: TStringField
      FieldName = 'CLMN1_VALUE'
      Size = 200
    end
    object Db_Doc_InfoCLMN2_VALUE: TStringField
      FieldName = 'CLMN2_VALUE'
      Size = 200
    end
    object Db_Doc_InfoCLMN3_VALUE: TStringField
      FieldName = 'CLMN3_VALUE'
      Size = 4000
    end
    object Db_Doc_InfoCREATE_USER_ID: TStringField
      FieldName = 'CREATE_USER_ID'
      Size = 30
    end
    object Db_Doc_InfoCREATE_USER_ID_ADD: TIntegerField
      FieldName = 'CREATE_USER_ID_ADD'
    end
    object Db_Doc_InfoCREATE_DATE: TDateTimeField
      FieldName = 'CREATE_DATE'
    end
    object Db_Doc_InfoLAST_MOD_USER_ID: TStringField
      FieldName = 'LAST_MOD_USER_ID'
      Size = 30
    end
    object Db_Doc_InfoLAST_MOD_USER_ID_ADD: TIntegerField
      FieldName = 'LAST_MOD_USER_ID_ADD'
    end
    object Db_Doc_InfoLAST_MOD_DATE: TDateTimeField
      FieldName = 'LAST_MOD_DATE'
    end
    object Db_Doc_InfoSRC_DEP_ID: TIntegerField
      FieldName = 'SRC_DEP_ID'
    end
    object Db_Doc_InfoSNDR_DEP_ID: TIntegerField
      FieldName = 'SNDR_DEP_ID'
    end
    object Db_Doc_InfoMAIN_DOC_NUM: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'MAIN_DOC_NUM'
      Size = 15
    end
    object Db_Doc_InfoCANCEL_DOC_NUM: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CANCEL_DOC_NUM'
      Size = 15
    end
    object Db_Doc_InfoPARENT_DOC_ID: TIntegerField
      FieldName = 'PARENT_DOC_ID'
    end
    object Db_Doc_InfoDATE_START_ROUTE: TDateTimeField
      FieldName = 'DATE_START_ROUTE'
    end
  end
  object ActionList1: TActionList
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 336
    Top = 404
    object Act_PutIn: TAction
      Category = 'ReplaceItems'
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1089#1087#1080#1089#1086#1082
      ImageIndex = 62
      OnExecute = Act_PutInExecute
    end
    object Act_PutOut: TAction
      Category = 'ReplaceItems'
      Hint = #1059#1073#1088#1072#1090#1100' '#1080#1079' '#1089#1087#1080#1089#1082#1072
      ImageIndex = 63
      OnExecute = Act_PutOutExecute
    end
    object Act_Save: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 22
      OnExecute = Act_SaveExecute
    end
    object Act_Exit: TAction
      Caption = #1042#1099#1093#1086#1076
      Hint = #1042#1099#1093#1086#1076
      ImageIndex = 32
      OnExecute = Act_ExitExecute
    end
  end
  object MemTableEh1: TMemTableEh
    Params = <>
    Left = 560
    Top = 320
  end
  object DataSetDriverEh1: TDataSetDriverEh
    Left = 568
    Top = 328
  end
end
