object Form35: TForm35
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1073#1086#1088' '#1086#1089#1085#1086#1074#1085#1086#1075#1086' '#1084#1072#1090#1077#1088#1080#1072#1083#1072' '#1079#1072#1075#1086#1090#1086#1074#1082#1080
  ClientHeight = 321
  ClientWidth = 546
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
    Width = 546
    Height = 321
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
        ' t.Ceh = :v_Ceh_Id'
      
        '                                                             And' +
        ' t.Flag = '#39'1'#39
      
        '                                                             And' +
        ' t.Norma > 0'
      
        '                                                             And' +
        ' t.Vidrab = 6'
      
        '                                                             And' +
        ' (Ogt.Mat_Xim.Grmat_id(t.Mat) In (1,2) '
      
        '                    Or Ras.v_Det_id('#39'MATX'#39',t.Mat) Like '#39'%'#1045#1058#1048#1053#1040#1050#1057 +
        '%'#39' Or Ras.v_Det_id('#39'MATX'#39',t.Mat) Like '#39'%'#1045#1050#1057#1058#1054#1051#1048#1058'%'#39' '
      
        '                    Or Ras.v_Det_id('#39'MATX'#39',t.Mat) Like '#39#1050#1056#1059#1043'%'#39'  ' +
        'Or Ras.v_Det_id('#39'MATX'#39',t.Mat) Like '#39#1055#1056#1059#1058#1054#1050'%'#39
      
        '                    Or Ras.v_Det_id('#39'MATX'#39',t.Mat) Like '#39#1051#1048#1057#1058'%'#39'  ' +
        'Or Ras.v_Det_id('#39'MATX'#39',t.Mat) Like '#39#1055#1051#1048#1058#1040'%'#39
      
        '                    Or Ras.v_Det_id('#39'MATX'#39',t.Mat) Like '#39'%'#1057#1058#1045#1050#1051#1054'%' +
        #39'  Or Ras.v_Det_id('#39'MATX'#39',t.Mat) Like '#39#1057#1058#1045#1056#1046#1045#1053#1068'%'#39
      
        '                    Or Ras.v_Det_id('#39'MATX'#39',t.Mat) Like '#39'%'#1054#1051#1048#1040#1052#1048#1044 +
        '%'#1041#1051#1054'%'#39')')
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
