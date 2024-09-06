object Form38: TForm38
  Left = 0
  Top = 0
  Anchors = [akTop, akRight]
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1086#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
  ClientHeight = 650
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 0
    Width = 411
    Height = 650
    Align = alClient
    DataSource = DS_USERSONLINE
    DynProps = <>
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnGetCellParams = DBGridEh3GetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FIO'
        Footers = <>
        Title.Caption = #1060#1048#1054
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PHONE'
        Footers = <>
        Title.Caption = #1058#1077#1083'.'
        Width = 41
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TERMINAL'
        Footers = <>
        Title.Caption = #1058#1077#1088#1084'.'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ENTER_DATE'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1074#1093#1086#1076#1072
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MESSAGE'
        Footers = <>
        Title.Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1077
        Width = 200
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object UsersOnline: TOracleDataSet
    SQL.Strings = (
      
        'select (sz_enter.getNameUser(t.id)) as fio,(select d.sz_terminal' +
        '_name from mrk.sz_terminals_u d where d.sz_id_users = t.id ) as ' +
        'terminal, t.* FROM MRK.SZ_USERS_NOTIF t where t.user_online = 1'
      'order by t.enter_date desc'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000D0000001400000045004E005400450052005F004400410054004500
      01000000000006000000460049004F000100000000000A000000500048004F00
      4E00450001000000000004000000490044000100000000000E00000053005500
      52004E0041004D004500010000000000080000004E0041004D00450001000000
      00001400000050004100540052004F004E0059004D0049004300010000000000
      1A000000490044005F0054005900500045005F00550053004500520053000100
      000000001A000000490044005F0054005900500045005F004F00540044004500
      4C000100000000001600000055005300450052005F004F004E004C0049004E00
      45000100000000001400000055005300450052005F004E004F00540049004600
      0100000000000E0000004D004500530053004100470045000100000000001000
      00005400450052004D0049004E0041004C00010000000000}
    QueryAllRecords = False
    Session = Form20.OracleSession1
    Left = 48
    Top = 152
    object UsersOnlineFIO: TStringField
      FieldName = 'FIO'
      Size = 4000
    end
    object UsersOnlinePHONE: TStringField
      FieldName = 'PHONE'
    end
    object UsersOnlineUSER_ONLINE: TFloatField
      FieldName = 'USER_ONLINE'
    end
    object UsersOnlineENTER_DATE: TDateTimeField
      FieldName = 'ENTER_DATE'
    end
    object UsersOnlineUSER_NOTIF: TFloatField
      FieldName = 'USER_NOTIF'
    end
    object UsersOnlineMESSAGE: TStringField
      FieldName = 'MESSAGE'
      Size = 2000
    end
    object UsersOnlineTERMINAL: TStringField
      FieldName = 'TERMINAL'
      Size = 10
    end
    object UsersOnlineID: TFloatField
      FieldName = 'ID'
    end
    object UsersOnlineSURNAME: TStringField
      FieldName = 'SURNAME'
      Size = 50
    end
    object UsersOnlineNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object UsersOnlinePATRONYMIC: TStringField
      FieldName = 'PATRONYMIC'
      Size = 50
    end
    object UsersOnlineID_TYPE_USERS: TIntegerField
      FieldName = 'ID_TYPE_USERS'
    end
    object UsersOnlineID_TYPE_OTDEL: TIntegerField
      FieldName = 'ID_TYPE_OTDEL'
    end
  end
  object DS_USERSONLINE: TDataSource
    DataSet = UsersOnline
    Left = 44
    Top = 210
  end
  object PopupMenu1: TPopupMenu
    Left = 184
    Top = 384
    object N1: TMenuItem
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1089#1086#1086#1073#1097#1077#1085#1080#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1056#1072#1079#1086#1089#1083#1072#1090#1100' '#1087#1088#1086#1089#1100#1073#1091' '#1079#1072#1082#1088#1099#1090#1100' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1055#1088#1080#1085#1091#1076#1080#1090#1077#1083#1100#1085#1086' '#1079#1072#1082#1088#1099#1090#1100' '#1074#1089#1077' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
      OnClick = N3Click
    end
    object N5: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      OnClick = N5Click
    end
    object N4: TMenuItem
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      OnClick = N4Click
    end
  end
  object OraclePackage1: TOraclePackage
    Session = Form20.OracleSession1
    PackageName = 'SZ_PACKAGE'
    Left = 303
    Top = 432
  end
end
