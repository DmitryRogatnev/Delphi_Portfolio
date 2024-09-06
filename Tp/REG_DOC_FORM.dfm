object Form_Create_Doc: TForm_Create_Doc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 292
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Btn_Cancel: TButton
    Left = 838
    Top = 19
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 0
    OnClick = Btn_CancelClick
  end
  object Btn_Create: TButton
    Left = 757
    Top = 19
    Width = 75
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 1
    OnClick = Btn_CreateClick
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 1
    Width = 353
    Height = 285
    Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1089#1086#1075#1083#1072#1089#1091#1102#1090
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 18
      Width = 349
      Height = 265
      Align = alClient
      AutoFitColWidths = True
      DataSource = DATA_APPR_LIST
      DynProps = <>
      TabOrder = 0
      OnGetCellParams = DBGridEh1GetCellParams
      Columns = <
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CEH_CODE'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1062#1077#1093
          Width = 50
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'APPR_STEP_NAME'
          Footers = <>
          Title.Caption = #1057#1090#1086#1088#1086#1085#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103
          Width = 242
        end
        item
          CellButtons = <>
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'FLAG_USE'
          Footers = <>
          KeyList.Strings = (
            '1;'
            '0')
          Title.Alignment = taCenter
          Title.Caption = #1055#1088'.'
          Width = 35
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object LCB_Doc_Type: TDBLookupComboboxEh
    Left = 364
    Top = 20
    Width = 181
    Height = 24
    ControlLabel.Width = 86
    ControlLabel.Height = 16
    ControlLabel.Caption = #1042#1080#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
    ControlLabel.Visible = True
    DynProps = <>
    DataField = 'DOC_TYPE'
    DataSource = Data_Main_Info
    EditButtons = <>
    KeyField = 'TYPE_NUMBER'
    ListField = 'DOC_TYPE'
    ListSource = Data_Doc_Type
    TabOrder = 3
    Visible = True
    OnKeyValueChanged = LCB_Doc_TypeKeyValueChanged
  end
  object DbGrid_Info: TDBVertGridEh
    Left = 362
    Top = 50
    Width = 551
    Height = 235
    AllowedSelections = []
    RowCategories.CategoryProps = <>
    PrintService.ColorSchema = pcsFullColorEh
    DataSource = Data_Main_Info
    DrawGraphicData = True
    DrawMemoText = True
    OptionsEh = [dgvhHighlightFocusEh, dgvhClearSelectionEh, dgvhEnterToNextRowEh, dgvhTabToNextRowEh]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    LabelColWidth = 197
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
        EditButtons = <>
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
        DropDownBox.ListFieldNames = 'Liter_Type'
        DropDownBox.ListSource = Data_Liter_Types
        EditButtons = <>
        FieldName = 'DOC_LITER'
        RowLabel.Caption = #1051#1080#1090#1077#1088#1072'*:'
        RowLabel.Color = 15128749
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
        EditButtons = <
          item
            DropDownFormParams.DropDownForm = Drop_D_Form_Gen_Chose.Owner
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
        EditButtons = <>
        FieldName = 'CANCEL_DOC_NUM'
        RowLabel.Caption = #1040#1085#1085#1091#1083#1080#1088#1091#1077#1090' '#1076#1086#1082#1091#1084#1077#1085#1090':'
        RowLabel.Color = 15128749
        OnUpdateData = DbGrid_InfoRows10UpdateData
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
  object LCB_Tp_Type: TDBLookupComboboxEh
    Left = 560
    Top = 20
    Width = 169
    Height = 24
    ControlLabel.Width = 41
    ControlLabel.Height = 16
    ControlLabel.Caption = #1042#1080#1076' '#1058#1055
    ControlLabel.Visible = True
    DynProps = <>
    DataField = ''
    EditButtons = <>
    KeyField = 'TYPE_NUMBER'
    ListField = 'TP_TYPE'
    ListSource = Data_Tp_Type
    TabOrder = 5
    Visible = True
  end
  object PKG_TP_DOC: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Ogt.PKG_TP_DOC'
    Left = 232
    Top = 83
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = Form2.OracleSession1
    Left = 305
    Top = 54
  end
  object Db_Appr_List: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from Ogt.SPR_TP_APPR_LIST_TEMP t'
      'order by Ceh_Code, Appr_Step_Num')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000007000000040000004900440001000000000012000000490044005F00
      540050005F0044004F0043000100000000000C0000004300450048005F004900
      44000100000000001A00000041005000500052005F0053005400450050005F00
      4E0055004D000100000000001C00000041005000500052005F00530054004500
      50005F004E0041004D0045000100000000001000000046004C00410047005F00
      550053004500010000000000100000004300450048005F0043004F0044004500
      010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 40
    Top = 75
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
  end
  object DATA_APPR_LIST: TDataSource
    DataSet = Db_Appr_List
    Left = 40
    Top = 120
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
      'From   Dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000001000000140000004C0049005400450052005F005400590050004500
      010000000000}
    Session = DM_Main.Session
    Left = 32
    Top = 160
  end
  object Data_Liter_Types: TDataSource
    DataSet = Db_Liter_Types
    Left = 32
    Top = 209
  end
  object Db_Doc_Type: TOracleDataSet
    SQL.Strings = (
      'Select '#39#1045#1076#1080#1085#1080#1095#1085#1099#1081#39' as Doc_Type,'
      '        1 as Type_Number'
      'From   Dual'
      ''
      'Union All'
      ''
      'Select '#39#1058#1080#1087#1086#1074#1086#1081#39' as Doc_Type,'
      '        2 as Type_Number'
      'From   Dual'
      ''
      'Union All'
      ''
      'Select '#39#1050#1086#1084#1087#1083#1077#1082#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074#39' as Doc_Type,'
      '        5 as Type_Number'
      'From   Dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000020000001000000044004F0043005F00540059005000450001000000
      00001600000054005900500045005F004E0055004D0042004500520001000000
      0000}
    Session = DM_Main.Session
    Left = 112
    Top = 160
  end
  object Data_Doc_Type: TDataSource
    DataSet = Db_Doc_Type
    Left = 112
    Top = 208
  end
  object Db_Main_Info: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.rowid '
      'From   SRC.V_TECH_PROC t'
      'Where  t.Id = :v_Doc_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'ogt.SPR_TP_DOC$SQN$ID'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000003300000004000000490044000100000000000E00000044004F004300
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
      000041005500540048004F0052005F004E0041004D0045000100000000001800
      00004D00410049004E005F0044004F0043005F004E0055004D00010000000000
      1C000000430041004E00430045004C005F0044004F0043005F004E0055004D00
      01000000000022000000540050005F0057004F0052004B005F00540059005000
      45005F004E0041004D0045000100000000000C00000049005A0044005F004900
      44000100000000001000000049005A0044005F004E0041004D00450001000000
      00001000000049005A0044005F0054005900500045000100000000000E000000
      540050005F0054005900500045000100000000001600000043004F004D005000
      4C004500430054005F00490044000100000000001000000046004C0041004700
      5F0049004D0050000100000000000E0000004100430054005F004E0055004D00
      010000000000100000004100430054005F004400410054004500010000000000
      100000004300450048005F0043004F0044004500010000000000160000004300
      41004E00430045004C005F0046004C00410047000100000000001A0000004300
      450048005F0044004F00430053005F0046004C00410047000100000000001A00
      000044004F0043005F004800450041004400450052005F004900440001000000
      00000E00000045004D00500053005F00490044000100000000001A0000004900
      44005F0044004F0043005F004800450041004400450052000100000000001600
      000044004F0043005F0054005900500045005F00490044000100000000001000
      000044004F0043005F0044004100540045000100000000001400000044004F00
      43005F004E0055004D004200450052000100000000001600000043004C004D00
      4E0031005F00560041004C00550045000100000000001600000043004C004D00
      4E0032005F00560041004C00550045000100000000001600000043004C004D00
      4E0033005F00560041004C00550045000100000000001C000000430052004500
      4100540045005F0055005300450052005F004900440001000000000024000000
      4300520045004100540045005F0055005300450052005F00490044005F004100
      44004400010000000000160000004300520045004100540045005F0044004100
      54004500010000000000200000004C004100530054005F004D004F0044005F00
      55005300450052005F0049004400010000000000280000004C00410053005400
      5F004D004F0044005F0055005300450052005F00490044005F00410044004400
      0100000000001A0000004C004100530054005F004D004F0044005F0044004100
      54004500010000000000140000005300520043005F004400450050005F004900
      44000100000000001600000053004E00440052005F004400450050005F004900
      44000100000000001A00000046004C00410047005F0049004D0050005F004E00
      41004D004500010000000000}
    UniqueFields = 'ID'
    UpdatingTable = 'SRC.V_TECH_PROC'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Main_InfoNewRecord
    Left = 312
    Top = 160
    object Db_Main_InfoID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object Db_Main_InfoDOC_NUM: TStringField
      FieldName = 'DOC_NUM'
      Required = True
      Size = 15
    end
    object Db_Main_InfoDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Main_InfoDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_Main_InfoDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_Main_InfoCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Main_InfoCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Main_InfoAUTHOR_LNUM: TFloatField
      FieldName = 'AUTHOR_LNUM'
      Required = True
    end
    object Db_Main_InfoAUTHOR_NAME: TStringField
      FieldName = 'AUTHOR_NAME'
      Size = 26
    end
    object Db_Main_InfoDATA_REG: TDateTimeField
      FieldName = 'DATA_REG'
    end
    object Db_Main_InfoDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
    object Db_Main_InfoREASON: TStringField
      FieldName = 'REASON'
      Size = 1000
    end
    object Db_Main_InfoCANCEL_DOC_ID: TFloatField
      FieldName = 'CANCEL_DOC_ID'
    end
    object Db_Main_InfoCANCEL_DOC_NUM: TStringField
      FieldName = 'CANCEL_DOC_NUM'
      Size = 15
    end
    object Db_Main_InfoMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Main_InfoMAIN_DOC_NUM: TStringField
      FieldName = 'MAIN_DOC_NUM'
      Size = 15
    end
    object Db_Main_InfoCANCEL_FLAG: TFloatField
      FieldName = 'CANCEL_FLAG'
    end
    object Db_Main_InfoCEH_DOCS_FLAG: TFloatField
      FieldName = 'CEH_DOCS_FLAG'
    end
    object Db_Main_InfoDET_MAR: TStringField
      FieldName = 'DET_MAR'
      Size = 100
    end
    object Db_Main_InfoDOC_LITER: TStringField
      FieldName = 'DOC_LITER'
      Size = 2
    end
    object Db_Main_InfoDOC_TYPE: TFloatField
      FieldName = 'DOC_TYPE'
    end
    object Db_Main_InfoTP_NUM: TStringField
      FieldName = 'TP_NUM'
      Size = 30
    end
    object Db_Main_InfoTP_NAME: TStringField
      FieldName = 'TP_NAME'
      Size = 300
    end
    object Db_Main_InfoTP_WORK_TYPE: TFloatField
      FieldName = 'TP_WORK_TYPE'
    end
    object Db_Main_InfoTP_WORK_TYPE_NAME: TStringField
      FieldName = 'TP_WORK_TYPE_NAME'
      Size = 103
    end
    object Db_Main_InfoIZD_ID: TFloatField
      FieldName = 'IZD_ID'
    end
    object Db_Main_InfoIZD_NAME: TStringField
      FieldName = 'IZD_NAME'
      Size = 50
    end
    object Db_Main_InfoIZD_TYPE: TStringField
      FieldName = 'IZD_TYPE'
      Size = 100
    end
    object Db_Main_InfoCOMPLECT_ID: TFloatField
      FieldName = 'COMPLECT_ID'
    end
    object Db_Main_InfoTP_TYPE: TFloatField
      FieldName = 'TP_TYPE'
    end
    object Db_Main_InfoFLAG_IMP: TFloatField
      FieldName = 'FLAG_IMP'
    end
    object Db_Main_InfoACT_DATE: TDateTimeField
      FieldName = 'ACT_DATE'
    end
    object Db_Main_InfoDOC_HEADER_ID: TFloatField
      FieldName = 'DOC_HEADER_ID'
    end
    object Db_Main_InfoEMPS_ID: TStringField
      FieldName = 'EMPS_ID'
      Size = 30
    end
    object Db_Main_InfoID_DOC_HEADER: TIntegerField
      FieldName = 'ID_DOC_HEADER'
      Required = True
    end
    object Db_Main_InfoDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Required = True
    end
    object Db_Main_InfoDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object Db_Main_InfoCLMN1_VALUE: TStringField
      FieldName = 'CLMN1_VALUE'
      Size = 200
    end
    object Db_Main_InfoACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
    end
    object Db_Main_InfoCLMN2_VALUE: TStringField
      FieldName = 'CLMN2_VALUE'
      Size = 200
    end
    object Db_Main_InfoCLMN3_VALUE: TStringField
      FieldName = 'CLMN3_VALUE'
      Size = 4000
    end
    object Db_Main_InfoCREATE_USER_ID: TStringField
      FieldName = 'CREATE_USER_ID'
      Size = 30
    end
    object Db_Main_InfoDOC_TYPE_ID: TStringField
      FieldName = 'DOC_TYPE_ID'
      Size = 22
    end
    object Db_Main_InfoCREATE_USER_ID_ADD: TIntegerField
      FieldName = 'CREATE_USER_ID_ADD'
    end
    object Db_Main_InfoCREATE_DATE: TDateTimeField
      FieldName = 'CREATE_DATE'
    end
    object Db_Main_InfoLAST_MOD_USER_ID: TStringField
      FieldName = 'LAST_MOD_USER_ID'
      Size = 30
    end
    object Db_Main_InfoLAST_MOD_USER_ID_ADD: TIntegerField
      FieldName = 'LAST_MOD_USER_ID_ADD'
    end
    object Db_Main_InfoLAST_MOD_DATE: TDateTimeField
      FieldName = 'LAST_MOD_DATE'
    end
    object Db_Main_InfoSRC_DEP_ID: TIntegerField
      FieldName = 'SRC_DEP_ID'
    end
    object Db_Main_InfoSNDR_DEP_ID: TIntegerField
      FieldName = 'SNDR_DEP_ID'
    end
    object Db_Main_InfoFLAG_IMP_NAME: TStringField
      FieldName = 'FLAG_IMP_NAME'
      Size = 13
    end
  end
  object Data_Main_Info: TDataSource
    DataSet = Db_Main_Info
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
    Left = 608
    Top = 176
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
    Left = 608
    Top = 224
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
    Left = 520
    Top = 152
  end
  object Data_Flag_Imp_Names: TDataSource
    DataSet = Db_Flag_Imp_Names
    Left = 504
    Top = 224
  end
  object Seq_Id_Doc_Header: TOracleQuery
    SQL.Strings = (
      'Select Src.S_Doc_Headers.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 312
    Top = 120
  end
  object Seq_Main_Doc_Id: TOracleQuery
    SQL.Strings = (
      'Select Ogt.SPR_TP_DOC$SQN$ID.Nextval From Dual')
    Session = DM_Main.Session
    Optimize = False
    Left = 232
    Top = 168
  end
end
