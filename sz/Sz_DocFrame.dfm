object Frame_Doc: TFrame_Doc
  Left = 0
  Top = 0
  Width = 1095
  Height = 716
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'clWindowText'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 0
    Top = 145
    Width = 1095
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 161
    ExplicitWidth = 555
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1095
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel2'
    Color = clMenu
    ParentBackground = False
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1095
      Height = 24
      Align = alClient
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Caption = 'ToolBar1'
      Customizable = True
      GradientStartColor = clMenu
      Images = Form_Sz_Main.ImageList2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object Tb_Add: TToolButton
        Left = 0
        Top = 0
        Action = Act_AddItem
      end
      object Tb_Copy: TToolButton
        Left = 24
        Top = 0
        Action = Act_Copy
      end
      object Tb_Paste: TToolButton
        Left = 48
        Top = 0
        Action = Act_Paste
      end
      object Tb_Delete: TToolButton
        Left = 72
        Top = 0
        Action = Act_Delete
      end
      object Tb_Save: TToolButton
        Left = 96
        Top = 0
        Caption = 'Tb_Save'
        ImageIndex = 16
        OnClick = Tb_SaveClick
      end
      object Tb_Print: TToolButton
        Left = 120
        Top = 0
        Action = Act_Print
      end
      object ToolButton1: TToolButton
        Left = 144
        Top = 0
        Width = 105
        Caption = 'ToolButton1'
        ImageIndex = 76
        Style = tbsSeparator
      end
      object Tb_Lock: TToolButton
        Left = 249
        Top = 0
        Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1088#1077#1097#1077#1085#1086
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1088#1077#1097#1077#1085#1086
        ImageIndex = 53
      end
    end
  end
  object Panel_DocInfo: TPanel
    Left = 0
    Top = 24
    Width = 1095
    Height = 121
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = 'Panel_DocInfo'
    Color = clMenu
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    DesignSize = (
      1091
      117)
    object E_DocNumber: TDBEditEh
      AlignWithMargins = True
      Left = 3
      Top = 21
      Width = 104
      Height = 20
      ControlLabel.Width = 43
      ControlLabel.Height = 14
      ControlLabel.Caption = #8470' '#1076#1086#1082'.*:'
      ControlLabel.Visible = True
      DataField = 'SZ_NUMBER'
      DataSource = Data_Doc
      DynProps = <>
      EditButtons = <
        item
          Style = ebsEllipsisEh
          Width = 20
          OnClick = E_DocNumberEditButtons0Click
        end>
      EmptyDataInfo.Text = #1053#1077' '#1091#1082#1072#1079#1072#1085'...'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = True
      EditMask = ''
    end
    object Lcb_Cont_Sections: TDBLookupComboboxEh
      AlignWithMargins = True
      Left = 436
      Top = 21
      Width = 321
      Height = 20
      ControlLabel.Width = 28
      ControlLabel.Height = 14
      ControlLabel.Caption = #1055#1086#1083#1077':'
      ControlLabel.Visible = True
      Anchors = [akTop, akRight]
      DynProps = <>
      DataField = ''
      EditButton.Width = 20
      EditButtons = <>
      Flat = True
      KeyField = 'CONT_SECTION_NAME'
      ListField = 'CONT_SECTION_NAME'
      ListSource = Data_Doc_Sections
      TabOrder = 1
      Visible = True
      OnKeyValueChanged = Lcb_Cont_SectionsKeyValueChanged
    end
    object Lcb_SectionUser: TDBLookupComboboxEh
      AlignWithMargins = True
      Left = 763
      Top = 21
      Width = 321
      Height = 20
      ControlLabel.Width = 34
      ControlLabel.Height = 14
      ControlLabel.Caption = #1060'.'#1048'.'#1054':'
      ControlLabel.Visible = True
      Anchors = [akTop, akRight]
      DynProps = <>
      DataField = 'EMP_FIO'
      DataSource = Data_Doc_Contacts
      EditButton.Width = 20
      EditButtons = <>
      Flat = True
      KeyField = 'EMP_FIO'
      ListField = 'EMP_FIO'
      ListSource = Data_SectionUsers
      TabOrder = 2
      Visible = True
      OnKeyValueChanged = Lcb_SectionUserKeyValueChanged
    end
    object M_Note: TDBMemoEh
      AlignWithMargins = True
      Left = 3
      Top = 65
      Width = 1085
      Height = 49
      ControlLabel.Width = 94
      ControlLabel.Height = 14
      ControlLabel.Caption = #1058#1077#1084#1072'/'#1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
      ControlLabel.Visible = True
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoSize = False
      DataField = 'SZ_NOTE'
      DataSource = Data_Doc
      DynProps = <>
      EditButtons = <>
      EmptyDataInfo.Text = #1053#1077' '#1091#1082#1072#1079#1072#1085#1086'...'
      TabOrder = 3
      Visible = True
      WantReturns = True
    end
    object E_DocDate: TDBDateTimeEditEh
      Left = 144
      Top = 21
      Width = 209
      Height = 20
      ControlLabel.Width = 33
      ControlLabel.Height = 14
      ControlLabel.Caption = #1044#1072#1090#1072'*:'
      ControlLabel.Visible = True
      DataField = 'SZ_DATE'
      DataSource = Data_Doc
      DynProps = <>
      EditButton.Width = 20
      EditButtons = <>
      EmptyDataInfo.Text = #1053#1077' '#1091#1082#1072#1079#1072#1085#1072'...'
      Flat = True
      Kind = dtkDateEh
      TabOrder = 4
      Visible = True
    end
  end
  object Grid_Content: TDBGridEh
    Left = 0
    Top = 148
    Width = 795
    Height = 568
    Align = alClient
    AllowedSelections = [gstRecordBookmarks, gstRectangle, gstAll]
    AutoFitColWidths = True
    DataSource = Data_Doc_Content
    DynProps = <>
    EvenRowColor = clMenu
    Flat = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghRecordMoving, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    PopupMenu = Pm_Content
    RowHeight = 2
    RowLines = 1
    SearchPanel.Enabled = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    TitleParams.RowLines = 3
    OnGetCellParams = Grid_ContentGetCellParams
    OnMouseUp = Grid_ContentMouseUp
    OnMoveRecords = Grid_ContentMoveRecords
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_SZ_PRICE_REQ_ITEM'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_CODE'
        Footers = <>
        Title.Caption = #1050#1086#1076
        Width = 100
        OnGetCellParams = Grid_ContentColumns1GetCellParams
        OnUpdateData = Grid_ContentColumns0UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_NUM'
        Footers = <>
        Title.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
        Width = 200
        OnGetCellParams = Grid_ContentColumns1GetCellParams
        OnUpdateData = Grid_ContentColumns0UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 200
        OnGetCellParams = Grid_ContentColumns1GetCellParams
        OnUpdateData = Grid_ContentColumns0UpdateData
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_PRICE'
        Footers = <>
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1073#1077#1079' '#1053#1044#1057', '#1088#1091#1073'.'
        Width = 100
        OnUpdateData = Grid_ContentColumns3UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_NDS'
        Footers = <>
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1053#1044#1057', %'
        Width = 55
        OnUpdateData = Grid_ContentColumns3UpdateData
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_PRICE_N_NDS'
        Footers = <>
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1089' '#1053#1044#1057', '#1088#1091#1073'.'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_PRICE_DATE_START'
        Footers = <>
        Title.Caption = #1044#1077#1081#1089#1090#1074#1080#1077' '#1094#1077#1085#1099'|'#1053#1072#1095#1072#1083#1086
        OnUpdateData = Grid_ContentColumns7UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_PRICE_DATE_END'
        Footers = <>
        Title.Caption = #1044#1077#1081#1089#1090#1074#1080#1077' '#1094#1077#1085#1099'|'#1050#1086#1085#1077#1094
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USER_CORRECT'
        Footers = <>
        Title.Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1083
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 795
    Top = 148
    Width = 300
    Height = 568
    Align = alRight
    DataSource = Data_Items_Links
    DynProps = <>
    TabOrder = 3
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'P_SZ_PRICE_REQ_ITEM_ID'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'C_SZ_PRICE_REQ_ITEM_ID'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Db_Doc: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Sz_Price_Req,'
      '       t.Doc_Header_Id,'
      '       t.Sz_Price_Req_Id,'
      '       t.Sz_Number,'
      '       Dep.Dep_Code||'#39'/'#39'||t.Sz_Number Sz_Dep_Number,'
      '       t.Sz_Date,'
      '       t.Sz_Note, '
      '       t.Sz_Dep_Id,'
      '       u.Emp_Fio,'
      '       t.I_User,'
      '       t.I_Date,'
      '       t.U_User,'
      '       r.Date_Start_Route,'
      '       r.Date_End_Route,'
      '       (Case'
      '          When k.Sz_Price_Req_Id Is Null Then 0'
      '          Else 1'
      '        End) NoKrItemsExists,'
      '       t.rowid'
      'From Src.V_SZ_PRICE_REQUEST t'
      'Left  Join Src.V_Doc_Routs r'
      'On    r.Doc_Header_Id=t.Doc_Header_Id'
      'Left  Join Stp.v_Users u'
      'On    u.Id_User=t.i_User'
      '      And u.Id_User_Add=t.I_User_Add'
      'Left  Join Stp.V_Deps dep'
      'On    Dep.Id_Dep=t.Sz_Dep_Id'
      '      And Nvl(Dep.Date_Expitation, Sysdate)>=Sysdate'
      'Left  Join (Select a.Sz_Price_Req_Id'
      '            From   Mrk.V_SZ_PRICE_REQ_ITEMS a'
      '            Where  Upper(a.Item_Code) not like '#39#1050#1056'%'#39
      '            Group  By a.Sz_Price_Req_Id) k'
      'On    k.Sz_Price_Req_Id=t.Id_Sz_Price_Req'
      'Where t.Doc_Header_Id=:InDocHeaderId')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0049004E0044004F0043004800450041004400
      4500520049004400050000000600000031353336360000000000}
    SequenceField.Field = 'ID_SZ_PRICE_REQ'
    SequenceField.Sequence = 'MRK.S_SZ_PRICE_REQ_MAIN_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000000F0000001E000000490044005F0053005A005F005000520049004300
      45005F005200450051000100000000001E00000053005A005F00500052004900
      430045005F005200450051005F00490044000100000000001200000053005A00
      5F004E0055004D004200450052000100000000000E00000053005A005F004400
      4100540045000100000000000E00000053005A005F004E004F00540045000100
      000000000E00000045004D0050005F00460049004F000100000000001A000000
      44004F0043005F004800450041004400450052005F0049004400010000000000
      1200000053005A005F004400450050005F00490044000100000000000C000000
      49005F0055005300450052000100000000000C00000049005F00440041005400
      45000100000000000C00000055005F0055005300450052000100000000002000
      000044004100540045005F00530054004100520054005F0052004F0055005400
      45000100000000001C00000044004100540045005F0045004E0044005F005200
      4F005500540045000100000000001A00000053005A005F004400450050005F00
      4E0055004D004200450052000100000000001E0000004E004F004B0052004900
      540045004D005300450058004900530054005300010000000000}
    UniqueFields = 'ID_SZ_PRICE_REQ'
    UpdatingTable = 'Src.V_SZ_PRICE_REQUEST'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    BeforeEdit = Db_DocBeforeEdit
    OnNewRecord = Db_DocNewRecord
    Left = 592
    Top = 112
    object Db_DocID_SZ_PRICE_REQ: TIntegerField
      FieldName = 'ID_SZ_PRICE_REQ'
      Required = True
    end
    object Db_DocDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_DocSZ_PRICE_REQ_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ID'
    end
    object Db_DocSZ_NUMBER: TStringField
      FieldName = 'SZ_NUMBER'
      Size = 100
    end
    object Db_DocSZ_DEP_NUMBER: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SZ_DEP_NUMBER'
      Size = 103
    end
    object Db_DocSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object Db_DocSZ_NOTE: TStringField
      FieldName = 'SZ_NOTE'
      Size = 1000
    end
    object Db_DocSZ_DEP_ID: TIntegerField
      FieldName = 'SZ_DEP_ID'
    end
    object Db_DocEMP_FIO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'EMP_FIO'
      Size = 26
    end
    object Db_DocI_USER: TStringField
      FieldName = 'I_USER'
      Size = 30
    end
    object Db_DocI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object Db_DocU_USER: TStringField
      FieldName = 'U_USER'
      Size = 30
    end
    object Db_DocDATE_START_ROUTE: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'DATE_START_ROUTE'
    end
    object Db_DocDATE_END_ROUTE: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'DATE_END_ROUTE'
    end
    object Db_DocNOKRITEMSEXISTS: TFloatField
      FieldName = 'NOKRITEMSEXISTS'
    end
  end
  object Data_Doc: TDataSource
    DataSet = Db_Doc
    Left = 720
    Top = 120
  end
  object Db_Doc_Content: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid,'
      '       Item_Price*((Item_Nds/100)+1) Item_Price_n_Nds,'
      '       u.Emp_Fio User_Correct,'
      '       (Case'
      '          When l.P_Sz_Price_Req_Item_Id Is Not Null Then 1'
      '          Else 0'
      '        End) Links_Flag'
      'from   Mrk.V_SZ_PRICE_REQ_ITEMS t'
      'Left   Join Stp.v_Users u'
      'On     u.Id_User=t.u_User'
      '       And u.Id_User_Add=t.u_User_add'
      'Left   Join (Select t.P_Sz_Price_Req_Item_Id'
      '             From   Mrk.V_Sz_Price_Req_Items_Links t'
      '             Left   Join Mrk.V_Sz_Price_Req_Items i'
      
        '             On     t.P_Sz_Price_Req_Item_Id=i.Id_Sz_Price_Req_I' +
        'tem'
      '             Where  i.Sz_Price_Req_Id=:Id_Sz_Price_Req'
      '             Group  By t.P_Sz_Price_Req_Item_Id) l'
      'On    l.P_Sz_Price_Req_Item_Id=t.Id_Sz_Price_Req_Item'
      'Where  t.Sz_Price_Req_Id=:Id_Sz_Price_Req')
    Optimize = False
    Variables.Data = {
      0400000001000000200000003A00490044005F0053005A005F00500052004900
      430045005F00520045005100050000000000000000000000}
    SequenceField.Field = 'ID_SZ_PRICE_REQ_ITEM'
    SequenceField.Sequence = 'MRK.S_SZ_PRICE_REQ_ITEM_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000001600000028000000490044005F0053005A005F005000520049004300
      45005F005200450051005F004900540045004D00010000000000280000005300
      5A005F00500052004900430045005F005200450051005F004900540045004D00
      5F00490044000100000000001E00000053005A005F0050005200490043004500
      5F005200450051005F0049004400010000000000180000004900540045004D00
      5F0050004F0053005F004E0055004D0001000000000012000000490054004500
      4D005F0043004F0044004500010000000000100000004900540045004D005F00
      4E0055004D00010000000000120000004900540045004D005F004E0041004D00
      4500010000000000140000004900540045004D005F0050005200490043004500
      010000000000100000004900540045004D005F004E0044005300010000000000
      2A0000004900540045004D005F00500052004900430045005F00440041005400
      45005F0053005400410052005400010000000000260000004900540045004D00
      5F00500052004900430045005F0044004100540045005F0045004E0044000100
      00000000120000004900540045004D005F004E004F0054004500010000000000
      1A0000004900540045004D005F005500530045005F0046004C00410047000100
      000000000C00000049005F005500530045005200010000000000140000004900
      5F0055005300450052005F004100440044000100000000000C00000049005F00
      44004100540045000100000000000C00000055005F0055005300450052000100
      000000001400000055005F0055005300450052005F0041004400440001000000
      00000C00000055005F0044004100540045000100000000001800000055005300
      450052005F0043004F0052005200450043005400010000000000200000004900
      540045004D005F00500052004900430045005F004E005F004E00440053000100
      00000000140000004C0049004E004B0053005F0046004C004100470001000000
      0000}
    UniqueFields = 'ID_SZ_PRICE_REQ_ITEM'
    UpdatingTable = 'Mrk.V_SZ_PRICE_REQ_ITEMS'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 944
    Top = 568
    object Db_Doc_ContentID_SZ_PRICE_REQ_ITEM: TIntegerField
      FieldName = 'ID_SZ_PRICE_REQ_ITEM'
      Required = True
    end
    object Db_Doc_ContentSZ_PRICE_REQ_ITEM_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ITEM_ID'
    end
    object Db_Doc_ContentSZ_PRICE_REQ_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ID'
    end
    object Db_Doc_ContentITEM_POS_NUM: TIntegerField
      FieldName = 'ITEM_POS_NUM'
    end
    object Db_Doc_ContentITEM_CODE: TStringField
      FieldName = 'ITEM_CODE'
      Size = 8
    end
    object Db_Doc_ContentITEM_NUM: TStringField
      FieldName = 'ITEM_NUM'
      Size = 150
    end
    object Db_Doc_ContentITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 200
    end
    object Db_Doc_ContentITEM_PRICE: TFloatField
      FieldName = 'ITEM_PRICE'
    end
    object Db_Doc_ContentITEM_NDS: TIntegerField
      FieldName = 'ITEM_NDS'
    end
    object Db_Doc_ContentITEM_PRICE_DATE_START: TDateTimeField
      FieldName = 'ITEM_PRICE_DATE_START'
    end
    object Db_Doc_ContentITEM_PRICE_DATE_END: TDateTimeField
      FieldName = 'ITEM_PRICE_DATE_END'
    end
    object Db_Doc_ContentITEM_NOTE: TStringField
      FieldName = 'ITEM_NOTE'
      Size = 500
    end
    object Db_Doc_ContentITEM_USE_FLAG: TStringField
      FieldName = 'ITEM_USE_FLAG'
      Size = 50
    end
    object Db_Doc_ContentI_USER: TStringField
      FieldName = 'I_USER'
      Size = 30
    end
    object Db_Doc_ContentI_USER_ADD: TIntegerField
      FieldName = 'I_USER_ADD'
    end
    object Db_Doc_ContentI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object Db_Doc_ContentU_USER: TStringField
      FieldName = 'U_USER'
      Size = 30
    end
    object Db_Doc_ContentU_USER_ADD: TIntegerField
      FieldName = 'U_USER_ADD'
    end
    object Db_Doc_ContentU_DATE: TDateTimeField
      FieldName = 'U_DATE'
    end
    object Db_Doc_ContentUSER_CORRECT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_CORRECT'
      Size = 26
    end
    object Db_Doc_ContentITEM_PRICE_N_NDS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ITEM_PRICE_N_NDS'
    end
    object Db_Doc_ContentLINKS_FLAG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'LINKS_FLAG'
    end
  end
  object Data_Doc_Content: TDataSource
    DataSet = MemT_Doc_Content
    Left = 864
    Top = 640
  end
  object Driver_Doc_Content: TDataSetDriverEh
    KeyFields = 'ID_SZ_PRICE_REQ_ITEM'
    ProviderDataSet = Db_Doc_Content
    Left = 704
    Top = 520
  end
  object MemT_Doc_Content: TMemTableEh
    CachedUpdates = True
    Params = <>
    DataDriver = Driver_Doc_Content
    BeforeEdit = MemT_Doc_ContentBeforeEdit
    BeforeDelete = MemT_Doc_ContentBeforeDelete
    AfterDelete = MemT_Doc_ContentAfterDelete
    OnNewRecord = MemT_Doc_ContentNewRecord
    Left = 840
    Top = 512
    object MemT_Doc_ContentID_SZ_PRICE_REQ_ITEM: TIntegerField
      FieldName = 'ID_SZ_PRICE_REQ_ITEM'
      Required = True
    end
    object MemT_Doc_ContentSZ_PRICE_REQ_ITEM_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ITEM_ID'
    end
    object MemT_Doc_ContentSZ_PRICE_REQ_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ID'
    end
    object MemT_Doc_ContentITEM_POS_NUM: TIntegerField
      FieldName = 'ITEM_POS_NUM'
    end
    object MemT_Doc_ContentITEM_CODE: TStringField
      FieldName = 'ITEM_CODE'
      Size = 8
    end
    object MemT_Doc_ContentITEM_NUM: TStringField
      FieldName = 'ITEM_NUM'
      Size = 150
    end
    object MemT_Doc_ContentITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 200
    end
    object MemT_Doc_ContentITEM_PRICE: TFloatField
      FieldName = 'ITEM_PRICE'
    end
    object MemT_Doc_ContentITEM_NDS: TIntegerField
      FieldName = 'ITEM_NDS'
    end
    object MemT_Doc_ContentITEM_PRICE_DATE_START: TDateTimeField
      FieldName = 'ITEM_PRICE_DATE_START'
    end
    object MemT_Doc_ContentITEM_PRICE_DATE_END: TDateTimeField
      FieldName = 'ITEM_PRICE_DATE_END'
    end
    object MemT_Doc_ContentITEM_NOTE: TStringField
      FieldName = 'ITEM_NOTE'
      Size = 500
    end
    object MemT_Doc_ContentITEM_USE_FLAG: TStringField
      FieldName = 'ITEM_USE_FLAG'
      Size = 50
    end
    object MemT_Doc_ContentI_USER: TStringField
      FieldName = 'I_USER'
      Size = 30
    end
    object MemT_Doc_ContentI_USER_ADD: TIntegerField
      FieldName = 'I_USER_ADD'
    end
    object MemT_Doc_ContentI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object MemT_Doc_ContentU_USER: TStringField
      FieldName = 'U_USER'
      Size = 30
    end
    object MemT_Doc_ContentU_USER_ADD: TIntegerField
      FieldName = 'U_USER_ADD'
    end
    object MemT_Doc_ContentU_DATE: TDateTimeField
      FieldName = 'U_DATE'
    end
    object MemT_Doc_ContentUSER_CORRECT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_CORRECT'
      Size = 26
    end
    object MemT_Doc_ContentITEM_PRICE_N_NDS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ITEM_PRICE_N_NDS'
    end
    object MemT_Doc_ContentLINKS_FLAG: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'LINKS_FLAG'
    end
  end
  object ActionList1: TActionList
    Images = Form_Sz_Main.ImageList2
    Left = 320
    Top = 368
    object Act_AddItem: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      ImageIndex = 110
      OnExecute = Act_AddItemExecute
    end
    object Act_Copy: TAction
      Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 96
      OnExecute = Act_CopyExecute
    end
    object Act_Paste: TAction
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      ImageIndex = 129
      OnExecute = Act_PasteExecute
    end
    object Act_Delete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 71
      OnExecute = Act_DeleteExecute
    end
    object Act_Print: TAction
      Caption = #1055#1077#1095#1072#1090#1100
      Hint = #1055#1077#1095#1072#1090#1100
      ImageIndex = 75
      OnExecute = Act_PrintExecute
    end
  end
  object Db_Doc_Contacts: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       Dep.Dep_Sname,'
      '       (Case'
      '          When t.Cont_Section='#39'from'#39' Then '#39#1054#1090#39
      '          When t.Cont_Section='#39'to'#39' Then '#39#1050#1086#1084#1091#39
      
        '          When t.Cont_Section='#39'copy'#39' Then '#39#1050#1086#1087#1080#1103'('#39'||Dep.Dep_Snam' +
        'e||'#39')'#39
      '        End) Cont_Section_Name,'
      '       u.Emp_Fio,'
      '       t.rowid'
      'From   Mrk.V_Sz_Price_Req_Contacts t'
      'Left   Join Stp.V_Deps Dep'
      'On     Dep.Id_Dep=t.Cont_Dep_Id'
      '       And Nvl(Dep.Date_Expitation, Sysdate)>=Sysdate'
      'Left   Join Stp.V_Users u'
      'On     (u.Id_User=t.Cont_User_Id'
      '       or u.Emp_Id=t.Cont_Emp_Id)'
      '       And u.Act_Status=1'
      'Where  Sz_Price_Req_Id=:Id_Sz_Price_Req')
    Optimize = False
    Variables.Data = {
      0400000001000000200000003A00490044005F0053005A005F00500052004900
      430045005F00520045005100050000000000000000000000}
    StringFieldsOnly = True
    SequenceField.Field = 'ID_SZ_PR_REQ_CONT'
    SequenceField.Sequence = 'MRK.S_SZ_PRICE_REQ_CONTACTS_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000000F00000022000000490044005F0053005A005F00500052005F005200
      450051005F0043004F004E0054000100000000001E00000053005A005F005000
      52004900430045005F005200450051005F004900440001000000000016000000
      43004F004E0054005F0045004D0050005F004900440001000000000018000000
      43004F004E0054005F0055005300450052005F00490044000100000000001800
      000043004F004E0054005F00530045004300540049004F004E00010000000000
      1600000043004F004E0054005F004400450050005F0049004400010000000000
      0C00000049005F0055005300450052000100000000001400000049005F005500
      5300450052005F004100440044000100000000000C00000049005F0044004100
      540045000100000000000C00000055005F005500530045005200010000000000
      1400000055005F0055005300450052005F004100440044000100000000000C00
      000055005F004400410054004500010000000000120000004400450050005F00
      53004E0041004D0045000100000000002200000043004F004E0054005F005300
      45004300540049004F004E005F004E0041004D0045000100000000000E000000
      45004D0050005F00460049004F00010000000000}
    UniqueFields = 'ID_SZ_PR_REQ_CONT'
    UpdatingTable = 'Mrk.V_Sz_Price_Req_Contacts'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    BeforeEdit = Db_Doc_ContactsBeforeEdit
    OnNewRecord = Db_Doc_ContactsNewRecord
    Left = 536
    Top = 336
    object Db_Doc_ContactsID_SZ_PR_REQ_CONT: TStringField
      FieldName = 'ID_SZ_PR_REQ_CONT'
      Required = True
      Size = 9
    end
    object Db_Doc_ContactsSZ_PRICE_REQ_ID: TStringField
      FieldName = 'SZ_PRICE_REQ_ID'
      Size = 9
    end
    object Db_Doc_ContactsCONT_EMP_ID: TStringField
      FieldName = 'CONT_EMP_ID'
      Size = 7
    end
    object Db_Doc_ContactsCONT_USER_ID: TStringField
      FieldName = 'CONT_USER_ID'
      Size = 30
    end
    object Db_Doc_ContactsCONT_SECTION: TStringField
      FieldName = 'CONT_SECTION'
      Required = True
      Size = 30
    end
    object Db_Doc_ContactsCONT_DEP_ID: TStringField
      FieldName = 'CONT_DEP_ID'
      Size = 9
    end
    object Db_Doc_ContactsI_USER: TStringField
      FieldName = 'I_USER'
      Size = 30
    end
    object Db_Doc_ContactsI_USER_ADD: TStringField
      FieldName = 'I_USER_ADD'
      Size = 4
    end
    object Db_Doc_ContactsI_DATE: TStringField
      FieldName = 'I_DATE'
      Size = 8
    end
    object Db_Doc_ContactsU_USER: TStringField
      FieldName = 'U_USER'
      Size = 30
    end
    object Db_Doc_ContactsU_USER_ADD: TStringField
      FieldName = 'U_USER_ADD'
      Size = 4
    end
    object Db_Doc_ContactsU_DATE: TStringField
      FieldName = 'U_DATE'
      Size = 8
    end
    object Db_Doc_ContactsDEP_SNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object Db_Doc_ContactsCONT_SECTION_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CONT_SECTION_NAME'
      Size = 207
    end
    object Db_Doc_ContactsEMP_FIO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'EMP_FIO'
      Size = 26
    end
  end
  object Db_Doc_Sections: TOracleDataSet
    SQL.Strings = (
      'Select a.*,'
      '       Dep.Dep_Sname,'
      '       (Case'
      '          When a.Cont_Section='#39'from'#39' Then '#39#1054#1090#39
      '          When a.Cont_Section='#39'to'#39' Then '#39#1050#1086#1084#1091#39
      
        '          When a.Cont_Section='#39'copy'#39' Then '#39#1050#1086#1087#1080#1103'('#39'||Dep.Dep_Snam' +
        'e||'#39')'#39
      '        End) Cont_Section_Name'
      'From ('
      'Select (Case '
      '          When Level=1 Then '#39'from'#39
      '          When Level=2 Then '#39'to'#39
      '          When Level=3 and :NonKrExsits=1 Then '#39'copy'#39
      '          When Level=4 Then '#39'copy'#39
      '        End) Cont_Section,'
      '       (Case '
      '          When Level=1 Then 261'
      '          When Level=2 Then 184'
      '          When Level=3 and :NonKrExsits=1 Then 163'
      '          When Level=4 Then 75'
      '        End) Cont_Dep_Id,'
      '       261 DocDepId       '
      'From   Dual'
      'Connect By Level<=4'
      'Union All'
      'Select (Case Level'
      '          When 1 Then '#39'from'#39
      '          When 2 Then '#39'to'#39
      '        End) Cont_Section,'
      '       (Case Level'
      '          When 1 Then 184'
      '          When 2 Then 261'
      '        End) Cont_Dep_Id,'
      '       184 DocDepId       '
      'From   Dual'
      'Connect By Level<=2 ) a'
      'Join Stp.V_Deps Dep'
      'On     Dep.Id_Dep=a.Cont_Dep_Id'
      '       And Nvl(Dep.Date_Expitation, Sysdate)>=Sysdate'
      'Where  a.DocDepId=:DocDepId')
    Optimize = False
    Variables.Data = {
      0400000002000000120000003A0044004F004300440045005000490044000500
      0000040000003138340000000000180000003A004E004F004E004B0052004500
      580053004900540053000500000002000000300000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000050000001800000043004F004E0054005F0053004500430054004900
      4F004E000100000000001600000043004F004E0054005F004400450050005F00
      490044000100000000001000000044004F004300440045005000490044000100
      00000000120000004400450050005F0053004E0041004D004500010000000000
      2200000043004F004E0054005F00530045004300540049004F004E005F004E00
      41004D004500010000000000}
    Session = DM_Main.Session
    AfterOpen = Db_Doc_SectionsAfterOpen
    AfterRefresh = Db_Doc_SectionsAfterOpen
    Left = 664
    Top = 344
    object Db_Doc_SectionsCONT_SECTION: TStringField
      FieldName = 'CONT_SECTION'
      Size = 4
    end
    object Db_Doc_SectionsCONT_DEP_ID: TFloatField
      FieldName = 'CONT_DEP_ID'
    end
    object Db_Doc_SectionsDOCDEPID: TFloatField
      FieldName = 'DOCDEPID'
    end
    object Db_Doc_SectionsDEP_SNAME: TStringField
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object Db_Doc_SectionsCONT_SECTION_NAME: TStringField
      FieldName = 'CONT_SECTION_NAME'
      Size = 207
    end
  end
  object Data_Doc_Sections: TDataSource
    DataSet = Db_Doc_Sections
    Left = 664
    Top = 296
  end
  object Data_Doc_Contacts: TDataSource
    DataSet = Db_Doc_Contacts
    Left = 536
    Top = 288
  end
  object Db_SectionUsers: TOracleDataSet
    SQL.Strings = (
      'Select d.id_dep,'
      '       u.Id_User,'
      '       u.Emp_id,'
      '       u.Emp_Fio'
      'From   Stp.v_Dep_Mmbrs m'
      'Left   Join Stp.v_Deps d'
      'On     d.id_dep=m.dep_Id'
      '       And Nvl(d.Date_Expitation, Sysdate)>=Sysdate'
      'Join Stp.V_Users u'
      'On     (u.Id_User=m.User_Id'
      '       or u.Emp_Id=m.Emp_Id)'
      '       And u.Act_Status=1'
      'Where  m.dep_Mmbr_Pstn_Id in (1,2)'
      '       And d.Id_Dep=Nvl(:CONT_DEP_ID, d.Id_Dep) '
      'Order  By m.dep_Mmbr_Pstn_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000180000003A0043004F004E0054005F004400450050005F00
      49004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000000C000000490044005F004400450050000100000000000E00
      000045004D0050005F00460049004F000100000000000E000000490044005F00
      55005300450052000100000000000C00000045004D0050005F00490044000100
      00000000}
    Master = Db_Doc_Sections
    MasterFields = 'CONT_DEP_ID'
    Session = DM_Main.Session
    Left = 792
    Top = 400
    object Db_SectionUsersID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object Db_SectionUsersEMP_FIO: TStringField
      FieldName = 'EMP_FIO'
      Size = 26
    end
    object Db_SectionUsersID_USER: TStringField
      FieldName = 'ID_USER'
      Required = True
      Size = 30
    end
    object Db_SectionUsersEMP_ID: TIntegerField
      FieldName = 'EMP_ID'
    end
  end
  object Data_SectionUsers: TDataSource
    DataSet = Db_SectionUsers
    Left = 800
    Top = 344
  end
  object Db_Items_Links: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid'
      'From   Mrk.V_Sz_Price_Req_Items_Links t'
      'Left   Join Mrk.V_Sz_Price_Req_Items i'
      'On     t.P_sz_Price_Req_Item_Id=i.Id_Sz_Price_Req_Item'
      'Where  i.Sz_Price_Req_Id=:Id_Sz_Price_Req')
    Optimize = False
    Variables.Data = {
      0400000001000000200000003A00490044005F0053005A005F00500052004900
      430045005F00520045005100050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000002C00000050005F0053005A005F0050005200490043004500
      5F005200450051005F004900540045004D005F00490044000100000000002C00
      000043005F0053005A005F00500052004900430045005F005200450051005F00
      4900540045004D005F0049004400010000000000}
    UniqueFields = 'P_SZ_PRICE_REQ_ITEM_ID; C_SZ_PRICE_REQ_ITEM_ID'
    UpdatingTable = 'Mrk.V_Sz_Price_Req_Items_Links'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 512
    Top = 472
    object Db_Items_LinksP_SZ_PRICE_REQ_ITEM_ID: TIntegerField
      FieldName = 'P_SZ_PRICE_REQ_ITEM_ID'
      Required = True
    end
    object Db_Items_LinksC_SZ_PRICE_REQ_ITEM_ID: TIntegerField
      FieldName = 'C_SZ_PRICE_REQ_ITEM_ID'
      Required = True
    end
  end
  object Pm_Content: TPopupMenu
    Images = Form_Sz_Main.ImageList2
    Left = 312
    Top = 512
    object ActAddItem1: TMenuItem
      Action = Act_AddItem
    end
    object N1: TMenuItem
      Action = Act_Copy
    end
    object N3: TMenuItem
      Action = Act_Paste
    end
    object N2: TMenuItem
      Action = Act_Delete
    end
  end
  object Data_Items_Links: TDataSource
    DataSet = Db_Items_Links
    Left = 560
    Top = 512
  end
  object Pkg_Sz_Price_Req: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Mrk.Pkg_Sz_Price_Req'
    Left = 328
    Top = 280
  end
  object Db_UserRights: TOracleDataSet
    SQL.Strings = (
      'Select t.*'
      'From   Mrk.v_Sz_Price_Req_Upd_Accesses t'
      'Join   Src.V_SZ_PRICE_REQUEST i'
      'On     i.Id_Sz_Price_Req=t.Sz_Price_Req_Id'
      'Where  i.Doc_Header_Id=:InDocHeaderId'
      '       And t.User_Req_Access=User'
      #9#9#9' And t.User_Add_Req_Access=Stp.Pkg_User.F_Get_User_Add_Id'
      '')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0049004E0044004F0043004800450041004400
      4500520049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000D0000002C000000490044005F0053005A005F005200450051005F00
      5500500044005F00410043004300450053005300450053000100000000001E00
      000053005A005F00500052004900430045005F005200450051005F0049004400
      0100000000002800000053005A005F00500052004900430045005F0052004500
      51005F004900540045004D005F00490044000100000000001600000041004300
      43004500530053005F0046004C00410047000100000000002000000041004300
      43004500530053005F0046004C00410047005F004E0041004D00450001000000
      00001A0000004100430043004500530053005F00530054004100540055005300
      010000000000240000004100430043004500530053005F005300540041005400
      550053005F004E0041004D0045000100000000001E0000005500530045005200
      5F005200450051005F0041004300430045005300530001000000000026000000
      55005300450052005F004100440044005F005200450051005F00410043004300
      4500530053000100000000001E00000044004100540045005F00520045005100
      5F00410043004300450053005300010000000000280000005500530045005200
      5F005500500044005F004100430043004500530053005F005300540041005400
      0100000000003000000055005300450052005F004100440044005F0055005000
      44005F004100430043004500530053005F005300540041005400010000000000
      2800000044004100540045005F005500500044005F0041004300430045005300
      53005F005300540041005400010000000000}
    Session = DM_Main.Session
    Left = 416
    Top = 416
    object Db_UserRightsID_SZ_REQ_UPD_ACCESSES: TIntegerField
      FieldName = 'ID_SZ_REQ_UPD_ACCESSES'
      Required = True
    end
    object Db_UserRightsSZ_PRICE_REQ_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ID'
    end
    object Db_UserRightsSZ_PRICE_REQ_ITEM_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ITEM_ID'
    end
    object Db_UserRightsACCESS_FLAG: TStringField
      FieldName = 'ACCESS_FLAG'
      Size = 50
    end
    object Db_UserRightsACCESS_FLAG_NAME: TStringField
      FieldName = 'ACCESS_FLAG_NAME'
      Size = 150
    end
    object Db_UserRightsACCESS_STATUS: TStringField
      FieldName = 'ACCESS_STATUS'
      Size = 50
    end
    object Db_UserRightsACCESS_STATUS_NAME: TStringField
      FieldName = 'ACCESS_STATUS_NAME'
      Size = 150
    end
    object Db_UserRightsUSER_REQ_ACCESS: TStringField
      FieldName = 'USER_REQ_ACCESS'
      Size = 30
    end
    object Db_UserRightsUSER_ADD_REQ_ACCESS: TIntegerField
      FieldName = 'USER_ADD_REQ_ACCESS'
    end
    object Db_UserRightsDATE_REQ_ACCESS: TDateTimeField
      FieldName = 'DATE_REQ_ACCESS'
    end
    object Db_UserRightsUSER_UPD_ACCESS_STAT: TStringField
      FieldName = 'USER_UPD_ACCESS_STAT'
      Size = 30
    end
    object Db_UserRightsUSER_ADD_UPD_ACCESS_STAT: TIntegerField
      FieldName = 'USER_ADD_UPD_ACCESS_STAT'
    end
    object Db_UserRightsDATE_UPD_ACCESS_STAT: TDateTimeField
      FieldName = 'DATE_UPD_ACCESS_STAT'
    end
  end
end
