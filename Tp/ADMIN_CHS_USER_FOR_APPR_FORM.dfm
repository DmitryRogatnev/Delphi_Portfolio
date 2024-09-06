object Form8: TForm8
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1073#1086#1088' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1076#1083#1103' '#1087#1086#1076#1087#1080#1089#1072#1085#1080#1103
  ClientHeight = 309
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 645
    Height = 309
    Align = alClient
    AutoFitColWidths = True
    DataSource = DATA_APPR_USERS
    DynProps = <>
    OddRowColor = clMenuBar
    PopupMenu = PopupMenu1
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    OnKeyUp = DBGridEh1KeyUp
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LNUM'
        Footers = <>
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZEX'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1093' / '#1054#1090#1076#1077#1083
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME_RAZRAB'
        Footers = <>
        Title.Caption = #1060'.'#1048'.'#1054'.'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PROF'
        Footers = <>
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        Width = 300
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DB_APPR_USERS: TOracleDataSet
    SQL.Strings = (
      'Select * From'
      '('
      
        '   Select t.Name_Razrab, t.Lnum, '#39'001'#39' as Appr_Step, t.zex, t.pr' +
        'of From V$RAZRAB t'
      
        '   Where t.Lnum = (Select a.Author_Lnum From Ogt.Spr_Tp_Doc a Wh' +
        'ere a.Id = :v_Doc_Id)'
      ''
      '   Union All'
      ''
      
        '   Select t.Name_Razrab, t.Lnum, '#39'002'#39' as Appr_Step, t.zex, t.pr' +
        'of From V$RAZRAB t'
      '   Where upper(t.Prof) Like '#39'%'#1048#1053#1046#1045#1053'%-'#1058#1045#1061#1053#1054#1051'%'#39' '
      '   Or (upper (t.Prof) Like '#39'%'#1047#1040#1052'%'#1053#1040#1063#1040#1051#1068#1053'%'#39' And t.Zex = '#39'75'#39')'
      ''
      '   Union All'
      ''
      
        '   Select t.Name_Razrab, t.Lnum, '#39'006'#39' as Appr_Step, t.zex, '#39'('#39'|' +
        '|t.gr||'#39') '#39'||t.prof as prof From V$RAZRAB t'
      '   Where upper(t.Prof) Like '#39'%'#1048#1053#1046#1045#1053'%-'#1058#1045#1061#1053#1054#1051'%'#39' '
      '   Or (upper (t.Prof) Like '#39'%'#1047#1040#1052'%'#1053#1040#1063#1040#1051#1068#1053'%'#39' And t.Zex = '#39'75'#39')'
      ''
      '   Union All'
      ''
      
        '   Select t.Name_Razrab, t.Lnum, '#39'003'#39' as Appr_Step, t.zex, t.pr' +
        'of From V$RAZRAB t'
      '   Where upper(t.Prof) Like '#39'%'#1053#1054#1056#1052#1048#1056#1054#1042'%'#39
      '         And t.Zex <> '#39'38'#39
      ''
      '   Union All'
      ''
      
        '   Select t.Name_Razrab, t.Lnum, '#39'007'#39' as Appr_Step, t.zex, t.pr' +
        'of From V$RAZRAB t'
      '   Where upper(t.Prof) Like '#39'%'#1053#1054#1056#1052#1048#1056#1054#1042'%'#39
      '         And t.Zex = '#39'38'#39
      ''
      '   Union All'
      ''
      
        '   Select t.Name_Razrab, t.Lnum, '#39'004'#39' as Appr_Step, decode(t.ze' +
        'x, '#39'21'#39', '#39'05'#39', t.zex), t.prof From V$RAZRAB t'
      '   Where upper(t.Prof) Like '#39'%'#1053#1040#1063#1040#1051#1068#1053'%'#39
      '   And upper(t.Prof) Not Like '#39'%'#1041#1070#1056#1054'%'#39
      '   And upper(t.Prof) Not Like '#39'%'#1059#1063#1040#1057#1058'%'#39
      '   And upper(t.Prof) Not Like '#39'%'#1057#1045#1050#1058'%'#39
      ''
      '   Union All'
      ''
      
        '   Select t.Name_Razrab, t.Lnum, '#39'005'#39' as Appr_Step, t.zex, t.pr' +
        'of From V$RAZRAB t'
      '   Where upper(t.Prof) Like '#39'%'#1053#1040#1063#1040#1051#1068#1053'%'#1043#1051#1040#1042#1053'%'#1058#1045#1061#1053'%'#39
      ')a'
      
        'Where a.Zex In ( Select ( Select c.Ceh From Ogt.Spr_Ceh c Where ' +
        'c.Id = (Case'
      
        '                                                                ' +
        '          When a.Ceh_Id = 6 And a.Appr_Step = '#39'004'#39' Then 3'
      
        '                                                                ' +
        '          Else a.Ceh_Id'
      
        '                                                                ' +
        '        End ) )  '
      '                 From Ogt.Spr_Tp_Doc_Appr a Where a.Flag_In = 1'
      
        '                                            And a.Id_Doc_Tp = :v' +
        '_Doc_Id )'
      
        'And a.Appr_Step In (Select Distinct c.Appr_Step From Ogt.Spr_Tp_' +
        'Doc_Appr c Where c.Flag_In = 1'
      
        '                                                                ' +
        '          And c.Id_Doc_Tp = :v_Doc_Id )')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      0000040000003134310000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000005000000160000004E0041004D0045005F00520041005A0052004100
      4200010000000000080000004C004E0055004D00010000000000120000004100
      5000500052005F005300540045005000010000000000060000005A0045005800
      01000000000008000000500052004F004600010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DB_APPR_USERSNAME_RAZRAB: TStringField
      FieldName = 'NAME_RAZRAB'
      Size = 100
    end
    object DB_APPR_USERSLNUM: TIntegerField
      FieldName = 'LNUM'
    end
    object DB_APPR_USERSAPPR_STEP: TStringField
      FieldName = 'APPR_STEP'
      Size = 3
    end
    object DB_APPR_USERSZEX: TStringField
      FieldName = 'ZEX'
      Size = 2
    end
    object DB_APPR_USERSPROF: TStringField
      FieldName = 'PROF'
      Size = 255
    end
  end
  object DATA_APPR_USERS: TDataSource
    DataSet = DB_APPR_USERS
    Left = 248
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 208
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = DBGridEh1DblClick
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form2.OracleSession1
    Left = 401
    Top = 158
  end
end
