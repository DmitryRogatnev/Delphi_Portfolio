object Form50: TForm50
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1084#1072#1090#1077#1088#1072#1083#1086#1074
  ClientHeight = 309
  ClientWidth = 532
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
    Width = 532
    Height = 309
    Align = alClient
    AutoFitColWidths = True
    DataSource = MATERIALS_DATA
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
        FieldName = 'MAT'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 383
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KODM'
        Footers = <>
        Title.Caption = #1050#1086#1076
        Width = 115
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object MATERIALS_DB: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Mat, '
      '       t.Name_Mat, '
      '       t.Kodm_Mat, '
      '       t.Code_Ed  '
      'From   Ogt.V_SPR_MATERIALS t'
      'Where  t.Flag_Use = 1'
      
        '       And translate (upper(Name_Mat), '#39'.-*,'#39', '#39'%'#39') like '#39'%'#39' || ' +
        'translate (upper(:MAT),'#39'.-*,'#39', '#39'%'#39') || '#39'%'#39
      '       Or upper(Kodm_Mat) like '#39'%'#39'||upper(:MAT)||'#39'%'#39)
    Optimize = False
    Variables.Data = {
      0400000001000000080000003A004D00410054000500000029000000CBC5CDD2
      C020D4D3CC2D3120302E312A3230203120D1CED0D220D2D3362D30352D313338
      382D38360000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000000400000049004400010000000000060000004D0041005400
      010000000000080000004B004F0044004D000100000000000A00000045004400
      49005A004D00010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object MATERIALS_DBID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MATERIALS_DBMAT: TStringField
      FieldName = 'MAT'
      Required = True
      Size = 150
    end
    object MATERIALS_DBKODM: TStringField
      FieldName = 'KODM'
      Size = 7
    end
    object MATERIALS_DBEDIZM: TStringField
      FieldName = 'EDIZM'
      Size = 3
    end
  end
  object MATERIALS_DATA: TDataSource
    DataSet = MATERIALS_DB
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
