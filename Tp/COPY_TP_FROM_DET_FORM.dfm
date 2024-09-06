object Form15: TForm15
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1076#1077#1090#1072#1083#1080' '#1076#1083#1103' '#1082#1086#1087#1080#1088#1086#1074#1072#1085#1080#1103' '#1058#1055
  ClientHeight = 331
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 645
    Height = 310
    Align = alClient
    DataSource = DATA_DET_TP
    DynProps = <>
    EvenRowColor = clMenuBar
    PopupMenu = PopupMenu1
    SearchPanel.Enabled = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DET_NUM'
        Footers = <>
        Title.Caption = #1064#1080#1092#1088' '#1076#1077#1090#1072#1083#1080' / '#1089#1073#1086#1088#1082#1080
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DET_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080' / '#1089#1073#1086#1088#1082#1080
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOC_NUM'
        Footers = <>
        Title.Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 310
    Width = 645
    Height = 21
    Align = alBottom
    TabOrder = 1
    object COPY_1_Check: TCheckBox
      Left = 8
      Top = 2
      Width = 201
      Height = 17
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1089' '#1079#1072#1084#1077#1085#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1081
      TabOrder = 0
      OnClick = COPY_1_CheckClick
    end
    object COPY_2_Check: TCheckBox
      Left = 210
      Top = 2
      Width = 234
      Height = 17
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1100' '#1080#1084#1077#1102#1097#1080#1077#1089#1103' '#1086#1087#1077#1088#1072#1094#1080#1080
      TabOrder = 1
      OnClick = COPY_2_CheckClick
    end
    object COPY_BTN: TButton
      Left = 423
      Top = 2
      Width = 103
      Height = 17
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = COPY_BTNClick
    end
    object EXIT_BTN: TButton
      Left = 532
      Top = 2
      Width = 103
      Height = 17
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = EXIT_BTNClick
    end
  end
  object DB_DET_TP: TOracleDataSet
    SQL.Strings = (
      'Select         '
      '               t.Det, '
      
        '              (Select a.Det From Ogt.Spr_Det a Where a.Id = t.De' +
        't) as Det_Num,'
      
        '              (Select a.Nd From Ogt.Spr_Det a Where a.Id = t.Det' +
        ') as Det_Name,'
      '               Null as Doc_Num,'
      '               t.Id as Doc_Id'
      ''
      'From Ogt.Spr_Tp t'
      'Where t.Dok_Out Is Null'
      
        'And t.Det Not In (Select a.Det_Id From Ogt.Spr_Tp_Doc a Where a.' +
        'Main_Doc_Id Is Null'
      
        '                                                      And a.Canc' +
        'el_Flag = 0'
      
        '                                                      And (Selec' +
        't Count (c.Id) From Ogt.Tp_Ok_Dlp c Where c.Id_Doc_Tp = a.Id) <>' +
        ' 0)'
      ''
      'Union All'
      ''
      'Select '
      '              t.Det_Id, '
      
        '              (Select a.Det From Ogt.Spr_Det a Where a.Id = t.De' +
        't_Id) as Det_Num,'
      
        '              (Select a.Nd From Ogt.Spr_Det a Where a.Id = t.Det' +
        '_Id) as Det_Name,'
      '              t.Doc_Num,'
      '              t.Id as Doc_Id'
      ''
      'From Ogt.Spr_Tp_Doc t'
      'Where t.Main_Doc_Id Is Null'
      'And t.Cancel_Flag = 0'
      
        'And (Select Count (c.Id) From Ogt.Tp_Ok_Dlp c Where c.Id_Doc_Tp ' +
        '= t.Id) <> 0')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000005000000060000004400450054000100000000000E00000044004500
      54005F004E0055004D00010000000000100000004400450054005F004E004100
      4D0045000100000000000E00000044004F0043005F004E0055004D0001000000
      00000C00000044004F0043005F0049004400010000000000}
    Session = Form2.OracleSession1
    Left = 464
    Top = 56
    object DB_DET_TPDET: TFloatField
      FieldName = 'DET'
    end
    object DB_DET_TPDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object DB_DET_TPDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object DB_DET_TPDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Size = 15
    end
    object DB_DET_TPDOC_ID: TFloatField
      FieldName = 'DOC_ID'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 160
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = COPY_BTNClick
    end
    object N2: TMenuItem
      Caption = #1055#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1086#1090#1095#1077#1090
    end
  end
  object DATA_DET_TP: TDataSource
    DataSet = DB_DET_TP
    Left = 480
    Top = 216
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form2.OracleSession1
    Left = 567
    Top = 111
  end
  object PKG_TP_DOC: TOraclePackage
    Session = Form2.OracleSession1
    PackageName = 'PKG_TP_DOC'
    Left = 328
    Top = 59
  end
end
