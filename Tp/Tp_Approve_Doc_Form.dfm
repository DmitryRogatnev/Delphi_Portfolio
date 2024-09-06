object Form_Approve_Doc: TForm_Approve_Doc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form_Approve_Doc'
  ClientHeight = 192
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'clWindowText'
  Font.Style = []
  Menu = Main_M_Approve_Doc
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 491
    Height = 151
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 0
    ExplicitWidth = 474
    DesignSize = (
      487
      147)
    object Btn_Cancel: TButton
      Left = 134
      Top = 96
      Width = 120
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1054#1090#1082#1072#1079#1072#1090#1100
      HotImageIndex = 4
      ImageIndex = 4
      Images = Form_Tech_Proc_Main.ImageList1
      TabOrder = 0
      OnClick = Btn_SignClick
    end
    object Btn_Approve: TButton
      Left = 8
      Top = 96
      Width = 120
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100
      HotImageIndex = 3
      ImageIndex = 3
      Images = Form_Tech_Proc_Main.ImageList1
      TabOrder = 1
      OnClick = Btn_SignClick
    end
    object Btn_Exit: TButton
      Left = 392
      Top = 96
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      OnClick = Btn_ExitClick
      ExplicitLeft = 375
    end
    object Mem_Comment: TDBMemoEh
      Left = 8
      Top = 6
      Width = 459
      Height = 84
      ControlLabel.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
      ControlLabel.Font.Charset = DEFAULT_CHARSET
      ControlLabel.Font.Color = clWindowText
      ControlLabel.Font.Height = -13
      ControlLabel.Font.Name = 'clWindowText'
      ControlLabel.Font.Style = []
      ControlLabel.ParentFont = False
      ControlLabel.ParentShowHint = False
      ControlLabel.ShowHint = False
      ScrollBars = ssVertical
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoSize = False
      DataField = 'RESULT_NOTE'
      DataSource = Data_Appr_Steps
      DynProps = <>
      EditButtons = <>
      EmptyDataInfo.Text = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1085#1077' '#1091#1082#1072#1079#1072#1085'...'
      TabOrder = 3
      Visible = True
      WantReturns = True
      ExplicitWidth = 442
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 491
    Height = 41
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 474
    object Lcb_Appr_Name: TDBLookupComboboxEh
      Left = 96
      Top = 6
      Width = 366
      Height = 23
      ControlLabel.Width = 81
      ControlLabel.Height = 15
      ControlLabel.Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100' '#1079#1072':'
      ControlLabel.Visible = True
      ControlLabelLocation.Position = lpLeftCenterEh
      DynProps = <>
      DataField = 'POINT_NAME'
      DataSource = Data_Appr_Steps
      EditButtons = <>
      ReadOnly = True
      TabOrder = 0
      Visible = True
    end
  end
  object Main_M_Approve_Doc: TMainMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 232
    Top = 88
    object Main_M_Approve_Doc_Btn_See_Doc: TMenuItem
      Caption = #1054#1090#1095#1077#1090' '#1058#1055
      ImageIndex = 12
      OnClick = Main_M_Approve_Doc_Btn_See_DocClick
    end
    object Main_M_Approve_Doc_Btn_Doc_Files: TMenuItem
      Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1103
      ImageIndex = 8
      OnClick = Main_M_Approve_Doc_Btn_Doc_FilesClick
    end
    object Main_M_Approve_Doc_Btn_Doc_Comm: TMenuItem
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      ImageIndex = 13
      OnClick = Main_M_Approve_Doc_Btn_Doc_CommClick
    end
  end
  object PKG_TP_DOC: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Ogt.PKG_TP_DOC'
    Left = 286
    Top = 24
  end
  object Db_Appr_Step_Params: TOracleDataSet
    SQL.Strings = (
      'Select Dr.Doc_Rout_Point_Id,'
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
    Master = Db_Appr_Steps
    MasterFields = 'ID_DOC_ROUT_POINT'
    Session = DM_Main.Session
    Left = 352
    Top = 80
    object Db_Appr_Step_ParamsDOC_ROUT_POINT_ID: TFloatField
      FieldName = 'DOC_ROUT_POINT_ID'
      Required = True
    end
    object Db_Appr_Step_ParamsID_DOC_POSITIVE_RESOLUT: TIntegerField
      FieldName = 'ID_DOC_POSITIVE_RESOLUT'
      Required = True
    end
    object Db_Appr_Step_ParamsNAME_DOC_POSITIVE_RESOLUT: TStringField
      FieldName = 'NAME_DOC_POSITIVE_RESOLUT'
      Required = True
      Size = 30
    end
    object Db_Appr_Step_ParamsID_DOC_NEGATIVE_RESOLUT: TIntegerField
      FieldName = 'ID_DOC_NEGATIVE_RESOLUT'
    end
    object Db_Appr_Step_ParamsNAME_DOC_NEGATIVE_RESOLUT: TStringField
      FieldName = 'NAME_DOC_NEGATIVE_RESOLUT'
      Size = 30
    end
  end
  object Db_Appr_Steps: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Doc_Rout_Point,'
      '       t.Doc_Rout_Id,'
      '       t.Stp_Doc_Rout_Point_Id,'
      '       t.Stp_Doc_Resolution_Result_Id,'
      '       t.Point_Position,'
      '       t.Point_Name,'
      '       t.Result_Note,'
      '       t.Rowid'
      'From   Src.v_Doc_Rout_Points t'
      'Left   Join  Src.v_Doc_Routs r'
      'On     r.Doc_Header_Id = t.Doc_Rout_Id'
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
      'On p.Id_Doc_Rout_Point=t.Id_Doc_Rout_Point'
      ''
      '       ')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000700000022000000490044005F0044004F0043005F0052004F005500
      54005F0050004F0049004E0054000100000000001600000044004F0043005F00
      52004F00550054005F00490044000100000000002A0000005300540050005F00
      44004F0043005F0052004F00550054005F0050004F0049004E0054005F004900
      44000100000000001C00000050004F0049004E0054005F0050004F0053004900
      540049004F004E000100000000001400000050004F0049004E0054005F004E00
      41004D0045000100000000001600000052004500530055004C0054005F004E00
      4F0054004500010000000000380000005300540050005F0044004F0043005F00
      5200450053004F004C005500540049004F004E005F0052004500530055004C00
      54005F0049004400010000000000}
    UniqueFields = 'Id_Doc_Rout_Point'
    Master = Db_Doc_Info
    MasterFields = 'Doc_Header_Id'
    UpdatingTable = 'Src.v_Doc_Rout_Points'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 128
    Top = 56
    object Db_Appr_StepsID_DOC_ROUT_POINT: TIntegerField
      FieldName = 'ID_DOC_ROUT_POINT'
      Required = True
    end
    object Db_Appr_StepsDOC_ROUT_ID: TIntegerField
      FieldName = 'DOC_ROUT_ID'
      Required = True
    end
    object Db_Appr_StepsSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_Appr_StepsPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Required = True
      Size = 30
    end
    object Db_Appr_StepsPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 50
    end
    object Db_Appr_StepsRESULT_NOTE: TStringField
      FieldName = 'RESULT_NOTE'
      Size = 500
    end
    object Db_Appr_StepsSTP_DOC_RESOLUTION_RESULT_ID: TIntegerField
      FieldName = 'STP_DOC_RESOLUTION_RESULT_ID'
    end
  end
  object Data_Appr_Steps: TDataSource
    DataSet = Db_Appr_Steps
    Left = 48
    Top = 64
  end
  object Db_Doc_Info: TOracleDataSet
    SQL.Strings = (
      'Select t.Doc_Num, '
      '       t.Doc_Header_Id,'
      '       r.Date_Start_Route,'
      '       t.Create_User_Id '
      'From   Src.V_Tech_Proc t'
      'Left   Join Src.v_Doc_Routs r'
      'On     r.Doc_Header_Id = t.Doc_Header_Id'
      'Where  t.Doc_Header_Id = :In_Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000220000003A0049004E005F0044004F0043005F0048004500
      41004400450052005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000000E00000044004F0043005F004E0055004D00010000000000
      1A00000044004F0043005F004800450041004400450052005F00490044000100
      000000002000000044004100540045005F00530054004100520054005F005200
      4F005500540045000100000000001C0000004300520045004100540045005F00
      55005300450052005F0049004400010000000000}
    Session = DM_Main.Session
    Left = 176
    Top = 40
    object Db_Doc_InfoDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_Doc_InfoDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Doc_InfoDATE_START_ROUTE: TDateTimeField
      FieldName = 'DATE_START_ROUTE'
    end
    object Db_Doc_InfoCREATE_USER_ID: TStringField
      FieldName = 'CREATE_USER_ID'
      Required = True
      Size = 30
    end
  end
  object Pkg_Tech_Proc: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Src.PKG_TECH_PROC'
    Left = 400
    Top = 48
  end
  object Pkg_Doc: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Src.PKG_DOC'
    Left = 310
    Top = 140
  end
end
