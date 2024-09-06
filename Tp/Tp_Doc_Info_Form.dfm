object Form_Doc_Info: TForm_Doc_Info
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 515
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'clWindowText'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 353
    Top = 0
    Width = 5
    Height = 515
    ExplicitHeight = 469
  end
  object Grid_Dc_Pnt_Var: TDBGridEh
    Left = 0
    Top = 0
    Width = 353
    Height = 515
    Align = alLeft
    AllowedSelections = [gstRecordBookmarks]
    AutoFitColWidths = True
    DynProps = <>
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'clWindowText'
    Font.Style = []
    GridLineParams.DataHorzLines = True
    GridLineParams.DataVertLines = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh, gioShowRowselCheckboxesEh]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghFitRowHeightToText, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    ParentFont = False
    RowHeight = 2
    RowLines = 1
    SearchPanel.Enabled = True
    STFilter.InstantApply = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 0
    OnGetCellParams = Grid_Dc_Pnt_VarGetCellParams
    OnSelectionChanged = Grid_Dc_Pnt_VarSelectionChanged
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POINT_POSITION'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID_DC_RT_US_PNT'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DEP_SNAME'
        Footers = <>
        Title.Caption = #1062#1077#1093'/'#1054#1090#1076#1077#1083
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POINT_NAME'
        Footers = <>
        Title.Caption = #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STP_DOC_ROUT_POINT_ID'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STP_DC_RT_PNT_POS_ID'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POS_STATE'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'POS_RW_NUM'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 358
    Top = 0
    Width = 726
    Height = 515
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    DesignSize = (
      722
      511)
    object Grid_Info: TDBVertGridEh
      Left = 4
      Top = 50
      Width = 681
      Height = 427
      AllowedSelections = []
      Anchors = [akLeft, akTop, akRight, akBottom]
      RowCategories.CategoryProps = <>
      PrintService.ColorSchema = pcsFullColorEh
      DataSource = Data_Doc_Info
      DrawGraphicData = True
      DrawMemoText = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'clWindowText'
      Font.Style = []
      Flat = True
      OptionsEh = [dgvhHighlightFocusEh, dgvhClearSelectionEh, dgvhEnterToNextRowEh, dgvhTabToNextRowEh]
      ParentFont = False
      ParentShowHint = False
      RowsDefValues.FitRowHeightToData = True
      ShowHint = True
      TabOrder = 0
      LabelColWidth = 197
      OnAdvDrawDataCell = Grid_InfoAdvDrawDataCell
      Rows = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'DOC_NUM'
          ReadOnly = True
          RowLabel.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          RowLabel.Font.Charset = DEFAULT_CHARSET
          RowLabel.Font.Color = clGray
          RowLabel.Font.Height = -13
          RowLabel.Font.Name = 'Tahoma'
          RowLabel.Font.Style = []
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'AUTHOR_NAME'
          RowLabel.Caption = #1040#1074#1090#1086#1088
          RowLabel.Font.Charset = DEFAULT_CHARSET
          RowLabel.Font.Color = clGrayText
          RowLabel.Font.Height = -13
          RowLabel.Font.Name = 'Tahoma'
          RowLabel.Font.Style = []
          OnUpdateData = DbGrid_InfoRows11UpdateData
        end
        item
          DynProps = <>
          EditButtons = <
            item
              Hint = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1088#1080#1095#1080#1085' '#1074#1099#1087#1091#1089#1082#1072
              Style = ebsEllipsisEh
              OnClick = DbGrid_InfoRows1EditButtons0Click
            end>
          FieldName = 'REASON'
          RowLabel.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1074#1099#1087#1091#1089#1082#1072'*:'
          RowLabel.Color = 15128749
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'MAIN_DOC_NUM'
          RowLabel.Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1076#1086#1082#1091#1084#1077#1085#1090':'
          RowLabel.Color = 15128749
          OnUpdateData = DbGrid_InfoRows4UpdateData
        end
        item
          DynProps = <>
          DropDownBox.ListFieldNames = 'Liter_Type'
          DropDownBox.ListSource = Data_Liter_Types
          EditButtons = <>
          FieldName = 'DOC_LITER'
          RowLabel.Caption = #1051#1080#1090#1077#1088#1072'*:'
          RowLabel.Color = 15128749
          OnUpdateData = DbGrid_InfoRows8UpdateData
        end
        item
          DynProps = <>
          EditButtons = <
            item
              Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1076#1077#1090#1072#1083#1077#1081
              ShortCut = 0
              Style = ebsEllipsisEh
              OnClick = DbGrid_InfoRows2EditButtons0Click
            end>
          FieldName = 'DET_NUM'
          RowLabel.Caption = #1064#1080#1092#1088' '#1076#1077#1090#1072#1083#1080' / '#1089#1073#1086#1088#1082#1080'*:'
          RowLabel.Color = 15128749
          OnUpdateData = DBVertGridEh1Rows2UpdateData
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'DET_NAME'
          ReadOnly = True
          RowLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1080' / '#1089#1073#1086#1088#1082#1080
          RowLabel.Font.Charset = DEFAULT_CHARSET
          RowLabel.Font.Color = clGrayText
          RowLabel.Font.Height = -13
          RowLabel.Font.Name = 'Tahoma'
          RowLabel.Font.Style = []
        end
        item
          DynProps = <>
          EditButtons = <
            item
              ShortCut = 0
              Style = ebsEllipsisEh
              OnClick = DbGrid_InfoRows7EditButtons0Click
            end>
          FieldName = 'DET_MAR'
          RowLabel.Caption = #1052#1072#1088#1096#1088#1091#1090' '#1076#1077#1090#1072#1083#1080' / '#1089#1073#1086#1088#1082#1080'*:'
          RowLabel.Color = 15128749
          OnUpdateData = DBVertGridEh1Rows4UpdateData
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'IZD_NAME'
          RowLabel.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103'*:'
          RowLabel.Color = 15128749
          OnUpdateData = DbGrid_InfoRows5UpdateData
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'IZD_TYPE'
          RowLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103
          RowLabel.Font.Charset = DEFAULT_CHARSET
          RowLabel.Font.Color = clGrayText
          RowLabel.Font.Height = -13
          RowLabel.Font.Name = 'Tahoma'
          RowLabel.Font.Style = []
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'TP_NUM'
          RowLabel.Caption = #1053#1086#1084#1077#1088' '#1058#1055'*:'
          RowLabel.Color = 15128749
          OnUpdateData = DbGrid_InfoRows6UpdateData
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'TP_NAME'
          RowLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1058#1055'*:'
          RowLabel.Color = 15128749
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'TP_WORK_TYPE'
          Visible = False
        end
        item
          DynProps = <>
          EditButtons = <
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
            end>
          FieldName = 'TP_WORK_TYPE_NAME'
          RowLabel.Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090' '#1087#1086' '#1058#1055'*:'
          RowLabel.Color = 15128749
          OnCloseDropDownForm = DbGrid_InfoRows10CloseDropDownForm
          OnOpenDropDownForm = DbGrid_InfoRows10OpenDropDownForm
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'FLAG_IMP_NAME'
          RowLabel.Caption = #1054#1090#1084#1077#1090#1082#1072' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080'*:'
          RowLabel.Color = 15128749
          LookupParams.KeyFieldNames = 'FLAG_IMP'
          LookupParams.LookupDataSet = Db_Flag_Imp_Names
          LookupParams.LookupDisplayFieldName = 'NAME_FLAG'
          LookupParams.LookupKeyFieldNames = 'NUMBER_FLAG'
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ACT_NUM'
          RowLabel.Caption = #1040#1082#1090' '#8470':'
          RowLabel.Color = 15128749
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ACT_DATE'
          RowLabel.Caption = #1044#1072#1090#1072' '#1072#1082#1090#1072':'
          RowLabel.Color = 15128749
        end>
    end
    object LCB_Doc_Type: TDBLookupComboboxEh
      Left = 4
      Top = 20
      Width = 253
      Height = 24
      ControlLabel.Width = 91
      ControlLabel.Height = 16
      ControlLabel.Caption = #1042#1080#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      ControlLabel.Visible = True
      DynProps = <>
      DataField = 'DOC_TYPE'
      DataSource = Data_Doc_Info
      EditButtons = <>
      KeyField = 'ID_TP_DOC_TYPE'
      ListField = 'TP_DOC_TYPE_NAME'
      ListSource = Data_Doc_Type
      TabOrder = 1
      Visible = True
      OnKeyValueChanged = LCB_Doc_TypeKeyValueChanged
    end
    object Btn_Cancel: TButton
      Left = 610
      Top = 19
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      OnClick = Btn_CancelClick
    end
    object Btn_Create: TButton
      Left = 529
      Top = 19
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1057#1086#1079#1076#1072#1090#1100
      TabOrder = 3
      OnClick = Btn_CreateClick
    end
  end
  object PKG_TP_DOC: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Ogt.PKG_TP_DOC'
    Left = 224
    Top = 19
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = DM_Main.Session
    Left = 305
    Top = 54
  end
  object Db_Appr_List: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from Ogt.SPR_TP_APPR_LIST_TEMP t'
      'order by Ceh_Code, Appr_Step_Num')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000009000000040000004900440001000000000012000000490044005F00
      540050005F0044004F0043000100000000000C0000004300450048005F004900
      44000100000000001A00000041005000500052005F0053005400450050005F00
      4E0055004D000100000000001C00000041005000500052005F00530054004500
      50005F004E0041004D0045000100000000001000000046004C00410047005F00
      550053004500010000000000100000004300450048005F0043004F0044004500
      01000000000010000000470052004F00550050005F0049004400010000000000
      12000000470052005F004400450050005F0049004400010000000000}
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    AfterRefresh = Db_Appr_ListAfterRefresh
    Left = 40
    Top = 35
    object Db_Appr_ListID: TFloatField
      FieldName = 'ID'
    end
    object Db_Appr_ListID_TP_DOC: TFloatField
      FieldName = 'ID_TP_DOC'
    end
    object Db_Appr_ListCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Appr_ListAPPR_STEP_NUM: TStringField
      FieldName = 'APPR_STEP_NUM'
      Size = 3
    end
    object Db_Appr_ListAPPR_STEP_NAME: TStringField
      FieldName = 'APPR_STEP_NAME'
      Size = 100
    end
    object Db_Appr_ListFLAG_USE: TFloatField
      FieldName = 'FLAG_USE'
    end
    object Db_Appr_ListCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Appr_ListGROUP_ID: TFloatField
      FieldName = 'GROUP_ID'
    end
    object Db_Appr_ListGR_DEP_ID: TIntegerField
      FieldName = 'GR_DEP_ID'
    end
  end
  object DATA_APPR_LIST: TDataSource
    DataSet = Db_Appr_List
    Left = 32
    Top = 88
  end
  object Db_Liter_Types: TOracleDataSet
    SQL.Strings = (
      'Select '#39#1054#39' as Liter_Type'
      'From   Dual'
      ''
      'Union All'
      ''
      'Select '#39#1054'1'#39' as Liter_Type'
      'From   Dual'
      ''
      'Union All'
      ''
      'Select '#39'A'#39' as Liter_Type'
      'From   Dual'
      ''
      'Union All'
      ''
      'Select '#39#1048#39' as Liter_Type'
      'From   Dual'
      ''
      'Union All'
      ''
      'Select '#39#1055#39' as Liter_Type'
      'From   Dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000001000000140000004C0049005400450052005F005400590050004500
      010000000000}
    Session = DM_Main.Session
    Left = 32
    Top = 184
  end
  object Data_Liter_Types: TDataSource
    DataSet = Db_Liter_Types
    Left = 32
    Top = 137
  end
  object Db_Doc_Type: TOracleDataSet
    SQL.Strings = (
      'Select d.*'
      'From   Ogt.V_Spr_Tp_Doc_Types d'
      'Where  (Case'
      
        '          When d.Task_Id is Not Null Then Stp.pkg_user.f_check_t' +
        'ask_id_acc(d.Task_Id)'
      '          When d.Task_Id is Null Then 1'
      '          Else 0'
      '        End)=1'
      'Order  By d.Id_Tp_Doc_Type')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000050000001C000000490044005F00540050005F0044004F0043005F00
      540059005000450001000000000020000000540050005F0044004F0043005F00
      54005900500045005F004E0041004D0045000100000000000E00000054004100
      53004B005F0049004400010000000000160000004600520041004D0045005F00
      43004C00410053005300010000000000120000005400410053004B005F004E00
      41004D004500010000000000}
    Session = DM_Main.Session
    Left = 128
    Top = 112
    object Db_Doc_TypeID_TP_DOC_TYPE: TIntegerField
      FieldName = 'ID_TP_DOC_TYPE'
      Required = True
    end
    object Db_Doc_TypeTP_DOC_TYPE_NAME: TStringField
      FieldName = 'TP_DOC_TYPE_NAME'
      Size = 100
    end
    object Db_Doc_TypeTASK_ID: TIntegerField
      FieldName = 'TASK_ID'
    end
    object Db_Doc_TypeFRAME_CLASS: TStringField
      FieldName = 'FRAME_CLASS'
      Size = 100
    end
  end
  object Data_Doc_Type: TDataSource
    DataSet = Db_Doc_Type
    Left = 128
    Top = 160
  end
  object Db_Doc_Info: TOracleDataSet
    SQL.Strings = (
      'Select t.*,'
      '       Main_D.Doc_Num Main_Doc_Num,'
      '       Canc_D.Doc_Num Cancel_Doc_Num,'
      '       r.Date_Start_Route,'
      '       t.rowid '
      'From   SRC.V_TECH_PROC t'
      'Left   Join Src.V_Doc_Routs r'
      'On     t.Doc_Header_Id = r.Doc_Header_Id'
      'Left    Join Ogt.v_Spr_Tp_Doc Main_D'
      'On      Main_D.Id = t.Main_Doc_Id'
      '        And Main_D.Date_End_Action Is Null'
      'Left    Join Ogt.v_Spr_Tp_Doc Canc_D'
      'On      Canc_D.Id = t.Cancel_Doc_Id '
      '        And Canc_D.Date_End_Action Is Null'
      'Where  t.Doc_Header_Id = :v_Doc_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'ogt.SPR_TP_DOC$SQN$ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000003A00000004000000490044000100000000000E00000044004F004300
      5F004E0055004D000100000000000C0000004400450054005F00490044000100
      000000000C0000004300450048005F0049004400010000000000160000004100
      5500540048004F0052005F004C004E0055004D00010000000000100000004400
      4100540041005F00520045004700010000000000160000004400410054004100
      5F004300480041004E00470045000100000000000C0000005200450041005300
      4F004E000100000000001A000000430041004E00430045004C005F0044004F00
      43005F0049004400010000000000160000004D00410049004E005F0044004F00
      43005F00490044000100000000000E0000004400450054005F004D0041005200
      0100000000001200000044004F0043005F004C00490054004500520001000000
      00001000000044004F0043005F0054005900500045000100000000000C000000
      540050005F004E0055004D000100000000000E000000540050005F004E004100
      4D00450001000000000018000000540050005F0057004F0052004B005F005400
      5900500045000100000000000E0000004400450054005F004E0055004D000100
      00000000100000004400450054005F004E0041004D0045000100000000001600
      000041005500540048004F0052005F004E0041004D0045000100000000002200
      0000540050005F0057004F0052004B005F0054005900500045005F004E004100
      4D0045000100000000000C00000049005A0044005F0049004400010000000000
      1000000049005A0044005F004E0041004D004500010000000000100000004900
      5A0044005F0054005900500045000100000000000E000000540050005F005400
      5900500045000100000000001600000043004F004D0050004C00450043005400
      5F00490044000100000000001000000046004C00410047005F0049004D005000
      0100000000000E0000004100430054005F004E0055004D000100000000001000
      00004100430054005F0044004100540045000100000000001000000043004500
      48005F0043004F004400450001000000000016000000430041004E0043004500
      4C005F0046004C00410047000100000000001A0000004300450048005F004400
      4F00430053005F0046004C00410047000100000000001A00000044004F004300
      5F004800450041004400450052005F00490044000100000000000E0000004500
      4D00500053005F00490044000100000000001A000000490044005F0044004F00
      43005F004800450041004400450052000100000000001600000044004F004300
      5F0054005900500045005F00490044000100000000001000000044004F004300
      5F0044004100540045000100000000001400000044004F0043005F004E005500
      4D004200450052000100000000001600000043004C004D004E0031005F005600
      41004C00550045000100000000001600000043004C004D004E0032005F005600
      41004C00550045000100000000001600000043004C004D004E0033005F005600
      41004C00550045000100000000001C0000004300520045004100540045005F00
      55005300450052005F0049004400010000000000240000004300520045004100
      540045005F0055005300450052005F00490044005F0041004400440001000000
      0000160000004300520045004100540045005F00440041005400450001000000
      0000200000004C004100530054005F004D004F0044005F005500530045005200
      5F0049004400010000000000280000004C004100530054005F004D004F004400
      5F0055005300450052005F00490044005F004100440044000100000000001A00
      00004C004100530054005F004D004F0044005F00440041005400450001000000
      0000140000005300520043005F004400450050005F0049004400010000000000
      1600000053004E00440052005F004400450050005F0049004400010000000000
      1A00000046004C00410047005F0049004D0050005F004E0041004D0045000100
      0000000018000000500052004F004A004500430054005F0046004C0041004700
      0100000000000E000000490044005F0056004500520053000100000000001600
      0000490044005F0044004F0043005F00460055004C004C000100000000002200
      000044004100540045005F00530054004100520054005F004100430054004900
      4F004E000100000000001E00000044004100540045005F0045004E0044005F00
      41004300540049004F004E00010000000000180000004D00410049004E005F00
      44004F0043005F004E0055004D000100000000001C000000430041004E004300
      45004C005F0044004F0043005F004E0055004D000100000000001A0000005000
      4100520045004E0054005F0044004F0043005F00490044000100000000002000
      000044004100540045005F00530054004100520054005F0052004F0055005400
      4500010000000000}
    UniqueFields = 'ID; ID_VERS'
    UpdatingTable = 'SRC.V_TECH_PROC'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Doc_InfoNewRecord
    Left = 312
    Top = 160
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
    object Db_Doc_InfoDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Size = 15
    end
    object Db_Doc_InfoDATE_START_ACTION: TDateTimeField
      FieldName = 'DATE_START_ACTION'
    end
    object Db_Doc_InfoDATE_END_ACTION: TDateTimeField
      FieldName = 'DATE_END_ACTION'
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
    object Db_Doc_InfoCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Doc_InfoCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Doc_InfoAUTHOR_LNUM: TFloatField
      FieldName = 'AUTHOR_LNUM'
    end
    object Db_Doc_InfoAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object Db_Doc_InfoDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object Db_Doc_InfoDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
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
    object Db_Doc_InfoDET_MAR: TStringField
      FieldName = 'DET_MAR'
      Size = 100
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
    object Db_Doc_InfoFLAG_IMP_NAME: TStringField
      FieldName = 'FLAG_IMP_NAME'
      Size = 13
    end
    object Db_Doc_InfoACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
    end
    object Db_Doc_InfoACT_DATE: TDateTimeField
      FieldName = 'ACT_DATE'
    end
    object Db_Doc_InfoDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Doc_InfoEMPS_ID: TStringField
      FieldName = 'EMPS_ID'
      Size = 30
    end
    object Db_Doc_InfoPROJECT_FLAG: TIntegerField
      FieldName = 'PROJECT_FLAG'
    end
    object Db_Doc_InfoID_DOC_HEADER: TIntegerField
      FieldName = 'ID_DOC_HEADER'
      Required = True
    end
    object Db_Doc_InfoDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Doc_InfoDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object Db_Doc_InfoDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Doc_InfoCLMN1_VALUE: TStringField
      FieldName = 'CLMN1_VALUE'
      Size = 200
    end
    object Db_Doc_InfoCLMN2_VALUE: TStringField
      FieldName = 'CLMN2_VALUE'
      Size = 200
    end
    object Db_Doc_InfoCLMN3_VALUE: TStringField
      FieldName = 'CLMN3_VALUE'
      Size = 4000
    end
    object Db_Doc_InfoCREATE_USER_ID: TStringField
      FieldName = 'CREATE_USER_ID'
      Size = 30
    end
    object Db_Doc_InfoCREATE_USER_ID_ADD: TIntegerField
      FieldName = 'CREATE_USER_ID_ADD'
    end
    object Db_Doc_InfoCREATE_DATE: TDateTimeField
      FieldName = 'CREATE_DATE'
    end
    object Db_Doc_InfoLAST_MOD_USER_ID: TStringField
      FieldName = 'LAST_MOD_USER_ID'
      Size = 30
    end
    object Db_Doc_InfoLAST_MOD_USER_ID_ADD: TIntegerField
      FieldName = 'LAST_MOD_USER_ID_ADD'
    end
    object Db_Doc_InfoLAST_MOD_DATE: TDateTimeField
      FieldName = 'LAST_MOD_DATE'
    end
    object Db_Doc_InfoSRC_DEP_ID: TIntegerField
      FieldName = 'SRC_DEP_ID'
    end
    object Db_Doc_InfoSNDR_DEP_ID: TIntegerField
      FieldName = 'SNDR_DEP_ID'
    end
    object Db_Doc_InfoMAIN_DOC_NUM: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'MAIN_DOC_NUM'
      Size = 15
    end
    object Db_Doc_InfoCANCEL_DOC_NUM: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CANCEL_DOC_NUM'
      Size = 15
    end
    object Db_Doc_InfoPARENT_DOC_ID: TIntegerField
      FieldName = 'PARENT_DOC_ID'
    end
    object Db_Doc_InfoDATE_START_ROUTE: TDateTimeField
      FieldName = 'DATE_START_ROUTE'
    end
  end
  object Data_Doc_Info: TDataSource
    DataSet = Db_Doc_Info
    Left = 312
    Top = 209
  end
  object Db_Tp_Type: TOracleDataSet
    SQL.Strings = (
      'Select '#39#1050#1058#1058#1055#39' as Tp_Type,'
      '        2 as Type_Number'
      'From   Dual'
      ''
      'Union All'
      ''
      'Select '#39#1043#1058#1058#1055#39' as Tp_Type,'
      '        3 as Type_Number'
      'From   Dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000001600000054005900500045005F004E0055004D0042004500
      52000100000000000E000000540050005F005400590050004500010000000000}
    Session = DM_Main.Session
    Left = 800
    Top = 96
    object Db_Tp_TypeTP_TYPE: TStringField
      FieldName = 'TP_TYPE'
      Size = 4
    end
    object Db_Tp_TypeTYPE_NUMBER: TFloatField
      FieldName = 'TYPE_NUMBER'
    end
  end
  object Data_Tp_Type: TDataSource
    DataSet = Db_Tp_Type
    Left = 800
    Top = 56
  end
  object Db_Flag_Imp_Names: TOracleDataSet
    SQL.Strings = (
      'Select 1 as Number_Flag, '
      '       '#39#1057#1087#1077#1094#1080#1072#1083#1100#1085#1099#1081#39' as Name_Flag '
      'From   Dual'
      ''
      'Union All'
      ''
      'Select 2 as Number_Flag, '
      '       '#39#1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081#39' as Name_Flag '
      'From   Dual'
      ''
      'Union All'
      ''
      'Select 0 as Number_Flag, '
      '       '#39#1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081#39' as Name_Flag '
      'From   Dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000160000004E0055004D004200450052005F0046004C004100
      4700010000000000120000004E0041004D0045005F0046004C00410047000100
      00000000}
    Session = DM_Main.Session
    Left = 656
    Top = 136
  end
  object Data_Flag_Imp_Names: TDataSource
    DataSet = Db_Flag_Imp_Names
    Left = 656
    Top = 104
  end
  object Seq_Id_Doc_Header: TOracleQuery
    SQL.Strings = (
      'Select Src.S_Doc_Headers.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 152
    Top = 24
  end
  object Seq_Main_Doc_Id: TOracleQuery
    SQL.Strings = (
      'Select Ogt.SPR_TP_DOC$SQN$ID.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 232
    Top = 168
  end
  object Db_Old_Version: TOracleDataSet
    SQL.Strings = (
      'Select *'
      'from   Ogt.V_Spr_Tp_Doc t'
      'Where  t.Doc_Header_Id = :In_Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000220000003A0049004E005F0044004F0043005F0048004500
      41004400450052005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000002A00000004000000490044000100000000000E000000490044005F00
      560045005200530001000000000016000000490044005F0044004F0043005F00
      460055004C004C000100000000000E00000044004F0043005F004E0055004D00
      0100000000002200000044004100540045005F00530054004100520054005F00
      41004300540049004F004E000100000000001E00000044004100540045005F00
      45004E0044005F0041004300540049004F004E00010000000000120000004400
      4F0043005F004C0049005400450052000100000000001000000044004F004300
      5F0054005900500045000100000000000C000000540050005F004E0055004D00
      0100000000000E000000540050005F004E0041004D0045000100000000001800
      0000540050005F0057004F0052004B005F005400590050004500010000000000
      22000000540050005F0057004F0052004B005F0054005900500045005F004E00
      41004D0045000100000000000C00000049005A0044005F004900440001000000
      00001000000049005A0044005F004E0041004D00450001000000000010000000
      49005A0044005F0054005900500045000100000000001600000043004F004D00
      50004C004500430054005F00490044000100000000000E000000540050005F00
      54005900500045000100000000001000000046004C00410047005F0049004D00
      50000100000000000C0000004400450054005F00490044000100000000000E00
      00004400450054005F004E0055004D0001000000000010000000440045005400
      5F004E0041004D0045000100000000000E0000004400450054005F004D004100
      52000100000000000C0000004300450048005F00490044000100000000001000
      00004300450048005F0043004F00440045000100000000001600000041005500
      540048004F0052005F004C004E0055004D000100000000001600000041005500
      540048004F0052005F004E0041004D0045000100000000001000000044004100
      540041005F005200450047000100000000000C00000052004500410053004F00
      4E000100000000001A000000430041004E00430045004C005F0044004F004300
      5F0049004400010000000000160000004D00410049004E005F0044004F004300
      5F004900440001000000000016000000430041004E00430045004C005F004600
      4C00410047000100000000001A0000004300450048005F0044004F0043005300
      5F0046004C00410047000100000000000E0000004100430054005F004E005500
      4D00010000000000100000004100430054005F00440041005400450001000000
      00001A00000044004F0043005F004800450041004400450052005F0049004400
      0100000000000E00000045004D00500053005F00490044000100000000001800
      0000500052004F004A004500430054005F0046004C0041004700010000000000
      1600000055005300450052005F0049004E005300450052005400010000000000
      1600000044004100540045005F0049004E005300450052005400010000000000
      1600000055005300450052005F004300480041004E0047004500010000000000
      1600000044004100540041005F004300480041004E0047004500010000000000
      1A00000050004100520045004E0054005F0044004F0043005F00490044000100
      00000000}
    Session = DM_Main.Session
    Left = 128
    Top = 224
    object Db_Old_VersionID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Old_VersionID_VERS: TIntegerField
      FieldName = 'ID_VERS'
      Required = True
    end
    object Db_Old_VersionID_DOC_FULL: TStringField
      FieldName = 'ID_DOC_FULL'
      Size = 14
    end
    object Db_Old_VersionDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_Old_VersionDATE_START_ACTION: TDateTimeField
      FieldName = 'DATE_START_ACTION'
    end
    object Db_Old_VersionDATE_END_ACTION: TDateTimeField
      FieldName = 'DATE_END_ACTION'
    end
    object Db_Old_VersionDOC_LITER: TStringField
      FieldName = 'DOC_LITER'
      Size = 2
    end
    object Db_Old_VersionDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_Old_VersionTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object Db_Old_VersionTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object Db_Old_VersionTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object Db_Old_VersionTP_WORK_TYPE_NAME: TStringField
      FieldName = 'TP_WORK_TYPE_NAME'
      Size = 103
    end
    object Db_Old_VersionIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object Db_Old_VersionIZD_NAME: TStringField
      FieldName = 'IZD_NAME'
      Size = 50
    end
    object Db_Old_VersionIZD_TYPE: TStringField
      FieldName = 'IZD_TYPE'
      Size = 100
    end
    object Db_Old_VersionCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object Db_Old_VersionTP_TYPE: TFloatField
      FieldName = 'TP_TYPE'
    end
    object Db_Old_VersionFLAG_IMP: TFloatField
      FieldName = 'FLAG_IMP'
    end
    object Db_Old_VersionDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Old_VersionDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_Old_VersionDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_Old_VersionDET_MAR: TStringField
      FieldName = 'DET_MAR'
      Size = 100
    end
    object Db_Old_VersionCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Old_VersionCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Old_VersionAUTHOR_LNUM: TFloatField
      FieldName = 'AUTHOR_LNUM'
      Required = True
    end
    object Db_Old_VersionAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object Db_Old_VersionDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object Db_Old_VersionREASON: TStringField
      FieldName = 'REASON'
      Size = 1000
    end
    object Db_Old_VersionCANCEL_DOC_ID: TFloatField
      FieldName = 'CANCEL_DOC_ID'
    end
    object Db_Old_VersionMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Old_VersionCANCEL_FLAG: TFloatField
      FieldName = 'CANCEL_FLAG'
    end
    object Db_Old_VersionCEH_DOCS_FLAG: TFloatField
      FieldName = 'CEH_DOCS_FLAG'
    end
    object Db_Old_VersionACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
    end
    object Db_Old_VersionACT_DATE: TDateTimeField
      FieldName = 'ACT_DATE'
    end
    object Db_Old_VersionDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Old_VersionEMPS_ID: TStringField
      FieldName = 'EMPS_ID'
      Size = 30
    end
    object Db_Old_VersionPROJECT_FLAG: TIntegerField
      FieldName = 'PROJECT_FLAG'
    end
    object Db_Old_VersionPARENT_DOC_ID: TIntegerField
      FieldName = 'PARENT_DOC_ID'
    end
  end
  object Q_Get_New_Vers_Id: TOracleQuery
    SQL.Strings = (
      'Select Max(t.Id_Vers) + 1 New_Vers_Id'
      'From   Ogt.V_Spr_Tp_Doc t'
      'Where  t.Id = :v_Doc_Id')
    Session = DM_Main.Session
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    Left = 31
    Top = 223
  end
  object MainMenu1: TMainMenu
    Left = 205
    Top = 401
    object N1: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1089#1087#1080#1089#1082#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103
      OnClick = N1Click
    end
    object C1: TMenuItem
      Caption = 'C'#1086#1093#1088#1072#1085#1080#1090#1100
      OnClick = Btn_CreateClick
    end
    object N2: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = Btn_CancelClick
    end
  end
  object Pkg_Doc: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Src.PKG_DOC'
    Left = 368
    Top = 32
  end
  object Db_Doc_Aprvl_List_Var_Unchsn: TOracleDataSet
    SQL.Strings = (
      'Select p.ID_Doc_Rt_Pnt_Pos Stp_Dc_Rt_Pnt_Pos_Id, '
      '       p.Point_User_Name Point_Name,'
      '       p.Connect_W_Pnt_Id,'
      '       p.Pos_State,'
      '       p.Chose_State,'
      '       p.Pos_Rw_Num,'
      '       p.Dep_Id,'
      '       Dep.Dep_Code,'
      '       Dep.Dep_Sname,'
      '       Dep_Sname||'#39' ('#39'||Dep.Dep_Code||'#39')'#39' Dep_Name,'
      '       p.Doc_Rt_Pnt_Id Stp_Doc_Rout_Point_Id'
      'From   Ogt.v_Spr_Tp_Doc_Type_Cnst_Apr_Stp t'
      'Left   Join Stp.v_Doc_Rout_Point_Pos p'
      'On     p.Id_Doc_Rt_Pnt_Pos=t.Doc_Rt_Pnt_Pos_Id'
      'Left   Join Stp.V_Deps Dep'
      'On     p.Dep_Id = Dep.Id_Dep'
      '       And Nvl(Dep.Date_Expitation, Sysdate) >= Sysdate'
      'Where  p.Doc_Type_Id = '#39'TECH_PROC'#39
      '       and t.Tp_Doc_Type_Id=:Doc_Type_Id'
      '       and ((t.Dep_Id in (Select m.dep_Id '
      '                          From   Stp.v_Dep_Mmbrs m '
      '                          Where  m.User_Id=User'
      '                                 And m.dep_Mmbr_Pstn_Id=201))'
      
        '            or (t.dep_Id=Stp.Pkg_User.F_Get_User_Department_Id(U' +
        'ser)'
      '                and Not Exists (Select 1'
      
        '                                From   Ogt.v_Spr_Tp_Doc_Type_Cns' +
        't_Apr_Stp a'
      
        '                                Left   Join Stp.v_Doc_Rout_Point' +
        '_Pos pn'
      
        '                                On     pn.Id_Doc_Rt_Pnt_Pos=a.Do' +
        'c_Rt_Pnt_Pos_Id'
      
        '                                Where  (a.Dep_Id in (Select m.de' +
        'p_Id '
      
        '                                                     From   Stp.' +
        'v_Dep_Mmbrs m '
      
        '                                                     Where  m.Us' +
        'er_Id=User'
      
        '                                                     And m.dep_M' +
        'mbr_Pstn_Id=201)'
      
        '                                       And pn.Doc_Rt_Pnt_Id=p.Do' +
        'c_Rt_Pnt_Id)'
      
        '                                       and a.Tp_Doc_Type_Id=:Doc' +
        '_Type_Id)))'
      ''
      'Order  By p.Pos_Rw_Num')
    Optimize = False
    Variables.Data = {
      0400000001000000180000003A0044004F0043005F0054005900500045005F00
      490044000500000002000000340000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000B0000001400000050004F0049004E0054005F004E0041004D004500
      010000000000280000005300540050005F00440043005F00520054005F005000
      4E0054005F0050004F0053005F00490044000100000000002A00000053005400
      50005F0044004F0043005F0052004F00550054005F0050004F0049004E005400
      5F00490044000100000000001200000050004F0053005F005300540041005400
      45000100000000001400000050004F0053005F00520057005F004E0055004D00
      0100000000000C0000004400450050005F004900440001000000000016000000
      430048004F00530045005F005300540041005400450001000000000010000000
      4400450050005F0043004F004400450001000000000012000000440045005000
      5F0053004E0041004D004500010000000000100000004400450050005F004E00
      41004D0045000100000000002000000043004F004E004E004500430054005F00
      57005F0050004E0054005F0049004400010000000000}
    Session = DM_Main.Session
    AfterRefresh = Db_Doc_Aprvl_List_Var_ChsnAfterRefresh
    Left = 256
    Top = 265
    object Db_Doc_Aprvl_List_Var_UnchsnSTP_DC_RT_PNT_POS_ID: TFloatField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
      Required = True
    end
    object Db_Doc_Aprvl_List_Var_UnchsnPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Size = 150
    end
    object Db_Doc_Aprvl_List_Var_UnchsnPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object Db_Doc_Aprvl_List_Var_UnchsnPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object Db_Doc_Aprvl_List_Var_UnchsnSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_Doc_Aprvl_List_Var_UnchsnDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Doc_Aprvl_List_Var_UnchsnCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object Db_Doc_Aprvl_List_Var_UnchsnDEP_CODE: TStringField
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object Db_Doc_Aprvl_List_Var_UnchsnDEP_SNAME: TStringField
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object Db_Doc_Aprvl_List_Var_UnchsnDEP_NAME: TStringField
      FieldName = 'DEP_NAME'
      Size = 205
    end
    object Db_Doc_Aprvl_List_Var_UnchsnCONNECT_W_PNT_ID: TIntegerField
      FieldName = 'CONNECT_W_PNT_ID'
    end
  end
  object Db_Dc_Aprvl_Lst_Var: TOracleDataSet
    SQL.Strings = (
      'Select Pnt.*,'
      '       Dep.Dep_Code,'
      '       Dep.Dep_Sname,'
      '       Dep_Sname||'#39' ('#39'||Dep.Dep_Code||'#39')'#39' Dep_Name,'
      '       Pnt.rowid'
      'From   Src.V_DOC_ROUT_USER_PNTS Pnt'
      'Left   Join Stp.V_Deps Dep'
      'On     Pnt.Dep_Id = Dep.Id_Dep'
      '       And Nvl(Dep.Date_Expitation, Sysdate) >= Sysdate'
      'Where  Pnt.Doc_Header_Id = :Doc_Header_Id'
      '       and Pnt.Chose_State <> '#39'unchsn'#39
      '')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F00490044000500000005000000333433360000000000}
    SequenceField.Field = 'ID_DC_RT_US_PNT'
    SequenceField.Sequence = 'Src.S_Doc_Rout_Us_Pnt_Id'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000170000001E000000490044005F00440043005F00520054005F005500
      53005F0050004E0054000100000000001A00000044004F0043005F0048004500
      41004400450052005F00490044000100000000001600000044004F0043005F00
      54005900500045005F00490044000100000000001400000044004F0043005F00
      4E0055004D004200450052000100000000001000000044004F0043005F004400
      4100540045000100000000001C00000050004F0049004E0054005F0050004F00
      53004900540049004F004E000100000000001400000050004F0049004E005400
      5F004E0041004D0045000100000000002A0000005300540050005F0044004F00
      43005F0052004F00550054005F0050004F0049004E0054005F00490044000100
      000000001600000055005300450052005F0049004E0053004500520054000100
      000000001600000044004100540045005F0049004E0053004500520054000100
      000000001600000055005300450052005F004300480041004E00470045000100
      000000001600000044004100540045005F004300480041004E00470045000100
      000000000C0000004400450050005F0049004400010000000000280000005300
      540050005F00440043005F00520054005F0050004E0054005F0050004F005300
      5F00490044000100000000001400000050004F0053005F00520057005F004E00
      55004D000100000000001200000050004F0053005F0053005400410054004500
      01000000000016000000430048004F00530045005F0053005400410054004500
      0100000000002000000050004F0049004E0054005F0045005800500049005200
      4100540049004F004E00010000000000100000004400450050005F0043004F00
      44004500010000000000120000004400450050005F0053004E0041004D004500
      010000000000100000004400450050005F004E0041004D004500010000000000
      2000000043004F004E004E004500430054005F0057005F0050004E0054005F00
      490044000100000000000E00000055005300450052005F004900440001000000
      0000}
    UniqueFields = 'ID_DC_RT_US_PNT'
    UpdatingTable = 'Src.V_DOC_ROUT_USER_PNTS'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 24
    Top = 409
    object Db_Dc_Aprvl_Lst_VarID_DC_RT_US_PNT: TIntegerField
      FieldName = 'ID_DC_RT_US_PNT'
      Required = True
    end
    object Db_Dc_Aprvl_Lst_VarDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Dc_Aprvl_Lst_VarDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Dc_Aprvl_Lst_VarDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Dc_Aprvl_Lst_VarDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object Db_Dc_Aprvl_Lst_VarPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Required = True
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_VarPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 50
    end
    object Db_Dc_Aprvl_Lst_VarSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_Dc_Aprvl_Lst_VarSTP_DC_RT_PNT_POS_ID: TIntegerField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object Db_Dc_Aprvl_Lst_VarUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_VarDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Dc_Aprvl_Lst_VarUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_VarDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Dc_Aprvl_Lst_VarDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Dc_Aprvl_Lst_VarPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object Db_Dc_Aprvl_Lst_VarPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object Db_Dc_Aprvl_Lst_VarCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object Db_Dc_Aprvl_Lst_VarPOINT_EXPIRATION: TIntegerField
      FieldName = 'POINT_EXPIRATION'
    end
    object Db_Dc_Aprvl_Lst_VarDEP_CODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object Db_Dc_Aprvl_Lst_VarDEP_SNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object Db_Dc_Aprvl_Lst_VarCONNECT_W_PNT_ID: TIntegerField
      FieldName = 'CONNECT_W_PNT_ID'
    end
    object Db_Dc_Aprvl_Lst_VarUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
  end
  object Driver_Dc_Aprvl_Lst_Var: TDataSetDriverEh
    KeyFields = 'ID_DC_RT_US_PNT'
    ProviderDataSet = Db_Dc_Aprvl_Lst_Var
    Left = 22
    Top = 361
  end
  object MemT_Dc_Aprvl_Lst_Var: TMemTableEh
    CachedUpdates = True
    Params = <>
    DataDriver = Driver_Dc_Aprvl_Lst_Var
    SortOrder = 'STP_DC_RT_PNT_POS_ID, DEP_CODE'
    AfterOpen = MemT_Dc_Aprvl_Lst_VarAfterOpen
    Left = 24
    Top = 313
    object MemT_Dc_Aprvl_Lst_VarID_DC_RT_US_PNT: TIntegerField
      FieldName = 'ID_DC_RT_US_PNT'
    end
    object MemT_Dc_Aprvl_Lst_VarPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Size = 30
    end
    object MemT_Dc_Aprvl_Lst_VarPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Size = 50
    end
    object MemT_Dc_Aprvl_Lst_VarSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object MemT_Dc_Aprvl_Lst_VarSTP_DC_RT_PNT_POS_ID: TIntegerField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object MemT_Dc_Aprvl_Lst_VarUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Dc_Aprvl_Lst_VarDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Dc_Aprvl_Lst_VarUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Dc_Aprvl_Lst_VarDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Dc_Aprvl_Lst_VarDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object MemT_Dc_Aprvl_Lst_VarPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object MemT_Dc_Aprvl_Lst_VarPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object MemT_Dc_Aprvl_Lst_VarCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object MemT_Dc_Aprvl_Lst_VarDEP_CODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object MemT_Dc_Aprvl_Lst_VarDEP_SNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object MemT_Dc_Aprvl_Lst_VarCONNECT_W_PNT_ID: TIntegerField
      FieldName = 'CONNECT_W_PNT_ID'
    end
    object MemT_Dc_Aprvl_Lst_VarUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
  end
  object Db_Doc_Aprvl_List_Var_Chsn: TOracleDataSet
    SQL.Strings = (
      'Select t.ID_Doc_Rt_Pnt_Pos Stp_Dc_Rt_Pnt_Pos_Id, '
      '       t.Point_User_Name Point_Name,'
      '       t.Connect_W_Pnt_Id,'
      '       t.Pos_State,'
      '       t.Chose_State,'
      '       t.Pos_Rw_Num,'
      '       t.Dep_Id,'
      '       Dep.Dep_Code,'
      '       Dep.Dep_Sname,'
      '       Dep_Sname||'#39' ('#39'||Dep.Dep_Code||'#39')'#39' Dep_Name,'
      '       t.Doc_Rt_Pnt_Id Stp_Doc_Rout_Point_Id'
      'From   Stp.V_DOC_ROUT_POINT_POS t'
      'Left   Join Stp.V_Deps Dep'
      'On     t.Dep_Id = Dep.Id_Dep'
      '       And Nvl(Dep.Date_Expitation, Sysdate) >= Sysdate'
      'Where  t.Doc_Type_Id = '#39'TECH_PROC'#39
      '       and t.Chose_State = '#39'chsn'#39
      '       and (Case'
      
        '              When :Doc_Type_Id In (1,6) And t.Doc_Rt_Pnt_Id In ' +
        '(2262, 2263) '
      
        '                   And t.Dep_Id In (select distinct t.Gr_Dep_Id ' +
        'from Ogt.SPR_TP_APPR_LIST_TEMP t) Or t.Doc_Rt_Pnt_Id = 2187 '
      '              Then 1'
      
        '              When :Doc_Type_Id In (2,3,5) And t.Doc_Rt_Pnt_Id =' +
        ' 2187 '
      '              Then 1'
      
        '              When :Doc_Type_Id = 4 And t.Doc_Rt_Pnt_Id In (2262' +
        ', 2263) '
      '                   And t.Dep_Id In (Select p.Dep_Id'
      
        '                                    From   Ogt.v_Tp_Ok_Mar_Parts' +
        ' p'
      
        '                                    Join  (Select Max(a.Id_Doc_T' +
        'p||a.Doc_Tp_Vers_Id) Actual, '
      '                                                  a.Id '
      
        '                                           From  ogt.v_Tp_Ok_Mar' +
        '_Parts_Vers a '
      
        '                                           Left  Join Ogt.V_Spr_' +
        'Tp_Doc_Actual Info '
      
        '                                           On    a.Id_Doc_Tp = I' +
        'nfo.Id '
      
        '                                           Where  (a.Id_Doc_Tp =' +
        ' Info.Id '
      
        '                                                   And a.Doc_Tp_' +
        'Vers_Id In ( Select  a.Id_Vers '
      
        '                                                                ' +
        '             From    ogt.v_Spr_Tp_Doc a '
      
        '                                                                ' +
        '             Join   Ogt.v_Spr_Tp_Doc_Actual Info '
      
        '                                                                ' +
        '             On     a.Doc_Header_Id = Info.Doc_Header_Id '
      
        '                                                                ' +
        '             Connect By Prior a.Parent_Doc_Id = a.Doc_Header_Id ' +
        ')) '
      
        '                                                                ' +
        '             Group By a.Id) v '
      '                                    On  p.Id = v.Id '
      '    And p.Id_Doc_Tp||p.Doc_Tp_Vers_Id = v.Actual '
      '    And p.Id_Doc_Tp = Nvl(:Main_Doc_Id, 0))'
      '    Then 1'
      '              Else 0'
      '            End) = 1'
      'Order  By t.Pos_Rw_Num')
    Optimize = False
    Variables.Data = {
      0400000002000000180000003A0044004F0043005F0054005900500045005F00
      490044000500000002000000310000000000180000003A004D00410049004E00
      5F0044004F0043005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000B0000001400000050004F0049004E0054005F004E0041004D004500
      010000000000280000005300540050005F00440043005F00520054005F005000
      4E0054005F0050004F0053005F00490044000100000000002A00000053005400
      50005F0044004F0043005F0052004F00550054005F0050004F0049004E005400
      5F00490044000100000000001200000050004F0053005F005300540041005400
      45000100000000001400000050004F0053005F00520057005F004E0055004D00
      0100000000000C0000004400450050005F004900440001000000000016000000
      430048004F00530045005F005300540041005400450001000000000010000000
      4400450050005F0043004F004400450001000000000012000000440045005000
      5F0053004E0041004D004500010000000000100000004400450050005F004E00
      41004D0045000100000000002000000043004F004E004E004500430054005F00
      57005F0050004E0054005F0049004400010000000000}
    Session = DM_Main.Session
    AfterRefresh = Db_Doc_Aprvl_List_Var_ChsnAfterRefresh
    Left = 160
    Top = 345
    object Db_Doc_Aprvl_List_Var_ChsnSTP_DC_RT_PNT_POS_ID: TFloatField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
      Required = True
    end
    object Db_Doc_Aprvl_List_Var_ChsnPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Size = 150
    end
    object Db_Doc_Aprvl_List_Var_ChsnSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_Doc_Aprvl_List_Var_ChsnPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object Db_Doc_Aprvl_List_Var_ChsnPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object Db_Doc_Aprvl_List_Var_ChsnDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Doc_Aprvl_List_Var_ChsnCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object Db_Doc_Aprvl_List_Var_ChsnDEP_CODE: TStringField
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object Db_Doc_Aprvl_List_Var_ChsnDEP_SNAME: TStringField
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object Db_Doc_Aprvl_List_Var_ChsnDEP_NAME: TStringField
      FieldName = 'DEP_NAME'
      Size = 205
    end
    object Db_Doc_Aprvl_List_Var_ChsnCONNECT_W_PNT_ID: TIntegerField
      FieldName = 'CONNECT_W_PNT_ID'
    end
  end
  object Db_Dc_Aprvl_Lst_Deps: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid '
      'From   Src.V_Doc_Rout_Us_Pnt_Deps t'
      
        'Where  t.Doc_Header_Id=:InDocHeaderId --t.Dc_Rt_Us_Pnt_Id = :Id_' +
        'Dc_Rt_Us_Pnt')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0049004E0044004F0043004800450041004400
      4500520049004400050000000000000000000000}
    SequenceField.Field = 'ID_DC_RT_US_PNT_DPS'
    SequenceField.Sequence = 'SRC.S_DOC_RT_US_PNT_DPS_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000000B00000026000000490044005F00440043005F00520054005F005500
      53005F0050004E0054005F004400500053000100000000001A00000044004F00
      43005F004800450041004400450052005F004900440001000000000016000000
      44004F0043005F0054005900500045005F004900440001000000000014000000
      44004F0043005F004E0055004D00420045005200010000000000100000004400
      4F0043005F0044004100540045000100000000001E000000440043005F005200
      54005F00550053005F0050004E0054005F00490044000100000000000C000000
      4400450050005F00490044000100000000001600000055005300450052005F00
      49004E0053004500520054000100000000001600000044004100540045005F00
      49004E0053004500520054000100000000001600000055005300450052005F00
      4300480041004E00470045000100000000001600000044004100540045005F00
      4300480041004E0047004500010000000000}
    UniqueFields = 'ID_DC_RT_US_PNT_DPS'
    UpdatingTable = 'Src.V_Doc_Rout_Us_Pnt_Deps'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Dc_Aprvl_Lst_DepsNewRecord
    Left = 320
    Top = 353
    object Db_Dc_Aprvl_Lst_DepsID_DC_RT_US_PNT_DPS: TFloatField
      FieldName = 'ID_DC_RT_US_PNT_DPS'
    end
    object Db_Dc_Aprvl_Lst_DepsDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Dc_Aprvl_Lst_DepsDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Dc_Aprvl_Lst_DepsDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Dc_Aprvl_Lst_DepsDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object Db_Dc_Aprvl_Lst_DepsDC_RT_US_PNT_ID: TFloatField
      FieldName = 'DC_RT_US_PNT_ID'
      Required = True
    end
    object Db_Dc_Aprvl_Lst_DepsDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
      Required = True
    end
    object Db_Dc_Aprvl_Lst_DepsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_DepsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Dc_Aprvl_Lst_DepsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_DepsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
  end
  object Data_Dc_Aprvl_Lst_Deps: TDataSource
    Left = 312
    Top = 409
  end
  object Db_Dc_Aprvl_Lst: TOracleDataSet
    SQL.Strings = (
      'Select Pnt.*, '
      '       Dep.Dep_Code,'
      '       Dep.Dep_Sname,'
      '       Dep_Sname||'#39' ('#39'||Dep.Dep_Code||'#39')'#39' Dep_Name,'
      '       Pnt.rowid'
      'From   Src.V_DOC_ROUT_USER_PNTS Pnt'
      'Left   Join Stp.V_Deps Dep'
      'On     Pnt.Dep_Id = Dep.Id_Dep'
      '       And Nvl(Dep.Date_Expitation, Sysdate) >= Sysdate'
      'Where  Pnt.Doc_Header_Id = :Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    SequenceField.Field = 'ID_DC_RT_US_PNT'
    SequenceField.Sequence = 'Src.S_Doc_Rout_Us_Pnt_Id'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000170000001E000000490044005F00440043005F00520054005F005500
      53005F0050004E0054000100000000001A00000044004F0043005F0048004500
      41004400450052005F00490044000100000000001600000044004F0043005F00
      54005900500045005F00490044000100000000001400000044004F0043005F00
      4E0055004D004200450052000100000000001000000044004F0043005F004400
      4100540045000100000000001C00000050004F0049004E0054005F0050004F00
      53004900540049004F004E000100000000001400000050004F0049004E005400
      5F004E0041004D0045000100000000002A0000005300540050005F0044004F00
      43005F0052004F00550054005F0050004F0049004E0054005F00490044000100
      000000001600000055005300450052005F0049004E0053004500520054000100
      000000001600000044004100540045005F0049004E0053004500520054000100
      000000001600000055005300450052005F004300480041004E00470045000100
      000000001600000044004100540045005F004300480041004E00470045000100
      000000000C0000004400450050005F0049004400010000000000280000005300
      540050005F00440043005F00520054005F0050004E0054005F0050004F005300
      5F00490044000100000000001400000050004F0053005F00520057005F004E00
      55004D000100000000001200000050004F0053005F0053005400410054004500
      01000000000016000000430048004F00530045005F0053005400410054004500
      0100000000002000000050004F0049004E0054005F0045005800500049005200
      4100540049004F004E00010000000000100000004400450050005F0043004F00
      44004500010000000000120000004400450050005F0053004E0041004D004500
      010000000000100000004400450050005F004E0041004D004500010000000000
      2000000043004F004E004E004500430054005F0057005F0050004E0054005F00
      490044000100000000000E00000055005300450052005F004900440001000000
      0000}
    UniqueFields = 'ID_DC_RT_US_PNT'
    UpdatingTable = 'Src.V_DOC_ROUT_USER_PNTS'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 424
    Top = 369
    object Db_Dc_Aprvl_LstID_DC_RT_US_PNT: TIntegerField
      FieldName = 'ID_DC_RT_US_PNT'
      Required = True
    end
    object Db_Dc_Aprvl_LstDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Dc_Aprvl_LstDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Dc_Aprvl_LstDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Dc_Aprvl_LstDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object Db_Dc_Aprvl_LstPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Required = True
      Size = 30
    end
    object Db_Dc_Aprvl_LstPOINT_EXPIRATION: TIntegerField
      FieldName = 'POINT_EXPIRATION'
    end
    object Db_Dc_Aprvl_LstPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 50
    end
    object Db_Dc_Aprvl_LstSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_Dc_Aprvl_LstSTP_DC_RT_PNT_POS_ID: TIntegerField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object Db_Dc_Aprvl_LstCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object Db_Dc_Aprvl_LstDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Dc_Aprvl_LstPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object Db_Dc_Aprvl_LstPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object Db_Dc_Aprvl_LstUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Dc_Aprvl_LstDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Dc_Aprvl_LstUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Dc_Aprvl_LstDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Db_Dc_Aprvl_LstDEP_CODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object Db_Dc_Aprvl_LstDEP_SNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object Db_Dc_Aprvl_LstCONNECT_W_PNT_ID: TIntegerField
      FieldName = 'CONNECT_W_PNT_ID'
    end
    object Db_Dc_Aprvl_LstUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
  end
  object Driver_Dc_Aprvl_Lst: TDataSetDriverEh
    KeyFields = 'ID_DC_RT_US_PNT'
    ProviderDataSet = Db_Dc_Aprvl_Lst
    Left = 422
    Top = 321
  end
  object MemT_Dc_Aprvl_Lst: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Dc_Aprvl_Lst
    SortOrder = 'POS_RW_NUM'
    AfterOpen = MemT_Dc_Aprvl_LstAfterOpen
    BeforeDelete = MemT_Dc_Aprvl_LstBeforeDelete
    OnNewRecord = MemT_Dc_Aprvl_LstNewRecord
    Left = 422
    Top = 273
    object MemT_Dc_Aprvl_LstID_DC_RT_US_PNT: TIntegerField
      FieldName = 'ID_DC_RT_US_PNT'
    end
    object MemT_Dc_Aprvl_LstDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object MemT_Dc_Aprvl_LstDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object MemT_Dc_Aprvl_LstDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object MemT_Dc_Aprvl_LstDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object MemT_Dc_Aprvl_LstPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Size = 30
    end
    object MemT_Dc_Aprvl_LstPOINT_EXPIRATION: TIntegerField
      FieldName = 'POINT_EXPIRATION'
    end
    object MemT_Dc_Aprvl_LstPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Size = 50
    end
    object MemT_Dc_Aprvl_LstSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object MemT_Dc_Aprvl_LstSTP_DC_RT_PNT_POS_ID: TIntegerField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object MemT_Dc_Aprvl_LstCHOSE_STATE: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object MemT_Dc_Aprvl_LstDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object MemT_Dc_Aprvl_LstPOS_RW_NUM: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object MemT_Dc_Aprvl_LstPOS_STATE: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object MemT_Dc_Aprvl_LstUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object MemT_Dc_Aprvl_LstDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object MemT_Dc_Aprvl_LstUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object MemT_Dc_Aprvl_LstDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object MemT_Dc_Aprvl_LstDEP_CODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object MemT_Dc_Aprvl_LstDEP_SNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object MemT_Dc_Aprvl_LstCONNECT_W_PNT_ID: TIntegerField
      FieldName = 'CONNECT_W_PNT_ID'
    end
    object MemT_Dc_Aprvl_LstUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
  end
  object Data_Dc_Aprvl_Lst: TDataSource
    DataSet = MemT_Dc_Aprvl_Lst
    Left = 422
    Top = 233
  end
  object Db_Dc_Aprvl_Lst_Links: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid'
      'From   Src.V_Doc_Rout_Us_Pnt_Links t'
      'Where  t.Doc_Header_Id = :Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    SequenceField.Field = 'ID_DC_RT_US_PNT_LNK'
    SequenceField.Sequence = 'Src.S_Doc_Rt_Us_Pn_Lnk_Id'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000000700000026000000490044005F00440043005F00520054005F005500
      53005F0050004E0054005F004C004E004B000100000000001A00000044004F00
      43005F004800450041004400450052005F004900440001000000000016000000
      44004F0043005F0054005900500045005F004900440001000000000014000000
      44004F0043005F004E0055004D00420045005200010000000000100000004400
      4F0043005F0044004100540045000100000000001E000000440043005F005200
      54005F00550053005F0050004E0054005F004900440001000000000026000000
      440043005F00520054005F00550053005F0050004E0054005F004E0058005400
      5F0049004400010000000000}
    UniqueFields = 'ID_DC_RT_US_PNT_LNK'
    UpdatingTable = 'Src.V_Doc_Rout_Us_Pnt_Links'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Dc_Aprvl_Lst_LinksNewRecord
    Left = 544
    Top = 377
    object Db_Dc_Aprvl_Lst_LinksID_DC_RT_US_PNT_LNK: TIntegerField
      FieldName = 'ID_DC_RT_US_PNT_LNK'
    end
    object Db_Dc_Aprvl_Lst_LinksDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Dc_Aprvl_Lst_LinksDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Dc_Aprvl_Lst_LinksDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Dc_Aprvl_Lst_LinksDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object Db_Dc_Aprvl_Lst_LinksDC_RT_US_PNT_ID: TIntegerField
      FieldName = 'DC_RT_US_PNT_ID'
    end
    object Db_Dc_Aprvl_Lst_LinksDC_RT_US_PNT_NXT_ID: TIntegerField
      FieldName = 'DC_RT_US_PNT_NXT_ID'
    end
  end
  object Data_Dc_Aprvl_Lst_Links: TDataSource
    Left = 552
    Top = 329
  end
  object Data_Dc_Aprvl_Lst_Var: TDataSource
    DataSet = MemT_Dc_Aprvl_Lst_Var
    Left = 32
    Top = 257
  end
  object Db_Dc_Rout_Points: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Doc_Rout_Point,'
      '       t.Doc_Rout_Id,'
      '       t.Stp_Doc_Rout_Point_Id,'
      '       Dep.Dep_Code,'
      '       Dep.Dep_Sname,'
      '       a.Dep_Id,'
      '       a.User_Id,'
      '       t.Point_Position,'
      '       pps.Point_User_Name Point_Name,'
      '       pps.Pos_State,'
      '       pps.Chose_State,'
      '       pps.Pos_Rw_Num,'
      '       pps.Id_Doc_Rt_Pnt_Pos Stp_Dc_Rt_Pnt_Pos_Id,'
      '       pps.CONNECT_W_PNT_ID,'
      '       t.rowid'
      'From   Src.v_Doc_Rout_Points t'
      'Join  (Select p.Id_Doc_Rout_Point,'
      #9#9#9#9#9#9'  ds.Dep_Id,'
      #9#9#9#9#9#9'  us.USER_ID'
      #9#9#9' From   Src.v_Doc_Rout_Points p'
      #9#9#9' Left   Join Src.v_Doc_Rout_Point_Pstns ps'
      #9#9#9' On     ps.Doc_Rout_Point_Id = p.Id_Doc_Rout_Point'
      #9#9#9' Left   Join Src.v_Doc_Rout_Point_Pstn_Ds ds'
      #9#9#9' On     ds.Doc_Rout_Point_Pstn_Id = ps.Id_Doc_Rout_Point_Pstn'
      #9#9#9' Left   Join Src.v_Doc_Rout_Point_Pstn_Us us'
      #9#9#9' On     us.DOC_ROUT_POINT_PSTN_ID = ps.Id_Doc_Rout_Point_Pstn'
      #9#9#9' Where  p.Doc_Rout_Id = :Doc_Header_Id'
      #9#9#9' Group  By p.Id_Doc_Rout_Point,'
      #9#9#9'    '#9#9#9' ds.Dep_Id,'
      #9#9'  '#9'  '#9#9#9' us.USER_ID ) a'
      'On     a.Id_Doc_Rout_Point = t.Id_Doc_Rout_Point'
      'Left   Join Stp.v_Deps Dep'
      'On     Dep.id_dep = a.Dep_Id'
      '       And Nvl(Dep.Date_Expitation, Sysdate) <= Sysdate'
      'Left   Join Stp.v_Doc_Rout_Point_Pos pps'
      'On     pps.Doc_Rt_Pnt_Id = t.Stp_Doc_Rout_Point_Id'
      '       And pps.Dep_Id = a.Dep_Id'
      '       And Nvl(pps.User_Id, 0) = Nvl(a.User_Id, 0)')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000600000031323033300000000000}
    SequenceField.Field = 'ID_DOC_ROUT_POINT'
    SequenceField.Sequence = 'src.s_doc_Rout_POINTS'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000000E00000022000000490044005F0044004F0043005F0052004F005500
      54005F0050004F0049004E0054000100000000001600000044004F0043005F00
      52004F00550054005F00490044000100000000002A0000005300540050005F00
      44004F0043005F0052004F00550054005F0050004F0049004E0054005F004900
      4400010000000000100000004400450050005F0043004F004400450001000000
      0000120000004400450050005F0053004E0041004D0045000100000000001C00
      000050004F0049004E0054005F0050004F0053004900540049004F004E000100
      000000001400000050004F0049004E0054005F004E0041004D00450001000000
      00001200000050004F0053005F00530054004100540045000100000000001600
      0000430048004F00530045005F00530054004100540045000100000000002000
      000043004F004E004E004500430054005F0057005F0050004E0054005F004900
      4400010000000000280000005300540050005F00440043005F00520054005F00
      50004E0054005F0050004F0053005F00490044000100000000000C0000004400
      450050005F00490044000100000000001400000050004F0053005F0052005700
      5F004E0055004D000100000000000E00000055005300450052005F0049004400
      010000000000}
    UniqueFields = 'ID_DOC_ROUT_POINT'
    UpdatingTable = 'Src.v_Doc_Rout_Points'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 952
    Top = 329
    object Db_Dc_Rout_PointsID_DOC_ROUT_POINT: TIntegerField
      FieldName = 'ID_DOC_ROUT_POINT'
      Required = True
    end
    object Db_Dc_Rout_PointsDOC_ROUT_ID: TIntegerField
      FieldName = 'DOC_ROUT_ID'
      Required = True
    end
    object Db_Dc_Rout_PointsSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object Db_Dc_Rout_PointsDEP_CODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object Db_Dc_Rout_PointsDEP_SNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object Db_Dc_Rout_PointsPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Required = True
      Size = 30
    end
    object Db_Dc_Rout_PointsPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 50
    end
    object Db_Dc_Rout_PointsPOS_STATE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'POS_STATE'
      Size = 22
    end
    object Db_Dc_Rout_PointsCHOSE_STATE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object Db_Dc_Rout_PointsSTP_DC_RT_PNT_POS_ID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object Db_Dc_Rout_PointsCONNECT_W_PNT_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CONNECT_W_PNT_ID'
    end
    object Db_Dc_Rout_PointsDEP_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_ID'
    end
    object Db_Dc_Rout_PointsPOS_RW_NUM: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'POS_RW_NUM'
    end
    object Db_Dc_Rout_PointsUSER_ID: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_ID'
      Size = 30
    end
  end
  object Db_Dc_Rout_Point_Pstn_Dep: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid'
      'From   Src.V_Doc_Rout_Point_Pstn_Ds t'
      'Left   Join Src.V_Doc_Rout_Point_Pstns ps'
      'On     ps.Id_Doc_Rout_Point_Pstn=t.Doc_Rout_Point_Pstn_Id'
      'Left   Join Src.V_Doc_Rout_Points p'
      'On     p.Id_Doc_Rout_Point=ps.Doc_Rout_Point_Id'
      'Where  p.Doc_Rout_Id=:Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    SequenceField.Field = 'ID_DOC_ROUT_POINT_PSTN_D'
    SequenceField.Sequence = 'SRC.S_Doc_Rout_Point_PSTN_Ds'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000000400000030000000490044005F0044004F0043005F0052004F005500
      54005F0050004F0049004E0054005F005000530054004E005F00440001000000
      00002C00000044004F0043005F0052004F00550054005F0050004F0049004E00
      54005F005000530054004E005F00490044000100000000000C00000044004500
      50005F0049004400010000000000380000005300540050005F0044004F004300
      5F0052004F00550054005F0050004F0049004E0054005F005000530054004E00
      5F0044005F0049004400010000000000}
    UniqueFields = 'ID_DOC_ROUT_POINT_PSTN_D'
    UpdatingTable = 'Src.V_Doc_Rout_Point_Pstn_Ds'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 840
    Top = 369
    object Db_Dc_Rout_Point_Pstn_DepID_DOC_ROUT_POINT_PSTN_D: TFloatField
      FieldName = 'ID_DOC_ROUT_POINT_PSTN_D'
      Required = True
    end
    object Db_Dc_Rout_Point_Pstn_DepDOC_ROUT_POINT_PSTN_ID: TFloatField
      FieldName = 'DOC_ROUT_POINT_PSTN_ID'
      Required = True
    end
    object Db_Dc_Rout_Point_Pstn_DepDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
      Required = True
    end
    object Db_Dc_Rout_Point_Pstn_DepSTP_DOC_ROUT_POINT_PSTN_D_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_PSTN_D_ID'
    end
  end
  object Driver_Dc_Rout_Points: TDataSetDriverEh
    KeyFields = 'ID_DOC_ROUT_POINT'
    ProviderDataSet = Db_Dc_Rout_Points
    Left = 952
    Top = 281
  end
  object MemT_Dc_Rout_Points: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Dc_Rout_Points
    SortOrder = 'POS_RW_NUM'
    AfterOpen = MemT_Dc_Aprvl_LstAfterOpen
    OnNewRecord = MemT_Dc_Rout_PointsNewRecord
    Left = 952
    Top = 233
    object MemT_Dc_Rout_PointsID_DOC_ROUT_POINT: TIntegerField
      FieldName = 'ID_DOC_ROUT_POINT'
    end
    object MemT_Dc_Rout_PointsDOC_ROUT_ID: TIntegerField
      FieldName = 'DOC_ROUT_ID'
      Required = True
    end
    object MemT_Dc_Rout_PointsSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object MemT_Dc_Rout_PointsDEP_CODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object MemT_Dc_Rout_PointsDEP_SNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object MemT_Dc_Rout_PointsPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Size = 30
    end
    object MemT_Dc_Rout_PointsPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 300
    end
    object MemT_Dc_Rout_PointsPOS_STATE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'POS_STATE'
      Size = 22
    end
    object MemT_Dc_Rout_PointsCHOSE_STATE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object MemT_Dc_Rout_PointsSTP_DC_RT_PNT_POS_ID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object MemT_Dc_Rout_PointsCONNECT_W_PNT_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CONNECT_W_PNT_ID'
    end
    object MemT_Dc_Rout_PointsDEP_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_ID'
    end
    object MemT_Dc_Rout_PointsPOS_RW_NUM: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'POS_RW_NUM'
    end
    object MemT_Dc_Rout_PointsUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
  end
  object Db_Dc_Rout_Point_Cnnctns: TOracleDataSet
    SQL.Strings = (
      'Select t.*,'
      '       t.P_Doc_Rout_Point_Id DC_RT_US_PNT_ID,'
      '       t.C_Doc_Rout_Point_Id DC_RT_US_PNT_NXT_ID,'
      '       t.rowid '
      'From   Src.V_Doc_Rout_Point_Cnnctns t'
      'Where  t.Doc_Rout_Id = :Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000050000002600000050005F0044004F0043005F0052004F0055005400
      5F0050004F0049004E0054005F00490044000100000000002600000043005F00
      44004F0043005F0052004F00550054005F0050004F0049004E0054005F004900
      44000100000000001600000044004F0043005F0052004F00550054005F004900
      44000100000000001E000000440043005F00520054005F00550053005F005000
      4E0054005F004900440001000000000026000000440043005F00520054005F00
      550053005F0050004E0054005F004E00580054005F0049004400010000000000}
    UniqueFields = 'P_DOC_ROUT_POINT_ID; C_DOC_ROUT_POINT_ID'
    UpdatingTable = 'Src.V_Doc_Rout_Point_Cnnctns'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    AfterEdit = Db_Dc_Rout_Point_CnnctnsAfterEdit
    OnNewRecord = Db_Dc_Rout_Point_CnnctnsNewRecord
    Left = 960
    Top = 417
    object Db_Dc_Rout_Point_CnnctnsP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'P_DOC_ROUT_POINT_ID'
    end
    object Db_Dc_Rout_Point_CnnctnsC_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'C_DOC_ROUT_POINT_ID'
    end
    object Db_Dc_Rout_Point_CnnctnsDOC_ROUT_ID: TIntegerField
      FieldName = 'DOC_ROUT_ID'
      Required = True
    end
    object Db_Dc_Rout_Point_CnnctnsDC_RT_US_PNT_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DC_RT_US_PNT_ID'
      Required = True
    end
    object Db_Dc_Rout_Point_CnnctnsDC_RT_US_PNT_NXT_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DC_RT_US_PNT_NXT_ID'
      Required = True
    end
  end
  object Db_Dc_Rout_Point_Pstns: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid'
      'From   Src.V_Doc_Rout_Point_Pstns t'
      'Left   Join Src.V_Doc_Rout_Points p'
      'On     p.Id_Doc_Rout_Point=t.Doc_Rout_Point_Id'
      'Where  p.Doc_Rout_Id=:Doc_Header_Id'
      '        ')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    SequenceField.Field = 'ID_DOC_ROUT_POINT_PSTN'
    SequenceField.Sequence = 'src.s_Doc_Rout_Point_Pstns'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000040000002C000000490044005F0044004F0043005F0052004F005500
      54005F0050004F0049004E0054005F005000530054004E000100000000002000
      00004400450050005F004D004D00420052005F005000530054004E005F004900
      44000100000000002200000044004F0043005F0052004F00550054005F005000
      4F0049004E0054005F0049004400010000000000340000005300540050005F00
      44004F0043005F0052004F00550054005F0050004F0049004E0054005F005000
      530054004E005F0049004400010000000000}
    UniqueFields = 'ID_DOC_ROUT_POINT_PSTN'
    UpdatingTable = 'Src.V_Doc_Rout_Point_Pstns'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 688
    Top = 329
    object Db_Dc_Rout_Point_PstnsID_DOC_ROUT_POINT_PSTN: TFloatField
      FieldName = 'ID_DOC_ROUT_POINT_PSTN'
      Required = True
    end
    object Db_Dc_Rout_Point_PstnsDEP_MMBR_PSTN_ID: TFloatField
      FieldName = 'DEP_MMBR_PSTN_ID'
    end
    object Db_Dc_Rout_Point_PstnsDOC_ROUT_POINT_ID: TFloatField
      FieldName = 'DOC_ROUT_POINT_ID'
      Required = True
    end
    object Db_Dc_Rout_Point_PstnsSTP_DOC_ROUT_POINT_PSTN_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_PSTN_ID'
    end
  end
  object MemT_Dc_Rout_Points_Var: TMemTableEh
    CachedUpdates = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Dc_Rout_Points_Var
    SortOrder = 'STP_DC_RT_PNT_POS_ID, DEP_CODE'
    AfterOpen = MemT_Dc_Aprvl_Lst_VarAfterOpen
    Left = 840
    Top = 209
    object MemT_Dc_Rout_Points_VarID_DOC_ROUT_POINT: TIntegerField
      FieldName = 'ID_DOC_ROUT_POINT'
    end
    object MemT_Dc_Rout_Points_VarDOC_ROUT_ID: TIntegerField
      FieldName = 'DOC_ROUT_ID'
    end
    object MemT_Dc_Rout_Points_VarSTP_DOC_ROUT_POINT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object MemT_Dc_Rout_Points_VarDEP_CODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object MemT_Dc_Rout_Points_VarDEP_SNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object MemT_Dc_Rout_Points_VarPOINT_POSITION: TStringField
      FieldName = 'POINT_POSITION'
      Size = 30
    end
    object MemT_Dc_Rout_Points_VarPOINT_NAME: TStringField
      FieldName = 'POINT_NAME'
      Size = 50
    end
    object MemT_Dc_Rout_Points_VarPOS_STATE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'POS_STATE'
      Size = 22
    end
    object MemT_Dc_Rout_Points_VarCHOSE_STATE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object MemT_Dc_Rout_Points_VarSTP_DC_RT_PNT_POS_ID: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object MemT_Dc_Rout_Points_VarCONNECT_W_PNT_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CONNECT_W_PNT_ID'
    end
    object MemT_Dc_Rout_Points_VarDEP_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_ID'
      Required = True
    end
    object MemT_Dc_Rout_Points_VarPOS_RW_NUM: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'POS_RW_NUM'
    end
    object MemT_Dc_Rout_Points_VarUSER_ID: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_ID'
      Size = 30
    end
  end
  object Driver_Dc_Rout_Points_Var: TDataSetDriverEh
    KeyFields = 'ID_DOC_ROUT_POINT'
    ProviderDataSet = Db_Dc_Rout_Points_Var
    Left = 840
    Top = 265
  end
  object Db_Dc_Rout_Points_Var: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Doc_Rout_Point,'
      '       t.Doc_Rout_Id,'
      '       t.Stp_Doc_Rout_Point_Id,'
      '       Dep.Dep_Code,'
      '       Dep.Dep_Sname,'
      '       a.Dep_Id,'
      '       a.User_Id,'
      '       t.Point_Position,'
      '       pps.Point_User_Name Point_Name,'
      '       pps.Pos_State,'
      '       pps.Chose_State,'
      '       pps.Pos_Rw_Num,'
      '       pps.Id_Doc_Rt_Pnt_Pos Stp_Dc_Rt_Pnt_Pos_Id,'
      '       pps.CONNECT_W_PNT_ID,'
      '       t.rowid'
      'From   Src.v_Doc_Rout_Points t'
      'Join  (Select p.Id_Doc_Rout_Point,'
      #9#9#9#9#9#9'  ds.Dep_Id,'
      #9#9#9#9#9#9'  us.USER_ID'
      #9#9#9' From   Src.v_Doc_Rout_Points p'
      #9#9#9' Left   Join Src.v_Doc_Rout_Point_Pstns ps'
      #9#9#9' On     ps.Doc_Rout_Point_Id = p.Id_Doc_Rout_Point'
      #9#9#9' Left   Join Src.v_Doc_Rout_Point_Pstn_Ds ds'
      #9#9#9' On     ds.Doc_Rout_Point_Pstn_Id = ps.Id_Doc_Rout_Point_Pstn'
      #9#9#9' Left   Join Src.v_Doc_Rout_Point_Pstn_Us us'
      #9#9#9' On     us.DOC_ROUT_POINT_PSTN_ID = ps.Id_Doc_Rout_Point_Pstn'
      #9#9#9' Where  p.Doc_Rout_Id = :Doc_Header_Id'
      #9#9#9' Group  By p.Id_Doc_Rout_Point,'
      #9#9#9'    '#9#9#9' ds.Dep_Id,'
      #9#9'  '#9'  '#9#9#9' us.USER_ID ) a'
      'On     a.Id_Doc_Rout_Point = t.Id_Doc_Rout_Point'
      'Left   Join Stp.v_Deps Dep'
      'On     Dep.id_dep = a.Dep_Id'
      '       And Nvl(Dep.Date_Expitation, Sysdate) <= Sysdate'
      'Left   Join Stp.v_Doc_Rout_Point_Pos pps'
      'On     pps.Doc_Rt_Pnt_Id = t.Stp_Doc_Rout_Point_Id'
      '       And pps.Dep_Id = a.Dep_Id'
      '       And Nvl(pps.User_Id, 0) = Nvl(a.User_Id, 0)'
      'Where  (pps.Chose_State <> '#39'unchsn'#39
      
        '            or  (t.Stp_Doc_Rout_Point_Id = 2561 and :Internal = ' +
        '1))')
    Optimize = False
    Variables.Data = {
      04000000020000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000600000031323033300000000000120000003A00
      49004E005400450052004E0041004C000500000002000000310000000000}
    SequenceField.Field = 'ID_DOC_ROUT_POINT'
    SequenceField.Sequence = 'src.s_doc_Rout_POINTS'
    QBEDefinition.QBEFieldDefs = {
      050000000E00000022000000490044005F0044004F0043005F0052004F005500
      54005F0050004F0049004E0054000100000000001600000044004F0043005F00
      52004F00550054005F00490044000100000000002A0000005300540050005F00
      44004F0043005F0052004F00550054005F0050004F0049004E0054005F004900
      4400010000000000100000004400450050005F0043004F004400450001000000
      0000120000004400450050005F0053004E0041004D0045000100000000001C00
      000050004F0049004E0054005F0050004F0053004900540049004F004E000100
      000000001400000050004F0049004E0054005F004E0041004D00450001000000
      00001200000050004F0053005F00530054004100540045000100000000001600
      0000430048004F00530045005F00530054004100540045000100000000002000
      000043004F004E004E004500430054005F0057005F0050004E0054005F004900
      4400010000000000280000005300540050005F00440043005F00520054005F00
      50004E0054005F0050004F0053005F00490044000100000000000C0000004400
      450050005F00490044000100000000001400000050004F0053005F0052005700
      5F004E0055004D000100000000000E00000055005300450052005F0049004400
      010000000000}
    UniqueFields = 'ID_DOC_ROUT_POINT'
    UpdatingTable = 'Src.v_Doc_Rout_Points'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 840
    Top = 313
    object IntegerField6: TIntegerField
      FieldName = 'ID_DOC_ROUT_POINT'
      Required = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'DOC_ROUT_ID'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object StringField12: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object StringField13: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object StringField15: TStringField
      FieldName = 'POINT_POSITION'
      Required = True
      Size = 30
    end
    object StringField16: TStringField
      FieldName = 'POINT_NAME'
      Required = True
      Size = 50
    end
    object StringField17: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'POS_STATE'
      Size = 22
    end
    object StringField18: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object FloatField4: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'STP_DC_RT_PNT_POS_ID'
    end
    object IntegerField9: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'CONNECT_W_PNT_ID'
    end
    object Db_Dc_Rout_Points_VarDEP_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DEP_ID'
      Required = True
    end
    object Db_Dc_Rout_Points_VarPOS_RW_NUM: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'POS_RW_NUM'
    end
    object Db_Dc_Rout_Points_VarUSER_ID: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_ID'
      Size = 30
    end
  end
  object Db_Doc_Aprvl_List_Var_Internal: TOracleDataSet
    SQL.Strings = (
      'Select t.ID_Doc_Rt_Pnt_Pos Stp_Dc_Rt_Pnt_Pos_Id, '
      '       t.Point_User_Name Point_Name,'
      '       t.Connect_W_Pnt_Id,'
      '       t.Pos_State,'
      '       t.Chose_State,'
      '       t.Pos_Rw_Num,'
      '       t.Dep_Id,'
      '       t.User_Id,'
      '       Dep.Dep_Code,'
      '       Dep.Dep_Sname,'
      '       Dep_Sname||'#39' ('#39'||Dep.Dep_Code||'#39')'#39' Dep_Name,'
      '       t.Doc_Rt_Pnt_Id Stp_Doc_Rout_Point_Id'
      'From   Stp.V_DOC_ROUT_POINT_POS t'
      'Left   Join Stp.V_Deps Dep'
      'On     t.Dep_Id = Dep.Id_Dep'
      '       And Nvl(Dep.Date_Expitation, Sysdate) >= Sysdate'
      'Where  t.Doc_Type_Id = '#39'TECH_PROC'#39
      '       and t.Chose_State = '#39'chsn'#39
      '       and t.Doc_Rt_Pnt_Id = 2561'
      
        '       and t.Dep_Id = Stp.Pkg_User.F_Get_User_Department_Id('#39'DEP' +
        '63009'#39')'
      'Order  By t.Pos_Rw_Num')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000C0000001400000050004F0049004E0054005F004E0041004D004500
      010000000000280000005300540050005F00440043005F00520054005F005000
      4E0054005F0050004F0053005F00490044000100000000002A00000053005400
      50005F0044004F0043005F0052004F00550054005F0050004F0049004E005400
      5F00490044000100000000001200000050004F0053005F005300540041005400
      45000100000000001400000050004F0053005F00520057005F004E0055004D00
      0100000000000C0000004400450050005F004900440001000000000016000000
      430048004F00530045005F005300540041005400450001000000000010000000
      4400450050005F0043004F004400450001000000000012000000440045005000
      5F0053004E0041004D004500010000000000100000004400450050005F004E00
      41004D0045000100000000002000000043004F004E004E004500430054005F00
      57005F0050004E0054005F00490044000100000000000E000000550053004500
      52005F0049004400010000000000}
    Session = DM_Main.Session
    AfterRefresh = Db_Doc_Aprvl_List_Var_ChsnAfterRefresh
    Left = 144
    Top = 297
    object FloatField1: TFloatField
      FieldName = 'STP_DC_RT_PNT_POS_ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'POINT_NAME'
      Size = 150
    end
    object IntegerField1: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_ID'
    end
    object StringField2: TStringField
      FieldName = 'POS_STATE'
      Size = 22
    end
    object IntegerField10: TIntegerField
      FieldName = 'POS_RW_NUM'
    end
    object IntegerField11: TIntegerField
      FieldName = 'DEP_ID'
    end
    object StringField3: TStringField
      FieldName = 'CHOSE_STATE'
      Size = 22
    end
    object StringField4: TStringField
      FieldName = 'DEP_CODE'
      Size = 2
    end
    object StringField19: TStringField
      FieldName = 'DEP_SNAME'
      Size = 200
    end
    object StringField20: TStringField
      FieldName = 'DEP_NAME'
      Size = 205
    end
    object IntegerField12: TIntegerField
      FieldName = 'CONNECT_W_PNT_ID'
    end
    object Db_Doc_Aprvl_List_Var_InternalUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 30
    end
  end
  object Db_Dc_Rout_Point_Pstn_User: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid'
      'From   Src.V_Doc_Rout_Point_Pstn_Us t'
      'Left   Join Src.V_Doc_Rout_Point_Pstns ps'
      'On     ps.Id_Doc_Rout_Point_Pstn=t.Doc_Rout_Point_Pstn_Id'
      'Left   Join Src.V_Doc_Rout_Points p'
      'On     p.Id_Doc_Rout_Point=ps.Doc_Rout_Point_Id'
      'Where  p.Doc_Rout_Id=:Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    SequenceField.Field = 'ID_DOC_ROUT_POINT_PSTN_U'
    SequenceField.Sequence = 'SRC.S_DOC_ROUT_POINT_PSTN_US'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000040000002C00000044004F0043005F0052004F00550054005F005000
      4F0049004E0054005F005000530054004E005F00490044000100000000003000
      0000490044005F0044004F0043005F0052004F00550054005F0050004F004900
      4E0054005F005000530054004E005F0055000100000000000E00000055005300
      450052005F0049004400010000000000380000005300540050005F0044004F00
      43005F0052004F00550054005F0050004F0049004E0054005F00500053005400
      4E005F0055005F0049004400010000000000}
    UniqueFields = 'ID_DOC_ROUT_POINT_PSTN_U'
    UpdatingTable = 'Src.V_Doc_Rout_Point_Pstn_Us'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 688
    Top = 385
    object Db_Dc_Rout_Point_Pstn_UserID_DOC_ROUT_POINT_PSTN_U: TFloatField
      FieldName = 'ID_DOC_ROUT_POINT_PSTN_U'
      Required = True
    end
    object Db_Dc_Rout_Point_Pstn_UserDOC_ROUT_POINT_PSTN_ID: TFloatField
      FieldName = 'DOC_ROUT_POINT_PSTN_ID'
      Required = True
    end
    object Db_Dc_Rout_Point_Pstn_UserUSER_ID: TStringField
      FieldName = 'USER_ID'
      Required = True
      Size = 30
    end
    object Db_Dc_Rout_Point_Pstn_UserSTP_DOC_ROUT_POINT_PSTN_U_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_PSTN_U_ID'
    end
  end
  object Db_Dc_Aprvl_Lst_Usrs: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid '
      'From   Src.V_Doc_Rout_Us_Pnt_Usrs t'
      'Where  t.Dc_Rt_Us_Pnt_Id = :Id_Dc_Rt_Us_Pnt')
    Optimize = False
    Variables.Data = {
      0400000001000000200000003A00490044005F00440043005F00520054005F00
      550053005F0050004E005400050000000000000000000000}
    SequenceField.Field = 'ID_DC_RT_US_PNT_USR'
    SequenceField.Sequence = 'SRC.S_DOC_RT_US_PNT_USRS_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000080000001A00000044004F0043005F00480045004100440045005200
      5F00490044000100000000001E000000440043005F00520054005F0055005300
      5F0050004E0054005F0049004400010000000000160000005500530045005200
      5F0049004E005300450052005400010000000000160000004400410054004500
      5F0049004E005300450052005400010000000000160000005500530045005200
      5F004300480041004E0047004500010000000000160000004400410054004500
      5F004300480041004E004700450001000000000026000000490044005F004400
      43005F00520054005F00550053005F0050004E0054005F005500530052000100
      000000000E00000055005300450052005F0049004400010000000000}
    UniqueFields = 'ID_DC_RT_US_PNT_USR'
    UpdatingTable = 'Src.V_Doc_Rout_Us_Pnt_Usrs'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Dc_Aprvl_Lst_DepsNewRecord
    Left = 464
    Top = 449
    object Db_Dc_Aprvl_Lst_UsrsID_DC_RT_US_PNT_USR: TFloatField
      FieldName = 'ID_DC_RT_US_PNT_USR'
      Required = True
    end
    object Db_Dc_Aprvl_Lst_UsrsDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Dc_Aprvl_Lst_UsrsDC_RT_US_PNT_ID: TFloatField
      FieldName = 'DC_RT_US_PNT_ID'
      Required = True
    end
    object Db_Dc_Aprvl_Lst_UsrsUSER_ID: TStringField
      FieldName = 'USER_ID'
      Required = True
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_UsrsUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_UsrsDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Dc_Aprvl_Lst_UsrsUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Dc_Aprvl_Lst_UsrsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
  end
  object Db_Dc_Rout_Point_Rslts: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid'
      'From   Src.V_Doc_Rout_Point_Rslts t'
      'Left   Join Src.V_Doc_Rout_Points p'
      'On     p.Id_Doc_Rout_Point=t.Doc_Rout_Point_Id'
      'Where  p.Doc_Rout_Id=:Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    SequenceField.Field = 'ID_DOC_ROUT_POINT_RSLT'
    SequenceField.Sequence = 'Src.s_Doc_Rout_Point_Rslts'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000040000002C000000490044005F0044004F0043005F0052004F005500
      54005F0050004F0049004E0054005F00520053004C0054000100000000002200
      000044004F0043005F0052004F00550054005F0050004F0049004E0054005F00
      49004400010000000000380000005300540050005F0044004F0043005F005200
      450053004F004C005500540049004F004E005F0052004500530055004C005400
      5F0049004400010000000000340000005300540050005F0044004F0043005F00
      52004F00550054005F0050004F0049004E0054005F00520053004C0054005F00
      49004400010000000000}
    UniqueFields = 'ID_DOC_ROUT_POINT_RSLT'
    UpdatingTable = 'Src.V_Doc_Rout_Point_Rslts'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 696
    Top = 433
    object Db_Dc_Rout_Point_RsltsID_DOC_ROUT_POINT_RSLT: TFloatField
      FieldName = 'ID_DOC_ROUT_POINT_RSLT'
      Required = True
    end
    object Db_Dc_Rout_Point_RsltsDOC_ROUT_POINT_ID: TFloatField
      FieldName = 'DOC_ROUT_POINT_ID'
      Required = True
    end
    object Db_Dc_Rout_Point_RsltsSTP_DOC_RESOLUTION_RESULT_ID: TIntegerField
      FieldName = 'STP_DOC_RESOLUTION_RESULT_ID'
      Required = True
    end
    object Db_Dc_Rout_Point_RsltsSTP_DOC_ROUT_POINT_RSLT_ID: TIntegerField
      FieldName = 'STP_DOC_ROUT_POINT_RSLT_ID'
    end
  end
  object Db_Type_Clmns: TOracleDataSet
    SQL.Strings = (
      'Select t.*'
      'From   Ogt.V_Spr_Tp_Doc_Type_Clmns t'
      'Where  t.Tp_Doc_Type_Id=:Doc_Type'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0044004F0043005F0054005900500045000500
      000002000000310000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000040000001C000000540050005F0044004F0043005F00540059005000
      45005F00490044000100000000000E000000490044005F0043004C004D004E00
      0100000000001600000043004F004C0055004D004E005F004E0041004D004500
      0100000000001400000056004900450057005F00530054004100540045000100
      00000000}
    Session = DM_Main.Session
    AfterOpen = Db_Type_ClmnsAfterRefresh
    AfterRefresh = Db_Type_ClmnsAfterRefresh
    Left = 560
    Top = 247
    object Db_Type_ClmnsID_CLMN: TIntegerField
      FieldName = 'ID_CLMN'
      Required = True
    end
    object Db_Type_ClmnsTP_DOC_TYPE_ID: TIntegerField
      FieldName = 'TP_DOC_TYPE_ID'
    end
    object Db_Type_ClmnsCOLUMN_NAME: TStringField
      FieldName = 'COLUMN_NAME'
      Size = 30
    end
    object Db_Type_ClmnsVIEW_STATE: TStringField
      FieldName = 'VIEW_STATE'
      Size = 30
    end
  end
  object Data_Type_Clmns: TDataSource
    DataSet = Db_Type_Clmns
    Left = 627
    Top = 212
  end
end
