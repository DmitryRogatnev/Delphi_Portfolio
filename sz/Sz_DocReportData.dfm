object Dm_ReportData: TDm_ReportData
  OldCreateOrder = False
  Height = 611
  Width = 886
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
      '       phn.tphone,'
      '       t.I_User,'
      '       t.I_Date,'
      '       t.U_User,'
      '       r.Date_Start_Route,'
      '       r.Date_End_Route,'
      '        cf.Cont_Emp_Id,'
      '       pe.Id_Emp,'
      '       pe.Emp_Fio Header_Emp_Fio,'
      
        '       Upper(Substr(pe.Profession, 0, 1))||Substr(pe.Profession,' +
        ' 2) Header_Profession,'
      
        '       Mrk.Pkg_Sz_Price_Req.f_ChangeUserInfoByPadeg(infoempid =>' +
        ' cte.Id_Emp,'
      
        '                                                      infocolumn' +
        ' => '#39'Emp_Fio'#39','
      
        '                                                      padeg => '#39 +
        'to'#39') To_Emp_Fio,'
      
        '        Mrk.Pkg_Sz_Price_Req.f_ChangeUserInfoByPadeg(infoempid =' +
        '> cte.Id_Emp,'
      
        '                                                      infocolumn' +
        ' => '#39'Profession'#39','
      
        '                                                      padeg => '#39 +
        'to'#39') To_Profession,'
      '       p.Result_Date Header_Sign_Date'
      'From Src.V_SZ_PRICE_REQUEST t'
      'Left  Join Src.V_Doc_Routs r'
      'On    r.Doc_Header_Id=t.Doc_Header_Id'
      'Left  Join Mrk.V_Sz_Price_Req_Contacts ct'
      'On    ct.Sz_Price_Req_Id=t.Id_Sz_Price_Req'
      '      And ct.Cont_Section='#39'to'#39
      'Left  Join Mrk.V_Sz_Price_Req_Contacts cf'
      'On    cf.Sz_Price_Req_Id=t.Id_Sz_Price_Req'
      '      And cf.Cont_Section='#39'from'#39
      'Left   Join Stp.V_Users ctu'
      'On     (ctu.Id_User=ct.Cont_User_Id'
      '       or ctu.Emp_Id=ct.Cont_Emp_Id)'
      '       And ctu.Act_Status=1'
      'Left  Join Src.v_Emps cte'
      'On    cte.Id_Emp=ctu.Emp_Id'
      'Left  Join Src.v_Doc_Rout_Points p'
      'On    p.Doc_Rout_Id=t.Doc_Header_Id'
      '      And p.Stp_Doc_Rout_Point_Id in (2607, 2601, 2605)'
      'Left  Join Stp.v_Users pu'
      'On    pu.Id_User=p.Result_User_Id'
      '      And pu.Id_User_Add=p.Result_User_Id_Add'
      'Left  Join Src.v_Emps pe'
      'On    pe.Id_Emp=Nvl(pu.Emp_Id, cf.Cont_Emp_Id)'
      'Left  Join Stp.v_Users u'
      'On    u.Id_User=t.i_User'
      '      And u.Id_User_Add=t.I_User_Add'
      'Left  Join pers.Spr_Phone phn'
      'On    phn.Lnum = u.Emp_Id'
      'Left  Join Stp.V_Deps dep'
      'On    Dep.Id_Dep=t.Sz_Dep_Id'
      '      And Nvl(Dep.Date_Expitation, Sysdate)>=Sysdate'
      'Where t.Doc_Header_Id=:InDocHeaderId')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0049004E0044004F0043004800450041004400
      4500520049004400050000000600000031353531380000000000}
    SequenceField.Field = 'DOC_HEADER_ID'
    SequenceField.Sequence = 'SRC.S_DOC_HEADERS'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000160000001E000000490044005F0053005A005F005000520049004300
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
      4E0055004D004200450052000100000000001C00000048004500410044004500
      52005F0045004D0050005F00460049004F000100000000002200000048004500
      41004400450052005F00500052004F00460045005300530049004F004E000100
      00000000200000004800450041004400450052005F005300490047004E005F00
      44004100540045000100000000000C0000005400500048004F004E0045000100
      000000001400000054004F005F0045004D0050005F00460049004F0001000000
      00001A00000054004F005F00500052004F00460045005300530049004F004E00
      0100000000001600000043004F004E0054005F0045004D0050005F0049004400
      0100000000000C000000490044005F0045004D005000010000000000}
    UniqueFields = 'Doc_Header_Id'
    UpdatingTable = 'Src.V_SZ_PRICE_REQUEST'
    Session = DM_Main.Session
    Left = 37
    Top = 24
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
    object Db_DocHEADER_EMP_FIO: TStringField
      FieldName = 'HEADER_EMP_FIO'
      Size = 26
    end
    object Db_DocHEADER_PROFESSION: TStringField
      FieldName = 'HEADER_PROFESSION'
      Size = 255
    end
    object Db_DocHEADER_SIGN_DATE: TDateTimeField
      FieldName = 'HEADER_SIGN_DATE'
    end
    object Db_DocTPHONE: TStringField
      FieldName = 'TPHONE'
      Size = 15
    end
    object Db_DocTO_EMP_FIO: TStringField
      FieldName = 'TO_EMP_FIO'
      Size = 26
    end
    object Db_DocTO_PROFESSION: TStringField
      FieldName = 'TO_PROFESSION'
      Size = 255
    end
  end
  object Db_Doc_Contacts: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       Dep.Dep_Sname,'
      '       (Case'
      '          When t.Cont_Section='#39'from'#39' Then '#39#1054#1090#39
      '          When t.Cont_Section='#39'to'#39' Then '#39#1050#1086#1084#1091#39
      '          When t.Cont_Section='#39'copy'#39' Then '#39#1050#1086#1087#1080#1103#39
      '        End) Cont_Section_Name,'
      
        '       Mrk.Pkg_Sz_Price_Req.f_ChangeUserInfoByPadeg(infoempid =>' +
        ' t.Cont_Emp_Id,'
      
        '                                                      infocolumn' +
        ' => '#39'Emp_Fio'#39','
      
        '                                                      padeg => D' +
        'ecode(t.Cont_Section, '#39'copy'#39', '#39'to'#39', t.Cont_Section)) Emp_Fio,'
      
        '        Mrk.Pkg_Sz_Price_Req.f_ChangeUserInfoByPadeg(infoempid =' +
        '> t.Cont_Emp_Id,'
      
        '                                                      infocolumn' +
        ' => '#39'Profession'#39','
      
        '                                                      padeg => D' +
        'ecode(t.Cont_Section, '#39'copy'#39', '#39'to'#39', t.Cont_Section)) Profession'
      'From   Mrk.V_Sz_Price_Req_Contacts t'
      'Left   Join Stp.V_Deps Dep'
      'On     Dep.Id_Dep=t.Cont_Dep_Id'
      '       And Nvl(Dep.Date_Expitation, Sysdate)>=Sysdate'
      'Left   Join Stp.V_Users u'
      'On     (u.Id_User=t.Cont_User_Id'
      '       or u.Emp_Id=t.Cont_Emp_Id)'
      '       And u.Act_Status=1'
      'Left  Join Src.v_Emps e'
      'On    e.Id_Emp=u.Emp_Id'
      'Where  Sz_Price_Req_Id=:Id_Sz_Price_Req')
    Optimize = False
    Variables.Data = {
      0400000001000000200000003A00490044005F0053005A005F00500052004900
      430045005F00520045005100050000000300000036340000000000}
    StringFieldsOnly = True
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000001000000022000000490044005F0053005A005F00500052005F005200
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
      45004D0050005F00460049004F0001000000000014000000500052004F004600
      45005300530049004F004E00010000000000}
    UniqueFields = 'ID_SZ_PR_REQ_CONT'
    Master = Db_Doc
    MasterFields = 'ID_SZ_PRICE_REQ'
    Session = DM_Main.Session
    Left = 197
    Top = 24
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
    object Db_Doc_ContactsI_USER_ADD: TStringField
      FieldName = 'I_USER_ADD'
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
      Size = 5
    end
    object Db_Doc_ContactsEMP_FIO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'EMP_FIO'
      Size = 26
    end
    object Db_Doc_ContactsPROFESSION: TStringField
      FieldName = 'PROFESSION'
      Size = 282
    end
  end
  object Db_Doc_Content: TOracleDataSet
    SQL.Strings = (
      'select t.*,'
      '       Item_Price*((Item_Nds/100)+1) Item_Price_n_Nds,'
      '       u.Emp_Fio User_Correct '
      'from   Mrk.V_SZ_PRICE_REQ_ITEMS t'
      'Left   Join Stp.v_Users u'
      'On     u.Id_User=t.u_User'
      '       And u.Id_User_Add=t.u_User_add'
      'Where  t.Sz_Price_Req_Id=:Id_Sz_Price_Req')
    Optimize = False
    Variables.Data = {
      0400000001000000200000003A00490044005F0053005A005F00500052004900
      430045005F00520045005100050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000001500000028000000490044005F0053005A005F005000520049004300
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
      00000000}
    UniqueFields = 'ID_SZ_PRICE_REQ_ITEM'
    Master = Db_Doc
    MasterFields = 'ID_SZ_PRICE_REQ'
    Session = DM_Main.Session
    Left = 109
    Top = 24
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
  end
  object frxData_Doc: TfrxDBDataset
    UserName = 'frxData_Doc'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID_SZ_PRICE_REQ=ID_SZ_PRICE_REQ'
      'DOC_HEADER_ID=DOC_HEADER_ID'
      'SZ_PRICE_REQ_ID=SZ_PRICE_REQ_ID'
      'SZ_NUMBER=SZ_NUMBER'
      'SZ_DEP_NUMBER=SZ_DEP_NUMBER'
      'SZ_DATE=SZ_DATE'
      'SZ_NOTE=SZ_NOTE'
      'SZ_DEP_ID=SZ_DEP_ID'
      'EMP_FIO=EMP_FIO'
      'I_USER=I_USER'
      'I_DATE=I_DATE'
      'U_USER=U_USER'
      'DATE_START_ROUTE=DATE_START_ROUTE'
      'DATE_END_ROUTE=DATE_END_ROUTE'
      'HEADER_EMP_FIO=HEADER_EMP_FIO'
      'HEADER_PROFESSION=HEADER_PROFESSION'
      'HEADER_SIGN_DATE=HEADER_SIGN_DATE'
      'TPHONE=TPHONE'
      'TO_EMP_FIO=TO_EMP_FIO'
      'TO_PROFESSION=TO_PROFESSION')
    DataSet = Db_Doc
    BCDToCurrency = False
    Left = 32
    Top = 104
  end
  object frxData_Doc_Content: TfrxDBDataset
    UserName = 'frxData_Doc_Content'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID_SZ_PRICE_REQ_ITEM=ID_SZ_PRICE_REQ_ITEM'
      'SZ_PRICE_REQ_ITEM_ID=SZ_PRICE_REQ_ITEM_ID'
      'SZ_PRICE_REQ_ID=SZ_PRICE_REQ_ID'
      'ITEM_POS_NUM=ITEM_POS_NUM'
      'ITEM_CODE=ITEM_CODE'
      'ITEM_NUM=ITEM_NUM'
      'ITEM_NAME=ITEM_NAME'
      'ITEM_PRICE=ITEM_PRICE'
      'ITEM_NDS=ITEM_NDS'
      'ITEM_PRICE_DATE_START=ITEM_PRICE_DATE_START'
      'ITEM_PRICE_DATE_END=ITEM_PRICE_DATE_END'
      'ITEM_NOTE=ITEM_NOTE'
      'ITEM_USE_FLAG=ITEM_USE_FLAG'
      'I_USER=I_USER'
      'I_USER_ADD=I_USER_ADD'
      'I_DATE=I_DATE'
      'U_USER=U_USER'
      'U_USER_ADD=U_USER_ADD'
      'U_DATE=U_DATE'
      'USER_CORRECT=USER_CORRECT'
      'ITEM_PRICE_N_NDS=ITEM_PRICE_N_NDS')
    DataSet = Db_Doc_Content
    BCDToCurrency = False
    Left = 112
    Top = 104
  end
  object frxData_Doc_Contacts: TfrxDBDataset
    UserName = 'frxData_Doc_Contacts'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID_SZ_PR_REQ_CONT=ID_SZ_PR_REQ_CONT'
      'SZ_PRICE_REQ_ID=SZ_PRICE_REQ_ID'
      'CONT_EMP_ID=CONT_EMP_ID'
      'CONT_USER_ID=CONT_USER_ID'
      'CONT_SECTION=CONT_SECTION'
      'CONT_DEP_ID=CONT_DEP_ID'
      'I_USER=I_USER'
      'I_USER_ADD=I_USER_ADD'
      'I_DATE=I_DATE'
      'U_USER=U_USER'
      'U_USER_ADD=U_USER_ADD'
      'U_DATE=U_DATE'
      'DEP_SNAME=DEP_SNAME'
      'CONT_SECTION_NAME=CONT_SECTION_NAME'
      'EMP_FIO=EMP_FIO'
      'PROFESSION=PROFESSION')
    DataSet = Db_Doc_Contacts
    BCDToCurrency = False
    Left = 208
    Top = 104
  end
  object frxReport261: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45520.463909016200000000
    ReportOptions.LastChange = 45533.644019872680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if VarToStr(Report.GetDataset('#39'frxData_Doc'#39').Value['#39'DATE_START' +
        '_ROUTE'#39'])='#39#39
      '  then'
      '  begin'
      '    M_HeadProf.Visible:=False;'
      '    M_HeadName.Visible:=False;'
      '    M_HeadSign.Visible:=False;'
      
        '    M_StartRoutFlag.Visible:=True;                              ' +
        '                                      '
      '  end'
      '  else'
      '  begin    '
      '    M_HeadProf.Visible:=True;'
      '    M_HeadName.Visible:=True;'
      '    M_HeadSign.Visible:=True;'
      '    M_StartRoutFlag.Visible:=False;  '
      '  end;'
      ''
      '  if <TotalPages>>1'
      '  then'
      '    M_Pages.Visible:=True'
      '  else'
      
        '    M_Pages.Visible:=False;                                     ' +
        '            '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 80
    Top = 256
    Datasets = <
      item
        DataSet = frxData_Doc
        DataSetName = 'frxData_Doc'
      end
      item
        DataSet = frxData_Doc_Comms
        DataSetName = 'frxData_Doc_Comms'
      end
      item
        DataSet = frxData_Doc_Contacts
        DataSetName = 'frxData_Doc_Contacts'
      end
      item
        DataSet = frxData_Doc_Content
        DataSetName = 'frxData_Doc_Content'
      end
      item
        DataSet = frxData_Doc_Points
        DataSetName = 'frxData_Doc_Points'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 34.015770000000010000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 718.110700000000000000
          Height = 34.015770000000010000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1057#1083#1091#1078#1077#1073#1085#1072#1103' '#1079#1072#1087#1080#1089#1082#1072' '#8470' '#1047#1057'-[frxData_Doc."SZ_DEP_NUMBER"] '#1086#1090' [frxData' +
              '_Doc."SZ_DATE"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 657.638220000000000000
        Width = 718.110700000000000000
        object Memo27: TfrxMemoView
          Align = baLeft
          Width = 536.693260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1048#1089#1087'.: [frxData_Doc."EMP_FIO"] '#1090#1077#1083'.: [frxData_Doc."TPHONE"]')
          ParentFont = False
        end
        object M_Pages: TfrxMemoView
          Align = baRight
          Left = 536.693259999999900000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1089#1090#1088'. [Page] '#1080#1079' [TotalPages]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        DataSet = frxData_Doc_Contacts
        DataSetName = 'frxData_Doc_Contacts'
        RowCount = 0
        Stretched = True
        object frxData_Doc_ContactsCONT_SECTION_NAME: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxData_Doc_Contacts
          DataSetName = 'frxData_Doc_Contacts'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          GapX = 1.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxData_Doc_Contacts."CONT_SECTION_NAME"]:')
          ParentFont = False
        end
        object frxData_Doc_ContactsPROFESSION: TfrxMemoView
          Left = 113.385900000000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxData_Doc_Contacts
          DataSetName = 'frxData_Doc_Contacts'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          GapX = 10.000000000000000000
          Memo.UTF8W = (
            
              '[frxData_Doc_Contacts."PROFESSION"] [frxData_Doc_Contacts."EMP_F' +
              'IO"]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 113.385900000000000000
          Width = 604.724800000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          GapX = 10.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxData_Doc."SZ_NOTE"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataSet = frxData_Doc_Contacts
          DataSetName = 'frxData_Doc_Contacts'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          GapX = 1.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1058#1077#1084#1072':')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baBottom
          Top = 41.574830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Top = 30.236240000000010000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          GapX = 10.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            #1055#1088#1086#1096#1091' '#1089#1086#1086#1073#1097#1080#1090#1100' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103':')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        DataSet = frxData_Doc_Content
        DataSetName = 'frxData_Doc_Content'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          GapX = 10.000000000000000000
          Memo.UTF8W = (
            
              '[frxData_Doc_Content."ITEM_POS_NUM"]. [frxData_Doc_Content."ITEM' +
              '_NAME"] [frxData_Doc_Content."ITEM_NUM"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        Stretched = True
        object M_HeadProf: TfrxMemoView
          Align = baBottom
          Top = 41.574830000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'HEADER_PROFESSION'
          DataSet = frxData_Doc
          DataSetName = 'frxData_Doc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxData_Doc."HEADER_PROFESSION"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object M_HeadName: TfrxMemoView
          Align = baBottom
          Left = 529.134200000000000000
          Top = 41.574830000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'HEADER_EMP_FIO'
          DataSet = frxData_Doc
          DataSetName = 'frxData_Doc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxData_Doc."HEADER_EMP_FIO"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object M_HeadSign: TfrxMemoView
          Align = baBottom
          Left = 340.157700000000000000
          Top = 41.574830000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object M_StartRoutFlag: TfrxMemoView
          Align = baWidth
          Top = 11.338590000000010000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1044#1086#1082#1091#1084#1077#1085#1090' '#1085#1077' '#1086#1090#1087#1088#1072#1074#1083#1077#1085' '#1085#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077')')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 578.268090000000000000
        Width = 718.110700000000000000
        DataSet = frxData_Doc_Points
        DataSetName = 'frxData_Doc_Points'
        RowCount = 0
        Stretched = True
        object frxData_Doc_PointsPOINT_NAME: TfrxMemoView
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'POINT_NAME'
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Points."POINT_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 188.976500000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'RESULT_DATE'
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Points."RESULT_DATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 302.362400000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'EMP_FIO'
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Points."EMP_FIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Top = 71.811070000000030000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 188.976500000000000000
          Top = 71.811070000000030000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 302.362400000000000000
          Top = 71.811070000000030000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060'.'#1048'.'#1054'.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        DataSet = frxData_Doc_Comms
        DataSetName = 'frxData_Doc_Comms'
        RowCount = 0
        Stretched = True
        object frxData_Doc_CommsCOMM_TEXT: TfrxMemoView
          Width = 721.890230000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DataSet = frxData_Doc_Comms
          DataSetName = 'frxData_Doc_Comms'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          GapX = 10.000000000000000000
          Memo.UTF8W = (
            
              '[frxData_Doc_Comms."COMM_TEXT"]. [frxData_Doc_Comms."EMP_FIO"] (' +
              '[frxData_Doc_Comms."DATE_INSERT"])')
          ParentFont = False
        end
      end
    end
  end
  object frxReportMain: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45520.544175775460000000
    ReportOptions.LastChange = 45520.544175775460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 376
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object Db_Doc_Points: TOracleDataSet
    SQL.Strings = (
      'Select t.*, e.Emp_Fio, e.Profession'
      'From   Src.v_Doc_Rout_Points t'
      'Left   Join Stp.V_Users u'
      'On     u.Id_User=t.Result_User_Id'
      '       And u.Id_User_Add=t.Result_User_Id_Add'
      'Left  Join Src.v_Emps e'
      'On    e.Id_Emp=u.Emp_Id'
      'Where  t.Doc_Rout_Id=:Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000600000031353531380000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000E00000022000000490044005F0044004F0043005F0052004F005500
      54005F0050004F0049004E0054000100000000001600000044004F0043005F00
      52004F00550054005F00490044000100000000001C00000050004F0049004E00
      54005F0050004F0053004900540049004F004E00010000000000200000005000
      4F0049004E0054005F00450058005000490052004100540049004F004E000100
      000000001400000050004F0049004E0054005F004E0041004D00450001000000
      00002A0000005300540050005F0044004F0043005F0052004F00550054005F00
      50004F0049004E0054005F004900440001000000000014000000440041005400
      45005F0045004E00540045005200010000000000380000005300540050005F00
      44004F0043005F005200450053004F004C005500540049004F004E005F005200
      4500530055004C0054005F004900440001000000000016000000520045005300
      55004C0054005F00440041005400450001000000000016000000520045005300
      55004C0054005F004E004F00540045000100000000001C000000520045005300
      55004C0054005F0055005300450052005F004900440001000000000024000000
      52004500530055004C0054005F0055005300450052005F00490044005F004100
      440044000100000000000E00000045004D0050005F00460049004F0001000000
      000014000000500052004F00460045005300530049004F004E00010000000000}
    Master = Db_Doc
    MasterFields = 'Doc_Header_Id'
    Session = DM_Main.Session
    Left = 288
    Top = 24
    object Db_Doc_PointsID_DOC_ROUT_POINT: TIntegerField
      FieldName = 'ID_DOC_ROUT_POINT'
      Required = True
    end
    object Db_Doc_PointsDOC_ROUT_ID: TIntegerField
      FieldName = 'DOC_ROUT_ID'
      Required = True
    end
    object Db_Doc_PointsPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Required = True
      Size = 30
    end
    object Db_Doc_PointsPOINT_EXPIRATION: TIntegerField
      FieldName = 'POINT_EXPIRATION'
    end
    object Db_Doc_PointsPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 50
    end
    object Db_Doc_PointsSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_Doc_PointsDATE_ENTER: TDateTimeField
      FieldName = 'DATE_ENTER'
    end
    object Db_Doc_PointsSTP_DOC_RESOLUTION_RESULT_ID: TIntegerField
      FieldName = 'STP_DOC_RESOLUTION_RESULT_ID'
    end
    object Db_Doc_PointsRESULT_DATE: TDateTimeField
      FieldName = 'RESULT_DATE'
    end
    object Db_Doc_PointsRESULT_NOTE: TStringField
      FieldName = 'RESULT_NOTE'
      Size = 500
    end
    object Db_Doc_PointsRESULT_USER_ID: TStringField
      FieldName = 'RESULT_USER_ID'
      Size = 30
    end
    object Db_Doc_PointsRESULT_USER_ID_ADD: TIntegerField
      FieldName = 'RESULT_USER_ID_ADD'
    end
    object Db_Doc_PointsEMP_FIO: TStringField
      FieldName = 'EMP_FIO'
      Size = 26
    end
    object Db_Doc_PointsPROFESSION: TStringField
      FieldName = 'PROFESSION'
      Size = 255
    end
  end
  object frxData_Doc_Points: TfrxDBDataset
    UserName = 'frxData_Doc_Points'
    CloseDataSource = False
    DataSet = Db_Doc_Points
    BCDToCurrency = False
    Left = 320
    Top = 104
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    OpenAfterExport = True
    PrintOptimized = True
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 400
    Top = 392
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = True
    PictureType = gpPNG
    Left = 488
    Top = 392
  end
  object Db_Doc_ItemComms: TOracleDataSet
    SQL.Strings = (
      'Select t.*,'
      '       u.Emp_Fio'
      'From Src.V_DOC_COMMS t '
      'Left   Join Stp.V_Users u'
      'On     u.Id_User=t.User_Insert'
      '       And u.Id_User_Add=t.User_Add_Insert'
      'Where t.Item_Id=:ID_SZ_PRICE_REQ_ITEM'
      '      And t.Item_Source='#39'mrk.v_sz_price_req_items'#39)
    Optimize = False
    Variables.Data = {
      04000000010000002A0000003A00490044005F0053005A005F00500052004900
      430045005F005200450051005F004900540045004D0005000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      05000000100000001A000000490044005F00520057005F00440043005F004300
      4F004D004D000100000000001A00000044004F0043005F004800450041004400
      450052005F00490044000100000000001600000044004F0043005F0054005900
      500045005F00490044000100000000001400000044004F0043005F004E005500
      4D004200450052000100000000001A000000440043005F0043004F004D004D00
      5F00520057005F00490044000100000000000E0000004900540045004D005F00
      49004400010000000000120000004900540045004D005F0043004F0044004500
      010000000000160000004900540045004D005F0053004F005500520043004500
      0100000000001200000043004F004D004D005F00540045005800540001000000
      00001600000055005300450052005F0049004E00530045005200540001000000
      00001600000044004100540045005F0049004E00530045005200540001000000
      00001600000055005300450052005F004300480041004E004700450001000000
      00001600000044004100540045005F004300480041004E004700450001000000
      00001E00000055005300450052005F004100440044005F0049004E0053004500
      520054000100000000001E00000055005300450052005F004100440044005F00
      4300480041004E00470045000100000000000E00000045004D0050005F004600
      49004F00010000000000}
    Master = Db_Doc_Content
    MasterFields = 'ID_SZ_PRICE_REQ_ITEM'
    Session = DM_Main.Session
    Left = 408
    Top = 24
    object Db_Doc_ItemCommsID_RW_DC_COMM: TFloatField
      FieldName = 'ID_RW_DC_COMM'
      Required = True
    end
    object Db_Doc_ItemCommsDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Doc_ItemCommsDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Doc_ItemCommsDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Doc_ItemCommsDC_COMM_RW_ID: TFloatField
      FieldName = 'DC_COMM_RW_ID'
    end
    object Db_Doc_ItemCommsITEM_ID: TFloatField
      FieldName = 'ITEM_ID'
    end
    object Db_Doc_ItemCommsITEM_CODE: TStringField
      FieldName = 'ITEM_CODE'
      Size = 30
    end
    object Db_Doc_ItemCommsITEM_SOURCE: TStringField
      FieldName = 'ITEM_SOURCE'
      Size = 30
    end
    object Db_Doc_ItemCommsCOMM_TEXT: TStringField
      FieldName = 'COMM_TEXT'
      Size = 3000
    end
    object Db_Doc_ItemCommsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Doc_ItemCommsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Doc_ItemCommsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Doc_ItemCommsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Doc_ItemCommsUSER_ADD_INSERT: TIntegerField
      FieldName = 'USER_ADD_INSERT'
    end
    object Db_Doc_ItemCommsUSER_ADD_CHANGE: TIntegerField
      FieldName = 'USER_ADD_CHANGE'
    end
    object Db_Doc_ItemCommsEMP_FIO: TStringField
      FieldName = 'EMP_FIO'
      Size = 26
    end
  end
  object frxData_Doc_Comms: TfrxDBDataset
    UserName = 'frxData_Doc_Comms'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_RW_DC_COMM=ID_RW_DC_COMM'
      'DOC_HEADER_ID=DOC_HEADER_ID'
      'DOC_TYPE_ID=DOC_TYPE_ID'
      'DOC_NUMBER=DOC_NUMBER'
      'DC_COMM_RW_ID=DC_COMM_RW_ID'
      'ITEM_ID=ITEM_ID'
      'ITEM_CODE=ITEM_CODE'
      'ITEM_SOURCE=ITEM_SOURCE'
      'COMM_TEXT=COMM_TEXT'
      'USER_INSERT=USER_INSERT'
      'DATE_INSERT=DATE_INSERT'
      'USER_CHANGE=USER_CHANGE'
      'DATE_CHANGE=DATE_CHANGE'
      'USER_ADD_INSERT=USER_ADD_INSERT'
      'USER_ADD_CHANGE=USER_ADD_CHANGE'
      'EMP_FIO=EMP_FIO')
    DataSet = Db_Doc_ItemComms
    BCDToCurrency = False
    Left = 424
    Top = 104
  end
  object frxReport184: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45527.545126423600000000
    ReportOptions.LastChange = 45530.424742766200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if VarToStr(Report.GetDataset('#39'frxData_Doc'#39').Value['#39'DATE_START' +
        '_ROUTE'#39'])='#39#39
      '  then'
      '  begin'
      '    M_HeadProf.Visible:=False;'
      '    M_HeadName.Visible:=False;'
      '    M_HeadSign.Visible:=False;'
      
        '    M_StartRoutFlag.Visible:=True;                              ' +
        '                                      '
      '  end'
      '  else'
      '  begin    '
      '    M_HeadProf.Visible:=True;'
      '    M_HeadName.Visible:=True;'
      '    M_HeadSign.Visible:=True;'
      '    M_StartRoutFlag.Visible:=False;  '
      '  end;'
      ''
      '  if <TotalPages>>1'
      '  then'
      '    M_Pages.Visible:=True'
      '  else'
      '    M_Pages.Visible:=False;  '
      'end;'
      ''
      'procedure Page1OnManualBuild(Sender: TfrxComponent); '
      'var'
      '  ContentDataSet, LinksDataSet: TfrxDataSet;'
      
        '  LinkedDocList: TStringList;                                   ' +
        '                                              '
      '  ItemsLinks: String;'
      '  DocsDate: String;                                       '
      '  i: Integer;                           '
      'begin'
      '   ContentDataSet:=Md_Content.DataSet;'
      
        '   LinksDataSet:=Report.GetDataSet('#39'frxData_ContentLinks'#39');     ' +
        '                                                   '
      '   Engine.ShowBand(Hdr_Content);'
      '   ContentDataSet.First;'
      '   while not ContentDataSet.Eof'
      '   do'
      '   begin'
      '     ItemsLinks:='#39#39';                                            '
      '     LinksDataSet.First;'
      '     LinkedDocList:=TStringList.Create;'
      '     for i:=1 to LinksDataSet.RecordCount'
      '     do   '
      '     begin'
      '       if DocsDate<>DateToStr(LinksDataSet.Value['#39'SZ_DATE'#39'])'
      '       then                 '
      '         DocsDate:=DateToStr(LinksDataSet.Value['#39'SZ_DATE'#39']);'
      '           '
      '       if ((DocsDate<>DateToStr(LinksDataSet.Value['#39'SZ_DATE'#39']))'
      '           or (i=LinksDataSet.RecordCount))'
      '           and (i>1)                                 '
      '       then'
      '       begin'
      '         if ItemsLinks='#39#39
      '         then'
      
        '           ItemsLinks:=Format('#39#8470#1047#1057'-%s '#1086#1090' %s'#39', [LinkedDocList.Com' +
        'maText, DocsDate])'
      
        '         else                                                   ' +
        '                      '
      
        '           ItemsLinks:=ItemsLinks+Format('#39', '#8470#1047#1057'-%s '#1086#1090' %s'#39', [Link' +
        'edDocList.CommaText, DocsDate]);'
      '         LinkedDocList.Clear;'
      
        '         LinkedDocList.Add(LinksDataSet.Value['#39'SZ_DEP_NUMBER'#39']);' +
        '               '
      '       end'
      '       else'
      
        '         LinkedDocList.Add(LinksDataSet.Value['#39'SZ_DEP_NUMBER'#39']);' +
        '                                                               '
      '       LinksDataSet.Next;                                   '
      '     end;'
      '       '
      '     if (ItemsLinks='#39#39')'
      
        '         and (LinkedDocList.Count>0)                            ' +
        '                                             '
      '     then'
      
        '       ItemsLinks:=Format('#39#8470#1047#1057'-%s '#1086#1090' %s'#39', [LinkedDocList.CommaTe' +
        'xt, DocsDate]);             '
      '     Md_LinkedDocs.Text:=ItemsLinks;                      '
      '     Engine.ShowBand(Md_Content);         '
      '     ContentDataSet.Next;                            '
      '   end;                      '
      '   Engine.ShowBand(Ftr_Content);'
      
        '   if VarToStr(Report.GetDataset('#39'frxData_Doc'#39').Value['#39'DATE_STAR' +
        'T_ROUTE'#39'])<>'#39#39
      '   then'
      '   begin'
      '    Engine.ShowBand(Hdr_Sign);'
      '    MasterData2.DataSet.First;                      '
      '    while not MasterData2.DataSet.Eof'
      '    do'
      '    begin                           '
      '      Engine.ShowBand(MasterData2);'
      '      MasterData2.DataSet.Next;                      '
      '    end;              '
      '   end;                       '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 168
    Top = 256
    Datasets = <
      item
        DataSet = frxData_ContentLinks
        DataSetName = 'frxData_ContentLinks'
      end
      item
        DataSet = frxData_Doc
        DataSetName = 'frxData_Doc'
      end
      item
        DataSet = frxData_Doc_Comms
        DataSetName = 'frxData_Doc_Comms'
      end
      item
        DataSet = frxData_Doc_Contacts
        DataSetName = 'frxData_Doc_Contacts'
      end
      item
        DataSet = frxData_Doc_Content
        DataSetName = 'frxData_Doc_Content'
      end
      item
        DataSet = frxData_Doc_Points
        DataSetName = 'frxData_Doc_Points'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 10.000000000000000000
      LargeDesignHeight = True
      OnManualBuild = 'Page1OnManualBuild'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 207.874150000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        Stretched = True
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 105.826840000000000000
          Width = 1084.725110000000000000
          Height = 64.252010000000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '<b>'#1057#1083#1091#1078#1077#1073#1085#1072#1103' '#1079#1072#1087#1080#1089#1082#1072' '#8470'[frxData_Doc."SZ_DEP_NUMBER"]</b>'
            #1086#1090' [frxData_Doc."SZ_DATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 718.110700000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<frxData_Doc."TO_PROFESSION">] [frxData_Doc."TO_EMP_FIO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Top = 188.976500000000000000
          Width = 1084.725110000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          GapX = 10.000000000000000000
          Memo.UTF8W = (
            '[frxData_Doc."SZ_NOTE"]')
          ParentFont = False
        end
      end
      object Hdr_Content: TfrxHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 287.244280000000000000
        Width = 1084.725110000000000000
        object Memo4: TfrxMemoView
          Top = 22.677180000000020000
          Width = 37.795300000000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 37.795300000000000000
          Top = 22.677180000000020000
          Width = 188.976500000000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 226.771800000000000000
          Top = 22.677160469999990000
          Width = 207.874150000000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1077#1093#1085#1080#1095#1077#1089#1082#1072#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 434.645950000000000000
          Top = 22.677180000000020000
          Width = 132.283550000000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1090#1086#1074#1072#1103' '#1094#1077#1085#1072' '#1073#1077#1079' '#1053#1044#1057', '#1088#1091#1073'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 566.929500000000000000
          Top = 22.677180000000020000
          Width = 56.692950000000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1044#1057', %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 623.622450000000000000
          Top = 22.677180000000020000
          Width = 132.283550000000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1087#1090#1086#1074#1072#1103' '#1094#1077#1085#1072' '#1089' '#1053#1044#1057', '#1088#1091#1073'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 755.906000000000000000
          Top = 22.677180000000020000
          Width = 188.976500000000000000
          Height = 22.677165354330700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1094#1077#1085#1099)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 755.906000000000000000
          Top = 45.354359999999990000
          Width = 94.488250000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 850.394250000000000000
          Top = 45.354359999999990000
          Width = 94.488250000000000000
          Height = 22.677165354330700000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 944.882500000000000000
          Top = 22.677180000000020000
          Width = 139.842610000000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1093#1086#1076#1103#1097#1080#1077' '#1089#1083#1091#1078#1073#1085#1099#1077' '#1079#1072#1087#1080#1089#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Md_Content: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 377.953000000000000000
        Width = 1084.725110000000000000
        DataSet = frxData_Doc_Content
        DataSetName = 'frxData_Doc_Content'
        RowCount = 0
        Stretched = True
        object Md_ContentPOS_NUM: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_POS_NUM'
          DataSet = frxData_Doc_Content
          DataSetName = 'frxData_Doc_Content'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Content."ITEM_POS_NUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Md_ContentITEM_NAME: TfrxMemoView
          Left = 37.795300000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_NAME'
          DataSet = frxData_Doc_Content
          DataSetName = 'frxData_Doc_Content'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Content."ITEM_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Md_ContentITEM_NUM: TfrxMemoView
          Left = 226.771800000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_NUM'
          DataSet = frxData_Doc_Content
          DataSetName = 'frxData_Doc_Content'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Content."ITEM_NUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Md_ContentITEM_PRICE: TfrxMemoView
          Left = 434.645950000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_PRICE'
          DataSet = frxData_Doc_Content
          DataSetName = 'frxData_Doc_Content'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Content."ITEM_PRICE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Md_ContentITEM_NDS: TfrxMemoView
          Left = 566.929500000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_NDS'
          DataSet = frxData_Doc_Content
          DataSetName = 'frxData_Doc_Content'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Content."ITEM_NDS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Md_ContentITEM_PRICE_N_NDS: TfrxMemoView
          Left = 623.622450000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_PRICE_N_NDS'
          DataSet = frxData_Doc_Content
          DataSetName = 'frxData_Doc_Content'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Content."ITEM_PRICE_N_NDS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Md_ContentITEM_PRICE_DATE_START: TfrxMemoView
          Left = 755.906000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_PRICE_DATE_START'
          DataSet = frxData_Doc_Content
          DataSetName = 'frxData_Doc_Content'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Content."ITEM_PRICE_DATE_START"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Md_ContentITEM_PRICE_DATE_END: TfrxMemoView
          Left = 850.394250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ITEM_PRICE_DATE_END'
          DataSet = frxData_Doc_Content
          DataSetName = 'frxData_Doc_Content'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Content."ITEM_PRICE_DATE_END"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Md_LinkedDocs: TfrxMemoView
          Left = 944.882500000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 650.079160000000000000
        Width = 1084.725110000000000000
        object Memo27: TfrxMemoView
          Align = baLeft
          Width = 536.693260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1048#1089#1087'.: [frxData_Doc."EMP_FIO"] '#1090#1077#1083'.: [frxData_Doc."TPHONE"]')
          ParentFont = False
        end
        object M_Pages: TfrxMemoView
          Align = baRight
          Left = 903.307670000000000000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1089#1090#1088'. [Page] '#1080#1079' [TotalPages]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Ftr_Content: TfrxFooter
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 419.527830000000000000
        Width = 1084.725110000000000000
        Stretched = True
        object M_HeadProf: TfrxMemoView
          Align = baBottom
          Left = 340.157700000000000000
          Top = 41.574830000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'HEADER_PROFESSION'
          DataSet = frxData_Doc
          DataSetName = 'frxData_Doc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '[frxData_Doc."HEADER_PROFESSION"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object M_HeadName: TfrxMemoView
          Align = baBottom
          Left = 895.748610000000000000
          Top = 41.574830000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'HEADER_EMP_FIO'
          DataSet = frxData_Doc
          DataSetName = 'frxData_Doc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxData_Doc."HEADER_EMP_FIO"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object M_HeadSign: TfrxMemoView
          Align = baBottom
          Left = 706.772110000000000000
          Top = 41.574830000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object M_StartRoutFlag: TfrxMemoView
          Align = baWidth
          Top = 11.338590000000010000
          Width = 1084.725110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1044#1086#1082#1091#1084#1077#1085#1090' '#1085#1077' '#1086#1090#1087#1088#1072#1074#1083#1077#1085' '#1085#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077')')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 570.709030000000000000
        Width = 1084.725110000000000000
        DataSet = frxData_Doc_Points
        DataSetName = 'frxData_Doc_Points'
        RowCount = 0
        Stretched = True
        object frxData_Doc_PointsPOINT_NAME: TfrxMemoView
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'POINT_NAME'
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Points."POINT_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 188.976500000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'RESULT_DATE'
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Points."RESULT_DATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 302.362400000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'EMP_FIO'
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxData_Doc_Points."EMP_FIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Hdr_Sign: TfrxHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 502.677490000000000000
        Width = 1084.725110000000000000
        object Memo17: TfrxMemoView
          Top = 26.456709999999760000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 188.976500000000000000
          Top = 26.456709999999760000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 302.362400000000000000
          Top = 26.456709999999760000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxData_Doc_Points
          DataSetName = 'frxData_Doc_Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060'.'#1048'.'#1054'.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object Db_ContentLinks: TOracleDataSet
    SQL.Strings = (
      'Select Dep.Dep_Code||'#39'/'#39'||i.Sz_Number Sz_Dep_Number, i.SZ_DATE'
      'From   Mrk.v_Sz_Price_Req_Items_Links l'
      'Left   Join Mrk.v_Sz_Price_Req_Items c'
      'On     c.Id_Sz_Price_Req_Item=l.c_sz_price_req_item_id'
      'Left   Join Src.v_Sz_Price_Request i'
      'On     i.ID_SZ_PRICE_REQ=c.Sz_Price_Req_Id'
      'Left   Join Stp.v_Deps dep'
      'On     dep.id_dep=i.SZ_DEP_ID'
      '       And Nvl(dep.Date_Expitation, Sysdate)>=Sysdate'
      'Where  l.p_sz_price_req_item_id=:Id_Sz_Price_Req_Item'
      'Order  By i.SZ_DATE')
    Optimize = False
    Variables.Data = {
      04000000010000002A0000003A00490044005F0053005A005F00500052004900
      430045005F005200450051005F004900540045004D0005000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000001A00000053005A005F004400450050005F004E0055004D00
      4200450052000100000000000E00000053005A005F0044004100540045000100
      00000000}
    Master = Db_Doc_Content
    MasterFields = 'ID_SZ_PRICE_REQ_ITEM'
    Session = DM_Main.Session
    Left = 536
    Top = 24
  end
  object frxData_ContentLinks: TfrxDBDataset
    UserName = 'frxData_ContentLinks'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SZ_DEP_NUMBER=SZ_DEP_NUMBER'
      'SZ_DATE=SZ_DATE')
    DataSet = Db_ContentLinks
    BCDToCurrency = False
    Left = 536
    Top = 104
  end
end
