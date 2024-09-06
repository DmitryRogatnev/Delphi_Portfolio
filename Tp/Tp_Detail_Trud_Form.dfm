object Form_Detail_Trud: TForm_Detail_Trud
  Left = 0
  Top = 0
  Caption = #1053#1086#1088#1084#1099' '#1090#1088#1091#1076#1086#1077#1084#1082#1086#1089#1090#1080' '#1076#1083#1103' '#1076#1077#1090#1072#1083#1080
  ClientHeight = 414
  ClientWidth = 719
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
  object Grid_Detail_Trud: TDBGridEh
    Left = 0
    Top = 0
    Width = 719
    Height = 414
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_Trud_For_Detail
    DynProps = <>
    EvenRowColor = clMenu
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterRowCount = 2
    HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh]
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    PopupMenu = TRUD_PM
    SearchPanel.Enabled = True
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 0
    TitleParams.RowHeight = 30
    OnGetCellParams = Grid_Detail_TrudGetCellParams
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CEH'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1093
        Width = 27
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KODPROF'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1087#1088#1086#1092#1077#1089#1089#1080#1080
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PROFPOLN'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1080
        Width = 300
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RAZR'
        Footer.Value = #1048#1090#1086#1075#1086':'
        Footer.ValueType = fvtStaticText
        Footers = <
          item
            Color = 13826810
            Value = #1048#1090#1086#1075#1086':'
            ValueType = fvtStaticText
          end
          item
            Color = 15658671
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Value = #1055#1086' '#1058#1055':'
            ValueType = fvtStaticText
          end>
        Title.Alignment = taCenter
        Title.Caption = #1056#1072#1079#1088#1103#1076
        Width = 60
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00000'
        DynProps = <>
        EditButtons = <>
        FieldName = 'T_NORM'
        Footer.DisplayFormat = '#,#0.00000'
        Footer.FieldName = 'T_NORM'
        Footer.ValueType = fvtSum
        Footers = <
          item
            Color = 13826810
            DisplayFormat = '#,#0.00000'
            FieldName = 'NORMY_CURRENT'
            ValueType = fvtSum
          end
          item
            Color = 15658671
            DisplayFormat = '#,#0.00000'
            FieldName = 'NORMY_TP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1088#1084#1072', '#1085'/'#1095
        Width = 60
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'MONEY'
        Footer.DisplayFormat = '#,#0.00'
        Footer.FieldName = 'MONEY'
        Footer.ValueType = fvtSum
        Footers = <
          item
            DisplayFormat = '#,#0.00'
            FieldName = 'MONEY'
            ValueType = fvtSum
          end
          item
          end>
        Title.Alignment = taCenter
        Title.Caption = #1056#1072#1089#1094#1077#1085#1082#1072', '#1088#1091#1073'.'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KVN'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076
        Width = 60
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Db_Trud_For_Detail: TOracleDataSet
    SQL.Strings = (
      'Select Norm.*,'
      '       Prof.Profpoln,'
      '       ( Case Norm.Flag_Tp'
      '           When 1'
      '           Then Norm.T_Norm'
      '           Else Null '
      '         End ) Normy_Tp,'
      '       ( Case Norm.Flag_Tp'
      '           When 0'
      '           Then Norm.T_Norm'
      '           Else Null '
      '         End ) Normy_Current'
      'From '
      '( Select Sum(t.All_Oper_Time) T_Norm,'
      '       Ceh.Ceh,'
      '       t.Prof_Code Kodprof,'
      '       t.Prof_Class Razr,'
      '       Null As Money,'
      '       t.Prof_Ctn Kvn,'
      '       1 as Flag_Tp'
      'From   Ogt.v_Tp_Ok_Oper_Time t'
      'Left   Join Ogt.v_Tp_Ok_Dlp Oper'
      'On     Oper.Id_Row_Oper = t.Oper_Rw_Id'
      'Left   Join Ogt.Spr_Ceh Ceh'
      'On     Ceh.Id = Oper.Ceh_Id'
      'Where  Oper.Id_Doc_Tp = :v_Doc_Id'
      '       And Oper.Id_Part_Tp In ( Select t.Id'
      '                                From Ogt.V_TP_OK_MAR_PARTS t'
      '                                Where t.Id_Doc_Tp = ( Case '
      
        '                                                      When ( Sel' +
        'ect Nvl( a.Main_Doc_Id, 0 )'
      
        '                                                             Fro' +
        'm   Ogt.v_Spr_Tp_Doc a'
      
        '                                                             Whe' +
        're  a.Id = :v_Doc_Id ) = 0 Then :v_Doc_Id'
      
        '                                                      When ( Sel' +
        'ect Nvl( a.Main_Doc_Id, 0 )'
      
        '                                                             Fro' +
        'm   Ogt.v_Spr_Tp_Doc a'
      
        '                                                             Whe' +
        're  a.Id = :v_Doc_Id ) <> 0 Then ( Select  Nvl( a.Main_Doc_Id, 0' +
        ' )'
      
        '                                                                ' +
        '                                   From   Ogt.v_Spr_Tp_Doc a'
      
        '                                                                ' +
        '                                   Where  a.Id = :v_Doc_Id )'
      '                                                      End )'
      '                                      And (Case '
      
        '                                             When ( t.Ceh_Code I' +
        'n ( Select Dep.dep_Code      '
      
        '                                                                ' +
        '    From   STP.V_DEP_MMBRS t'
      
        '                                                                ' +
        '    Left   Join Stp.v_Deps Dep'
      
        '                                                                ' +
        '    On     Dep.id_dep = t.Dep_Id'
      
        '                                                                ' +
        '    Where  t.User_Id = User'
      
        '                                                                ' +
        '         And ( t.dep_Mmbr_Pstn_Id = 201'
      
        '                                                                ' +
        '         Or  t.dep_Mmbr_Pstn_Id = 202 ) ) )'
      
        '                                                    Or ( '#39'75'#39' In' +
        ' ( Select Dep.dep_Code      '
      
        '                                                                ' +
        '    From   STP.V_DEP_MMBRS t'
      
        '                                                                ' +
        '    Left   Join Stp.v_Deps Dep'
      
        '                                                                ' +
        '    On     Dep.id_dep = t.Dep_Id'
      
        '                                                                ' +
        '    Where  t.User_Id = User'
      
        '                                                                ' +
        '         And t.dep_Mmbr_Pstn_Id = 201 ) )'
      
        '                                                    Or ( Stp.Pkg' +
        '_User.F_Check_Program_Param( In_Object_Id => 8784,'
      
        '                                                                ' +
        '                             In_Parametr => '#39'ADMIN'#39','
      
        '                                                                ' +
        '                             In_Value => '#39'1'#39' ) = 1 ) Then 1'
      '                                             Else 0 '
      '                                             End ) = 1 )'
      'Group By t.Prof_Code, t.Prof_Class, t.Prof_Ctn, Ceh.Ceh'
      ''
      'Union All'
      ''
      'Select '
      '       a.Time,'
      '       a.NC,'
      '       a.Kodprof,'
      '       a.Razr,'
      '       a.Money,'
      '       a.Kvn,'
      '       0 as Flag_Tp'
      'From   Sveta.M05 a '
      'Where  a.Kd = Ogt.Asup_Ogt.Kd_Asup_Min(v_det => :v_Det_Num)'
      '       And ( a.Nc In ( Select Dep.dep_Code      '
      '                     From   STP.V_DEP_MMBRS t'
      '                     Left   Join Stp.v_Deps Dep'
      '                     On     Dep.id_dep = t.Dep_Id'
      '                     Where  t.User_Id = User'
      '                            And t.dep_Mmbr_Pstn_Id = 202 ) '
      
        '              Or Stp.Pkg_User.F_Check_Program_Param( In_Object_I' +
        'd => 8784,'
      
        '                                                       In_Parame' +
        'tr => '#39'ADMIN'#39','
      
        '                                                       In_Value ' +
        '=> '#39'1'#39' ) = 1 ) '
      ''
      'Union All'
      ''
      'Select '
      '       a.Time,'
      '       a.NC,'
      '       a.Kodprof,'
      '       a.Razr,'
      '       a.Money,'
      '       a.Kvn,'
      '       0 as Flag_Tp'
      'From   Sveta.M05_Otk a'
      'Where  a.Kd = Ogt.Asup_Ogt.Kd_Asup_Min(v_det => :v_Det_Num)'
      '       And a.Proc in (0)'
      '       And ( a.Nc In ( Select Dep.dep_Code      '
      '                     From   STP.V_DEP_MMBRS t'
      '                     Left   Join Stp.v_Deps Dep'
      '                     On     Dep.id_dep = t.Dep_Id'
      '                     Where  t.User_Id = User'
      '                            And t.dep_Mmbr_Pstn_Id = 202 ) '
      
        '              Or Stp.Pkg_User.F_Check_Program_Param( In_Object_I' +
        'd => 8784,'
      
        '                                                       In_Parame' +
        'tr => '#39'ADMIN'#39','
      
        '                                                       In_Value ' +
        '=> '#39'1'#39' ) = 1 )  ) Norm'
      'Left   Join Sveta.M26 Prof'
      'On     Prof.Kodprof = Norm.Kodprof'
      'Order  By Norm.Kodprof, Norm.Razr')
    Optimize = False
    Variables.Data = {
      0400000002000000120000003A0056005F0044004F0043005F00490044000300
      00000000000000000000140000003A0056005F004400450054005F004E005500
      4D00050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000A0000000E0000004B004F004400500052004F004600010000000000
      08000000520041005A005200010000000000060000004B0056004E0001000000
      00000A0000004D004F004E00450059000100000000000C00000054005F004E00
      4F0052004D00010000000000060000004300450048000100000000000E000000
      46004C00410047005F005400500001000000000010000000500052004F004600
      50004F004C004E00010000000000100000004E004F0052004D0059005F005400
      50000100000000001A0000004E004F0052004D0059005F004300550052005200
      45004E005400010000000000}
    Session = DM_Main.Session
    Left = 519
    Top = 265
    object Db_Trud_For_DetailT_NORM: TFloatField
      FieldName = 'T_NORM'
    end
    object Db_Trud_For_DetailCEH: TStringField
      FieldName = 'CEH'
      Size = 2
    end
    object Db_Trud_For_DetailKODPROF: TStringField
      FieldName = 'KODPROF'
      Size = 5
    end
    object Db_Trud_For_DetailRAZR: TIntegerField
      FieldName = 'RAZR'
    end
    object Db_Trud_For_DetailMONEY: TFloatField
      FieldName = 'MONEY'
    end
    object Db_Trud_For_DetailFLAG_TP: TFloatField
      FieldName = 'FLAG_TP'
    end
    object Db_Trud_For_DetailPROFPOLN: TStringField
      FieldName = 'PROFPOLN'
      Size = 150
    end
    object Db_Trud_For_DetailNORMY_TP: TFloatField
      FieldName = 'NORMY_TP'
    end
    object Db_Trud_For_DetailNORMY_CURRENT: TFloatField
      FieldName = 'NORMY_CURRENT'
    end
    object Db_Trud_For_DetailKVN: TIntegerField
      FieldName = 'KVN'
    end
  end
  object Data_Trud_For_Detail: TDataSource
    DataSet = MemT_Trud_For_Detail
    Left = 511
    Top = 112
  end
  object TRUD_PM: TPopupMenu
    Left = 367
    Top = 199
    object N28: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = N28Click
    end
  end
  object Driver_Trud_For_Detail: TDataSetDriverEh
    ProviderDataSet = Db_Trud_For_Detail
    Left = 520
    Top = 216
  end
  object MemT_Trud_For_Detail: TMemTableEh
    Params = <>
    DataDriver = Driver_Trud_For_Detail
    Left = 520
    Top = 168
    object MemT_Trud_For_DetailT_NORM: TFloatField
      FieldName = 'T_NORM'
    end
    object MemT_Trud_For_DetailCEH: TStringField
      FieldName = 'CEH'
      Size = 2
    end
    object MemT_Trud_For_DetailKODPROF: TStringField
      FieldName = 'KODPROF'
      Size = 5
    end
    object MemT_Trud_For_DetailRAZR: TIntegerField
      FieldName = 'RAZR'
    end
    object MemT_Trud_For_DetailMONEY: TFloatField
      FieldName = 'MONEY'
    end
    object MemT_Trud_For_DetailFLAG_TP: TFloatField
      FieldName = 'FLAG_TP'
    end
    object MemT_Trud_For_DetailPROFPOLN: TStringField
      FieldName = 'PROFPOLN'
      Size = 150
    end
    object MemT_Trud_For_DetailNORMY_TP: TFloatField
      FieldName = 'NORMY_TP'
    end
    object MemT_Trud_For_DetailNORMY_CURRENT: TFloatField
      FieldName = 'NORMY_CURRENT'
    end
    object MemT_Trud_For_DetailKVN: TIntegerField
      FieldName = 'KVN'
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = Grid_Detail_Trud
    Options = [pghFitGridToPageWidth, pghColored, pghRowAutoStretch, pghFitingByColWidths]
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = []
    Units = MM
    Left = 240
    Top = 240
  end
end
