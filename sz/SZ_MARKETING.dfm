object Form22: TForm22
  Left = 0
  Top = 0
  Caption = #1041#1072#1079#1072'  '#1089'/'#1079' '#1057#1069#1054
  ClientHeight = 650
  ClientWidth = 1300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 0
    Top = 616
    Width = 1300
    Height = 34
    Align = alBottom
    TabOrder = 0
    object Btn_Comment: TButton
      Left = 24
      Top = 4
      Width = 89
      Height = 25
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Btn_CommentClick
    end
    object Button6: TButton
      Left = 1184
      Top = 4
      Width = 89
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button6Click
    end
  end
  object DBGridEh_SIGN: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 1294
    Height = 275
    Align = alTop
    AutoFitColWidths = True
    DataSource = DS_SEOSIGN
    DynProps = <>
    EvenRowColor = clMenu
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PM_GRID_SIGN
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NUMB'
        Footers = <>
        Title.Caption = #8470' '#1089'/'#1079
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_DATE'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_FROM'
        Footers = <>
        Title.Caption = #1054#1090
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_TO'
        Footers = <>
        Title.Caption = #1050#1086#1084#1091
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CONTACT'
        Footers = <>
        Title.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STATUS'
        Footers = <>
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridEh_SIGN_CONTENT: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 333
    Width = 1294
    Height = 280
    Align = alClient
    AutoFitColWidths = True
    DataSource = DS_CONTENT_SEO
    DynProps = <>
    EditActions = [geaCutEh, geaCopyEh, geaPasteEh, geaDeleteEh, geaSelectAllEh]
    EvenRowColor = clMenuBar
    PopupMenu = PM_CONTENT
    TabOrder = 2
    TitleParams.RowHeight = 35
    OnDblClick = DBGridEh_SIGN_CONTENTDblClick
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_STR'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1087'/'#1087
        Width = 25
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NAME_OB'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 403
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_IBYAL_OB'
        Footers = <>
        Title.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
        Width = 348
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_CODE_OB'
        Footers = <>
        Title.Caption = #1050#1086#1076
        Width = 150
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_COST'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1077#1079' '#1053#1044#1057', '#1088#1091#1073'.'
        Width = 75
        WordWrap = True
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NDS'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1044#1057', '#1088#1091#1073'.'
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_COST_W_NDS'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089' '#1053#1044#1057', '#1088#1091#1073'.'
        Width = 75
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel14: TPanel
    Left = 0
    Top = 0
    Width = 1300
    Height = 49
    Align = alTop
    BevelEdges = [beBottom]
    Color = clMenuBar
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 8
    ExplicitWidth = 1288
    DesignSize = (
      1300
      49)
    object Label4: TLabel
      Left = 17
      Top = 25
      Width = 21
      Height = 14
      Caption = #1047#1057' -'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object LCB_Contact_Seo: TDBLookupComboboxEh
      Left = 1152
      Top = 21
      Width = 145
      Height = 21
      ControlLabel.Width = 66
      ControlLabel.Height = 13
      ControlLabel.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
      ControlLabel.Visible = True
      Anchors = [akTop, akRight]
      DynProps = <>
      DataField = ''
      EditButtons = <>
      KeyField = 'FIO'
      ListField = 'FIO'
      ListSource = Data_Users_Seo
      TabOrder = 0
      Visible = True
      OnKeyValueChanged = LCB_Contact_SeoKeyValueChanged
    end
    object E_Det_Name_Seo: TDBEditEh
      Left = 116
      Top = 21
      Width = 217
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ControlLabel.Width = 149
      ControlLabel.Height = 13
      ControlLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
      ControlLabel.Visible = True
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Text = 'E_Det_Name_Seo'
      Visible = True
      OnChange = E_Det_Name_SeoChange
      ExplicitWidth = 205
    end
    object E_Det_Num_Seo: TDBEditEh
      Left = 339
      Top = 21
      Width = 242
      Height = 21
      Anchors = [akTop, akRight]
      ControlLabel.Width = 75
      ControlLabel.Height = 13
      ControlLabel.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
      ControlLabel.Visible = True
      DynProps = <>
      EditButtons = <>
      TabOrder = 2
      Text = 'E_Det_Num_Seo'
      Visible = True
      OnChange = E_Det_Num_SeoChange
      ExplicitLeft = 327
    end
    object E_Sz_Num_Seo: TDBEditEh
      Left = 44
      Top = 21
      Width = 66
      Height = 21
      ControlLabel.Width = 30
      ControlLabel.Height = 13
      ControlLabel.Caption = #8470' '#1089'/'#1079
      ControlLabel.Visible = True
      DynProps = <>
      EditButtons = <>
      TabOrder = 3
      Text = 'E_Sz_Num_Seo'
      Visible = True
      OnChange = E_Sz_Num_SeoChange
    end
    object E_Det_Kd_Seo: TDBEditEh
      Left = 587
      Top = 21
      Width = 242
      Height = 21
      Anchors = [akTop, akRight]
      ControlLabel.Width = 20
      ControlLabel.Height = 13
      ControlLabel.Caption = #1050#1086#1076
      ControlLabel.Visible = True
      DynProps = <>
      EditButtons = <>
      TabOrder = 4
      Text = 'E_Det_Kd_Seo'
      Visible = True
      OnChange = E_Det_Kd_SeoChange
    end
  end
  object OraclePackage1: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 739
    Top = 112
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form20.OracleSession1
    Left = 524
    Top = 466
  end
  object OraclePackage2: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_ENTER'
    Left = 699
    Top = 111
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2
    OnTimer = Timer1Timer
    Left = 28
    Top = 503
  end
  object MainMenu1: TMainMenu
    Left = 480
    Top = 33
    object dsd1: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = dsd1Click
    end
    object N1: TMenuItem
      Caption = #1055#1086#1080#1089#1082' '#1095#1077#1090#1088#1077#1078#1085#1086#1075#1086' '#8470
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Visible = False
      object N3: TMenuItem
        Caption = #1042#1082#1083#1102#1095#1077#1085#1080#1077' '#1087#1088#1080' '#1079#1072#1087#1091#1089#1082#1077' '#1089#1080#1089#1090#1077#1084#1099
        OnClick = N3Click
      end
    end
    object N20: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
      Visible = False
      OnClick = N20Click
    end
  end
  object DS_Admin_NOTIF: TOracleDataSet
    SQL.Strings = (
      'select t.* from MRK.SZ_USERS_NOTIF t where t.id = :vID')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00560049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000B00000004000000490044000100000000000E000000530055005200
      4E0041004D004500010000000000080000004E0041004D004500010000000000
      1400000050004100540052004F004E0059004D00490043000100000000001A00
      0000490044005F0054005900500045005F005500530045005200530001000000
      00001A000000490044005F0054005900500045005F004F005400440045004C00
      0100000000000A000000500048004F004E004500010000000000160000005500
      5300450052005F004F004E004C0049004E004500010000000000140000004500
      4E005400450052005F0044004100540045000100000000001400000055005300
      450052005F004E004F005400490046000100000000000E0000004D0045005300
      5300410047004500010000000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    AfterRefresh = DS_Admin_NOTIFAfterRefresh
    Left = 609
    Top = 466
    object DS_Admin_NOTIFID: TFloatField
      FieldName = 'ID'
    end
    object DS_Admin_NOTIFSURNAME: TStringField
      FieldName = 'SURNAME'
      Size = 50
    end
    object DS_Admin_NOTIFNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object DS_Admin_NOTIFPATRONYMIC: TStringField
      FieldName = 'PATRONYMIC'
      Size = 50
    end
    object DS_Admin_NOTIFID_TYPE_USERS: TIntegerField
      FieldName = 'ID_TYPE_USERS'
    end
    object DS_Admin_NOTIFID_TYPE_OTDEL: TIntegerField
      FieldName = 'ID_TYPE_OTDEL'
    end
    object DS_Admin_NOTIFPHONE: TStringField
      FieldName = 'PHONE'
    end
    object DS_Admin_NOTIFUSER_ONLINE: TFloatField
      FieldName = 'USER_ONLINE'
    end
    object DS_Admin_NOTIFENTER_DATE: TDateTimeField
      FieldName = 'ENTER_DATE'
    end
    object DS_Admin_NOTIFUSER_NOTIF: TFloatField
      FieldName = 'USER_NOTIF'
    end
    object DS_Admin_NOTIFMESSAGE: TStringField
      FieldName = 'MESSAGE'
      Size = 2000
    end
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 300000
    OnTimer = Timer3Timer
    Left = 84
    Top = 502
  end
  object PM_GRID_SIGN: TPopupMenu
    Left = 708
    Top = 466
    object N11: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = dsd1Click
    end
    object N15: TMenuItem
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      OnClick = Btn_CommentClick
    end
  end
  object SEO_SIGN: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.V$SZ_MAIN_SEO t '
      'where t.sz_id in ( Select a.Sz_Id '
      '                   From   Mrk.Sz_Seo_Appr a'
      '                   Where  a.Id_Appr_Step = 3'
      '                          And a.Flag_Out = 1 )'
      'and t.SZ_NUMB like '#39'%'#39'||:v_Sz_Num||'#39'%'#39
      'and Upper ( t.Contact ) like Upper( :v_Contact )||'#39'%'#39
      
        'and t.sz_id in (select distinct t.sz_id from sz_seo_content t wh' +
        'ere translate (upper(t.sz_ibyal_ob), '#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-'#39', '#39'%'#39')  like' +
        ' '#39'%'#39' || translate (upper(:vNOM),'#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-*'#39', '#39'%'#39') || '#39'%'#39')'
      
        'and t.sz_id in (select distinct t.sz_id from sz_seo_content t wh' +
        'ere upper(t.sz_name_ob) like '#39'%'#39' || translate (upper(:vNAIM),'#39'*'#39 +
        ','#39'%'#39') || '#39'%'#39')'
      
        'and t.sz_id in (select distinct t.sz_id from sz_seo_content t wh' +
        'ere upper(t.sz_code_ob) like '#39'%'#39' || upper(:vKOD) || '#39'%'#39')'
      'order by SZ_DATE desc, SZ_NUMB desc')
    Optimize = False
    Variables.Data = {
      04000000050000000A0000003A0056004E004F004D0005000000000000000000
      00000C0000003A0056004E00410049004D000500000000000000000000000A00
      00003A0056004B004F004400050000000000000000000000120000003A005600
      5F0053005A005F004E0055004D00050000000000000000000000140000003A00
      56005F0043004F004E005400410043005400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000160000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F00460052004F004D000100000000000A00000053005A00
      5F0054004F000100000000000E00000053005A005F0044004100540045000100
      000000000E00000043004F004E00540041004300540001000000000018000000
      53005A005F0043004F004E0044004900540049004F004E000100000000001200
      000053005A005F0043004F004E0054005F005900010000000000120000005300
      5A005F00460052004F004D005F0059000100000000000E00000053005A005F00
      54004F005F0059000100000000001400000053005A005F00490044005F004300
      4F004E0054000100000000001C00000053005A005F0043004F004E0054005F00
      59005F0044004100540045000100000000001C00000053005A005F0046005200
      4F004D005F0059005F0044004100540045000100000000001800000053005A00
      5F0054004F005F0059005F0044004100540045000100000000000C0000005300
      5A005F004100440044000100000000001A00000053005A005F00500052004900
      430045005F0049004E00440046000100000000001800000053005A005F004600
      5200450045005F0046004F0052004D000100000000002000000053005A005F00
      46005200450045005F0046004F0052004D005F0054004F005000010000000000
      0A00000053005A005F00490044000100000000001400000053005A005F004600
      52004F004D005F00490044000100000000001000000053005A005F0054004F00
      5F00490044000100000000000C00000053005400410054005500530001000000
      0000180000005300540041005400550053005F00560041004C00550045000100
      00000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 340
    Top = 466
    object SEO_SIGNSZ_ID: TFloatField
      FieldName = 'SZ_ID'
      Required = True
    end
    object SEO_SIGNSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object SEO_SIGNSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object SEO_SIGNCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 1000
    end
    object SEO_SIGNSZ_CONDITION: TFloatField
      FieldName = 'SZ_CONDITION'
    end
    object SEO_SIGNSZ_ID_CONT: TFloatField
      FieldName = 'SZ_ID_CONT'
    end
    object SEO_SIGNSZ_CONT_Y: TFloatField
      FieldName = 'SZ_CONT_Y'
    end
    object SEO_SIGNSZ_CONT_Y_DATE: TDateTimeField
      FieldName = 'SZ_CONT_Y_DATE'
    end
    object SEO_SIGNSZ_FROM_Y: TFloatField
      FieldName = 'SZ_FROM_Y'
    end
    object SEO_SIGNSZ_FROM: TStringField
      FieldName = 'SZ_FROM'
      Size = 4000
    end
    object SEO_SIGNSZ_FROM_Y_DATE: TDateTimeField
      FieldName = 'SZ_FROM_Y_DATE'
    end
    object SEO_SIGNSZ_FROM_ID: TFloatField
      FieldName = 'SZ_FROM_ID'
    end
    object SEO_SIGNSZ_TO_Y: TFloatField
      FieldName = 'SZ_TO_Y'
    end
    object SEO_SIGNSZ_TO: TStringField
      FieldName = 'SZ_TO'
      Size = 4000
    end
    object SEO_SIGNSZ_TO_Y_DATE: TDateTimeField
      FieldName = 'SZ_TO_Y_DATE'
    end
    object SEO_SIGNSZ_TO_ID: TFloatField
      FieldName = 'SZ_TO_ID'
    end
    object SEO_SIGNSZ_ADD: TStringField
      FieldName = 'SZ_ADD'
      Size = 1000
    end
    object SEO_SIGNSZ_FREE_FORM_TOP: TStringField
      FieldName = 'SZ_FREE_FORM_TOP'
      Size = 4000
    end
    object SEO_SIGNSZ_FREE_FORM: TFloatField
      FieldName = 'SZ_FREE_FORM'
    end
    object SEO_SIGNSZ_PRICE_INDF: TFloatField
      FieldName = 'SZ_PRICE_INDF'
    end
    object SEO_SIGNSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 72
    end
    object SEO_SIGNSTATUS_VALUE: TFloatField
      FieldName = 'STATUS_VALUE'
    end
  end
  object DS_SEOSIGN: TDataSource
    DataSet = SEO_SIGN
    Left = 340
    Top = 522
  end
  object SZ_CONTENT_SEO: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.SZ_SEO_CONTENT t'
      'where t.sz_id = :sz_id'
      'order by t.id_str')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A0053005A005F00490044000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      050000000F0000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F004E0041004D0045005F004F0042000100000000001600000053005A005F00
      49004200590041004C005F004F0042000100000000000E000000490044005F00
      43004F004E0054000100000000000C000000490044005F005300540052000100
      000000001A00000053005A005F0043004F00530054005F0057005F004E004400
      53000100000000000C00000053005A005F004E00440053000100000000000E00
      000053005A005F0043004F00530054000100000000001600000053005A005F00
      49004D0050005F004E0055004D0042000100000000001600000053005A005F00
      49004D0050005F0044004100540045000100000000001400000053005A005F00
      43004F00440045005F004F0042000100000000001800000053005A005F004400
      4100540045005F0043004F00530054000100000000000A00000053005A005F00
      490044000100000000001200000053005A005F0049004D0050005F0049004400
      010000000000}
    Master = SEO_SIGN
    MasterFields = 'SZ_ID'
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 252
    Top = 466
    object SZ_CONTENT_SEOSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object SZ_CONTENT_SEOSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object SZ_CONTENT_SEOSZ_NAME_OB: TStringField
      FieldName = 'SZ_NAME_OB'
      Size = 1000
    end
    object SZ_CONTENT_SEOSZ_IBYAL_OB: TStringField
      FieldName = 'SZ_IBYAL_OB'
      Size = 1000
    end
    object SZ_CONTENT_SEOSZ_COST_W_NDS: TFloatField
      FieldName = 'SZ_COST_W_NDS'
    end
    object SZ_CONTENT_SEOSZ_NDS: TFloatField
      FieldName = 'SZ_NDS'
    end
    object SZ_CONTENT_SEOSZ_COST: TFloatField
      FieldName = 'SZ_COST'
    end
    object SZ_CONTENT_SEOID_CONT: TFloatField
      FieldName = 'ID_CONT'
    end
    object SZ_CONTENT_SEOID_STR: TFloatField
      FieldName = 'ID_STR'
    end
    object SZ_CONTENT_SEOSZ_IMP_NUMB: TFloatField
      FieldName = 'SZ_IMP_NUMB'
    end
    object SZ_CONTENT_SEOSZ_IMP_DATE: TDateTimeField
      FieldName = 'SZ_IMP_DATE'
    end
    object SZ_CONTENT_SEOSZ_CODE_OB: TStringField
      FieldName = 'SZ_CODE_OB'
      Size = 1000
    end
  end
  object DS_CONTENT_SEO: TDataSource
    AutoEdit = False
    DataSet = SZ_CONTENT_SEO
    Left = 248
    Top = 520
  end
  object PM_CONTENT: TPopupMenu
    Left = 644
    Top = 418
    object N21: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1074' '#1087#1086#1080#1089#1082#1077' '#1095#1077#1088#1090#1077#1078#1085#1086#1075#1086' '#8470
      OnClick = DBGridEh_SIGN_CONTENTDblClick
    end
  end
  object DS_Users_Seo: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, sz_enter.GetNameUser(t.id) as FIO FROM MRK.SZ_USERS' +
        ' t where t.id_type_users = 3 or t.id_type_dop = 3'
      ''
      'union all'
      ''
      'select 999999, '#39#1042#1057#1045#39' from dual'
      ''
      'order by id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004900440001000000000006000000460049004F00
      010000000000}
    Session = Form20.OracleSession1
    Left = 1056
    Top = 432
    object FloatField2: TFloatField
      FieldName = 'ID'
    end
    object StringField6: TStringField
      FieldName = 'FIO'
      Size = 4000
    end
  end
  object Data_Users_Seo: TDataSource
    DataSet = DS_Users_Seo
    Left = 1060
    Top = 490
  end
end
