object Form39: TForm39
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form39'
  ClientHeight = 280
  ClientWidth = 929
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
  object GroupBox1: TGroupBox
    Left = 5
    Top = 1
    Width = 361
    Height = 243
    Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1089#1086#1075#1083#1072#1089#1091#1102#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 18
      Width = 357
      Height = 223
      Align = alClient
      AutoFitColWidths = True
      DataSource = DATA_APPR_LIST
      DynProps = <>
      TabOrder = 0
      OnGetCellParams = DBGridEh1GetCellParams
      Columns = <
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
          FieldName = 'GR_DEP_ID'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'APPR_STEP_NUM'
          Footers = <>
          Visible = False
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CEH_ID'
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
          Width = 33
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Button1: TButton
    Left = 770
    Top = 249
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object BTN_CANCEL: TButton
    Left = 851
    Top = 249
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BTN_CANCELClick
  end
  object DbGrid_Info: TDBVertGridEh
    Left = 372
    Top = 8
    Width = 551
    Height = 235
    AllowedSelections = []
    RowCategories.CategoryProps = <>
    PrintService.ColorSchema = pcsFullColorEh
    DataSource = Data_Main_Info
    DrawGraphicData = True
    DrawMemoText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    OptionsEh = [dgvhHighlightFocusEh, dgvhClearSelectionEh, dgvhEnterToNextRowEh, dgvhTabToNextRowEh]
    ParentFont = False
    TabOrder = 3
    LabelColWidth = 184
    Rows = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOC_NUM'
        RowLabel.Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      end
      item
        DynProps = <>
        EditButton.DefaultAction = False
        EditButtons = <
          item
            OnClick = DbGrid_InfoRows0EditButtons0Click
          end>
        FieldName = 'REASON'
        RowLabel.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1074#1099#1087#1091#1089#1082#1072
      end
      item
        DynProps = <>
        DropDownBox.ListFieldNames = 'Liter_Type'
        DropDownBox.ListSource = Data_Liter_Types
        EditButtons = <>
        FieldName = 'DOC_LITER'
        RowLabel.Caption = #1051#1080#1090#1077#1088#1072
        OnUpdateData = DbGrid_InfoRows2UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'TP_NUM'
        RowLabel.Caption = #1053#1086#1084#1077#1088' '#1058#1055
        OnUpdateData = DbGrid_InfoRows3UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'TP_NAME'
        RowLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1058#1055
      end
      item
        DynProps = <>
        DropDownBox.ListFieldNames = 'Work_Type_Name'
        DropDownBox.ListSource = Data_Work_Type
        EditButtons = <>
        FieldName = 'TP_WORK_TYPE_NAME'
        RowLabel.Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090' '#1087#1086' '#1058#1055
        OnUpdateData = DbGrid_InfoRows4UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'FLAG_IMP_NAME'
        RowLabel.Caption = #1054#1090#1084#1077#1090#1082#1072' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080
        LookupParams.KeyFieldNames = 'FLAG_IMP'
        LookupParams.LookupDataSet = Db_Flag_Imp_Names
        LookupParams.LookupDisplayFieldName = 'NAME_FLAG'
        LookupParams.LookupKeyFieldNames = 'NUMBER_FLAG'
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ACT_NUM'
        RowLabel.Caption = #1040#1082#1090' '#8470
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ACT_DATE'
        RowLabel.Caption = #1044#1072#1090#1072' '#1072#1082#1090#1072
      end>
  end
  object PKG_TP_DOC: TOraclePackage
    Session = DM_Main.Session
    PackageName = 'Ogt.PKG_TP_DOC'
    Left = 360
    Top = 195
  end
  object SimpleSQL: TOracleDataSet
    Optimize = False
    Session = DM_Main.Session
    Left = 281
    Top = 110
  end
  object DB_APPR_LIST: TOracleDataSet
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
    Session = DM_Main.Session
    AfterEdit = DB_APPR_LISTAfterEdit
    Left = 232
    Top = 115
    object DB_APPR_LISTID: TFloatField
      FieldName = 'ID'
    end
    object DB_APPR_LISTID_TP_DOC: TFloatField
      FieldName = 'ID_TP_DOC'
    end
    object DB_APPR_LISTCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object DB_APPR_LISTAPPR_STEP_NUM: TStringField
      FieldName = 'APPR_STEP_NUM'
      Size = 3
    end
    object DB_APPR_LISTAPPR_STEP_NAME: TStringField
      FieldName = 'APPR_STEP_NAME'
      Size = 100
    end
    object DB_APPR_LISTFLAG_USE: TFloatField
      FieldName = 'FLAG_USE'
    end
    object DB_APPR_LISTCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object DB_APPR_LISTGROUP_ID: TFloatField
      FieldName = 'GROUP_ID'
    end
    object DB_APPR_LISTGR_DEP_ID: TIntegerField
      FieldName = 'GR_DEP_ID'
    end
  end
  object DATA_APPR_LIST: TDataSource
    DataSet = DB_APPR_LIST
    Left = 168
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
    Left = 48
    Top = 160
  end
  object Data_Liter_Types: TDataSource
    DataSet = Db_Liter_Types
    Left = 96
    Top = 169
  end
  object DB_Work_Type: TOracleDataSet
    SQL.Strings = (
      
        'Select '#39'('#39'||t.Num_Gr_Vid_Rab||'#39') '#39'||Decode( t.Num_Gr_Vid_Rab, '#39'0' +
        '0'#39', '#39#1041#1045#1047' '#1059#1050#1040#1047#1040#1053#1048#1071#39', t.Name_Gr_Vid_Rab )  As Work_Type_Name'
      'From   Ogt.SPR_GR_VID_RAB t'
      'Order  By t.Name_Gr_Vid_Rab')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000010000001C00000057004F0052004B005F0054005900500045005F00
      4E0041004D004500010000000000}
    Session = DM_Main.Session
    Left = 264
    Top = 160
    object DB_Work_TypeWORK_TYPE_NAME: TStringField
      FieldName = 'WORK_TYPE_NAME'
      Size = 55
    end
  end
  object Data_Work_Type: TDataSource
    DataSet = DB_Work_Type
    Left = 264
    Top = 209
  end
  object Db_Main_Info: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      '       t.rowid '
      'From   Ogt.V_SPR_TP_DOC t'
      'Where  t.Id = :v_Doc_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000002500000004000000490044000100000000000E00000044004F004300
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
      4D00500053005F004900440001000000000018000000500052004F004A004500
      430054005F0046004C0041004700010000000000160000005500530045005200
      5F0049004E005300450052005400010000000000160000004400410054004500
      5F0049004E005300450052005400010000000000160000005500530045005200
      5F004300480041004E0047004500010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    AfterEdit = Db_Main_InfoAfterEdit
    Left = 488
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
    object Db_Main_InfoDET_MAR: TStringField
      FieldName = 'DET_MAR'
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
    object Db_Main_InfoREASON: TStringField
      FieldName = 'REASON'
      Size = 1000
    end
    object Db_Main_InfoCANCEL_DOC_ID: TFloatField
      FieldName = 'CANCEL_DOC_ID'
    end
    object Db_Main_InfoMAIN_DOC_ID: TFloatField
      FieldName = 'MAIN_DOC_ID'
    end
    object Db_Main_InfoCANCEL_FLAG: TFloatField
      FieldName = 'CANCEL_FLAG'
    end
    object Db_Main_InfoCEH_DOCS_FLAG: TFloatField
      FieldName = 'CEH_DOCS_FLAG'
    end
    object Db_Main_InfoACT_NUM: TFloatField
      FieldName = 'ACT_NUM'
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
    object Db_Main_InfoPROJECT_FLAG: TIntegerField
      FieldName = 'PROJECT_FLAG'
    end
    object Db_Main_InfoUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_Main_InfoDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_Main_InfoUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_Main_InfoDATA_CHANGE: TDateTimeField
      FieldName = 'DATA_CHANGE'
    end
  end
  object Data_Main_Info: TDataSource
    DataSet = Db_Main_Info
    Left = 488
    Top = 209
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
    Left = 608
    Top = 144
  end
  object Data_Flag_Imp_Names: TDataSource
    DataSet = Db_Flag_Imp_Names
    Left = 608
    Top = 192
  end
end
