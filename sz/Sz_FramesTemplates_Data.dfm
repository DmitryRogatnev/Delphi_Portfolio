object Data_Templates: TData_Templates
  OldCreateOrder = False
  Height = 665
  Width = 924
  object Db_DepartmentDocs: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       d.dep_Code,'
      '       u.Emp_Fio User_Name'
      'From   Mrk.V_SZ_PRICE_REQUEST_MAIN t'
      'Left   Join Stp.v_Deps d'
      'On     d.id_dep=t.Sz_Dep_Id'
      '       And Nvl(d.Date_Expitation, Sysdate) >= Sysdate'
      'Left   Join Stp.v_Users u'
      'On     u.Id_User=t.i_user'
      '       And u.Id_User_Add=t.i_user_add'
      'order by SZ_DATE desc, SZ_NUMBER desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000E0000000E00000053005A005F004400410054004500010000000000
      1E000000490044005F0053005A005F00500052004900430045005F0052004500
      51000100000000001E00000053005A005F00500052004900430045005F005200
      450051005F00490044000100000000001200000053005A005F00440045005000
      5F00490044000100000000001200000053005A005F004E0055004D0042004500
      52000100000000000E00000053005A005F004E004F0054004500010000000000
      0C00000049005F0055005300450052000100000000001400000049005F005500
      5300450052005F004100440044000100000000000C00000049005F0044004100
      540045000100000000000C00000055005F005500530045005200010000000000
      1400000055005F0055005300450052005F004100440044000100000000000C00
      000055005F004400410054004500010000000000100000004400450050005F00
      43004F00440045000100000000001200000055005300450052005F004E004100
      4D004500010000000000}
    ReadOnly = True
    QueryAllRecords = False
    Session = DM_Main.Session
    Left = 88
    Top = 272
    object Db_DepartmentDocsID_SZ_PRICE_REQ: TIntegerField
      FieldName = 'ID_SZ_PRICE_REQ'
      Required = True
    end
    object Db_DepartmentDocsSZ_PRICE_REQ_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ID'
    end
    object Db_DepartmentDocsSZ_DEP_ID: TIntegerField
      FieldName = 'SZ_DEP_ID'
    end
    object Db_DepartmentDocsSZ_NUMBER: TStringField
      FieldName = 'SZ_NUMBER'
      Size = 100
    end
    object Db_DepartmentDocsSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object Db_DepartmentDocsSZ_NOTE: TStringField
      FieldName = 'SZ_NOTE'
      Size = 1000
    end
    object Db_DepartmentDocsI_USER: TStringField
      FieldName = 'I_USER'
      Size = 30
    end
    object Db_DepartmentDocsI_USER_ADD: TIntegerField
      FieldName = 'I_USER_ADD'
    end
    object Db_DepartmentDocsI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object Db_DepartmentDocsU_USER: TStringField
      FieldName = 'U_USER'
      Size = 30
    end
    object Db_DepartmentDocsU_USER_ADD: TIntegerField
      FieldName = 'U_USER_ADD'
    end
    object Db_DepartmentDocsU_DATE: TDateTimeField
      FieldName = 'U_DATE'
    end
    object Db_DepartmentDocsDEP_CODE: TStringField
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object Db_DepartmentDocsUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 26
    end
  end
end
