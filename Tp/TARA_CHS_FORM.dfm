object Form18: TForm18
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1072#1088#1099
  ClientHeight = 317
  ClientWidth = 676
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
    Width = 676
    Height = 317
    Align = alClient
    AutoFitColWidths = True
    DataSource = DATA_TARA
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
        FieldName = 'TARA'
        Footers = <>
        Title.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077' '
        Width = 255
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAIM_T'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '
        Width = 300
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DB_TARA: TOracleDataSet
    SQL.Strings = (
      'Select t.Id, t.Tara, t.Naim_T||'#39' '#39'||(case'
      
        '  when t.length_Max is not null or t.Width_Max is not null or t.' +
        'Height_ is not null then nvl(t.Length_Max,0)||'#39'x'#39'||nvl(t.width_M' +
        'ax,0)||'#39'x'#39'||nvl(t.height_,0)'
      '  Else null'
      ' end) as Naim_T'
      'From Ogt.Spr_Tara t'
      'Where Upper(t.Tara) like '#39'%'#39'||Upper(:v_KeyWord)||'#39'%'#39
      'Or Upper(t.Naim_T) like '#39'%'#39'||Upper(:v_KeyWord)||'#39'%'#39
      'Order By Tara'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0056005F004B004500590057004F0052004400
      0500000005000000313132310000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000003000000040000004900440001000000000008000000540041005200
      41000100000000000C0000004E00410049004D005F005400010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DB_TARAID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object DB_TARATARA: TStringField
      FieldName = 'TARA'
      Required = True
      Size = 50
    end
    object DB_TARANAIM_T: TStringField
      FieldName = 'NAIM_T'
      Required = True
      Size = 100
    end
  end
  object DATA_TARA: TDataSource
    DataSet = DB_TARA
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
