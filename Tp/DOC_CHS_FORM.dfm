object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1058#1055
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
    DataSource = DATA_TP_DOCS
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
        FieldName = 'DOC_NUM'
        Footers = <>
        Title.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 140
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CEH_KODE'
        Footers = <>
        Title.Caption = #1062#1077#1093' / '#1086#1090#1076#1077#1083
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DET_NUM_NAME'
        Footers = <>
        Title.Caption = #1064#1080#1092#1088' / '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080' / '#1089#1073#1086#1088#1082#1080
        Width = 350
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DB_TP_DOCS: TOracleDataSet
    SQL.Strings = (
      'select t.Det_Id, '
      
        '       (Select a.Det||'#39' '#39'||a.Nd From Ogt.Spr_Det a Where a.Id = ' +
        't.Det_Id) as Det_Num_Name,'
      
        '       (Select a.Det From Ogt.Spr_Det a Where a.Id = t.Det_Id) a' +
        's Det_Num,'
      
        '       (Select a.Nd From Ogt.Spr_Det a Where a.Id = t.Det_Id) as' +
        ' Det_Name,'
      '       t.Doc_Num, '
      '       t.Id, '
      '       t.Ceh_Id,'
      '       t.Det_Mar,'
      
        '       (Select a.Ceh From Ogt.Spr_Ceh a Where a.Id = t.Ceh_Id) a' +
        's Ceh_Kode,'
      '       t.Doc_Type,'
      '       t.Tp_Num,'
      '       t.Tp_Name,'
      '       t.Tp_Work_Type,'
      '       t.Main_Doc_Id'
      'From Ogt.Spr_Tp_Doc t '
      'Where upper(t.Doc_Num) Like '#39'%'#39'||upper(:v_Doc_KeyWord)||'#39'%'#39)
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0056005F0044004F0043005F004B0045005900
      57004F0052004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000E00000004000000490044000100000000000C000000440045005400
      5F0049004400010000000000180000004400450054005F004E0055004D005F00
      4E0041004D0045000100000000000E0000004400450054005F004E0055004D00
      010000000000100000004400450054005F004E0041004D004500010000000000
      0E00000044004F0043005F004E0055004D000100000000000C00000043004500
      48005F0049004400010000000000100000004300450048005F004B004F004400
      45000100000000000E0000004400450054005F004D0041005200010000000000
      1000000044004F0043005F0054005900500045000100000000000C0000005400
      50005F004E0055004D000100000000000E000000540050005F004E0041004D00
      450001000000000018000000540050005F0057004F0052004B005F0054005900
      50004500010000000000160000004D00410049004E005F0044004F0043005F00
      49004400010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DB_TP_DOCSDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object DB_TP_DOCSDET_NUM_NAME: TStringField
      FieldName = 'DET_NUM_NAME'
      Size = 151
    end
    object DB_TP_DOCSDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object DB_TP_DOCSDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object DB_TP_DOCSDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object DB_TP_DOCSID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object DB_TP_DOCSCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object DB_TP_DOCSCEH_KODE: TStringField
      FieldName = 'CEH_KODE'
      Size = 2
    end
    object DB_TP_DOCSDET_MAR: TStringField
      FieldName = 'DET_MAR'
      Size = 100
    end
    object DB_TP_DOCSDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object DB_TP_DOCSTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object DB_TP_DOCSTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object DB_TP_DOCSTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object DB_TP_DOCSMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
  end
  object DATA_TP_DOCS: TDataSource
    DataSet = DB_TP_DOCS
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
