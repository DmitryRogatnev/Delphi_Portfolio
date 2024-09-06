object Form52: TForm52
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Form52'
  ClientHeight = 402
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 648
    Height = 402
    Align = alClient
    AutoFitColWidths = True
    DataSource = DETAILS_DATA
    DynProps = <>
    OddRowColor = clMenuBar
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
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 229
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DET_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 383
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DETAILS_DB: TOracleDataSet
    SQL.Strings = (
      'Select t.*'
      'From   Ogt.TP_GKTTP_DET_DLP_COPY t'
      
        'Where  ( Translate( Upper( t.Det_Num ), '#39' .-'#39', '#39'%'#39' ) ) Like '#39'%'#39'|' +
        '|Translate( Upper( :v_KeyWord ),'#39' .-*'#39', '#39'%'#39' )||'#39'%'#39
      '       Or Upper( t.Det_Name ) Like '#39'%'#39'||Upper( :v_KeyWord )||'#39'%'#39
      'order by t.Det_Num')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0056005F004B004500590057004F0052004400
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000008000000060000004D00410052000100000000000400000049004400
      01000000000012000000490044005F0044004F0043005F005400500001000000
      00000C0000004400450054005F00490044000100000000001600000044004100
      540045005F004300480041004E00470045000100000000000E00000044004500
      54005F004E0055004D00010000000000100000004400450054005F004E004100
      4D0045000100000000000800000046004C0041004700010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DETAILS_DBID: TFloatField
      FieldName = 'ID'
    end
    object DETAILS_DBID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
    end
    object DETAILS_DBDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object DETAILS_DBDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object DETAILS_DBDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 100
    end
    object DETAILS_DBDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 150
    end
    object DETAILS_DBFLAG: TFloatField
      FieldName = 'FLAG'
    end
    object DETAILS_DBMAR: TStringField
      FieldName = 'MAR'
      Size = 200
    end
  end
  object DETAILS_DATA: TDataSource
    DataSet = DETAILS_DB
    Left = 248
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 208
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
    end
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form2.OracleSession1
    Left = 401
    Top = 158
  end
end
