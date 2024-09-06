object Form_SzDocSign: TForm_SzDocSign
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form_SzDocSign'
  ClientHeight = 258
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'clWindowText'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Lcb_SingPoint: TDBLookupComboboxEh
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 314
    Height = 22
    Align = alTop
    DynProps = <>
    DataField = 'POINT_NAME'
    DataSource = Data_SingPoints
    EditButtons = <>
    TabOrder = 0
    Visible = True
  end
  object Btn_Cancel: TButton
    AlignWithMargins = True
    Left = 3
    Top = 230
    Width = 314
    Height = 25
    Align = alBottom
    Caption = 'Btn_Cancel'
    ImageIndex = 116
    Images = Form_Sz_Main.ImageList2
    TabOrder = 1
  end
  object Btn_Apply: TButton
    AlignWithMargins = True
    Left = 3
    Top = 199
    Width = 314
    Height = 25
    Align = alBottom
    Caption = 'Btn_Apply'
    ImageIndex = 117
    Images = Form_Sz_Main.ImageList2
    TabOrder = 2
    OnClick = Btn_SignClick
  end
  object Mem_Comment: TDBMemoEh
    AlignWithMargins = True
    Left = 3
    Top = 31
    Width = 314
    Height = 162
    Align = alClient
    AutoSize = False
    DataField = 'RESULT_NOTE'
    DataSource = Data_SingPoints
    DynProps = <>
    EditButtons = <>
    EmptyDataInfo.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1085#1077' '#1091#1082#1072#1079#1072#1085#1086'...'
    TabOrder = 3
    Visible = True
    WantReturns = True
  end
  object Db_SingPoints: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid'
      'From   Src.v_Doc_Rout_Points t'
      'Join (  Select p.Id_Doc_Rout_Point'
      '        From   Src.v_Doc_Rout_Points p'
      '  Left   Join Src.v_Doc_Rout_Point_Pstns ps'
      '  On     ps.Doc_Rout_Point_Id=p.Id_Doc_Rout_Point'
      '  Left   Join Src.v_Doc_Rout_Point_Pstn_Ds dps'
      '  On     dps.Doc_Rout_Point_Pstn_Id=ps.Id_Doc_Rout_Point_Pstn'
      '  Left   Join Src.v_Doc_Rout_Point_Pstn_Us ups'
      '  On     ups.DOC_ROUT_POINT_PSTN_ID=ps.Id_Doc_Rout_Point_Pstn'
      '  Join   Stp.v_Dep_Mmbrs dm'
      
        '  On     ((dm.dep_Id=dps.Dep_Id And dm.dep_Mmbr_Pstn_Id=ps.Dep_M' +
        'mbr_Pstn_Id)'
      '           or  dm.User_Id=ups.USER_ID)'
      '    And dm.User_Id=User'
      
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
      '             Left   Join Src.v_Doc_Rout_Points pp'
      '             On     pp.Id_Doc_Rout_Point=c.P_DOC_ROUT_POINT_ID'
      
        '                    And pp.Stp_Doc_Resolution_Result_Id Is Not N' +
        'ull'
      '                    And pp.Stp_Doc_Resolution_Result_Id <>0'
      '             Group  By c.C_DOC_ROUT_POINT_ID'
      '             Union  All'
      '             Select 1, r.Date_Start_Route, p.Id_Doc_Rout_Point'
      '             From   Src.v_Doc_Rout_Points p'
      '             Join   Src.v_Doc_Routs r'
      '             On     r.Doc_Header_Id=p.Doc_Rout_Id'
      '                    And Instr(p.Point_Position, '#39'1.'#39')<>0  ) c'
      'On    c.C_DOC_ROUT_POINT_ID=p.Id_Doc_Rout_Point'
      '      And c.Signed_Points=1'
      'Where  p.Doc_Rout_Id=:Doc_Header_Id'
      '       And p.Result_Date Is Null'
      'Group  By p.Id_Doc_Rout_Point) p'
      'On p.Id_Doc_Rout_Point=t.Id_Doc_Rout_Point')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000C00000022000000490044005F0044004F0043005F0052004F005500
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
      44004400010000000000}
    UniqueFields = 'Id_Doc_Rout_Point'
    UpdatingTable = 'Src.v_Doc_Rout_Points'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 152
    Top = 192
    object Db_SingPointsID_DOC_ROUT_POINT: TIntegerField
      FieldName = 'ID_DOC_ROUT_POINT'
      Required = True
    end
    object Db_SingPointsDOC_ROUT_ID: TIntegerField
      FieldName = 'DOC_ROUT_ID'
      Required = True
    end
    object Db_SingPointsPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Required = True
      Size = 30
    end
    object Db_SingPointsPOINT_EXPIRATION: TIntegerField
      FieldName = 'POINT_EXPIRATION'
    end
    object Db_SingPointsPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 50
    end
    object Db_SingPointsSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_SingPointsDATE_ENTER: TDateTimeField
      FieldName = 'DATE_ENTER'
    end
    object Db_SingPointsSTP_DOC_RESOLUTION_RESULT_ID: TIntegerField
      FieldName = 'STP_DOC_RESOLUTION_RESULT_ID'
    end
    object Db_SingPointsRESULT_DATE: TDateTimeField
      FieldName = 'RESULT_DATE'
    end
    object Db_SingPointsRESULT_NOTE: TStringField
      FieldName = 'RESULT_NOTE'
      Size = 500
    end
    object Db_SingPointsRESULT_USER_ID: TStringField
      FieldName = 'RESULT_USER_ID'
      Size = 30
    end
    object Db_SingPointsRESULT_USER_ID_ADD: TIntegerField
      FieldName = 'RESULT_USER_ID_ADD'
    end
  end
  object Db_DocsList: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Sz_Price_Req,'
      '       t.Doc_Header_Id,'
      '       t.Sz_Price_Req_Id,'
      '       t.Sz_Number,'
      '       Dep.Dep_Code||'#39'\'#39'||t.Sz_Number Sz_Dep_Number,'
      '       t.Sz_Date,'
      '       t.Sz_Note, '
      '       t.Sz_Dep_Id,'
      '       Dep.Dep_Code,'
      '       Dep.Dep_Sname,'
      '       u.Emp_Fio,'
      '       t.I_User,'
      '       t.I_Date,'
      '       t.U_User,'
      '       r.Date_Start_Route,'
      '       r.Date_End_Route'
      'From Src.V_SZ_PRICE_REQUEST t'
      'Left  Join Stp.v_Users u'
      'On    u.Id_User=t.i_User'
      '      And u.Id_User_Add=t.I_User_Add'
      'Left  Join Stp.V_Deps dep'
      'On    Dep.Id_Dep=t.Sz_Dep_Id'
      '      And Nvl(Dep.Date_Expitation, Sysdate)>=Sysdate'
      'Left  Join Src.V_Doc_Routs r'
      'On    r.Doc_Header_Id=t.Doc_Header_Id'
      'Where t.Doc_Header_Id=:InDocHeaderId')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0049004E0044004F0043004800450041004400
      4500520049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000100000001E000000490044005F0053005A005F005000520049004300
      45005F005200450051000100000000001E00000053005A005F00500052004900
      430045005F005200450051005F00490044000100000000001200000053005A00
      5F004E0055004D004200450052000100000000000E00000053005A005F004400
      4100540045000100000000000E00000053005A005F004E004F00540045000100
      000000000E00000045004D0050005F00460049004F000100000000001A000000
      44004F0043005F004800450041004400450052005F0049004400010000000000
      1200000053005A005F004400450050005F004900440001000000000010000000
      4400450050005F0043004F004400450001000000000012000000440045005000
      5F0053004E0041004D0045000100000000000C00000049005F00550053004500
      52000100000000000C00000049005F0044004100540045000100000000000C00
      000055005F005500530045005200010000000000200000004400410054004500
      5F00530054004100520054005F0052004F005500540045000100000000001C00
      000044004100540045005F0045004E0044005F0052004F005500540045000100
      000000001A00000053005A005F004400450050005F004E0055004D0042004500
      5200010000000000}
    Session = DM_Main.Session
    Left = 196
    Top = 96
    object Db_DocsListID_SZ_PRICE_REQ: TIntegerField
      FieldName = 'ID_SZ_PRICE_REQ'
      Required = True
    end
    object Db_DocsListDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_DocsListSZ_PRICE_REQ_ID: TIntegerField
      FieldName = 'SZ_PRICE_REQ_ID'
    end
    object Db_DocsListSZ_NUMBER: TStringField
      FieldName = 'SZ_NUMBER'
      Size = 100
    end
    object Db_DocsListSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object Db_DocsListSZ_NOTE: TStringField
      FieldName = 'SZ_NOTE'
      Size = 1000
    end
    object Db_DocsListSZ_DEP_ID: TIntegerField
      FieldName = 'SZ_DEP_ID'
    end
    object Db_DocsListDEP_CODE: TStringField
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object Db_DocsListDEP_SNAME: TStringField
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object Db_DocsListEMP_FIO: TStringField
      FieldName = 'EMP_FIO'
      Size = 26
    end
    object Db_DocsListI_USER: TStringField
      FieldName = 'I_USER'
      Size = 30
    end
    object Db_DocsListI_DATE: TDateTimeField
      FieldName = 'I_DATE'
    end
    object Db_DocsListU_USER: TStringField
      FieldName = 'U_USER'
      Size = 30
    end
    object Db_DocsListDATE_START_ROUTE: TDateTimeField
      FieldName = 'DATE_START_ROUTE'
    end
    object Db_DocsListDATE_END_ROUTE: TDateTimeField
      FieldName = 'DATE_END_ROUTE'
    end
    object Db_DocsListSZ_DEP_NUMBER: TStringField
      FieldName = 'SZ_DEP_NUMBER'
      Size = 103
    end
  end
  object Data_SingPoints: TDataSource
    DataSet = Db_SingPoints
    Left = 80
    Top = 216
  end
  object Db_PointResults: TOracleDataSet
    SQL.Strings = (
      'Select Distinct Dr.Doc_Rout_Point_Id,'
      '       Dr.Stp_Doc_Resolution_Result_Id Id_Doc_Positive_Resolut,'
      '       Res.Result_Name Name_Doc_Positive_Resolut,'
      
        '       Dec_Vl.Stp_Doc_Resolution_Result_Id Id_Doc_Negative_Resol' +
        'ut,'
      '       Dec_Vl.Result_Name Name_Doc_Negative_Resolut'
      'From   Src.v_Doc_Rout_Point_Rslts Dr'
      'Join   Stp.v_Doc_Resolution_Results Res'
      
        'On     Res.Id_Doc_Resolution_Result = Dr.Stp_Doc_Resolution_Resu' +
        'lt_Id'
      'Left   Join ( Select * '
      '              From   Src.v_Doc_Rout_Point_Rslts Dr'
      '              Join   Stp.v_Doc_Resolution_Results Res'
      
        '              On     Res.Id_Doc_Resolution_Result = Dr.Stp_Doc_R' +
        'esolution_Result_Id'
      '              Where  Dr.Doc_Rout_Point_Id = :ID_DOC_ROUT_POINT'
      '              And Res.Result_Value = -1 ) Dec_Vl '
      'On     Dec_Vl.Doc_Rout_Point_Id = Dr.Doc_Rout_Point_Id'
      'Where  Dr.Doc_Rout_Point_Id = :ID_DOC_ROUT_POINT'
      '       And Res.Result_Value = 1 '
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000240000003A00490044005F0044004F0043005F0052004F00
      550054005F0050004F0049004E00540005000000060000003231353637000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      05000000050000002200000044004F0043005F0052004F00550054005F005000
      4F0049004E0054005F00490044000100000000002E000000490044005F004400
      4F0043005F0050004F005300490054004900560045005F005200450053004F00
      4C0055005400010000000000320000004E0041004D0045005F0044004F004300
      5F0050004F005300490054004900560045005F005200450053004F004C005500
      54000100000000002E000000490044005F0044004F0043005F004E0045004700
      410054004900560045005F005200450053004F004C0055005400010000000000
      320000004E0041004D0045005F0044004F0043005F004E004500470041005400
      4900560045005F005200450053004F004C0055005400010000000000}
    Master = Db_SingPoints
    MasterFields = 'ID_DOC_ROUT_POINT'
    Session = DM_Main.Session
    Left = 236
    Top = 160
    object Db_PointResultsDOC_ROUT_POINT_ID: TFloatField
      FieldName = 'DOC_ROUT_POINT_ID'
      Required = True
    end
    object Db_PointResultsID_DOC_POSITIVE_RESOLUT: TIntegerField
      FieldName = 'ID_DOC_POSITIVE_RESOLUT'
      Required = True
    end
    object Db_PointResultsNAME_DOC_POSITIVE_RESOLUT: TStringField
      FieldName = 'NAME_DOC_POSITIVE_RESOLUT'
      Required = True
      Size = 30
    end
    object Db_PointResultsID_DOC_NEGATIVE_RESOLUT: TIntegerField
      FieldName = 'ID_DOC_NEGATIVE_RESOLUT'
    end
    object Db_PointResultsNAME_DOC_NEGATIVE_RESOLUT: TStringField
      FieldName = 'NAME_DOC_NEGATIVE_RESOLUT'
      Size = 30
    end
  end
  object Pkg_Sz_Price_Req: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Mrk.Pkg_Sz_Price_Req'
    Left = 80
    Top = 120
  end
end
