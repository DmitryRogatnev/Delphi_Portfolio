object Form_DocEditRights: TForm_DocEditRights
  Left = 0
  Top = 0
  Caption = 'Form_DocEditRights'
  ClientHeight = 466
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'clWindowText'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 936
    Height = 37
    AutoSize = True
    ButtonHeight = 37
    ButtonWidth = 92
    Caption = 'ToolBar1'
    Images = Form_Sz_Main.ImageList2
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    object Tb_AddRight: TToolButton
      Left = 0
      Top = 0
      Action = Act_AddRight
    end
    object Tb_DeleteRight: TToolButton
      Left = 92
      Top = 0
      Action = Act_DeleteRight
    end
    object Tb_Save: TToolButton
      Left = 184
      Top = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 16
      OnClick = Tb_SaveClick
    end
    object Tb_Exit: TToolButton
      Left = 276
      Top = 0
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 89
      OnClick = Tb_ExitClick
    end
  end
  object Grid_DocRights: TDBGridEh
    Left = 0
    Top = 37
    Width = 936
    Height = 429
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_DocEditRights
    DynProps = <>
    Flat = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    RowHeight = 2
    RowLines = 1
    SearchPanel.Enabled = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    OnDrawColumnCell = Grid_DocRightsDrawColumnCell
    OnGetCellParams = Grid_DocRightsGetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            Style = ebsEllipsisEh
          end>
        FieldName = 'ITEM'
        Footers = <>
        Title.Caption = #1055#1086#1079#1080#1094#1080#1103
        Width = 325
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ACCESS_FLAG'
        Footers = <>
        Width = 100
      end
      item
        CellButtons = <>
        DropDownSizing = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'ACCESS_FLAG_NAME'
        Footers = <>
        Title.Caption = #1044#1086#1089#1090#1091#1087'|'#1042#1080#1076
        Width = 100
        OnUpdateData = Grid_DocRightsColumns2UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ACCESS_STATUS'
        Footers = <>
        Width = 100
      end
      item
        CellButtons = <>
        DropDownSizing = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'ACCESS_STATUS_NAME'
        Footers = <>
        Title.Caption = #1044#1086#1089#1090#1091#1087'|'#1057#1090#1072#1090#1091#1089
        Width = 100
        OnUpdateData = Grid_DocRightsColumns2UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = Grid_DocRightsColumns5EditButtons0Click
          end>
        FieldName = 'USERNAMEGETACCESS'
        Footers = <>
        Title.Caption = #1044#1086#1089#1090#1091#1087'|'#1044#1083#1103
        OnUpdateData = Grid_DocRightsColumns5UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_REQ_ACCESS'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1087#1088#1086#1089#1072
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERNAMEADDACCESS'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1048#1079#1084#1077#1085#1077#1085'/'#1054#1090#1082#1088#1099#1090'|'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_UPD_ACCESS_STAT'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1048#1079#1084#1077#1085#1077#1085'/'#1054#1090#1082#1088#1099#1090'|'#1044#1072#1090#1072
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ActionList1: TActionList
    Images = Form_Sz_Main.ImageList2
    Left = 264
    Top = 208
    object Act_AddRight: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1072#1074#1072
      ImageIndex = 9
      OnExecute = Act_AddRightExecute
    end
    object Act_DeleteRight: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1072#1074#1072
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1072#1074#1072
      ImageIndex = 8
      OnExecute = Act_DeleteRightExecute
    end
    object Act_Save: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 16
      OnExecute = Act_SaveExecute
    end
  end
  object Db_DocEditRights: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid,'
      '       ur.Emp_Fio UserNameGetAccess,'
      #9#9#9' ua.Emp_Fio UserNameAddAccess,'
      
        #9#9#9' i.Item_Pos_Num||'#39') ('#39'||i.Item_Code||'#39') '#39'||i.Item_Num||'#39' '#39'||i' +
        '.Item_Name Item'
      'From   Mrk.v_Sz_Price_Req_Upd_Accesses t'
      'Join   Src.V_SZ_PRICE_REQUEST i'
      'On     i.Id_Sz_Price_Req=t.Sz_Price_Req_Id'
      'Left   Join Stp.v_Users ur'
      'On     ur.Id_User=t.User_Req_Access'
      '       And ur.Id_User_Add=t.User_Add_Req_Access'
      'Left   Join Stp.v_Users ua'
      'On     ua.Id_User=t.User_Upd_Access_Stat'
      '       And ua.Id_User_Add=t.User_Add_Upd_Access_Stat'
      'Left   Join Mrk.v_Sz_Price_Req_Items i'
      'On     i.Id_Sz_Price_Req_Item=t.Sz_Price_Req_Item_Id'
      'Where  i.Doc_Header_Id=:InDocHeaderId')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0049004E0044004F0043004800450041004400
      4500520049004400050000000000000000000000}
    SequenceField.Field = 'ID_SZ_REQ_UPD_ACCESSES'
    SequenceField.Sequence = 'MRK.S_SZ_PRICE_REQ_UP_ACCS_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000100000002C000000490044005F0053005A005F005200450051005F00
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
      53005F0053005400410054000100000000002200000055005300450052004E00
      41004D0045004700450054004100430043004500530053000100000000002200
      000055005300450052004E0041004D0045004100440044004100430043004500
      53005300010000000000080000004900540045004D00010000000000}
    UniqueFields = 'ID_SZ_REQ_UPD_ACCESSES'
    UpdatingTable = 'Mrk.v_Sz_Price_Req_Upd_Accesses'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 352
    Top = 296
    object Db_DocEditRightsID_SZ_REQ_UPD_ACCESSES: TIntegerField
      FieldName = 'ID_SZ_REQ_UPD_ACCESSES'
      Required = True
    end
    object Db_DocEditRightsSZ_PRICE_REQ_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ID'
    end
    object Db_DocEditRightsSZ_PRICE_REQ_ITEM_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ITEM_ID'
    end
    object Db_DocEditRightsACCESS_FLAG: TStringField
      FieldName = 'ACCESS_FLAG'
      Size = 50
    end
    object Db_DocEditRightsACCESS_FLAG_NAME: TStringField
      FieldName = 'ACCESS_FLAG_NAME'
      Size = 150
    end
    object Db_DocEditRightsACCESS_STATUS: TStringField
      FieldName = 'ACCESS_STATUS'
      Size = 50
    end
    object Db_DocEditRightsACCESS_STATUS_NAME: TStringField
      FieldName = 'ACCESS_STATUS_NAME'
      Size = 150
    end
    object Db_DocEditRightsUSER_REQ_ACCESS: TStringField
      FieldName = 'USER_REQ_ACCESS'
      Size = 30
    end
    object Db_DocEditRightsUSER_ADD_REQ_ACCESS: TIntegerField
      FieldName = 'USER_ADD_REQ_ACCESS'
    end
    object Db_DocEditRightsDATE_REQ_ACCESS: TDateTimeField
      FieldName = 'DATE_REQ_ACCESS'
    end
    object Db_DocEditRightsUSER_UPD_ACCESS_STAT: TStringField
      FieldName = 'USER_UPD_ACCESS_STAT'
      Size = 30
    end
    object Db_DocEditRightsUSER_ADD_UPD_ACCESS_STAT: TIntegerField
      FieldName = 'USER_ADD_UPD_ACCESS_STAT'
    end
    object Db_DocEditRightsDATE_UPD_ACCESS_STAT: TDateTimeField
      FieldName = 'DATE_UPD_ACCESS_STAT'
    end
    object Db_DocEditRightsUSERNAMEGETACCESS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USERNAMEGETACCESS'
      Size = 26
    end
    object Db_DocEditRightsUSERNAMEADDACCESS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USERNAMEADDACCESS'
      Size = 26
    end
    object Db_DocEditRightsITEM: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ITEM'
      Size = 409
    end
  end
  object Data_DocEditRights: TDataSource
    DataSet = MemT_DocEditRights
    Left = 688
    Top = 240
  end
  object Driver_DocEditRights: TDataSetDriverEh
    KeyFields = 'ID_SZ_REQ_UPD_ACCESSES'
    ProviderDataSet = Db_DocEditRights
    Left = 464
    Top = 240
  end
  object MemT_DocEditRights: TMemTableEh
    CachedUpdates = True
    Params = <>
    DataDriver = Driver_DocEditRights
    OnNewRecord = MemT_DocEditRightsNewRecord
    Left = 568
    Top = 360
    object MemT_DocEditRightsID_SZ_REQ_UPD_ACCESSES: TIntegerField
      FieldName = 'ID_SZ_REQ_UPD_ACCESSES'
      Required = True
    end
    object MemT_DocEditRightsSZ_PRICE_REQ_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ID'
    end
    object MemT_DocEditRightsSZ_PRICE_REQ_ITEM_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ITEM_ID'
    end
    object MemT_DocEditRightsACCESS_FLAG: TStringField
      FieldName = 'ACCESS_FLAG'
      Size = 50
    end
    object MemT_DocEditRightsACCESS_FLAG_NAME: TStringField
      FieldName = 'ACCESS_FLAG_NAME'
      Size = 150
    end
    object MemT_DocEditRightsACCESS_STATUS: TStringField
      FieldName = 'ACCESS_STATUS'
      Size = 50
    end
    object MemT_DocEditRightsACCESS_STATUS_NAME: TStringField
      FieldName = 'ACCESS_STATUS_NAME'
      Size = 150
    end
    object MemT_DocEditRightsUSER_REQ_ACCESS: TStringField
      FieldName = 'USER_REQ_ACCESS'
      Size = 30
    end
    object MemT_DocEditRightsUSER_ADD_REQ_ACCESS: TIntegerField
      FieldName = 'USER_ADD_REQ_ACCESS'
    end
    object MemT_DocEditRightsDATE_REQ_ACCESS: TDateTimeField
      FieldName = 'DATE_REQ_ACCESS'
    end
    object MemT_DocEditRightsUSER_UPD_ACCESS_STAT: TStringField
      FieldName = 'USER_UPD_ACCESS_STAT'
      Size = 30
    end
    object MemT_DocEditRightsUSER_ADD_UPD_ACCESS_STAT: TIntegerField
      FieldName = 'USER_ADD_UPD_ACCESS_STAT'
    end
    object MemT_DocEditRightsDATE_UPD_ACCESS_STAT: TDateTimeField
      FieldName = 'DATE_UPD_ACCESS_STAT'
    end
    object MemT_DocEditRightsUSERNAMEGETACCESS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USERNAMEGETACCESS'
      Size = 26
    end
    object MemT_DocEditRightsUSERNAMEADDACCESS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USERNAMEADDACCESS'
      Size = 26
    end
    object MemT_DocEditRightsITEM: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ITEM'
      Size = 409
    end
  end
end
