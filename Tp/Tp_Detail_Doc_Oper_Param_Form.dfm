object Form_Oper_Param: TForm_Oper_Param
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form_Oper_Param'
  ClientHeight = 577
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object VGrid_Oper_Params: TDBVertGridEh
    Left = 0
    Top = 0
    Width = 425
    Height = 577
    Align = alClient
    AllowedSelections = []
    RowCategories.CategoryProps = <>
    PrintService.ColorSchema = pcsFullColorEh
    DrawGraphicData = True
    DrawMemoText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    OptionsEh = [dgvhHighlightFocusEh, dgvhClearSelectionEh, dgvhEnterToNextRowEh]
    ParentFont = False
    TabOrder = 0
    LabelColWidth = 196
    Rows = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OBOR_NAME'
        RowLabel.Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
        RowLabel.Color = 13353215
        OnUpdateData = DBVertGridEh1Rows0UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'PROF_CODE'
        RowLabel.Caption = #1050#1086#1076' '#1087#1088#1086#1092#1077#1089#1089#1080#1080
        RowLabel.Color = 13353215
        OnUpdateData = DBVertGridEh1Rows1UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_OBOR_EN'
        RowLabel.Caption = #1045#1053
        RowLabel.Color = 13353215
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_OBOR_TIME_PZ'
        RowLabel.Caption = #1058' '#1087'.'#1079'.'
        RowLabel.Color = 13353215
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_OBOR_TIME_SH'
        RowLabel.Caption = #1058' '#1096#1090'.'
        RowLabel.Color = 13353215
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ENVIRON'
        RowLabel.Caption = #1057#1088#1077#1076#1072
        RowLabel.Color = 15128749
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'HARDNESS'
        RowLabel.Caption = #1058#1074#1077#1088#1076#1086#1089#1090#1100
        RowLabel.Color = 15128749
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'T_MIN'
        RowLabel.Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072', '#1075#1088#1072#1076'. ('#1084#1080#1085')'
        RowLabel.Color = 12180223
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'T_MAX'
        RowLabel.Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072', '#1075#1088#1072#1076'. ('#1084#1072#1082#1089')'
        RowLabel.Color = 12180223
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'TIME_MIN'
        RowLabel.Caption = #1042#1088#1077#1084#1103' '#1086#1087#1077#1088#1072#1094#1080#1080', ('#1084#1080#1085')'
        RowLabel.Color = 55295
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'TIME_MAX'
        RowLabel.Caption = #1042#1088#1077#1084#1103' '#1086#1087#1077#1088#1072#1094#1080#1080', ('#1084#1072#1082#1089')'
        RowLabel.Color = 55295
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'TIME_EDIZM_NAME'
        RowLabel.Caption = #1045#1076'. '#1080#1079#1084'.'
        RowLabel.Color = 55295
        LookupParams.KeyFieldNames = 'TIME_EDIZM'
        LookupParams.LookupDataSet = Db_Time_Edizm
        LookupParams.LookupDisplayFieldName = 'ED_NAME'
        LookupParams.LookupKeyFieldNames = 'ED_KOD'
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'TIME_EDIZM'
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_KOID'
        ReadOnly = True
        RowLabel.Caption = #1050#1054#1048#1044
        RowLabel.Color = 9498256
        OnUpdateData = DBVertGridEh1Rows13UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_KUP'
        RowLabel.Caption = #1050#1059#1055
        RowLabel.Color = 9498256
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_PPPD'
        RowLabel.Caption = #1055#1055#1055#1044
        RowLabel.Color = 9498256
        OnUpdateData = DBVertGridEh1Rows15UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_COUNT_INS'
        RowLabel.Caption = #1050#1086#1083'-'#1074#1086' '#1087#1088#1080#1089#1087'. (n)'
        RowLabel.Color = 9498256
        OnUpdateData = DBVertGridEh1Rows16UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_COUNT_BATH'
        RowLabel.Caption = #1050#1086#1083'-'#1074#1086' '#1086#1089#1085#1086#1074#1085#1099#1093' '#1074#1072#1085#1085' (N)'
        RowLabel.Color = 9498256
        OnUpdateData = DBVertGridEh1Rows17UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_OPPP_DET'
        RowLabel.Caption = #1054#1055#1055#1055' '#1076#1077#1090'. '#1085#1072' '#1087#1088'.'
        RowLabel.Color = 9498256
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_KDP'
        RowLabel.Caption = #1050#1044#1055
        RowLabel.Color = 9498256
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_KDA'
        RowLabel.Caption = #1050#1044#1040
        RowLabel.Color = 9498256
        OnUpdateData = DBVertGridEh1Rows19UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_KSL'
        RowLabel.Caption = #1050' '#1089#1083'.'
        RowLabel.Color = 9498256
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_TOLSCH'
        RowLabel.Caption = #1058#1086#1083#1097#1080#1085#1072', '#1084#1082#1084
        RowLabel.Color = 9498256
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'OPER_TOLSCH_RANGE'
        RowLabel.Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1090#1086#1083#1097#1080#1085', '#1084#1082#1084
        RowLabel.Color = 9498256
      end
      item
        DynProps = <>
        DropDownRows = 3
        EditButtons = <>
        FieldName = 'OPER_CHS_PARAMS'
        RowLabel.Caption = 'I, D, '#1042#1088#1077#1084#1103
        RowLabel.Color = 9498256
        LookupParams.KeyFieldNames = 'OPER_CHS_PARAMS'
        LookupParams.LookupDataSet = Db_Chosen_Params
        LookupParams.LookupDisplayFieldName = 'PARAM'
        LookupParams.LookupKeyFieldNames = 'PARAM'
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLOR_NAME'
        RowLabel.Caption = #1062#1074#1077#1090
        RowLabel.Color = 9498256
        LookupParams.KeyFieldNames = 'OPER_COLOR_ID'
        LookupParams.LookupDataSet = Db_Colors
        LookupParams.LookupDisplayFieldName = 'COLOR_NAME'
        LookupParams.LookupKeyFieldNames = 'ID'
      end>
  end
  object Db_Time_Edizm: TOracleDataSet
    SQL.Strings = (
      'Select '#39#1057#39' as Ed_Kod, '#39#1057#1077#1082#1091#1085#1076#1099#39' as Ed_Name From Dual'
      ''
      'Union All'
      ''
      'Select '#39#1052#39', '#39#1052#1080#1085#1091#1090#1099#39' From Dual'
      ''
      'Union All'
      ''
      'Select '#39#1063#39', '#39#1063#1072#1089#1099#39' From Dual'
      ''
      'Union All'
      ''
      'Select null, null From Dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000000C000000450044005F004B004F0044000100000000000E00
      0000450044005F004E0041004D004500010000000000}
    Session = DM_Main.Session
    Left = 273
    Top = 258
  end
  object Data_Time_Edizm: TDataSource
    DataSet = Db_Time_Edizm
    Left = 273
    Top = 202
  end
  object Db_Chosen_Params: TOracleDataSet
    SQL.Strings = (
      'Select '
      '       ( Case'
      '           When ( Nvl( t.i_Min, 0 ) <> 0 ) '
      '                And ( Nvl( t.i_Max, 0 ) <> 0 )'
      
        '           Then '#39#1057#1080#1083#1072' '#1090#1086#1082#1072' '#39'||To_Char( t.i_Min )||'#39' - '#39'||To_Char' +
        '( t.i_Max )'
      '           When ( Nvl( t.i_Min, 0 ) <> 0 ) '
      '                And ( Nvl( t.i_Max, 0 ) = 0 )'
      '           Then '#39#1057#1080#1083#1072' '#1090#1086#1082#1072' '#1084#1080#1085'. '#39'||To_Char( t.i_Min )'
      '           When ( Nvl( t.i_Min, 0 ) = 0 ) '
      '                And ( Nvl( t.i_Max, 0 ) <> 0 )'
      '           Then '#39#1057#1080#1083#1072' '#1090#1086#1082#1072' '#1084#1072#1082#1089'. '#39'||To_Char( t.i_Max )'
      '           Else Null'
      '         End ) As Param'
      'From Ogt.v_Tp_Ok_Dlp t'
      'Where t.Id = :Id_Row_Oper'
      '      And ( t.i_Min Is Not Null'
      '            Or t.i_Max Is Not Null )'
      '      '
      ''
      'Union All'
      ''
      'Select      '
      '       ( Case'
      '           When ( Nvl( t.Time_Oper, 0 ) <> 0 ) '
      '                And ( Nvl( t.Time_Oper_Max, 0 ) <> 0 )'
      
        '           Then '#39#1042#1088#1077#1084#1103' '#1074#1099#1076#1077#1088#1078#1082#1080' '#39'||To_Char( t.Time_Oper )||'#39' - '#39 +
        '||To_Char( t.Time_Oper_Max )'
      '           When ( Nvl( t.Time_Oper, 0 ) <> 0 ) '
      '                And ( Nvl( t.Time_Oper_Max, 0 ) = 0 )'
      '           Then '#39#1042#1088#1077#1084#1103' '#1074#1099#1076#1077#1088#1078#1082#1080' '#1084#1080#1085'. '#39'||To_Char( t.Time_Oper )'
      '           When ( Nvl( t.Time_Oper, 0 ) = 0 ) '
      '                And ( Nvl( t.Time_Oper_Max, 0 ) <> 0 )'
      
        '           Then '#39#1042#1088#1077#1084#1103' '#1074#1099#1076#1077#1088#1078#1082#1080' '#1084#1072#1082#1089'. '#39'||To_Char( t.Time_Oper_Ma' +
        'x )'
      '           Else Null'
      '         End ) As Param'
      'From Ogt.v_Tp_Ok_Dlp t'
      'Where t.Id = :Id_Row_Oper'
      '      And ( t.Time_Oper_Max Is Not Null'
      '            Or t.Time_Oper Is Not Null )'
      ''
      'Union All'
      ''
      'Select '
      
        '         Decode( t.d_Toka, Null, Null, '#39#1055#1083#1086#1090#1085#1086#1089#1090#1100' '#1090#1086#1082#1072' - '#39'||t.d_' +
        'Toka ) As Param'
      'From Ogt.v_Tp_Ok_Dlp t'
      'Where t.Id = :Id_Row_Oper'
      '      And ( t.d_Toka Is Not Null )')
    Optimize = False
    Variables.Data = {
      0400000001000000180000003A00490044005F0052004F0057005F004F005000
      45005200050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {05000000010000000A00000050004100520041004D00010000000000}
    MasterFields = 'Id_Row_Oper'
    Session = DM_Main.Session
    Left = 264
    Top = 352
    object Db_Chosen_ParamsPARAM: TStringField
      FieldName = 'PARAM'
      Size = 98
    end
  end
  object Data_Chosen_Params: TDataSource
    DataSet = Db_Chosen_Params
    Left = 280
    Top = 312
  end
  object Db_Colors: TOracleDataSet
    SQL.Strings = (
      'Select t.Id, '
      '       t.Color_Name'
      'From   Ogt.Spr_Chem_Colors t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000200000004000000490044000100000000001400000043004F004C00
      4F0052005F004E0041004D004500010000000000}
    Session = DM_Main.Session
    Left = 280
    Top = 424
    object Db_ColorsID: TFloatField
      FieldName = 'ID'
    end
    object Db_ColorsCOLOR_NAME: TStringField
      FieldName = 'COLOR_NAME'
      Size = 200
    end
  end
  object Data_Colors: TDataSource
    DataSet = Db_Colors
    Left = 280
    Top = 384
  end
end
