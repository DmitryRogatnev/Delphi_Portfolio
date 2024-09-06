object Form8: TForm8
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1089'/'#1079
  ClientHeight = 639
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel2: TPanel
    Left = 0
    Top = 599
    Width = 799
    Height = 40
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      799
      40)
    object Btn_Save: TButton
      Left = 630
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Btn_SaveClick
    end
    object Btn_Cancel: TButton
      Left = 711
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Btn_CancelClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 137
    Width = 799
    Height = 17
    Align = alTop
    Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1089'/'#1079
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 548
    Width = 799
    Height = 51
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      799
      51)
    object Vazhn_Check: TCheckBox
      Left = 742
      Top = 18
      Width = 57
      Height = 29
      Anchors = [akTop, akRight]
      Caption = #1042#1072#1078#1085'.'
      TabOrder = 0
      OnClick = Vazhn_CheckClick
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 797
      Height = 16
      Align = alTop
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      Color = clSilver
      ParentBackground = False
      TabOrder = 1
    end
    object E_Comment: TDBEditEh
      Left = 8
      Top = 23
      Width = 728
      Height = 20
      DynProps = <>
      EditButtons = <
        item
        end>
      EmptyDataInfo.Text = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1085#1077' '#1091#1082#1072#1079#1072#1085'...'
      Flat = True
      TabOrder = 2
      Text = 'E_Comment'
      Visible = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 799
    Height = 137
    Align = alTop
    TabOrder = 3
    DesignSize = (
      799
      137)
    object GroupBox1: TGroupBox
      Left = 8
      Top = 31
      Width = 247
      Height = 49
      Caption = #1054#1090
      TabOrder = 0
      DesignSize = (
        247
        49)
      object FROM_LCB: TDBLookupComboboxEh
        Left = 7
        Top = 16
        Width = 231
        Height = 20
        Anchors = [akLeft, akTop, akRight]
        DynProps = <>
        DataField = 'SZ_FROM_ID'
        DataSource = Data_Sz_Info
        EmptyDataInfo.Text = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100' '#1085#1077' '#1091#1082#1072#1079#1072#1085'...'
        EditButtons = <>
        Flat = True
        KeyField = 'ID'
        ListField = 'USER_FROM'
        ListSource = FROM_DATA
        TabOrder = 0
        Visible = True
      end
    end
    object GroupBox2: TGroupBox
      Left = 551
      Top = 31
      Width = 235
      Height = 49
      Anchors = [akTop, akRight]
      Caption = #1050#1086#1087#1080#1103
      TabOrder = 1
      DesignSize = (
        235
        49)
      object COPY_LCB: TDBLookupComboboxEh
        Left = 10
        Top = 16
        Width = 216
        Height = 20
        Anchors = [akLeft, akTop, akRight]
        DynProps = <>
        DataField = 'SZ_COPY_ID'
        DataSource = Data_Sz_Info
        EmptyDataInfo.Text = #1050#1086#1087#1080#1103' '#1085#1077' '#1091#1082#1072#1079#1072#1085#1072'...'
        EditButtons = <>
        Flat = True
        KeyField = 'ID'
        ListField = 'USER_TO'
        ListSource = COPY_DATA
        TabOrder = 0
        Visible = True
        OnKeyValueChanged = COPY_LCBKeyValueChanged
      end
    end
    object GroupBox3: TGroupBox
      Left = 261
      Top = 31
      Width = 284
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      Caption = #1050#1086#1084#1091
      TabOrder = 2
      DesignSize = (
        284
        49)
      object TO_LCB: TDBLookupComboboxEh
        Left = 8
        Top = 16
        Width = 267
        Height = 20
        Anchors = [akLeft, akTop, akRight]
        DynProps = <>
        DataField = 'SZ_TO_ID'
        DataSource = Data_Sz_Info
        EmptyDataInfo.Text = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1085#1077' '#1091#1082#1072#1079#1072#1085'...'
        EditButtons = <>
        Flat = True
        KeyField = 'ID'
        ListField = 'USER_TO'
        ListSource = TO_DATA
        TabOrder = 0
        Visible = True
      end
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 82
      Width = 778
      Height = 47
      Anchors = [akLeft, akTop, akRight]
      Caption = #1058#1077#1084#1072
      TabOrder = 3
      DesignSize = (
        778
        47)
      object E_Sz_Tema: TDBEditEh
        Left = 7
        Top = 18
        Width = 762
        Height = 20
        Anchors = [akLeft, akTop, akRight]
        DataField = 'SZ_TEMA'
        DataSource = Data_Sz_Info
        DynProps = <>
        EditButtons = <
          item
            DropDownFormParams.DropDownForm = Drop_D_Form_Gen_Chose.Owner
          end>
        Flat = True
        TabOrder = 0
        Visible = True
        OnCloseDropDownForm = E_Sz_TemaCloseDropDownForm
        OnOpenDropDownForm = E_Sz_TemaOpenDropDownForm
      end
    end
    object E_SZ_Num: TDBEditEh
      Left = 66
      Top = 8
      Width = 79
      Height = 20
      ControlLabel.Width = 55
      ControlLabel.Height = 14
      ControlLabel.Caption = #8470' '#1089'/'#1079' '#1047#1057'-'
      ControlLabel.Visible = True
      ControlLabelLocation.Position = lpLeftCenterEh
      DataField = 'SZ_NUMB'
      DataSource = Data_Sz_Info
      DynProps = <>
      EditButtons = <>
      Flat = True
      TabOrder = 4
      Visible = True
    end
    object E_Sz_Date: TDBEditEh
      Left = 187
      Top = 8
      Width = 121
      Height = 20
      ControlLabel.Width = 30
      ControlLabel.Height = 14
      ControlLabel.Caption = #1044#1072#1090#1072':'
      ControlLabel.Visible = True
      ControlLabelLocation.Position = lpLeftCenterEh
      DataField = 'SZ_DATE'
      DataSource = Data_Sz_Info
      DynProps = <>
      EditButtons = <>
      Flat = True
      TabOrder = 5
      Visible = True
    end
    object Check_KR: TDBCheckBoxEh
      Left = 618
      Top = 11
      Width = 168
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1041#1077#1079' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' '#1089' '#1054#1057#1058#1044
      DataField = 'SZ_KR'
      DataSource = Data_Sz_Info
      DynProps = <>
      TabOrder = 6
      OnClick = OSTD_CheckClick
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 154
    Width = 799
    Height = 394
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_Sz_Content
    DynProps = <>
    EvenRowColor = clMenuBar
    Flat = True
    HorzScrollBar.ExtraPanel.Visible = True
    PopupMenu = PopupMenu1
    TabOrder = 4
    TitleParams.RowLines = 1
    OnDblClick = DBGrid1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_STR'
        Footers = <>
        Title.Caption = #8470' '#1087'/'#1087
        Width = 71
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_NAME_OB'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_IBYAL_OB'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_CODE_OB'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1050#1086#1076
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Db_Sz_Content: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from Mrk.V_SZ_TABLE_SEO t'
      'where t.Sz_Id = :Id_Sz')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A00490044005F0053005A000500000000000000
      00000000}
    SequenceField.Field = 'ID_POS'
    SequenceField.Sequence = 'MRK.SZ_TABLE_SEO$ID_POS$SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000100000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F004E0041004D0045005F004F0042000100000000001600000053005A005F00
      49004200590041004C005F004F0042000100000000000E000000490044005F00
      43004F004E0054000100000000000C000000490044005F005300540052000100
      000000001000000053005A005F0043004800450043004B000100000000001400
      000053005A005F0043004F00440045005F004F0042000100000000000C000000
      490044005F0050004F0053000100000000000A00000053005A005F0049004400
      0100000000001000000044004100540045005F0049004E005300010000000000
      1600000055005300450052005F00490044005F0049004E005300010000000000
      1400000045004D0050005F00490044005F0049004E0053000100000000001600
      000044004100540045005F004300480041004E00470045000100000000001600
      000055005300450052005F00490044005F0043004F0052000100000000001400
      000045004D0050005F00490044005F0043004F005200010000000000}
    UniqueFields = 'ID_POS'
    UpdatingTable = 'Mrk.V_SZ_TABLE_SEO'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Sz_ContentNewRecord
    Left = 544
    Top = 313
    object Db_Sz_ContentID_POS: TFloatField
      FieldName = 'ID_POS'
      Required = True
    end
    object Db_Sz_ContentSZ_ID: TFloatField
      FieldName = 'SZ_ID'
    end
    object Db_Sz_ContentSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object Db_Sz_ContentSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object Db_Sz_ContentID_STR: TFloatField
      FieldName = 'ID_STR'
    end
    object Db_Sz_ContentID_CONT: TFloatField
      FieldName = 'ID_CONT'
    end
    object Db_Sz_ContentSZ_NAME_OB: TStringField
      FieldName = 'SZ_NAME_OB'
      Size = 1000
    end
    object Db_Sz_ContentSZ_IBYAL_OB: TStringField
      FieldName = 'SZ_IBYAL_OB'
      Size = 1000
    end
    object Db_Sz_ContentSZ_CODE_OB: TStringField
      FieldName = 'SZ_CODE_OB'
      Size = 1000
    end
    object Db_Sz_ContentSZ_CHECK: TFloatField
      FieldName = 'SZ_CHECK'
    end
    object Db_Sz_ContentDATE_INS: TDateTimeField
      FieldName = 'DATE_INS'
    end
    object Db_Sz_ContentUSER_ID_INS: TStringField
      FieldName = 'USER_ID_INS'
      Size = 30
    end
    object Db_Sz_ContentEMP_ID_INS: TFloatField
      FieldName = 'EMP_ID_INS'
    end
    object Db_Sz_ContentDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Sz_ContentUSER_ID_COR: TStringField
      FieldName = 'USER_ID_COR'
      Size = 30
    end
    object Db_Sz_ContentEMP_ID_COR: TFloatField
      FieldName = 'EMP_ID_COR'
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form20.OracleSession1
    Left = 16
    Top = 217
  end
  object OraclePackage1: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'MRK.SZ_PACKAGE'
    Left = 152
    Top = 385
  end
  object OraclePackage2: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'MKR.SZ_ENTER'
    Left = 32
    Top = 385
  end
  object Data_Sz_Content: TDataSource
    DataSet = Db_Sz_Content
    Left = 616
    Top = 313
  end
  object DS_NOM: TOracleDataSet
    SQL.Strings = (
      
        'select * from sveta.M08 t  where translate (t.nom, '#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.' +
        '-'#39', '#39'%'#39') = translate (:vNOM, '#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-'#39', '#39'%'#39')'
      'and nvl (t.snpr,10) <> 0'
      '')
    Optimize = False
    Variables.Data = {
      04000000010000000A0000003A0056004E004F004D0005000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      0500000012000000040000004B004400010000000000060000004E004F004D00
      010000000000080000004E00410049004D000100000000000A00000044005400
      4B004F0052000100000000000C0000005000520049004D0045004E0001000000
      00000E0000004E00450057005F004E004F004D00010000000000060000004D00
      44005600010000000000060000005000520055000100000000000A0000004B00
      44005A0041004D000100000000000C0000004E004F004D005A0041004D000100
      000000000C00000049005A0044005F00470052000100000000000C0000005000
      52005F0049005A0044000100000000000C00000043004F004D0045004E005400
      010000000000120000004E0041004D0045005F004500540049004B0001000000
      00000800000053004E00500052000100000000000C000000490044005F004F00
      4700540001000000000008000000500052004F0043000100000000000A000000
      500052005F0045004C00010000000000}
    Session = Form20.OracleSession1
    Left = 40
    Top = 321
    object DS_NOMKD: TStringField
      FieldName = 'KD'
      Required = True
      Size = 13
    end
    object DS_NOMNOM: TStringField
      FieldName = 'NOM'
      Required = True
      Size = 100
    end
    object DS_NOMNAIM: TStringField
      FieldName = 'NAIM'
      Required = True
      Size = 100
    end
    object DS_NOMDTKOR: TDateTimeField
      FieldName = 'DTKOR'
    end
    object DS_NOMPRIMEN: TStringField
      FieldName = 'PRIMEN'
      Size = 535
    end
    object DS_NOMNEW_NOM: TStringField
      FieldName = 'NEW_NOM'
      Size = 100
    end
    object DS_NOMMDV: TStringField
      FieldName = 'MDV'
      Size = 300
    end
    object DS_NOMPRU: TStringField
      FieldName = 'PRU'
      Size = 1
    end
    object DS_NOMKDZAM: TStringField
      FieldName = 'KDZAM'
      Size = 13
    end
    object DS_NOMNOMZAM: TStringField
      FieldName = 'NOMZAM'
      Size = 35
    end
    object DS_NOMIZD_GR: TStringField
      FieldName = 'IZD_GR'
      Size = 100
    end
    object DS_NOMPR_IZD: TStringField
      FieldName = 'PR_IZD'
      Size = 1
    end
    object DS_NOMCOMENT: TStringField
      FieldName = 'COMENT'
      Size = 300
    end
    object DS_NOMNAME_ETIK: TStringField
      FieldName = 'NAME_ETIK'
      Size = 100
    end
    object DS_NOMSNPR: TIntegerField
      FieldName = 'SNPR'
    end
    object DS_NOMID_OGT: TFloatField
      FieldName = 'ID_OGT'
    end
    object DS_NOMPROC: TFloatField
      FieldName = 'PROC'
    end
    object DS_NOMPR_EL: TStringField
      FieldName = 'PR_EL'
      Size = 50
    end
  end
  object DS_Users: TOracleDataSet
    SQL.Strings = (
      'select t.*, (select case '
      
        'when t.id_type_heads = 2 and t.id_mf = 0 and t.id_sr_scl = 1 the' +
        'n (select ('#39#1047#1072#1084'. '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1086#1090#1076#1077#1083#1072' '#1087#1088#1086#1076#1072#1078' '#39' || sr_scl.surname||'#39 +
        #1072' '#39'||Upper(substr(sr_scl.name,1,1))||'#39'.'#39'||Upper(substr(sr_scl.pa' +
        'tronymic,1,1))||'#39'.'#39')  from mrk.SZ_USERS sr_scl where sr_scl.id =' +
        ' t.id)'
      
        'when t.id_type_heads = 2 and t.id_mf = 0 and t.id_sr_scl = 0 the' +
        'n (select ('#39#1047#1072#1084'. '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1086#1090#1076#1077#1083#1072' '#1087#1088#1086#1076#1072#1078' '#39' || sr_scl.surname||'#39 +
        ' '#39'||Upper(substr(sr_scl.name,1,1))||'#39'.'#39'||Upper(substr(sr_scl.pat' +
        'ronymic,1,1))||'#39'.'#39')  from mrk.SZ_USERS sr_scl where sr_scl.id = ' +
        't.id)'
      
        'when t.id_type_heads = 2 and t.id_mf = 1 and t.id_sr_scl = 1 the' +
        'n (select ('#39#1047#1072#1084'. '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1086#1090#1076#1077#1083#1072' '#1087#1088#1086#1076#1072#1078' '#39' || (rtrim(sr_scl.sur' +
        'name, '#39#1072#39'))||'#39#1086#1081' '#39'||Upper(substr(sr_scl.name,1,1))||'#39'.'#39'||Upper(s' +
        'ubstr(sr_scl.patronymic,1,1))||'#39'.'#39')  from mrk.SZ_USERS sr_scl wh' +
        'ere sr_scl.id = t.id)'
      
        'when t.id_type_heads = 2 and t.id_mf = 1 and t.id_sr_scl = 0 the' +
        'n (select ('#39#1047#1072#1084'. '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1086#1090#1076#1077#1083#1072' '#1087#1088#1086#1076#1072#1078' '#39' || sr_scl.surname||'#39 +
        ' '#39'||Upper(substr(sr_scl.name,1,1))||'#39'.'#39'||Upper(substr(sr_scl.pat' +
        'ronymic,1,1))||'#39'.'#39')  from mrk.SZ_USERS sr_scl where  sr_scl.id =' +
        ' t.id)'
      
        'when t.id_type_heads = 1 and t.id_mf = 0 and t.id_sr_scl = 1 the' +
        'n (select ('#39#1053#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1086#1090#1076#1077#1083#1072' '#1087#1088#1086#1076#1072#1078' '#39' || sr_scl.surname||'#39#1072' '#39'||' +
        'Upper(substr(sr_scl.name,1,1))||'#39'.'#39'||Upper(substr(sr_scl.patrony' +
        'mic,1,1))||'#39'.'#39')  from mrk.SZ_USERS sr_scl where sr_scl.id = t.id' +
        ')'
      
        'when t.id_type_heads = 1 and t.id_mf = 0 and t.id_sr_scl = 0 the' +
        'n (select ('#39#1053#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1086#1090#1076#1077#1083#1072' '#1087#1088#1086#1076#1072#1078' '#39' || sr_scl.surname||'#39' '#39'||U' +
        'pper(substr(sr_scl.name,1,1))||'#39'.'#39'||Upper(substr(sr_scl.patronym' +
        'ic,1,1))||'#39'.'#39')  from mrk.SZ_USERS sr_scl)'
      
        'when t.id_type_heads = 1 and t.id_mf = 1 and t.id_sr_scl = 1 the' +
        'n (select ('#39#1053#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1086#1090#1076#1077#1083#1072' '#1087#1088#1086#1076#1072#1078' '#39' || (rtrim(sr_scl.surname,' +
        ' '#39#1072#39'))||'#39#1086#1081' '#39'||Upper(substr(sr_scl.name,1,1))||'#39'.'#39'||Upper(substr' +
        '(sr_scl.patronymic,1,1))||'#39'.'#39')  from mrk.SZ_USERS sr_scl where s' +
        'r_scl.id = t.id)'
      
        'when t.id_type_heads = 1 and t.id_mf = 1 and t.id_sr_scl = 0 the' +
        'n (select ('#39#1053#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1086#1090#1076#1077#1083#1072' '#1087#1088#1086#1076#1072#1078' '#39' || sr_scl.surname||'#39' '#39'||U' +
        'pper(substr(sr_scl.name,1,1))||'#39'.'#39'||Upper(substr(sr_scl.patronym' +
        'ic,1,1))||'#39'.'#39')  from mrk.SZ_USERS sr_scl where sr_scl.id = t.id)'
      'end from MRK.SZ_USERS where id = t.id) as FIO '
      'FROM MRK.SZ_USERS t '
      'where t.id_type_users = 2'
      'and t.id_type_otdel = 33'
      'order by surname'
      ''
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000001200000004000000490044000100000000000E000000530055005200
      4E0041004D004500010000000000080000004E0041004D004500010000000000
      1400000050004100540052004F004E0059004D00490043000100000000001000
      0000500041005300530057004F00520044000100000000001A00000049004400
      5F0054005900500045005F00550053004500520053000100000000001A000000
      490044005F0054005900500045005F004F005400440045004C00010000000000
      0C0000005300540041005400550053000100000000000A000000480045004100
      440053000100000000000E0000005300490047004E0042004D00500000000000
      0000100000005300490047004E0042004D00500031000000000000000A000000
      500048004F004E0045000100000000001600000055005300450052005F004F00
      4E004C0049004E0045000100000000001400000045004E005400450052005F00
      44004100540045000100000000001400000055005300450052005F0041004400
      4D0049004E00010000000000120000004100550054004F005F004C004F004100
      44000100000000001A000000490044005F0054005900500045005F0048004500
      41004400530001000000000006000000460049004F00010000000000}
    Session = Form20.OracleSession1
    Left = 504
    Top = 216
    object DS_UsersID: TFloatField
      FieldName = 'ID'
    end
    object DS_UsersSURNAME: TStringField
      FieldName = 'SURNAME'
      Size = 50
    end
    object DS_UsersNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object DS_UsersPATRONYMIC: TStringField
      FieldName = 'PATRONYMIC'
      Size = 50
    end
    object DS_UsersPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Size = 50
    end
    object DS_UsersID_TYPE_USERS: TIntegerField
      FieldName = 'ID_TYPE_USERS'
    end
    object DS_UsersID_TYPE_OTDEL: TIntegerField
      FieldName = 'ID_TYPE_OTDEL'
    end
    object DS_UsersSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object DS_UsersHEADS: TIntegerField
      FieldName = 'HEADS'
    end
    object DS_UsersSIGNBMP: TBlobField
      FieldName = 'SIGNBMP'
      BlobType = ftOraBlob
    end
    object DS_UsersSIGNBMP1: TBlobField
      FieldName = 'SIGNBMP1'
      BlobType = ftOraBlob
    end
    object DS_UsersPHONE: TStringField
      FieldName = 'PHONE'
    end
    object DS_UsersUSER_ONLINE: TFloatField
      FieldName = 'USER_ONLINE'
    end
    object DS_UsersENTER_DATE: TDateTimeField
      FieldName = 'ENTER_DATE'
    end
    object DS_UsersUSER_ADMIN: TFloatField
      FieldName = 'USER_ADMIN'
    end
    object DS_UsersAUTO_LOAD: TFloatField
      FieldName = 'AUTO_LOAD'
    end
    object DS_UsersID_TYPE_HEADS: TIntegerField
      FieldName = 'ID_TYPE_HEADS'
    end
    object DS_UsersFIO: TStringField
      FieldName = 'FIO'
      Size = 72
    end
  end
  object FROM_DB: TOracleDataSet
    SQL.Strings = (
      'select t.FIO_FROM as USER_FROM, t.ID from V$SZ_HEADS_ALL t'
      'where t.user_ceh = '#39'33'#39)
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000001200000055005300450052005F00460052004F004D000100
      000000000400000049004400010000000000}
    Session = Form20.OracleSession1
    Left = 232
    Top = 352
  end
  object FROM_DATA: TDataSource
    DataSet = FROM_DB
    Left = 232
    Top = 400
  end
  object TO_DB: TOracleDataSet
    SQL.Strings = (
      'select t.FIO_TO as USER_TO, t.ID from V$SZ_HEADS_ALL t'
      'where t.user_ceh = '#39'38'#39)
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000004000000490044000100000000000E000000550053004500
      52005F0054004F00010000000000}
    Session = Form20.OracleSession1
    Left = 304
    Top = 352
  end
  object TO_DATA: TDataSource
    DataSet = TO_DB
    Left = 304
    Top = 400
  end
  object COPY_DATA: TDataSource
    DataSet = COPY_DB
    Left = 368
    Top = 400
  end
  object COPY_DB: TOracleDataSet
    SQL.Strings = (
      'select t.FIO_TO as USER_TO, t.ID from V$SZ_HEADS_ALL t'
      'where t.user_ceh = '#39'75'#39
      'order by id desc')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000004000000490044000100000000000E000000550053004500
      52005F0054004F00010000000000}
    Session = Form20.OracleSession1
    Left = 368
    Top = 352
    object COPY_DBUSER_TO: TStringField
      FieldName = 'USER_TO'
      Size = 4000
    end
    object COPY_DBID: TFloatField
      FieldName = 'ID'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 320
    Top = 272
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1047#1072#1084#1077#1085#1080#1090#1100
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N3Click
    end
  end
  object Data_Sz_Info: TDataSource
    DataSet = Db_Sz_Info
    Left = 216
    Top = 240
  end
  object Db_Sz_For_Copy: TOracleDataSet
    SQL.Strings = (
      'Select t.Sz_Name_Ob,'
      '       t.Sz_Ibyal_Ob,'
      '       t.Sz_Code_Ob'
      'From Mrk.V_SZ_TABLE_SEO t'
      'where t.Sz_Id = :Id_Sz_Copy')
    Optimize = False
    Variables.Data = {
      0400000001000000160000003A00490044005F0053005A005F0043004F005000
      5900050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000001400000053005A005F004E0041004D0045005F004F004200
      0100000000001600000053005A005F0049004200590041004C005F004F004200
      0100000000001400000053005A005F0043004F00440045005F004F0042000100
      00000000}
    Session = DM_Main.Session
    Left = 544
    Top = 408
    object Db_Sz_For_CopySZ_NAME_OB: TStringField
      FieldName = 'SZ_NAME_OB'
      Size = 1000
    end
    object Db_Sz_For_CopySZ_IBYAL_OB: TStringField
      FieldName = 'SZ_IBYAL_OB'
      Size = 1000
    end
    object Db_Sz_For_CopySZ_CODE_OB: TStringField
      FieldName = 'SZ_CODE_OB'
      Size = 1000
    end
  end
  object Db_Sz_Info: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from Mrk.V$SZ_MAIN_OP t'
      'Where t.Sz_Id = :Id_Sz')
    Optimize = False
    Variables.Data = {
      04000000010000000C0000003A00490044005F0053005A000500000000000000
      00000000}
    SequenceField.Field = 'SZ_ID'
    SequenceField.Sequence = 'MRK.SZ_TABLE_TEST$SQN'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000001C0000000A00000053005A005F00490044000100000000000E000000
      53005A005F004E0055004D0042000100000000000E00000053005A005F004400
      4100540045000100000000001200000053005A005F0043004F004E0054005F00
      59000100000000000E00000043004F004E005400410043005400010000000000
      1C00000053005A005F0043004F004E0054005F0059005F004400410054004500
      0100000000001800000053005A005F0043004F004E0044004900540049004F00
      4E000100000000000A00000053005A005F004B0052000100000000000E000000
      53005A005F00540045004D0041000100000000001400000053005A005F004900
      44005F0043004F004E0054000100000000001200000053005A005F0046005200
      4F004D005F0059000100000000000E00000053005A005F00460052004F004D00
      0100000000001C00000053005A005F00460052004F004D005F0059005F004400
      4100540045000100000000000E00000053005A005F0054004F005F0059000100
      000000000A00000053005A005F0054004F000100000000001800000053005A00
      5F0054004F005F0059005F004400410054004500010000000000120000005300
      5A005F0043004F00500059005F0059000100000000000E00000053005A005F00
      43004F00500059000100000000001C00000053005A005F0043004F0050005900
      5F0059005F0044004100540045000100000000000C0000005300540041005400
      55005300010000000000180000005300540041005400550053005F0056004100
      4C00550045000100000000001400000053005A005F00460052004F004D005F00
      490044000100000000001000000053005A005F0054004F005F00490044000100
      000000001400000053005A005F0043004F00500059005F004900440001000000
      00001600000053005A005F00530045004F005F004E0055004D00420001000000
      00001600000053005A005F00530045004F005F00440041005400450001000000
      00001200000053005A005F00490044005F00530045004F000100000000001200
      000053005A005F00490053005F00440045004C00010000000000}
    UniqueFields = 'SZ_ID'
    QueryAllRecords = False
    UpdatingTable = 'MRK.V$SZ_MAIN_OP'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Sz_InfoNewRecord
    Left = 160
    Top = 312
    object Db_Sz_InfoSZ_ID: TFloatField
      FieldName = 'SZ_ID'
      Required = True
    end
    object Db_Sz_InfoSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object Db_Sz_InfoSZ_DATE: TDateTimeField
      FieldName = 'SZ_DATE'
    end
    object Db_Sz_InfoSZ_CONT_Y: TFloatField
      FieldName = 'SZ_CONT_Y'
    end
    object Db_Sz_InfoCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 1000
    end
    object Db_Sz_InfoSZ_CONT_Y_DATE: TDateTimeField
      FieldName = 'SZ_CONT_Y_DATE'
    end
    object Db_Sz_InfoSZ_CONDITION: TFloatField
      FieldName = 'SZ_CONDITION'
    end
    object Db_Sz_InfoSZ_KR: TFloatField
      FieldName = 'SZ_KR'
    end
    object Db_Sz_InfoSZ_TEMA: TStringField
      FieldName = 'SZ_TEMA'
      Size = 1000
    end
    object Db_Sz_InfoSZ_ID_CONT: TFloatField
      FieldName = 'SZ_ID_CONT'
    end
    object Db_Sz_InfoSZ_FROM_Y: TFloatField
      FieldName = 'SZ_FROM_Y'
    end
    object Db_Sz_InfoSZ_FROM: TStringField
      FieldName = 'SZ_FROM'
      Size = 4000
    end
    object Db_Sz_InfoSZ_FROM_Y_DATE: TDateTimeField
      FieldName = 'SZ_FROM_Y_DATE'
    end
    object Db_Sz_InfoSZ_TO_Y: TFloatField
      FieldName = 'SZ_TO_Y'
    end
    object Db_Sz_InfoSZ_TO: TStringField
      FieldName = 'SZ_TO'
      Size = 4000
    end
    object Db_Sz_InfoSZ_TO_Y_DATE: TDateTimeField
      FieldName = 'SZ_TO_Y_DATE'
    end
    object Db_Sz_InfoSZ_COPY_Y: TFloatField
      FieldName = 'SZ_COPY_Y'
    end
    object Db_Sz_InfoSZ_COPY: TStringField
      FieldName = 'SZ_COPY'
      Size = 4000
    end
    object Db_Sz_InfoSZ_COPY_Y_DATE: TDateTimeField
      FieldName = 'SZ_COPY_Y_DATE'
    end
    object Db_Sz_InfoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 86
    end
    object Db_Sz_InfoSTATUS_VALUE: TFloatField
      FieldName = 'STATUS_VALUE'
    end
    object Db_Sz_InfoSZ_FROM_ID: TFloatField
      FieldName = 'SZ_FROM_ID'
    end
    object Db_Sz_InfoSZ_TO_ID: TFloatField
      FieldName = 'SZ_TO_ID'
    end
    object Db_Sz_InfoSZ_COPY_ID: TFloatField
      FieldName = 'SZ_COPY_ID'
    end
    object Db_Sz_InfoSZ_SEO_NUMB: TFloatField
      FieldName = 'SZ_SEO_NUMB'
    end
    object Db_Sz_InfoSZ_SEO_DATE: TDateTimeField
      FieldName = 'SZ_SEO_DATE'
    end
    object Db_Sz_InfoSZ_ID_SEO: TFloatField
      FieldName = 'SZ_ID_SEO'
    end
    object Db_Sz_InfoSZ_IS_DEL: TFloatField
      FieldName = 'SZ_IS_DEL'
    end
  end
  object Tm_Boot: TTimer
    OnTimer = Tm_BootTimer
    Left = 432
    Top = 424
  end
end
