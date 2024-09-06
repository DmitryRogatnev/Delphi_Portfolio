object Frame_Tp_TechProc_DocDetListData: TFrame_Tp_TechProc_DocDetListData
  Left = 0
  Top = 0
  Width = 1141
  Height = 725
  TabOrder = 0
  object Db_Doc_Details: TOracleDataSet
    SQL.Strings = (
      'Select t.*,'
      '       U_User_Id User_Edit, '
      '       u.Emp_Fio User_Name,'
      '       t.rowid '
      'From   Ogt.V_TP_GKTTP_DET_DLP t'
      'Left  Join Stp.V_Users u'
      'On    u.Id_User = t.U_User_Id'
      '      And u.Id_User_Add = t.U_User_Id_Add'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Id_Doc_Tp = Info.Id'
      'Join  (Select Max(a.Id_Doc_Tp||a.Doc_Tp_Vers_Id) Actual, '
      '                                          a.Id'
      #9#9#9#9'From   Ogt.V_Tp_Gkttp_Det_Dlp_Vers a'
      #9#9#9#9'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      #9#9#9#9#9'    On    a.Id_Doc_Tp = Info.Id'
      #9#9#9#9'Where  (a.Id_Doc_Tp = :Id'
      
        '                                        And a.Doc_Tp_Vers_Id In ' +
        '( Select  a.Id_Vers'
      
        '                                            From    ogt.v_Spr_Tp' +
        '_Doc a '
      '                                            Where   a.Id = :Id'
      
        '                                            Connect By Prior a.P' +
        'arent_Doc_Id = a.Doc_Header_Id'
      #9#9#9#9#9#9#9#9'                            Start   With a.Id = :Id'
      
        #9#9#9#9#9#9#9#9#9'                                  And a.Id_Vers = :Id_V' +
        'ers))'
      #9#9#9#9#9#9#9#9
      #9#9#9#9'   Group By a.Id) v'
      'On  t.Id = v.Id'
      '    And t.Id_Doc_Tp||t.Doc_Tp_Vers_Id = v.Actual'
      'Where ((Case'
      '           when t.Id_Doc_Tp = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)'
      'Order  by t.det_num')
    Optimize = False
    Variables.Data = {
      0400000002000000060000003A00490044000500000000000000000000001000
      00003A00490044005F005600450052005300050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000001C000000040000004900440001000000000012000000490044005F00
      44004F0043005F00540050000100000000000C0000004400450054005F004900
      44000100000000001600000044004100540045005F004300480041004E004700
      45000100000000000E0000004400450054005F004E0055004D00010000000000
      100000004400450054005F004E0041004D0045000100000000000C0000005200
      41005A0052004100420001000000000016000000520041005A00520041004200
      5F004E0041004D004500010000000000140000004400450054005F004D004100
      54005F0049004400010000000000180000004400450054005F004D0041005400
      5F004E0041004D004500010000000000100000004400450054005F004D004100
      530053000100000000001400000044004900460043005F00470052004F005500
      5000010000000000120000004400450054005F00450056005F00490044000100
      000000000E000000490044005F00550053004500520001000000000016000000
      4400450054005F00450056005F0043004F00440045000100000000000E000000
      520057005F0056004500520053000100000000001C000000520057005F004900
      44005F004F004C0044005F0056004500520053000100000000001C0000004400
      4F0043005F00540050005F0056004500520053005F0049004400010000000000
      0C00000049005F0044004100540045000100000000001200000049005F005500
      5300450052005F00490044000100000000001A00000049005F00550053004500
      52005F00490044005F004100440044000100000000000C00000055005F004400
      4100540045000100000000001200000055005F0055005300450052005F004900
      44000100000000001A00000055005F0055005300450052005F00490044005F00
      41004400440001000000000014000000490044005F00520057005F0056004500
      5200530001000000000012000000520057005F00530054004100540055005300
      0100000000001200000055005300450052005F00450044004900540001000000
      00001200000055005300450052005F004E0041004D004500010000000000}
    UniqueFields = 'ID; ID_RW_VERS'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers'
    UpdatingTable = 'Ogt.V_TP_Gkttp_Det_Dlp'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 88
    Top = 208
    object Db_Doc_DetailsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Doc_DetailsID_RW_VERS: TIntegerField
      FieldName = 'ID_RW_VERS'
    end
    object Db_Doc_DetailsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Doc_DetailsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Doc_DetailsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Doc_DetailsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object Db_Doc_DetailsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Doc_DetailsDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Doc_DetailsDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_Doc_DetailsDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_Doc_DetailsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object Db_Doc_DetailsID_USER: TStringField
      FieldName = 'ID_USER'
      Size = 30
    end
    object Db_Doc_DetailsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Doc_DetailsDET_EV_ID: TFloatField
      FieldName = 'DET_EV_ID'
    end
    object Db_Doc_DetailsDET_EV_CODE: TStringField
      FieldName = 'DET_EV_CODE'
      Size = 3
    end
    object Db_Doc_DetailsDET_MASS: TFloatField
      FieldName = 'DET_MASS'
    end
    object Db_Doc_DetailsDIFC_GROUP: TFloatField
      FieldName = 'DIFC_GROUP'
    end
    object Db_Doc_DetailsDET_MAT_ID: TFloatField
      FieldName = 'DET_MAT_ID'
    end
    object Db_Doc_DetailsDET_MAT_NAME: TStringField
      FieldName = 'DET_MAT_NAME'
      Size = 150
    end
    object Db_Doc_DetailsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Doc_DetailsI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object Db_Doc_DetailsI_USER_ID: TStringField
      FieldName = 'I_USER_ID'
      Size = 30
    end
    object Db_Doc_DetailsI_USER_ID_ADD: TIntegerField
      FieldName = 'I_USER_ID_ADD'
    end
    object Db_Doc_DetailsU_DATE: TDateTimeField
      FieldName = 'U_DATE'
    end
    object Db_Doc_DetailsU_USER_ID: TStringField
      FieldName = 'U_USER_ID'
      Size = 30
    end
    object Db_Doc_DetailsU_USER_ID_ADD: TIntegerField
      FieldName = 'U_USER_ID_ADD'
    end
    object Db_Doc_DetailsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
    object Db_Doc_DetailsUSER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_NAME'
      Size = 26
    end
  end
  object Driver_Doc_Details: TDataSetDriverEh
    KeyFields = 'ID; ID_RW_VERS'
    ProviderDataSet = Db_Doc_Details
    Left = 88
    Top = 162
  end
  object MemT_Doc_Details: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Doc_Details
    BeforeEdit = MemT_Doc_DetailsBeforeEdit
    AfterEdit = MemT_Doc_DetailsAfterEdit
    BeforeDelete = MemT_Doc_DetailsBeforeDelete
    AfterScroll = MemT_Doc_DetailsAfterScroll
    OnNewRecord = MemT_Doc_DetailsNewRecord
    Left = 88
    Top = 114
    object MemT_Doc_DetailsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Doc_DetailsID_RW_VERS: TIntegerField
      FieldName = 'ID_RW_VERS'
    end
    object MemT_Doc_DetailsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Doc_DetailsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Doc_DetailsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Doc_DetailsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object MemT_Doc_DetailsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Doc_DetailsDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object MemT_Doc_DetailsDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object MemT_Doc_DetailsDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object MemT_Doc_DetailsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object MemT_Doc_DetailsID_USER: TStringField
      FieldName = 'ID_USER'
      Size = 30
    end
    object MemT_Doc_DetailsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object MemT_Doc_DetailsDET_EV_ID: TFloatField
      FieldName = 'DET_EV_ID'
    end
    object MemT_Doc_DetailsDET_EV_CODE: TStringField
      FieldName = 'DET_EV_CODE'
      Size = 3
    end
    object MemT_Doc_DetailsDET_MASS: TFloatField
      FieldName = 'DET_MASS'
    end
    object MemT_Doc_DetailsDIFC_GROUP: TFloatField
      FieldName = 'DIFC_GROUP'
    end
    object MemT_Doc_DetailsDET_MAT_ID: TFloatField
      FieldName = 'DET_MAT_ID'
    end
    object MemT_Doc_DetailsDET_MAT_NAME: TStringField
      FieldName = 'DET_MAT_NAME'
      Size = 150
    end
    object MemT_Doc_DetailsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Doc_DetailsI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object MemT_Doc_DetailsI_USER_ID: TStringField
      FieldName = 'I_USER_ID'
      Size = 30
    end
    object MemT_Doc_DetailsI_USER_ID_ADD: TIntegerField
      FieldName = 'I_USER_ID_ADD'
    end
    object MemT_Doc_DetailsU_DATE: TDateTimeField
      FieldName = 'U_DATE'
    end
    object MemT_Doc_DetailsU_USER_ID: TStringField
      FieldName = 'U_USER_ID'
      Size = 30
    end
    object MemT_Doc_DetailsU_USER_ID_ADD: TIntegerField
      FieldName = 'U_USER_ID_ADD'
    end
    object MemT_Doc_DetailsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
    object MemT_Doc_DetailsUSER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_NAME'
      Size = 26
    end
  end
  object Seq_Doc_Details: TOracleQuery
    SQL.Strings = (
      'Select Ogt.TP_GKTTP_DET_DLP$SEQ.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 88
    Top = 24
  end
  object Data_Doc_Details: TDataSource
    DataSet = MemT_Doc_Details
    Left = 88
    Top = 64
  end
  object Db_Details_For_Copy: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.rowid '
      'From   Ogt.TP_GKTTP_DET_DLP_COPY t'
      'order by t.Det_Num')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000008000000040000004900440001000000000012000000490044005F00
      44004F0043005F00540050000100000000000C0000004400450054005F004900
      44000100000000001600000044004100540045005F004300480041004E004700
      45000100000000000E0000004400450054005F004E0055004D00010000000000
      100000004400450054005F004E0041004D004500010000000000080000004600
      4C0041004700010000000000060000004D0041005200010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 96
    Top = 424
    object Db_Details_For_CopyDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Details_For_CopyDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 100
    end
    object Db_Details_For_CopyDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 150
    end
    object Db_Details_For_CopyFLAG: TFloatField
      FieldName = 'FLAG'
    end
    object Db_Details_For_CopyMAR: TStringField
      FieldName = 'MAR'
      Size = 200
    end
  end
  object Driver_Details_For_Copy: TDataSetDriverEh
    ProviderDataSet = Db_Details_For_Copy
    Left = 88
    Top = 376
  end
  object MemT_Details_For_Copy: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Details_For_Copy
    Left = 88
    Top = 344
    object MemT_Details_For_CopyDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object MemT_Details_For_CopyDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 100
    end
    object MemT_Details_For_CopyDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 150
    end
    object MemT_Details_For_CopyFLAG: TFloatField
      FieldName = 'FLAG'
    end
    object MemT_Details_For_CopyMAR: TStringField
      FieldName = 'MAR'
      Size = 200
    end
  end
  object Data_Details_For_Copy: TDataSource
    DataSet = MemT_Details_For_Copy
    Left = 88
    Top = 296
  end
  object Pkg_Tp_Doc: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Ogt.PKG_TP_DOC'
    Left = 376
    Top = 491
  end
  object Data_Time_Edizm: TDataSource
    DataSet = Db_Time_Edizm
    Left = 657
    Top = 106
  end
  object Db_Time_Edizm: TOracleDataSet
    SQL.Strings = (
      'Select '#39#1057#39' as Ed_Kod, '#39#1057#1077#1082#1091#1085#1076#1099#39' as Ed_Name From Dual'
      ''
      'Union All'
      ''
      'Select '#39#1052#39', '#39#1052#1080#1085#1091#1090#1099#39' From Dual'
      ''
      'Union All'
      ''
      'Select '#39#1063#39', '#39#1063#1072#1089#1099#39' From Dual'
      ''
      'Union All'
      ''
      'Select null, null From Dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000C000000450044005F004B004F0044000100000000000E00
      0000450044005F004E0041004D004500010000000000}
    Session = DM_Main.Session
    Left = 657
    Top = 162
  end
  object Data_Chosen_Params: TDataSource
    DataSet = Db_Chosen_Params
    Left = 664
    Top = 216
  end
  object Db_Chosen_Params: TOracleDataSet
    SQL.Strings = (
      'Select '
      '       ( Case'
      '           When ( Nvl( t.i_Min, 0 ) <> 0 ) '
      '                And ( Nvl( t.i_Max, 0 ) <> 0 )'
      
        '           Then '#39#1057#1080#1083#1072' '#1090#1086#1082#1072' '#39'||To_Char( t.i_Min )||'#39' - '#39'||To_Char' +
        '( t.i_Max )'
      '           When ( Nvl( t.i_Min, 0 ) <> 0 ) '
      '                And ( Nvl( t.i_Max, 0 ) = 0 )'
      '           Then '#39#1057#1080#1083#1072' '#1090#1086#1082#1072' '#1084#1080#1085'. '#39'||To_Char( t.i_Min )'
      '           When ( Nvl( t.i_Min, 0 ) = 0 ) '
      '                And ( Nvl( t.i_Max, 0 ) <> 0 )'
      '           Then '#39#1057#1080#1083#1072' '#1090#1086#1082#1072' '#1084#1072#1082#1089'. '#39'||To_Char( t.i_Max )'
      '           Else Null'
      '         End ) As Param'
      'From Ogt.v_Tp_Ok_Dlp t'
      'Where t.Id_Row_Oper = :Id_Row_Oper'
      '      And ( t.i_Min Is Not Null'
      '            Or t.i_Max Is Not Null )'
      '      '
      ''
      'Union All'
      ''
      'Select      '
      '       ( Case'
      '           When ( Nvl( t.Time_Oper, 0 ) <> 0 ) '
      '                And ( Nvl( t.Time_Oper_Max, 0 ) <> 0 )'
      
        '           Then '#39#1042#1088#1077#1084#1103' '#1074#1099#1076#1077#1088#1078#1082#1080' '#39'||To_Char( t.Time_Oper )||'#39' - '#39 +
        '||To_Char( t.Time_Oper_Max )'
      '           When ( Nvl( t.Time_Oper, 0 ) <> 0 ) '
      '                And ( Nvl( t.Time_Oper_Max, 0 ) = 0 )'
      '           Then '#39#1042#1088#1077#1084#1103' '#1074#1099#1076#1077#1088#1078#1082#1080' '#1084#1080#1085'. '#39'||To_Char( t.Time_Oper )'
      '           When ( Nvl( t.Time_Oper, 0 ) = 0 ) '
      '                And ( Nvl( t.Time_Oper_Max, 0 ) <> 0 )'
      
        '           Then '#39#1042#1088#1077#1084#1103' '#1074#1099#1076#1077#1088#1078#1082#1080' '#1084#1072#1082#1089'. '#39'||To_Char( t.Time_Oper_Ma' +
        'x )'
      '           Else Null'
      '         End ) As Param'
      'From Ogt.v_Tp_Ok_Dlp t'
      'Where t.Id_Row_Oper = :Id_Row_Oper'
      '      And ( t.Time_Oper_Max Is Not Null'
      '            Or t.Time_Oper Is Not Null )'
      ''
      'Union All'
      ''
      'Select '
      
        '         Decode( t.d_Toka, Null, Null, '#39#1055#1083#1086#1090#1085#1086#1089#1090#1100' '#1090#1086#1082#1072' - '#39'||t.d_' +
        'Toka ) As Param'
      'From Ogt.v_Tp_Ok_Dlp t'
      'Where t.Id_Row_Oper = :Id_Row_Oper'
      '      And ( t.d_Toka Is Not Null )')
    Optimize = False
    Variables.Data = {
      0400000001000000180000003A00490044005F0052004F0057005F004F005000
      45005200050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {05000000010000000A00000050004100520041004D00010000000000}
    Master = Db_Detail_Operations
    MasterFields = 'Id_Row_Oper'
    Session = DM_Main.Session
    Left = 648
    Top = 256
    object Db_Chosen_ParamsPARAM: TStringField
      FieldName = 'PARAM'
      Size = 98
    end
  end
  object Db_Colors: TOracleDataSet
    SQL.Strings = (
      'Select t.Id, '
      '       t.Color_Name'
      'From   Ogt.Spr_Chem_Colors t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000004000000490044000100000000001400000043004F004C00
      4F0052005F004E0041004D004500010000000000}
    Session = DM_Main.Session
    Left = 664
    Top = 328
    object Db_ColorsID: TFloatField
      FieldName = 'ID'
    end
    object Db_ColorsCOLOR_NAME: TStringField
      FieldName = 'COLOR_NAME'
      Size = 200
    end
  end
  object Seq_Oper_Time: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Seq_Tp_Ok_Oper_Time_Id_Rw.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 352
    Top = 40
  end
  object Data_Oper_Time: TDataSource
    DataSet = MemT_Oper_Time
    Left = 353
    Top = 81
  end
  object MemT_Oper_Time: TMemTableEh
    CachedUpdates = True
    DetailFields = 'GRP_OPER_RW_ID'
    MasterFields = 'ID'
    MasterSource = Data_Detail_Operations
    Params = <>
    DataDriver = Driver_Oper_Time
    BeforeEdit = MemT_Oper_TimeBeforeEdit
    AfterEdit = MemT_Doc_DetailsAfterEdit
    BeforeDelete = MemT_Doc_DetailsBeforeDelete
    OnNewRecord = MemT_Oper_TimeNewRecord
    Left = 353
    Top = 128
    object MemT_Oper_TimeID_RW_OP_TIME: TFloatField
      FieldName = 'ID_RW_OP_TIME'
      Required = True
    end
    object MemT_Oper_TimeRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Oper_TimeRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Oper_TimeRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Oper_TimeOPER_RW_ID: TFloatField
      FieldName = 'OPER_RW_ID'
    end
    object MemT_Oper_TimeGRP_OPER_RW_ID: TFloatField
      FieldName = 'GRP_OPER_RW_ID'
    end
    object MemT_Oper_TimeDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
    end
    object MemT_Oper_TimeDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Oper_TimeALL_OPER_TIME: TFloatField
      FieldName = 'ALL_OPER_TIME'
    end
    object MemT_Oper_TimeALL_OPER_TIME_PERC: TFloatField
      FieldName = 'ALL_OPER_TIME_PERC'
    end
    object MemT_Oper_TimeUSING_NORM_ID: TFloatField
      FieldName = 'USING_NORM_ID'
    end
    object MemT_Oper_TimeUSING_NORM_TIME: TFloatField
      FieldName = 'USING_NORM_TIME'
    end
    object MemT_Oper_TimePROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object MemT_Oper_TimePROF_CTN: TIntegerField
      FieldName = 'PROF_CTN'
    end
    object MemT_Oper_TimePROF_CLASS: TIntegerField
      FieldName = 'PROF_CLASS'
    end
    object MemT_Oper_TimePROF_MONEY: TFloatField
      FieldName = 'PROF_MONEY'
    end
    object MemT_Oper_TimeUNIT_TIME: TFloatField
      FieldName = 'UNIT_TIME'
    end
    object MemT_Oper_TimeOPER_TIME: TFloatField
      FieldName = 'OPER_TIME'
    end
    object MemT_Oper_TimeSETUP_TIME: TFloatField
      FieldName = 'SETUP_TIME'
    end
    object MemT_Oper_TimeUNIT_COUNT: TIntegerField
      FieldName = 'UNIT_COUNT'
    end
    object MemT_Oper_TimeUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Oper_TimeDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Oper_TimeUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Oper_TimeDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Oper_TimeMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object MemT_Oper_TimeID_ROW_DET: TFloatField
      FieldName = 'ID_ROW_DET'
    end
    object MemT_Oper_TimeUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
    object MemT_Oper_TimeCALC_FROM: TStringField
      FieldName = 'CALC_FROM'
      Size = 30
    end
    object MemT_Oper_TimeOTHER_TIME: TFloatField
      FieldName = 'OTHER_TIME'
    end
  end
  object Driver_Oper_Time: TDataSetDriverEh
    KeyFields = 'ID_RW_OP_TIME'
    ProviderDataSet = Db_Oper_Time
    Left = 352
    Top = 176
  end
  object Db_Oper_Time: TOracleDataSet
    SQL.Strings = (
      'select t.*, '
      '       Info.Main_Doc_Id,'
      '       Oper.Id_Row_Det,'
      '       t.User_Change User_Edit,'
      '       t.rowid'
      'from   Ogt.V_Tp_Ok_Oper_Time t'
      'Left   Join Ogt.V_Tp_Gkttp_Oper_Dlp Oper'
      'On     Oper.Id = t.Grp_Oper_Rw_Id'
      
        '       And Oper.Id_Rw_Vers = Ogt.pkg_tp_doc.f_get_List_Oper_last' +
        'idvers(t.Grp_Oper_Rw_Id)'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Doc_Tp_Id = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id_Rw_Op_Time Root_Row, '
      '                                                (Case '
      
        '          When a.Id_Rw_Op_Time = CONNECT_BY_ROOT a.Id_Rw_Op_Time' +
        ' Then Level||'#39'('#39'||a.Id_Rw_Op_Time||'#39')'#39
      
        '          Else CONNECT_BY_ROOT a.Id_Rw_Op_Time||'#39'/'#39'||Level||'#39'('#39'|' +
        '|a.Id_Rw_Op_Time||'#39')'#39
      '        End ) Vers '
      
        '                                         From   Ogt.V_Tp_Ok_Oper' +
        '_Time_Vers a '
      
        '                                         Left  Join Ogt.V_Spr_Tp' +
        '_Doc_Actual Info'
      #9#9#9#9#9' On    a.Doc_Tp_Id = Info.Id'
      
        '                                         Where  (a.Doc_Tp_Id = :' +
        'Id'
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select a.Id_Vers'
      
        '                                                                ' +
        '          From   ogt.v_Spr_Tp_Doc a '
      
        '                                                                ' +
        '          Where  a.Id = :Id'
      
        '                                                                ' +
        '          Connect By Prior a.Parent_Doc_Id = a.Doc_Header_Id'
      
        '                                                                ' +
        '          Start With a.Id = :Id'
      
        '                                                                ' +
        '                     And a.Id_Vers = :Id_Vers))'
      
        '                                         Connect  By Prior a.Id_' +
        'Rw_Op_Time = a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        'On Substr(c.Actual,Instr(c.Actual, '#39'('#39')+1, ((Instr(c.Actual, '#39')'#39 +
        '))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(to_Char(t.Id_Rw_Op_Time))'
      'Where ((Case'
      '           when t.Doc_Tp_Id = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)')
    Optimize = False
    Variables.Data = {
      0400000002000000060000003A00490044000500000000000000000000001000
      00003A00490044005F005600450052005300050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001D0000001200000044004F0043005F00540050005F00490044000100
      000000001600000055005300450052005F0049004E0053004500520054000100
      000000001600000044004100540045005F0049004E0053004500520054000100
      000000001600000055005300450052005F004300480041004E00470045000100
      000000001600000044004100540045005F004300480041004E00470045000100
      000000001A000000490044005F00520057005F004F0050005F00540049004D00
      4500010000000000140000004F005000450052005F00520057005F0049004400
      0100000000001C0000004700520050005F004F005000450052005F0052005700
      5F00490044000100000000001A00000041004C004C005F004F00500045005200
      5F00540049004D0045000100000000002400000041004C004C005F004F005000
      450052005F00540049004D0045005F0050004500520043000100000000001200
      0000500052004F0046005F0043004F0044004500010000000000100000005000
      52004F0046005F00430054004E0001000000000014000000500052004F004600
      5F0043004C004100530053000100000000001200000055004E00490054005F00
      540049004D004500010000000000120000004F005000450052005F0054004900
      4D00450001000000000014000000530045005400550050005F00540049004D00
      45000100000000001400000055004E00490054005F0043004F0055004E005400
      01000000000014000000500052004F0046005F004D004F004E00450059000100
      000000001A0000005500530049004E0047005F004E004F0052004D005F004900
      44000100000000001E0000005500530049004E0047005F004E004F0052004D00
      5F00540049004D0045000100000000000E000000520057005F00560045005200
      53000100000000001C000000520057005F00490044005F004F004C0044005F00
      56004500520053000100000000001C00000044004F0043005F00540050005F00
      56004500520053005F004900440001000000000012000000520057005F005300
      54004100540055005300010000000000160000004D00410049004E005F004400
      4F0043005F004900440001000000000014000000490044005F0052004F005700
      5F004400450054000100000000001200000055005300450052005F0045004400
      4900540001000000000012000000430041004C0043005F00460052004F004D00
      010000000000140000004F0054004800450052005F00540049004D0045000100
      00000000}
    UniqueFields = 'ID_RW_OP_TIME'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers'
    UpdatingTable = 'Ogt.V_Tp_Ok_Oper_Time'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 344
    Top = 224
    object Db_Oper_TimeID_RW_OP_TIME: TFloatField
      FieldName = 'ID_RW_OP_TIME'
      Required = True
    end
    object Db_Oper_TimeRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Oper_TimeRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Oper_TimeRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Oper_TimeOPER_RW_ID: TFloatField
      FieldName = 'OPER_RW_ID'
    end
    object Db_Oper_TimeGRP_OPER_RW_ID: TFloatField
      FieldName = 'GRP_OPER_RW_ID'
    end
    object Db_Oper_TimeDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
    end
    object Db_Oper_TimeDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Oper_TimeALL_OPER_TIME: TFloatField
      FieldName = 'ALL_OPER_TIME'
    end
    object Db_Oper_TimeALL_OPER_TIME_PERC: TFloatField
      FieldName = 'ALL_OPER_TIME_PERC'
    end
    object Db_Oper_TimeUSING_NORM_ID: TFloatField
      FieldName = 'USING_NORM_ID'
    end
    object Db_Oper_TimeUSING_NORM_TIME: TFloatField
      FieldName = 'USING_NORM_TIME'
    end
    object Db_Oper_TimePROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object Db_Oper_TimePROF_CTN: TIntegerField
      FieldName = 'PROF_CTN'
    end
    object Db_Oper_TimePROF_CLASS: TIntegerField
      FieldName = 'PROF_CLASS'
    end
    object Db_Oper_TimePROF_MONEY: TFloatField
      FieldName = 'PROF_MONEY'
    end
    object Db_Oper_TimeUNIT_TIME: TFloatField
      FieldName = 'UNIT_TIME'
    end
    object Db_Oper_TimeOPER_TIME: TFloatField
      FieldName = 'OPER_TIME'
    end
    object Db_Oper_TimeSETUP_TIME: TFloatField
      FieldName = 'SETUP_TIME'
    end
    object Db_Oper_TimeUNIT_COUNT: TIntegerField
      FieldName = 'UNIT_COUNT'
    end
    object Db_Oper_TimeUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Oper_TimeDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Oper_TimeUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Oper_TimeDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Oper_TimeMAIN_DOC_ID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Oper_TimeID_ROW_DET: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ID_ROW_DET'
    end
    object Db_Oper_TimeUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
    object Db_Oper_TimeCALC_FROM: TStringField
      FieldName = 'CALC_FROM'
      Size = 30
    end
    object Db_Oper_TimeOTHER_TIME: TFloatField
      FieldName = 'OTHER_TIME'
    end
  end
  object Db_Oper_Time_Works: TOracleDataSet
    SQL.Strings = (
      'select t.*, '
      '       t.User_Change User_Edit,'
      '       t.rowid'
      'from   Ogt.V_Tp_Ok_Oper_Time_Works t '
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Doc_Tp_Id = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id_Rw_Op_Wrk_T Root_Row, '
      '                                                (Case '
      
        '          When a.Id_Rw_Op_Wrk_T = CONNECT_BY_ROOT a.Id_Rw_Op_Wrk' +
        '_T Then Level||'#39'('#39'||a.Id_Rw_Op_Wrk_T||'#39')'#39
      
        '          Else CONNECT_BY_ROOT a.Id_Rw_Op_Wrk_T||'#39'/'#39'||Level||'#39'('#39 +
        '||a.Id_Rw_Op_Wrk_T||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_Tp_Ok_Oper' +
        '_T_Wrk_Vers a '
      
        '                                         Left  Join Ogt.V_Spr_Tp' +
        '_Doc_Actual Info'
      #9#9#9#9#9' On    a.Doc_Tp_Id = Info.Id'
      
        '                                         Where  (a.Doc_Tp_Id = :' +
        'Id'
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select a.Id_Vers'
      
        '                                                                ' +
        '          From   ogt.v_Spr_Tp_Doc a '
      
        '                                                                ' +
        '          Where  a.Id = :Id'
      
        '                                                                ' +
        '          Connect By Prior a.Parent_Doc_Id = a.Doc_Header_Id'
      
        '                                                                ' +
        '          Start With a.Id = :Id'
      
        '                                                                ' +
        '                     And a.Id_Vers = :Id_Vers))'
      
        '                                         Connect  By Prior a.Id_' +
        'Rw_Op_Wrk_T = a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                           On Substr(c.Actual,Instr(c.Actual, '#39'(' +
        #39')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(' +
        'to_Char(t.Id_Rw_Op_Wrk_T))'
      'Where ((Case'
      '           when t.Doc_Tp_Id = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)')
    Optimize = False
    Variables.Data = {
      0400000002000000060000003A00490044000500000000000000000000001000
      00003A00490044005F005600450052005300050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000100000001C000000490044005F00520057005F004F0050005F005700
      52004B005F005400010000000000140000004F005000450052005F0052005700
      5F00490044000100000000001C0000004700520050005F004F00500045005200
      5F00520057005F00490044000100000000001200000044004F0043005F005400
      50005F004900440001000000000012000000570052004B005F00520057005F00
      490044000100000000001200000057004F0052004B005F004E0041004D004500
      01000000000010000000570052004B005F00540049004D004500010000000000
      1600000055005300450052005F0049004E005300450052005400010000000000
      1600000044004100540045005F0049004E005300450052005400010000000000
      1600000055005300450052005F004300480041004E0047004500010000000000
      1600000044004100540045005F004300480041004E0047004500010000000000
      0E000000520057005F0056004500520053000100000000001C00000052005700
      5F00490044005F004F004C0044005F0056004500520053000100000000001C00
      000044004F0043005F00540050005F0056004500520053005F00490044000100
      0000000012000000520057005F00530054004100540055005300010000000000
      1200000055005300450052005F004500440049005400010000000000}
    UniqueFields = 'ID_RW_OP_WRK_T'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers'
    UpdatingTable = 'Ogt.V_Tp_Ok_Oper_Time_Works'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 464
    Top = 240
    object Db_Oper_Time_WorksID_RW_OP_WRK_T: TFloatField
      FieldName = 'ID_RW_OP_WRK_T'
      Required = True
    end
    object Db_Oper_Time_WorksRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Oper_Time_WorksRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Oper_Time_WorksOPER_RW_ID: TFloatField
      FieldName = 'OPER_RW_ID'
    end
    object Db_Oper_Time_WorksGRP_OPER_RW_ID: TFloatField
      FieldName = 'GRP_OPER_RW_ID'
    end
    object Db_Oper_Time_WorksDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
    end
    object Db_Oper_Time_WorksDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Oper_Time_WorksWRK_RW_ID: TIntegerField
      FieldName = 'WRK_RW_ID'
    end
    object Db_Oper_Time_WorksWORK_NAME: TStringField
      FieldName = 'WORK_NAME'
      Size = 500
    end
    object Db_Oper_Time_WorksWRK_TIME: TFloatField
      FieldName = 'WRK_TIME'
    end
    object Db_Oper_Time_WorksUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Oper_Time_WorksDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Oper_Time_WorksUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Oper_Time_WorksDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Oper_Time_WorksRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Oper_Time_WorksUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Oper_Time_Works: TDataSetDriverEh
    KeyFields = 'ID_RW_OP_WRK_T'
    ProviderDataSet = Db_Oper_Time_Works
    Left = 464
    Top = 183
  end
  object MemT_Oper_Time_Works: TMemTableEh
    CachedUpdates = True
    DetailFields = 'OPER_RW_ID'
    MasterFields = 'ID_ROW_OPER'
    MasterSource = Data_Detail_Operations
    Params = <>
    DataDriver = Driver_Oper_Time_Works
    BeforeEdit = MemT_Oper_Time_WorksBeforeEdit
    AfterEdit = MemT_Doc_DetailsAfterEdit
    BeforeDelete = MemT_Doc_DetailsBeforeDelete
    OnNewRecord = MemT_Oper_Time_WorksNewRecord
    Left = 464
    Top = 135
    object MemT_Oper_Time_WorksID_RW_OP_WRK_T: TFloatField
      FieldName = 'ID_RW_OP_WRK_T'
      Required = True
    end
    object MemT_Oper_Time_WorksRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Oper_Time_WorksRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Oper_Time_WorksOPER_RW_ID: TFloatField
      FieldName = 'OPER_RW_ID'
    end
    object MemT_Oper_Time_WorksGRP_OPER_RW_ID: TFloatField
      FieldName = 'GRP_OPER_RW_ID'
    end
    object MemT_Oper_Time_WorksDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
    end
    object MemT_Oper_Time_WorksDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Oper_Time_WorksWRK_RW_ID: TIntegerField
      FieldName = 'WRK_RW_ID'
    end
    object MemT_Oper_Time_WorksWORK_NAME: TStringField
      FieldName = 'WORK_NAME'
      Size = 500
    end
    object MemT_Oper_Time_WorksWRK_TIME: TFloatField
      FieldName = 'WRK_TIME'
    end
    object MemT_Oper_Time_WorksUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Oper_Time_WorksDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Oper_Time_WorksUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Oper_Time_WorksDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Oper_Time_WorksRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Oper_Time_WorksUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
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
  object Seq_Oper_Time_Works: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Seq_Tp_T_Op_Time_Wrks.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 456
    Top = 31
  end
  object Data_Oper_Time_Works: TDataSource
    DataSet = MemT_Oper_Time_Works
    Left = 456
    Top = 79
  end
  object Seq_Detail_Operations: TOracleQuery
    SQL.Strings = (
      'Select OGT.TP_GKTTP_OPER_DLP$SEQ.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 216
    Top = 24
  end
  object Data_Detail_Operations: TDataSource
    DataSet = MemT_Detail_Operations
    Left = 216
    Top = 72
  end
  object MemT_Detail_Operations: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_ROW_DET'
    Filtered = True
    FetchAllOnOpen = True
    MasterFields = 'ID'
    MasterSource = Data_Doc_Details
    Params = <>
    DataDriver = Driver_Detail_Operations
    BeforeEdit = MemT_Doc_DetailsBeforeEdit
    AfterEdit = MemT_Doc_DetailsAfterEdit
    BeforeDelete = MemT_Doc_DetailsBeforeDelete
    OnNewRecord = MemT_Detail_OperationsNewRecord
    Left = 213
    Top = 122
    object MemT_Detail_OperationsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Detail_OperationsID_RW_VERS: TIntegerField
      FieldName = 'ID_RW_VERS'
    end
    object MemT_Detail_OperationsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Detail_OperationsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Detail_OperationsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Detail_OperationsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object MemT_Detail_OperationsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Detail_OperationsID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
    end
    object MemT_Detail_OperationsROW_NUM_GEN: TStringField
      FieldName = 'ROW_NUM_GEN'
      Size = 50
    end
    object MemT_Detail_OperationsID_ROW_DET: TFloatField
      FieldName = 'ID_ROW_DET'
      Required = True
    end
    object MemT_Detail_OperationsDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object MemT_Detail_OperationsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object MemT_Detail_OperationsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object MemT_Detail_OperationsPRIM: TStringField
      FieldName = 'PRIM'
      Size = 2000
    end
    object MemT_Detail_OperationsDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object MemT_Detail_OperationsOPER_OBOR_EN: TFloatField
      FieldName = 'OPER_OBOR_EN'
    end
    object MemT_Detail_OperationsOPER_OBOR_TIME_PZ: TFloatField
      FieldName = 'OPER_OBOR_TIME_PZ'
    end
    object MemT_Detail_OperationsOPER_OBOR_TIME_SH: TFloatField
      FieldName = 'OPER_OBOR_TIME_SH'
    end
    object MemT_Detail_OperationsOBOR_ID: TFloatField
      FieldName = 'OBOR_ID'
    end
    object MemT_Detail_OperationsOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object MemT_Detail_OperationsGRP_OBR_RW_ID: TFloatField
      FieldName = 'GRP_OBR_RW_ID'
    end
    object MemT_Detail_OperationsOPER_KOID: TFloatField
      FieldName = 'OPER_KOID'
    end
    object MemT_Detail_OperationsPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object MemT_Detail_OperationsPROF_RAZR: TFloatField
      FieldName = 'PROF_RAZR'
    end
    object MemT_Detail_OperationsPROF_KVN: TFloatField
      FieldName = 'PROF_KVN'
    end
    object MemT_Detail_OperationsENVIRON: TStringField
      FieldName = 'ENVIRON'
      Size = 200
    end
    object MemT_Detail_OperationsHARDNESS: TStringField
      FieldName = 'HARDNESS'
      Size = 200
    end
    object MemT_Detail_OperationsT_MIN: TFloatField
      FieldName = 'T_MIN'
    end
    object MemT_Detail_OperationsT_MAX: TFloatField
      FieldName = 'T_MAX'
    end
    object MemT_Detail_OperationsTIME_MIN: TFloatField
      FieldName = 'TIME_MIN'
    end
    object MemT_Detail_OperationsTIME_MAX: TFloatField
      FieldName = 'TIME_MAX'
    end
    object MemT_Detail_OperationsTIME_EDIZM: TStringField
      FieldName = 'TIME_EDIZM'
      Size = 2
    end
    object MemT_Detail_OperationsTIME_EDIZM_NAME: TStringField
      FieldName = 'TIME_EDIZM_NAME'
      Size = 7
    end
    object MemT_Detail_OperationsOPER_KUP: TFloatField
      FieldName = 'OPER_KUP'
    end
    object MemT_Detail_OperationsOPER_PPPD: TFloatField
      FieldName = 'OPER_PPPD'
    end
    object MemT_Detail_OperationsOPER_OPPP_DET: TFloatField
      FieldName = 'OPER_OPPP_DET'
    end
    object MemT_Detail_OperationsOPER_KDP: TFloatField
      FieldName = 'OPER_KDP'
    end
    object MemT_Detail_OperationsOPER_KDA: TFloatField
      FieldName = 'OPER_KDA'
    end
    object MemT_Detail_OperationsOPER_KSL: TFloatField
      FieldName = 'OPER_KSL'
    end
    object MemT_Detail_OperationsOPER_TOLSCH: TFloatField
      FieldName = 'OPER_TOLSCH'
    end
    object MemT_Detail_OperationsOPER_TOLSCH_RANGE: TStringField
      FieldName = 'OPER_TOLSCH_RANGE'
      Size = 30
    end
    object MemT_Detail_OperationsOPER_CHS_PARAMS: TStringField
      FieldName = 'OPER_CHS_PARAMS'
      Size = 200
    end
    object MemT_Detail_OperationsOPER_COLOR_ID: TFloatField
      FieldName = 'OPER_COLOR_ID'
    end
    object MemT_Detail_OperationsCOLOR_NAME: TStringField
      FieldName = 'COLOR_NAME'
      Size = 200
    end
    object MemT_Detail_OperationsOPER_COUNT_INS: TFloatField
      FieldName = 'OPER_COUNT_INS'
    end
    object MemT_Detail_OperationsOPER_COUNT_BATH: TFloatField
      FieldName = 'OPER_COUNT_BATH'
    end
    object MemT_Detail_OperationsOPER_NUMBER: TStringField
      FieldName = 'OPER_NUMBER'
      Size = 50
    end
    object MemT_Detail_OperationsCEH_ID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CEH_ID'
    end
    object MemT_Detail_OperationsCEH_CODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object MemT_Detail_OperationsOPER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object MemT_Detail_OperationsOPER_IOT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'OPER_IOT'
      Size = 50
    end
    object MemT_Detail_OperationsOPER_ID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OPER_ID'
    end
    object MemT_Detail_OperationsMAIN_DOC_ID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'MAIN_DOC_ID'
    end
    object MemT_Detail_OperationsI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object MemT_Detail_OperationsI_USER_ID: TStringField
      FieldName = 'I_USER_ID'
      Size = 30
    end
    object MemT_Detail_OperationsUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object MemT_Detail_OperationsU_DATE: TDateTimeField
      FieldName = 'U_DATE'
    end
    object MemT_Detail_OperationsU_USER_ID: TStringField
      FieldName = 'U_USER_ID'
      Size = 30
    end
    object MemT_Detail_OperationsUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object MemT_Detail_OperationsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
    object MemT_Detail_OperationsUSER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_NAME'
      Size = 26
    end
  end
  object Driver_Detail_Operations: TDataSetDriverEh
    KeyFields = 'ID; ID_RW_VERS'
    ProviderDataSet = Db_Detail_Operations
    Left = 213
    Top = 162
  end
  object Db_Detail_Operations: TOracleDataSet
    SQL.Strings = (
      'Select t.*,'
      '       t.Row_Num_Gen Oper_Number,'
      '       Op.Ceh_Id,'
      '       Op.Ceh_Code,'
      '       Op.Oper_Name,'
      '       Op.Oper_Id,'
      '       Op.Iot Oper_Iot,'
      '       Doc_Inf.Main_Doc_Id,'
      '       t.U_User_Id User_Edit,'
      '       u.Emp_Fio User_Name,'
      '       t.rowid'
      'From   Ogt.V_TP_GKTTP_OPER_DLP t'
      'Left  Join Stp.V_Users u'
      'On    u.Id_User = t.U_User_Id'
      '      And u.Id_User_Add = t.User_Add_Change'
      'Left   Join Ogt.V_Spr_Tp_Doc Doc_Inf'
      'On     Doc_Inf.Id = :Id'
      '       And Doc_Inf.Id_Vers = :Id_Vers'
      'Left   Join Ogt.V_Spr_Tp_Doc_Actual Md_Inf'
      'On     t.Id_Doc_Tp = Doc_Inf.Main_Doc_Id'
      'Left  Join ( Select  t.Id_Row_Oper,'
      '                     t.Id_Rw_Vers,'
      '                     t.Oper_Id,'
      '                     t.Ceh_Id,'
      '                     t.Ceh_Code,'
      #9#9'     t.Oper_Name,'
      '                     t.Iot,  '
      #9#9'     t.Rw_Status'
      '            From     Ogt.v_Tp_Ok_Dlp t'
      '            Left     Join Stp.V_Users u'
      '            On       u.Id_User = t.User_Id_Corr'
      '                     And u.Id_User_Add = t.User_Id_Add_Corr'
      'Join  (Select Max(a.Id_Doc_Tp||a.Doc_Tp_Vers_Id) Actual, '
      '                                          a.Id_Row_Oper'
      #9#9#9#9'From   ogt.v_Tp_Ok_Dlp_Vers a'
      
        '                                Left   Join Ogt.V_Spr_Tp_Doc Doc' +
        '_Inf'
      '                                On     Doc_Inf.Id = :Id'
      
        '                                       And Doc_Inf.Id_Vers = :Id' +
        '_Vers'
      
        '                                Left   Join Ogt.V_Spr_Tp_Doc_Act' +
        'ual Md_Inf'
      
        '                                On     a.Id_Doc_Tp = Doc_Inf.Mai' +
        'n_Doc_Id'
      #9#9#9#9'Where  (a.Id_Doc_Tp = Md_Inf.Id'
      
        '                                        And a.Doc_Tp_Vers_Id In ' +
        '( Select  a.Id_Vers'
      
        '                                            From    ogt.v_Spr_Tp' +
        '_Doc a '
      
        '                                            Where   a.Id = Md_In' +
        'f.Id'
      
        '                                            Connect By Prior a.P' +
        'arent_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9#9#9#9'                            Start   With a.Id = Md_Inf.I' +
        'd'
      
        #9#9#9#9#9#9#9#9#9'                                  And a.Id_Vers = Md_In' +
        'f.Id_Vers))'
      #9#9#9#9'   Group By a.Id_Row_Oper) v'
      'On  t.Id_Row_Oper = v.Id_Row_Oper'
      '    And t.Id_Doc_Tp||t.Doc_Tp_Vers_Id = v.Actual'
      'Where ((Case'
      '           when t.Id_Doc_Tp = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)) Op'
      'On Op.Id_Row_Oper = t.Id_Row_Oper'
      'Join  (Select Max(a.Id_Doc_Tp||a.Doc_Tp_Vers_Id) Actual, '
      '                                          a.Id'
      #9#9#9#9'From   Ogt.V_Tp_Gkttp_Oper_Dlp_Vers a'
      #9#9#9#9'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      #9#9#9#9#9'    On    a.Id_Doc_Tp = Info.Id'
      #9#9#9#9'Where  (a.Id_Doc_Tp = :Id'
      
        '                                        And a.Doc_Tp_Vers_Id In ' +
        '( Select  a.Id_Vers'
      
        '                                            From    ogt.v_Spr_Tp' +
        '_Doc a '
      '                                            Where   a.Id = :Id'
      
        '                                            Connect By Prior a.P' +
        'arent_Doc_Id = a.Doc_Header_Id'
      #9#9#9#9#9#9#9#9'                            Start   With a.Id = :Id'
      
        #9#9#9#9#9#9#9#9#9'                                  And a.Id_Vers = :Id_V' +
        'ers))'
      #9#9#9#9#9#9#9#9
      #9#9#9#9'   Group By a.Id) v'
      'On  t.Id = v.Id'
      '    And t.Id_Doc_Tp||t.Doc_Tp_Vers_Id = v.Actual'
      'Where ((Case'
      '           when t.Id_Doc_Tp = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)'
      'Order  By Row_Num_Gen')
    Optimize = False
    Variables.Data = {
      0400000002000000060000003A00490044000500000000000000000000001000
      00003A00490044005F005600450052005300050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000003D000000040000004900440001000000000012000000490044005F00
      44004F0043005F00540050000100000000000C0000004400450054005F004900
      440001000000000016000000490044005F0052004F0057005F004F0050004500
      52000100000000001600000052004F0057005F004E0055004D005F0047004500
      4E00010000000000080000005000520049004D000100000000000C0000005200
      41005A0052004100420001000000000016000000520041005A00520041004200
      5F004E0041004D0045000100000000001600000044004100540041005F004300
      480041004E004700450001000000000014000000490044005F0052004F005700
      5F00440045005400010000000000180000004F005000450052005F004F004200
      4F0052005F0045004E00010000000000220000004F005000450052005F004F00
      42004F0052005F00540049004D0045005F0050005A0001000000000022000000
      4F005000450052005F004F0042004F0052005F00540049004D0045005F005300
      48000100000000000E0000004F0042004F0052005F0049004400010000000000
      120000004F0042004F0052005F004E0041004D00450001000000000012000000
      500052004F0046005F0043004F00440045000100000000000E00000045004E00
      5600490052004F004E000100000000001000000048004100520044004E004500
      530053000100000000000A00000054005F004D0049004E000100000000000A00
      000054005F004D004100580001000000000010000000540049004D0045005F00
      4D0049004E0001000000000010000000540049004D0045005F004D0041005800
      01000000000014000000540049004D0045005F004500440049005A004D000100
      00000000120000004F005000450052005F004B004F0049004400010000000000
      100000004F005000450052005F004B0055005000010000000000120000004F00
      5000450052005F0050005000500044000100000000001A0000004F0050004500
      52005F004F005000500050005F00440045005400010000000000100000004F00
      5000450052005F004B0044005000010000000000100000004F00500045005200
      5F004B0044004100010000000000100000004F005000450052005F004B005300
      4C00010000000000160000004F005000450052005F0054004F004C0053004300
      48000100000000001E0000004F005000450052005F004300480053005F005000
      4100520041004D0053000100000000001A0000004F005000450052005F004300
      4F004C004F0052005F00490044000100000000001C0000004F00500045005200
      5F0043004F0055004E0054005F0049004E005300010000000000140000004300
      4F004C004F0052005F004E0041004D0045000100000000001E00000054004900
      4D0045005F004500440049005A004D005F004E0041004D004500010000000000
      12000000500052004F0046005F00520041005A00520001000000000010000000
      500052004F0046005F004B0056004E000100000000001E0000004F0050004500
      52005F0043004F0055004E0054005F0042004100540048000100000000002200
      00004F005000450052005F0054004F004C005300430048005F00520041004E00
      470045000100000000001A0000004700520050005F004F00420052005F005200
      57005F0049004400010000000000160000004F005000450052005F004E005500
      4D004200450052000100000000000E000000520057005F005600450052005300
      0100000000001C000000520057005F00490044005F004F004C0044005F005600
      4500520053000100000000001C00000044004F0043005F00540050005F005600
      4500520053005F0049004400010000000000100000004300450048005F004300
      4F0044004500010000000000120000004F005000450052005F004E0041004D00
      4500010000000000100000004F005000450052005F0049004F00540001000000
      00000C0000004300450048005F00490044000100000000001400000049004400
      5F00520057005F00560045005200530001000000000012000000520057005F00
      5300540041005400550053000100000000000E0000004F005000450052005F00
      49004400010000000000160000004D00410049004E005F0044004F0043005F00
      490044000100000000000C00000049005F004400410054004500010000000000
      1200000049005F0055005300450052005F00490044000100000000001E000000
      55005300450052005F004100440044005F0049004E0053004500520054000100
      000000000C00000055005F004400410054004500010000000000120000005500
      5F0055005300450052005F00490044000100000000001E000000550053004500
      52005F004100440044005F004300480041004E00470045000100000000001200
      000055005300450052005F004500440049005400010000000000120000005500
      5300450052005F004E0041004D004500010000000000}
    UniqueFields = 'ID; ID_RW_VERS'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers'
    UpdatingTable = 'Ogt.V_Tp_Gkttp_Oper_Dlp'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 216
    Top = 208
    object Db_Detail_OperationsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Detail_OperationsID_RW_VERS: TIntegerField
      FieldName = 'ID_RW_VERS'
    end
    object Db_Detail_OperationsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Detail_OperationsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Detail_OperationsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Detail_OperationsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object Db_Detail_OperationsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Detail_OperationsID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
    end
    object Db_Detail_OperationsROW_NUM_GEN: TStringField
      FieldName = 'ROW_NUM_GEN'
      Size = 50
    end
    object Db_Detail_OperationsID_ROW_DET: TFloatField
      FieldName = 'ID_ROW_DET'
      Required = True
    end
    object Db_Detail_OperationsDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object Db_Detail_OperationsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object Db_Detail_OperationsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Detail_OperationsPRIM: TStringField
      FieldName = 'PRIM'
      Size = 2000
    end
    object Db_Detail_OperationsDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object Db_Detail_OperationsOPER_OBOR_EN: TFloatField
      FieldName = 'OPER_OBOR_EN'
    end
    object Db_Detail_OperationsOPER_OBOR_TIME_PZ: TFloatField
      FieldName = 'OPER_OBOR_TIME_PZ'
    end
    object Db_Detail_OperationsOPER_OBOR_TIME_SH: TFloatField
      FieldName = 'OPER_OBOR_TIME_SH'
    end
    object Db_Detail_OperationsOBOR_ID: TFloatField
      FieldName = 'OBOR_ID'
    end
    object Db_Detail_OperationsOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object Db_Detail_OperationsGRP_OBR_RW_ID: TFloatField
      FieldName = 'GRP_OBR_RW_ID'
    end
    object Db_Detail_OperationsOPER_KOID: TFloatField
      FieldName = 'OPER_KOID'
    end
    object Db_Detail_OperationsPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object Db_Detail_OperationsPROF_RAZR: TFloatField
      FieldName = 'PROF_RAZR'
    end
    object Db_Detail_OperationsPROF_KVN: TFloatField
      FieldName = 'PROF_KVN'
    end
    object Db_Detail_OperationsENVIRON: TStringField
      FieldName = 'ENVIRON'
      Size = 200
    end
    object Db_Detail_OperationsHARDNESS: TStringField
      FieldName = 'HARDNESS'
      Size = 200
    end
    object Db_Detail_OperationsT_MIN: TFloatField
      FieldName = 'T_MIN'
    end
    object Db_Detail_OperationsT_MAX: TFloatField
      FieldName = 'T_MAX'
    end
    object Db_Detail_OperationsTIME_MIN: TFloatField
      FieldName = 'TIME_MIN'
    end
    object Db_Detail_OperationsTIME_MAX: TFloatField
      FieldName = 'TIME_MAX'
    end
    object Db_Detail_OperationsTIME_EDIZM: TStringField
      FieldName = 'TIME_EDIZM'
      Size = 2
    end
    object Db_Detail_OperationsTIME_EDIZM_NAME: TStringField
      FieldName = 'TIME_EDIZM_NAME'
      Size = 7
    end
    object Db_Detail_OperationsOPER_KUP: TFloatField
      FieldName = 'OPER_KUP'
    end
    object Db_Detail_OperationsOPER_PPPD: TFloatField
      FieldName = 'OPER_PPPD'
    end
    object Db_Detail_OperationsOPER_OPPP_DET: TFloatField
      FieldName = 'OPER_OPPP_DET'
    end
    object Db_Detail_OperationsOPER_KDP: TFloatField
      FieldName = 'OPER_KDP'
    end
    object Db_Detail_OperationsOPER_KDA: TFloatField
      FieldName = 'OPER_KDA'
    end
    object Db_Detail_OperationsOPER_KSL: TFloatField
      FieldName = 'OPER_KSL'
    end
    object Db_Detail_OperationsOPER_TOLSCH: TFloatField
      FieldName = 'OPER_TOLSCH'
    end
    object Db_Detail_OperationsOPER_TOLSCH_RANGE: TStringField
      FieldName = 'OPER_TOLSCH_RANGE'
      Size = 30
    end
    object Db_Detail_OperationsOPER_CHS_PARAMS: TStringField
      FieldName = 'OPER_CHS_PARAMS'
      Size = 200
    end
    object Db_Detail_OperationsOPER_COLOR_ID: TFloatField
      FieldName = 'OPER_COLOR_ID'
    end
    object Db_Detail_OperationsCOLOR_NAME: TStringField
      FieldName = 'COLOR_NAME'
      Size = 200
    end
    object Db_Detail_OperationsOPER_COUNT_INS: TFloatField
      FieldName = 'OPER_COUNT_INS'
    end
    object Db_Detail_OperationsOPER_COUNT_BATH: TFloatField
      FieldName = 'OPER_COUNT_BATH'
    end
    object Db_Detail_OperationsOPER_NUMBER: TStringField
      FieldName = 'OPER_NUMBER'
      Size = 50
    end
    object Db_Detail_OperationsCEH_ID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CEH_ID'
    end
    object Db_Detail_OperationsCEH_CODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Detail_OperationsOPER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object Db_Detail_OperationsOPER_IOT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'OPER_IOT'
      Size = 50
    end
    object Db_Detail_OperationsOPER_ID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OPER_ID'
    end
    object Db_Detail_OperationsMAIN_DOC_ID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Detail_OperationsI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object Db_Detail_OperationsI_USER_ID: TStringField
      FieldName = 'I_USER_ID'
      Size = 30
    end
    object Db_Detail_OperationsUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object Db_Detail_OperationsU_DATE: TDateTimeField
      FieldName = 'U_DATE'
    end
    object Db_Detail_OperationsU_USER_ID: TStringField
      FieldName = 'U_USER_ID'
      Size = 30
    end
    object Db_Detail_OperationsUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object Db_Detail_OperationsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
    object Db_Detail_OperationsUSER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_NAME'
      Size = 26
    end
  end
  object Db_Operations_For_Copy: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.Row_Num_Gen Oper_Number,'
      '       t.Ceh_Name Ceh_Code,'
      '       Oper.Obor Obor_Id,'
      '       Oper.Obor_Name,'
      '       t.rowid '
      'From   Ogt.TP_GKTTP_OPER_DLP_COPY t'
      'Left   Join Ogt.V_TP_OK_DLP Oper'
      'On     Oper.Id_Row_Oper = t.Id_Row_Oper'
      'order by t.Row_Num_Gen')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000E000000040000004900440001000000000012000000490044005F00
      44004F0043005F00540050000100000000000C0000004400450054005F004900
      44000100000000000800000046004C0041004700010000000000160000004900
      44005F0052004F0057005F004F00500045005200010000000000160000005200
      4F0057005F004E0055004D005F00470045004E00010000000000080000005000
      520049004D00010000000000120000004F005000450052005F004E0041004D00
      4500010000000000100000004F005000450052005F0049004F00540001000000
      00000C0000004300450048005F00490044000100000000001000000043004500
      48005F004E0041004D004500010000000000100000004300450048005F004300
      4F00440045000100000000000E0000004F0042004F0052005F00490044000100
      00000000120000004F0042004F0052005F004E0041004D004500010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 216
    Top = 408
    object Db_Operations_For_CopyID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
    end
    object Db_Operations_For_CopyOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 200
    end
    object Db_Operations_For_CopyOPER_IOT: TStringField
      FieldName = 'OPER_IOT'
      Size = 200
    end
    object Db_Operations_For_CopyFLAG: TFloatField
      FieldName = 'FLAG'
    end
    object Db_Operations_For_CopyCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Operations_For_CopyROW_NUM_GEN: TStringField
      FieldName = 'ROW_NUM_GEN'
      Size = 50
    end
    object Db_Operations_For_CopyCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Operations_For_CopyOBOR_ID: TFloatField
      FieldName = 'OBOR_ID'
    end
    object Db_Operations_For_CopyOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
  end
  object Driver_Operations_For_Copy: TDataSetDriverEh
    ProviderDataSet = Db_Operations_For_Copy
    Left = 224
    Top = 360
  end
  object MemT_Operations_For_Copy: TMemTableEh
    Filtered = True
    Params = <>
    DataDriver = Driver_Operations_For_Copy
    Left = 232
    Top = 320
    object MemT_Operations_For_CopyID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
    end
    object MemT_Operations_For_CopyOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 200
    end
    object MemT_Operations_For_CopyOPER_IOT: TStringField
      FieldName = 'OPER_IOT'
      Size = 200
    end
    object MemT_Operations_For_CopyFLAG: TFloatField
      FieldName = 'FLAG'
    end
    object MemT_Operations_For_CopyCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object MemT_Operations_For_CopyROW_NUM_GEN: TStringField
      FieldName = 'ROW_NUM_GEN'
      Size = 50
    end
    object MemT_Operations_For_CopyCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object MemT_Operations_For_CopyOBOR_ID: TFloatField
      FieldName = 'OBOR_ID'
    end
    object MemT_Operations_For_CopyOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
  end
  object Data_Operations_For_Copy: TDataSource
    DataSet = MemT_Operations_For_Copy
    Left = 224
    Top = 272
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
  object Db_Doc_Info: TOracleDataSet
    SQL.Strings = (
      'Select t.*,'
      '       ( Case'
      '            When t.Main_Doc_Id Is Null'
      '            Then t.Id'
      '            Else t.Main_Doc_Id'
      '          End ) Linked_Doc_Id,'
      '       ( Case'
      '            When t.Main_Doc_Id Is Null'
      '            Then t.Id_Vers'
      '            Else m.Id_Vers'
      '          End ) Linked_Doc_Id_Vers,'
      
        '       Ogt.Pkg_Tp_Doc.F_Get_Doc_Edit_Status(in_doc_header_id => ' +
        't.Doc_Header_Id,'
      
        '                                            v_user_lnum => Null)' +
        ' Doc_Edit_Stat,'
      '     ( Case'
      '         When t.Izd_Id Is Null'
      '         Then Det.Primen_txt'
      '         Else t.Izd_Name||'#39' '#39'||t.Izd_Type'
      '       End ) As Izd_Name_Type,'
      '       (Case'
      '          When prnt.Id is Null'
      '          Then t.id '
      '          Else prnt.Id'
      '        End) Parent_Id_Doc, '
      '       (Case t.Doc_Type '
      '          when 1 then t.Det_Num '
      '          when 2 then t.Tp_Num'
      '          when 4 then t.Tp_Num'
      '        End) Addit_Info_Num,'
      '       (Case t.Doc_Type '
      '          when 1 then t.Det_Name '
      '          when 2 then t.Tp_Name'
      '          when 4 then t.Tp_Name'
      '        End) Addit_Info_Name,      '
      '       (Case'
      '          When prnt.Id_Vers is Null'
      '          Then t.id_vers'
      '          Else prnt.Id_vers'
      '        End) Parent_Id_Vers,'
      '       Main_d.Tp_Num Main_Doc_Tp_Num,'
      '       Main_d.Tp_Name Main_Doc_Tp_Name,'
      '       m.Doc_Header_Id Main_Doc_Header_Id'
      'From   Ogt.v_Spr_Tp_Doc t'
      'Left   Join Ogt.V_Spr_Tp_Doc prnt'
      'On     prnt.Doc_Header_Id = t.Parent_Doc_Id'
      'Left   Join Ogt.V_Spr_Tp_doc_Actual m'
      'On     m.Id = t.main_doc_Id'
      'Left   Join Ogt.V_Spr_Tp_Doc Main_d'
      'On     Main_D.Doc_Header_id = m.Doc_Header_Id'
      'Left   Join Ogt.Spr_Det_Txt Det'
      'On     Det.Id = t.Det_Id  '
      'Where  t.Doc_Header_Id = :In_Doc_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0049004E005F0044004F0043005F0049004400
      050000000D0000003030303039313731303030310000000000}
    QBEDefinition.QBEFieldDefs = {
      050000003500000004000000490044000100000000000E00000044004F004300
      5F004E0055004D000100000000001200000044004F0043005F004C0049005400
      450052000100000000001000000044004F0043005F0054005900500045000100
      000000000C000000540050005F004E0055004D000100000000000E0000005400
      50005F004E0041004D00450001000000000018000000540050005F0057004F00
      52004B005F00540059005000450001000000000022000000540050005F005700
      4F0052004B005F0054005900500045005F004E0041004D004500010000000000
      0C00000049005A0044005F00490044000100000000001000000049005A004400
      5F004E0041004D0045000100000000001000000049005A0044005F0054005900
      500045000100000000001600000043004F004D0050004C004500430054005F00
      490044000100000000000E000000540050005F00540059005000450001000000
      00001000000046004C00410047005F0049004D0050000100000000000C000000
      4400450054005F00490044000100000000000E0000004400450054005F004E00
      55004D00010000000000100000004400450054005F004E0041004D0045000100
      000000000E0000004400450054005F004D00410052000100000000000C000000
      4300450048005F0049004400010000000000100000004300450048005F004300
      4F00440045000100000000001600000041005500540048004F0052005F004C00
      4E0055004D000100000000001600000041005500540048004F0052005F004E00
      41004D0045000100000000001000000044004100540041005F00520045004700
      0100000000000C00000052004500410053004F004E000100000000001A000000
      430041004E00430045004C005F0044004F0043005F0049004400010000000000
      160000004D00410049004E005F0044004F0043005F0049004400010000000000
      16000000430041004E00430045004C005F0046004C0041004700010000000000
      1A0000004300450048005F0044004F00430053005F0046004C00410047000100
      000000000E0000004100430054005F004E0055004D0001000000000010000000
      4100430054005F0044004100540045000100000000001A00000044004F004300
      5F004800450041004400450052005F00490044000100000000000E0000004500
      4D00500053005F004900440001000000000018000000500052004F004A004500
      430054005F0046004C0041004700010000000000160000005500530045005200
      5F0049004E005300450052005400010000000000160000004400410054004500
      5F0049004E005300450052005400010000000000160000005500530045005200
      5F004300480041004E0047004500010000000000160000004400410054004100
      5F004300480041004E00470045000100000000001A00000044004F0043005F00
      45004400490054005F0053005400410054000100000000001A00000049005A00
      44005F004E0041004D0045005F0054005900500045000100000000000E000000
      490044005F00560045005200530001000000000016000000490044005F004400
      4F0043005F00460055004C004C00010000000000220000004400410054004500
      5F00530054004100520054005F0041004300540049004F004E00010000000000
      1E00000044004100540045005F0045004E0044005F0041004300540049004F00
      4E000100000000001E0000004D00410049004E005F0044004F0043005F005400
      50005F004E0055004D00010000000000200000004D00410049004E005F004400
      4F0043005F00540050005F004E0041004D004500010000000000240000004D00
      410049004E005F0044004F0043005F004800450041004400450052005F004900
      44000100000000001A00000050004100520045004E0054005F0044004F004300
      5F00490044000100000000001A0000004C0049004E004B00450044005F004400
      4F0043005F0049004400010000000000240000004C0049004E004B0045004400
      5F0044004F0043005F00490044005F0056004500520053000100000000001A00
      000050004100520045004E0054005F00490044005F0044004F00430001000000
      00001C00000050004100520045004E0054005F00490044005F00560045005200
      53000100000000001C000000410044004400490054005F0049004E0046004F00
      5F004E0055004D000100000000001E000000410044004400490054005F004900
      4E0046004F005F004E0041004D004500010000000000}
    Session = DM_Main.Session
    Left = 1006
    Top = 24
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
    object Db_Doc_InfoDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Doc_InfoPARENT_DOC_ID: TIntegerField
      FieldName = 'PARENT_DOC_ID'
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
    object Db_Doc_InfoDET_MAR: TStringField
      FieldName = 'DET_MAR'
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
    object Db_Doc_InfoACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
    end
    object Db_Doc_InfoACT_DATE: TDateTimeField
      FieldName = 'ACT_DATE'
    end
    object Db_Doc_InfoEMPS_ID: TStringField
      FieldName = 'EMPS_ID'
      Size = 30
    end
    object Db_Doc_InfoPROJECT_FLAG: TIntegerField
      FieldName = 'PROJECT_FLAG'
    end
    object Db_Doc_InfoUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Doc_InfoDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Doc_InfoUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Doc_InfoDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object Db_Doc_InfoLINKED_DOC_ID: TFloatField
      FieldName = 'LINKED_DOC_ID'
    end
    object Db_Doc_InfoLINKED_DOC_ID_VERS: TFloatField
      FieldName = 'LINKED_DOC_ID_VERS'
    end
    object Db_Doc_InfoDOC_EDIT_STAT: TStringField
      FieldName = 'DOC_EDIT_STAT'
      Size = 4000
    end
    object Db_Doc_InfoIZD_NAME_TYPE: TStringField
      FieldName = 'IZD_NAME_TYPE'
      Size = 4000
    end
    object Db_Doc_InfoPARENT_ID_DOC: TFloatField
      FieldName = 'PARENT_ID_DOC'
    end
    object Db_Doc_InfoPARENT_ID_VERS: TFloatField
      FieldName = 'PARENT_ID_VERS'
    end
    object Db_Doc_InfoMAIN_DOC_TP_NUM: TStringField
      FieldName = 'MAIN_DOC_TP_NUM'
      Size = 30
    end
    object Db_Doc_InfoMAIN_DOC_TP_NAME: TStringField
      FieldName = 'MAIN_DOC_TP_NAME'
      Size = 300
    end
    object Db_Doc_InfoMAIN_DOC_HEADER_ID: TFloatField
      FieldName = 'MAIN_DOC_HEADER_ID'
    end
    object Db_Doc_InfoADDIT_INFO_NUM: TStringField
      FieldName = 'ADDIT_INFO_NUM'
      Size = 50
    end
    object Db_Doc_InfoADDIT_INFO_NAME: TStringField
      FieldName = 'ADDIT_INFO_NAME'
      Size = 300
    end
  end
  object Db_Chem_Cover: TOracleDataSet
    SQL.Strings = (
      'Select Distinct Rcd.Id_Det,'
      '               Plo.Plo,'
      '               Pok_V.Plo_p,'
      '               Plo.Kolsl,'
      '               Plo.Tolpokr,'
      '               Pok.Tol_Pokr,'
      '               Plo.Grsl,'
      '               Pok.Color_Id'
      '        From   Ogt.V_Spr_Rcd Rcd'
      '        Join   Ogt.V_Plo_Det Plo'
      '        On     Rcd.Id_Det = Plo.Id_Det'
      '               And Plo.Flag = '#39'1'#39
      '               And Plo.Plo > 0'
      '        Join   Ogt.Spr_Pokr_Txt Pok'
      '        On     Plo.Id_Kodnop = Pok.Id'
      '               And Pok.Id_Doc_Tp = :Main_Doc_Id'
      '        Left   Join Ogt.V$SPR_POKR_VID Pok_V'
      '        On     Pok_V.Id = Pok.Vid_Pokr'
      '        Where  Rcd.Id_Izd = :Izd_Id'
      '               And Rcd.Flag = '#39'1'#39
      '               And Rcd.Kol > 0'
      '               And Rcd.Id_Det = :Det_Id')
    Optimize = False
    Variables.Data = {
      0400000003000000180000003A004D00410049004E005F0044004F0043005F00
      4900440005000000050000003530373900000000000E0000003A0049005A0044
      005F00490044000500000006000000313236313100000000000E0000003A0044
      00450054005F0049004400050000000600000037393837360000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000080000000C000000490044005F004400450054000100000000000600
      000050004C004F000100000000000A00000050004C004F005F00500001000000
      00000A0000004B004F004C0053004C000100000000000E00000054004F004C00
      50004F004B0052000100000000001000000054004F004C005F0050004F004B00
      5200010000000000080000004700520053004C00010000000000100000004300
      4F004C004F0052005F0049004400010000000000}
    Master = Db_Doc_Info
    MasterFields = 'Izd_Id; Main_Doc_Id'
    Session = DM_Main.Session
    Left = 424
    Top = 360
    object Db_Chem_CoverID_DET: TFloatField
      FieldName = 'ID_DET'
      Required = True
    end
    object Db_Chem_CoverPLO: TFloatField
      FieldName = 'PLO'
      Required = True
    end
    object Db_Chem_CoverPLO_P: TFloatField
      FieldName = 'PLO_P'
    end
    object Db_Chem_CoverKOLSL: TFloatField
      FieldName = 'KOLSL'
    end
    object Db_Chem_CoverTOLPOKR: TFloatField
      FieldName = 'TOLPOKR'
    end
    object Db_Chem_CoverTOL_POKR: TStringField
      FieldName = 'TOL_POKR'
      Size = 30
    end
    object Db_Chem_CoverGRSL: TFloatField
      FieldName = 'GRSL'
      Required = True
    end
    object Db_Chem_CoverCOLOR_ID: TFloatField
      FieldName = 'COLOR_ID'
    end
  end
end
