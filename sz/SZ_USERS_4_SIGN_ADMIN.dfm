object Form39: TForm39
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1087#1086#1076#1087#1080#1089#1099#1074#1072#1102#1097#1077#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  ClientHeight = 288
  ClientWidth = 293
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
    Width = 293
    Height = 288
    Align = alClient
    DataSource = SZ_USERS_DATA
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FIO'
        Footers = <>
        Title.Caption = #1060'.'#1048'.'#1054'.'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PROF'
        Footers = <>
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SZ_USERS: TOracleDataSet
    SQL.Strings = (
      'select t.FIO, t.Prof, t.id from V$SZ_USERS t '
      'where t.id_type_users = :v_User_Type '
      'and t.user_ceh = :v_CEH')
    Optimize = False
    Variables.Data = {
      0400000002000000180000003A0056005F0055005300450052005F0054005900
      500045000500000000000000000000000C0000003A0056005F00430045004800
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000300000006000000460049004F000100000000000800000050005200
      4F0046000100000000000400000049004400010000000000}
    Session = Form20.OracleSession1
    Left = 136
    Top = 144
    object SZ_USERSFIO: TStringField
      FieldName = 'FIO'
      Size = 55
    end
    object SZ_USERSPROF: TStringField
      FieldName = 'PROF'
      Size = 255
    end
    object SZ_USERSID: TFloatField
      FieldName = 'ID'
    end
  end
  object SZ_USERS_DATA: TDataSource
    DataSet = SZ_USERS
    Left = 128
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 160
    Top = 80
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = DBGridEh1DblClick
    end
  end
end
