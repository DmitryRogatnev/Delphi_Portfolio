object Form_Main_Dc_Aprvl_L: TForm_Main_Dc_Aprvl_L
  Left = 0
  Top = 0
  Caption = 'Form_Main_Dc_Aprvl_L'
  ClientHeight = 668
  ClientWidth = 1064
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Main_M_Dc_Aprvl_L
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 505
    Top = 0
    Width = 5
    Height = 668
    ExplicitLeft = 185
  end
  object Grid_Dc_Aprvl_Lst: TDBGridEh
    Left = 510
    Top = 0
    Width = 554
    Height = 668
    Align = alClient
    AllowedSelections = [gstRecordBookmarks]
    AutoFitColWidths = True
    DataSource = Data_Dc_Aprvl_Lst
    DynProps = <>
    Flat = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh, gioShowRowselCheckboxesEh]
    IndicatorTitle.UseGlobalMenu = False
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghFitRowHeightToText, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    PopupMenu = PopupMenu1
    ReadOnly = True
    RowHeight = 2
    RowLines = 1
    SearchPanel.Enabled = True
    SortLocal = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USER_ID'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STP_DOC_ROUT_POINT_ID'
        Footers = <>
        Visible = False
        Width = 77
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CHOSE_STATE'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POINT_POSITION'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STP_DC_RT_PNT_POS_ID'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DEP_ID'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POINT_NAME'
        Footers = <>
        Title.Caption = #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077' '#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
        Width = 376
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POS_STATE'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POS_RW_NUM'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DEP_NAME'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOC_HEADER_ID'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_DC_RT_US_PNT'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Grid_Dc_Pnt_Var: TDBGridEh
    Left = 0
    Top = 0
    Width = 505
    Height = 668
    Align = alLeft
    AllowedSelections = [gstRecordBookmarks]
    AutoFitColWidths = True
    DataSource = Data_Dc_Aprvl_Lst_Var
    DynProps = <>
    Flat = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh, gioShowRowselCheckboxesEh]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghFitRowHeightToText, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    RowHeight = 2
    RowLines = 1
    SearchPanel.Enabled = True
    STFilter.InstantApply = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 1
    OnSelectionChanged = Grid_Dc_Pnt_VarSelectionChanged
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POINT_POSITION'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_DC_RT_US_PNT'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POINT_NAME'
        Footers = <>
        Title.Caption = #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STP_DOC_ROUT_POINT_ID'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STP_DC_RT_PNT_POS_ID'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POS_STATE'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POS_RW_NUM'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Main_M_Dc_Aprvl_L: TMainMenu
    Left = 320
    Top = 72
    object N1: TMenuItem
      Caption = #1058#1077#1089#1090
      Visible = False
      OnClick = N1Click
    end
    object Main_M_Dc_Aprvl_L_Btn_Setps: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnClick = Main_M_Dc_Aprvl_L_Btn_SetpsClick
    end
    object Main_M_Dc_Aprvl_L_Btn_Exit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = Main_M_Dc_Aprvl_L_Btn_ExitClick
    end
  end
  object Db_Dc_Aprvl_Lst: TOracleDataSet
    SQL.Strings = (
      'Select Pnt.*, '
      '       Pnt.rowid'
      'From   Src.V_DOC_ROUT_USER_PNTS Pnt'
      'Where  Pnt.Doc_Header_Id = :Id_Doc_Header')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A00490044005F0044004F0043005F0048004500
      4100440045005200050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000110000001E000000490044005F00440043005F00520054005F005500
      53005F0050004E0054000100000000001A00000044004F0043005F0048004500
      41004400450052005F00490044000100000000001600000044004F0043005F00
      54005900500045005F00490044000100000000001400000044004F0043005F00
      4E0055004D004200450052000100000000001000000044004F0043005F004400
      4100540045000100000000001C00000050004F0049004E0054005F0050004F00
      53004900540049004F004E000100000000001400000050004F0049004E005400
      5F004E0041004D0045000100000000002A0000005300540050005F0044004F00
      43005F0052004F00550054005F0050004F0049004E0054005F00490044000100
      000000001600000055005300450052005F0049004E0053004500520054000100
      000000001600000044004100540045005F0049004E0053004500520054000100
      000000001600000055005300450052005F004300480041004E00470045000100
      000000001600000044004100540045005F004300480041004E00470045000100
      000000000C0000004400450050005F0049004400010000000000280000005300
      540050005F00440043005F00520054005F0050004E0054005F0050004F005300
      5F00490044000100000000001400000050004F0053005F00520057005F004E00
      55004D000100000000001200000050004F0053005F0053005400410054004500
      01000000000016000000430048004F00530045005F0053005400410054004500
      010000000000}
    UniqueFields = 'ID_DC_RT_US_PNT'
    UpdatingTable = 'Src.V_DOC_ROUT_USER_PNTS'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 672
    Top = 512
    object Db_Dc_Aprvl_LstID_DC_RT_US_PNT: TIntegerField
      FieldName = 'ID_DC_RT_US_PNT'
      Required = True
    end
    object Db_Dc_Aprvl_LstDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Dc_Aprvl_LstDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Dc_Aprvl_LstDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Dc_Aprvl_LstDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object Db_Dc_Aprvl_LstPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Required = True
      Size = 30
    end
    object Db_Dc_Aprvl_LstPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 50
    end
    object Db_Dc_Aprvl_LstSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_Dc_Aprvl_LstSTP_DC_RT_PNT_POS_ID: TIntegerField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object Db_Dc_Aprvl_LstCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object Db_Dc_Aprvl_LstDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Dc_Aprvl_LstPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object Db_Dc_Aprvl_LstPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object Db_Dc_Aprvl_LstUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Dc_Aprvl_LstDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Dc_Aprvl_LstUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Dc_Aprvl_LstDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
  end
  object Db_Doc_Aprvl_List_Var_Chsn: TOracleDataSet
    SQL.Strings = (
      'Select t.ID_Doc_Rt_Pnt_Pos Stp_Dc_Rt_Pnt_Pos_Id, '
      '       t.Point_User_Name Point_Name,'
      '       t.Pos_State,'
      '       t.Chose_State,'
      '       t.Pos_Rw_Num,'
      '       t.Dep_Id,'
      '       t.Doc_Rt_Pnt_Id Stp_Doc_Rout_Point_Id'
      'From   Stp.V_DOC_ROUT_POINT_POS t'
      'Left   Join Stp.V_Deps Dep'
      'On     t.Dep_Id = Dep.Id_Dep'
      'Where  t.Doc_Type_Id = :v_Doc_Type_Id'
      '       and t.Chose_State = '#39'chsn'#39
      'Order  By t.Pos_Rw_Num')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0056005F0044004F0043005F00540059005000
      45005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000070000001400000050004F0049004E0054005F004E0041004D004500
      010000000000280000005300540050005F00440043005F00520054005F005000
      4E0054005F0050004F0053005F00490044000100000000002A00000053005400
      50005F0044004F0043005F0052004F00550054005F0050004F0049004E005400
      5F00490044000100000000001200000050004F0053005F005300540041005400
      45000100000000001400000050004F0053005F00520057005F004E0055004D00
      0100000000000C0000004400450050005F004900440001000000000016000000
      430048004F00530045005F0053005400410054004500010000000000}
    Session = DM_Main.Session
    Left = 104
    Top = 368
    object Db_Doc_Aprvl_List_Var_ChsnSTP_DC_RT_PNT_POS_ID: TFloatField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
      Required = True
    end
    object Db_Doc_Aprvl_List_Var_ChsnPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Size = 150
    end
    object Db_Doc_Aprvl_List_Var_ChsnSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_Doc_Aprvl_List_Var_ChsnPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object Db_Doc_Aprvl_List_Var_ChsnPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object Db_Doc_Aprvl_List_Var_ChsnDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Doc_Aprvl_List_Var_ChsnCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
  end
  object Db_Dc_Aprvl_Lst_Deps: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid '
      'From   Src.V_Doc_Rout_Us_Pnt_Deps t'
      'Where  t.Doc_Header_Id = :Id_Doc_Header'
      '       And t.Dc_Rt_Us_Pnt_Id = :Id_Dc_Rt_Us_Pnt')
    Optimize = False
    Variables.Data = {
      04000000020000001C0000003A00490044005F0044004F0043005F0048004500
      4100440045005200050000000000000000000000200000003A00490044005F00
      440043005F00520054005F00550053005F0050004E0054000500000000000000
      00000000}
    SequenceField.Field = 'ID_DC_RT_US_PNT_DPS'
    SequenceField.Sequence = 'SRC.S_DOC_RT_US_PNT_DPS_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000000B00000026000000490044005F00440043005F00520054005F005500
      53005F0050004E0054005F004400500053000100000000001A00000044004F00
      43005F004800450041004400450052005F004900440001000000000016000000
      44004F0043005F0054005900500045005F004900440001000000000014000000
      44004F0043005F004E0055004D00420045005200010000000000100000004400
      4F0043005F0044004100540045000100000000001E000000440043005F005200
      54005F00550053005F0050004E0054005F00490044000100000000000C000000
      4400450050005F00490044000100000000001600000055005300450052005F00
      49004E0053004500520054000100000000001600000044004100540045005F00
      49004E0053004500520054000100000000001600000055005300450052005F00
      4300480041004E00470045000100000000001600000044004100540045005F00
      4300480041004E0047004500010000000000}
    UniqueFields = 'ID_DC_RT_US_PNT_DPS'
    UpdatingTable = 'Src.V_Doc_Rout_Us_Pnt_Deps'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 568
    Top = 512
    object Db_Dc_Aprvl_Lst_DepsID_DC_RT_US_PNT_DPS: TFloatField
      FieldName = 'ID_DC_RT_US_PNT_DPS'
    end
    object Db_Dc_Aprvl_Lst_DepsDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Dc_Aprvl_Lst_DepsDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Dc_Aprvl_Lst_DepsDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Dc_Aprvl_Lst_DepsDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object Db_Dc_Aprvl_Lst_DepsDC_RT_US_PNT_ID: TFloatField
      FieldName = 'DC_RT_US_PNT_ID'
      Required = True
    end
    object Db_Dc_Aprvl_Lst_DepsDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
      Required = True
    end
    object Db_Dc_Aprvl_Lst_DepsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_DepsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Dc_Aprvl_Lst_DepsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_DepsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
  end
  object Driver_Dc_Aprvl_Lst: TDataSetDriverEh
    ProviderDataSet = Db_Dc_Aprvl_Lst
    Left = 670
    Top = 464
  end
  object MemT_Dc_Aprvl_Lst: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Dc_Aprvl_Lst
    SortOrder = 'POS_RW_NUM'
    BeforeDelete = MemT_Dc_Aprvl_LstBeforeDelete
    AfterScroll = MemT_Dc_Aprvl_LstAfterScroll
    Left = 670
    Top = 416
    object MemT_Dc_Aprvl_LstID_DC_RT_US_PNT: TIntegerField
      FieldName = 'ID_DC_RT_US_PNT'
      Required = True
    end
    object MemT_Dc_Aprvl_LstDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object MemT_Dc_Aprvl_LstDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object MemT_Dc_Aprvl_LstDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object MemT_Dc_Aprvl_LstDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object MemT_Dc_Aprvl_LstPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Required = True
      Size = 30
    end
    object MemT_Dc_Aprvl_LstPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 50
    end
    object MemT_Dc_Aprvl_LstSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object MemT_Dc_Aprvl_LstSTP_DC_RT_PNT_POS_ID: TIntegerField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object MemT_Dc_Aprvl_LstUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Dc_Aprvl_LstDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Dc_Aprvl_LstUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Dc_Aprvl_LstDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Dc_Aprvl_LstDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object MemT_Dc_Aprvl_LstPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object MemT_Dc_Aprvl_LstPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object MemT_Dc_Aprvl_LstCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
  end
  object Data_Dc_Aprvl_Lst: TDataSource
    Left = 670
    Top = 368
  end
  object Tm_check: TTimer
    OnTimer = Tm_checkTimer
    Left = 744
    Top = 216
  end
  object MemT_Dc_Aprvl_Lst_Var: TMemTableEh
    CachedUpdates = True
    Params = <>
    DataDriver = Driver_Dc_Aprvl_Lst_Var
    Left = 104
    Top = 488
    object MemT_Dc_Aprvl_Lst_VarID_DC_RT_US_PNT: TIntegerField
      FieldName = 'ID_DC_RT_US_PNT'
    end
    object MemT_Dc_Aprvl_Lst_VarPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Size = 30
    end
    object MemT_Dc_Aprvl_Lst_VarPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Size = 50
    end
    object MemT_Dc_Aprvl_Lst_VarSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object MemT_Dc_Aprvl_Lst_VarSTP_DC_RT_PNT_POS_ID: TIntegerField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object MemT_Dc_Aprvl_Lst_VarUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Dc_Aprvl_Lst_VarDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Dc_Aprvl_Lst_VarUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Dc_Aprvl_Lst_VarDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Dc_Aprvl_Lst_VarDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object MemT_Dc_Aprvl_Lst_VarPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object MemT_Dc_Aprvl_Lst_VarPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object MemT_Dc_Aprvl_Lst_VarCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
  end
  object Data_Dc_Aprvl_Lst_Var: TDataSource
    Left = 104
    Top = 440
  end
  object Db_Dc_Aprvl_Lst_Var: TOracleDataSet
    SQL.Strings = (
      'Select Pnt.*, '
      '       Pnt.rowid'
      'From   Src.V_DOC_ROUT_USER_PNTS Pnt'
      'Where  Pnt.Doc_Header_Id = :Id_Doc_Header'
      '')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A00490044005F0044004F0043005F0048004500
      4100440045005200050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000110000001E000000490044005F00440043005F00520054005F005500
      53005F0050004E0054000100000000001A00000044004F0043005F0048004500
      41004400450052005F00490044000100000000001600000044004F0043005F00
      54005900500045005F00490044000100000000001400000044004F0043005F00
      4E0055004D004200450052000100000000001000000044004F0043005F004400
      4100540045000100000000001C00000050004F0049004E0054005F0050004F00
      53004900540049004F004E000100000000001400000050004F0049004E005400
      5F004E0041004D0045000100000000002A0000005300540050005F0044004F00
      43005F0052004F00550054005F0050004F0049004E0054005F00490044000100
      000000001600000055005300450052005F0049004E0053004500520054000100
      000000001600000044004100540045005F0049004E0053004500520054000100
      000000001600000055005300450052005F004300480041004E00470045000100
      000000001600000044004100540045005F004300480041004E00470045000100
      000000000C0000004400450050005F0049004400010000000000280000005300
      540050005F00440043005F00520054005F0050004E0054005F0050004F005300
      5F00490044000100000000001400000050004F0053005F00520057005F004E00
      55004D000100000000001200000050004F0053005F0053005400410054004500
      01000000000016000000430048004F00530045005F0053005400410054004500
      010000000000}
    UniqueFields = 'ID_DC_RT_US_PNT'
    UpdatingTable = 'Src.V_Doc_Rout_Us_Pnt_Deps'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 96
    Top = 592
    object Db_Dc_Aprvl_Lst_VarID_DC_RT_US_PNT: TIntegerField
      FieldName = 'ID_DC_RT_US_PNT'
      Required = True
    end
    object Db_Dc_Aprvl_Lst_VarDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Dc_Aprvl_Lst_VarDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Dc_Aprvl_Lst_VarDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Dc_Aprvl_Lst_VarDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object Db_Dc_Aprvl_Lst_VarPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Required = True
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_VarPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 50
    end
    object Db_Dc_Aprvl_Lst_VarSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_Dc_Aprvl_Lst_VarSTP_DC_RT_PNT_POS_ID: TIntegerField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object Db_Dc_Aprvl_Lst_VarUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_VarDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Dc_Aprvl_Lst_VarUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_VarDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Dc_Aprvl_Lst_VarDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Dc_Aprvl_Lst_VarPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object Db_Dc_Aprvl_Lst_VarPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object Db_Dc_Aprvl_Lst_VarCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
  end
  object Driver_Dc_Aprvl_Lst_Var: TDataSetDriverEh
    ProviderDataSet = Db_Dc_Aprvl_Lst_Var
    Left = 94
    Top = 544
  end
  object Db_Doc_Aprvl_List_Var_Unchsn: TOracleDataSet
    SQL.Strings = (
      'Select t.ID_Doc_Rt_Pnt_Pos Stp_Dc_Rt_Pnt_Pos_Id, '
      '       t.Point_User_Name Point_Name,'
      '       t.Pos_State,'
      '       t.Chose_State,'
      '       t.Pos_Rw_Num,'
      '       t.Dep_Id,'
      '       t.Doc_Rt_Pnt_Id Stp_Doc_Rout_Point_Id'
      'From   Stp.V_DOC_ROUT_POINT_POS t'
      'Left   Join Stp.V_Deps Dep'
      'On     t.Dep_Id = Dep.Id_Dep'
      'Where  t.Doc_Type_Id = :v_Doc_Type_Id'
      '       and t.Chose_State = '#39'unchsn'#39
      'Order  By t.Pos_Rw_Num')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0056005F0044004F0043005F00540059005000
      45005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000070000001400000050004F0049004E0054005F004E0041004D004500
      010000000000280000005300540050005F00440043005F00520054005F005000
      4E0054005F0050004F0053005F00490044000100000000002A00000053005400
      50005F0044004F0043005F0052004F00550054005F0050004F0049004E005400
      5F00490044000100000000001200000050004F0053005F005300540041005400
      45000100000000001400000050004F0053005F00520057005F004E0055004D00
      0100000000000C0000004400450050005F004900440001000000000016000000
      430048004F00530045005F0053005400410054004500010000000000}
    Session = DM_Main.Session
    Left = 512
    Top = 360
    object Db_Doc_Aprvl_List_Var_UnchsnSTP_DC_RT_PNT_POS_ID: TFloatField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
      Required = True
    end
    object Db_Doc_Aprvl_List_Var_UnchsnPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Size = 150
    end
    object Db_Doc_Aprvl_List_Var_UnchsnPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object Db_Doc_Aprvl_List_Var_UnchsnPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object Db_Doc_Aprvl_List_Var_UnchsnSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_Doc_Aprvl_List_Var_UnchsnDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Doc_Aprvl_List_Var_UnchsnCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
  end
  object Data_Dc_Aprvl_Lst_Deps: TDataSource
    DataSet = Db_Dc_Aprvl_Lst_Deps
    Left = 560
    Top = 456
  end
  object Data_Dc_Aprvl_Lst_Links: TDataSource
    Left = 776
    Top = 368
  end
  object Seq_Doc_Rout_Us_Pnt_Id: TOracleQuery
    SQL.Strings = (
      'Select Src.S_Doc_Rout_Us_Pnt_Id.Nextval '
      'From   Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 470
    Top = 256
  end
  object Db_Dc_Aprvl_Lst_Links: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid'
      'From   Src.V_Doc_Rout_Us_Pnt_Links t'
      'Where  t.Doc_Header_Id = :Id_Doc_Header')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A00490044005F0044004F0043005F0048004500
      4100440045005200050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000000700000026000000490044005F00440043005F00520054005F005500
      53005F0050004E0054005F004C004E004B000100000000001A00000044004F00
      43005F004800450041004400450052005F004900440001000000000016000000
      44004F0043005F0054005900500045005F004900440001000000000014000000
      44004F0043005F004E0055004D00420045005200010000000000100000004400
      4F0043005F0044004100540045000100000000001E000000440043005F005200
      54005F00550053005F0050004E0054005F004900440001000000000026000000
      440043005F00520054005F00550053005F0050004E0054005F004E0058005400
      5F0049004400010000000000}
    UniqueFields = 'ID_DC_RT_US_PNT_LNK'
    UpdatingTable = 'Src.V_Doc_Rout_Us_Pnt_Links'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 776
    Top = 512
    object Db_Dc_Aprvl_Lst_LinksID_DC_RT_US_PNT_LNK: TIntegerField
      FieldName = 'ID_DC_RT_US_PNT_LNK'
    end
    object Db_Dc_Aprvl_Lst_LinksDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Dc_Aprvl_Lst_LinksDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Dc_Aprvl_Lst_LinksDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Dc_Aprvl_Lst_LinksDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object Db_Dc_Aprvl_Lst_LinksDC_RT_US_PNT_ID: TIntegerField
      FieldName = 'DC_RT_US_PNT_ID'
    end
    object Db_Dc_Aprvl_Lst_LinksDC_RT_US_PNT_NXT_ID: TIntegerField
      FieldName = 'DC_RT_US_PNT_NXT_ID'
    end
  end
  object Q_Get_Doc_Name: TOracleQuery
    SQL.Strings = (
      'Begin'
      
        '  :result := Src.pkg_doc.f_get_doc_name(in_doc_type_id => :in_do' +
        'c_type_id);'
      'End;')
    Session = DM_Main.Session
    Optimize = False
    Variables.Data = {
      04000000020000000E0000003A0052004500530055004C005400050000001100
      0000CAE0F0F2E020F0E0E7F0E5F8E5EDE8FF00000000001E0000003A0049004E
      005F0044004F0043005F0054005900500045005F0049004400050000000E0000
      00414C4C4F575F434152445F524D0000000000}
    Left = 144
    Top = 240
  end
  object Db_Stp_Point_Pstns: TOracleDataSet
    SQL.Strings = (
      'Select t.* '
      'From   Stp.V_Doc_Rout_Point_Pstns t'
      'Where  t.Doc_Rout_Point_Id = :Stp_Doc_Rout_Point_Id')
    Optimize = False
    Variables.Data = {
      04000000010000002C0000003A005300540050005F0044004F0043005F005200
      4F00550054005F0050004F0049004E0054005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000050000002C000000490044005F0044004F0043005F0052004F005500
      54005F0050004F0049004E0054005F005000530054004E000100000000001400
      000050004F0049004E0054005F004E004F005400450001000000000020000000
      4400450050005F004D004D00420052005F005000530054004E005F0049004400
      0100000000002200000044004F0043005F0052004F00550054005F0050004F00
      49004E0054005F0049004400010000000000140000004400450050005F005300
      4F005500520043004500010000000000}
    Session = DM_Main.Session
    Left = 296
    Top = 480
    object Db_Stp_Point_PstnsID_DOC_ROUT_POINT_PSTN: TIntegerField
      FieldName = 'ID_DOC_ROUT_POINT_PSTN'
      Required = True
    end
    object Db_Stp_Point_PstnsPOINT_NOTE: TStringField
      FieldName = 'POINT_NOTE'
      Size = 300
    end
    object Db_Stp_Point_PstnsDEP_MMBR_PSTN_ID: TIntegerField
      FieldName = 'DEP_MMBR_PSTN_ID'
      Required = True
    end
    object Db_Stp_Point_PstnsDOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'DOC_ROUT_POINT_ID'
      Required = True
    end
    object Db_Stp_Point_PstnsDEP_SOURCE: TStringField
      FieldName = 'DEP_SOURCE'
      Size = 11
    end
  end
  object Data_Dc_Rout_Point_Pstns: TDataSource
    Left = 456
    Top = 456
  end
  object Data_Dc_Aprvl_Lst_Users: TDataSource
    Left = 606
    Top = 304
  end
  object Data_Dc_Aprvl_Lst_Results: TDataSource
    Left = 576
    Top = 208
  end
  object Db_Stp_Point_Results: TOracleDataSet
    SQL.Strings = (
      'Select t.* '
      'From   Stp.v_Doc_Rout_Point_Rslts t'
      'Where  t.Doc_Rout_Point_Id = :Stp_Doc_Rout_Point_Id')
    Optimize = False
    Variables.Data = {
      04000000010000002C0000003A005300540050005F0044004F0043005F005200
      4F00550054005F0050004F0049004E0054005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000090000002200000044004F0043005F0052004F00550054005F005000
      4F0049004E0054005F00490044000100000000002C000000490044005F004400
      4F0043005F0052004F00550054005F0050004F0049004E0054005F0052005300
      4C0054000100000000003000000044004F0043005F005200450053004F004C00
      5500540049004F004E005F0052004500530055004C0054005F00490044000100
      000000002400000044004F005F00500052004F00430045004400550052004500
      5F004F0057004E00450052000100000000002800000044004F005F0050005200
      4F004300450044005500520045005F005000410043004B004100470045000100
      000000002200000044004F005F00500052004F00430045004400550052004500
      5F004E0041004D0045000100000000002800000055004E0044004F005F005000
      52004F004300450044005500520045005F004F0057004E004500520001000000
      00002C00000055004E0044004F005F00500052004F0043004500440055005200
      45005F005000410043004B004100470045000100000000002600000055004E00
      44004F005F00500052004F004300450044005500520045005F004E0041004D00
      4500010000000000}
    Session = DM_Main.Session
    Left = 296
    Top = 536
    object Db_Stp_Point_ResultsID_DOC_ROUT_POINT_RSLT: TIntegerField
      FieldName = 'ID_DOC_ROUT_POINT_RSLT'
      Required = True
    end
    object Db_Stp_Point_ResultsDOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'DOC_ROUT_POINT_ID'
      Required = True
    end
    object Db_Stp_Point_ResultsDOC_RESOLUTION_RESULT_ID: TIntegerField
      FieldName = 'DOC_RESOLUTION_RESULT_ID'
      Required = True
    end
    object Db_Stp_Point_ResultsDO_PROCEDURE_OWNER: TStringField
      FieldName = 'DO_PROCEDURE_OWNER'
      Size = 30
    end
    object Db_Stp_Point_ResultsDO_PROCEDURE_PACKAGE: TStringField
      FieldName = 'DO_PROCEDURE_PACKAGE'
      Size = 30
    end
    object Db_Stp_Point_ResultsDO_PROCEDURE_NAME: TStringField
      FieldName = 'DO_PROCEDURE_NAME'
      Size = 30
    end
    object Db_Stp_Point_ResultsUNDO_PROCEDURE_OWNER: TStringField
      FieldName = 'UNDO_PROCEDURE_OWNER'
      Size = 30
    end
    object Db_Stp_Point_ResultsUNDO_PROCEDURE_PACKAGE: TStringField
      FieldName = 'UNDO_PROCEDURE_PACKAGE'
      Size = 30
    end
    object Db_Stp_Point_ResultsUNDO_PROCEDURE_NAME: TStringField
      FieldName = 'UNDO_PROCEDURE_NAME'
      Size = 30
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 726
    Top = 144
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N2Click
    end
  end
  object Db_Doc_NextPointNodes: TOracleDataSet
    SQL.Strings = (
      'Select t.*, c.Point_USER_NAME'
      'From   Stp.V_Doc_Rout_Point_Pos_Cnnct t'
      'Left   Join Stp.V_Doc_Rout_Point_Pos p'
      'On     t.P_Doc_Rt_Pnt_Pos_Id=p.Id_Doc_Rt_Pnt_Pos'
      'Left   Join Stp.V_Doc_Rout_Point_Pos c'
      'On     t.c_Doc_Rt_Pnt_Pos_Id=c.Id_Doc_Rt_Pnt_Pos'
      'Where  p.Doc_Type_Id = :Doc_Type_Id'
      '       And Level=:InLevel'
      'Connect By Prior t.c_Doc_Rt_Pnt_Pos_Id=t.p_Doc_Rt_Pnt_Pos_Id'
      'Start With p.Id_Doc_Rt_Pnt_Pos=:Doc_Rt_Pnt_Pos_Id')
    Optimize = False
    Variables.Data = {
      0400000003000000180000003A0044004F0043005F0054005900500045005F00
      49004400050000000000000000000000240000003A0044004F0043005F005200
      54005F0050004E0054005F0050004F0053005F00490044000500000000000000
      00000000100000003A0049004E004C004500560045004C000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000002600000050005F0044004F0043005F00520054005F005000
      4E0054005F0050004F0053005F00490044000100000000002600000043005F00
      44004F0043005F00520054005F0050004E0054005F0050004F0053005F004900
      44000100000000001E00000050004F0049004E0054005F005500530045005200
      5F004E0041004D004500010000000000}
    Session = DM_Main.Session
    Left = 296
    Top = 376
    object Db_Doc_NextPointNodesP_DOC_RT_PNT_POS_ID: TFloatField
      FieldName = 'P_DOC_RT_PNT_POS_ID'
    end
    object Db_Doc_NextPointNodesC_DOC_RT_PNT_POS_ID: TFloatField
      FieldName = 'C_DOC_RT_PNT_POS_ID'
    end
    object Db_Doc_NextPointNodesPOINT_USER_NAME: TStringField
      FieldName = 'POINT_USER_NAME'
      Size = 300
    end
  end
  object Db_Doc_PrevPointNodes: TOracleDataSet
    SQL.Strings = (
      'Select t.*, p.POINT_USER_NAME'
      'From   Stp.V_Doc_Rout_Point_Pos_Cnnct t'
      'Left   Join Stp.V_Doc_Rout_Point_Pos p'
      'On     t.P_Doc_Rt_Pnt_Pos_Id=p.Id_Doc_Rt_Pnt_Pos'
      'Left   Join Stp.V_Doc_Rout_Point_Pos c'
      'On     t.c_Doc_Rt_Pnt_Pos_Id=c.Id_Doc_Rt_Pnt_Pos'
      'Where  c.Doc_Type_Id = :Doc_Type_Id'
      '       And Level=:InLevel'
      'Connect By Prior t.p_Doc_Rt_Pnt_Pos_Id=t.c_Doc_Rt_Pnt_Pos_Id'
      'Start With c.Id_Doc_Rt_Pnt_Pos=:Doc_Rt_Pnt_Pos_Id')
    Optimize = False
    Variables.Data = {
      0400000003000000180000003A0044004F0043005F0054005900500045005F00
      49004400050000000000000000000000240000003A0044004F0043005F005200
      54005F0050004E0054005F0050004F0053005F00490044000500000000000000
      00000000100000003A0049004E004C004500560045004C000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000002600000050005F0044004F0043005F00520054005F005000
      4E0054005F0050004F0053005F00490044000100000000002600000043005F00
      44004F0043005F00520054005F0050004E0054005F0050004F0053005F004900
      44000100000000001E00000050004F0049004E0054005F005500530045005200
      5F004E0041004D004500010000000000}
    Session = DM_Main.Session
    Left = 296
    Top = 320
    object Db_Doc_PrevPointNodesP_DOC_RT_PNT_POS_ID: TFloatField
      FieldName = 'P_DOC_RT_PNT_POS_ID'
    end
    object Db_Doc_PrevPointNodesC_DOC_RT_PNT_POS_ID: TFloatField
      FieldName = 'C_DOC_RT_PNT_POS_ID'
    end
    object Db_Doc_PrevPointNodesPOINT_USER_NAME: TStringField
      FieldName = 'POINT_USER_NAME'
      Size = 300
    end
  end
end
