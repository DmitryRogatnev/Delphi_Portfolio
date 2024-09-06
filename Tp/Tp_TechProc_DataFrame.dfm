object FrameData_TechProc: TFrameData_TechProc
  Left = 0
  Top = 0
  Width = 1174
  Height = 722
  TabOrder = 0
  object Db_Doc_Parts: TOracleDataSet
    SQL.Strings = (
      'select t.*, '
      '       t.U_User_Id User_Edit,'
      '       t.rowid'
      'from Ogt.V_TP_OK_MAR_PARTS t'
      'Join (Select Max(a.Id_Doc_Tp||a.Doc_Tp_Vers_Id) Actual, '
      '                                          a.Id'
      #9#9#9#9'   From   Ogt.V_Tp_Ok_Mar_Parts_Vers a'
      #9#9#9#9'    Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      #9#9#9#9#9'    On    a.Id_Doc_Tp = Info.Id'
      #9#9#9#9'   Where  a.Id_Doc_Tp = :Id'
      #9#9#9#9#9'  And a.Doc_Tp_Vers_Id In ( Select a.Id_Vers'
      #9#9#9#9#9#9#9#9'    From   ogt.v_Spr_Tp_Doc a '
      #9#9#9#9#9#9#9#9'    Where  a.Id = :Id'
      #9#9#9#9#9#9#9#9'    Connect By Prior a.Parent_Doc_Id = a.Doc_Header_Id'
      #9#9#9#9#9#9#9#9'    Start With a.Id = :Id'
      #9#9#9#9#9#9#9#9#9'       And a.Id_Vers = :Id_Vers)'
      #9#9#9#9#9#9#9#9'Or( (Info.Main_Doc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      '                 And a.Id_Doc_Tp <> :Id '
      '                     And a.Doc_Tp_Vers_Id In ( Select  a.Id_Vers'
      #9#9#9#9#9'       From    ogt.v_Spr_Tp_Doc a '
      #9#9#9#9#9'       Where   a.Id = Info.Id'
      #9#9#9#9#9'       Connect By Prior a.Parent_Doc_Id = a.Doc_Header_Id'
      #9#9#9#9#9'       Start   With a.Id = Info.Id'
      #9#9#9#9#9#9'       And a.Id_Vers = Info.Id_Vers ) )'
      #9#9#9#9'   Group By a.Id) b'
      #9#9'             On b.Id = t.Id'
      
        '                                   And b.Actual = t.Id_Doc_Tp||t' +
        '.Doc_Tp_Vers_Id'
      'where ((Case'
      '           when t.Id_Doc_Tp  = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)'
      'Order by t.Row_Num')
    Optimize = False
    Variables.Data = {
      04000000030000001C0000003A004C0049004E004B00450044005F0044004F00
      43005F00490044000500000005000000313036310000000000060000003A0049
      004400050000000000000000000000100000003A00490044005F005600450052
      005300050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0500000013000000040000004900440001000000000012000000490044005F00
      44004F0043005F00540050000100000000000C0000004300450048005F004900
      44000100000000000E00000052004F0057005F004E0055004D00010000000000
      100000004300450048005F0043004F00440045000100000000001C0000004400
      4F0043005F00540050005F0056004500520053005F0049004400010000000000
      0E000000520057005F0056004500520053000100000000001C00000052005700
      5F00490044005F004F004C0044005F0056004500520053000100000000001400
      0000490044005F00520057005F00560045005200530001000000000012000000
      520057005F005300540041005400550053000100000000001A00000044004F00
      43005F004800450041004400450052005F00490044000100000000000C000000
      4400450050005F00490044000100000000000C00000049005F00440041005400
      45000100000000001200000049005F0055005300450052005F00490044000100
      000000001A00000049005F0055005300450052005F00490044005F0041004400
      44000100000000000C00000055005F0044004100540045000100000000001200
      000055005F0055005300450052005F00490044000100000000001A0000005500
      5F0055005300450052005F00490044005F004100440044000100000000001200
      000055005300450052005F004500440049005400010000000000}
    UniqueFields = 'ID; ID_RW_VERS'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    CountAllRecords = True
    UpdatingTable = 'Ogt.V_TP_OK_MAR_PARTS'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 32
    Top = 224
    object Db_Doc_PartsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Doc_PartsID_RW_VERS: TIntegerField
      FieldName = 'ID_RW_VERS'
    end
    object Db_Doc_PartsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Doc_PartsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Doc_PartsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Doc_PartsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Doc_PartsROW_NUM: TFloatField
      FieldName = 'ROW_NUM'
    end
    object Db_Doc_PartsCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Doc_PartsCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Required = True
      Size = 2
    end
    object Db_Doc_PartsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
    end
    object Db_Doc_PartsDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Doc_PartsDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Doc_PartsI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object Db_Doc_PartsI_USER_ID: TStringField
      FieldName = 'I_USER_ID'
      Size = 30
    end
    object Db_Doc_PartsI_USER_ID_ADD: TIntegerField
      FieldName = 'I_USER_ID_ADD'
    end
    object Db_Doc_PartsU_DATE: TDateTimeField
      FieldName = 'U_DATE'
    end
    object Db_Doc_PartsU_USER_ID: TStringField
      FieldName = 'U_USER_ID'
      Size = 30
    end
    object Db_Doc_PartsU_USER_ID_ADD: TIntegerField
      FieldName = 'U_USER_ID_ADD'
    end
    object Db_Doc_PartsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Doc_Parts: TDataSetDriverEh
    KeyFields = 'ID; ID_RW_VERS'
    ProviderDataSet = Db_Doc_Parts
    Left = 32
    Top = 176
  end
  object MemT_Doc_Parts: TMemTableEh
    CachedUpdates = True
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Doc_Parts
    SortOrder = 'Row_Num'
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Doc_PartsAfterEdit
    AfterPost = MemT_Doc_PartsAfterPost
    BeforeDelete = MemTableEhBeforeDelete
    AfterDelete = MemT_Oper_PerAfterDelete
    OnNewRecord = MemT_Doc_PartsNewRecord
    Left = 32
    Top = 128
    object MemT_Doc_PartsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Doc_PartsID_RW_VERS: TIntegerField
      FieldName = 'ID_RW_VERS'
    end
    object MemT_Doc_PartsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Doc_PartsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Doc_PartsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Doc_PartsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Doc_PartsROW_NUM: TFloatField
      FieldName = 'ROW_NUM'
    end
    object MemT_Doc_PartsCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object MemT_Doc_PartsCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Required = True
      Size = 2
    end
    object MemT_Doc_PartsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
    end
    object MemT_Doc_PartsDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object MemT_Doc_PartsDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object MemT_Doc_PartsI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object MemT_Doc_PartsI_USER_ID: TStringField
      FieldName = 'I_USER_ID'
      Size = 30
    end
    object MemT_Doc_PartsI_USER_ID_ADD: TIntegerField
      FieldName = 'I_USER_ID_ADD'
    end
    object MemT_Doc_PartsU_DATE: TDateTimeField
      FieldName = 'U_DATE'
    end
    object MemT_Doc_PartsU_USER_ID: TStringField
      FieldName = 'U_USER_ID'
      Size = 30
    end
    object MemT_Doc_PartsU_USER_ID_ADD: TIntegerField
      FieldName = 'U_USER_ID_ADD'
    end
    object MemT_Doc_PartsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Data_Doc_Parts: TDataSource
    DataSet = MemT_Doc_Parts
    Left = 32
    Top = 80
  end
  object Seq_Db_Doc_Parts: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Tp_Ok_Mar_Parts$sqn$id.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 32
    Top = 16
  end
  object Driver_Opers: TDataSetDriverEh
    KeyFields = 'ID_ROW_OPER; ID_RW_VERS'
    ProviderDataSet = Db_Opers
    Left = 120
    Top = 176
  end
  object Db_Opers: TOracleDataSet
    SQL.Strings = (
      'select t.Id_Row_Oper,'
      '       t.Id_Rw_Vers,'
      '       t.Rw_Vers,'
      '       t.Rw_Status,'
      '       t.Id_Doc_Tp,'
      '       t.Doc_Tp_Vers_Id,'
      '       t.Nomoper,'
      '       t.Id_Part_Tp,'
      '       t.Ceh_Id,'
      '       t.Ceh_Code,'
      '       t.Dep_Id,'
      '       t.Oper_Id,'
      '       t.Oper_Name,'
      '       t.Obor,'
      '       t.Obor_Name,'
      '       t.Prim,'
      '       t.Razrab,'
      '       t.Tt,'
      '       t.Iot,'
      '       t.Oper_Tt,'
      '       t.Grp_Obr_Rw_Id,'
      '       t.Tara,'
      '       t.Tara_Num,'
      '       t.Tara_Name,'
      '       t.Mat,'
      '       t.Mat_Name,'
      '       t.Param_Otk,'
      '       t.Means_Otk,'
      '       t.Volume_Otk,'
      '       t.User_Id_Insrt,'
      '       t.Date_Insrt,       '
      '       t.rowid,'
      '       t.User_Id_Corr User_Edit,'
      '       u.Emp_Fio User_Name,'
      '       Info.Main_Doc_Id,'
      '       Part.Row_Num Part_Row_Num,'
      
        '       To_Char( ( Row_Number() Over(Order By  Part.Row_Num, t.No' +
        'moper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number      '
      'From  Ogt.V_TP_OK_DLP t'
      'Left  Join Stp.V_Users u'
      'On    u.Id_User = t.User_Id_Corr'
      '      And u.Id_User_Add = t.User_Id_Add_Corr'
      'Left  Join (Select * From Ogt.V_Tp_Ok_Mar_Parts a'
      '            Where    a.Id_Doc_Tp = :Linked_Doc_Id ) Part'
      'On    Part.Id=t.Id_Part_Tp'
      
        '      And Part.Id_Rw_Vers = Ogt.pkg_tp_doc.f_get_item_idvers_for' +
        'doc(in_doc_header_id => :Doc_header_id,'
      
        '                                                 in_id_item => P' +
        'art.Id,'
      
        '                                                 item_flag => '#39'P' +
        'art'#39')'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Id_Doc_Tp = Info.Id'
      'Join  (Select Max(a.Id_Doc_Tp||a.Doc_Tp_Vers_Id) Actual, '
      '                                          a.Id_Row_Oper'
      #9#9#9#9'From   ogt.v_Tp_Ok_Dlp_Vers a'
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
      #9#9#9#9#9#9#9#9'Or( (Info.Main_Doc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      '                 And a.Id_Doc_Tp <> :Id '
      '                     And a.Doc_Tp_Vers_Id In ( Select  a.Id_Vers'
      #9#9#9#9#9'       From    ogt.v_Spr_Tp_Doc a '
      #9#9#9#9#9'       Where   a.Id = Info.Id'
      #9#9#9#9#9'       Connect By Prior a.Parent_Doc_Id = a.Doc_Header_Id'
      #9#9#9#9#9'       Start   With a.Id = Info.Id'
      #9#9#9#9#9#9'       And a.Id_Vers = Info.Id_Vers ))'
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
      '       end) = 1)'
      '')
    Optimize = False
    Variables.Data = {
      0400000004000000100000003A00490044005F00560045005200530005000000
      0000000000000000060000003A00490044000500000000000000000000001C00
      00003A004C0049004E004B00450044005F0044004F0043005F00490044000500
      000000000000000000001C0000003A0044004F0043005F004800450041004400
      450052005F0049004400050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000240000000E0000004E004F004D004F00500045005200010000000000
      080000004F0042004F005200010000000000080000005000520049004D000100
      000000000C000000520041005A00520041004200010000000000040000005400
      5400010000000000080000005400410052004100010000000000060000004D00
      41005400010000000000120000004F005000450052005F004E0041004D004500
      010000000000120000004F0042004F0052005F004E0041004D00450001000000
      00001000000054004100520041005F004E0055004D0001000000000012000000
      54004100520041005F004E0041004D004500010000000000100000004D004100
      54005F004E0041004D00450001000000000014000000490044005F0050004100
      520054005F005400500001000000000012000000490044005F0044004F004300
      5F00540050000100000000000E0000004F005000450052005F00540054000100
      000000001A00000055005300450052005F00490044005F0049004E0053005200
      54000100000000001400000044004100540045005F0049004E00530052005400
      010000000000160000004D00410049004E005F0044004F0043005F0049004400
      010000000000160000004F005000450052005F004E0055004D00420045005200
      01000000000016000000490044005F0052004F0057005F004F00500045005200
      0100000000000C0000004300450048005F00490044000100000000000C000000
      4400450050005F00490044000100000000000E0000004F005000450052005F00
      490044000100000000001A0000004700520050005F004F00420052005F005200
      57005F004900440001000000000014000000490044005F00520057005F005600
      45005200530001000000000012000000520057005F0053005400410054005500
      53000100000000000E000000520057005F005600450052005300010000000000
      1C00000044004F0043005F00540050005F0056004500520053005F0049004400
      0100000000001800000050004100520054005F0052004F0057005F004E005500
      4D000100000000001200000055005300450052005F0045004400490054000100
      000000000600000049004F005400010000000000100000004300450048005F00
      43004F00440045000100000000001200000055005300450052005F004E004100
      4D0045000100000000001200000050004100520041004D005F004F0054004B00
      010000000000120000004D00450041004E0053005F004F0054004B0001000000
      00001400000056004F004C0055004D0045005F004F0054004B00010000000000}
    UniqueFields = 'ID_ROW_OPER; ID_RW_VERS'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id; Doc_Header_Id'
    UpdatingTable = 'Ogt.v_Tp_Ok_Dlp'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 120
    Top = 224
    object Db_OpersID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
      Required = True
    end
    object Db_OpersID_RW_VERS: TIntegerField
      FieldName = 'ID_RW_VERS'
      Required = True
    end
    object Db_OpersRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_OpersRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_OpersID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object Db_OpersDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_OpersNOMOPER: TFloatField
      FieldName = 'NOMOPER'
      Required = True
    end
    object Db_OpersID_PART_TP: TFloatField
      FieldName = 'ID_PART_TP'
    end
    object Db_OpersCEH_ID: TFloatField
      FieldName = 'CEH_ID'
      Required = True
    end
    object Db_OpersDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_OpersOPER_ID: TFloatField
      FieldName = 'OPER_ID'
      Required = True
    end
    object Db_OpersOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object Db_OpersOBOR: TFloatField
      FieldName = 'OBOR'
    end
    object Db_OpersOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object Db_OpersPRIM: TStringField
      FieldName = 'PRIM'
      Size = 1000
    end
    object Db_OpersRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object Db_OpersTT: TStringField
      FieldName = 'TT'
      Size = 1000
    end
    object Db_OpersOPER_TT: TStringField
      FieldName = 'OPER_TT'
      Size = 500
    end
    object Db_OpersGRP_OBR_RW_ID: TFloatField
      FieldName = 'GRP_OBR_RW_ID'
    end
    object Db_OpersTARA: TFloatField
      FieldName = 'TARA'
    end
    object Db_OpersTARA_NUM: TStringField
      FieldName = 'TARA_NUM'
      Size = 50
    end
    object Db_OpersTARA_NAME: TStringField
      FieldName = 'TARA_NAME'
      Size = 100
    end
    object Db_OpersMAT: TFloatField
      FieldName = 'MAT'
    end
    object Db_OpersMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object Db_OpersUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object Db_OpersDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object Db_OpersUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
    object Db_OpersMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_OpersPART_ROW_NUM: TFloatField
      FieldName = 'PART_ROW_NUM'
    end
    object Db_OpersOPER_NUMBER: TStringField
      FieldName = 'OPER_NUMBER'
      Size = 5
    end
    object Db_OpersIOT: TStringField
      FieldName = 'IOT'
      Size = 50
    end
    object Db_OpersCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_OpersUSER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_NAME'
      Size = 26
    end
    object Db_OpersPARAM_OTK: TStringField
      FieldName = 'PARAM_OTK'
      Size = 30
    end
    object Db_OpersMEANS_OTK: TStringField
      FieldName = 'MEANS_OTK'
      Size = 30
    end
    object Db_OpersVOLUME_OTK: TStringField
      FieldName = 'VOLUME_OTK'
      Size = 150
    end
  end
  object MemT_Opers: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_PART_TP;CEH_ID'
    FetchAllOnOpen = True
    MasterFields = 'ID;CEH_ID'
    MasterSource = Data_Doc_Parts
    Params = <>
    DataDriver = Driver_Opers
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_OpersAfterEdit
    AfterPost = MemT_OpersAfterPost
    BeforeDelete = MemTableEhBeforeDelete
    AfterDelete = MemT_Oper_PerAfterDelete
    AfterScroll = MemT_OpersAfterScroll
    OnNewRecord = MemT_OpersNewRecord
    Left = 120
    Top = 128
    object MemT_OpersID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
      Required = True
    end
    object MemT_OpersID_RW_VERS: TIntegerField
      FieldName = 'ID_RW_VERS'
      Required = True
    end
    object MemT_OpersRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_OpersRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_OpersID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object MemT_OpersDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_OpersNOMOPER: TFloatField
      FieldName = 'NOMOPER'
      Required = True
    end
    object MemT_OpersID_PART_TP: TFloatField
      FieldName = 'ID_PART_TP'
    end
    object MemT_OpersCEH_ID: TFloatField
      FieldName = 'CEH_ID'
      Required = True
    end
    object MemT_OpersDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object MemT_OpersOPER_ID: TFloatField
      FieldName = 'OPER_ID'
      Required = True
    end
    object MemT_OpersOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object MemT_OpersOBOR: TFloatField
      FieldName = 'OBOR'
    end
    object MemT_OpersOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object MemT_OpersPRIM: TStringField
      FieldName = 'PRIM'
      Size = 1000
    end
    object MemT_OpersRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object MemT_OpersTT: TStringField
      FieldName = 'TT'
      Size = 1000
    end
    object MemT_OpersOPER_TT: TStringField
      FieldName = 'OPER_TT'
      Size = 500
    end
    object MemT_OpersGRP_OBR_RW_ID: TFloatField
      FieldName = 'GRP_OBR_RW_ID'
    end
    object MemT_OpersTARA: TFloatField
      FieldName = 'TARA'
    end
    object MemT_OpersTARA_NUM: TStringField
      FieldName = 'TARA_NUM'
      Size = 50
    end
    object MemT_OpersTARA_NAME: TStringField
      FieldName = 'TARA_NAME'
      Size = 100
    end
    object MemT_OpersMAT: TFloatField
      FieldName = 'MAT'
    end
    object MemT_OpersMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object MemT_OpersUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object MemT_OpersDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object MemT_OpersUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
    object MemT_OpersMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object MemT_OpersPART_ROW_NUM: TFloatField
      FieldName = 'PART_ROW_NUM'
    end
    object MemT_OpersOPER_NUMBER: TStringField
      FieldName = 'OPER_NUMBER'
      Size = 5
    end
    object MemT_OpersIOT: TStringField
      FieldName = 'IOT'
      Size = 50
    end
    object MemT_OpersCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object MemT_OpersUSER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_NAME'
      Size = 26
    end
    object MemT_OpersPARAM_OTK: TStringField
      FieldName = 'PARAM_OTK'
      Size = 30
    end
    object MemT_OpersMEANS_OTK: TStringField
      FieldName = 'MEANS_OTK'
      Size = 30
    end
    object MemT_OpersVOLUME_OTK: TStringField
      FieldName = 'VOLUME_OTK'
      Size = 150
    end
  end
  object Seq_Db_Opers: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Tp_Ok_Dlp$sqn$id.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 120
    Top = 16
  end
  object Data_Opers: TDataSource
    DataSet = MemT_Opers
    Left = 120
    Top = 80
  end
  object Db_Per_Details: TOracleDataSet
    SQL.Strings = (
      'select t.*,'
      '       t.User_Id_Corr User_Edit, '
      '       t.rowid '
      'from Ogt.V_TP_OK_PER_DET_DLP t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Dok_In = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id Root_Row, '
      '                                                (Case '
      
        '          When a.Id = CONNECT_BY_ROOT a.Id Then Level||'#39'('#39'||a.Id' +
        '||'#39')'#39
      '          Else CONNECT_BY_ROOT a.Id||'#39'/'#39'||Level||'#39'('#39'||a.Id||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_TP_OK_PER_' +
        'DET_DLP_VERS a '
      
        '                                         Left  Join Ogt.V_Spr_Tp' +
        '_Doc_Actual Info'
      #9#9#9#9#9' On    a.Dok_In = Info.Id'
      '                                         Where  (a.Dok_In = :Id'
      
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Dok_In <> ' +
        ':Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.Id ' +
        '= a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                           On Substr(c.Actual,Instr(c.Actual, '#39'(' +
        #39')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(' +
        'to_Char(t.Id))'
      'Where ((Case'
      '           when t.Dok_In = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)'
      '')
    Optimize = False
    Variables.Data = {
      0400000003000000060000003A00490044000500000000000000000000001000
      00003A00490044005F0056004500520053000500000000000000000000001C00
      00003A004C0049004E004B00450044005F0044004F0043005F00490044000500
      00000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0500000014000000040000004900440001000000000014000000490044005F00
      52004F0057005F005000450052000100000000000C0000004400450054005F00
      490044000100000000000E0000004400450054005F004E0055004D0001000000
      0000100000004400450054005F004E0041004D0045000100000000000E000000
      4E004F004D005F004400450054000100000000000C00000044004F004B005F00
      49004E000100000000000E00000044004F004B005F004F005500540001000000
      00000E000000440041005400410049005A004D000100000000000C0000005200
      41005A00520041004200010000000000060000004B004F004C00010000000000
      16000000520041005A005200410042005F004E0041004D004500010000000000
      1A00000055005300450052005F00490044005F0049004E005300520054000100
      000000001400000044004100540045005F0049004E0053005200540001000000
      00001800000055005300450052005F00490044005F0043004F00520052000100
      000000000E000000520057005F0056004500520053000100000000001C000000
      520057005F00490044005F004F004C0044005F00560045005200530001000000
      00001C00000044004F0043005F00540050005F0056004500520053005F004900
      440001000000000012000000520057005F005300540041005400550053000100
      000000001200000055005300450052005F004500440049005400010000000000}
    UniqueFields = 'ID'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_TP_OK_PER_DET_DLP'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 32
    Top = 496
    object Db_Per_DetailsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Per_DetailsID_ROW_PER: TFloatField
      FieldName = 'ID_ROW_PER'
      Required = True
    end
    object Db_Per_DetailsDOK_IN: TFloatField
      FieldName = 'DOK_IN'
      Required = True
    end
    object Db_Per_DetailsDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object Db_Per_DetailsDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_Per_DetailsDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_Per_DetailsNOM_DET: TIntegerField
      FieldName = 'NOM_DET'
    end
    object Db_Per_DetailsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object Db_Per_DetailsKOL: TFloatField
      FieldName = 'KOL'
    end
    object Db_Per_DetailsDOK_OUT: TFloatField
      FieldName = 'DOK_OUT'
    end
    object Db_Per_DetailsUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object Db_Per_DetailsDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object Db_Per_DetailsUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object Db_Per_DetailsDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
      Required = True
    end
    object Db_Per_DetailsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Per_DetailsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Per_DetailsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Per_DetailsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Per_DetailsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Per_DetailsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Per_Details: TDataSetDriverEh
    ProviderDataSet = Db_Per_Details
    Left = 32
    Top = 448
  end
  object MemT_Per_Details: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_ROW_PER'
    FetchAllOnOpen = True
    MasterFields = 'ID'
    MasterSource = Data_Oper_Per
    Params = <>
    DataDriver = Driver_Per_Details
    SortOrder = 'Nom_Det'
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Per_DetailsAfterEdit
    BeforeDelete = MemTableEhBeforeDelete
    OnNewRecord = MemT_Per_ItemsNewRecord
    Left = 32
    Top = 400
    object MemT_Per_DetailsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Per_DetailsID_ROW_PER: TFloatField
      FieldName = 'ID_ROW_PER'
      Required = True
    end
    object MemT_Per_DetailsDOK_IN: TFloatField
      FieldName = 'DOK_IN'
      Required = True
    end
    object MemT_Per_DetailsDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object MemT_Per_DetailsDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object MemT_Per_DetailsDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object MemT_Per_DetailsNOM_DET: TIntegerField
      FieldName = 'NOM_DET'
    end
    object MemT_Per_DetailsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object MemT_Per_DetailsKOL: TFloatField
      FieldName = 'KOL'
    end
    object MemT_Per_DetailsDOK_OUT: TFloatField
      FieldName = 'DOK_OUT'
    end
    object MemT_Per_DetailsUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object MemT_Per_DetailsDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object MemT_Per_DetailsUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object MemT_Per_DetailsDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
      Required = True
    end
    object MemT_Per_DetailsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object MemT_Per_DetailsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Per_DetailsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Per_DetailsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Per_DetailsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Per_DetailsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Data_Per_Details: TDataSource
    DataSet = MemT_Per_Details
    Left = 32
    Top = 352
  end
  object Seq_Db_Per_Details: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Tp_Ok_Per_Det_Dlp$sqn$id.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 32
    Top = 304
  end
  object Seq_Db_Oper_Per: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Tp_Ok_Per_Dlp$sqn$id.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 464
    Top = 304
  end
  object Data_Oper_Per: TDataSource
    DataSet = MemT_Oper_Per
    Left = 464
    Top = 352
  end
  object MemT_Oper_Per: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_ROW_OPER'
    FetchAllOnOpen = True
    MasterFields = 'ID_ROW_OPER'
    MasterSource = Data_Opers
    Params = <>
    DataDriver = Driver_Oper_Per
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Oper_PerAfterEdit
    AfterPost = MemT_Oper_PerAfterPost
    BeforeDelete = MemTableEhBeforeDelete
    AfterDelete = MemT_Oper_PerAfterDelete
    AfterScroll = MemT_Oper_PerAfterScroll
    OnNewRecord = MemT_Oper_PerNewRecord
    Left = 464
    Top = 400
    object MemT_Oper_PerID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Oper_PerID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
      Required = True
    end
    object MemT_Oper_PerDOK_IN: TFloatField
      FieldName = 'DOK_IN'
      Required = True
    end
    object MemT_Oper_PerNOM_PER: TIntegerField
      FieldName = 'NOM_PER'
      Required = True
    end
    object MemT_Oper_PerPER: TStringField
      FieldName = 'PER'
      Required = True
      Size = 2000
    end
    object MemT_Oper_PerRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object MemT_Oper_PerPRIM: TStringField
      FieldName = 'PRIM'
      Size = 1000
    end
    object MemT_Oper_PerTT_PER: TStringField
      FieldName = 'TT_PER'
      Size = 500
    end
    object MemT_Oper_PerPER_TIME_PZ: TFloatField
      FieldName = 'PER_TIME_PZ'
    end
    object MemT_Oper_PerGAS: TStringField
      FieldName = 'GAS'
      Size = 100
    end
    object MemT_Oper_PerSPEED: TStringField
      FieldName = 'SPEED'
      Size = 30
    end
    object MemT_Oper_PerT_GAS: TStringField
      FieldName = 'T_GAS'
      Size = 100
    end
    object MemT_Oper_PerRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object MemT_Oper_PerTIME: TFloatField
      FieldName = 'TIME'
    end
    object MemT_Oper_PerHARDNESS: TStringField
      FieldName = 'HARDNESS'
      Size = 100
    end
    object MemT_Oper_PerUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object MemT_Oper_PerDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object MemT_Oper_PerUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object MemT_Oper_PerDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
    end
    object MemT_Oper_PerDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Oper_PerRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Oper_PerRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Oper_PerID_RW_VERS: TIntegerField
      FieldName = 'ID_RW_VERS'
      Required = True
    end
    object MemT_Oper_PerRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Oper_PerUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
    object MemT_Oper_PerUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object MemT_Oper_PerUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object MemT_Oper_PerUSER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_NAME'
      Size = 26
    end
  end
  object Driver_Oper_Per: TDataSetDriverEh
    KeyFields = 'ID; ID_RW_VERS'
    ProviderDataSet = Db_Oper_Per
    Left = 464
    Top = 448
  end
  object Db_Oper_Per: TOracleDataSet
    SQL.Strings = (
      'select t.*, '
      '       t.User_Id_Corr User_Edit,'
      '       u.Emp_Fio User_Name,'
      '       t.rowid '
      'from Ogt.V_TP_OK_PER_DLP t'
      'Left  Join Stp.V_Users u'
      'On    u.Id_User = t.User_Id_Corr'
      '      And u.Id_User_Add = t.User_Add_Change'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Dok_In = Info.Id'
      'Join  (Select Max(a.Dok_In||a.Doc_Tp_Vers_Id) Actual, '
      '                                          a.Id'
      #9#9#9#9'From   ogt.v_Tp_Ok_Per_Dlp_Vers a'
      #9#9#9#9'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      #9#9#9#9#9'    On    a.Dok_In = Info.Id'
      #9#9#9#9'Where  (a.Dok_In = :Id'
      
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
      #9#9#9#9#9#9#9#9'Or( (Info.Main_Doc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      '                 And a.Dok_In <> :Id '
      '                     And a.Doc_Tp_Vers_Id In ( Select  a.Id_Vers'
      #9#9#9#9#9'       From    ogt.v_Spr_Tp_Doc a '
      #9#9#9#9#9'       Where   a.Id = Info.Id'
      #9#9#9#9#9'       Connect By Prior a.Parent_Doc_Id = a.Doc_Header_Id'
      #9#9#9#9#9'       Start   With a.Id = Info.Id'
      #9#9#9#9#9#9'       And a.Id_Vers = Info.Id_Vers ))'
      #9#9#9#9'   Group By a.Id) v'
      'On  t.Id = v.Id'
      '    And t.Dok_In||t.Doc_Tp_Vers_Id = v.Actual'
      'Where ((Case'
      '           when t.Dok_In = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)'
      'Order by Nom_Per')
    Optimize = False
    Variables.Data = {
      0400000003000000060000003A00490044000500000000000000000000001000
      00003A00490044005F0056004500520053000500000000000000000000001C00
      00003A004C0049004E004B00450044005F0044004F0043005F00490044000500
      00000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000001C00000004000000490044000100000000000E0000004E004F004D00
      5F00500045005200010000000000060000005000450052000100000000000C00
      000044004F004B005F0049004E000100000000000E0000004400410054004100
      49005A004D000100000000000C000000520041005A0052004100420001000000
      0000080000005000520049004D000100000000000C000000540054005F005000
      45005200010000000000060000004700410053000100000000000A0000005300
      50004500450044000100000000000A00000054005F0047004100530001000000
      000016000000520041005A005200410042005F004E0041004D00450001000000
      000008000000540049004D004500010000000000100000004800410052004400
      4E0045005300530001000000000016000000490044005F0052004F0057005F00
      4F005000450052000100000000001A00000055005300450052005F0049004400
      5F0049004E005300520054000100000000001400000044004100540045005F00
      49004E005300520054000100000000001800000055005300450052005F004900
      44005F0043004F0052005200010000000000160000005000450052005F005400
      49004D0045005F0050005A000100000000001C00000044004F0043005F005400
      50005F0056004500520053005F00490044000100000000000E00000052005700
      5F0056004500520053000100000000001C000000520057005F00490044005F00
      4F004C0044005F00560045005200530001000000000014000000490044005F00
      520057005F00560045005200530001000000000012000000520057005F005300
      540041005400550053000100000000001200000055005300450052005F004500
      4400490054000100000000001E00000055005300450052005F00410044004400
      5F0049004E0053004500520054000100000000001E0000005500530045005200
      5F004100440044005F004300480041004E004700450001000000000012000000
      55005300450052005F004E0041004D004500010000000000}
    UniqueFields = 'ID; ID_RW_VERS'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_Tp_Ok_Per_Dlp'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 464
    Top = 496
    object Db_Oper_PerID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Oper_PerID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
      Required = True
    end
    object Db_Oper_PerDOK_IN: TFloatField
      FieldName = 'DOK_IN'
      Required = True
    end
    object Db_Oper_PerNOM_PER: TIntegerField
      FieldName = 'NOM_PER'
      Required = True
    end
    object Db_Oper_PerPER: TStringField
      FieldName = 'PER'
      Required = True
      Size = 2000
    end
    object Db_Oper_PerRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object Db_Oper_PerPRIM: TStringField
      FieldName = 'PRIM'
      Size = 1000
    end
    object Db_Oper_PerTT_PER: TStringField
      FieldName = 'TT_PER'
      Size = 500
    end
    object Db_Oper_PerPER_TIME_PZ: TFloatField
      FieldName = 'PER_TIME_PZ'
    end
    object Db_Oper_PerGAS: TStringField
      FieldName = 'GAS'
      Size = 100
    end
    object Db_Oper_PerSPEED: TStringField
      FieldName = 'SPEED'
      Size = 30
    end
    object Db_Oper_PerT_GAS: TStringField
      FieldName = 'T_GAS'
      Size = 100
    end
    object Db_Oper_PerRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Oper_PerTIME: TFloatField
      FieldName = 'TIME'
    end
    object Db_Oper_PerHARDNESS: TStringField
      FieldName = 'HARDNESS'
      Size = 100
    end
    object Db_Oper_PerUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object Db_Oper_PerDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object Db_Oper_PerUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object Db_Oper_PerDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
    end
    object Db_Oper_PerDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Oper_PerRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Oper_PerRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Oper_PerID_RW_VERS: TIntegerField
      FieldName = 'ID_RW_VERS'
      Required = True
    end
    object Db_Oper_PerRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Oper_PerUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
    object Db_Oper_PerUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object Db_Oper_PerUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object Db_Oper_PerUSER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_NAME'
      Size = 26
    end
  end
  object Seq_Db_Per_Materials: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Tp_Ok_Per_Mat_Dlp$sqn$id.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 136
    Top = 304
  end
  object Data_Per_Materials: TDataSource
    DataSet = MemT_Per_Materials
    Left = 136
    Top = 352
  end
  object MemT_Per_Materials: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_ROW_PER'
    FetchAllOnOpen = True
    MasterFields = 'ID'
    MasterSource = Data_Oper_Per
    Params = <>
    DataDriver = Driver_Per_Materials
    SortOrder = 'Nom_Mat'
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Per_MaterialsAfterEdit
    BeforeDelete = MemTableEhBeforeDelete
    OnNewRecord = MemT_Per_ItemsNewRecord
    Left = 128
    Top = 400
    object MemT_Per_MaterialsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Per_MaterialsID_ROW_PER: TFloatField
      FieldName = 'ID_ROW_PER'
      Required = True
    end
    object MemT_Per_MaterialsDOK_IN: TFloatField
      FieldName = 'DOK_IN'
      Required = True
    end
    object MemT_Per_MaterialsDOK_OUT: TFloatField
      FieldName = 'DOK_OUT'
    end
    object MemT_Per_MaterialsMAT_ID: TFloatField
      FieldName = 'MAT_ID'
      Required = True
    end
    object MemT_Per_MaterialsNOM_MAT: TIntegerField
      FieldName = 'NOM_MAT'
    end
    object MemT_Per_MaterialsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object MemT_Per_MaterialsNORMA_MIN: TFloatField
      FieldName = 'NORMA_MIN'
    end
    object MemT_Per_MaterialsNORMA_MAX: TFloatField
      FieldName = 'NORMA_MAX'
    end
    object MemT_Per_MaterialsED_ID: TFloatField
      FieldName = 'ED_ID'
    end
    object MemT_Per_MaterialsMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object MemT_Per_MaterialsED_NAME: TStringField
      FieldName = 'ED_NAME'
      Required = True
      Size = 3
    end
    object MemT_Per_MaterialsED_F_NAME: TStringField
      FieldName = 'ED_F_NAME'
      Size = 25
    end
    object MemT_Per_MaterialsMAT_VISCOS: TStringField
      FieldName = 'MAT_VISCOS'
      Size = 100
    end
    object MemT_Per_MaterialsUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object MemT_Per_MaterialsDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object MemT_Per_MaterialsUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object MemT_Per_MaterialsDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
      Required = True
    end
    object MemT_Per_MaterialsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object MemT_Per_MaterialsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Per_MaterialsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Per_MaterialsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Per_MaterialsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Per_MaterialsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Per_Materials: TDataSetDriverEh
    ProviderDataSet = Db_Per_Materials
    Left = 128
    Top = 448
  end
  object Db_Per_Materials: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.User_Id_Corr User_Edit, '
      '       t.rowid '
      'From   Ogt.V_TP_OK_PER_MAT_DLP t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Dok_In = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id Root_Row, '
      '                                                (Case '
      
        '          When a.Id = CONNECT_BY_ROOT a.Id Then Level||'#39'('#39'||a.Id' +
        '||'#39')'#39
      '          Else CONNECT_BY_ROOT a.Id||'#39'/'#39'||Level||'#39'('#39'||a.Id||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_TP_OK_PER_' +
        'MAT_DLP_VERS a '
      
        '                                         Left  Join Ogt.V_Spr_Tp' +
        '_Doc_Actual Info'
      #9#9#9#9#9' On    a.Dok_In = Info.Id'
      '                                         Where  (a.Dok_In = :Id'
      
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Dok_In <> ' +
        ':Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.Id ' +
        '= a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                            On Substr(c.Actual,Instr(c.Actual, '#39 +
        '('#39')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim' +
        '(to_Char(t.Id))'
      'Where ((Case'
      '           when t.Dok_In = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)')
    Optimize = False
    Variables.Data = {
      0400000003000000060000003A00490044000500000000000000000000001000
      00003A00490044005F0056004500520053000500000000000000000000001C00
      00003A004C0049004E004B00450044005F0044004F0043005F00490044000500
      00000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0500000018000000040000004900440001000000000014000000490044005F00
      52004F0057005F005000450052000100000000000C00000044004F004B005F00
      49004E000100000000000E00000044004F004B005F004F005500540001000000
      00000E000000440041005400410049005A004D000100000000000C0000005200
      41005A005200410042000100000000000E0000004E004F004D005F004D004100
      54000100000000000C0000004D00410054005F00490044000100000000001200
      00004E004F0052004D0041005F004D0049004E00010000000000120000004E00
      4F0052004D0041005F004D00410058000100000000000A000000450044005F00
      49004400010000000000100000004D00410054005F004E0041004D0045000100
      000000000E000000450044005F004E0041004D00450001000000000016000000
      520041005A005200410042005F004E0041004D00450001000000000014000000
      4D00410054005F0056004900530043004F0053000100000000001A0000005500
      5300450052005F00490044005F0049004E005300520054000100000000001400
      000044004100540045005F0049004E0053005200540001000000000018000000
      55005300450052005F00490044005F0043004F00520052000100000000001200
      0000450044005F0046005F004E0041004D0045000100000000001C0000004400
      4F0043005F00540050005F0056004500520053005F0049004400010000000000
      0E000000520057005F0056004500520053000100000000001C00000052005700
      5F00490044005F004F004C0044005F0056004500520053000100000000001200
      0000520057005F00530054004100540055005300010000000000120000005500
      5300450052005F004500440049005400010000000000}
    UniqueFields = 'ID'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_Tp_Ok_Per_Mat_Dlp'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 128
    Top = 496
    object Db_Per_MaterialsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Per_MaterialsID_ROW_PER: TFloatField
      FieldName = 'ID_ROW_PER'
      Required = True
    end
    object Db_Per_MaterialsDOK_IN: TFloatField
      FieldName = 'DOK_IN'
      Required = True
    end
    object Db_Per_MaterialsDOK_OUT: TFloatField
      FieldName = 'DOK_OUT'
    end
    object Db_Per_MaterialsMAT_ID: TFloatField
      FieldName = 'MAT_ID'
      Required = True
    end
    object Db_Per_MaterialsNOM_MAT: TIntegerField
      FieldName = 'NOM_MAT'
    end
    object Db_Per_MaterialsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object Db_Per_MaterialsNORMA_MIN: TFloatField
      FieldName = 'NORMA_MIN'
    end
    object Db_Per_MaterialsNORMA_MAX: TFloatField
      FieldName = 'NORMA_MAX'
    end
    object Db_Per_MaterialsED_ID: TFloatField
      FieldName = 'ED_ID'
    end
    object Db_Per_MaterialsMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object Db_Per_MaterialsED_NAME: TStringField
      FieldName = 'ED_NAME'
      Required = True
      Size = 3
    end
    object Db_Per_MaterialsED_F_NAME: TStringField
      FieldName = 'ED_F_NAME'
      Size = 25
    end
    object Db_Per_MaterialsMAT_VISCOS: TStringField
      FieldName = 'MAT_VISCOS'
      Size = 100
    end
    object Db_Per_MaterialsUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object Db_Per_MaterialsDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object Db_Per_MaterialsUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object Db_Per_MaterialsDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
      Required = True
    end
    object Db_Per_MaterialsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Per_MaterialsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Per_MaterialsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Per_MaterialsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Per_MaterialsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Per_MaterialsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Seq_Db_Per_Instruments: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Tp_Ok_Per_Ins_Dlp$sqn$id.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 240
    Top = 304
  end
  object Data_Per_Instruments: TDataSource
    DataSet = MemT_Per_Instruments
    Left = 240
    Top = 352
  end
  object MemT_Per_Instruments: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_ROW_PER'
    FetchAllOnOpen = True
    MasterFields = 'ID'
    MasterSource = Data_Oper_Per
    Params = <>
    DataDriver = Driver_Per_Instruments
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Per_InstrumentsAfterEdit
    BeforeDelete = MemTableEhBeforeDelete
    OnNewRecord = MemT_Per_ItemsNewRecord
    Left = 240
    Top = 400
    object MemT_Per_InstrumentsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Per_InstrumentsID_ROW_PER: TFloatField
      FieldName = 'ID_ROW_PER'
      Required = True
    end
    object MemT_Per_InstrumentsDOK_IN: TFloatField
      FieldName = 'DOK_IN'
      Required = True
    end
    object MemT_Per_InstrumentsINSTR_ID: TFloatField
      FieldName = 'INSTR_ID'
    end
    object MemT_Per_InstrumentsINSTR_NAME: TStringField
      FieldName = 'INSTR_NAME'
      Size = 100
    end
    object MemT_Per_InstrumentsNOM_INSTR: TIntegerField
      FieldName = 'NOM_INSTR'
    end
    object MemT_Per_InstrumentsDOK_OUT: TFloatField
      FieldName = 'DOK_OUT'
    end
    object MemT_Per_InstrumentsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object MemT_Per_InstrumentsUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object MemT_Per_InstrumentsDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object MemT_Per_InstrumentsUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object MemT_Per_InstrumentsDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
      Required = True
    end
    object MemT_Per_InstrumentsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object MemT_Per_InstrumentsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Per_InstrumentsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Per_InstrumentsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Per_InstrumentsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Per_InstrumentsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Per_Instruments: TDataSetDriverEh
    ProviderDataSet = Db_Per_Instruments
    Left = 240
    Top = 448
  end
  object Db_Per_Instruments: TOracleDataSet
    SQL.Strings = (
      'select t.*, '
      '       t.User_Id_Corr User_Edit,'
      '       t.rowid '
      'from '
      'Ogt.V_TP_OK_PER_INS_DLP t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Dok_In = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id Root_Row, '
      '                                                (Case '
      
        '          When a.Id = CONNECT_BY_ROOT a.Id Then Level||'#39'('#39'||a.Id' +
        '||'#39')'#39
      '          Else CONNECT_BY_ROOT a.Id||'#39'/'#39'||Level||'#39'('#39'||a.Id||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_TP_OK_PER_' +
        'INS_DLP_VERS a '
      
        '                                         Left  Join Ogt.V_Spr_Tp' +
        '_Doc_Actual Info'
      #9#9#9#9#9' On    a.Dok_In = Info.Id'
      '                                         Where  (a.Dok_In = :Id'
      
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Dok_In <> ' +
        ':Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.Id ' +
        '= a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                          On Substr(c.Actual,Instr(c.Actual, '#39'('#39 +
        ')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(t' +
        'o_Char(t.Id))'
      'Where ((Case'
      '           when t.Dok_In = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)'
      ''
      'Order by Nom_Instr')
    Optimize = False
    Variables.Data = {
      0400000003000000060000003A00490044000500000000000000000000001000
      00003A00490044005F0056004500520053000500000000000000000000001C00
      00003A004C0049004E004B00450044005F0044004F0043005F00490044000500
      00000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0500000012000000040000004900440001000000000014000000490044005F00
      52004F0057005F005000450052000100000000000C00000044004F004B005F00
      49004E000100000000000E00000044004F004B005F004F005500540001000000
      00000E000000440041005400410049005A004D000100000000000C0000005200
      41005A0052004100420001000000000016000000520041005A00520041004200
      5F004E0041004D0045000100000000001000000049004E005300540052005F00
      49004400010000000000120000004E004F004D005F0049004E00530054005200
      0100000000001400000049004E005300540052005F004E0041004D0045000100
      000000001A00000055005300450052005F00490044005F0049004E0053005200
      54000100000000001400000044004100540045005F0049004E00530052005400
      0100000000001800000055005300450052005F00490044005F0043004F005200
      52000100000000001C00000044004F0043005F00540050005F00560045005200
      53005F00490044000100000000000E000000520057005F005600450052005300
      0100000000001C000000520057005F00490044005F004F004C0044005F005600
      45005200530001000000000012000000520057005F0053005400410054005500
      53000100000000001200000055005300450052005F0045004400490054000100
      00000000}
    UniqueFields = 'ID'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.v_Tp_Ok_Per_Ins_Dlp'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 240
    Top = 496
    object Db_Per_InstrumentsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Per_InstrumentsID_ROW_PER: TFloatField
      FieldName = 'ID_ROW_PER'
      Required = True
    end
    object Db_Per_InstrumentsDOK_IN: TFloatField
      FieldName = 'DOK_IN'
      Required = True
    end
    object Db_Per_InstrumentsINSTR_ID: TFloatField
      FieldName = 'INSTR_ID'
    end
    object Db_Per_InstrumentsINSTR_NAME: TStringField
      FieldName = 'INSTR_NAME'
      Size = 100
    end
    object Db_Per_InstrumentsNOM_INSTR: TIntegerField
      FieldName = 'NOM_INSTR'
    end
    object Db_Per_InstrumentsDOK_OUT: TFloatField
      FieldName = 'DOK_OUT'
    end
    object Db_Per_InstrumentsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
      Required = True
    end
    object Db_Per_InstrumentsUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object Db_Per_InstrumentsDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object Db_Per_InstrumentsUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object Db_Per_InstrumentsDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
      Required = True
    end
    object Db_Per_InstrumentsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Per_InstrumentsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Per_InstrumentsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Per_InstrumentsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Per_InstrumentsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Per_InstrumentsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Seq_Db_Per_Osnast: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Tp_Ok_Per_Osn_Dlp$sqn$id.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 360
    Top = 304
  end
  object Data_Per_Osnast: TDataSource
    DataSet = MemT_Per_Osnast
    Left = 360
    Top = 352
  end
  object MemT_Per_Osnast: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_ROW_PER'
    FetchAllOnOpen = True
    MasterFields = 'ID'
    MasterSource = Data_Oper_Per
    Params = <>
    DataDriver = Driver_Per_Osnast
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Per_OsnastAfterEdit
    BeforeDelete = MemTableEhBeforeDelete
    OnNewRecord = MemT_Per_ItemsNewRecord
    Left = 360
    Top = 400
    object MemT_Per_OsnastID: TFloatField
      FieldName = 'ID'
    end
    object MemT_Per_OsnastID_ROW_PER: TFloatField
      FieldName = 'ID_ROW_PER'
    end
    object MemT_Per_OsnastSHOSN_ID: TFloatField
      FieldName = 'SHOSN_ID'
    end
    object MemT_Per_OsnastDOK_IN: TFloatField
      FieldName = 'DOK_IN'
    end
    object MemT_Per_OsnastDOK_OUT: TFloatField
      FieldName = 'DOK_OUT'
    end
    object MemT_Per_OsnastDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
    end
    object MemT_Per_OsnastRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object MemT_Per_OsnastSHOSN_NUM: TStringField
      FieldName = 'SHOSN_NUM'
      Size = 50
    end
    object MemT_Per_OsnastSHOSN_NAME: TStringField
      FieldName = 'SHOSN_NAME'
      Size = 150
    end
    object MemT_Per_OsnastRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 150
    end
    object MemT_Per_OsnastSHOSN_NOM: TFloatField
      FieldName = 'SHOSN_NOM'
    end
    object MemT_Per_OsnastUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object MemT_Per_OsnastDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object MemT_Per_OsnastUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object MemT_Per_OsnastDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Per_OsnastRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Per_OsnastRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Per_OsnastRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Per_OsnastUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Per_Osnast: TDataSetDriverEh
    ProviderDataSet = Db_Per_Osnast
    Left = 360
    Top = 448
  end
  object Db_Per_Osnast: TOracleDataSet
    SQL.Strings = (
      'select t.*, '
      '       t.User_Id_Corr User_Edit,'
      '       t.rowid '
      'From   Ogt.V_TP_OK_PER_OSN_DLP t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Dok_In = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id Root_Row, '
      '                                                (Case '
      
        '          When a.Id = CONNECT_BY_ROOT a.Id Then Level||'#39'('#39'||a.Id' +
        '||'#39')'#39
      '          Else CONNECT_BY_ROOT a.Id||'#39'/'#39'||Level||'#39'('#39'||a.Id||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_TP_OK_PER_' +
        'OSN_DLP_VERS a '
      
        '                                         Left  Join Ogt.V_Spr_Tp' +
        '_Doc_Actual Info'
      #9#9#9#9#9' On    a.Dok_In = Info.Id'
      '                                         Where  (a.Dok_In = :Id'
      
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Dok_In <> ' +
        ':Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.Id ' +
        '= a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                           On Substr(c.Actual,Instr(c.Actual, '#39'(' +
        #39')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(' +
        'to_Char(t.Id))'
      'Where ((Case'
      '           when t.Dok_In = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)')
    Optimize = False
    Variables.Data = {
      0400000003000000060000003A00490044000500000000000000000000001000
      00003A00490044005F0056004500520053000500000000000000000000001C00
      00003A004C0049004E004B00450044005F0044004F0043005F00490044000500
      00000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0500000013000000040000004900440001000000000014000000490044005F00
      52004F0057005F005000450052000100000000000C00000044004F004B005F00
      49004E000100000000000E00000044004F004B005F004F005500540001000000
      00000E000000440041005400410049005A004D000100000000000C0000005200
      41005A0052004100420001000000000016000000520041005A00520041004200
      5F004E0041004D00450001000000000010000000530048004F0053004E005F00
      4900440001000000000012000000530048004F0053004E005F004E0055004D00
      01000000000014000000530048004F0053004E005F004E0041004D0045000100
      0000000012000000530048004F0053004E005F004E004F004D00010000000000
      1A00000055005300450052005F00490044005F0049004E005300520054000100
      000000001400000044004100540045005F0049004E0053005200540001000000
      00001800000055005300450052005F00490044005F0043004F00520052000100
      000000001C00000044004F0043005F00540050005F0056004500520053005F00
      490044000100000000000E000000520057005F00560045005200530001000000
      00001C000000520057005F00490044005F004F004C0044005F00560045005200
      530001000000000012000000520057005F005300540041005400550053000100
      000000001200000055005300450052005F004500440049005400010000000000}
    UniqueFields = 'Id'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_Tp_Ok_Per_Osn_Dlp'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 360
    Top = 496
    object Db_Per_OsnastID: TFloatField
      FieldName = 'ID'
    end
    object Db_Per_OsnastID_ROW_PER: TFloatField
      FieldName = 'ID_ROW_PER'
    end
    object Db_Per_OsnastSHOSN_ID: TFloatField
      FieldName = 'SHOSN_ID'
    end
    object Db_Per_OsnastDOK_IN: TFloatField
      FieldName = 'DOK_IN'
    end
    object Db_Per_OsnastDOK_OUT: TFloatField
      FieldName = 'DOK_OUT'
    end
    object Db_Per_OsnastDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
    end
    object Db_Per_OsnastRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object Db_Per_OsnastSHOSN_NUM: TStringField
      FieldName = 'SHOSN_NUM'
      Size = 50
    end
    object Db_Per_OsnastSHOSN_NAME: TStringField
      FieldName = 'SHOSN_NAME'
      Size = 100
    end
    object Db_Per_OsnastRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Per_OsnastSHOSN_NOM: TFloatField
      FieldName = 'SHOSN_NOM'
    end
    object Db_Per_OsnastUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object Db_Per_OsnastDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object Db_Per_OsnastUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object Db_Per_OsnastDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Per_OsnastRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Per_OsnastRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Per_OsnastRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Per_OsnastUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Db_Oper_Params: TOracleDataSet
    SQL.Strings = (
      'select t.*, '
      '       Info.Main_Doc_Id,'
      '       t.User_Change User_Edit,'
      '       t.rowid '
      'from   Ogt.V_TP_OK_OPER_PARAMS t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Doc_Tp_Id = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id_Row_Tp_Op_Prm Root_Row,'
      '       (Case '
      
        '          When a.Id_Row_Tp_Op_Prm = CONNECT_BY_ROOT a.Id_Row_Tp_' +
        'Op_Prm Then Level||'#39'('#39'||a.Id_Row_Tp_Op_Prm||'#39')'#39
      
        '          Else CONNECT_BY_ROOT a.Id_Row_Tp_Op_Prm||'#39'/'#39'||Level||'#39 +
        '('#39'||a.Id_Row_Tp_Op_Prm||'#39')'#39
      '        End ) Vers '
      
        '                                         From   Ogt.V_TP_OK_OPER' +
        '_PARAMS_VERS a '
      #9#9#9#9'         Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Doc_Tp_Id ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.Id_' +
        'Row_Tp_Op_Prm = a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        ' On Substr(c.Actual,Instr(c.Actual, '#39'('#39')+1, ((Instr(c.Actual, '#39')' +
        #39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(to_Char(t.Id_Row_Tp_Op_Prm' +
        '))'
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
      0400000003000000060000003A00490044000500000000000000000000001000
      00003A00490044005F0056004500520053000500000000000000000000001C00
      00003A004C0049004E004B00450044005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001400000020000000490044005F0052004F0057005F00540050005F00
      4F0050005F00500052004D00010000000000160000004F005000450052005F00
      52004F0057005F00490044000100000000001200000044004F0043005F005400
      50005F0049004400010000000000160000004D00410049004E005F0044004F00
      43005F00490044000100000000001800000050004100520041004D005F005200
      4F0057005F0049004400010000000000140000004E0041004D0045005F005000
      4100520041004D000100000000001400000054005900500045005F0050004100
      520041004D00010000000000140000004E0055004D0045005200490043005F00
      56004C000100000000000E00000054004500580054005F0056004C0001000000
      00001E00000050004100520041004D005F00430048005F0052004F0057005F00
      490044000100000000001600000050004100520041004D005F00560041004C00
      550045000100000000001600000055005300450052005F0049004E0053004500
      520054000100000000001600000044004100540045005F0049004E0053004500
      520054000100000000001600000055005300450052005F004300480041004E00
      470045000100000000001600000044004100540045005F004300480041004E00
      470045000100000000000E000000520057005F00560045005200530001000000
      00001C000000520057005F00490044005F004F004C0044005F00560045005200
      53000100000000001C00000044004F0043005F00540050005F00560045005200
      53005F004900440001000000000012000000520057005F005300540041005400
      550053000100000000001200000055005300450052005F004500440049005400
      010000000000}
    UniqueFields = 'ID_ROW_TP_OP_PRM'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_TP_OK_OPER_PARAMS'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 208
    Top = 224
    object Db_Oper_ParamsID_ROW_TP_OP_PRM: TIntegerField
      FieldName = 'ID_ROW_TP_OP_PRM'
      Required = True
    end
    object Db_Oper_ParamsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Oper_ParamsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Oper_ParamsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Oper_ParamsOPER_ROW_ID: TFloatField
      FieldName = 'OPER_ROW_ID'
      Required = True
    end
    object Db_Oper_ParamsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
    object Db_Oper_ParamsDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object Db_Oper_ParamsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Oper_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object Db_Oper_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object Db_Oper_ParamsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object Db_Oper_ParamsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object Db_Oper_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
    object Db_Oper_ParamsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object Db_Oper_ParamsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Oper_ParamsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Oper_ParamsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Oper_ParamsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Oper_ParamsMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Oper_ParamsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Data_Oper_Params: TDataSource
    DataSet = MemT_Oper_Params
    Left = 209
    Top = 81
  end
  object Driver_Oper_Params: TDataSetDriverEh
    KeyFields = 'ID_ROW_TP_OP_PRM'
    ProviderDataSet = Db_Oper_Params
    Left = 208
    Top = 176
  end
  object MemT_Oper_Params: TMemTableEh
    CachedUpdates = True
    DetailFields = 'OPER_ROW_ID'
    FetchAllOnOpen = True
    MasterFields = 'ID_ROW_OPER'
    MasterSource = Data_Opers
    Params = <>
    DataDriver = Driver_Oper_Params
    SortOrder = 'NAME_PARAM'
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Oper_ParamsAfterEdit
    OnNewRecord = MemT_Oper_ParamsNewRecord
    Left = 209
    Top = 128
    object MemT_Oper_ParamsID_ROW_TP_OP_PRM: TIntegerField
      FieldName = 'ID_ROW_TP_OP_PRM'
    end
    object MemT_Oper_ParamsOPER_ROW_ID: TFloatField
      FieldName = 'OPER_ROW_ID'
      Required = True
    end
    object MemT_Oper_ParamsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
    object MemT_Oper_ParamsDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object MemT_Oper_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object MemT_Oper_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object MemT_Oper_ParamsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object MemT_Oper_ParamsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object MemT_Oper_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
    object MemT_Oper_ParamsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object MemT_Oper_ParamsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Oper_ParamsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Oper_ParamsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Oper_ParamsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Oper_ParamsMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object MemT_Oper_ParamsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Oper_ParamsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Oper_ParamsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Oper_ParamsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Oper_ParamsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Seq_Oper_Params: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Seq_Tp_Ok_Oper_Params_Id.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 208
    Top = 16
  end
  object Seq_Per_Params: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Seq_Tp_Ok_Per_Params_Id.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 560
    Top = 304
  end
  object Data_Per_Params: TDataSource
    DataSet = MemT_Per_Params
    Left = 561
    Top = 353
  end
  object MemT_Per_Params: TMemTableEh
    CachedUpdates = True
    DetailFields = 'PER_ROW_ID'
    FetchAllOnOpen = True
    MasterFields = 'ID'
    MasterSource = Data_Oper_Per
    Params = <>
    DataDriver = Driver_Per_Params
    SortOrder = 'NAME_PARAM'
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Per_ParamsAfterEdit
    OnNewRecord = MemT_Per_ParamsNewRecord
    Left = 561
    Top = 400
    object MemT_Per_ParamsID_ROW_TP_PR_PRM: TIntegerField
      FieldName = 'ID_ROW_TP_PR_PRM'
    end
    object MemT_Per_ParamsPER_ROW_ID: TFloatField
      FieldName = 'PER_ROW_ID'
      Required = True
    end
    object MemT_Per_ParamsDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object MemT_Per_ParamsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
    object MemT_Per_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object MemT_Per_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object MemT_Per_ParamsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object MemT_Per_ParamsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object MemT_Per_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
    object MemT_Per_ParamsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object MemT_Per_ParamsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Per_ParamsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Per_ParamsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Per_ParamsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Per_ParamsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Per_ParamsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Per_ParamsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Per_ParamsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Per_ParamsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Per_Params: TDataSetDriverEh
    KeyFields = 'ID_ROW_TP_PR_PRM'
    ProviderDataSet = Db_Per_Params
    Left = 560
    Top = 448
  end
  object Db_Per_Params: TOracleDataSet
    SQL.Strings = (
      'select t.*, '
      '       t.User_Change User_Edit,'
      '       t.rowid '
      'from   Ogt.V_TP_OK_PER_PARAMS t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Doc_Tp_Id = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id_Row_Tp_Pr_Prm Root_Row, '
      '                                                (Case '
      
        '          When a.Id_Row_Tp_Pr_Prm = CONNECT_BY_ROOT a.Id_Row_Tp_' +
        'Pr_Prm Then Level||'#39'('#39'||a.Id_Row_Tp_Pr_Prm||'#39')'#39
      
        '          Else CONNECT_BY_ROOT a.Id_Row_Tp_Pr_Prm||'#39'/'#39'||Level||'#39 +
        '('#39'||a.Id_Row_Tp_Pr_Prm||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_TP_OK_PER_' +
        'PARAMS_VERS a '
      #9#9#9#9'         Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Doc_Tp_Id ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.Id_' +
        'Row_Tp_Pr_Prm = a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        'On Substr(c.Actual,Instr(c.Actual, '#39'('#39')+1, ((Instr(c.Actual, '#39')'#39 +
        '))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(to_Char(t.Id_Row_Tp_Pr_Prm)' +
        ')'
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
      04000000030000001C0000003A004C0049004E004B00450044005F0044004F00
      43005F00490044000500000005000000313036310000000000060000003A0049
      004400050000000000000000000000100000003A00490044005F005600450052
      005300050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000130000001200000044004F0043005F00540050005F00490044000100
      000000001800000050004100520041004D005F0052004F0057005F0049004400
      010000000000140000004E0041004D0045005F0050004100520041004D000100
      000000001400000054005900500045005F0050004100520041004D0001000000
      0000140000004E0055004D0045005200490043005F0056004C00010000000000
      0E00000054004500580054005F0056004C000100000000001E00000050004100
      520041004D005F00430048005F0052004F0057005F0049004400010000000000
      1600000050004100520041004D005F00560041004C0055004500010000000000
      1600000055005300450052005F0049004E005300450052005400010000000000
      1600000044004100540045005F0049004E005300450052005400010000000000
      1600000055005300450052005F004300480041004E0047004500010000000000
      1600000044004100540045005F004300480041004E0047004500010000000000
      20000000490044005F0052004F0057005F00540050005F00500052005F005000
      52004D00010000000000140000005000450052005F0052004F0057005F004900
      44000100000000001C00000044004F0043005F00540050005F00560045005200
      53005F00490044000100000000000E000000520057005F005600450052005300
      0100000000001C000000520057005F00490044005F004F004C0044005F005600
      45005200530001000000000012000000520057005F0053005400410054005500
      53000100000000001200000055005300450052005F0045004400490054000100
      00000000}
    UniqueFields = 'ID_ROW_TP_PR_PRM'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_TP_OK_PER_PARAMS'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 560
    Top = 496
    object Db_Per_ParamsID_ROW_TP_PR_PRM: TIntegerField
      FieldName = 'ID_ROW_TP_PR_PRM'
      Required = True
    end
    object Db_Per_ParamsPER_ROW_ID: TFloatField
      FieldName = 'PER_ROW_ID'
      Required = True
    end
    object Db_Per_ParamsDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object Db_Per_ParamsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
    object Db_Per_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object Db_Per_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object Db_Per_ParamsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object Db_Per_ParamsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object Db_Per_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
    object Db_Per_ParamsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object Db_Per_ParamsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Per_ParamsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Per_ParamsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Per_ParamsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Per_ParamsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Per_ParamsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Per_ParamsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Per_ParamsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Per_ParamsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Seq_Oper_Time: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Seq_Tp_Ok_Oper_Time_Id_Rw.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 304
    Top = 16
  end
  object Data_Oper_Time: TDataSource
    DataSet = MemT_Oper_Time
    Left = 305
    Top = 81
  end
  object MemT_Oper_Time: TMemTableEh
    CachedUpdates = True
    DetailFields = 'OPER_RW_ID'
    FetchAllOnOpen = True
    MasterFields = 'ID_ROW_OPER'
    MasterSource = Data_Opers
    Params = <>
    DataDriver = Driver_Oper_Time
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemT_Oper_TimeBeforeEdit
    AfterEdit = MemT_Oper_TimeAfterEdit
    BeforeDelete = MemTableEhBeforeDelete
    OnNewRecord = MemT_Oper_TimeNewRecord
    Left = 305
    Top = 128
    object MemT_Oper_TimeID_RW_OP_TIME: TFloatField
      FieldName = 'ID_RW_OP_TIME'
      Required = True
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
    object MemT_Oper_TimeRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Oper_TimeRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Oper_TimeDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Oper_TimeID_PART_TP: TFloatField
      FieldName = 'ID_PART_TP'
    end
    object MemT_Oper_TimeRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
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
    Left = 304
    Top = 176
  end
  object Db_Oper_Time: TOracleDataSet
    SQL.Strings = (
      'select t.*, '
      '       Info.Main_Doc_Id,'
      '       t.User_Change User_Edit,'
      '       Oper.Id_Part_Tp,'
      '       t.rowid'
      'from   Ogt.V_Tp_Ok_Oper_Time t'
      'Left   Join Ogt.V_Tp_Ok_Dlp Oper'
      'On     Oper.Id_Row_Oper = t.Oper_Rw_Id'
      
        '       And Oper.Id_Rw_Vers = Ogt.pkg_tp_doc.f_get_oper_lastidver' +
        's(in_id_row_oper => t.Oper_Rw_Id)'
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Doc_Tp_Id ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
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
      0400000003000000060000003A00490044000500000000000000000000001000
      00003A00490044005F0056004500520053000500000000000000000000001C00
      00003A004C0049004E004B00450044005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001D0000001200000044004F0043005F00540050005F00490044000100
      00000000160000004D00410049004E005F0044004F0043005F00490044000100
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
      56004500520053005F004900440001000000000014000000490044005F005000
      4100520054005F005400500001000000000012000000520057005F0053005400
      41005400550053000100000000001200000055005300450052005F0045004400
      4900540001000000000012000000430041004C0043005F00460052004F004D00
      010000000000140000004F0054004800450052005F00540049004D0045000100
      00000000}
    UniqueFields = 'ID_RW_OP_TIME'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_Tp_Ok_Oper_Time'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 304
    Top = 224
    object Db_Oper_TimeID_RW_OP_TIME: TFloatField
      FieldName = 'ID_RW_OP_TIME'
      Required = True
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
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Oper_TimeRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Oper_TimeRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Oper_TimeDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Oper_TimeID_PART_TP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ID_PART_TP'
    end
    object Db_Oper_TimeRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
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
  object Seq_Oper_Time_Works: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Seq_Tp_T_Op_Time_Wrks.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 416
    Top = 15
  end
  object Data_Oper_Time_Works: TDataSource
    DataSet = MemT_Oper_Time_Works
    Left = 416
    Top = 79
  end
  object MemT_Oper_Time_Works: TMemTableEh
    CachedUpdates = True
    DetailFields = 'OPER_RW_ID'
    FetchAllOnOpen = True
    MasterFields = 'ID_ROW_OPER'
    MasterSource = Data_Opers
    Params = <>
    DataDriver = Driver_Oper_Time_Works
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemT_Oper_Time_WorksBeforeEdit
    AfterEdit = MemT_Oper_Time_WorksAfterEdit
    BeforeDelete = MemTableEhBeforeDelete
    OnNewRecord = MemT_Oper_Time_WorksNewRecord
    Left = 416
    Top = 127
    object MemT_Oper_Time_WorksID_RW_OP_WRK_T: TFloatField
      FieldName = 'ID_RW_OP_WRK_T'
      Required = True
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
    object MemT_Oper_Time_WorksRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Oper_Time_WorksRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Oper_Time_WorksDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
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
  object Driver_Oper_Time_Works: TDataSetDriverEh
    KeyFields = 'ID_RW_OP_WRK_T'
    ProviderDataSet = Db_Oper_Time_Works
    Left = 416
    Top = 175
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Doc_Tp_Id ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
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
      0400000003000000060000003A00490044000500000000000000000000001000
      00003A00490044005F0056004500520053000500000000000000000000001C00
      00003A004C0049004E004B00450044005F0044004F0043005F00490044000500
      00000000000000000000}
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
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_Tp_Ok_Oper_Time_Works'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 416
    Top = 224
    object Db_Oper_Time_WorksID_RW_OP_WRK_T: TFloatField
      FieldName = 'ID_RW_OP_WRK_T'
      Required = True
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
    object Db_Oper_Time_WorksRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Oper_Time_WorksRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Oper_Time_WorksDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
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
  object Db_Per_Params_List: TOracleDataSet
    SQL.Strings = (
      'Select l.Id_Row_o_Pr_Lnk,'
      '       l.Id_Oper,'
      '       l.Id_Dep,'
      '       l.Id_Dep_Group,'
      '       l.Param_Row_Id,'
      '       l.Name_Param,'
      '       l.Type_Param'
      'From   Ogt.v_Tp_Op_Param_Link L'
      'Where  l.Type_Link = '#39'per'#39
      '       And l.Id_Oper = :v_Oper_Id'
      
        '       And ( l.Id_Dep_Main = Stp.Pkg_User.F_Get_User_Department_' +
        'Id( In_Id_User => User )'
      '             Or l.Id_Dep_Main In ( Select t.Dep_Id'
      '                                   From   Stp.v_Dep_Mmbrs t'
      '                                   Where  t.User_Id = User )'
      
        '             Or ( Stp.Pkg_User.F_Check_Program_Param( In_Object_' +
        'Id => 8784,'
      
        '                                                                ' +
        ' In_Parametr => '#39'ADMIN'#39','
      
        '                                                                ' +
        ' In_Value => '#39'1'#39' ) = 1 ) )'
      'Order  By L.Name_Param')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0056005F004F005000450052005F0049004400
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000080000001E000000490044005F0052004F0057005F004F005F005000
      52005F004C004E004B000100000000000E000000490044005F004F0050004500
      52000100000000000C000000490044005F004400450050000100000000001800
      0000490044005F004400450050005F00470052004F0055005000010000000000
      10000000490044005F004400450050005F003100010000000000140000004E00
      41004D0045005F0050004100520041004D000100000000001400000054005900
      500045005F0050004100520041004D0001000000000018000000500041005200
      41004D005F0052004F0057005F0049004400010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 1026
    Top = 168
    object IntegerField1: TIntegerField
      FieldName = 'ID_ROW_O_PR_LNK'
      Required = True
    end
    object FloatField1: TFloatField
      FieldName = 'ID_OPER'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'ID_DEP'
    end
    object FloatField3: TFloatField
      FieldName = 'ID_DEP_GROUP'
    end
    object StringField1: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object StringField2: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
  end
  object Db_Oper_Params_List: TOracleDataSet
    SQL.Strings = (
      'Select l.Id_Row_o_Pr_Lnk,'
      '       l.Id_Oper,'
      '       l.Id_Dep,'
      '       l.Id_Dep_Group,'
      '       l.Id_Dep,'
      '       l.Param_Row_Id,'
      '       l.Name_Param,'
      '       l.Type_Param'
      'From   Ogt.v_Tp_Op_Param_Link L'
      'Where  l.Type_Link = '#39'oper'#39
      '       And l.Id_Oper = :v_Oper_Id'
      
        '       And ( l.Id_Dep_Main = Stp.Pkg_User.F_Get_User_Department_' +
        'Id( In_Id_User => User )'
      '             Or l.Id_Dep_Main In ( Select t.Dep_Id'
      '                                   From   Stp.v_Dep_Mmbrs t'
      '                                   Where  t.User_Id = User )'
      
        '             Or ( Stp.Pkg_User.F_Check_Program_Param( In_Object_' +
        'Id => 8784,'
      
        '                                                                ' +
        ' In_Parametr => '#39'ADMIN'#39','
      
        '                                                                ' +
        ' In_Value => '#39'1'#39' ) = 1 ) )'
      'Order  By L.Name_Param')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0056005F004F005000450052005F0049004400
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000080000001E000000490044005F0052004F0057005F004F005F005000
      52005F004C004E004B000100000000000E000000490044005F004F0050004500
      52000100000000000C000000490044005F004400450050000100000000001800
      0000490044005F004400450050005F00470052004F0055005000010000000000
      10000000490044005F004400450050005F003100010000000000140000004E00
      41004D0045005F0050004100520041004D000100000000001400000054005900
      500045005F0050004100520041004D0001000000000018000000500041005200
      41004D005F0052004F0057005F0049004400010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 1026
    Top = 120
    object Db_Oper_Params_ListID_ROW_O_PR_LNK: TIntegerField
      FieldName = 'ID_ROW_O_PR_LNK'
      Required = True
    end
    object Db_Oper_Params_ListID_OPER: TFloatField
      FieldName = 'ID_OPER'
      Required = True
    end
    object Db_Oper_Params_ListID_DEP: TFloatField
      FieldName = 'ID_DEP'
    end
    object Db_Oper_Params_ListID_DEP_GROUP: TFloatField
      FieldName = 'ID_DEP_GROUP'
    end
    object Db_Oper_Params_ListNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object Db_Oper_Params_ListTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object Db_Oper_Params_ListPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
  end
  object Pkg_Tp_Doc: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Ogt.PKG_TP_DOC'
    Left = 1026
    Top = 11
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
      '            Else m_d.Id_Vers'
      '          End ) Linked_Doc_Id_Vers,'
      '       ( Case'
      '            When t.Main_Doc_Id Is Null'
      '            Then t.Doc_Header_Id'
      '            Else m_d.Doc_Header_Id'
      '          End ) Linked_Doc_Header_Id,'
      
        '       Ogt.Pkg_Tp_Doc.F_Get_Doc_Edit_Status(in_doc_header_id => ' +
        't.Doc_Header_Id,'
      
        '                                            v_user_lnum => Null)' +
        ' Doc_Edit_Stat,'
      '       (Case '
      '          when t.Doc_Type in (1, 6) then t.Det_Num '
      '          when t.Doc_Type in (2, 3) then t.Tp_Num'
      '        End) Addit_Info_Num,'
      '       (Case'
      '          when t.Doc_Type in (1) then t.Det_Name '
      '          when t.Doc_Type in (2, 3, 6) then t.Tp_Name'
      '        End) Addit_Info_Name,'
      '       (Case'
      '          When prnt.Id is Null'
      '          Then t.id '
      '          Else prnt.Id'
      '        End) Parent_Id_Doc,       '
      '       (Case'
      '          When prnt.Id_Vers is Null'
      '          Then t.id_vers'
      '          Else prnt.Id_vers'
      '        End) Parent_Id_Vers'
      'From   Ogt.v_Spr_Tp_Doc t'
      'Left   Join Ogt.V_Spr_Tp_Doc prnt'
      'On     prnt.Doc_Header_Id = t.Parent_Doc_Id'
      'Left   Join Ogt.V_Spr_Tp_doc_Actual m_d'
      'On     m_d.Id = t.main_doc_Id'
      'Left   Join Ogt.Spr_Det_Txt Det'
      'On     Det.Id = t.Det_Id  '
      'Where  t.Doc_Header_Id = :In_Doc_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0049004E005F0044004F0043005F0049004400
      0500000005000000393634340000000000}
    QBEDefinition.QBEFieldDefs = {
      050000003300000004000000490044000100000000000E00000044004F004300
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
      5F004300480041004E00470045000100000000001A0000004C0049004E004B00
      450044005F0044004F0043005F00490044000100000000001A00000044004F00
      43005F0045004400490054005F0053005400410054000100000000000E000000
      490044005F00560045005200530001000000000016000000490044005F004400
      4F0043005F00460055004C004C00010000000000220000004400410054004500
      5F00530054004100520054005F0041004300540049004F004E00010000000000
      1E00000044004100540045005F0045004E0044005F0041004300540049004F00
      4E00010000000000240000004C0049004E004B00450044005F0044004F004300
      5F00490044005F0056004500520053000100000000001A000000500041005200
      45004E0054005F0044004F0043005F00490044000100000000001A0000005000
      4100520045004E0054005F00490044005F0044004F0043000100000000001C00
      000050004100520045004E0054005F00490044005F0056004500520053000100
      00000000280000004C0049004E004B00450044005F0044004F0043005F004800
      450041004400450052005F00490044000100000000001C000000410044004400
      490054005F0049004E0046004F005F004E0055004D000100000000001E000000
      410044004400490054005F0049004E0046004F005F004E0041004D0045000100
      000000002000000053004F004D0045005F0049004E0046004F0052004D004100
      540049004F004E00010000000000}
    Session = DM_Main.Session
    Left = 1026
    Top = 64
    object Db_Doc_InfoID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Doc_InfoDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
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
    object Db_Doc_InfoDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
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
    object Db_Doc_InfoDOC_EDIT_STAT: TStringField
      FieldName = 'DOC_EDIT_STAT'
      Size = 4000
    end
    object Db_Doc_InfoID_VERS: TIntegerField
      FieldName = 'ID_VERS'
      Required = True
    end
    object Db_Doc_InfoID_DOC_FULL: TStringField
      FieldName = 'ID_DOC_FULL'
      Size = 14
    end
    object Db_Doc_InfoDATE_START_ACTION: TDateTimeField
      FieldName = 'DATE_START_ACTION'
    end
    object Db_Doc_InfoDATE_END_ACTION: TDateTimeField
      FieldName = 'DATE_END_ACTION'
    end
    object Db_Doc_InfoLINKED_DOC_ID_VERS: TFloatField
      FieldName = 'LINKED_DOC_ID_VERS'
    end
    object Db_Doc_InfoPARENT_DOC_ID: TIntegerField
      FieldName = 'PARENT_DOC_ID'
    end
    object Db_Doc_InfoPARENT_ID_DOC: TFloatField
      FieldName = 'PARENT_ID_DOC'
    end
    object Db_Doc_InfoPARENT_ID_VERS: TFloatField
      FieldName = 'PARENT_ID_VERS'
    end
    object Db_Doc_InfoLINKED_DOC_HEADER_ID: TFloatField
      FieldName = 'LINKED_DOC_HEADER_ID'
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
  object Db_Instr_Card: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.User_Change User_Edit,'
      '       t.rowid'
      'From   Ogt.V_Tp_Ok_Oper_Ins_Crds t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Doc_Tp_Id = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id_Rw_Ins_Crd Root_Row, '
      '                                                (Case '
      
        '          When a.Id_Rw_Ins_Crd = CONNECT_BY_ROOT a.Id_Rw_Ins_Crd' +
        ' Then Level||'#39'('#39'||a.Id_Rw_Ins_Crd||'#39')'#39
      
        '          Else CONNECT_BY_ROOT a.Id_Rw_Ins_Crd||'#39'/'#39'||Level||'#39'('#39'|' +
        '|a.Id_Rw_Ins_Crd||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_Tp_Ok_Oper' +
        '_Ins_Crds_Vers a '
      
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Doc_Tp_Id ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.Id_' +
        'Rw_Ins_Crd = a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                           On Substr(c.Actual,Instr(c.Actual, '#39'(' +
        #39')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(' +
        'to_Char(t.Id_Rw_Ins_Crd))'
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
      04000000030000001C0000003A004C0049004E004B00450044005F0044004F00
      43005F00490044000500000005000000313036310000000000060000003A0049
      004400050000000000000000000000100000003A00490044005F005600450052
      005300050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000150000001A000000490044005F00520057005F0049004E0053005F00
      4300520044000100000000001200000044004F0043005F00540050005F004900
      4400010000000000140000004F005000450052005F00520057005F0049004400
      0100000000000E0000004300520044005F004E0055004D000100000000001000
      00004300520044005F005000520049004D000100000000001600000055005300
      450052005F0049004E0053004500520054000100000000001600000044004100
      540045005F0049004E0053004500520054000100000000001600000055005300
      450052005F004300480041004E00470045000100000000001600000044004100
      540045005F004300480041004E00470045000100000000001800000043005200
      44005F0054004D0050004C0054005F00490044000100000000001C0000004300
      520044005F0054004D0050004C0054005F004E0041004D004500010000000000
      240000004300520044005F0054004D0050004C0054005F0049004D0047005F00
      50004100540048000100000000002000000055005300450052005F0043004800
      41004E00470045005F004E0041004D0045000100000000002000000055005300
      450052005F0049004E0053004500520054005F004E0041004D00450001000000
      00000E000000520057005F0056004500520053000100000000001C0000005200
      57005F00490044005F004F004C0044005F005600450052005300010000000000
      1E00000055005300450052005F004100440044005F0049004E00530045005200
      54000100000000001E00000055005300450052005F004100440044005F004300
      480041004E004700450001000000000012000000520057005F00530054004100
      5400550053000100000000001C00000044004F0043005F00540050005F005600
      4500520053005F00490044000100000000001200000055005300450052005F00
      4500440049005400010000000000}
    UniqueFields = 'ID_RW_INS_CRD'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_Tp_Ok_Oper_Ins_Crds'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 528
    Top = 224
    object Db_Instr_CardID_RW_INS_CRD: TIntegerField
      FieldName = 'ID_RW_INS_CRD'
      Required = True
    end
    object Db_Instr_CardDOC_TP_ID: TIntegerField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object Db_Instr_CardOPER_RW_ID: TIntegerField
      FieldName = 'OPER_RW_ID'
    end
    object Db_Instr_CardCRD_NUM: TStringField
      FieldName = 'CRD_NUM'
      Size = 30
    end
    object Db_Instr_CardCRD_TMPLT_ID: TIntegerField
      FieldName = 'CRD_TMPLT_ID'
    end
    object Db_Instr_CardCRD_TMPLT_NAME: TStringField
      FieldName = 'CRD_TMPLT_NAME'
      Size = 100
    end
    object Db_Instr_CardCRD_TMPLT_IMG_PATH: TStringField
      FieldName = 'CRD_TMPLT_IMG_PATH'
      Size = 300
    end
    object Db_Instr_CardCRD_PRIM: TStringField
      FieldName = 'CRD_PRIM'
      Size = 500
    end
    object Db_Instr_CardUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Instr_CardUSER_INSERT_NAME: TStringField
      FieldName = 'USER_INSERT_NAME'
      Size = 4000
    end
    object Db_Instr_CardDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Instr_CardUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Instr_CardUSER_CHANGE_NAME: TStringField
      FieldName = 'USER_CHANGE_NAME'
      Size = 4000
    end
    object Db_Instr_CardDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Instr_CardRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Instr_CardRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Instr_CardUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object Db_Instr_CardUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object Db_Instr_CardRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Instr_CardDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Instr_CardUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Instr_Card: TDataSetDriverEh
    KeyFields = 'ID_RW_INS_CRD'
    ProviderDataSet = Db_Instr_Card
    Left = 528
    Top = 176
  end
  object MemT_Instr_Card: TMemTableEh
    CachedUpdates = True
    DetailFields = 'OPER_RW_ID'
    FetchAllOnOpen = True
    MasterFields = 'ID_ROW_OPER'
    MasterSource = Data_Opers
    Params = <>
    DataDriver = Driver_Instr_Card
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Instr_CardAfterEdit
    AfterPost = MemT_Instr_CardAfterPost
    BeforeDelete = MemTableEhBeforeDelete
    AfterScroll = MemT_Instr_CardAfterScroll
    OnNewRecord = MemT_Instr_CardNewRecord
    Left = 528
    Top = 128
    object MemT_Instr_CardID_RW_INS_CRD: TIntegerField
      FieldName = 'ID_RW_INS_CRD'
      Required = True
    end
    object MemT_Instr_CardDOC_TP_ID: TIntegerField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object MemT_Instr_CardOPER_RW_ID: TIntegerField
      FieldName = 'OPER_RW_ID'
    end
    object MemT_Instr_CardCRD_NUM: TStringField
      FieldName = 'CRD_NUM'
      Size = 30
    end
    object MemT_Instr_CardCRD_TMPLT_ID: TIntegerField
      FieldName = 'CRD_TMPLT_ID'
    end
    object MemT_Instr_CardCRD_TMPLT_NAME: TStringField
      FieldName = 'CRD_TMPLT_NAME'
      Size = 100
    end
    object MemT_Instr_CardCRD_TMPLT_IMG_PATH: TStringField
      FieldName = 'CRD_TMPLT_IMG_PATH'
      Size = 300
    end
    object MemT_Instr_CardCRD_PRIM: TStringField
      FieldName = 'CRD_PRIM'
      Size = 500
    end
    object MemT_Instr_CardUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Instr_CardUSER_INSERT_NAME: TStringField
      FieldName = 'USER_INSERT_NAME'
      Size = 4000
    end
    object MemT_Instr_CardDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Instr_CardUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Instr_CardUSER_CHANGE_NAME: TStringField
      FieldName = 'USER_CHANGE_NAME'
      Size = 4000
    end
    object MemT_Instr_CardDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Instr_CardRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Instr_CardRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Instr_CardUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object MemT_Instr_CardUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object MemT_Instr_CardRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Instr_CardDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Instr_CardUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Data_Instr_Card: TDataSource
    DataSet = MemT_Instr_Card
    OnDataChange = Data_Instr_CardDataChange
    Left = 528
    Top = 80
  end
  object Seq_Instr_Card: TOracleQuery
    SQL.Strings = (
      'Select Ogt.S_Tp_Ok_Oper_Ins_Crds_Id_Rw.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 528
    Top = 15
  end
  object Db_Instr_Crd_Prms: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.User_Change User_Edit,'
      '       t.rowid'
      'From   Ogt.V_Tp_Ok_Op_Ins_Crd_Prm t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Doc_Tp_Id = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id_Rw_Tp_Op_Ins_Crd_Prm Root_Row, '
      '                                                (Case '
      
        '          When a.Id_Rw_Tp_Op_Ins_Crd_Prm = CONNECT_BY_ROOT a.Id_' +
        'Rw_Tp_Op_Ins_Crd_Prm Then Level||'#39'('#39'||a.Id_Rw_Tp_Op_Ins_Crd_Prm|' +
        '|'#39')'#39
      
        '          Else CONNECT_BY_ROOT a.Id_Rw_Tp_Op_Ins_Crd_Prm||'#39'/'#39'||L' +
        'evel||'#39'('#39'||a.Id_Rw_Tp_Op_Ins_Crd_Prm||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_Tp_Ok_Op_I' +
        'ns_Crd_Prm_Vers a '
      
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Doc_Tp_Id ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.Id_' +
        'Rw_Tp_Op_Ins_Crd_Prm = a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                           On Substr(c.Actual,Instr(c.Actual, '#39'(' +
        #39')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(' +
        'to_Char(t.Id_Rw_Tp_Op_Ins_Crd_Prm))'
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
      04000000030000001C0000003A004C0049004E004B00450044005F0044004F00
      43005F00490044000500000005000000313036310000000000060000003A0049
      004400050000000000000000000000100000003A00490044005F005600450052
      005300050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000130000002E000000490044005F00520057005F00540050005F004F00
      50005F0049004E0053005F004300520044005F00500052004D00010000000000
      120000004300520044005F00520057005F004900440001000000000012000000
      44004F0043005F00540050005F00490044000100000000001800000050004100
      520041004D005F0052004F0057005F0049004400010000000000140000004E00
      41004D0045005F0050004100520041004D000100000000001400000054005900
      500045005F0050004100520041004D00010000000000140000004E0055004D00
      45005200490043005F0056004C000100000000000E0000005400450058005400
      5F0056004C000100000000001E00000050004100520041004D005F0043004800
      5F0052004F0057005F0049004400010000000000160000005000410052004100
      4D005F00560041004C0055004500010000000000160000005500530045005200
      5F0049004E005300450052005400010000000000160000004400410054004500
      5F0049004E005300450052005400010000000000160000005500530045005200
      5F004300480041004E0047004500010000000000160000004400410054004500
      5F004300480041004E00470045000100000000001C00000044004F0043005F00
      540050005F0056004500520053005F00490044000100000000000E0000005200
      57005F0056004500520053000100000000001C000000520057005F0049004400
      5F004F004C0044005F0056004500520053000100000000001200000052005700
      5F00530054004100540055005300010000000000120000005500530045005200
      5F004500440049005400010000000000}
    UniqueFields = 'ID_RW_TP_OP_INS_CRD_PRM'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_Tp_Ok_Op_Ins_Crd_Prm'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 633
    Top = 225
    object Db_Instr_Crd_PrmsID_RW_TP_OP_INS_CRD_PRM: TIntegerField
      FieldName = 'ID_RW_TP_OP_INS_CRD_PRM'
      Required = True
    end
    object Db_Instr_Crd_PrmsCRD_RW_ID: TFloatField
      FieldName = 'CRD_RW_ID'
      Required = True
    end
    object Db_Instr_Crd_PrmsDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object Db_Instr_Crd_PrmsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
    object Db_Instr_Crd_PrmsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object Db_Instr_Crd_PrmsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object Db_Instr_Crd_PrmsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object Db_Instr_Crd_PrmsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object Db_Instr_Crd_PrmsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
    object Db_Instr_Crd_PrmsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object Db_Instr_Crd_PrmsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Instr_Crd_PrmsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Instr_Crd_PrmsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Instr_Crd_PrmsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Instr_Crd_PrmsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Instr_Crd_PrmsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Instr_Crd_PrmsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Instr_Crd_PrmsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Instr_Crd_PrmsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Instr_Crd_Prms: TDataSetDriverEh
    KeyFields = 'ID_RW_TP_OP_INS_CRD_PRM'
    ProviderDataSet = Db_Instr_Crd_Prms
    Left = 632
    Top = 176
  end
  object MemT_Instr_Crd_Prms: TMemTableEh
    CachedUpdates = True
    DetailFields = 'CRD_RW_ID'
    FetchAllOnOpen = True
    MasterFields = 'ID_RW_INS_CRD'
    MasterSource = Data_Instr_Card
    Params = <>
    DataDriver = Driver_Instr_Crd_Prms
    SortOrder = 'NAME_PARAM'
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Instr_Crd_PrmsAfterEdit
    OnNewRecord = MemT_Instr_Crd_PrmsNewRecord
    Left = 632
    Top = 128
    object MemT_Instr_Crd_PrmsID_RW_TP_OP_INS_CRD_PRM: TIntegerField
      FieldName = 'ID_RW_TP_OP_INS_CRD_PRM'
      Required = True
    end
    object MemT_Instr_Crd_PrmsCRD_RW_ID: TFloatField
      FieldName = 'CRD_RW_ID'
      Required = True
    end
    object MemT_Instr_Crd_PrmsDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object MemT_Instr_Crd_PrmsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
    object MemT_Instr_Crd_PrmsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object MemT_Instr_Crd_PrmsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object MemT_Instr_Crd_PrmsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object MemT_Instr_Crd_PrmsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object MemT_Instr_Crd_PrmsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
    object MemT_Instr_Crd_PrmsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object MemT_Instr_Crd_PrmsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Instr_Crd_PrmsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Instr_Crd_PrmsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Instr_Crd_PrmsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Instr_Crd_PrmsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Instr_Crd_PrmsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Instr_Crd_PrmsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Instr_Crd_PrmsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Instr_Crd_PrmsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Data_Instr_Crd_Prms: TDataSource
    DataSet = MemT_Instr_Crd_Prms
    Left = 632
    Top = 80
  end
  object Seq_Instr_Crd_Prms: TOracleQuery
    SQL.Strings = (
      'Select Ogt.S_Tp_Ok_Op_Ins_Crd_Prm_Id_Rw.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 632
    Top = 15
  end
  object Db_Ins_Crd_Per_Instrs: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.User_Change User_Edit,'
      '       t.rowid'
      'From   Ogt.V_Tp_Ok_Per_Ins_Crd t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Doc_Tp_Id = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.ID_RW_TP_PER_INS_CRD Root_Row, '
      '                                                (Case '
      
        '          When a.ID_RW_TP_PER_INS_CRD = CONNECT_BY_ROOT a.ID_RW_' +
        'TP_PER_INS_CRD Then Level||'#39'('#39'||a.ID_RW_TP_PER_INS_CRD||'#39')'#39
      
        '          Else CONNECT_BY_ROOT a.ID_RW_TP_PER_INS_CRD||'#39'/'#39'||Leve' +
        'l||'#39'('#39'||a.ID_RW_TP_PER_INS_CRD||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_Tp_Ok_Per_' +
        'Ins_Crd_Vers a '
      
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Doc_Tp_Id ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.ID_' +
        'RW_TP_PER_INS_CRD = a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                           On Substr(c.Actual,Instr(c.Actual, '#39'(' +
        #39')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(' +
        'to_Char(t.ID_RW_TP_PER_INS_CRD))'
      'Where ((Case'
      '           when t.Doc_Tp_Id = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)'
      '       And t.Crd_Ins_Per_Tp_Rw_Id Is Null')
    Optimize = False
    Variables.Data = {
      04000000030000001C0000003A004C0049004E004B00450044005F0044004F00
      43005F00490044000500000005000000313036310000000000060000003A0049
      004400050000000000000000000000100000003A00490044005F005600450052
      005300050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001700000028000000490044005F00520057005F00540050005F005000
      450052005F0049004E0053005F004300520044000100000000001A0000004300
      520044005F0049004E0053005F00520057005F00490044000100000000001200
      00005000450052005F00520057005F0049004400010000000000120000004400
      4F0043005F00540050005F00490044000100000000000C00000049004E005300
      5F00490044000100000000001000000049004E0053005F004E0041004D004500
      0100000000001A00000049004E0053005F0043004F00520052005F0043004F00
      450046000100000000001400000049004E0053005F005300540052004F004E00
      47000100000000001A00000049004E0053005F00460041004300450053005F00
      4E0055004D000100000000001200000049004E0053005F0043004F0055004E00
      54000100000000001800000049004E0053005F00570052004B005F0054004900
      4D0045000100000000001600000055005300450052005F0049004E0053004500
      520054000100000000001600000044004100540045005F0049004E0053004500
      520054000100000000001600000055005300450052005F004300480041004E00
      470045000100000000001600000044004100540045005F004300480041004E00
      47004500010000000000280000004300520044005F0049004E0053005F005000
      450052005F00540050005F00520057005F00490044000100000000001C000000
      44004F0043005F00540050005F0056004500520053005F004900440001000000
      00000E000000520057005F0056004500520053000100000000001C0000005200
      57005F00490044005F004F004C0044005F005600450052005300010000000000
      1E00000055005300450052005F004100440044005F0049004E00530045005200
      54000100000000001E00000055005300450052005F004100440044005F004300
      480041004E004700450001000000000012000000520057005F00530054004100
      5400550053000100000000001200000055005300450052005F00450044004900
      5400010000000000}
    UniqueFields = 'ID_RW_TP_PER_INS_CRD'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_Tp_Ok_Per_Ins_Crd'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 680
    Top = 494
    object Db_Ins_Crd_Per_InstrsID_RW_TP_PER_INS_CRD: TIntegerField
      FieldName = 'ID_RW_TP_PER_INS_CRD'
      Required = True
    end
    object Db_Ins_Crd_Per_InstrsCRD_INS_PER_TP_RW_ID: TIntegerField
      FieldName = 'CRD_INS_PER_TP_RW_ID'
    end
    object Db_Ins_Crd_Per_InstrsCRD_INS_RW_ID: TIntegerField
      FieldName = 'CRD_INS_RW_ID'
      Required = True
    end
    object Db_Ins_Crd_Per_InstrsPER_RW_ID: TIntegerField
      FieldName = 'PER_RW_ID'
    end
    object Db_Ins_Crd_Per_InstrsDOC_TP_ID: TIntegerField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object Db_Ins_Crd_Per_InstrsINS_ID: TIntegerField
      FieldName = 'INS_ID'
    end
    object Db_Ins_Crd_Per_InstrsINS_NAME: TStringField
      FieldName = 'INS_NAME'
      Size = 172
    end
    object Db_Ins_Crd_Per_InstrsINS_CORR_COEF: TFloatField
      FieldName = 'INS_CORR_COEF'
    end
    object Db_Ins_Crd_Per_InstrsINS_STRONG: TFloatField
      FieldName = 'INS_STRONG'
    end
    object Db_Ins_Crd_Per_InstrsINS_FACES_NUM: TIntegerField
      FieldName = 'INS_FACES_NUM'
    end
    object Db_Ins_Crd_Per_InstrsINS_COUNT: TIntegerField
      FieldName = 'INS_COUNT'
    end
    object Db_Ins_Crd_Per_InstrsINS_WRK_TIME: TIntegerField
      FieldName = 'INS_WRK_TIME'
    end
    object Db_Ins_Crd_Per_InstrsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Ins_Crd_Per_InstrsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Ins_Crd_Per_InstrsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Ins_Crd_Per_InstrsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Ins_Crd_Per_InstrsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Ins_Crd_Per_InstrsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Ins_Crd_Per_InstrsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Ins_Crd_Per_InstrsUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object Db_Ins_Crd_Per_InstrsUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object Db_Ins_Crd_Per_InstrsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Ins_Crd_Per_InstrsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Ins_Crd_Per_Instrs: TDataSetDriverEh
    KeyFields = 'ID_RW_TP_PER_INS_CRD'
    ProviderDataSet = Db_Ins_Crd_Per_Instrs
    Left = 680
    Top = 448
  end
  object MemT_Ins_Crd_Per_Instrs: TMemTableEh
    DetailFields = 'PER_RW_ID'
    FetchAllOnOpen = True
    MasterFields = 'ID'
    MasterSource = Data_Oper_Per
    Params = <>
    DataDriver = Driver_Ins_Crd_Per_Instrs
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Ins_Crd_Per_InstrsAfterEdit
    BeforeDelete = MemTableEhBeforeDelete
    AfterScroll = MemT_Ins_Crd_Per_InstrsAfterScroll
    OnNewRecord = MemT_Ins_Crd_Per_InstrsNewRecord
    Left = 680
    Top = 400
    object MemT_Ins_Crd_Per_InstrsID_RW_TP_PER_INS_CRD: TIntegerField
      FieldName = 'ID_RW_TP_PER_INS_CRD'
      Required = True
    end
    object MemT_Ins_Crd_Per_InstrsCRD_INS_PER_TP_RW_ID: TIntegerField
      FieldName = 'CRD_INS_PER_TP_RW_ID'
    end
    object MemT_Ins_Crd_Per_InstrsCRD_INS_RW_ID: TIntegerField
      FieldName = 'CRD_INS_RW_ID'
      Required = True
    end
    object MemT_Ins_Crd_Per_InstrsPER_RW_ID: TIntegerField
      FieldName = 'PER_RW_ID'
    end
    object MemT_Ins_Crd_Per_InstrsDOC_TP_ID: TIntegerField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object MemT_Ins_Crd_Per_InstrsINS_ID: TIntegerField
      FieldName = 'INS_ID'
    end
    object MemT_Ins_Crd_Per_InstrsINS_NAME: TStringField
      FieldName = 'INS_NAME'
      Size = 172
    end
    object MemT_Ins_Crd_Per_InstrsINS_CORR_COEF: TFloatField
      FieldName = 'INS_CORR_COEF'
    end
    object MemT_Ins_Crd_Per_InstrsINS_STRONG: TFloatField
      FieldName = 'INS_STRONG'
    end
    object MemT_Ins_Crd_Per_InstrsINS_FACES_NUM: TIntegerField
      FieldName = 'INS_FACES_NUM'
    end
    object MemT_Ins_Crd_Per_InstrsINS_COUNT: TIntegerField
      FieldName = 'INS_COUNT'
    end
    object MemT_Ins_Crd_Per_InstrsINS_WRK_TIME: TIntegerField
      FieldName = 'INS_WRK_TIME'
    end
    object MemT_Ins_Crd_Per_InstrsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Ins_Crd_Per_InstrsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Ins_Crd_Per_InstrsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Ins_Crd_Per_InstrsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Ins_Crd_Per_InstrsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Ins_Crd_Per_InstrsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Ins_Crd_Per_InstrsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Ins_Crd_Per_InstrsUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object MemT_Ins_Crd_Per_InstrsUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object MemT_Ins_Crd_Per_InstrsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Ins_Crd_Per_InstrsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Data_Ins_Crd_Per_Instrs: TDataSource
    DataSet = MemT_Ins_Crd_Per_Instrs
    OnDataChange = Data_Ins_Crd_Per_InstrsDataChange
    Left = 680
    Top = 352
  end
  object Seq_Ins_Crd_Per_Instrs: TOracleQuery
    SQL.Strings = (
      'Select Ogt.S_Tp_Ok_Per_Ins_Crd_Id_Rw.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 680
    Top = 304
  end
  object Db_Ins_Crd_Ins_Tmplts: TOracleDataSet
    SQL.Strings = (
      'Select t.*,'
      '       t.User_Change User_Edit, '
      '       t.rowid'
      'From   Ogt.V_Tp_Ok_Per_Ins_Crd_Tmplts t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Doc_Tp_Id = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.ID_RW_TP_O_P_I_CRD_TYPES Root_Row, '
      '                                                (Case '
      
        '          When a.ID_RW_TP_O_P_I_CRD_TYPES = CONNECT_BY_ROOT a.ID' +
        '_RW_TP_O_P_I_CRD_TYPES Then Level||'#39'('#39'||a.ID_RW_TP_O_P_I_CRD_TYP' +
        'ES||'#39')'#39
      
        '          Else CONNECT_BY_ROOT a.ID_RW_TP_O_P_I_CRD_TYPES||'#39'/'#39'||' +
        'Level||'#39'('#39'||a.ID_RW_TP_O_P_I_CRD_TYPES||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_Tp_Ok_P_In' +
        's_Crd_Tmplts_Vers a '
      
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Doc_Tp_Id ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.ID_' +
        'RW_TP_O_P_I_CRD_TYPES = a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                          On Substr(c.Actual,Instr(c.Actual, '#39'('#39 +
        ')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(t' +
        'o_Char(t.ID_RW_TP_O_P_I_CRD_TYPES ))'
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
      04000000030000001C0000003A004C0049004E004B00450044005F0044004F00
      43005F00490044000500000005000000313036310000000000060000003A0049
      004400050000000000000000000000100000003A00490044005F005600450052
      005300050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001300000030000000490044005F00520057005F00540050005F004F00
      5F0050005F0049005F004300520044005F005400590050004500530001000000
      0000120000004300520044005F00520057005F00490044000100000000001200
      000044004F0043005F00540050005F00490044000100000000001A0000004300
      520044005F0049004E0053005F00520057005F00490044000100000000001800
      000049004E0053005F0054004D0050004C0054005F0049004400010000000000
      1C00000049004E0053005F0054004D0050004C0054005F004E0041004D004500
      0100000000002400000049004E0053005F0054004D0050004C0054005F004900
      4D0047005F005000410054004800010000000000160000005500530045005200
      5F0049004E005300450052005400010000000000160000004400410054004500
      5F0049004E005300450052005400010000000000160000005500530045005200
      5F004300480041004E0047004500010000000000160000004400410054004500
      5F004300480041004E00470045000100000000001A00000049004E0053005F00
      54004D0050004C0054005F004E0055004D000100000000001C00000044004F00
      43005F00540050005F0056004500520053005F00490044000100000000000E00
      0000520057005F0056004500520053000100000000001C000000520057005F00
      490044005F004F004C0044005F0056004500520053000100000000001E000000
      55005300450052005F004100440044005F0049004E0053004500520054000100
      000000001E00000055005300450052005F004100440044005F00430048004100
      4E004700450001000000000012000000520057005F0053005400410054005500
      53000100000000001200000055005300450052005F0045004400490054000100
      00000000}
    UniqueFields = 'ID_RW_TP_O_P_I_CRD_TYPES'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_Tp_Ok_Per_Ins_Crd_Tmplts'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 816
    Top = 496
    object Db_Ins_Crd_Ins_TmpltsID_RW_TP_O_P_I_CRD_TYPES: TIntegerField
      FieldName = 'ID_RW_TP_O_P_I_CRD_TYPES'
      Required = True
    end
    object Db_Ins_Crd_Ins_TmpltsCRD_RW_ID: TIntegerField
      FieldName = 'CRD_RW_ID'
    end
    object Db_Ins_Crd_Ins_TmpltsDOC_TP_ID: TIntegerField
      FieldName = 'DOC_TP_ID'
    end
    object Db_Ins_Crd_Ins_TmpltsCRD_INS_RW_ID: TIntegerField
      FieldName = 'CRD_INS_RW_ID'
    end
    object Db_Ins_Crd_Ins_TmpltsINS_TMPLT_ID: TIntegerField
      FieldName = 'INS_TMPLT_ID'
    end
    object Db_Ins_Crd_Ins_TmpltsINS_TMPLT_NUM: TStringField
      FieldName = 'INS_TMPLT_NUM'
      Size = 30
    end
    object Db_Ins_Crd_Ins_TmpltsINS_TMPLT_NAME: TStringField
      FieldName = 'INS_TMPLT_NAME'
      Size = 100
    end
    object Db_Ins_Crd_Ins_TmpltsINS_TMPLT_IMG_PATH: TStringField
      FieldName = 'INS_TMPLT_IMG_PATH'
      Size = 300
    end
    object Db_Ins_Crd_Ins_TmpltsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Ins_Crd_Ins_TmpltsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Ins_Crd_Ins_TmpltsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Ins_Crd_Ins_TmpltsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Ins_Crd_Ins_TmpltsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Ins_Crd_Ins_TmpltsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Ins_Crd_Ins_TmpltsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Ins_Crd_Ins_TmpltsUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object Db_Ins_Crd_Ins_TmpltsUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object Db_Ins_Crd_Ins_TmpltsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Ins_Crd_Ins_TmpltsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Ins_Crd_Ins_Tmplts: TDataSetDriverEh
    KeyFields = 'ID_RW_TP_O_P_I_CRD_TYPES'
    ProviderDataSet = Db_Ins_Crd_Ins_Tmplts
    Left = 816
    Top = 448
  end
  object MemT_Ins_Crd_Ins_Tmplts: TMemTableEh
    CachedUpdates = True
    DetailFields = 'CRD_INS_RW_ID'
    FetchAllOnOpen = True
    MasterFields = 'ID_RW_TP_PER_INS_CRD'
    MasterSource = Data_Ins_Crd_Per_Instrs
    Params = <>
    DataDriver = Driver_Ins_Crd_Ins_Tmplts
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Ins_Crd_Ins_TmpltsAfterEdit
    AfterPost = MemT_Ins_Crd_Ins_TmpltsAfterPost
    BeforeDelete = MemTableEhBeforeDelete
    AfterScroll = MemT_Ins_Crd_Ins_TmpltsAfterScroll
    OnNewRecord = MemT_Ins_Crd_Ins_TmpltsNewRecord
    Left = 816
    Top = 400
    object MemT_Ins_Crd_Ins_TmpltsID_RW_TP_O_P_I_CRD_TYPES: TIntegerField
      FieldName = 'ID_RW_TP_O_P_I_CRD_TYPES'
      Required = True
    end
    object MemT_Ins_Crd_Ins_TmpltsCRD_RW_ID: TIntegerField
      FieldName = 'CRD_RW_ID'
    end
    object MemT_Ins_Crd_Ins_TmpltsDOC_TP_ID: TIntegerField
      FieldName = 'DOC_TP_ID'
    end
    object MemT_Ins_Crd_Ins_TmpltsCRD_INS_RW_ID: TIntegerField
      FieldName = 'CRD_INS_RW_ID'
    end
    object MemT_Ins_Crd_Ins_TmpltsINS_TMPLT_ID: TIntegerField
      FieldName = 'INS_TMPLT_ID'
    end
    object MemT_Ins_Crd_Ins_TmpltsINS_TMPLT_NUM: TStringField
      FieldName = 'INS_TMPLT_NUM'
      Size = 30
    end
    object MemT_Ins_Crd_Ins_TmpltsINS_TMPLT_NAME: TStringField
      FieldName = 'INS_TMPLT_NAME'
      Size = 100
    end
    object MemT_Ins_Crd_Ins_TmpltsINS_TMPLT_IMG_PATH: TStringField
      FieldName = 'INS_TMPLT_IMG_PATH'
      Size = 300
    end
    object MemT_Ins_Crd_Ins_TmpltsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Ins_Crd_Ins_TmpltsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Ins_Crd_Ins_TmpltsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Ins_Crd_Ins_TmpltsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Ins_Crd_Ins_TmpltsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Ins_Crd_Ins_TmpltsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Ins_Crd_Ins_TmpltsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Ins_Crd_Ins_TmpltsUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object MemT_Ins_Crd_Ins_TmpltsUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object MemT_Ins_Crd_Ins_TmpltsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Ins_Crd_Ins_TmpltsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Data_Ins_Crd_Ins_Tmplts: TDataSource
    DataSet = MemT_Ins_Crd_Ins_Tmplts
    Left = 816
    Top = 352
  end
  object Seq_Ins_Crd_Ins_Tmplts: TOracleQuery
    SQL.Strings = (
      'Select Ogt.S_Tp_Ok_Per_Ins_Crd_Tm_Id_Rw.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 816
    Top = 304
  end
  object Db_Ins_Crd_Ins_Tmp_Prms: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.User_Change User_Edit,'
      '       t.rowid'
      'From   Ogt.V_Tp_Ok_Per_Ins_Crd_Tmp_Prm t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Doc_Tp_Id = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.ID_RW_TP_PER_I_CRD_T_PRM Root_Row, '
      '                                               (Case '
      
        '          When a.ID_RW_TP_PER_I_CRD_T_PRM = CONNECT_BY_ROOT a.ID' +
        '_RW_TP_PER_I_CRD_T_PRM Then Level||'#39'('#39'||a.ID_RW_TP_PER_I_CRD_T_P' +
        'RM||'#39')'#39
      
        '          Else CONNECT_BY_ROOT a.ID_RW_TP_PER_I_CRD_T_PRM||'#39'/'#39'||' +
        'Level||'#39'('#39'||a.ID_RW_TP_PER_I_CRD_T_PRM||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_Tp_Ok_P_In' +
        's_Crd_Tmp_Prm_Vers a '
      
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Doc_Tp_Id ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.ID_' +
        'RW_TP_PER_I_CRD_T_PRM = a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                          On Substr(c.Actual,Instr(c.Actual, '#39'('#39 +
        ')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(t' +
        'o_Char(t.ID_RW_TP_PER_I_CRD_T_PRM))'
      'Where ((Case'
      '           when t.Doc_Tp_Id = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)'
      '')
    Optimize = False
    Variables.Data = {
      04000000030000001C0000003A004C0049004E004B00450044005F0044004F00
      43005F00490044000500000005000000313036310000000000060000003A0049
      004400050000000000000000000000100000003A00490044005F005600450052
      005300050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001600000030000000490044005F00520057005F00540050005F005000
      450052005F0049005F004300520044005F0054005F00500052004D0001000000
      0000120000004300520044005F00520057005F00490044000100000000001200
      000044004F0043005F00540050005F0049004400010000000000220000004300
      520044005F0049004E0053005F0054004D0050005F00520057005F0049004400
      0100000000001800000050004100520041004D005F0052004F0057005F004900
      4400010000000000140000004E0041004D0045005F0050004100520041004D00
      0100000000001400000054005900500045005F0050004100520041004D000100
      00000000140000004E0055004D0045005200490043005F0056004C0001000000
      00000E00000054004500580054005F0056004C000100000000001E0000005000
      4100520041004D005F00430048005F0052004F0057005F004900440001000000
      00001600000050004100520041004D005F00560041004C005500450001000000
      00001600000055005300450052005F0049004E00530045005200540001000000
      00001600000044004100540045005F0049004E00530045005200540001000000
      00001600000055005300450052005F004300480041004E004700450001000000
      00001600000044004100540045005F004300480041004E004700450001000000
      00000E000000520057005F0056004500520053000100000000001C0000005200
      57005F00490044005F004F004C0044005F005600450052005300010000000000
      1C00000044004F0043005F00540050005F0056004500520053005F0049004400
      0100000000001E00000055005300450052005F004100440044005F0049004E00
      53004500520054000100000000001E00000055005300450052005F0041004400
      44005F004300480041004E004700450001000000000012000000520057005F00
      5300540041005400550053000100000000001200000055005300450052005F00
      4500440049005400010000000000}
    UniqueFields = 'ID_RW_TP_PER_I_CRD_T_PRM'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_Tp_Ok_Per_Ins_Crd_Tmp_Prm'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 968
    Top = 496
    object Db_Ins_Crd_Ins_Tmp_PrmsID_RW_TP_PER_I_CRD_T_PRM: TIntegerField
      FieldName = 'ID_RW_TP_PER_I_CRD_T_PRM'
      Required = True
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsCRD_RW_ID: TFloatField
      FieldName = 'CRD_RW_ID'
      Required = True
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsCRD_INS_TMP_RW_ID: TIntegerField
      FieldName = 'CRD_INS_TMP_RW_ID'
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Ins_Crd_Ins_Tmp_PrmsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Ins_Crd_Ins_Tmp_Prms: TDataSetDriverEh
    KeyFields = 'ID_RW_TP_PER_I_CRD_T_PRM'
    ProviderDataSet = Db_Ins_Crd_Ins_Tmp_Prms
    Left = 968
    Top = 448
  end
  object MemT_Ins_Crd_Ins_Tmp_Prms: TMemTableEh
    CachedUpdates = True
    DetailFields = 'CRD_INS_TMP_RW_ID'
    MasterFields = 'ID_RW_TP_O_P_I_CRD_TYPES'
    MasterSource = Data_Ins_Crd_Ins_Tmplts
    Params = <>
    DataDriver = Driver_Ins_Crd_Ins_Tmp_Prms
    SortOrder = 'NAME_PARAM'
    AfterEdit = MemT_Ins_Crd_Ins_Tmp_PrmsAfterEdit
    OnNewRecord = MemT_Ins_Crd_Ins_Tmp_PrmsNewRecord
    Left = 968
    Top = 400
    object MemT_Ins_Crd_Ins_Tmp_PrmsID_RW_TP_PER_I_CRD_T_PRM: TIntegerField
      FieldName = 'ID_RW_TP_PER_I_CRD_T_PRM'
      Required = True
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsCRD_RW_ID: TFloatField
      FieldName = 'CRD_RW_ID'
      Required = True
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsDOC_TP_ID: TFloatField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsCRD_INS_TMP_RW_ID: TIntegerField
      FieldName = 'CRD_INS_TMP_RW_ID'
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Ins_Crd_Ins_Tmp_PrmsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Data_Ins_Crd_Ins_Tmp_Prms: TDataSource
    DataSet = MemT_Ins_Crd_Ins_Tmp_Prms
    Left = 968
    Top = 352
  end
  object Seq_Ins_Crd_Ins_Tmp_Prms: TOracleQuery
    SQL.Strings = (
      'Select Ogt.S_Tp_Ok_Per_Crd_Tm_Prm_Id_Rw.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 968
    Top = 304
  end
  object Db_Instr_Crd_Tmp_Prms_List: TOracleDataSet
    SQL.Strings = (
      'Select * '
      'From   Ogt.V_Tp_Ok_Op_Ins_Crd_Tmp_Prms t'
      'Where  t.Tmplt_Rw_Id = :CRD_TMPLT_ID')
    Optimize = False
    Variables.Data = {
      04000000010000001A0000003A004300520044005F0054004D0050004C005400
      5F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000A00000030000000490044005F00520057005F0049004E0053005F00
      4300520044005F0054004D0050005F00500052005F004C004E004B0001000000
      00001600000054004D0050004C0054005F00520057005F004900440001000000
      00001400000054004D0050004C0054005F004E0041004D004500010000000000
      1800000050004100520041004D005F0052004F0057005F004900440001000000
      00001400000054005900500045005F0050004100520041004D00010000000000
      140000004E0041004D0045005F0050004100520041004D000100000000001600
      000055005300450052005F0049004E0053004500520054000100000000001600
      000044004100540045005F0049004E0053004500520054000100000000001600
      000055005300450052005F004300480041004E00470045000100000000001600
      000044004100540045005F004300480041004E0047004500010000000000}
    Session = DM_Main.Session
    Left = 1026
    Top = 216
    object Db_Instr_Crd_Tmp_Prms_ListID_RW_INS_CRD_TMP_PR_LNK: TIntegerField
      FieldName = 'ID_RW_INS_CRD_TMP_PR_LNK'
      Required = True
    end
    object Db_Instr_Crd_Tmp_Prms_ListTMPLT_RW_ID: TIntegerField
      FieldName = 'TMPLT_RW_ID'
      Required = True
    end
    object Db_Instr_Crd_Tmp_Prms_ListTMPLT_NAME: TStringField
      FieldName = 'TMPLT_NAME'
      Size = 100
    end
    object Db_Instr_Crd_Tmp_Prms_ListPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
    object Db_Instr_Crd_Tmp_Prms_ListTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object Db_Instr_Crd_Tmp_Prms_ListNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object Db_Instr_Crd_Tmp_Prms_ListUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Instr_Crd_Tmp_Prms_ListDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Instr_Crd_Tmp_Prms_ListUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Instr_Crd_Tmp_Prms_ListDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 1000
    Top = 13
  end
  object Db_Instr_Tmplt_Prms_List: TOracleDataSet
    SQL.Strings = (
      'Select t.*'
      'From   Skl.V_Spr_Instr_Tmplt_Prms t'
      'Where  t.Tmplt_Rw_Id = :ID_RW_INSTR_TMPLT')
    Optimize = False
    Variables.Data = {
      0400000001000000240000003A00490044005F00520057005F0049004E005300
      540052005F0054004D0050004C005400050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000090000002E000000490044005F0052004F0057005F0049004E005300
      5F0054004D0050004C0054005F00500052005F004C004E004B00010000000000
      1600000054004D0050004C0054005F00520057005F0049004400010000000000
      1800000050004100520041004D005F0052004F0057005F004900440001000000
      00001400000054005900500045005F0050004100520041004D00010000000000
      140000004E0041004D0045005F0050004100520041004D000100000000001600
      000055005300450052005F0049004E0053004500520054000100000000001600
      000044004100540045005F0049004E0053004500520054000100000000001600
      000055005300450052005F004300480041004E00470045000100000000001600
      000044004100540045005F004300480041004E0047004500010000000000}
    UniqueFields = 'ID_ROW_INS_TMPLT_PR_LNK'
    UpdatingTable = 'Skl.V_Spr_Instr_Tmplt_Prms'
    Session = DM_Main.Session
    Left = 1026
    Top = 272
    object Db_Instr_Tmplt_Prms_ListID_ROW_INS_TMPLT_PR_LNK: TIntegerField
      FieldName = 'ID_ROW_INS_TMPLT_PR_LNK'
      Required = True
    end
    object Db_Instr_Tmplt_Prms_ListTMPLT_RW_ID: TIntegerField
      FieldName = 'TMPLT_RW_ID'
      Required = True
    end
    object Db_Instr_Tmplt_Prms_ListPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
    object Db_Instr_Tmplt_Prms_ListTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object Db_Instr_Tmplt_Prms_ListNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object Db_Instr_Tmplt_Prms_ListUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Instr_Tmplt_Prms_ListDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Instr_Tmplt_Prms_ListUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Instr_Tmplt_Prms_ListDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
  end
  object Db_Linked_Instr_List: TOracleDataSet
    SQL.Strings = (
      'Select t.*'
      'From   Skl.V_Spr_Instr_Links t'
      'Where  t.Prnt_Instr_Id = :Id_Instr')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A00490044005F0049004E005300540052000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000C0000001E000000500052004E0054005F0049004E00530054005200
      5F0043004F00440045000100000000001A000000500052004E0054005F004900
      4E005300540052005F00490044000100000000001E000000500052004E005400
      5F0049004E005300540052005F004E0041004D0045000100000000001E000000
      500052004E0054005F0049004E005300540052005F0053004F00520054000100
      000000001E000000500052004E0054005F0049004E005300540052005F004700
      4F005300540001000000000028000000500052004E0054005F0049004E005300
      540052005F00460055004C004C005F004E0041004D0045000100000000001E00
      0000430048004C0044005F0049004E005300540052005F0043004F0044004500
      0100000000001A000000430048004C0044005F0049004E005300540052005F00
      490044000100000000001E000000430048004C0044005F0049004E0053005400
      52005F004E0041004D0045000100000000001E000000430048004C0044005F00
      49004E005300540052005F0053004F00520054000100000000001E0000004300
      48004C0044005F0049004E005300540052005F0047004F005300540001000000
      000028000000430048004C0044005F0049004E005300540052005F0046005500
      4C004C005F004E0041004D004500010000000000}
    MasterFields = 'Id_Instr'
    Session = DM_Main.Session
    Left = 1026
    Top = 496
    object Db_Linked_Instr_ListPRNT_INSTR_CODE: TStringField
      FieldName = 'PRNT_INSTR_CODE'
      Required = True
    end
    object Db_Linked_Instr_ListPRNT_INSTR_ID: TFloatField
      FieldName = 'PRNT_INSTR_ID'
      Required = True
    end
    object Db_Linked_Instr_ListPRNT_INSTR_NAME: TStringField
      FieldName = 'PRNT_INSTR_NAME'
      Size = 100
    end
    object Db_Linked_Instr_ListPRNT_INSTR_SORT: TStringField
      FieldName = 'PRNT_INSTR_SORT'
      Size = 35
    end
    object Db_Linked_Instr_ListPRNT_INSTR_GOST: TStringField
      FieldName = 'PRNT_INSTR_GOST'
      Size = 35
    end
    object Db_Linked_Instr_ListPRNT_INSTR_FULL_NAME: TStringField
      FieldName = 'PRNT_INSTR_FULL_NAME'
      Size = 172
    end
    object Db_Linked_Instr_ListCHLD_INSTR_CODE: TStringField
      FieldName = 'CHLD_INSTR_CODE'
      Required = True
    end
    object Db_Linked_Instr_ListCHLD_INSTR_ID: TFloatField
      FieldName = 'CHLD_INSTR_ID'
      Required = True
    end
    object Db_Linked_Instr_ListCHLD_INSTR_NAME: TStringField
      FieldName = 'CHLD_INSTR_NAME'
      Size = 100
    end
    object Db_Linked_Instr_ListCHLD_INSTR_SORT: TStringField
      FieldName = 'CHLD_INSTR_SORT'
      Size = 35
    end
    object Db_Linked_Instr_ListCHLD_INSTR_GOST: TStringField
      FieldName = 'CHLD_INSTR_GOST'
      Size = 35
    end
    object Db_Linked_Instr_ListCHLD_INSTR_FULL_NAME: TStringField
      FieldName = 'CHLD_INSTR_FULL_NAME'
      Size = 172
    end
  end
  object Data_Linked_Instr_List: TDataSource
    DataSet = Db_Linked_Instr_List
    Left = 1026
    Top = 348
  end
  object Db_Instr_Card_Img_Rep: TOracleDataSet
    SQL.Strings = (
      'Select :Img_Path Img_Path'
      'From   Dual')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0049004D0047005F0050004100540048000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000010000001000000049004D0047005F00500041005400480001000000
      0000}
    Session = DM_Main.Session
    Active = True
    Left = 1032
    Top = 568
  end
  object Db_Ins_Crd_Instr_Img: TOracleDataSet
    SQL.Strings = (
      'Select :Img_Path Img_Path'
      'From   Dual')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0049004D0047005F0050004100540048000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000010000001000000049004D0047005F00500041005400480001000000
      0000}
    Session = DM_Main.Session
    Left = 680
    Top = 544
  end
  object Data_Ins_Crd_Per_Link_Instrs: TDataSource
    DataSet = MemT_Ins_Crd_Per_Link_Instrs
    OnDataChange = Data_Ins_Crd_Per_InstrsDataChange
    Left = 680
    Top = 600
  end
  object MemT_Ins_Crd_Per_Link_Instrs: TMemTableEh
    CachedUpdates = True
    DetailFields = 'CRD_INS_PER_TP_RW_ID'
    FetchAllOnOpen = True
    MasterFields = 'ID_RW_TP_PER_INS_CRD'
    MasterSource = Data_Ins_Crd_Per_Instrs
    Params = <>
    DataDriver = Driver_Ins_Crd_Per_Link_Instrs
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Ins_Crd_Per_Link_InstrsAfterEdit
    BeforeDelete = MemTableEhBeforeDelete
    AfterScroll = MemT_Ins_Crd_Per_InstrsAfterScroll
    Left = 680
    Top = 648
    object MemT_Ins_Crd_Per_Link_InstrsID_RW_TP_PER_INS_CRD: TIntegerField
      FieldName = 'ID_RW_TP_PER_INS_CRD'
      Required = True
    end
    object MemT_Ins_Crd_Per_Link_InstrsCRD_INS_PER_TP_RW_ID: TIntegerField
      FieldName = 'CRD_INS_PER_TP_RW_ID'
    end
    object MemT_Ins_Crd_Per_Link_InstrsCRD_INS_RW_ID: TIntegerField
      FieldName = 'CRD_INS_RW_ID'
      Required = True
    end
    object MemT_Ins_Crd_Per_Link_InstrsPER_RW_ID: TIntegerField
      FieldName = 'PER_RW_ID'
    end
    object MemT_Ins_Crd_Per_Link_InstrsDOC_TP_ID: TIntegerField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object MemT_Ins_Crd_Per_Link_InstrsINS_ID: TIntegerField
      FieldName = 'INS_ID'
    end
    object MemT_Ins_Crd_Per_Link_InstrsINS_NAME: TStringField
      FieldName = 'INS_NAME'
      Size = 172
    end
    object MemT_Ins_Crd_Per_Link_InstrsINS_CORR_COEF: TFloatField
      FieldName = 'INS_CORR_COEF'
    end
    object MemT_Ins_Crd_Per_Link_InstrsINS_STRONG: TFloatField
      FieldName = 'INS_STRONG'
    end
    object MemT_Ins_Crd_Per_Link_InstrsINS_FACES_NUM: TIntegerField
      FieldName = 'INS_FACES_NUM'
    end
    object MemT_Ins_Crd_Per_Link_InstrsINS_COUNT: TIntegerField
      FieldName = 'INS_COUNT'
    end
    object MemT_Ins_Crd_Per_Link_InstrsINS_WRK_TIME: TIntegerField
      FieldName = 'INS_WRK_TIME'
    end
    object MemT_Ins_Crd_Per_Link_InstrsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Ins_Crd_Per_Link_InstrsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Ins_Crd_Per_Link_InstrsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Ins_Crd_Per_Link_InstrsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Ins_Crd_Per_Link_InstrsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Ins_Crd_Per_Link_InstrsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Ins_Crd_Per_Link_InstrsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Ins_Crd_Per_Link_InstrsUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object MemT_Ins_Crd_Per_Link_InstrsUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object MemT_Ins_Crd_Per_Link_InstrsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
  end
  object Driver_Ins_Crd_Per_Link_Instrs: TDataSetDriverEh
    KeyFields = 'ID_RW_TP_PER_INS_CRD'
    ProviderDataSet = Db_Ins_Crd_Per_Link_Instrs
    Left = 824
    Top = 634
  end
  object Db_Ins_Crd_Per_Link_Instrs: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.User_Change User_Edit,'
      '       t.rowid'
      'From   Ogt.V_Tp_Ok_Per_Ins_Crd t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Doc_Tp_Id = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.ID_RW_TP_PER_INS_CRD Root_Row, '
      '                                                (Case '
      
        '          When a.ID_RW_TP_PER_INS_CRD = CONNECT_BY_ROOT a.ID_RW_' +
        'TP_PER_INS_CRD Then Level||'#39'('#39'||a.ID_RW_TP_PER_INS_CRD||'#39')'#39
      
        '          Else CONNECT_BY_ROOT a.ID_RW_TP_PER_INS_CRD||'#39'/'#39'||Leve' +
        'l||'#39'('#39'||a.ID_RW_TP_PER_INS_CRD||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_Tp_Ok_Per_' +
        'Ins_Crd_Vers a '
      
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Doc_Tp_Id ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.ID_' +
        'RW_TP_PER_INS_CRD = a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                           On Substr(c.Actual,Instr(c.Actual, '#39'(' +
        #39')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(' +
        'to_Char(t.ID_RW_TP_PER_INS_CRD))'
      'Where ((Case'
      '           when t.Doc_Tp_Id = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)'
      ''
      '       And t.Crd_Ins_Per_Tp_Rw_Id Is Not Null')
    Optimize = False
    Variables.Data = {
      04000000030000001C0000003A004C0049004E004B00450044005F0044004F00
      43005F00490044000500000005000000313036310000000000060000003A0049
      004400050000000000000000000000100000003A00490044005F005600450052
      005300050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001700000028000000490044005F00520057005F00540050005F005000
      450052005F0049004E0053005F004300520044000100000000001A0000004300
      520044005F0049004E0053005F00520057005F00490044000100000000001200
      00005000450052005F00520057005F0049004400010000000000120000004400
      4F0043005F00540050005F00490044000100000000000C00000049004E005300
      5F00490044000100000000001000000049004E0053005F004E0041004D004500
      0100000000001A00000049004E0053005F0043004F00520052005F0043004F00
      450046000100000000001400000049004E0053005F005300540052004F004E00
      47000100000000001A00000049004E0053005F00460041004300450053005F00
      4E0055004D000100000000001200000049004E0053005F0043004F0055004E00
      54000100000000001800000049004E0053005F00570052004B005F0054004900
      4D0045000100000000001600000055005300450052005F0049004E0053004500
      520054000100000000001600000044004100540045005F0049004E0053004500
      520054000100000000001600000055005300450052005F004300480041004E00
      470045000100000000001600000044004100540045005F004300480041004E00
      47004500010000000000280000004300520044005F0049004E0053005F005000
      450052005F00540050005F00520057005F00490044000100000000001C000000
      44004F0043005F00540050005F0056004500520053005F004900440001000000
      00000E000000520057005F0056004500520053000100000000001C0000005200
      57005F00490044005F004F004C0044005F005600450052005300010000000000
      1E00000055005300450052005F004100440044005F0049004E00530045005200
      54000100000000001E00000055005300450052005F004100440044005F004300
      480041004E004700450001000000000012000000520057005F00530054004100
      5400550053000100000000001200000055005300450052005F00450044004900
      5400010000000000}
    UniqueFields = 'ID_RW_TP_PER_INS_CRD'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_Tp_Ok_Per_Ins_Crd'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 824
    Top = 666
    object Db_Ins_Crd_Per_Link_InstrsID_RW_TP_PER_INS_CRD: TIntegerField
      FieldName = 'ID_RW_TP_PER_INS_CRD'
      Required = True
    end
    object Db_Ins_Crd_Per_Link_InstrsCRD_INS_PER_TP_RW_ID: TIntegerField
      FieldName = 'CRD_INS_PER_TP_RW_ID'
    end
    object Db_Ins_Crd_Per_Link_InstrsCRD_INS_RW_ID: TIntegerField
      FieldName = 'CRD_INS_RW_ID'
      Required = True
    end
    object Db_Ins_Crd_Per_Link_InstrsPER_RW_ID: TIntegerField
      FieldName = 'PER_RW_ID'
    end
    object Db_Ins_Crd_Per_Link_InstrsDOC_TP_ID: TIntegerField
      FieldName = 'DOC_TP_ID'
      Required = True
    end
    object Db_Ins_Crd_Per_Link_InstrsINS_ID: TIntegerField
      FieldName = 'INS_ID'
    end
    object Db_Ins_Crd_Per_Link_InstrsINS_NAME: TStringField
      FieldName = 'INS_NAME'
      Size = 172
    end
    object Db_Ins_Crd_Per_Link_InstrsINS_CORR_COEF: TFloatField
      FieldName = 'INS_CORR_COEF'
    end
    object Db_Ins_Crd_Per_Link_InstrsINS_STRONG: TFloatField
      FieldName = 'INS_STRONG'
    end
    object Db_Ins_Crd_Per_Link_InstrsINS_FACES_NUM: TIntegerField
      FieldName = 'INS_FACES_NUM'
    end
    object Db_Ins_Crd_Per_Link_InstrsINS_COUNT: TIntegerField
      FieldName = 'INS_COUNT'
    end
    object Db_Ins_Crd_Per_Link_InstrsINS_WRK_TIME: TIntegerField
      FieldName = 'INS_WRK_TIME'
    end
    object Db_Ins_Crd_Per_Link_InstrsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Ins_Crd_Per_Link_InstrsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Ins_Crd_Per_Link_InstrsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Ins_Crd_Per_Link_InstrsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Ins_Crd_Per_Link_InstrsDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Ins_Crd_Per_Link_InstrsRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Ins_Crd_Per_Link_InstrsRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Ins_Crd_Per_Link_InstrsUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object Db_Ins_Crd_Per_Link_InstrsUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object Db_Ins_Crd_Per_Link_InstrsRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Ins_Crd_Per_Link_InstrsUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Db_Oper_Files: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.User_Id_Corr User_Edit,'
      '       t.rowid '
      'From Ogt.V_TP_OK_FILES_DLP t'
      'Left  Join Ogt.V_Spr_Tp_Doc_Actual Info'
      'On    t.Id_Doc_Tp = Info.Id'
      'Join  (Select Max(b.Vers) Actual, b.Root_Row'
      
        '                                   From (Select CONNECT_BY_ROOT ' +
        'a.Id Root_Row, '
      '                                                (Case '
      
        '          When a.Id = CONNECT_BY_ROOT a.Id Then Level||'#39'('#39'||a.Id' +
        '||'#39')'#39
      '          Else CONNECT_BY_ROOT a.Id||'#39'/'#39'||Level||'#39'('#39'||a.Id||'#39')'#39
      '        End ) Vers'
      
        '                                         From   Ogt.V_TP_OK_FILE' +
        'S_DLP_VERS a '
      
        '                                         Left  Join Ogt.V_Spr_Tp' +
        '_Doc_Actual Info'
      #9#9#9#9#9' On    a.Id_Doc_Tp = Info.Id'
      
        '                                         Where  (a.Id_Doc_Tp = :' +
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
      
        '                                                Or( (Info.Main_D' +
        'oc_Id = :Linked_Doc_Id  '
      #9#9#9#9#9#9#9#9'     Or Info.Id = :Linked_Doc_Id) '
      
        '                                                And a.Id_Doc_Tp ' +
        '<> :Id '
      
        '                                                And a.Doc_Tp_Ver' +
        's_Id In ( Select  a.Id_Vers'
      
        #9#9#9#9#9'                                  From    ogt.v_Spr_Tp_Doc ' +
        'a '
      #9#9#9#9#9'                                  Where   a.Id = Info.Id'
      
        #9#9#9#9#9'                                  Connect By Prior a.Parent' +
        '_Doc_Id = a.Doc_Header_Id'
      
        #9#9#9#9#9'                                  Start   With a.Id = Info.' +
        'Id'
      #9#9#9#9#9#9'                          And a.Id_Vers = Info.Id_Vers ))'
      
        '                                         Connect  By Prior a.Id ' +
        '= a.Rw_Id_Old_Vers'
      
        '                                         Start With a.Rw_Id_Old_' +
        'Vers is Null) b'
      '                                   Group By b.Root_Row) c'
      
        '                           On Substr(c.Actual,Instr(c.Actual, '#39'(' +
        #39')+1, ((Instr(c.Actual, '#39')'#39'))-(Instr(c.Actual, '#39'('#39')+1))) = Trim(' +
        'to_Char(t.Id))'
      'Where ((Case'
      '           when t.Id_Doc_Tp = :Id'
      '                And t.Doc_Tp_Vers_Id <> :Id_Vers'
      '                And (t.Rw_Status = '#39'deleted'#39
      '                     Or t.Rw_Vers = '#39'old_version'#39')'
      '           then 0'
      '           else 1'
      '       end) = 1)'
      ''
      '        ')
    Optimize = False
    Variables.Data = {
      0400000003000000060000003A00490044000500000000000000000000001000
      00003A00490044005F0056004500520053000500000000000000000000001C00
      00003A004C0049004E004B00450044005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001300000016000000490044005F0052004F0057005F004F0050004500
      5200010000000000120000004E0041004D0045005F00460049004C0045000100
      000000001800000043004F004D004D0045004E0054005F00460049004C004500
      01000000000004000000490044000100000000000C000000520041005A005200
      410042000100000000000E000000440041005400410049005A004D0001000000
      000016000000520041005A005200410042005F004E0041004D00450001000000
      000012000000490044005F0044004F0043005F00540050000100000000000E00
      000055005300450052005F00490044000100000000000E000000520057005F00
      560045005200530001000000000012000000520057005F005300540041005400
      550053000100000000001C000000520057005F00490044005F004F004C004400
      5F0056004500520053000100000000001C00000044004F0043005F0054005000
      5F0056004500520053005F00490044000100000000001A000000550053004500
      52005F00490044005F0049004E005300520054000100000000001E0000005500
      5300450052005F004100440044005F0049004E00530045005200540001000000
      00001400000044004100540045005F0049004E00530052005400010000000000
      1800000055005300450052005F00490044005F0043004F005200520001000000
      00001E00000055005300450052005F004100440044005F004300480041004E00
      470045000100000000001200000055005300450052005F004500440049005400
      010000000000}
    UniqueFields = 'Id'
    Master = Db_Doc_Info
    MasterFields = 'Id; Id_Vers; Linked_Doc_Id'
    UpdatingTable = 'Ogt.V_TP_OK_FILES_DLP'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 728
    Top = 224
    object Db_Oper_FilesID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Oper_FilesRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object Db_Oper_FilesRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object Db_Oper_FilesRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object Db_Oper_FilesID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
      Required = True
    end
    object Db_Oper_FilesID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
    end
    object Db_Oper_FilesDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object Db_Oper_FilesNAME_FILE: TStringField
      FieldName = 'NAME_FILE'
      Required = True
      Size = 500
    end
    object Db_Oper_FilesCOMMENT_FILE: TStringField
      FieldName = 'COMMENT_FILE'
      Required = True
      Size = 500
    end
    object Db_Oper_FilesRAZRAB: TIntegerField
      FieldName = 'RAZRAB'
      Required = True
    end
    object Db_Oper_FilesRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Oper_FilesDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
    end
    object Db_Oper_FilesUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
    object Db_Oper_FilesUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object Db_Oper_FilesUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object Db_Oper_FilesDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object Db_Oper_FilesUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object Db_Oper_FilesUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object Db_Oper_FilesUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Driver_Oper_Files: TDataSetDriverEh
    KeyFields = 'Id'
    ProviderDataSet = Db_Oper_Files
    Left = 728
    Top = 184
  end
  object MemT_Oper_Files: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_ROW_OPER'
    FetchAllOnOpen = True
    MasterFields = 'ID_ROW_OPER'
    MasterSource = Data_Opers
    Params = <>
    DataDriver = Driver_Oper_Files
    BeforeInsert = MemTableEhBeforeInsert
    BeforeEdit = MemTableEhBeforeEdit
    AfterEdit = MemT_Oper_FilesAfterEdit
    BeforeDelete = MemTableEhBeforeDelete
    OnNewRecord = MemT_Oper_FilesNewRecord
    Left = 728
    Top = 136
    object MemT_Oper_FilesID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Oper_FilesRW_VERS: TStringField
      FieldName = 'RW_VERS'
      Size = 30
    end
    object MemT_Oper_FilesRW_STATUS: TStringField
      FieldName = 'RW_STATUS'
      Size = 30
    end
    object MemT_Oper_FilesRW_ID_OLD_VERS: TIntegerField
      FieldName = 'RW_ID_OLD_VERS'
    end
    object MemT_Oper_FilesID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
      Required = True
    end
    object MemT_Oper_FilesID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
    end
    object MemT_Oper_FilesDOC_TP_VERS_ID: TIntegerField
      FieldName = 'DOC_TP_VERS_ID'
    end
    object MemT_Oper_FilesNAME_FILE: TStringField
      FieldName = 'NAME_FILE'
      Required = True
      Size = 500
    end
    object MemT_Oper_FilesCOMMENT_FILE: TStringField
      FieldName = 'COMMENT_FILE'
      Required = True
      Size = 500
    end
    object MemT_Oper_FilesRAZRAB: TIntegerField
      FieldName = 'RAZRAB'
      Required = True
    end
    object MemT_Oper_FilesRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object MemT_Oper_FilesDATAIZM: TDateTimeField
      FieldName = 'DATAIZM'
    end
    object MemT_Oper_FilesUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
    object MemT_Oper_FilesUSER_ID_INSRT: TStringField
      FieldName = 'USER_ID_INSRT'
      Size = 30
    end
    object MemT_Oper_FilesUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object MemT_Oper_FilesDATE_INSRT: TDateTimeField
      FieldName = 'DATE_INSRT'
    end
    object MemT_Oper_FilesUSER_ID_CORR: TStringField
      FieldName = 'USER_ID_CORR'
      Size = 30
    end
    object MemT_Oper_FilesUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object MemT_Oper_FilesUSER_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_EDIT'
      Size = 30
    end
  end
  object Data_Oper_Files: TDataSource
    DataSet = MemT_Oper_Files
    Left = 728
    Top = 88
  end
  object Seq_Db_Oper_Files: TOracleQuery
    SQL.Strings = (
      'Select Ogt.TP_OK_FILES_DLP$SQN$ID.Nextval'
      'From   Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 728
    Top = 48
  end
  object Db_TechProcSomeInformation: TOracleDataSet
    SQL.Strings = (
      'Select t.Some_Information, t.DOC_HEADER_ID,'
      '       t.rowid '
      'From   SRC.V_TECH_PROC t'
      'Where  t.Doc_Header_Id=:Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000002000000053004F004D0045005F0049004E0046004F005200
      4D004100540049004F004E000100000000001A00000044004F0043005F004800
      450041004400450052005F0049004400010000000000}
    UniqueFields = 'DOC_HEADER_ID'
    Master = Db_Doc_Info
    MasterFields = 'DOC_HEADER_ID'
    UpdatingTable = 'SRC.V_TECH_PROC'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 296
    Top = 656
    object Db_TechProcSomeInformationSOME_INFORMATION: TStringField
      FieldName = 'SOME_INFORMATION'
      Size = 2000
    end
    object Db_TechProcSomeInformationDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
  end
  object Data_TechProcSomeInformation: TDataSource
    DataSet = Db_TechProcSomeInformation
    Left = 312
    Top = 592
  end
  object Db_Frame_Params: TOracleDataSet
    SQL.Strings = (
      'Select t.*'
      'From   Ogt.V_Spr_Tp_Doc_Type_Frame_Prms t'
      'Where  t.Tp_Doc_Type_Id=:Doc_Type')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0044004F0043005F0054005900500045000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000001C000000540050005F0044004F0043005F00540059005000
      45005F00490044000100000000001C00000043004F004D0050004F004E004500
      4E0054005F004E0041004D0045000100000000002400000043004F004D005000
      4F004E0045004E0054005F00500052004F005000450052005400590001000000
      00002A00000043004F004D0050004F004E0045004E0054005F00500052005000
      540059005F00560041004C0055004500010000000000}
    Master = Db_Doc_Info
    MasterFields = 'Doc_Type'
    Session = DM_Main.Session
    Left = 912
    Top = 64
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
end
