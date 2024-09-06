object Form21: TForm21
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1073#1086#1088' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  ClientHeight = 339
  ClientWidth = 579
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
    Width = 579
    Height = 339
    Align = alClient
    DataSource = USER_DATA
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
        FieldName = 'CEH_ABBREV'
        Footers = <>
        Title.Caption = #1062#1077#1093'/'#1054#1090#1076#1077#1083
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME_RAZRAB'
        Footers = <>
        Title.Caption = #1060'.'#1048'.'#1054'.'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PHONE'
        Footers = <>
        Title.Caption = #1058#1077#1083'.'
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PROF'
        Footers = <>
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        Width = 500
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object USERS_DB: TOracleDataSet
    SQL.Strings = (
      'select t.name_razrab, '
      '       t.prof, '
      '       t.ceh_abbrev, '
      '       t.adres as phone, '
      '       t.zex, '
      '       t.id, '
      '       t.vidrab,'
      
        '      (select c.id from spr_Ceh c where c.ceh = t.zex) as ceh_Id' +
        ', t.lnum  '
      'from V$RAZRAB t'
      'where upper(t.name_razrab) like upper(:vFIO) || '#39'%'#39
      'or upper(t.adres) like upper(:vFIO)||'#39'%'#39
      'or t.lnum like upper(:vFIO)||'#39'%'#39)
    Optimize = False
    Variables.Data = {
      04000000010000000A0000003A005600460049004F0005000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      0500000009000000160000004E0041004D0045005F00520041005A0052004100
      420001000000000008000000500052004F004600010000000000140000004300
      450048005F004100420042005200450056000100000000000A00000050004800
      4F004E004500010000000000060000005A004500580001000000000004000000
      49004400010000000000080000004C004E0055004D000100000000000C000000
      4300450048005F00490044000100000000000C00000056004900440052004100
      4200010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object USERS_DBNAME_RAZRAB: TStringField
      FieldName = 'NAME_RAZRAB'
      Size = 100
    end
    object USERS_DBPROF: TStringField
      FieldName = 'PROF'
      Size = 255
    end
    object USERS_DBCEH_ABBREV: TStringField
      FieldName = 'CEH_ABBREV'
      Size = 10
    end
    object USERS_DBPHONE: TStringField
      FieldName = 'PHONE'
    end
    object USERS_DBZEX: TStringField
      FieldName = 'ZEX'
      Size = 2
    end
    object USERS_DBID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object USERS_DBLNUM: TIntegerField
      FieldName = 'LNUM'
    end
    object USERS_DBCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object USERS_DBVIDRAB: TFloatField
      FieldName = 'VIDRAB'
    end
  end
  object USER_DATA: TDataSource
    DataSet = USERS_DB
    Left = 248
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 208
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = N1Click
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form2.OracleSession1
    Left = 401
    Top = 158
  end
end
