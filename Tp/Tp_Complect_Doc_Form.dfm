object Form_Doc_Complect: TForm_Doc_Complect
  Left = 0
  Top = 0
  Caption = 'Form_Doc_Complect'
  ClientHeight = 621
  ClientWidth = 1151
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = Main_M_Doc_Complect
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Scaled = False
  OnClose = FormClose
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  DesignSize = (
    1151
    621)
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 1
    Width = 638
    Height = 617
    Anchors = [akLeft, akTop, akBottom]
    Caption = #1044#1077#1090#1072#1083#1080
    TabOrder = 0
    object Grid_Details: TDBGridEh
      AlignWithMargins = True
      Left = 5
      Top = 19
      Width = 628
      Height = 593
      Align = alClient
      AutoFitColWidths = True
      DataSource = Data_Complect_Details
      DynProps = <>
      Flat = True
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
      PopupMenu = Pop_M_Details
      ReadOnly = True
      RowHeight = 2
      RowLines = 2
      SearchPanel.Enabled = True
      SearchPanel.FilterEnabled = False
      STFilter.Local = True
      STFilter.Location = stflInTitleFilterEh
      STFilter.Visible = True
      TabOrder = 0
      TitleParams.RowHeight = 35
      TreeViewParams.GlyphStyle = tvgsExplorerThemedEh
      OnGetCellParams = Grid_DetailsGetCellParams
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NUM_NAME_DET'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1064#1080#1092#1088' / '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080' / '#1089#1073#1086#1088#1082#1080
          Width = 314
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DET_ID'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MAR'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1052#1077#1078#1094#1077#1093#1086#1074#1086#1081' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1081' '#1084#1072#1088#1096#1088#1091#1090
          Width = 263
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object GroupBox3: TGroupBox
    AlignWithMargins = True
    Left = 647
    Top = 271
    Width = 503
    Height = 347
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = #1054#1087#1077#1088#1072#1094#1080#1080
    TabOrder = 1
    DesignSize = (
      503
      347)
    object Grid_Operations: TDBGridEh
      Left = 5
      Top = 17
      Width = 488
      Height = 239
      Align = alCustom
      AllowedOperations = [alopUpdateEh, alopDeleteEh, alopAppendEh]
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoFitColWidths = True
      DataSource = Data_Detail_Operations
      DynProps = <>
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = Pop_M_Operations
      ReadOnly = True
      SearchPanel.Enabled = True
      STFilter.Local = True
      STFilter.Location = stflInTitleFilterEh
      STFilter.Visible = True
      TabOrder = 0
      OnExit = Grid_OperationsExit
      OnGetCellParams = Grid_Detail_TpGetCellParams
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_DOC_TP'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DET_ID'
          Footers = <>
          Visible = False
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ROW_NUM_GEN'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '
          Width = 43
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_ROW_OPER'
          Footers = <>
          Visible = False
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CEH_CODE'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1062#1077#1093
          Width = 43
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OPER_NAME'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
          Width = 244
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OPER_IOT'
          Footers = <>
          Title.Caption = #1044#1086#1087'. '#1080#1085#1089#1090#1088#1091#1082#1094#1080#1080' '#1087#1086' '#1054#1058
          Width = 200
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID_ROW_DET'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OBOR_FLAG'
          Footers = <>
          Visible = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object E_Oper_Prim: TDBEditEh
      Left = 5
      Top = 318
      Width = 493
      Height = 22
      Anchors = [akLeft, akRight, akBottom]
      ControlLabel.Width = 71
      ControlLabel.Height = 14
      ControlLabel.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      ControlLabel.Font.Charset = DEFAULT_CHARSET
      ControlLabel.Font.Color = clWindowText
      ControlLabel.Font.Height = -12
      ControlLabel.Font.Name = 'Tahoma'
      ControlLabel.Font.Style = []
      ControlLabel.ParentFont = False
      ControlLabel.Visible = True
      DataField = 'PRIM'
      DataSource = Data_Detail_Operations
      DynProps = <>
      EditButtons = <
        item
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = True
    end
    object E_OPER_AUTHOR_NAME: TDBEditEh
      Left = 5
      Top = 277
      Width = 149
      Height = 22
      Anchors = [akLeft, akBottom]
      ControlLabel.Width = 34
      ControlLabel.Height = 14
      ControlLabel.Caption = #1040#1074#1090#1086#1088
      ControlLabel.Visible = True
      DataField = 'RAZRAB_NAME'
      DataSource = Data_Detail_Operations
      DynProps = <>
      EditButtons = <>
      ReadOnly = True
      TabOrder = 2
      Visible = True
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 647
    Top = 1
    Width = 498
    Height = 268
    Anchors = [akLeft, akTop, akRight]
    Caption = #1058#1077#1093#1087#1088#1086#1094#1077#1089#1089#1099' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1076#1077#1090#1072#1083#1080
    TabOrder = 2
    object Grid_Detail_Tp: TDBGridEh
      Left = 2
      Top = 16
      Width = 494
      Height = 250
      Align = alClient
      AllowedOperations = [alopUpdateEh, alopDeleteEh, alopAppendEh]
      AutoFitColWidths = True
      DataSource = Data_Detail_Tp
      DynProps = <>
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentFont = False
      PopupMenu = Pop_M_Detail_Tp
      ReadOnly = True
      SearchPanel.Enabled = True
      STFilter.Local = True
      STFilter.Location = stflInTitleFilterEh
      STFilter.Visible = True
      TabOrder = 0
      OnExit = Grid_Detail_TpExit
      OnGetCellParams = Grid_Detail_TpGetCellParams
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'COMPLECT_ID'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DOC_NUM'
          Footers = <>
          Title.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          Width = 120
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ADDIT_INFO_NUM'
          Footers = <>
          Title.Caption = #1053#1086#1084#1077#1088' '#1058#1055'/'#1044#1077#1090#1072#1083#1080
          Width = 170
          OnUpdateData = DbGrid_Detail_TpColumns3UpdateData
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ADDIT_INFO_NAME'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1058#1055'/'#1044#1077#1090#1072#1083#1080
          Width = 257
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AUTHOR_NAME'
          Footers = <>
          Title.Caption = #1040#1074#1090#1086#1088
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DATA_CHANGE'
          Footers = <>
          Title.Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1080#1103
          Width = 100
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Db_Complect_Details: TOracleDataSet
    SQL.Strings = (
      'Select a.Id Id_Rcd,'
      '       a.Id_Izd,'
      '       a.Name_Izd,'
      '       a.Id_Det Det_Id,'
      '       a.Num_Det,'
      '       a.Name_Det,'
      '       a.Id_Primen_Det,'
      '       a.Primen_Det,'
      '       a.Id_Uz,'
      '       a.Mar,'
      '       a.Kol,'
      '       a.Kom,'
      '       a.Tech,'
      '       a.Id_Mtm,'
      '       a.Num_Mtm,'
      '       a.Flag_Mtm,'
      '       a.Nomvar, '
      '       a.ZamDet,'
      '       a.Zammar,'
      '       a.Prim,'
      '       a.Num_Det||'#39' '#39'||a.Name_Det Num_Name_Det'
      'From   Ogt.V_Spr_Rcd a'
      'Where  a.Id_Izd = :v_Izd_Id'
      '       And a.Kol > 0'
      '       And a.Flag = '#39'1'#39)
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0049005A0044005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000015000000060000004D0041005200010000000000060000004B004F00
      4C00010000000000060000004B004F004D000100000000000800000054004500
      430048000100000000000C0000004E004F004D00560041005200010000000000
      0C0000005A0041004D004400450054000100000000000C0000005A0041004D00
      4D0041005200010000000000080000005000520049004D000100000000000C00
      0000490044005F0049005A004400010000000000100000004E0041004D004500
      5F0049005A0044000100000000000E0000004E0055004D005F00440045005400
      010000000000100000004E0041004D0045005F00440045005400010000000000
      1A000000490044005F005000520049004D0045004E005F004400450054000100
      00000000140000005000520049004D0045004E005F0044004500540001000000
      00000A000000490044005F0055005A000100000000000C000000490044005F00
      4D0054004D000100000000000E0000004E0055004D005F004D0054004D000100
      000000001000000046004C00410047005F004D0054004D000100000000001800
      00004E0055004D005F004E0041004D0045005F00440045005400010000000000
      0C000000490044005F005200430044000100000000000C000000440045005400
      5F0049004400010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 264
    Top = 432
    object Db_Complect_DetailsID_RCD: TFloatField
      FieldName = 'ID_RCD'
      Required = True
    end
    object Db_Complect_DetailsID_IZD: TFloatField
      FieldName = 'ID_IZD'
      Required = True
    end
    object Db_Complect_DetailsNAME_IZD: TStringField
      FieldName = 'NAME_IZD'
      Size = 50
    end
    object Db_Complect_DetailsDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object Db_Complect_DetailsNUM_DET: TStringField
      FieldName = 'NUM_DET'
      Size = 50
    end
    object Db_Complect_DetailsNAME_DET: TStringField
      FieldName = 'NAME_DET'
      Size = 100
    end
    object Db_Complect_DetailsID_PRIMEN_DET: TFloatField
      FieldName = 'ID_PRIMEN_DET'
    end
    object Db_Complect_DetailsPRIMEN_DET: TStringField
      FieldName = 'PRIMEN_DET'
      Size = 50
    end
    object Db_Complect_DetailsID_UZ: TFloatField
      FieldName = 'ID_UZ'
      Required = True
    end
    object Db_Complect_DetailsMAR: TStringField
      FieldName = 'MAR'
      Size = 100
    end
    object Db_Complect_DetailsKOL: TFloatField
      FieldName = 'KOL'
      Required = True
    end
    object Db_Complect_DetailsKOM: TStringField
      FieldName = 'KOM'
      Size = 11
    end
    object Db_Complect_DetailsTECH: TStringField
      FieldName = 'TECH'
      Size = 11
    end
    object Db_Complect_DetailsID_MTM: TFloatField
      FieldName = 'ID_MTM'
    end
    object Db_Complect_DetailsNUM_MTM: TStringField
      FieldName = 'NUM_MTM'
      Size = 15
    end
    object Db_Complect_DetailsFLAG_MTM: TStringField
      FieldName = 'FLAG_MTM'
      Size = 1
    end
    object Db_Complect_DetailsNOMVAR: TFloatField
      FieldName = 'NOMVAR'
    end
    object Db_Complect_DetailsZAMDET: TStringField
      FieldName = 'ZAMDET'
      Size = 50
    end
    object Db_Complect_DetailsZAMMAR: TStringField
      FieldName = 'ZAMMAR'
      Size = 50
    end
    object Db_Complect_DetailsPRIM: TStringField
      FieldName = 'PRIM'
      Size = 150
    end
    object Db_Complect_DetailsNUM_NAME_DET: TStringField
      FieldName = 'NUM_NAME_DET'
      Size = 151
    end
  end
  object Data_Complect_Details: TDataSource
    DataSet = MemT_Complect_Details
    Left = 272
    Top = 304
  end
  object PKG_TP_DOC: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Ogt.PKG_TP_DOC'
    Left = 432
    Top = 203
  end
  object Db_Detail_Tp: TOracleDataSet
    SQL.Strings = (
      'Select t.Id,'
      '       t.Doc_Header_Id,'
      '       ( Case '
      '           When t.Main_Doc_Id Is Null'
      '           Then t.Id'
      '           Else t.Main_Doc_Id'
      '         End ) Main_Doc_Id,'
      '       t.Complect_Id,  '
      '       t.Doc_Num, '
      '       t.Doc_Type, '
      '       t.Ceh_Id, '
      '       t.Ceh_Code, '
      '       ( Case '
      '           When t.Doc_Type In ( 1 ) '
      '           Then t.Det_Id '
      '           When t.Doc_Type In ( 2, 4 ) '
      '           Then v_Det.Det_Id'
      '         End ) Id_Det,'
      '       ( Case '
      '           When t.Doc_Type In ( 1 ) '
      '           Then t.Det_Num '
      '           When t.Doc_Type In ( 2, 4 ) '
      '           Then t.Tp_Num '
      '         End ) Addit_Info_Num, '
      '       t.Tp_Num,'
      '        ( Case '
      '            When t.Doc_Type In ( 1 ) '
      '            Then t.Det_Name '
      '            When t.Doc_Type In ( 2, 4 ) '
      '            Then t.Tp_Name '
      '          End ) Addit_Info_Name,'
      '        t.Tp_Name, '
      '        ( Case '
      '            When t.Doc_Type In ( 1 ) '
      '            Then t.Det_Mar '
      '            When t.Doc_Type In ( 2, 4 ) '
      '            Then t.Tp_Work_Type_Name '
      '          End ) Sec_Addit_Info, '
      '       t.Tp_Work_Type,'
      '       t.Author_Lnum,'
      '       t.Author_Name,'
      '       t.Data_Change,'
      '       t.Izd_Id,'
      '       t.Tp_Type,'
      '       t.Rowid'
      'From   Ogt.V_Spr_Tp_Doc t'
      'Left   Join Ogt.V_TP_GKTTP_DET_DLP V_Det'
      'On     V_Det.Id_Doc_Tp = t.Id '
      '       And t.Tp_Work_Type = :v_Tp_Work_Type'
      'Where  t.Det_Id In ( Select a.Id_Det '
      '                     From   Ogt.V_SPR_RCD a'
      '                     Where  a.Id_Izd = :v_Izd_Id'
      '                            And a.Flag = '#39'1'#39
      '                            And a.Kol > 0 )'
      '       Or V_Det.Det_Id In ( Select a.Id_Det '
      '                            From   Ogt.V_SPR_RCD a'
      '                            Where  a.Id_Izd = :v_Izd_Id'
      '                                   And a.Flag = '#39'1'#39
      '                                   And a.Kol > 0 )')
    Optimize = False
    Variables.Data = {
      0400000002000000120000003A0056005F0049005A0044005F00490044000500
      000006000000313230383300000000001E0000003A0056005F00540050005F00
      57004F0052004B005F005400590050004500050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000140000000E00000044004F0043005F004E0055004D00010000000000
      0C0000004300450048005F0049004400010000000000160000004D0041004900
      4E005F0044004F0043005F00490044000100000000001000000044004F004300
      5F00540059005000450001000000000018000000540050005F0057004F005200
      4B005F0054005900500045000100000000001600000043004F004D0050004C00
      4500430054005F0049004400010000000000100000004300450048005F004300
      4F00440045000100000000000C000000490044005F0044004500540001000000
      00001C000000410044004400490054005F0049004E0046004F005F004E005500
      4D000100000000001E000000410044004400490054005F0049004E0046004F00
      5F004E0041004D0045000100000000001C0000005300450043005F0041004400
      4400490054005F0049004E0046004F0001000000000016000000410055005400
      48004F0052005F004E0041004D00450001000000000016000000440041005400
      41005F004300480041004E00470045000100000000000C00000049005A004400
      5F00490044000100000000000E000000540050005F0054005900500045000100
      000000001600000041005500540048004F0052005F004C004E0055004D000100
      0000000004000000490044000100000000001A00000044004F0043005F004800
      450041004400450052005F00490044000100000000000C000000540050005F00
      4E0055004D000100000000000E000000540050005F004E0041004D0045000100
      00000000}
    UniqueFields = 'ID'
    UpdatingTable = 'Ogt.V_Spr_Tp_Doc'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 1000
    Top = 232
    object Db_Detail_TpID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Detail_TpDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Detail_TpMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Detail_TpCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object Db_Detail_TpDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_Detail_TpDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_Detail_TpCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Detail_TpCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Detail_TpID_DET: TFloatField
      FieldName = 'ID_DET'
    end
    object Db_Detail_TpADDIT_INFO_NUM: TStringField
      FieldName = 'ADDIT_INFO_NUM'
      Size = 50
    end
    object Db_Detail_TpTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object Db_Detail_TpADDIT_INFO_NAME: TStringField
      FieldName = 'ADDIT_INFO_NAME'
      Size = 300
    end
    object Db_Detail_TpTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object Db_Detail_TpSEC_ADDIT_INFO: TStringField
      FieldName = 'SEC_ADDIT_INFO'
      Size = 103
    end
    object Db_Detail_TpTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object Db_Detail_TpAUTHOR_LNUM: TFloatField
      FieldName = 'AUTHOR_LNUM'
      Required = True
    end
    object Db_Detail_TpAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object Db_Detail_TpDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object Db_Detail_TpIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object Db_Detail_TpTP_TYPE: TFloatField
      FieldName = 'TP_TYPE'
    end
  end
  object Main_M_Doc_Complect: TMainMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 592
    Top = 208
    object Main_M_Doc_Complect_Btn_Doc: TMenuItem
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 12
      object Main_M_Doc_Complect_Btn_Doc_Complect: TMenuItem
        Caption = #1050#1086#1084#1087#1083#1077#1082#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '
        Enabled = False
        object Main_M_Doc_Complect_Btn_Doc_Complect_Rep: TMenuItem
          Caption = #1055#1088#1086#1089#1084#1086#1090#1088
        end
        object Main_M_Doc_Complect_Btn_Doc_Complect_Export: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090
          object Main_M_Doc_Complect_Btn_Doc_Complect_Export_PDF: TMenuItem
            Caption = 'PDF'
          end
          object Main_M_Doc_Complect_Btn_Doc_Complect_Export_Excel: TMenuItem
            Caption = 'Excel'
          end
        end
      end
      object Main_M_Doc_Complect_Btn_Doc_Tech_Proc: TMenuItem
        Caption = #1058#1077#1093#1087#1088#1086#1094#1077#1089#1089' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1076#1077#1090#1072#1083#1080
        object Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Rep: TMenuItem
          Caption = #1055#1088#1086#1089#1084#1086#1090#1088
          OnClick = Main_M_Doc_Complect_Btn_Doc_Tech_Proc_RepClick
        end
        object Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export: TMenuItem
          Caption = #1069#1082#1089#1087#1086#1088#1090
          object Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_PDF: TMenuItem
            Caption = 'PDF'
            OnClick = Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_PDFClick
          end
          object Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_Excel: TMenuItem
            Caption = 'Excel'
            OnClick = Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_ExcelClick
          end
        end
        object TMenuItem
        end
      end
    end
    object Main_M_Doc_Complect_Btn_Save: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 22
      OnClick = Main_M_Doc_Complect_Btn_SaveClick
    end
    object Main_M_Doc_Complect_Btn_Exit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 32
      OnClick = Main_M_Doc_Complect_Btn_ExitClick
    end
  end
  object Driver_Complect_Details: TDataSetDriverEh
    KeyFields = 'Id'
    ProviderDataSet = Db_Complect_Details
    Left = 267
    Top = 386
  end
  object MemT_Detail_Tp: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_DET'
    FetchAllOnOpen = True
    MasterFields = 'DET_ID'
    MasterSource = Data_Complect_Details
    Params = <>
    DataDriver = Driver_Detail_Tp
    OnNewRecord = MemT_Detail_TpNewRecord
    Left = 1000
    Top = 138
    object MemT_Detail_TpID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Detail_TpDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
    end
    object MemT_Detail_TpMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object MemT_Detail_TpCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object MemT_Detail_TpDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object MemT_Detail_TpDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object MemT_Detail_TpCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object MemT_Detail_TpCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object MemT_Detail_TpID_DET: TFloatField
      FieldName = 'ID_DET'
    end
    object MemT_Detail_TpADDIT_INFO_NUM: TStringField
      FieldName = 'ADDIT_INFO_NUM'
      Size = 50
    end
    object MemT_Detail_TpTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object MemT_Detail_TpADDIT_INFO_NAME: TStringField
      FieldName = 'ADDIT_INFO_NAME'
      Size = 300
    end
    object MemT_Detail_TpTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object MemT_Detail_TpSEC_ADDIT_INFO: TStringField
      FieldName = 'SEC_ADDIT_INFO'
      Size = 103
    end
    object MemT_Detail_TpTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object MemT_Detail_TpAUTHOR_LNUM: TFloatField
      FieldName = 'AUTHOR_LNUM'
      Required = True
    end
    object MemT_Detail_TpAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object MemT_Detail_TpDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object MemT_Detail_TpIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object MemT_Detail_TpTP_TYPE: TFloatField
      FieldName = 'TP_TYPE'
    end
  end
  object Driver_Detail_Tp: TDataSetDriverEh
    ProviderDataSet = Db_Detail_Tp
    Left = 1000
    Top = 186
  end
  object Data_Detail_Tp: TDataSource
    DataSet = MemT_Detail_Tp
    Left = 1000
    Top = 88
  end
  object Seq_Id_Doc_Header: TOracleQuery
    SQL.Strings = (
      'Select Src.S_Doc_Headers.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 904
    Top = 48
  end
  object Seq_Detail_Tp: TOracleQuery
    SQL.Strings = (
      'Select Ogt.Spr_Tp_Doc$sqn$id.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 1000
    Top = 40
  end
  object Seq_Detail_Operations: TOracleQuery
    SQL.Strings = (
      'Select OGT.TP_GKTTP_OPER_DLP$SEQ.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 776
    Top = 360
  end
  object Data_Detail_Operations: TDataSource
    DataSet = MemT_Detail_Operations
    Left = 776
    Top = 408
  end
  object MemT_Detail_Operations: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_DOC_TP;DET_ID'
    Filtered = True
    FetchAllOnOpen = True
    MasterFields = 'ID;ID_DET'
    MasterSource = Data_Detail_Tp
    Params = <>
    DataDriver = Driver_Detail_Operations
    OnNewRecord = MemT_Detail_OperationsNewRecord
    Left = 773
    Top = 458
    object MemT_Detail_OperationsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Detail_OperationsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object MemT_Detail_OperationsMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object MemT_Detail_OperationsID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
    end
    object MemT_Detail_OperationsROW_NUM_GEN: TStringField
      FieldName = 'ROW_NUM_GEN'
      Size = 50
    end
    object MemT_Detail_OperationsOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object MemT_Detail_OperationsID_ROW_DET: TFloatField
      FieldName = 'ID_ROW_DET'
      Required = True
    end
    object MemT_Detail_OperationsDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object MemT_Detail_OperationsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object MemT_Detail_OperationsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object MemT_Detail_OperationsPRIM: TStringField
      FieldName = 'PRIM'
      Size = 2000
    end
    object MemT_Detail_OperationsDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object MemT_Detail_OperationsOPER_OBOR_EN: TFloatField
      FieldName = 'OPER_OBOR_EN'
    end
    object MemT_Detail_OperationsOPER_OBOR_TIME_PZ: TFloatField
      FieldName = 'OPER_OBOR_TIME_PZ'
    end
    object MemT_Detail_OperationsOPER_OBOR_TIME_SH: TFloatField
      FieldName = 'OPER_OBOR_TIME_SH'
    end
    object MemT_Detail_OperationsOBOR_ID: TFloatField
      FieldName = 'OBOR_ID'
    end
    object MemT_Detail_OperationsOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object MemT_Detail_OperationsOPER_KOID: TFloatField
      FieldName = 'OPER_KOID'
    end
    object MemT_Detail_OperationsENVIRON: TStringField
      FieldName = 'ENVIRON'
      Size = 200
    end
    object MemT_Detail_OperationsHARDNESS: TStringField
      FieldName = 'HARDNESS'
      Size = 200
    end
    object MemT_Detail_OperationsT_MIN: TFloatField
      FieldName = 'T_MIN'
    end
    object MemT_Detail_OperationsT_MAX: TFloatField
      FieldName = 'T_MAX'
    end
    object MemT_Detail_OperationsTIME_MIN: TFloatField
      FieldName = 'TIME_MIN'
    end
    object MemT_Detail_OperationsTIME_MAX: TFloatField
      FieldName = 'TIME_MAX'
    end
    object MemT_Detail_OperationsTIME_EDIZM: TStringField
      FieldName = 'TIME_EDIZM'
      Size = 2
    end
    object MemT_Detail_OperationsOPER_KUP: TFloatField
      FieldName = 'OPER_KUP'
    end
    object MemT_Detail_OperationsOPER_PPPD: TFloatField
      FieldName = 'OPER_PPPD'
    end
    object MemT_Detail_OperationsOPER_OPPP_DET: TFloatField
      FieldName = 'OPER_OPPP_DET'
    end
    object MemT_Detail_OperationsOPER_KDP: TFloatField
      FieldName = 'OPER_KDP'
    end
    object MemT_Detail_OperationsOPER_KDA: TFloatField
      FieldName = 'OPER_KDA'
    end
    object MemT_Detail_OperationsOPER_KSL: TFloatField
      FieldName = 'OPER_KSL'
    end
    object MemT_Detail_OperationsOPER_TOLSCH: TFloatField
      FieldName = 'OPER_TOLSCH'
    end
    object MemT_Detail_OperationsOPER_CHS_PARAMS: TStringField
      FieldName = 'OPER_CHS_PARAMS'
      Size = 200
    end
    object MemT_Detail_OperationsOPER_COLOR_ID: TFloatField
      FieldName = 'OPER_COLOR_ID'
    end
    object MemT_Detail_OperationsCOLOR_NAME: TStringField
      FieldName = 'COLOR_NAME'
      Size = 200
    end
    object MemT_Detail_OperationsOPER_COUNT_INS: TFloatField
      FieldName = 'OPER_COUNT_INS'
    end
    object MemT_Detail_OperationsCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object MemT_Detail_OperationsOPER_IOT: TStringField
      FieldName = 'OPER_IOT'
      Size = 50
    end
    object MemT_Detail_OperationsTIME_EDIZM_NAME: TStringField
      FieldName = 'TIME_EDIZM_NAME'
      Size = 7
    end
    object MemT_Detail_OperationsPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object MemT_Detail_OperationsPROF_RAZR: TFloatField
      FieldName = 'PROF_RAZR'
    end
    object MemT_Detail_OperationsPROF_KVN: TFloatField
      FieldName = 'PROF_KVN'
    end
    object MemT_Detail_OperationsCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object MemT_Detail_OperationsOPER_ID: TFloatField
      FieldName = 'OPER_ID'
    end
    object MemT_Detail_OperationsOPER_COUNT_BATH: TFloatField
      FieldName = 'OPER_COUNT_BATH'
    end
    object MemT_Detail_OperationsOPER_TOLSCH_RANGE: TStringField
      FieldName = 'OPER_TOLSCH_RANGE'
      Size = 30
    end
    object MemT_Detail_OperationsCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object MemT_Detail_OperationsTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
  end
  object Driver_Detail_Operations: TDataSetDriverEh
    ProviderDataSet = Db_Detail_Operations
    Left = 773
    Top = 498
  end
  object Db_Detail_Operations: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       Info.Tp_Work_Type,'
      '       t.rowid '
      'From   Ogt.V_TP_GKTTP_OPER_DLP t'
      'Left   Join Ogt.V_Spr_Tp_Doc Info'
      'On     Info.Id = t.Main_Doc_Id'
      'Join   Ogt.V_TP_GKTTP_DET_DLP V_Det'
      'On     V_Det.Id_Doc_Tp = t.Id_Doc_Tp'
      '       And V_Det.Id = t.Id_Row_Det'
      'Where  V_Det.Det_Id In ( Select a.Id_Det '
      '                         From   Ogt.V_SPR_RCD a'
      '                         Where  a.Id_Izd = :v_Izd_Id'
      '                                And a.Flag = '#39'1'#39
      '                                And a.Kol > 0 ) '
      'Order  By Row_Num_Gen')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0049005A0044005F00490044000500
      00000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0500000030000000040000004900440001000000000012000000490044005F00
      44004F0043005F00540050000100000000000C0000004400450054005F004900
      440001000000000016000000490044005F0052004F0057005F004F0050004500
      52000100000000001600000052004F0057005F004E0055004D005F0047004500
      4E00010000000000080000005000520049004D00010000000000120000004F00
      5000450052005F004E0041004D0045000100000000000C000000520041005A00
      52004100420001000000000016000000520041005A005200410042005F004E00
      41004D0045000100000000001600000044004100540041005F00430048004100
      4E004700450001000000000014000000490044005F0052004F0057005F004400
      45005400010000000000180000004F005000450052005F004F0042004F005200
      5F0045004E00010000000000220000004F005000450052005F004F0042004F00
      52005F00540049004D0045005F0050005A00010000000000220000004F005000
      450052005F004F0042004F0052005F00540049004D0045005F00530048000100
      000000000E0000004F0042004F0052005F004900440001000000000012000000
      4F0042004F0052005F004E0041004D0045000100000000001200000050005200
      4F0046005F0043004F00440045000100000000000E00000045004E0056004900
      52004F004E000100000000001000000048004100520044004E00450053005300
      0100000000000A00000054005F004D0049004E000100000000000A0000005400
      5F004D004100580001000000000010000000540049004D0045005F004D004900
      4E0001000000000010000000540049004D0045005F004D004100580001000000
      000014000000540049004D0045005F004500440049005A004D00010000000000
      120000004F005000450052005F004B004F004900440001000000000010000000
      4F005000450052005F004B0055005000010000000000120000004F0050004500
      52005F0050005000500044000100000000001A0000004F005000450052005F00
      4F005000500050005F00440045005400010000000000100000004F0050004500
      52005F004B0044005000010000000000100000004F005000450052005F004B00
      44004100010000000000100000004F005000450052005F004B0053004C000100
      00000000160000004F005000450052005F0054004F004C005300430048000100
      000000001E0000004F005000450052005F004300480053005F00500041005200
      41004D0053000100000000001A0000004F005000450052005F0043004F004C00
      4F0052005F00490044000100000000001C0000004F005000450052005F004300
      4F0055004E0054005F0049004E005300010000000000160000004D0041004900
      4E005F0044004F0043005F00490044000100000000001400000043004F004C00
      4F0052005F004E0041004D004500010000000000100000004300450048005F00
      43004F0044004500010000000000100000004F005000450052005F0049004F00
      54000100000000001E000000540049004D0045005F004500440049005A004D00
      5F004E0041004D00450001000000000012000000500052004F0046005F005200
      41005A00520001000000000010000000500052004F0046005F004B0056004E00
      0100000000000C0000004300450048005F00490044000100000000000E000000
      4F005000450052005F00490044000100000000001E0000004F00500045005200
      5F0043004F0055004E0054005F00420041005400480001000000000022000000
      4F005000450052005F0054004F004C005300430048005F00520041004E004700
      45000100000000001600000043004F004D0050004C004500430054005F004900
      440001000000000018000000540050005F0057004F0052004B005F0054005900
      50004500010000000000}
    UniqueFields = 'Id'
    UpdatingTable = 'Ogt.V_Tp_Gkttp_Oper_Dlp'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 776
    Top = 544
    object Db_Detail_OperationsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Detail_OperationsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object Db_Detail_OperationsMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Detail_OperationsID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
    end
    object Db_Detail_OperationsROW_NUM_GEN: TStringField
      FieldName = 'ROW_NUM_GEN'
      Size = 50
    end
    object Db_Detail_OperationsOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object Db_Detail_OperationsID_ROW_DET: TFloatField
      FieldName = 'ID_ROW_DET'
      Required = True
    end
    object Db_Detail_OperationsDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object Db_Detail_OperationsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object Db_Detail_OperationsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Detail_OperationsPRIM: TStringField
      FieldName = 'PRIM'
      Size = 2000
    end
    object Db_Detail_OperationsDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object Db_Detail_OperationsOPER_OBOR_EN: TFloatField
      FieldName = 'OPER_OBOR_EN'
    end
    object Db_Detail_OperationsOPER_OBOR_TIME_PZ: TFloatField
      FieldName = 'OPER_OBOR_TIME_PZ'
    end
    object Db_Detail_OperationsOPER_OBOR_TIME_SH: TFloatField
      FieldName = 'OPER_OBOR_TIME_SH'
    end
    object Db_Detail_OperationsOBOR_ID: TFloatField
      FieldName = 'OBOR_ID'
    end
    object Db_Detail_OperationsOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object Db_Detail_OperationsOPER_KOID: TFloatField
      FieldName = 'OPER_KOID'
    end
    object Db_Detail_OperationsENVIRON: TStringField
      FieldName = 'ENVIRON'
      Size = 200
    end
    object Db_Detail_OperationsHARDNESS: TStringField
      FieldName = 'HARDNESS'
      Size = 200
    end
    object Db_Detail_OperationsT_MIN: TFloatField
      FieldName = 'T_MIN'
    end
    object Db_Detail_OperationsT_MAX: TFloatField
      FieldName = 'T_MAX'
    end
    object Db_Detail_OperationsTIME_MIN: TFloatField
      FieldName = 'TIME_MIN'
    end
    object Db_Detail_OperationsTIME_MAX: TFloatField
      FieldName = 'TIME_MAX'
    end
    object Db_Detail_OperationsTIME_EDIZM: TStringField
      FieldName = 'TIME_EDIZM'
      Size = 2
    end
    object Db_Detail_OperationsOPER_KUP: TFloatField
      FieldName = 'OPER_KUP'
    end
    object Db_Detail_OperationsOPER_PPPD: TFloatField
      FieldName = 'OPER_PPPD'
    end
    object Db_Detail_OperationsOPER_OPPP_DET: TFloatField
      FieldName = 'OPER_OPPP_DET'
    end
    object Db_Detail_OperationsOPER_KDP: TFloatField
      FieldName = 'OPER_KDP'
    end
    object Db_Detail_OperationsOPER_KDA: TFloatField
      FieldName = 'OPER_KDA'
    end
    object Db_Detail_OperationsOPER_KSL: TFloatField
      FieldName = 'OPER_KSL'
    end
    object Db_Detail_OperationsOPER_TOLSCH: TFloatField
      FieldName = 'OPER_TOLSCH'
    end
    object Db_Detail_OperationsOPER_CHS_PARAMS: TStringField
      FieldName = 'OPER_CHS_PARAMS'
      Size = 200
    end
    object Db_Detail_OperationsOPER_COLOR_ID: TFloatField
      FieldName = 'OPER_COLOR_ID'
    end
    object Db_Detail_OperationsCOLOR_NAME: TStringField
      FieldName = 'COLOR_NAME'
      Size = 200
    end
    object Db_Detail_OperationsOPER_COUNT_INS: TFloatField
      FieldName = 'OPER_COUNT_INS'
    end
    object Db_Detail_OperationsCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Detail_OperationsOPER_IOT: TStringField
      FieldName = 'OPER_IOT'
      Size = 50
    end
    object Db_Detail_OperationsTIME_EDIZM_NAME: TStringField
      FieldName = 'TIME_EDIZM_NAME'
      Size = 7
    end
    object Db_Detail_OperationsPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object Db_Detail_OperationsPROF_RAZR: TFloatField
      FieldName = 'PROF_RAZR'
    end
    object Db_Detail_OperationsPROF_KVN: TFloatField
      FieldName = 'PROF_KVN'
    end
    object Db_Detail_OperationsCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Detail_OperationsOPER_ID: TFloatField
      FieldName = 'OPER_ID'
    end
    object Db_Detail_OperationsOPER_COUNT_BATH: TFloatField
      FieldName = 'OPER_COUNT_BATH'
    end
    object Db_Detail_OperationsOPER_TOLSCH_RANGE: TStringField
      FieldName = 'OPER_TOLSCH_RANGE'
      Size = 30
    end
    object Db_Detail_OperationsCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object Db_Detail_OperationsTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
  end
  object Db_Operations_For_Copy: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.Ceh_Name Ceh_Code,'
      '       Oper.Obor Obor_Id,'
      '       Oper.Obor_Name,'
      '       t.rowid '
      'From   Ogt.TP_GKTTP_OPER_DLP_COPY t'
      'Left   Join Ogt.V_TP_OK_DLP Oper'
      'On     Oper.Id = t.Id_Row_Oper'
      'order by t.Row_Num_Gen')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000E000000040000004900440001000000000012000000490044005F00
      44004F0043005F00540050000100000000000C0000004400450054005F004900
      44000100000000000800000046004C0041004700010000000000160000004900
      44005F0052004F0057005F004F00500045005200010000000000160000005200
      4F0057005F004E0055004D005F00470045004E00010000000000080000005000
      520049004D00010000000000120000004F005000450052005F004E0041004D00
      4500010000000000100000004F005000450052005F0049004F00540001000000
      00000C0000004300450048005F00490044000100000000001000000043004500
      48005F004E0041004D004500010000000000100000004300450048005F004300
      4F00440045000100000000000E0000004F0042004F0052005F00490044000100
      00000000120000004F0042004F0052005F004E0041004D004500010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 912
    Top = 496
    object Db_Operations_For_CopyID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
    end
    object Db_Operations_For_CopyOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 200
    end
    object Db_Operations_For_CopyOPER_IOT: TStringField
      FieldName = 'OPER_IOT'
      Size = 200
    end
    object Db_Operations_For_CopyFLAG: TFloatField
      FieldName = 'FLAG'
    end
    object Db_Operations_For_CopyCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Operations_For_CopyROW_NUM_GEN: TStringField
      FieldName = 'ROW_NUM_GEN'
      Size = 50
    end
    object Db_Operations_For_CopyCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Operations_For_CopyOBOR_ID: TFloatField
      FieldName = 'OBOR_ID'
    end
    object Db_Operations_For_CopyOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
  end
  object Driver_Operations_For_Copy: TDataSetDriverEh
    ProviderDataSet = Db_Operations_For_Copy
    Left = 912
    Top = 448
  end
  object MemT_Operations_For_Copy: TMemTableEh
    Filtered = True
    Params = <>
    DataDriver = Driver_Operations_For_Copy
    Left = 912
    Top = 408
    object MemT_Operations_For_CopyID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
    end
    object MemT_Operations_For_CopyOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 200
    end
    object MemT_Operations_For_CopyOPER_IOT: TStringField
      FieldName = 'OPER_IOT'
      Size = 200
    end
    object MemT_Operations_For_CopyFLAG: TFloatField
      FieldName = 'FLAG'
    end
    object MemT_Operations_For_CopyCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object MemT_Operations_For_CopyROW_NUM_GEN: TStringField
      FieldName = 'ROW_NUM_GEN'
      Size = 50
    end
    object MemT_Operations_For_CopyCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object MemT_Operations_For_CopyOBOR_ID: TFloatField
      FieldName = 'OBOR_ID'
    end
    object MemT_Operations_For_CopyOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
  end
  object Data_Oper_For_Copy: TDataSource
    DataSet = MemT_Operations_For_Copy
    Left = 912
    Top = 368
  end
  object Pop_M_Operations: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    OnPopup = Pop_M_OperationsPopup
    Left = 608
    Top = 506
    object Pop_M_Operations_Btn_Chose_Oper: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1080#1079' '#1058#1055
      ImageIndex = 24
      OnClick = Pop_M_Operations_Btn_Chose_OperClick
    end
    object Pop_M_Operations_Btn_Oper_Params: TMenuItem
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1087#1077#1088#1072#1094#1080#1080
    end
    object Pop_M_Operations_Btn_Oper_Delete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 23
      OnClick = Pop_M_Operations_Btn_Oper_DeleteClick
    end
  end
  object Db_Operations_Temp: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Row_Oper,'
      '       t.Row_Num_Gen,'
      '       t.Prim,'
      '       t.Oper_Name,'
      '       t.Oper_Iot,'
      '       t.Ceh_Id,'
      '       t.Ceh_Name Ceh_Code,'
      '       t.Oper_Obor_En,'
      '       t.Oper_Obor_Time_Pz,'
      '       t.Oper_Obor_Time_Sh,'
      '       t.Obor_Id,'
      '       t.Obor_Name,'
      '       t.Prof_Code,'
      '       t.Environ,'
      '       t.Hardness,'
      '       t.T_Min,'
      '       t.T_Max,'
      '       t.Time_Min,'
      '       t.Time_Max,'
      '       t.Time_Edizm,'
      '       t.Time_Edizm_Name,'
      '       t.Oper_Koid,'
      '       t.Oper_Kup,'
      '       t.Oper_PPPD,'
      '       t.Oper_OPPP_Det,'
      '       t.Oper_KDP,'
      '       t.Oper_Kda,'
      '       t.Oper_Ksl,'
      '       t.Oper_Tolsch,'
      '       t.Oper_Tolsch_Range,'
      '       t.Oper_Chs_Params,'
      '       t.Oper_Color_Id,'
      '       t.Oper_Color_Name Color_Name,'
      '       t.Oper_Count_Ins'
      'From   Ogt.TP_GKTTP_OPER_DLP_Temp t'
      'Where  t.Id_Row_Det = :Id_Row'
      'Order  By Row_Num_Gen')
    Optimize = False
    Variables.Data = {
      04000000010000000E0000003A00490044005F0052004F005700050000000000
      000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000002200000016000000490044005F0052004F0057005F004F0050004500
      52000100000000001600000052004F0057005F004E0055004D005F0047004500
      4E00010000000000080000005000520049004D00010000000000120000004F00
      5000450052005F004E0041004D004500010000000000100000004F0050004500
      52005F0049004F0054000100000000000C0000004300450048005F0049004400
      010000000000100000004300450048005F0043004F0044004500010000000000
      180000004F005000450052005F004F0042004F0052005F0045004E0001000000
      0000220000004F005000450052005F004F0042004F0052005F00540049004D00
      45005F0050005A00010000000000220000004F005000450052005F004F004200
      4F0052005F00540049004D0045005F00530048000100000000000E0000004F00
      42004F0052005F0049004400010000000000120000004F0042004F0052005F00
      4E0041004D00450001000000000012000000500052004F0046005F0043004F00
      440045000100000000000E00000045004E005600490052004F004E0001000000
      00001000000048004100520044004E004500530053000100000000000A000000
      54005F004D0049004E000100000000000A00000054005F004D00410058000100
      0000000010000000540049004D0045005F004D0049004E000100000000001000
      0000540049004D0045005F004D00410058000100000000001400000054004900
      4D0045005F004500440049005A004D000100000000001E000000540049004D00
      45005F004500440049005A004D005F004E0041004D0045000100000000001200
      00004F005000450052005F004B004F0049004400010000000000100000004F00
      5000450052005F004B0055005000010000000000120000004F00500045005200
      5F0050005000500044000100000000001A0000004F005000450052005F004F00
      5000500050005F00440045005400010000000000100000004F00500045005200
      5F004B0044005000010000000000100000004F005000450052005F004B004400
      4100010000000000100000004F005000450052005F004B0053004C0001000000
      0000160000004F005000450052005F0054004F004C0053004300480001000000
      00001E0000004F005000450052005F004300480053005F005000410052004100
      4D0053000100000000001A0000004F005000450052005F0043004F004C004F00
      52005F00490044000100000000001400000043004F004C004F0052005F004E00
      41004D0045000100000000001C0000004F005000450052005F0043004F005500
      4E0054005F0049004E005300010000000000220000004F005000450052005F00
      54004F004C005300430048005F00520041004E0047004500010000000000}
    MasterFields = 'Id_Row'
    Session = DM_Main.Session
    Left = 600
    Top = 408
    object Db_Operations_TempID_ROW_OPER: TFloatField
      FieldName = 'ID_ROW_OPER'
    end
    object Db_Operations_TempROW_NUM_GEN: TStringField
      FieldName = 'ROW_NUM_GEN'
      Size = 50
    end
    object Db_Operations_TempPRIM: TStringField
      FieldName = 'PRIM'
      Size = 2000
    end
    object Db_Operations_TempOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 200
    end
    object Db_Operations_TempOPER_IOT: TStringField
      FieldName = 'OPER_IOT'
      Size = 200
    end
    object Db_Operations_TempCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Operations_TempCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Operations_TempOPER_OBOR_EN: TFloatField
      FieldName = 'OPER_OBOR_EN'
    end
    object Db_Operations_TempOPER_OBOR_TIME_PZ: TFloatField
      FieldName = 'OPER_OBOR_TIME_PZ'
    end
    object Db_Operations_TempOPER_OBOR_TIME_SH: TFloatField
      FieldName = 'OPER_OBOR_TIME_SH'
    end
    object Db_Operations_TempOBOR_ID: TFloatField
      FieldName = 'OBOR_ID'
    end
    object Db_Operations_TempOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 200
    end
    object Db_Operations_TempPROF_CODE: TFloatField
      FieldName = 'PROF_CODE'
    end
    object Db_Operations_TempENVIRON: TStringField
      FieldName = 'ENVIRON'
      Size = 200
    end
    object Db_Operations_TempHARDNESS: TStringField
      FieldName = 'HARDNESS'
      Size = 200
    end
    object Db_Operations_TempT_MIN: TFloatField
      FieldName = 'T_MIN'
    end
    object Db_Operations_TempT_MAX: TFloatField
      FieldName = 'T_MAX'
    end
    object Db_Operations_TempTIME_MIN: TFloatField
      FieldName = 'TIME_MIN'
    end
    object Db_Operations_TempTIME_MAX: TFloatField
      FieldName = 'TIME_MAX'
    end
    object Db_Operations_TempTIME_EDIZM: TStringField
      FieldName = 'TIME_EDIZM'
      Size = 2
    end
    object Db_Operations_TempTIME_EDIZM_NAME: TStringField
      FieldName = 'TIME_EDIZM_NAME'
      Size = 200
    end
    object Db_Operations_TempOPER_KOID: TFloatField
      FieldName = 'OPER_KOID'
    end
    object Db_Operations_TempOPER_KUP: TFloatField
      FieldName = 'OPER_KUP'
    end
    object Db_Operations_TempOPER_PPPD: TFloatField
      FieldName = 'OPER_PPPD'
    end
    object Db_Operations_TempOPER_OPPP_DET: TFloatField
      FieldName = 'OPER_OPPP_DET'
    end
    object Db_Operations_TempOPER_KDP: TFloatField
      FieldName = 'OPER_KDP'
    end
    object Db_Operations_TempOPER_KDA: TFloatField
      FieldName = 'OPER_KDA'
    end
    object Db_Operations_TempOPER_KSL: TFloatField
      FieldName = 'OPER_KSL'
    end
    object Db_Operations_TempOPER_TOLSCH: TFloatField
      FieldName = 'OPER_TOLSCH'
    end
    object Db_Operations_TempOPER_CHS_PARAMS: TStringField
      FieldName = 'OPER_CHS_PARAMS'
      Size = 200
    end
    object Db_Operations_TempOPER_COLOR_ID: TFloatField
      FieldName = 'OPER_COLOR_ID'
    end
    object Db_Operations_TempCOLOR_NAME: TStringField
      FieldName = 'COLOR_NAME'
      Size = 200
    end
    object Db_Operations_TempOPER_COUNT_INS: TFloatField
      FieldName = 'OPER_COUNT_INS'
    end
    object Db_Operations_TempOPER_TOLSCH_RANGE: TStringField
      FieldName = 'OPER_TOLSCH_RANGE'
      Size = 30
    end
  end
  object Pop_M_Detail_Tp: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    OnPopup = Pop_M_Detail_TpPopup
    Left = 792
    Top = 144
    object Pop_M_Detail_Docs_Btn_VTP: TMenuItem
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
      ImageIndex = 12
      object Pop_M_Detail_Docs_Btn_VTP_See: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088
        OnClick = Main_M_Doc_Complect_Btn_Doc_Tech_Proc_RepClick
      end
      object Pop_M_Detail_Docs_Btn_VTP_Export: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090
        object Pop_M_Detail_Docs_Btn_VTP_Export_Pdf: TMenuItem
          Caption = 'PDF'
          OnClick = Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_PDFClick
        end
        object Pop_M_Detail_Docs_Btn_VTP_Export_Excel: TMenuItem
          Caption = 'Excel'
          OnClick = Main_M_Doc_Complect_Btn_Doc_Tech_Proc_Export_ExcelClick
        end
      end
    end
    object Pop_M_Detail_Tp_Btn_Chose: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 24
      OnClick = Pop_M_Detail_Tp_Btn_ChoseClick
    end
    object Pop_M_Detail_Tp_Btn_Add: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1082#1086#1084#1087#1083#1077#1082#1090
      ImageIndex = 35
      OnClick = Pop_M_Detail_Tp_Btn_AddClick
    end
    object Pop_M_Detail_Tp_Btn_Discard: TMenuItem
      Caption = #1059#1073#1088#1072#1090#1100' '#1080#1079' '#1082#1086#1084#1087#1083#1077#1082#1090#1072
      ImageIndex = 23
      OnClick = Pop_M_Detail_Tp_Btn_DiscardClick
    end
  end
  object Seq_Doc_Details: TOracleQuery
    SQL.Strings = (
      'Select Ogt.TP_GKTTP_DET_DLP$SEQ.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 112
    Top = 248
  end
  object Pop_M_Details: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    OnPopup = Pop_M_DetailsPopup
    Left = 424
    Top = 560
    object Pop_M_Details_Btn_Oper_Params: TMenuItem
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1077#1090#1072#1083#1080
    end
  end
  object Db_Doc_Details: TOracleDataSet
    SQL.Strings = (
      'Select V_Det.*, '
      '       V_Det.rowid '
      'From   Ogt.V_TP_GKTTP_DET_DLP V_Det'
      'Join   Ogt.V_Spr_Tp_Doc Info'
      'On     Info.Id = V_Det.Id_Doc_Tp'
      'Where  V_Det.Det_Id In ( Select a.Id_Det '
      '                         From   Ogt.V_SPR_RCD a'
      '                         Where  a.Id_Izd = :v_Izd_Id'
      '                                And a.Flag = '#39'1'#39
      '                                And a.Kol > 0 )      '
      '       And Info.Tp_Work_Type = :v_Tp_Work_Type')
    Optimize = False
    Variables.Data = {
      0400000002000000120000003A0056005F0049005A0044005F00490044000500
      000000000000000000001E0000003A0056005F00540050005F0057004F005200
      4B005F005400590050004500050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0500000011000000040000004900440001000000000012000000490044005F00
      44004F0043005F00540050000100000000000C0000004400450054005F004900
      44000100000000001600000044004100540045005F004300480041004E004700
      45000100000000000E0000004400450054005F004E0055004D00010000000000
      100000004400450054005F004E0041004D0045000100000000000C0000005200
      41005A0052004100420001000000000016000000520041005A00520041004200
      5F004E0041004D004500010000000000140000004400450054005F004D004100
      54005F0049004400010000000000180000004400450054005F004D0041005400
      5F004E0041004D004500010000000000100000004400450054005F004D004100
      530053000100000000001400000044004900460043005F00470052004F005500
      5000010000000000120000004400450054005F00450056005F00490044000100
      00000000160000004D00410049004E005F0044004F0043005F00490044000100
      000000000E000000490044005F00550053004500520001000000000016000000
      4400450054005F00450056005F0043004F004400450001000000000016000000
      43004F004D0050004C004500430054005F0049004400010000000000}
    UniqueFields = 'ID'
    UpdatingTable = 'Ogt.V_TP_Gkttp_Det_Dlp'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 112
    Top = 440
    object Db_Doc_DetailsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Doc_DetailsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object Db_Doc_DetailsMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Doc_DetailsCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object Db_Doc_DetailsDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Doc_DetailsDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_Doc_DetailsDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_Doc_DetailsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object Db_Doc_DetailsID_USER: TStringField
      FieldName = 'ID_USER'
      Size = 30
    end
    object Db_Doc_DetailsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object Db_Doc_DetailsDET_EV_ID: TFloatField
      FieldName = 'DET_EV_ID'
    end
    object Db_Doc_DetailsDET_EV_CODE: TStringField
      FieldName = 'DET_EV_CODE'
      Size = 3
    end
    object Db_Doc_DetailsDET_MASS: TFloatField
      FieldName = 'DET_MASS'
    end
    object Db_Doc_DetailsDIFC_GROUP: TFloatField
      FieldName = 'DIFC_GROUP'
    end
    object Db_Doc_DetailsDET_MAT_ID: TFloatField
      FieldName = 'DET_MAT_ID'
    end
    object Db_Doc_DetailsDET_MAT_NAME: TStringField
      FieldName = 'DET_MAT_NAME'
      Size = 150
    end
    object Db_Doc_DetailsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
  end
  object Driver_Doc_Details: TDataSetDriverEh
    ProviderDataSet = Db_Doc_Details
    Left = 112
    Top = 394
  end
  object MemT_Doc_Details: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_DOC_TP'
    FetchAllOnOpen = True
    MasterFields = 'ID'
    MasterSource = Data_Detail_Tp
    Params = <>
    DataDriver = Driver_Doc_Details
    BeforeDelete = MemT_Doc_DetailsBeforeDelete
    OnNewRecord = MemT_Doc_DetailsNewRecord
    Left = 112
    Top = 346
    object MemT_Doc_DetailsID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object MemT_Doc_DetailsID_DOC_TP: TFloatField
      FieldName = 'ID_DOC_TP'
      Required = True
    end
    object MemT_Doc_DetailsMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object MemT_Doc_DetailsCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object MemT_Doc_DetailsDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object MemT_Doc_DetailsDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object MemT_Doc_DetailsDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object MemT_Doc_DetailsRAZRAB: TFloatField
      FieldName = 'RAZRAB'
    end
    object MemT_Doc_DetailsID_USER: TStringField
      FieldName = 'ID_USER'
      Size = 30
    end
    object MemT_Doc_DetailsRAZRAB_NAME: TStringField
      FieldName = 'RAZRAB_NAME'
      Size = 26
    end
    object MemT_Doc_DetailsDET_EV_ID: TFloatField
      FieldName = 'DET_EV_ID'
    end
    object MemT_Doc_DetailsDET_EV_CODE: TStringField
      FieldName = 'DET_EV_CODE'
      Size = 3
    end
    object MemT_Doc_DetailsDET_MASS: TFloatField
      FieldName = 'DET_MASS'
    end
    object MemT_Doc_DetailsDIFC_GROUP: TFloatField
      FieldName = 'DIFC_GROUP'
    end
    object MemT_Doc_DetailsDET_MAT_ID: TFloatField
      FieldName = 'DET_MAT_ID'
    end
    object MemT_Doc_DetailsDET_MAT_NAME: TStringField
      FieldName = 'DET_MAT_NAME'
      Size = 150
    end
    object MemT_Doc_DetailsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
  end
  object Data_Doc_Details: TDataSource
    DataSet = MemT_Doc_Details
    Left = 112
    Top = 296
  end
  object MemT_Complect_Details: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Complect_Details
    TreeList.Active = True
    TreeList.KeyFieldName = 'DET_ID'
    TreeList.RefParentFieldName = 'ID_UZ'
    TreeList.DefaultNodeExpanded = True
    Left = 267
    Top = 352
    object MemT_Complect_DetailsID_RCD: TFloatField
      FieldName = 'ID_RCD'
      Required = True
    end
    object MemT_Complect_DetailsID_IZD: TFloatField
      FieldName = 'ID_IZD'
      Required = True
    end
    object MemT_Complect_DetailsNAME_IZD: TStringField
      FieldName = 'NAME_IZD'
      Size = 50
    end
    object MemT_Complect_DetailsDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object MemT_Complect_DetailsNUM_DET: TStringField
      FieldName = 'NUM_DET'
      Size = 50
    end
    object MemT_Complect_DetailsNAME_DET: TStringField
      FieldName = 'NAME_DET'
      Size = 100
    end
    object MemT_Complect_DetailsID_PRIMEN_DET: TFloatField
      FieldName = 'ID_PRIMEN_DET'
    end
    object MemT_Complect_DetailsPRIMEN_DET: TStringField
      FieldName = 'PRIMEN_DET'
      Size = 50
    end
    object MemT_Complect_DetailsID_UZ: TFloatField
      FieldName = 'ID_UZ'
      Required = True
    end
    object MemT_Complect_DetailsMAR: TStringField
      FieldName = 'MAR'
      Size = 100
    end
    object MemT_Complect_DetailsKOL: TFloatField
      FieldName = 'KOL'
      Required = True
    end
    object MemT_Complect_DetailsKOM: TStringField
      FieldName = 'KOM'
      Size = 11
    end
    object MemT_Complect_DetailsTECH: TStringField
      FieldName = 'TECH'
      Size = 11
    end
    object MemT_Complect_DetailsID_MTM: TFloatField
      FieldName = 'ID_MTM'
    end
    object MemT_Complect_DetailsNUM_MTM: TStringField
      FieldName = 'NUM_MTM'
      Size = 15
    end
    object MemT_Complect_DetailsFLAG_MTM: TStringField
      FieldName = 'FLAG_MTM'
      Size = 1
    end
    object MemT_Complect_DetailsNOMVAR: TFloatField
      FieldName = 'NOMVAR'
    end
    object MemT_Complect_DetailsZAMDET: TStringField
      FieldName = 'ZAMDET'
      Size = 50
    end
    object MemT_Complect_DetailsZAMMAR: TStringField
      FieldName = 'ZAMMAR'
      Size = 50
    end
    object MemT_Complect_DetailsPRIM: TStringField
      FieldName = 'PRIM'
      Size = 150
    end
    object MemT_Complect_DetailsNUM_NAME_DET: TStringField
      FieldName = 'NUM_NAME_DET'
      Size = 151
    end
  end
end
