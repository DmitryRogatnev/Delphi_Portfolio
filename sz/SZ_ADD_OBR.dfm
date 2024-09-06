object Form36: TForm36
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
  ClientHeight = 644
  ClientWidth = 1110
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1110
    Height = 47
    Align = alTop
    BevelEdges = [beBottom]
    BevelKind = bkTile
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 1
      Width = 76
      Height = 14
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 267
      Top = 3
      Width = 74
      Height = 14
      Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 524
      Top = 1
      Width = 19
      Height = 14
      Caption = #1050#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 10
      Top = 17
      Width = 251
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Edit1'
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 267
      Top = 17
      Width = 251
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Edit1'
      OnChange = Edit2Change
    end
    object Edit3: TEdit
      Left = 524
      Top = 17
      Width = 149
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'Edit1'
      OnChange = Edit3Change
    end
    object Button1: TButton
      Left = 1024
      Top = 15
      Width = 75
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 943
      Top = 16
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object DBGridEh_Main: TDBGridEh
    Left = 0
    Top = 47
    Width = 1110
    Height = 597
    Align = alClient
    AutoFitColWidths = True
    DataSource = DS_CONTENT_SEO
    DynProps = <>
    EvenRowColor = clMenuBar
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KD'
        Footers = <>
        Title.Caption = #1050#1086#1076
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAIM'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 304
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NEW_NOM'
        Footers = <>
        Title.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOM'
        Footers = <>
        Title.Caption = #1063#1077#1088#1090#1077#1078#1085#1099#1081' '#8470' ('#1089#1090#1072#1088'.)'
        Width = 186
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_SEO'
        Footers = <>
        Title.Caption = 'C/'#1079' '#1057#1069#1054
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'CENA'
        Footers = <>
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1077#1079' '#1053#1044#1057', '#1088#1091#1073'.'
        Width = 145
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CENA_DATE_END'
        Footers = <>
        Title.Caption = #1062#1077#1085#1072' '#1076#1077#1081#1089#1090#1074#1091#1077#1090' '#1076#1086
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SZ_OP'
        Footers = <>
        Title.Caption = 'C/'#1079' '#1054#1090#1076#1077#1083#1072' '#1087#1088#1086#1076#1072#1078
        Width = 110
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DTKOR'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SZ_CONTENT_SEO: TOracleDataSet
    SQL.Strings = (
      'Select M8.Kd,'
      '       M8.Nom,'
      '       M8.New_Nom, '
      '       M8.Naim, '
      '       M8.DTKOR,'
      
        '       Decode( Sz_Seo.Sz_Numb, Null, Null, '#39#8470#39'||Sz_Seo.Sz_Numb||' +
        #39' '#1086#1090' '#39'||Sz_Seo.Sz_Date ) As Sz_Seo,'
      '       Sz_Seo.Sz_Id As Sz_Seo_Id,'
      '       Sz_Seo.Sz_Cost As Cena,'
      
        '       Sz_Seo.Sz_Add||'#39' '#39'||To_Char( Sz_Seo.Sz_Date_Cost, '#39'DD.MM.' +
        'YYYY'#39') As CENA_DATE_END,'
      
        '       Decode( Sz_Pr.Sz_Numb, Null, Null, '#39#8470#1047#1057'-'#39'||Sz_Pr.Sz_Numb|' +
        '|'#39' '#1086#1090' '#39'||Sz_Pr.Sz_Date ) As Sz_Op,'
      '       Sz_Pr.Sz_Id As Sz_Op_Id '
      'From Sveta.M08 M8'
      'Left Join ( Select a.Sz_Code_Ob, '
      '                   Info.Sz_Numb,'
      '                   Info.Sz_Date,'
      '                   Info.Sz_Id '
      '            From   Mrk.Sz_Table_Seo a'
      '            Join   ( Select b.Sz_Code_Ob,'
      
        '                            Max( b.Date_Change )as Max_Date_Chan' +
        'ge '
      '                     From  Mrk.Sz_Table_Seo b'
      
        '                     Group By b.Sz_Code_Ob ) Last_Change        ' +
        ' '
      '            On     Last_Change.Sz_Code_Ob = a.Sz_Code_Ob'
      
        '                   And Last_Change.Max_Date_Change = a.Date_Chan' +
        'ge'
      '            Join   Mrk.Sz_Table_Test Info'
      '            On     a.Sz_Id = Info.Sz_Id'
      '                   And Info.Sz_Is_Del = 0'
      '                   And Info.Sz_Condition <> - 1 ) Sz_Pr'
      'On   Sz_Pr.Sz_Code_Ob = M8.Kd'
      'Left Join ( Select a.Sz_Code_Ob, '
      '                   Info.Sz_Numb,'
      '                   Info.Sz_Date,'
      '                   a.Sz_Cost,'
      '                   Info.Sz_Add,'
      '                   a.Sz_Date_Cost,'
      '                   Info.Sz_Id '
      '            From   Mrk.Sz_Seo_Content a'
      '            Join   ( Select b.Sz_Code_Ob,'
      
        '                            Max( b.Date_Change )as Max_Date_Chan' +
        'ge '
      '                     From  Mrk.Sz_Seo_Content b'
      
        '                     Group By b.Sz_Code_Ob ) Last_Change        ' +
        ' '
      '            On     Last_Change.Sz_Code_Ob = a.Sz_Code_Ob'
      
        '                   And Last_Change.Max_Date_Change = a.Date_Chan' +
        'ge'
      '            Join   Mrk.Sz_Seo_Main Info'
      '            On     a.Sz_Id = Info.Sz_Id'
      '                   And Info.Sz_Is_Del = 0'
      '                   And Info.Sz_Condition <> - 1 ) Sz_Seo'
      'On   Sz_Seo.Sz_Code_Ob = M8.Kd'
      
        'Where Translate( Upper( M8.Nom ), '#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-'#39', '#39'%'#39' )  Like '#39 +
        '%'#39' || Translate ( Upper( :vNOM ),'#39#1056#1040' '#1040#1055#1048' '#1048#1041#1071#1051'.-*'#39', '#39'%'#39' ) || '#39'%'#39
      
        '      And Upper( M8.Naim) Like '#39'%'#39'||Translate( Upper( :vNAIM ),'#39 +
        '*'#39','#39'%'#39' )||'#39'%'#39
      '      And Upper( M8.Kd ) Like '#39'%'#39'||Upper( :vKOD )||'#39'%'#39
      '      And Nvl( M8.Snpr, 10 ) <> 0'
      'Order By M8.Nom, M8.Naim'
      '')
    Optimize = False
    Variables.Data = {
      04000000030000000A0000003A0056004E004F004D0005000000000000000000
      00000C0000003A0056004E00410049004D000500000000000000000000000A00
      00003A0056004B004F004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000B000000040000004B004400010000000000060000004E004F004D00
      010000000000080000004E00410049004D000100000000000800000043004500
      4E0041000100000000000A000000440054004B004F0052000100000000001A00
      0000430045004E0041005F0044004100540045005F0045004E00440001000000
      00000C00000053005A005F00530045004F000100000000001200000053005A00
      5F00530045004F005F00490044000100000000000A00000053005A005F004F00
      50000100000000001000000053005A005F004F0050005F004900440001000000
      00000E0000004E00450057005F004E004F004D00010000000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 636
    Top = 370
    object SZ_CONTENT_SEOKD: TStringField
      FieldName = 'KD'
      Required = True
      Size = 13
    end
    object SZ_CONTENT_SEONOM: TStringField
      FieldName = 'NOM'
      Required = True
      Size = 150
    end
    object SZ_CONTENT_SEONAIM: TStringField
      FieldName = 'NAIM'
      Size = 150
    end
    object SZ_CONTENT_SEODTKOR: TDateTimeField
      FieldName = 'DTKOR'
    end
    object SZ_CONTENT_SEOSZ_SEO: TStringField
      FieldName = 'SZ_SEO'
      Size = 53
    end
    object SZ_CONTENT_SEOSZ_SEO_ID: TFloatField
      FieldName = 'SZ_SEO_ID'
    end
    object SZ_CONTENT_SEOCENA: TFloatField
      FieldName = 'CENA'
    end
    object SZ_CONTENT_SEOCENA_DATE_END: TStringField
      FieldName = 'CENA_DATE_END'
      Size = 1011
    end
    object SZ_CONTENT_SEOSZ_OP: TStringField
      FieldName = 'SZ_OP'
      Size = 56
    end
    object SZ_CONTENT_SEOSZ_OP_ID: TFloatField
      FieldName = 'SZ_OP_ID'
    end
    object SZ_CONTENT_SEONEW_NOM: TStringField
      FieldName = 'NEW_NOM'
      Size = 100
    end
  end
  object DS_CONTENT_SEO: TDataSource
    AutoEdit = False
    DataSet = SZ_CONTENT_SEO
    Left = 376
    Top = 368
  end
end
