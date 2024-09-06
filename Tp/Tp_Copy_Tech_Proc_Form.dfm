object Form_Chose_Doc_For_Copy: TForm_Chose_Doc_For_Copy
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1076#1083#1103' '#1082#1086#1087#1080#1088#1086#1074#1072#1085#1080#1103
  ClientHeight = 453
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop_M_Copy_From_An_Doc
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Grid_Chose_Doc: TDBGridEh
    Left = 0
    Top = 0
    Width = 742
    Height = 432
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_Tp_Docs
    DynProps = <>
    EvenRowColor = clMenuBar
    Flat = True
    PopupMenu = Pop_M_Copy_From_An_Doc
    SearchPanel.Enabled = True
    SortLocal = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOC_NUM'
        Footers = <>
        Title.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Title.TitleButton = True
        Width = 123
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ADDIT_INFO_NUM'
        Footers = <>
        Title.Caption = #1053#1086#1084#1077#1088' '#1076#1077#1090#1072#1083#1080'/'#1058#1055
        Title.TitleButton = True
        Width = 182
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ADDIT_INFO_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080'/'#1058#1055
        Title.TitleButton = True
        Width = 344
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 432
    Width = 742
    Height = 21
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      742
      21)
    object COPY_1_Check: TCheckBox
      Left = 8
      Top = 2
      Width = 201
      Height = 17
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1089' '#1079#1072#1084#1077#1085#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1081
      TabOrder = 0
      OnClick = COPY_1_CheckClick
    end
    object COPY_2_Check: TCheckBox
      Left = 216
      Top = 2
      Width = 234
      Height = 17
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1100' '#1080#1084#1077#1102#1097#1080#1077#1089#1103' '#1086#1087#1077#1088#1072#1094#1080#1080
      TabOrder = 1
      OnClick = COPY_2_CheckClick
    end
    object COPY_BTN: TButton
      Left = 523
      Top = 2
      Width = 103
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = COPY_BTNClick
    end
    object EXIT_BTN: TButton
      Left = 634
      Top = 2
      Width = 103
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = EXIT_BTNClick
    end
  end
  object Db_Tp_Docs: TOracleDataSet
    SQL.Strings = (
      'Select b.*'
      'From '
      '( Select t.Doc_Num,'
      '         ( Case '
      '             When t.Doc_Type In ( 1 ) '
      '             Then t.Det_Num '
      '             When t.Doc_Type In ( 2, 3 ) '
      '             Then t.Tp_Num '
      '           End ) Addit_Info_Num, '
      '         ( Case'
      '             When t.Doc_Type In ( 1 ) '
      '             Then t.Det_Name '
      '             When t.Doc_Type In ( 2, 3 ) '
      '             Then t.Tp_Name '
      '           End ) Addit_Info_Name,'
      '        t.Doc_Header_Id,'
      '        t.Doc_Type,'
      '        To_Char(t.Tp_Work_Type) Tp_Work_Type,'
      '        1 As Programm_Version'
      '  From  Ogt.v_Spr_Tp_Doc t'
      '  Where t.Doc_Header_Id <> :Doc_Header_Id'
      ''
      '  Union All '
      ''
      '  Select t.Dok_In_Txt As Doc_Num,'
      '         ( Case '
      '             When t.Vid_Tp In ( '#39#1045#39' ) '
      '             Then t.Det_Txt '
      '             When t.Vid_Tp In ( '#39#1058#39', '#39#1043#39' ) '
      '             Then t.Nom_Tp '
      '           End ) Addit_Info_Num, '
      '         ( Case'
      '             When t.Vid_Tp In ( '#39#1045#39' ) '
      '             Then t.Nd'
      '             When t.Vid_Tp In ( '#39#1058#39', '#39#1043#39' ) '
      '             Then t.Naim_Tp '
      '           End ) Addit_Info_Name,'
      '         t.Id Doc_Header_Id,'
      '         Decode( t.Vid_Tp, '#39#1045#39', 1, '#39#1058#39', 2, '#39#1043#39', 3 ) As Doc_Type,'
      '         t.Gr_Vid_Rab,'
      '         2 As Programm_Version       '
      '  From   Ogt.V$Spr_Tp t'
      ') b'
      'Where b.Doc_Type = :v_Doc_Type')
    Optimize = False
    Variables.Data = {
      0400000002000000160000003A0056005F0044004F0043005F00540059005000
      45000500000000000000000000001C0000003A0044004F0043005F0048004500
      41004400450052005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000070000000E00000044004F0043005F004E0055004D00010000000000
      1000000044004F0043005F005400590050004500010000000000200000005000
      52004F004700520041004D004D005F00560045005200530049004F004E000100
      0000000018000000540050005F0057004F0052004B005F005400590050004500
      0100000000001C000000410044004400490054005F0049004E0046004F005F00
      4E0055004D000100000000001E000000410044004400490054005F0049004E00
      46004F005F004E0041004D0045000100000000001A00000044004F0043005F00
      4800450041004400450052005F0049004400010000000000}
    Session = DM_Main.Session
    Left = 256
    Top = 288
    object Db_Tp_DocsDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Size = 35
    end
    object Db_Tp_DocsADDIT_INFO_NUM: TStringField
      FieldName = 'ADDIT_INFO_NUM'
      Size = 50
    end
    object Db_Tp_DocsADDIT_INFO_NAME: TStringField
      FieldName = 'ADDIT_INFO_NAME'
      Size = 300
    end
    object Db_Tp_DocsDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_Tp_DocsTP_WORK_TYPE: TStringField
      FieldName = 'TP_WORK_TYPE'
      Size = 40
    end
    object Db_Tp_DocsPROGRAMM_VERSION: TFloatField
      FieldName = 'PROGRAMM_VERSION'
    end
    object Db_Tp_DocsDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
    end
  end
  object Pop_M_Copy_From_An_Doc: TPopupMenu
    OnPopup = Pop_M_Copy_From_An_DocPopup
    Left = 600
    Top = 176
    object Pop_M_Copy_From_An_Doc_Btn_Chose: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = COPY_BTNClick
    end
    object Pop_M_Copy_From_An_Doc_Btn_See_Doc: TMenuItem
      Caption = #1055#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1086#1090#1095#1077#1090
      OnClick = Pop_M_Copy_From_An_Doc_Btn_See_DocClick
    end
  end
  object Data_Tp_Docs: TDataSource
    DataSet = MemT_Tp_Docs
    Left = 480
    Top = 216
  end
  object Driver_Tp_Docs: TDataSetDriverEh
    ProviderDataSet = Db_Tp_Docs
    Left = 256
    Top = 232
  end
  object MemT_Tp_Docs: TMemTableEh
    Params = <>
    DataDriver = Driver_Tp_Docs
    Left = 264
    Top = 192
    object MemT_Tp_DocsDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Size = 35
    end
    object MemT_Tp_DocsADDIT_INFO_NUM: TStringField
      FieldName = 'ADDIT_INFO_NUM'
      Size = 50
    end
    object MemT_Tp_DocsADDIT_INFO_NAME: TStringField
      FieldName = 'ADDIT_INFO_NAME'
      Size = 300
    end
    object MemT_Tp_DocsDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object MemT_Tp_DocsTP_WORK_TYPE: TStringField
      FieldName = 'TP_WORK_TYPE'
      Size = 40
    end
    object MemT_Tp_DocsPROGRAMM_VERSION: TFloatField
      FieldName = 'PROGRAMM_VERSION'
    end
    object MemT_Tp_DocsDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
    end
  end
end
