object Form57: TForm57
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1076#1083#1103' '#1076#1077#1090#1072#1083#1080
  ClientHeight = 309
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 539
    Height = 309
    Align = alClient
    AutoFitColWidths = True
    DataSource = DATA_DET_MAT
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
        FieldName = 'MAT_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 383
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MAT_KOD'
        Footers = <>
        Title.Caption = #1050#1086#1076
        Width = 115
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DB_DET_MAT: TOracleDataSet
    SQL.Strings = (
      'Select '
      '     t.Mat as Id, '
      
        '     (Select a.Mat From Ogt.Spr_Matx a Where a.Id = t.Mat) as Ma' +
        't_Name,'
      
        '     (Select a.Kodm From Ogt.Spr_Matx a Where a.Id = t.Mat) as M' +
        'at_Kod,'
      
        '     (Select a.Edizm From Ogt.Spr_Matx a Where a.Id = t.Mat) as ' +
        'Mat_Ed'
      '  '
      '                                         From Ogt.Norm_Mat t '
      
        '                                                             Whe' +
        're t.Det = :v_Det_Id'
      
        '                                                             And' +
        ' t.Ceh = ( Select a.Id'
      
        '                                                                ' +
        '           From   Ogt.Spr_Ceh a'
      
        '                                                                ' +
        '           Where a.Ceh = :v_Ceh_Id )'
      
        '                                                             And' +
        ' t.Flag = '#39'1'#39
      
        '                                                             And' +
        ' t.Norma > 0'
      
        '                                                             And' +
        ' ( t.Vidrab = 6 '
      
        '                                                                ' +
        '   Or t.Vidrab = 7 )')
    Optimize = False
    Variables.Data = {
      0400000002000000120000003A0056005F004400450054005F00490044000500
      00000000000000000000120000003A0056005F004300450048005F0049004400
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000000400000049004400010000000000100000004D0041005400
      5F004E0041004D0045000100000000000E0000004D00410054005F004B004F00
      44000100000000000C0000004D00410054005F0045004400010000000000}
    Session = Form2.OracleSession1
    Left = 136
    Top = 168
    object DB_DET_MATID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object DB_DET_MATMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object DB_DET_MATMAT_KOD: TStringField
      FieldName = 'MAT_KOD'
      Size = 7
    end
    object DB_DET_MATMAT_ED: TStringField
      FieldName = 'MAT_ED'
      Size = 3
    end
  end
  object DATA_DET_MAT: TDataSource
    DataSet = DB_DET_MAT
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
