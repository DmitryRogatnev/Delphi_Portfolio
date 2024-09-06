object Form31: TForm31
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1102
  ClientHeight = 92
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object EMessage: TEdit
    Left = 8
    Top = 35
    Width = 428
    Height = 21
    TabOrder = 0
    Text = 'EMessage'
  end
  object Button1: TButton
    Left = 8
    Top = 62
    Width = 75
    Height = 25
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 361
    Top = 62
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 2
    OnClick = Button2Click
  end
  object USER_LCB: TDBLookupComboboxEh
    Left = 8
    Top = 8
    Width = 428
    Height = 21
    DynProps = <>
    DataField = ''
    EditButtons = <>
    KeyField = 'ID'
    ListField = 'FIO'
    ListSource = USERS_DATA
    TabOrder = 3
    Visible = True
  end
  object DS_Users: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, sz_enter.GetNameUser(t.id) as FIO FROM MRK.SZ_USERS' +
        ' t '
      'order by surname'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000040000004900440001000000000006000000460049004F00
      010000000000}
    Session = Form20.OracleSession1
    Left = 216
    Top = 30
    object DS_UsersID: TFloatField
      FieldName = 'ID'
    end
    object DS_UsersFIO: TStringField
      FieldName = 'FIO'
      Size = 4000
    end
  end
  object OraclePackage2: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_ENTER'
    Left = 144
    Top = 30
  end
  object OraclePackage1: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 96
    Top = 30
  end
  object USERS_DATA: TDataSource
    DataSet = DS_Users
    Left = 272
    Top = 40
  end
end
