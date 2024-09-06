object Form_Tp_Data_Changes: TForm_Tp_Data_Changes
  Left = 0
  Top = 0
  Caption = 'Form_Tp_Data_Changes'
  ClientHeight = 671
  ClientWidth = 1105
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 249
    Top = 0
    Width = 8
    Height = 671
    ExplicitLeft = 172
    ExplicitHeight = 649
  end
  object Grid_ChangesBookmrks: TDBGridEh
    Left = 0
    Top = 0
    Width = 249
    Height = 671
    Align = alLeft
    AutoFitColWidths = True
    Ctl3D = True
    DataSource = Data_Changes_Bookmrks
    DynProps = <>
    EvenRowColor = clBtnFace
    Flat = True
    OddRowColor = clBtnFace
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Bkmrk_Name'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel_Changes: TPanel
    Left = 257
    Top = 0
    Width = 848
    Height = 671
    Align = alClient
    Caption = 'Panel_Changes'
    ShowCaption = False
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 409
      Top = 1
      Width = 11
      Height = 669
      ExplicitLeft = 189
      ExplicitHeight = 647
    end
    object Panel_Changes_Bfr: TPanel
      Left = 1
      Top = 1
      Width = 408
      Height = 669
      Align = alLeft
      Caption = 'Panel_Changes_Bfr'
      TabOrder = 0
      object Panel_Changes_Bfr_Capt: TPanel
        Left = 1
        Top = 1
        Width = 406
        Height = 41
        Align = alTop
        Caption = #1041#1067#1051#1054
        TabOrder = 0
      end
      object Grid_Changes_Bfr: TDBGridEh
        Left = 1
        Top = 42
        Width = 406
        Height = 626
        PopupMenuParams.UseGlobalMenu = True
        PopupMenuParams.UseIndicatorMenu = True
        Align = alClient
        DataSource = Data_Changes_Bfr
        DynProps = <>
        EditActions = [geaCopyEh]
        Flat = True
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
        PopupMenu = Pop_M_Changes
        ReadOnly = True
        RowHeight = 2
        RowLines = 1
        SearchPanel.Enabled = True
        SortLocal = True
        STFilter.InstantApply = True
        STFilter.Local = True
        STFilter.Location = stflInTitleFilterEh
        TabOrder = 1
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel_Changes_Aftr: TPanel
      Left = 420
      Top = 1
      Width = 427
      Height = 669
      Align = alClient
      Caption = 'Panel_Changes_Aftr'
      TabOrder = 1
      object Panel_Changes_Aftr_Capt: TPanel
        Left = 1
        Top = 1
        Width = 425
        Height = 41
        Align = alTop
        Caption = #1057#1058#1040#1051#1054
        TabOrder = 0
      end
      object Grid_Changes_Aftr: TDBGridEh
        Left = 1
        Top = 42
        Width = 425
        Height = 626
        PopupMenuParams.UseGlobalMenu = True
        PopupMenuParams.UseIndicatorMenu = True
        Align = alClient
        DataSource = Data_Changes_Aftr
        DynProps = <>
        EditActions = [geaCopyEh]
        Flat = True
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
        PopupMenu = Pop_M_Changes
        ReadOnly = True
        RowHeight = 2
        RowLines = 1
        SearchPanel.Enabled = True
        SortLocal = True
        STFilter.InstantApply = True
        STFilter.Local = True
        STFilter.Location = stflInTitleFilterEh
        TabOrder = 1
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Db_Opers_Chng: TOracleDataSet
    SQL.Strings = (
      'Select Ins.*, '#39'New_Vers'#39' Flag'
      'From'
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,       '
      
        '       To_Char( ( Row_number() Over(Order By Op.Id_Doc_Tp, Op.Pa' +
        'rt_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op.Oper_Name,'
      '       Op.Obor,'
      '       Op.Obor_Name,'
      '       Op.Prim,'
      '       Op.Tt,'
      '       Op.Mat,'
      '       Op.Mat_Name,'
      '       Op.Tara,'
      '       Op.Tara_Num||'#39' '#39'||Op.Tara_Name Tara_Num_Name,'
      '       Op.Iot '
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id'
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( ( Row_number() Over(Order By Op.Id_Doc_Tp, Op.Pa' +
        'rt_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op.Oper_Name,'
      '       Op.Obor,'
      '       Op.Obor_Name,'
      '       Op.Prim,'
      '       Op.Tt,'
      '       Op.Mat,'
      '       Op.Mat_Name,'
      '       Op.Tara,'
      '       Op.Tara_Num||'#39' '#39'||Op.Tara_Name Tara_Num_Name,'
      '       Op.Iot '
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) ) Ins'
      '                               '
      'Union All'
      ''
      'Select Del.*, '#39'Deleted'#39' Flag'
      'From   '
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( ( Row_number() Over(Order By Op.Id_Doc_Tp, Op.Pa' +
        'rt_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op.Oper_Name,'
      '       Op.Obor,'
      '       Op.Obor_Name,'
      '       Op.Prim,'
      '       Op.Tt,'
      '       Op.Mat,'
      '       Op.Mat_Name,'
      '       Op.Tara,'
      '       Op.Tara_Num||'#39' '#39'||Op.Tara_Name Tara_Num_Name,'
      '       Op.Iot '
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) '
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( ( Row_number() Over(Order By Op.Id_Doc_Tp, Op.Pa' +
        'rt_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op.Oper_Name,'
      '       Op.Obor,'
      '       Op.Obor_Name,'
      '       Op.Prim,'
      '       Op.Tt,'
      '       Op.Mat,'
      '       Op.Mat_Name,'
      '       Op.Tara,'
      '       Op.Tara_Num||'#39' '#39'||Op.Tara_Name Tara_Num_Name,'
      '       Op.Iot '
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id ) Del')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000110000000E0000004E004F004D004F00500045005200010000000000
      1800000050004100520054005F0052004F0057005F004E0055004D0001000000
      000006000000430045004800010000000000100000004300450048005F004300
      4F0044004500010000000000080000004F005000450052000100000000001200
      00004F005000450052005F004E0041004D004500010000000000080000004F00
      42004F005200010000000000120000004F0042004F0052005F004E0041004D00
      4500010000000000080000005000520049004D00010000000000040000005400
      5400010000000000060000004D0041005400010000000000100000004D004100
      54005F004E0041004D0045000100000000000800000054004100520041000100
      000000001A00000054004100520041005F004E0055004D005F004E0041004D00
      45000100000000000600000049004F0054000100000000000800000046004C00
      41004700010000000000160000004F005000450052005F004E0055004D004200
      45005200010000000000}
    Session = DM_Main.Session
    Left = 280
    Top = 592
    object Db_Opers_ChngNOMOPER: TFloatField
      FieldName = 'NOMOPER'
    end
    object Db_Opers_ChngPART_ROW_NUM: TFloatField
      FieldName = 'PART_ROW_NUM'
    end
    object Db_Opers_ChngCEH: TFloatField
      FieldName = 'CEH'
    end
    object Db_Opers_ChngCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Opers_ChngOPER: TFloatField
      FieldName = 'OPER'
    end
    object Db_Opers_ChngOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object Db_Opers_ChngOBOR: TFloatField
      FieldName = 'OBOR'
    end
    object Db_Opers_ChngOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object Db_Opers_ChngPRIM: TStringField
      FieldName = 'PRIM'
      Size = 500
    end
    object Db_Opers_ChngTT: TStringField
      FieldName = 'TT'
      Size = 1000
    end
    object Db_Opers_ChngMAT: TFloatField
      FieldName = 'MAT'
    end
    object Db_Opers_ChngMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object Db_Opers_ChngTARA: TFloatField
      FieldName = 'TARA'
    end
    object Db_Opers_ChngTARA_NUM_NAME: TStringField
      FieldName = 'TARA_NUM_NAME'
      Size = 151
    end
    object Db_Opers_ChngIOT: TStringField
      FieldName = 'IOT'
      Size = 50
    end
    object Db_Opers_ChngFLAG: TStringField
      FieldName = 'FLAG'
      Size = 8
    end
    object Db_Opers_ChngOPER_NUMBER: TStringField
      FieldName = 'OPER_NUMBER'
      Size = 5
    end
  end
  object Driver_Changes: TDataSetDriverEh
    Left = 442
    Top = 537
  end
  object MemT_Changes: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Changes
    Left = 442
    Top = 489
  end
  object MemT_Changes_Bfr: TMemTableEh
    ExternalMemData = MemT_Changes
    Filter = 'Flag='#39'Old_Vers'#39
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    Left = 394
    Top = 417
  end
  object MemT_Changes_Aftr: TMemTableEh
    ExternalMemData = MemT_Changes
    Filter = 'Flag='#39'New_Vers'#39
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    Left = 989
    Top = 489
  end
  object Data_Changes_Bfr: TDataSource
    DataSet = MemT_Changes_Bfr
    Left = 394
    Top = 377
  end
  object Data_Changes_Aftr: TDataSource
    DataSet = MemT_Changes_Aftr
    Left = 917
    Top = 505
  end
  object Db_Oper_Per_Chng: TOracleDataSet
    SQL.Strings = (
      'Select Ins.*, '#39'New_Vers'#39' Flag'
      'From'
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op.Oper_Name,'
      '       Op_P.Nom_Per,'
      '       Op_P.Per,'
      '       OP_p.Prim,'
      '       Op_p.Tt_Per'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id'
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op.Oper_Name,'
      '       Op_P.Nom_Per,'
      '       Op_P.Per,'
      '       Op_P.Prim,'
      '       Op_P.Tt_Per'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) ) Ins'
      '                               '
      'Union All'
      ''
      'Select Del.*, '#39'Old_Vers'#39' Flag'
      'From   '
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op.Oper_Name,'
      '       Op_P.Nom_Per,'
      '       Op_P.Per,'
      '       OP_p.Prim,'
      '       Op_p.Tt_Per'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) '
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op.Oper_Name,'
      '       Op_P.Nom_Per,'
      '       Op_P.Per,'
      '       OP_p.Prim,'
      '       Op_p.Tt_Per'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id ) Del')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000C0000000E0000004E004F004D004F00500045005200010000000000
      1800000050004100520054005F0052004F0057005F004E0055004D0001000000
      000006000000430045004800010000000000100000004300450048005F004300
      4F0044004500010000000000080000004F005000450052000100000000001200
      00004F005000450052005F004E0041004D0045000100000000000E0000004E00
      4F004D005F005000450052000100000000000600000050004500520001000000
      0000080000005000520049004D000100000000000C000000540054005F005000
      450052000100000000000800000046004C004100470001000000000016000000
      4F005000450052005F004E0055004D00420045005200010000000000}
    Session = DM_Main.Session
    Left = 376
    Top = 592
    object Db_Oper_Per_ChngNOMOPER: TFloatField
      FieldName = 'NOMOPER'
    end
    object Db_Oper_Per_ChngPART_ROW_NUM: TFloatField
      FieldName = 'PART_ROW_NUM'
    end
    object Db_Oper_Per_ChngCEH: TFloatField
      FieldName = 'CEH'
    end
    object Db_Oper_Per_ChngCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Oper_Per_ChngOPER: TFloatField
      FieldName = 'OPER'
    end
    object Db_Oper_Per_ChngOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object Db_Oper_Per_ChngNOM_PER: TIntegerField
      FieldName = 'NOM_PER'
    end
    object Db_Oper_Per_ChngPER: TStringField
      FieldName = 'PER'
      Size = 1500
    end
    object Db_Oper_Per_ChngPRIM: TStringField
      FieldName = 'PRIM'
      Size = 500
    end
    object Db_Oper_Per_ChngTT_PER: TStringField
      FieldName = 'TT_PER'
      Size = 500
    end
    object Db_Oper_Per_ChngFLAG: TStringField
      FieldName = 'FLAG'
      Size = 8
    end
    object Db_Oper_Per_ChngOPER_NUMBER: TStringField
      FieldName = 'OPER_NUMBER'
      Size = 5
    end
  end
  object Db_Per_Det_Chng: TOracleDataSet
    SQL.Strings = (
      'Select Ins.*, '#39'New_Vers'#39' Flag'
      'From'
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Det.Det_Id,'
      '       P_Det.Det_Num||'#39' '#39'||P_Det.Det_Name Det_Num_Name,'
      '       P_Det.Nom_Det,'
      '       P_Det.Kol'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Det_Dlp P_Det'
      'On     P_Det.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id'
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Det.Det_Id,'
      '       P_Det.Det_Num||'#39' '#39'||P_Det.Det_Name Det_Num_Name,'
      '       P_Det.Nom_Det,'
      '       P_Det.Kol'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Det_Dlp P_Det'
      'On     P_Det.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) ) Ins'
      '                               '
      'Union All'
      ''
      'Select Del.*, '#39'Old_Vers'#39' Flag'
      'From   '
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Det.Det_Id,'
      '       P_Det.Det_Num||'#39' '#39'||P_Det.Det_Name Det_Num_Name,'
      '       P_Det.Nom_Det,'
      '       P_Det.Kol'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Det_Dlp P_Det'
      'On     P_Det.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) '
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Det.Det_Id,'
      '       P_Det.Det_Num||'#39' '#39'||P_Det.Det_Name Det_Num_Name,'
      '       P_Det.Nom_Det,'
      '       P_Det.Kol'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Det_Dlp P_Det'
      'On     P_Det.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id ) Del')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000C0000000E0000004E004F004D004F00500045005200010000000000
      1800000050004100520054005F0052004F0057005F004E0055004D0001000000
      000006000000430045004800010000000000100000004300450048005F004300
      4F0044004500010000000000080000004F005000450052000100000000000E00
      00004E004F004D005F005000450052000100000000000C000000440045005400
      5F0049004400010000000000180000004400450054005F004E0055004D005F00
      4E0041004D0045000100000000000E0000004E004F004D005F00440045005400
      010000000000060000004B004F004C000100000000000800000046004C004100
      4700010000000000160000004F005000450052005F004E0055004D0042004500
      5200010000000000}
    Session = DM_Main.Session
    Left = 480
    Top = 592
    object Db_Per_Det_ChngNOMOPER: TFloatField
      FieldName = 'NOMOPER'
    end
    object Db_Per_Det_ChngPART_ROW_NUM: TFloatField
      FieldName = 'PART_ROW_NUM'
    end
    object Db_Per_Det_ChngCEH: TFloatField
      FieldName = 'CEH'
    end
    object Db_Per_Det_ChngCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Per_Det_ChngOPER: TFloatField
      FieldName = 'OPER'
    end
    object Db_Per_Det_ChngNOM_PER: TIntegerField
      FieldName = 'NOM_PER'
    end
    object Db_Per_Det_ChngDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Per_Det_ChngDET_NUM_NAME: TStringField
      FieldName = 'DET_NUM_NAME'
      Size = 151
    end
    object Db_Per_Det_ChngNOM_DET: TIntegerField
      FieldName = 'NOM_DET'
    end
    object Db_Per_Det_ChngKOL: TFloatField
      FieldName = 'KOL'
    end
    object Db_Per_Det_ChngFLAG: TStringField
      FieldName = 'FLAG'
      Size = 8
    end
    object Db_Per_Det_ChngOPER_NUMBER: TStringField
      FieldName = 'OPER_NUMBER'
      Size = 5
    end
  end
  object Db_Per_Mat_Chng: TOracleDataSet
    SQL.Strings = (
      'Select Ins.*, '#39'New_Vers'#39' Flag'
      'From'
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Mat.Mat_Id,'
      '       P_Mat.Mat_Name,'
      '       P_Mat.Nom_Mat,'
      '       P_Mat.Norma_Min,'
      '       P_Mat.Norma_Max,'
      '       P_Mat.Ed_Id,'
      '       P_Mat.Ed_Name,'
      '       P_Mat.Mat_Viscos'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Mat_Dlp P_Mat'
      'On     P_Mat.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id'
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Mat.Mat_Id,'
      '       P_Mat.Mat_Name,'
      '       P_Mat.Nom_Mat,'
      '       P_Mat.Norma_Min,'
      '       P_Mat.Norma_Max,'
      '       P_Mat.Ed_Id,'
      '       P_Mat.Ed_Name,'
      '       P_Mat.Mat_Viscos'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Mat_Dlp P_Mat'
      'On     P_Mat.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) ) Ins'
      '                               '
      'Union All'
      ''
      'Select Del.*, '#39'Old_Vers'#39' Flag'
      'From   '
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Mat.Mat_Id,'
      '       P_Mat.Mat_Name,'
      '       P_Mat.Nom_Mat,'
      '       P_Mat.Norma_Min,'
      '       P_Mat.Norma_Max,'
      '       P_Mat.Ed_Id,'
      '       P_Mat.Ed_Name,'
      '       P_Mat.Mat_Viscos'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Mat_Dlp P_Mat'
      'On     P_Mat.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) '
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Mat.Mat_Id,'
      '       P_Mat.Mat_Name,'
      '       P_Mat.Nom_Mat,'
      '       P_Mat.Norma_Min,'
      '       P_Mat.Norma_Max,'
      '       P_Mat.Ed_Id,'
      '       P_Mat.Ed_Name,'
      '       P_Mat.Mat_Viscos'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Mat_Dlp P_Mat'
      'On     P_Mat.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id ) Del')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000100000000E0000004E004F004D004F00500045005200010000000000
      1800000050004100520054005F0052004F0057005F004E0055004D0001000000
      000006000000430045004800010000000000100000004300450048005F004300
      4F0044004500010000000000080000004F005000450052000100000000000E00
      00004E004F004D005F005000450052000100000000000C0000004D0041005400
      5F0049004400010000000000100000004D00410054005F004E0041004D004500
      0100000000000E0000004E004F004D005F004D00410054000100000000001200
      00004E004F0052004D0041005F004D0049004E00010000000000120000004E00
      4F0052004D0041005F004D00410058000100000000000A000000450044005F00
      490044000100000000000E000000450044005F004E0041004D00450001000000
      0000140000004D00410054005F0056004900530043004F005300010000000000
      0800000046004C0041004700010000000000160000004F005000450052005F00
      4E0055004D00420045005200010000000000}
    Session = DM_Main.Session
    Left = 576
    Top = 592
    object Db_Per_Mat_ChngNOMOPER: TFloatField
      FieldName = 'NOMOPER'
    end
    object Db_Per_Mat_ChngPART_ROW_NUM: TFloatField
      FieldName = 'PART_ROW_NUM'
    end
    object Db_Per_Mat_ChngCEH: TFloatField
      FieldName = 'CEH'
    end
    object Db_Per_Mat_ChngCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Per_Mat_ChngOPER: TFloatField
      FieldName = 'OPER'
    end
    object Db_Per_Mat_ChngNOM_PER: TIntegerField
      FieldName = 'NOM_PER'
    end
    object Db_Per_Mat_ChngMAT_ID: TFloatField
      FieldName = 'MAT_ID'
    end
    object Db_Per_Mat_ChngMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object Db_Per_Mat_ChngNOM_MAT: TIntegerField
      FieldName = 'NOM_MAT'
    end
    object Db_Per_Mat_ChngNORMA_MIN: TFloatField
      FieldName = 'NORMA_MIN'
    end
    object Db_Per_Mat_ChngNORMA_MAX: TFloatField
      FieldName = 'NORMA_MAX'
    end
    object Db_Per_Mat_ChngED_ID: TFloatField
      FieldName = 'ED_ID'
    end
    object Db_Per_Mat_ChngED_NAME: TStringField
      FieldName = 'ED_NAME'
      Size = 3
    end
    object Db_Per_Mat_ChngMAT_VISCOS: TStringField
      FieldName = 'MAT_VISCOS'
      Size = 100
    end
    object Db_Per_Mat_ChngFLAG: TStringField
      FieldName = 'FLAG'
      Size = 8
    end
    object Db_Per_Mat_ChngOPER_NUMBER: TStringField
      FieldName = 'OPER_NUMBER'
      Size = 5
    end
  end
  object Db_Per_Ins_Chng: TOracleDataSet
    SQL.Strings = (
      'Select Ins.*, '#39'New_Vers'#39' Flag'
      'From'
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Ins.Instr_Id,'
      '       P_Ins.Instr_Name'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Ins_Dlp P_Ins'
      'On     P_Ins.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id'
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Ins.Instr_Id,'
      '       P_Ins.Instr_Name'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Ins_Dlp P_Ins'
      'On     P_Ins.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) ) Ins'
      '                               '
      'Union All'
      ''
      'Select Del.*, '#39'Old_Vers'#39' Flag'
      'From   '
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Ins.Instr_Id,'
      '       P_Ins.Instr_Name'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Ins_Dlp P_Ins'
      'On     P_Ins.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) '
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Ins.Instr_Id,'
      '       P_Ins.Instr_Name'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Ins_Dlp P_Ins'
      'On     P_Ins.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id ) Del')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000B0000000E0000004E004F004D004F00500045005200010000000000
      1800000050004100520054005F0052004F0057005F004E0055004D0001000000
      000006000000430045004800010000000000100000004300450048005F004300
      4F0044004500010000000000080000004F005000450052000100000000000E00
      00004E004F004D005F005000450052000100000000001000000049004E005300
      540052005F00490044000100000000001400000049004E005300540052005F00
      4E0041004D004500010000000000120000004E004F004D005F0049004E005300
      540052000100000000000800000046004C004100470001000000000016000000
      4F005000450052005F004E0055004D00420045005200010000000000}
    Session = DM_Main.Session
    Left = 680
    Top = 592
    object Db_Per_Ins_ChngNOMOPER: TFloatField
      FieldName = 'NOMOPER'
    end
    object Db_Per_Ins_ChngPART_ROW_NUM: TFloatField
      FieldName = 'PART_ROW_NUM'
    end
    object Db_Per_Ins_ChngCEH: TFloatField
      FieldName = 'CEH'
    end
    object Db_Per_Ins_ChngCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Per_Ins_ChngOPER: TFloatField
      FieldName = 'OPER'
    end
    object Db_Per_Ins_ChngNOM_PER: TIntegerField
      FieldName = 'NOM_PER'
    end
    object Db_Per_Ins_ChngINSTR_ID: TFloatField
      FieldName = 'INSTR_ID'
    end
    object Db_Per_Ins_ChngINSTR_NAME: TStringField
      FieldName = 'INSTR_NAME'
      Size = 100
    end
    object Db_Per_Ins_ChngFLAG: TStringField
      FieldName = 'FLAG'
      Size = 8
    end
    object Db_Per_Ins_ChngOPER_NUMBER: TStringField
      FieldName = 'OPER_NUMBER'
      Size = 5
    end
  end
  object Db_Per_Osn_Chng: TOracleDataSet
    SQL.Strings = (
      'Select Ins.*, '#39'New_Vers'#39' Flag'
      'From'
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Osn.Shosn_Id,'
      '       P_Osn.Shosn_Num||'#39' '#39'||P_Osn.Shosn_Name Osn_Num_Name'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Osn_Dlp P_Osn'
      'On     P_Osn.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id'
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Osn.Shosn_Id,'
      '       P_Osn.Shosn_Num||'#39' '#39'||P_Osn.Shosn_Name Osn_Num_Name'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Osn_Dlp P_Osn'
      'On     P_Osn.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) ) Ins'
      '                               '
      'Union All'
      ''
      'Select Del.*, '#39'Old_Vers'#39' Flag'
      'From   '
      '( Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Osn.Shosn_Id,'
      '       P_Osn.Shosn_Num||'#39' '#39'||P_Osn.Shosn_Name Osn_Num_Name'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Osn_Dlp P_Osn'
      'On     P_Osn.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp In ( Select a.Id  '
      '                               From   Ogt.v_Spr_Tp_Doc a'
      
        '                               Where  a.Cancel_Doc_Id = :v_Doc_I' +
        'd ) '
      ''
      'Minus'
      ''
      'Select Op.Nomoper,'
      '       Op.Part_Row_Num,'
      
        '       To_Char( (DENSE_RANK() Over(Order By Op.Id_Doc_Tp, Op.Par' +
        't_Row_Num, Op.Nomoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Number,'
      '       Op.Ceh,'
      '       Op.Ceh_Code,'
      '       Op.Oper,'
      '       Op_P.Nom_Per,'
      '       P_Osn.Shosn_Id,'
      '       P_Osn.Shosn_Num||'#39' '#39'||P_Osn.Shosn_Name Osn_Num_Name'
      'From   Ogt.v_Tp_Ok_Dlp Op'
      'Left   Join Ogt.v_Tp_Ok_Per_Dlp Op_P'
      'On     Op.Id = Op_P.Id_Row_Oper'
      'Left   Join Ogt.v_Tp_Ok_Per_Osn_Dlp P_Osn'
      'On     P_Osn.Id_Row_Per = Op_P.Id'
      'Where  Op.Id_Doc_Tp = :v_Doc_Id ) Del')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000B0000000E0000004E004F004D004F00500045005200010000000000
      1800000050004100520054005F0052004F0057005F004E0055004D0001000000
      000006000000430045004800010000000000100000004300450048005F004300
      4F0044004500010000000000080000004F005000450052000100000000000E00
      00004E004F004D005F0050004500520001000000000010000000530048004F00
      53004E005F004900440001000000000012000000530048004F0053004E005F00
      4E004F004D00010000000000180000004F0053004E005F004E0055004D005F00
      4E0041004D0045000100000000000800000046004C0041004700010000000000
      160000004F005000450052005F004E0055004D00420045005200010000000000}
    Session = DM_Main.Session
    Left = 768
    Top = 592
    object Db_Per_Osn_ChngNOMOPER: TFloatField
      FieldName = 'NOMOPER'
    end
    object Db_Per_Osn_ChngPART_ROW_NUM: TFloatField
      FieldName = 'PART_ROW_NUM'
    end
    object Db_Per_Osn_ChngCEH: TFloatField
      FieldName = 'CEH'
    end
    object Db_Per_Osn_ChngCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Per_Osn_ChngOPER: TFloatField
      FieldName = 'OPER'
    end
    object Db_Per_Osn_ChngNOM_PER: TIntegerField
      FieldName = 'NOM_PER'
    end
    object Db_Per_Osn_ChngSHOSN_ID: TFloatField
      FieldName = 'SHOSN_ID'
    end
    object Db_Per_Osn_ChngOSN_NUM_NAME: TStringField
      FieldName = 'OSN_NUM_NAME'
      Size = 151
    end
    object Db_Per_Osn_ChngFLAG: TStringField
      FieldName = 'FLAG'
      Size = 8
    end
    object Db_Per_Osn_ChngOPER_NUMBER: TStringField
      FieldName = 'OPER_NUMBER'
      Size = 5
    end
  end
  object Data_Changes_Bookmrks: TDataSource
    DataSet = MemT_Changes_Bookmrks
    Left = 184
    Top = 373
  end
  object MemT_Changes_Bookmrks: TMemTableEh
    Params = <>
    AfterScroll = MemT_Changes_BookmrksAfterScroll
    Left = 184
    Top = 320
    object MemT_Changes_BookmrksRefFrameClass: TRefObjectField
      DisplayWidth = 10
      FieldName = 'RefFrameClass'
    end
    object MemT_Changes_BookmrksRefFrame: TRefObjectField
      DisplayWidth = 10
      FieldName = 'RefFrame'
    end
    object MemT_Changes_BookmrksBkmrk_Name: TStringField
      FieldName = 'Bkmrk_Name'
      Size = 100
    end
    object MemT_Changes_BookmrksBkmrk_Flag: TStringField
      FieldName = 'Bkmrk_Flag'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object Bkmrk_Name: TMTStringDataFieldEh
          FieldName = 'Bkmrk_Name'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 100
        end
        object RefFrameClass: TMTRefObjectFieldEh
          FieldName = 'RefFrameClass'
          DisplayWidth = 10
        end
        object Bkmrk_Flag: TMTStringDataFieldEh
          FieldName = 'Bkmrk_Flag'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object RefFrame: TMTRefObjectFieldEh
          FieldName = 'RefFrame'
          DisplayWidth = 10
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object Save_Grid: TSaveDialog
    Filter = 
      #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' (*.txt)|.txt|'#1058#1077#1082#1089#1090#1086#1074#1086#1081' '#1092#1072#1081#1083' '#1089' '#1088#1072#1079#1076#1077#1083#1080#1090#1077#1083#1077#1084' '#1090#1080#1087#1072' '#8216 +
      ';'#8217' (*.txt)|.cvs|'#1042#1077#1073'-'#1089#1090#1088#1072#1085#1080#1094#1072' HTML|.htm|'#1044#1086#1082#1091#1084#1077#1085#1090' '#1074' '#1092#1086#1088#1084#1072#1090#1077' Excel|' +
      '.xlsx'
    Left = 416
    Top = 264
  end
  object Print_Grid: TPrintDBGridEh
    Options = [pghFitGridToPageWidth, pghColored, pghRowAutoStretch, pghFitingByColWidths]
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -13
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = [fsBold]
    PageHeader.LineType = pcltDoubleLine
    Units = MM
    Left = 498
    Top = 262
  end
  object Pop_M_Changes: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 394
    Top = 177
    object Pop_M_Changes_Btn_Print: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      ImageIndex = 38
      OnClick = Pop_M_Changes_Btn_PrintClick
    end
    object Pop_M_Changes_Btn_Export: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090
      ImageIndex = 36
      OnClick = Pop_M_Changes_Btn_ExportClick
    end
  end
end
