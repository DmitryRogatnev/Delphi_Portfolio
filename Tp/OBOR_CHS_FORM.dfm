object Form14: TForm14
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 645
    Height = 309
    Align = alClient
    AutoFitColWidths = True
    DataSource = DATA_OBOR
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
        FieldName = 'OBOR'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 383
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DB_OBOR: TOracleDataSet
    SQL.Strings = (
      'select * from Ogt.OPP_SPR_OBOR_TXT t'
      
        'where translate (upper(t.obor), '#39' .-'#39', '#39'%'#39') like '#39'%'#39' || translat' +
        'e (upper(:OBOR),'#39' .-*'#39', '#39'%'#39') || '#39'%'#39
      '      And t.Kol >= 1'
      '      And Nvl( t.Pr, 0 ) = 1'
      '      And t.Ceh = :v_Ceh')
    Optimize = False
    Variables.Data = {
      04000000020000000A0000003A004F0042004F00520005000000000000000000
      00000C0000003A0056005F00430045004800050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000007000000080000004F0042004F0052000100000000000C0000004F00
      42004F0052004900440001000000000006000000430045004800010000000000
      060000004B004F004C0001000000000004000000500052000100000000000600
      00005500430048000100000000000E0000004300450048005F004B004F004400
      010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DB_OBOROBORID: TFloatField
      FieldName = 'OBORID'
      Required = True
    end
    object DB_OBOROBOR: TStringField
      FieldName = 'OBOR'
      Size = 4000
    end
    object DB_OBORCEH: TStringField
      FieldName = 'CEH'
      Required = True
      Size = 10
    end
    object DB_OBORKOL: TIntegerField
      FieldName = 'KOL'
    end
    object DB_OBORPR: TIntegerField
      FieldName = 'PR'
    end
    object DB_OBORUCH: TStringField
      FieldName = 'UCH'
      Size = 2
    end
    object DB_OBORCEH_KOD: TStringField
      FieldName = 'CEH_KOD'
      Size = 10
    end
  end
  object DATA_OBOR: TDataSource
    DataSet = DB_OBOR
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
