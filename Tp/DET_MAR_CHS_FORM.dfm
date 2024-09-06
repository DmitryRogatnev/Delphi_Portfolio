object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1084#1072#1088#1096#1088#1091#1090#1086#1074' '#1076#1077#1090#1072#1083#1077#1081
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
    DataSource = DATA_DET_MAR
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
        FieldName = 'DET_NUM_NAME'
        Footers = <>
        Title.Caption = #1064#1080#1092#1088' '#1080' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MAR'
        Footers = <>
        Title.Caption = #1052#1072#1088#1096#1088#1091#1090
        Width = 267
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DB_DET_MAR: TOracleDataSet
    SQL.Strings = (
      'Select Distinct '
      '        t.Mar,'
      '        t.Det, '
      
        '        (Select a.Det||'#39' '#39'||a.Nd From Ogt.Spr_Det a Where a.Id =' +
        ' t.Det) as Det_Num_Name,'
      
        '        (Select a.Det From Ogt.Spr_Det a Where a.Id = t.Det) as ' +
        'Det_Num,'
      
        '        (Select a.Nd From Ogt.Spr_Det a Where a.Id = t.Det) as D' +
        'et_Name,'
      '        t.Id'
      ' From Ogt.Spr_Rcd t '
      ' Where Vmtm.Stat_Vmtm(t.izd) Not In (2,3)'
      ' And Ras.Status_Mtm(t.Nommtm)||Ras.Status_Mtm(t.Dokum)='#39'10'#39
      ' And t.Det Like :v_Det_Id'
      ''
      'Union All'
      ''
      
        'Select t.Mar, t.Id, t.Det||'#39' '#39'||t.Nd, t.Det, t.Nd, 0 From Spr_De' +
        't t'
      'Where t.Id Like :v_Det_Id ')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F004400450054005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000006000000040000004900440001000000000018000000440045005400
      5F004E0055004D005F004E0041004D0045000100000000000E00000044004500
      54005F004E0055004D00010000000000100000004400450054005F004E004100
      4D004500010000000000060000004D0041005200010000000000060000004400
      45005400010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DB_DET_MARMAR: TStringField
      FieldName = 'MAR'
      Size = 100
    end
    object DB_DET_MARDET: TFloatField
      FieldName = 'DET'
      Required = True
    end
    object DB_DET_MARDET_NUM_NAME: TStringField
      FieldName = 'DET_NUM_NAME'
      Size = 151
    end
    object DB_DET_MARDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object DB_DET_MARDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object DB_DET_MARID: TFloatField
      FieldName = 'ID'
      Required = True
    end
  end
  object DATA_DET_MAR: TDataSource
    DataSet = DB_DET_MAR
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
