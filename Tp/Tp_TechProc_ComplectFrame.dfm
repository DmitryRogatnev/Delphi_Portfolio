object Frame_Tp_TechProcComplect: TFrame_Tp_TechProcComplect
  Left = 0
  Top = 0
  Width = 1141
  Height = 727
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'clWindowText'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 643
    Top = 30
    Width = 5
    Height = 697
    Align = alRight
    ExplicitLeft = 328
    ExplicitTop = 27
  end
  object Control_Panel: TPanel
    Left = 0
    Top = 0
    Width = 1141
    Height = 30
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 740
      Top = 0
      Width = 5
      Height = 26
      Align = alRight
      ExplicitLeft = 743
    end
    object Splitter3: TSplitter
      Left = 476
      Top = 0
      Width = 5
      Height = 26
      Align = alRight
      ExplicitLeft = 487
      ExplicitTop = -4
    end
    object Btn_Pack: TButton
      Left = 30
      Top = 0
      Width = 30
      Height = 26
      Cursor = crHandPoint
      Hint = #1059#1087#1072#1082#1086#1074#1072#1082#1072' '#1082#1086#1084#1087#1083#1077#1082#1090#1072
      Align = alLeft
      ImageAlignment = iaCenter
      ImageIndex = 56
      Images = Form_Tech_Proc_Main.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Btn_PackClick
    end
    object E_Addit_Name: TDBEditEh
      AlignWithMargins = True
      Left = 748
      Top = 3
      Width = 386
      Height = 20
      Align = alRight
      DynProps = <>
      EditButtons = <>
      TabOrder = 1
      Visible = True
      ExplicitHeight = 23
    end
    object E_Addit_Num: TDBEditEh
      AlignWithMargins = True
      Left = 484
      Top = 3
      Width = 253
      Height = 20
      Align = alRight
      DynProps = <>
      EditButtons = <>
      TabOrder = 2
      Visible = True
      ExplicitHeight = 23
    end
    object Btn_Print: TButton
      Left = 0
      Top = 0
      Width = 30
      Height = 26
      Cursor = crHandPoint
      Hint = #1055#1077#1095#1072#1090#1100
      Align = alLeft
      ImageAlignment = iaCenter
      ImageIndex = 38
      Images = Form_Tech_Proc_Main.ImageList1
      ParentShowHint = False
      PopupMenu = Pm_Print
      ShowHint = True
      TabOrder = 3
      OnClick = Btn_PrintClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 30
    Width = 643
    Height = 697
    Align = alClient
    Caption = #1044#1077#1090#1072#1083#1080
    Color = clMenu
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object Grid_Details: TDBGridEh
      Left = 2
      Top = 17
      Width = 639
      Height = 678
      Align = alClient
      AutoFitColWidths = True
      DataSource = Data_Complect_Details
      DynProps = <>
      Flat = True
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
      ReadOnly = True
      RowHeight = 2
      RowLines = 1
      SearchPanel.Enabled = True
      SearchPanel.FilterEnabled = False
      STFilter.Visible = True
      TabOrder = 0
      TitleParams.RowLines = 2
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
  object GroupBox1: TGroupBox
    Left = 648
    Top = 30
    Width = 493
    Height = 697
    Align = alRight
    Caption = #1058#1077#1093#1087#1088#1086#1094#1077#1089#1089#1099' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1076#1077#1090#1072#1083#1080
    Color = clMenu
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    object Grid_Detail_Tp: TDBGridEh
      Left = 2
      Top = 17
      Width = 489
      Height = 678
      Align = alClient
      AllowedOperations = [alopUpdateEh, alopDeleteEh, alopAppendEh]
      AutoFitColWidths = True
      DataSource = Data_TechProcss
      DynProps = <>
      Flat = True
      PopupMenu = PM_TechProcss
      ReadOnly = True
      SearchPanel.Enabled = True
      STFilter.InstantApply = True
      STFilter.Local = True
      STFilter.Location = stflInTitleFilterEh
      STFilter.Visible = True
      TabOrder = 0
      TitleParams.RowLines = 2
      OnGetCellParams = Grid_Detail_TpGetCellParams
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DOC_NUM'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ADDIT_INFO'
          Footers = <>
          Title.Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
          Width = 317
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PROGRAMMFLAG'
          Footers = <>
          STFilter.DataField = 'PROGRAMMFLAG'
          STFilter.KeyField = 'PROGRAMMFLAGNAME'
          STFilter.ListField = 'PROGRAMMFLAGNAME'
          STFilter.ListSource = Data_ProgrammFlags
          Title.Caption = #1042#1077#1088#1089#1080#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
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
      'Where  a.Id_Izd = :Izd_Id'
      '       And a.Kol > 0'
      '       And a.Flag = '#39'1'#39)
    Optimize = False
    Variables.Data = {
      04000000010000000E0000003A0049005A0044005F0049004400050000000000
      000000000000}
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
    Master = Db_Doc_Info
    MasterFields = 'Izd_Id'
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
  object Driver_Complect_Details: TDataSetDriverEh
    KeyFields = 'Id'
    ProviderDataSet = Db_Complect_Details
    Left = 267
    Top = 386
  end
  object MemT_Complect_Details: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Complect_Details
    TreeList.Active = True
    TreeList.KeyFieldName = 'DET_ID'
    TreeList.RefParentFieldName = 'ID_UZ'
    TreeList.DefaultNodeExpanded = True
    AfterScroll = MemT_Complect_DetailsAfterScroll
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
    object MemT_Complect_DetailsCEH: TStringField
      FieldKind = fkCalculated
      FieldName = 'CEH'
      Calculated = True
    end
  end
  object Data_Complect_Details: TDataSource
    DataSet = MemT_Complect_Details
    Left = 272
    Top = 304
  end
  object Db_TechProcss: TOracleDataSet
    SQL.Strings = (
      'Select *'
      'From ('
      'Select t.Doc_Header_Id,'
      '       Nvl(t.Doc_Num, old_tp.dok_in_txt) Doc_Num,'
      '       t.Doc_Type,'
      '       (Case '
      '          When t.Doc_Type=1 Then t.Det_Id'
      '          When t.Doc_Type=4 Then g.Det_Id'
      #9#9#9#9#9'When t.Doc_Type is Null Then old_tp.det'
      '        End) Det_Id,'
      '       (Case '
      '          When t.Doc_Type=1 Then t.Det_Num'
      '          When t.Doc_Type=4 Then g.Det_Num'
      #9#9#9#9#9'Else old_tp.det_txt'
      '        End) Det_Num,'
      '       (Case '
      '          When t.Doc_Type=1 Then t.Det_Name'
      '          When t.Doc_Type=4 Then g.Det_Name'
      #9#9#9#9#9'Else old_tp.Nd'
      '        End) Det_Name,'
      '       (Case '
      '          When t.Doc_Type=1 Then d.primen_id'
      '          When t.Doc_Type=4 Then t.Izd_Id'
      #9#9#9#9#9'Else d.primen_id'
      '        End) Izd_Id,'
      '       (Case '
      '          When t.Doc_Type=1 Then t.Det_Mar'
      '          When t.Doc_Type=4 Then t.Tp_Num||'#39' '#39'||t.Tp_Name'
      #9#9#9#9#9'Else '#39#1058#1077#1093#1087#1088#1086#1094#1077#1089#1089' '#1080#1079' '#1089#1090#1072#1088#1086#1081' '#1087#1088#1086#1075#1088#1072#1084#1084#1099#39
      '        End) Addit_Info,'
      '       (Case '
      '          When t.Doc_Type in (1, 4) Then '#39#1053#1086#1074#1072#1103#39
      '          Else '#39#1057#1090#1072#1088#1072#1103#39
      '        End) ProgrammFlag'
      'From   Ogt.v_Spr_Tp_Doc t'
      'Full   Join Ogt.V$spr_Tp old_Tp'
      'On     Old_Tp.Det=t.Det_Id'
      '       And Old_tp.det Is Not Null'
      'Left   Join Ogt.Spr_Det_Txt d'
      'On     d.id = t.Det_Id'
      '       or d.id=old_tp.Det'
      'Left   Join Ogt.V_Tp_Gkttp_Det_Dlp g'
      'On     g.Id_Doc_Tp = t.Id           '
      '       And g.Doc_Tp_Vers_Id = t.Id_Vers ) a'
      'Where  a.Det_Id = :Det_Id')
    Optimize = False
    Variables.Data = {
      04000000010000000E0000003A004400450054005F0049004400050000000000
      000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000090000001A00000044004F0043005F00480045004100440045005200
      5F00490044000100000000000E00000044004F0043005F004E0055004D000100
      000000001000000044004F0043005F0054005900500045000100000000000C00
      00004400450054005F00490044000100000000000E0000004400450054005F00
      4E0055004D00010000000000100000004400450054005F004E0041004D004500
      0100000000000C00000049005A0044005F004900440001000000000014000000
      410044004400490054005F0049004E0046004F00010000000000180000005000
      52004F004700520041004D004D0046004C0041004700010000000000}
    Session = DM_Main.Session
    Left = 848
    Top = 336
    object Db_TechProcssDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_TechProcssDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_TechProcssDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_TechProcssDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_TechProcssDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_TechProcssDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_TechProcssIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object Db_TechProcssADDIT_INFO: TStringField
      FieldName = 'ADDIT_INFO'
      Size = 331
    end
    object Db_TechProcssPROGRAMMFLAG: TStringField
      FieldName = 'PROGRAMMFLAG'
      Size = 6
    end
  end
  object Data_TechProcss: TDataSource
    DataSet = MemT_TechProcss
    Left = 822
    Top = 270
  end
  object Db_Doc_Info: TOracleDataSet
    SQL.Strings = (
      'Select t.*,'
      '       ( Case'
      '            When t.Main_Doc_Id Is Null'
      '            Then t.Id'
      '            Else t.Main_Doc_Id'
      '          End ) Linked_Doc_Id,'
      '       ( Case'
      '            When t.Main_Doc_Id Is Null'
      '            Then t.Id_Vers'
      '            Else m.Id_Vers'
      '          End ) Linked_Doc_Id_Vers,'
      
        '       Ogt.Pkg_Tp_Doc.F_Get_Doc_Edit_Status(in_doc_header_id => ' +
        't.Doc_Header_Id,'
      
        '                                            v_user_lnum => Null)' +
        ' Doc_Edit_Stat,'
      '     ( Case'
      '         When t.Izd_Id Is Null'
      '         Then Det.Primen_txt'
      '         Else t.Izd_Name||'#39' '#39'||t.Izd_Type'
      '       End ) As Izd_Name_Type,'
      '       (Case'
      '          When prnt.Id is Null'
      '          Then t.id '
      '          Else prnt.Id'
      '        End) Parent_Id_Doc, '
      '       (Case t.Doc_Type '
      '          when 1 then t.Det_Num '
      '          when 2 then t.Tp_Num'
      '          when 4 then t.Tp_Num'
      '          when 5 then t.Izd_Name'
      '        End) Addit_Info_Num,'
      '       (Case t.Doc_Type '
      '          when 1 then t.Det_Name '
      '          when 2 then t.Tp_Name'
      '          when 4 then t.Tp_Name'
      '          when 5 then t.Izd_Type'
      '        End) Addit_Info_Name,      '
      '       (Case'
      '          When prnt.Id_Vers is Null'
      '          Then t.id_vers'
      '          Else prnt.Id_vers'
      '        End) Parent_Id_Vers,'
      '       Main_d.Tp_Num Main_Doc_Tp_Num,'
      '       Main_d.Tp_Name Main_Doc_Tp_Name,'
      '       m.Doc_Header_Id Main_Doc_Header_Id'
      'From   Ogt.v_Spr_Tp_Doc t'
      'Left   Join Ogt.V_Spr_Tp_Doc prnt'
      'On     prnt.Doc_Header_Id = t.Parent_Doc_Id'
      'Left   Join Ogt.V_Spr_Tp_doc_Actual m'
      'On     m.Id = t.main_doc_Id'
      'Left   Join Ogt.V_Spr_Tp_Doc Main_d'
      'On     Main_D.Doc_Header_id = m.Doc_Header_Id'
      'Left   Join Ogt.Spr_Det_Txt Det'
      'On     Det.Id = t.Det_Id  '
      'Where  t.Doc_Header_Id = :In_Doc_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A0049004E005F0044004F0043005F0049004400
      050000000D0000003030303039313731303030310000000000}
    QBEDefinition.QBEFieldDefs = {
      050000003500000004000000490044000100000000000E00000044004F004300
      5F004E0055004D000100000000001200000044004F0043005F004C0049005400
      450052000100000000001000000044004F0043005F0054005900500045000100
      000000000C000000540050005F004E0055004D000100000000000E0000005400
      50005F004E0041004D00450001000000000018000000540050005F0057004F00
      52004B005F00540059005000450001000000000022000000540050005F005700
      4F0052004B005F0054005900500045005F004E0041004D004500010000000000
      0C00000049005A0044005F00490044000100000000001000000049005A004400
      5F004E0041004D0045000100000000001000000049005A0044005F0054005900
      500045000100000000001600000043004F004D0050004C004500430054005F00
      490044000100000000000E000000540050005F00540059005000450001000000
      00001000000046004C00410047005F0049004D0050000100000000000C000000
      4400450054005F00490044000100000000000E0000004400450054005F004E00
      55004D00010000000000100000004400450054005F004E0041004D0045000100
      000000000E0000004400450054005F004D00410052000100000000000C000000
      4300450048005F0049004400010000000000100000004300450048005F004300
      4F00440045000100000000001600000041005500540048004F0052005F004C00
      4E0055004D000100000000001600000041005500540048004F0052005F004E00
      41004D0045000100000000001000000044004100540041005F00520045004700
      0100000000000C00000052004500410053004F004E000100000000001A000000
      430041004E00430045004C005F0044004F0043005F0049004400010000000000
      160000004D00410049004E005F0044004F0043005F0049004400010000000000
      16000000430041004E00430045004C005F0046004C0041004700010000000000
      1A0000004300450048005F0044004F00430053005F0046004C00410047000100
      000000000E0000004100430054005F004E0055004D0001000000000010000000
      4100430054005F0044004100540045000100000000001A00000044004F004300
      5F004800450041004400450052005F00490044000100000000000E0000004500
      4D00500053005F004900440001000000000018000000500052004F004A004500
      430054005F0046004C0041004700010000000000160000005500530045005200
      5F0049004E005300450052005400010000000000160000004400410054004500
      5F0049004E005300450052005400010000000000160000005500530045005200
      5F004300480041004E0047004500010000000000160000004400410054004100
      5F004300480041004E00470045000100000000001A00000044004F0043005F00
      45004400490054005F0053005400410054000100000000001A00000049005A00
      44005F004E0041004D0045005F0054005900500045000100000000000E000000
      490044005F00560045005200530001000000000016000000490044005F004400
      4F0043005F00460055004C004C00010000000000220000004400410054004500
      5F00530054004100520054005F0041004300540049004F004E00010000000000
      1E00000044004100540045005F0045004E0044005F0041004300540049004F00
      4E000100000000001E0000004D00410049004E005F0044004F0043005F005400
      50005F004E0055004D00010000000000200000004D00410049004E005F004400
      4F0043005F00540050005F004E0041004D004500010000000000240000004D00
      410049004E005F0044004F0043005F004800450041004400450052005F004900
      44000100000000001A00000050004100520045004E0054005F0044004F004300
      5F00490044000100000000001A0000004C0049004E004B00450044005F004400
      4F0043005F0049004400010000000000240000004C0049004E004B0045004400
      5F0044004F0043005F00490044005F0056004500520053000100000000001A00
      000050004100520045004E0054005F00490044005F0044004F00430001000000
      00001C00000050004100520045004E0054005F00490044005F00560045005200
      53000100000000001C000000410044004400490054005F0049004E0046004F00
      5F004E0055004D000100000000001E000000410044004400490054005F004900
      4E0046004F005F004E0041004D004500010000000000}
    Session = DM_Main.Session
    Left = 1006
    Top = 176
    object Db_Doc_InfoID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Doc_InfoID_VERS: TIntegerField
      FieldName = 'ID_VERS'
      Required = True
    end
    object Db_Doc_InfoID_DOC_FULL: TStringField
      FieldName = 'ID_DOC_FULL'
      Size = 14
    end
    object Db_Doc_InfoDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Doc_InfoPARENT_DOC_ID: TIntegerField
      FieldName = 'PARENT_DOC_ID'
    end
    object Db_Doc_InfoDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_Doc_InfoDATE_START_ACTION: TDateTimeField
      FieldName = 'DATE_START_ACTION'
    end
    object Db_Doc_InfoDATE_END_ACTION: TDateTimeField
      FieldName = 'DATE_END_ACTION'
    end
    object Db_Doc_InfoDOC_LITER: TStringField
      FieldName = 'DOC_LITER'
      Size = 2
    end
    object Db_Doc_InfoDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_Doc_InfoTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object Db_Doc_InfoTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object Db_Doc_InfoTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object Db_Doc_InfoTP_WORK_TYPE_NAME: TStringField
      FieldName = 'TP_WORK_TYPE_NAME'
      Size = 103
    end
    object Db_Doc_InfoIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object Db_Doc_InfoIZD_NAME: TStringField
      FieldName = 'IZD_NAME'
      Size = 50
    end
    object Db_Doc_InfoIZD_TYPE: TStringField
      FieldName = 'IZD_TYPE'
      Size = 100
    end
    object Db_Doc_InfoCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object Db_Doc_InfoTP_TYPE: TFloatField
      FieldName = 'TP_TYPE'
    end
    object Db_Doc_InfoFLAG_IMP: TFloatField
      FieldName = 'FLAG_IMP'
    end
    object Db_Doc_InfoDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Doc_InfoDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_Doc_InfoDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_Doc_InfoDET_MAR: TStringField
      FieldName = 'DET_MAR'
      Size = 100
    end
    object Db_Doc_InfoCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Doc_InfoCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Doc_InfoAUTHOR_LNUM: TFloatField
      FieldName = 'AUTHOR_LNUM'
      Required = True
    end
    object Db_Doc_InfoAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object Db_Doc_InfoDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object Db_Doc_InfoREASON: TStringField
      FieldName = 'REASON'
      Size = 1000
    end
    object Db_Doc_InfoCANCEL_DOC_ID: TFloatField
      FieldName = 'CANCEL_DOC_ID'
    end
    object Db_Doc_InfoMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Doc_InfoCANCEL_FLAG: TFloatField
      FieldName = 'CANCEL_FLAG'
    end
    object Db_Doc_InfoCEH_DOCS_FLAG: TFloatField
      FieldName = 'CEH_DOCS_FLAG'
    end
    object Db_Doc_InfoACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
    end
    object Db_Doc_InfoACT_DATE: TDateTimeField
      FieldName = 'ACT_DATE'
    end
    object Db_Doc_InfoEMPS_ID: TStringField
      FieldName = 'EMPS_ID'
      Size = 30
    end
    object Db_Doc_InfoPROJECT_FLAG: TIntegerField
      FieldName = 'PROJECT_FLAG'
    end
    object Db_Doc_InfoUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Doc_InfoDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Doc_InfoUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Doc_InfoDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object Db_Doc_InfoLINKED_DOC_ID: TFloatField
      FieldName = 'LINKED_DOC_ID'
    end
    object Db_Doc_InfoLINKED_DOC_ID_VERS: TFloatField
      FieldName = 'LINKED_DOC_ID_VERS'
    end
    object Db_Doc_InfoDOC_EDIT_STAT: TStringField
      FieldName = 'DOC_EDIT_STAT'
      Size = 4000
    end
    object Db_Doc_InfoIZD_NAME_TYPE: TStringField
      FieldName = 'IZD_NAME_TYPE'
      Size = 4000
    end
    object Db_Doc_InfoPARENT_ID_DOC: TFloatField
      FieldName = 'PARENT_ID_DOC'
    end
    object Db_Doc_InfoPARENT_ID_VERS: TFloatField
      FieldName = 'PARENT_ID_VERS'
    end
    object Db_Doc_InfoMAIN_DOC_TP_NUM: TStringField
      FieldName = 'MAIN_DOC_TP_NUM'
      Size = 30
    end
    object Db_Doc_InfoMAIN_DOC_TP_NAME: TStringField
      FieldName = 'MAIN_DOC_TP_NAME'
      Size = 300
    end
    object Db_Doc_InfoMAIN_DOC_HEADER_ID: TFloatField
      FieldName = 'MAIN_DOC_HEADER_ID'
    end
    object Db_Doc_InfoADDIT_INFO_NUM: TStringField
      FieldName = 'ADDIT_INFO_NUM'
      Size = 50
    end
    object Db_Doc_InfoADDIT_INFO_NAME: TStringField
      FieldName = 'ADDIT_INFO_NAME'
      Size = 300
    end
  end
  object PM_TechProcss: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    OnPopup = PM_TechProcssPopup
    Left = 686
    Top = 446
    object Pm_TechPr_Btn_Print: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      ImageIndex = 38
      OnClick = Pm_TechPr_Btn_PrintClick
    end
    object Pm_TechPr_Btn_Open: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100
      ImageIndex = 14
      OnClick = Pm_TechPr_Btn_OpenClick
    end
  end
  object RepData_Complect_Details: TfrxDBDataset
    UserName = 'RepData_Complect_Details'
    CloseDataSource = False
    DataSource = Data_Complect_Details
    BCDToCurrency = False
    Left = 280
    Top = 262
  end
  object Driver_TechProcss: TDataSetDriverEh
    KeyFields = 'DOC_HEADER_ID'
    ProviderDataSet = Db_TechProcss
    Left = 744
    Top = 328
  end
  object MemT_TechProcss: TMemTableEh
    DetailFields = 'DET_ID'
    FetchAllOnOpen = True
    MasterDetailSide = mdsOnSelfAfterProviderEh
    MasterFields = 'DET_ID'
    MasterSource = Data_Complect_Details
    Params = <>
    DataDriver = Driver_TechProcss
    Left = 808
    Top = 416
  end
  object Db_ProgrammFlags: TOracleDataSet
    SQL.Strings = (
      'Select (Case Level'
      '          When 1 Then '#39#1053#1086#1074#1072#1103#39
      '          When 2 Then '#39#1057#1090#1072#1088#1072#1103#39
      '        End) ProgrammFlagName'
      'From   Dual'
      'Connect By Level <=2')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000100000020000000500052004F004700520041004D004D0046004C00
      410047004E0041004D004500010000000000}
    Session = DM_Main.Session
    Left = 488
    Top = 480
  end
  object Data_ProgrammFlags: TDataSource
    DataSet = Db_ProgrammFlags
    Left = 504
    Top = 430
  end
  object Pm_Print: TPopupMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 560
    Top = 352
    object Pm_Btn_Print: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '
      ImageIndex = 38
      OnClick = Pm_Btn_PrintClick
    end
    object Pm_Btn_Print_Ceh: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1087#1086' '#1094#1077#1093#1091
      ImageIndex = 38
      OnClick = Pm_Btn_PrintClick
    end
  end
end
