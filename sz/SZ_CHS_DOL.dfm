object Form37: TForm37
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1076#1086#1083#1078#1085#1086#1089#1090#1080
  ClientHeight = 139
  ClientWidth = 260
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
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 236
    Height = 49
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 72
    Width = 236
    Height = 49
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button2Click
  end
  object USERS_DBA: TOracleDataSet
    SQL.Strings = (
      'select t.* FROM MRK.SZ_USERS t'
      'where t.id = :vId')
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A00560049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001400000004000000490044000100000000000E000000530055005200
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
      4100440053000100000000000A000000490044005F004D004600010000000000
      12000000490044005F00530052005F00530043004C0001000000000016000000
      490044005F0054005900500045005F0044004F005000010000000000}
    Session = Form20.OracleSession1
    Left = 128
    Top = 72
    object USERS_DBAID: TFloatField
      FieldName = 'ID'
    end
    object USERS_DBASURNAME: TStringField
      FieldName = 'SURNAME'
      Size = 50
    end
    object USERS_DBANAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object USERS_DBAPATRONYMIC: TStringField
      FieldName = 'PATRONYMIC'
      Size = 50
    end
    object USERS_DBAPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Size = 50
    end
    object USERS_DBAID_TYPE_USERS: TIntegerField
      FieldName = 'ID_TYPE_USERS'
    end
    object USERS_DBAID_TYPE_OTDEL: TIntegerField
      FieldName = 'ID_TYPE_OTDEL'
    end
    object USERS_DBASTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object USERS_DBAHEADS: TIntegerField
      FieldName = 'HEADS'
    end
    object USERS_DBASIGNBMP: TBlobField
      FieldName = 'SIGNBMP'
      BlobType = ftOraBlob
    end
    object USERS_DBASIGNBMP1: TBlobField
      FieldName = 'SIGNBMP1'
      BlobType = ftOraBlob
    end
    object USERS_DBAPHONE: TStringField
      FieldName = 'PHONE'
    end
    object USERS_DBAUSER_ONLINE: TFloatField
      FieldName = 'USER_ONLINE'
    end
    object USERS_DBAENTER_DATE: TDateTimeField
      FieldName = 'ENTER_DATE'
    end
    object USERS_DBAUSER_ADMIN: TFloatField
      FieldName = 'USER_ADMIN'
    end
    object USERS_DBAAUTO_LOAD: TFloatField
      FieldName = 'AUTO_LOAD'
    end
    object USERS_DBAID_TYPE_HEADS: TIntegerField
      FieldName = 'ID_TYPE_HEADS'
    end
    object USERS_DBAID_MF: TIntegerField
      FieldName = 'ID_MF'
    end
    object USERS_DBAID_SR_SCL: TIntegerField
      FieldName = 'ID_SR_SCL'
    end
    object USERS_DBAID_TYPE_DOP: TFloatField
      FieldName = 'ID_TYPE_DOP'
    end
  end
end
