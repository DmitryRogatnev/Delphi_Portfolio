object Form9: TForm9
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1073#1086#1088' '#1086#1090#1076#1077#1083#1072' '#1076#1083#1103' '#1074#1086#1079#1074#1088#1072#1090#1072
  ClientHeight = 309
  ClientWidth = 304
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
    Width = 304
    Height = 309
    Align = alClient
    AutoFitColWidths = True
    DataSource = DATA_STEPS_TO_RETURN
    DynProps = <>
    EvenRowColor = clMenu
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    OnKeyUp = DBGridEh1KeyUp
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CEH_NAME'
        Footers = <>
        Title.Caption = #1062#1077#1093' / '#1054#1090#1076#1077#1083
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'APPR_STEP_NAME'
        Footers = <>
        Title.Caption = #1057#1086#1075#1083#1072#1089#1091#1102#1097#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
        Width = 200
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DB_STEPS_TO_RETURN: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      
        '(Select a.Ceh_Abbrev From Ogt.Spr_Ceh a Where a.Id = t.Ceh_Id) a' +
        's Ceh_Name, '
      
        '(Select a.Appr_Step_Name From Ogt.Spr_Tp_Appr_List a Where a.App' +
        'r_Step_Num = t.Appr_Step) as Appr_Step_Name '
      'From Ogt.Spr_Tp_Doc_Appr t '
      'Where t.Id_Doc_Tp = :v_Doc_Id'
      'And t.Flag_Out In (1, 2)'
      ''
      'Order by Appr_Step')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000C000000040000004900440001000000000012000000490044005F00
      44004F0043005F00540050000100000000000C0000004300450048005F004900
      44000100000000000E00000046004C00410047005F0049004E00010000000000
      0E00000044004100540045005F0049004E000100000000001000000046004C00
      410047005F004F00550054000100000000001000000044004100540045005F00
      4F00550054000100000000000C000000520041005A0052004100420001000000
      00001200000044004100540045005F00430048004E0047000100000000001200
      000041005000500052005F005300540045005000010000000000100000004300
      450048005F004E0041004D0045000100000000001C0000004100500050005200
      5F0053005400450050005F004E0041004D004500010000000000}
    Session = Form2.OracleSession1
    Left = 48
    Top = 136
    object DB_STEPS_TO_RETURNID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object DB_STEPS_TO_RETURNID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object DB_STEPS_TO_RETURNCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object DB_STEPS_TO_RETURNFLAG_IN: TFloatField
      FieldName = 'FLAG_IN'
    end
    object DB_STEPS_TO_RETURNDATE_IN: TDateTimeField
      FieldName = 'DATE_IN'
    end
    object DB_STEPS_TO_RETURNFLAG_OUT: TFloatField
      FieldName = 'FLAG_OUT'
    end
    object DB_STEPS_TO_RETURNDATE_OUT: TDateTimeField
      FieldName = 'DATE_OUT'
    end
    object DB_STEPS_TO_RETURNRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object DB_STEPS_TO_RETURNDATE_CHNG: TDateTimeField
      FieldName = 'DATE_CHNG'
    end
    object DB_STEPS_TO_RETURNAPPR_STEP: TStringField
      FieldName = 'APPR_STEP'
      Required = True
      Size = 3
    end
    object DB_STEPS_TO_RETURNCEH_NAME: TStringField
      FieldName = 'CEH_NAME'
      Size = 10
    end
    object DB_STEPS_TO_RETURNAPPR_STEP_NAME: TStringField
      FieldName = 'APPR_STEP_NAME'
      Size = 100
    end
  end
  object DATA_STEPS_TO_RETURN: TDataSource
    DataSet = DB_STEPS_TO_RETURN
    Left = 128
    Top = 136
  end
  object PKG_TP_DOC: TOraclePackage
    Session = Form2.OracleSession1
    PackageName = 'PKG_TP_DOC'
    Left = 180
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    Left = 132
    Top = 216
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = DBGridEh1DblClick
    end
  end
end
