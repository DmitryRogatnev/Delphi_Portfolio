object Form_Setup_Dc_Arvl_Lst: TForm_Setup_Dc_Arvl_Lst
  Left = 0
  Top = 0
  Caption = 'Form_Setup_Dc_Arvl_Lst'
  ClientHeight = 627
  ClientWidth = 1127
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Main_M_Doc_Aprvl_List_Setup
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 824
    Top = 0
    Height = 627
    Align = alRight
    ExplicitLeft = 928
    ExplicitTop = 344
    ExplicitHeight = 100
  end
  object Grid_Doc_Aprvl_List_Setup: TDBGridEh
    Left = 0
    Top = 0
    Width = 824
    Height = 627
    Align = alClient
    AllowedSelections = [gstRectangle, gstColumns, gstAll]
    AutoFitColWidths = True
    DataSource = Data_Doc_Aprvl_List_Setup
    DynProps = <>
    EvenRowColor = clMenuBar
    Flat = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghRecordMoving, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    RowHeight = 2
    RowLines = 1
    RowSizingAllowed = True
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
        FieldName = 'ID_DOC_RT_PNT_POS'
        Footers = <>
        Title.Caption = 'Id'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CONNECT_W_PNT_ID'
        Footers = <>
        Title.Caption = #1057#1074#1103#1079#1072#1085' '#1089' Id'
        Visible = False
        Width = 80
      end
      item
        ButtonStyle = cbsNone
        CellButtons = <>
        DropDownFormParams.DropDownForm = Drop_D_Form_Gen_Chose.Owner
        DropDownFormParams.PassParams = pspCustomValuesEh
        DynProps = <>
        EditButton.DropDownFormParams.DropDownForm = Drop_D_Form_Gen_Chose.Owner
        EditButton.DropDownFormParams.PassParams = pspCustomValuesEh
        EditButton.Visible = False
        EditButtons = <
          item
            DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
            ShortCut = 0
          end>
        FieldName = 'POINT_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1095#1082#1080
        Title.TitleButton = True
        Width = 189
        OnCloseDropDownForm = Grid_Doc_Aprvl_List_SetupColumns2CloseDropDownForm
        OnOpenDropDownForm = Grid_Doc_Aprvl_List_SetupColumns2OpenDropDownForm
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
        EditButtons = <
          item
            DropDownFormParams.DropDownForm = Drop_D_Form_Gen_Chose.Owner
            DropDownFormParams.PassParams = pspCustomValuesEh
          end>
        FieldName = 'DEP_SNAME'
        Footers = <>
        Title.Caption = #1062#1077#1093' / '#1054#1090#1076#1077#1083
        Title.TitleButton = True
        Width = 85
        OnCloseDropDownForm = Grid_Doc_Aprvl_List_SetupColumns1CloseDropDownForm
        OnOpenDropDownForm = Grid_Doc_Aprvl_List_SetupColumns1OpenDropDownForm
        OnUpdateData = Grid_Doc_Aprvl_List_SetupColumns1UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
            ShortCut = 0
          end>
        FieldName = 'EMP_FIO'
        Footers = <>
        Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        OnCloseDropDownForm = Grid_Doc_Aprvl_List_SetupColumns4CloseDropDownForm
        OnOpenDropDownForm = Grid_Doc_Aprvl_List_SetupColumns4OpenDropDownForm
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            DropDownFormParams.DropDownForm = Drop_D_Form_Gen_Chose.Owner
            DropDownFormParams.PassParams = pspCustomValuesEh
          end>
        FieldName = 'POINT_NAME_FRMT_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1060#1086#1088#1084#1072#1090' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1103
        Width = 194
        OnCloseDropDownForm = Grid_Doc_Aprvl_List_SetupColumns7CloseDropDownForm
        OnOpenDropDownForm = Grid_Doc_Aprvl_List_SetupColumns7OpenDropDownForm
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POINT_USER_NAME'
        Footers = <>
        Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100#1089#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 248
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            DropDownFormParams.DropDownForm = Drop_D_Form_Gen_Chose.Owner
            DropDownFormParams.PassParams = pspCustomValuesEh
          end>
        FieldName = 'POS_STATE_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1055#1086#1088#1103#1076#1086#1082' '#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
        Width = 175
        OnCloseDropDownForm = Grid_Doc_Aprvl_List_SetupColumns3CloseDropDownForm
        OnOpenDropDownForm = Grid_Doc_Aprvl_List_SetupColumns3OpenDropDownForm
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            DropDownFormParams.DropDownForm = Drop_D_Form_Gen_Chose.Owner
            DropDownFormParams.PassParams = pspCustomValuesEh
          end>
        FieldName = 'CHOSE_STATE_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1054#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1089#1090#1100
        Width = 153
        OnCloseDropDownForm = Grid_Doc_Aprvl_List_SetupColumns6CloseDropDownForm
        OnOpenDropDownForm = Grid_Doc_Aprvl_List_SetupColumns6OpenDropDownForm
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Grid_Links: TDBGridEh
    Left = 827
    Top = 0
    Width = 300
    Height = 627
    Align = alRight
    AutoFitColWidths = True
    DataSource = Data_Doc_Aprvl_ListLinks
    DynProps = <>
    Flat = True
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    RowHeight = 2
    RowLines = 1
    SearchPanel.Enabled = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CHILD_POINT_NAME'
        Footers = <>
        Title.Caption = #1057#1074#1103#1079#1072#1085' '#1089
        Width = 200
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Main_M_Doc_Aprvl_List_Setup: TMainMenu
    Left = 392
    Top = 176
    object Main_M_Doc_Aprvl_Lst_Stp_Btn_Save: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnClick = Main_M_Doc_Aprvl_Lst_Stp_Btn_SaveClick
    end
    object Main_M_Doc_Aprvl_Lst_Stp_Btn_Cnnct: TMenuItem
      Caption = #1057#1074#1103#1079#1072#1090#1100
      OnClick = Main_M_Doc_Aprvl_Lst_Stp_Btn_CnnctClick
    end
    object Main_M_Doc_Aprvl_Lst_Stp_Btn_Exit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = Main_M_Doc_Aprvl_Lst_Stp_Btn_ExitClick
    end
  end
  object Db_Doc_Aprvl_List_Setup: TOracleDataSet
    SQL.Strings = (
      'Select t.*,       '
      '       ( Case'
      
        '           When t.Dep_Id Is Not Null Then Dep.Dep_Sname||'#39' ('#39'||D' +
        'ep.Dep_Code||'#39')'#39' '
      '           Else Null'
      '         End ) Dep_Sname, '
      '       u.Emp_Fio,'
      '       t.rowid'
      'From   Stp.V_DOC_ROUT_POINT_POS t'
      'Left   Join Stp.V_Deps Dep'
      'On     t.Dep_Id = Dep.Id_Dep'
      '       And Nvl(Dep.Date_Expitation, Sysdate) <= Sysdate'
      'Left   Join Stp.V_Users u'
      'On     u.Id_User = t.User_Id'
      '       And u.Act_Status = 1'
      'Where  t.Doc_Type_Id = :v_Doc_Type_Id'
      'Order  By t.Pos_Rw_Num')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0056005F0044004F0043005F00540059005000
      45005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001600000022000000490044005F0044004F0043005F00520054005F00
      50004E0054005F0050004F0053000100000000001600000044004F0043005F00
      54005900500045005F00490044000100000000001400000050004F0053005F00
      520057005F004E0055004D000100000000001A00000044004F0043005F005200
      54005F0050004E0054005F00490044000100000000001400000050004F004900
      4E0054005F004E0041004D0045000100000000000C0000004400450050005F00
      490044000100000000001200000044004F0043005F00520054005F0049004400
      0100000000001200000050004F0053005F005300540041005400450001000000
      00001600000055005300450052005F0049004E00530045005200540001000000
      00001600000044004100540045005F0049004E00530045005200540001000000
      00001600000055005300450052005F004300480041004E004700450001000000
      00001600000044004100540045005F004300480041004E004700450001000000
      0000120000004400450050005F0053004E0041004D0045000100000000001C00
      000050004F0053005F00530054004100540045005F004E0041004D0045000100
      000000001E00000050004F0049004E0054005F004E0041004D0045005F004600
      52004D0054000100000000002800000050004F0049004E0054005F004E004100
      4D0045005F00460052004D0054005F004E0041004D0045000100000000001E00
      000050004F0049004E0054005F0055005300450052005F004E0041004D004500
      01000000000016000000430048004F00530045005F0053005400410054004500
      01000000000020000000430048004F00530045005F0053005400410054004500
      5F004E0041004D0045000100000000002000000043004F004E004E0045004300
      54005F0057005F0050004E0054005F00490044000100000000000E0000005500
      5300450052005F00490044000100000000000E00000045004D0050005F004600
      49004F00010000000000}
    UniqueFields = 'ID_DOC_RT_PNT_POS'
    UpdatingTable = 'Stp.V_DOC_ROUT_POINT_POS'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 200
    Top = 472
    object Db_Doc_Aprvl_List_SetupID_DOC_RT_PNT_POS: TFloatField
      FieldName = 'ID_DOC_RT_PNT_POS'
      Required = True
    end
    object Db_Doc_Aprvl_List_SetupDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Doc_Aprvl_List_SetupPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object Db_Doc_Aprvl_List_SetupDOC_RT_PNT_ID: TIntegerField
      FieldName = 'DOC_RT_PNT_ID'
    end
    object Db_Doc_Aprvl_List_SetupPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Size = 50
    end
    object Db_Doc_Aprvl_List_SetupDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Doc_Aprvl_List_SetupDOC_RT_ID: TIntegerField
      FieldName = 'DOC_RT_ID'
    end
    object Db_Doc_Aprvl_List_SetupPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object Db_Doc_Aprvl_List_SetupUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Doc_Aprvl_List_SetupDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Doc_Aprvl_List_SetupUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Doc_Aprvl_List_SetupDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Doc_Aprvl_List_SetupPOS_STATE_NAME: TStringField
      FieldName = 'POS_STATE_NAME'
      Size = 15
    end
    object Db_Doc_Aprvl_List_SetupPOINT_NAME_FRMT_NAME: TStringField
      FieldName = 'POINT_NAME_FRMT_NAME'
      Size = 29
    end
    object Db_Doc_Aprvl_List_SetupPOINT_USER_NAME: TStringField
      FieldName = 'POINT_USER_NAME'
      Size = 300
    end
    object Db_Doc_Aprvl_List_SetupPOINT_NAME_FRMT: TStringField
      FieldName = 'POINT_NAME_FRMT'
      Size = 22
    end
    object Db_Doc_Aprvl_List_SetupDEP_SNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 205
    end
    object Db_Doc_Aprvl_List_SetupCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object Db_Doc_Aprvl_List_SetupCHOSE_STATE_NAME: TStringField
      FieldName = 'CHOSE_STATE_NAME'
      Size = 12
    end
    object Db_Doc_Aprvl_List_SetupCONNECT_W_PNT_ID: TIntegerField
      FieldName = 'CONNECT_W_PNT_ID'
    end
    object Db_Doc_Aprvl_List_SetupUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
    object Db_Doc_Aprvl_List_SetupEMP_FIO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'EMP_FIO'
      Size = 26
    end
  end
  object Data_Doc_Aprvl_List_Setup: TDataSource
    DataSet = MemT_Doc_Aprvl_List_Setup
    Left = 200
    Top = 328
  end
  object Seq_Doc_Aprvl_List_Setup: TOracleQuery
    SQL.Strings = (
      'Select Stp.S_Doc_Rout_Point_Pos_Id.Nextval '
      'From   Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 200
    Top = 288
  end
  object Db_Doc_Aprvl_ListLinks: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid, '
      '       p.POINT_USER_NAME Parent_Point_Name, '
      '       c.POINT_USER_NAME Child_Point_Name'
      'From   Stp.V_Doc_Rout_Point_Pos_Cnnct t'
      'Left   Join Stp.V_Doc_Rout_Point_Pos p'
      'On     t.P_Doc_Rt_Pnt_Pos_Id=p.Id_Doc_Rt_Pnt_Pos'
      'Left   Join Stp.V_Doc_Rout_Point_Pos c'
      'On     t.c_Doc_Rt_Pnt_Pos_Id=c.Id_Doc_Rt_Pnt_Pos'
      'Where  p.Doc_Type_Id = :v_Doc_Type_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0056005F0044004F0043005F00540059005000
      45005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000002600000050005F0044004F0043005F00520054005F005000
      4E0054005F0050004F0053005F00490044000100000000002600000043005F00
      44004F0043005F00520054005F0050004E0054005F0050004F0053005F004900
      44000100000000002200000050004100520045004E0054005F0050004F004900
      4E0054005F004E0041004D004500010000000000200000004300480049004C00
      44005F0050004F0049004E0054005F004E0041004D004500010000000000}
    UniqueFields = 'P_DOC_RT_PNT_POS_ID; C_DOC_RT_PNT_POS_ID'
    UpdatingTable = 'Stp.V_Doc_Rout_Point_Pos_Cnnct'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 512
    Top = 480
    object Db_Doc_Aprvl_ListLinksP_DOC_RT_PNT_POS_ID: TFloatField
      FieldName = 'P_DOC_RT_PNT_POS_ID'
      Required = True
    end
    object Db_Doc_Aprvl_ListLinksC_DOC_RT_PNT_POS_ID: TFloatField
      FieldName = 'C_DOC_RT_PNT_POS_ID'
      Required = True
    end
    object Db_Doc_Aprvl_ListLinksPARENT_POINT_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PARENT_POINT_NAME'
      Size = 50
    end
    object Db_Doc_Aprvl_ListLinksCHILD_POINT_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CHILD_POINT_NAME'
      Size = 50
    end
  end
  object Data_Doc_Aprvl_ListLinks: TDataSource
    DataSet = MemT_Doc_Aprvl_ListLinks
    Left = 528
    Top = 328
  end
  object MemT_Doc_Aprvl_List_Setup: TMemTableEh
    CachedUpdates = True
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Doc_Aprvl_List_Setup
    OnNewRecord = MemT_Doc_Aprvl_List_SetupNewRecord
    Left = 200
    Top = 376
    object MemT_Doc_Aprvl_List_SetupID_DOC_RT_PNT_POS: TFloatField
      FieldName = 'ID_DOC_RT_PNT_POS'
      Required = True
    end
    object MemT_Doc_Aprvl_List_SetupDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object MemT_Doc_Aprvl_List_SetupPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object MemT_Doc_Aprvl_List_SetupDOC_RT_PNT_ID: TIntegerField
      FieldName = 'DOC_RT_PNT_ID'
    end
    object MemT_Doc_Aprvl_List_SetupPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Size = 50
    end
    object MemT_Doc_Aprvl_List_SetupDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object MemT_Doc_Aprvl_List_SetupDOC_RT_ID: TIntegerField
      FieldName = 'DOC_RT_ID'
    end
    object MemT_Doc_Aprvl_List_SetupPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object MemT_Doc_Aprvl_List_SetupUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Doc_Aprvl_List_SetupDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Doc_Aprvl_List_SetupUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Doc_Aprvl_List_SetupDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Doc_Aprvl_List_SetupPOS_STATE_NAME: TStringField
      FieldName = 'POS_STATE_NAME'
      Size = 15
    end
    object MemT_Doc_Aprvl_List_SetupPOINT_NAME_FRMT_NAME: TStringField
      FieldName = 'POINT_NAME_FRMT_NAME'
      Size = 29
    end
    object MemT_Doc_Aprvl_List_SetupPOINT_USER_NAME: TStringField
      FieldName = 'POINT_USER_NAME'
      Size = 300
    end
    object MemT_Doc_Aprvl_List_SetupPOINT_NAME_FRMT: TStringField
      FieldName = 'POINT_NAME_FRMT'
      Size = 22
    end
    object MemT_Doc_Aprvl_List_SetupDEP_SNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 205
    end
    object MemT_Doc_Aprvl_List_SetupCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object MemT_Doc_Aprvl_List_SetupCHOSE_STATE_NAME: TStringField
      FieldName = 'CHOSE_STATE_NAME'
      Size = 12
    end
    object MemT_Doc_Aprvl_List_SetupCONNECT_W_PNT_ID: TIntegerField
      FieldName = 'CONNECT_W_PNT_ID'
    end
    object MemT_Doc_Aprvl_List_SetupUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
    object MemT_Doc_Aprvl_List_SetupEMP_FIO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'EMP_FIO'
      Size = 26
    end
  end
  object Driver_Doc_Aprvl_List_Setup: TDataSetDriverEh
    KeyFields = 'ID_DOC_RT_PNT_POS'
    ProviderDataSet = Db_Doc_Aprvl_List_Setup
    Left = 200
    Top = 424
  end
  object Driver_Doc_Aprvl_ListLinks: TDataSetDriverEh
    KeyFields = 'P_DOC_RT_PNT_POS_ID; C_DOC_RT_PNT_POS_ID'
    ProviderDataSet = Db_Doc_Aprvl_ListLinks
    Left = 512
    Top = 432
  end
  object MemT_Doc_Aprvl_ListLinks: TMemTableEh
    CachedUpdates = True
    DetailFields = 'P_DOC_RT_PNT_POS_ID'
    Filtered = True
    FetchAllOnOpen = True
    MasterFields = 'ID_DOC_RT_PNT_POS'
    MasterSource = Data_Doc_Aprvl_List_Setup
    Params = <>
    DataDriver = Driver_Doc_Aprvl_ListLinks
    Left = 520
    Top = 376
    object MemT_Doc_Aprvl_ListLinksP_DOC_RT_PNT_POS_ID: TFloatField
      FieldName = 'P_DOC_RT_PNT_POS_ID'
      Required = True
    end
    object MemT_Doc_Aprvl_ListLinksC_DOC_RT_PNT_POS_ID: TFloatField
      FieldName = 'C_DOC_RT_PNT_POS_ID'
      Required = True
    end
    object MemT_Doc_Aprvl_ListLinksPARENT_POINT_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PARENT_POINT_NAME'
      Size = 50
    end
    object MemT_Doc_Aprvl_ListLinksCHILD_POINT_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CHILD_POINT_NAME'
      Size = 50
    end
  end
end
