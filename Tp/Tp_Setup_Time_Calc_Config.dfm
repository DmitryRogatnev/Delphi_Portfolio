object Form_Tp_Setup_Time_Calc_Config: TForm_Tp_Setup_Time_Calc_Config
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1096#1072#1073#1083#1086#1085#1086#1074' '#1076#1083#1103' '#1088#1072#1089#1095#1077#1090#1072' '#1058#1087#1079
  ClientHeight = 776
  ClientWidth = 1123
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Main_M_Tp_Setup_Time_Calc_Cnfg
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 500
    Top = 0
    Width = 5
    Height = 776
    ExplicitLeft = 225
    ExplicitHeight = 683
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 776
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    object Grid_Dep_Group: TDBGridEh
      Left = 1
      Top = 1
      Width = 498
      Height = 774
      Align = alClient
      AutoFitColWidths = True
      DataSource = Data_Dep_Group_Link
      DynProps = <>
      Flat = True
      SearchPanel.Enabled = True
      TabOrder = 0
      TitleParams.MultiTitle = True
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
              DropDownFormParams.PassParams = pspCustomValuesEh
            end>
          FieldName = 'CEH_CODE'
          Footers = <>
          Title.Caption = #1062#1077#1093
          Width = 55
          OnCloseDropDownForm = DBGridEh1Columns0CloseDropDownForm
          OnOpenDropDownForm = DBGridEh1Columns0OpenDropDownForm
          OnUpdateData = Grid_Dep_GroupColumns0UpdateData
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
              DropDownFormParams.PassParams = pspCustomValuesEh
            end>
          FieldName = 'GROUP_NAME'
          Footers = <>
          Title.Caption = #1043#1088#1091#1087#1087#1072
          Width = 150
          OnCloseDropDownForm = DBGridEh1Columns1CloseDropDownForm
          OnOpenDropDownForm = DBGridEh1Columns1OpenDropDownForm
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CONST_TIME'
          Footers = <>
          Title.Caption = #1058' '#1087#1079'.|'#1047#1085#1072#1095#1077#1085#1080#1077
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
            end>
          FieldName = 'COEFF_FLAG_NAME'
          Footers = <>
          Title.Caption = #1058' '#1087#1079'.|'#1060#1083#1072#1075
          Width = 100
          OnCloseDropDownForm = DBGridEh_Coeff_ColumnCloseDropDownForm
          OnOpenDropDownForm = DBGridEh_Coeff_ColumnOpenDropDownForm
          OnUpdateData = Grid_Dep_GroupColumns3UpdateData
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CONST_TIME_2'
          Footers = <>
          Title.Caption = #1058' '#1086#1073#1089'.+'#1058' '#1086#1090#1083'.|'#1047#1085#1072#1095#1077#1085#1080#1077
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <
            item
              DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
              DropDownFormParams.PassParams = pspCustomValuesEh
            end>
          FieldName = 'COEFF_FLAG_2_NAME'
          Footers = <>
          Title.Caption = #1058' '#1086#1073#1089'.+'#1058' '#1086#1090#1083'.|'#1060#1083#1072#1075
          Width = 100
          OnCloseDropDownForm = DBGridEh_Coeff_ColumnCloseDropDownForm
          OnOpenDropDownForm = DBGridEh_Coeff_ColumnOpenDropDownForm
          OnUpdateData = Grid_Dep_GroupColumns3UpdateData
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel2: TPanel
    Left = 505
    Top = 0
    Width = 618
    Height = 776
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 1
      Top = 201
      Width = 616
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 129
      ExplicitWidth = 891
    end
    object Splitter3: TSplitter
      Left = 1
      Top = 406
      Width = 616
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 241
      ExplicitWidth = 891
    end
    object Splitter4: TSplitter
      Left = 1
      Top = 578
      Width = 616
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = -39
      ExplicitTop = 584
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 616
      Height = 200
      Align = alTop
      Caption = 'Panel3'
      TabOrder = 0
      object Grid_Obr_Grp_Link: TDBGridEh
        Left = 1
        Top = 1
        Width = 614
        Height = 198
        Align = alClient
        AutoFitColWidths = True
        DataSource = Data_Obor_Grp_Link
        DynProps = <>
        Flat = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
                DropDownFormParams.PassParams = pspCustomValuesEh
              end>
            FieldName = 'GRP_OBR_NAME'
            Footers = <>
            Title.Caption = #1043#1088#1091#1087#1087#1072' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1081
            Width = 500
            OnCloseDropDownForm = Grid_Obr_Grp_LinkColumns0CloseDropDownForm
            OnOpenDropDownForm = Grid_Obr_Grp_LinkColumns0OpenDropDownForm
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CONST_TIME'
            Footers = <>
            Title.Caption = #1050#1086#1085#1090#1089#1090#1072#1085#1090#1072'|'#1047#1085#1072#1095#1077#1085#1080#1077
            Width = 103
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
                DropDownFormParams.PassParams = pspCustomValuesEh
              end>
            FieldName = 'COEFF_FLAG_NAME'
            Footers = <>
            Title.Caption = #1050#1086#1085#1090#1089#1090#1072#1085#1090#1072'|'#1060#1083#1072#1075
            Width = 100
            OnCloseDropDownForm = DBGridEh_Coeff_ColumnCloseDropDownForm
            OnOpenDropDownForm = DBGridEh_Coeff_ColumnOpenDropDownForm
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 206
      Width = 616
      Height = 200
      Align = alTop
      Caption = 'Panel4'
      TabOrder = 1
      object Grid_Prof_Code_Link: TDBGridEh
        Left = 1
        Top = 1
        Width = 614
        Height = 198
        Align = alClient
        AutoFitColWidths = True
        DataSource = Data_Prof_Code_Link
        DynProps = <>
        Flat = True
        SearchPanel.Enabled = True
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
                DropDownFormParams.PassParams = pspCustomValuesEh
              end>
            FieldName = 'PROF_CODE'
            Footers = <>
            Title.Caption = #1050#1086#1076' '#1087#1088#1086#1092#1077#1089#1089#1080#1080
            Width = 100
            OnCloseDropDownForm = Grid_Prof_Code_LinkColumns0CloseDropDownForm
            OnOpenDropDownForm = Grid_Prof_Code_LinkColumns0OpenDropDownForm
            OnUpdateData = DBGridEh3Columns0UpdateData
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROF_NAME'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
            Width = 500
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 411
      Width = 616
      Height = 167
      Align = alTop
      Caption = 'Panel5'
      TabOrder = 2
      object Grid_Param_Schem: TDBGridEh
        Left = 1
        Top = 1
        Width = 614
        Height = 165
        Align = alClient
        AutoFitColWidths = True
        DataSource = Data_Param_Schem
        DynProps = <>
        Flat = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
                DropDownFormParams.PassParams = pspCustomValuesEh
              end>
            FieldName = 'NAME_PARAM'
            Footers = <>
            Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088
            Width = 200
            OnCloseDropDownForm = Grid_Param_SchemColumns0CloseDropDownForm
            OnOpenDropDownForm = Grid_Param_SchemColumns0OpenDropDownForm
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MIN_VALUE'
            Footers = <>
            Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077'| '#1052#1080#1085'.'
            OnUpdateData = Grid_Param_SchemColumns1UpdateData
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MAX_VALUE'
            Footers = <>
            Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077'| '#1052#1072#1082#1089'.'
            OnUpdateData = Grid_Param_SchemColumns1UpdateData
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
                DropDownFormParams.PassParams = pspCustomValuesEh
              end>
            FieldName = 'VL_CH_PRM'
            Footers = <>
            Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077'| '#1042#1099#1073#1088#1072#1085#1085#1086#1077
            Width = 200
            OnCloseDropDownForm = Grid_Param_SchemColumns3CloseDropDownForm
            OnOpenDropDownForm = Grid_Param_SchemColumns3OpenDropDownForm
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
              end>
            FieldName = 'DEPENDS_ON_NAME'
            Footers = <>
            Title.Caption = #1047#1072#1074#1080#1089#1080#1090'| '#1054#1090
            OnCloseDropDownForm = Grid_Param_SchemColumns4CloseDropDownForm
            OnOpenDropDownForm = Grid_Param_SchemColumns4OpenDropDownForm
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
              end>
            FieldName = 'DEPENDS_PARAM_NAME'
            Footers = <>
            Title.Caption = #1047#1072#1074#1080#1089#1080#1090'|'#1053#1072#1080#1084'. '#1087#1072#1088#1072#1084#1077#1090#1088#1072
            Width = 200
            OnCloseDropDownForm = Grid_Param_SchemColumns5CloseDropDownForm
            OnOpenDropDownForm = Grid_Param_SchemColumns5OpenDropDownForm
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TIME_VALUE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1103', '#1084#1080#1085'.'
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 583
      Width = 616
      Height = 192
      Align = alClient
      Caption = 'Panel6'
      ShowCaption = False
      TabOrder = 3
      object Grid_Grp_Works: TDBGridEh
        Left = 1
        Top = 1
        Width = 614
        Height = 190
        Align = alClient
        DataSource = Data_Works
        DynProps = <>
        Flat = True
        SearchPanel.Enabled = True
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                DropDownFormParams.DropDownFormClassName = 'TDrop_D_Form_Gen_Chose'
              end>
            FieldName = 'WORK_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
            Width = 300
            OnCloseDropDownForm = Grid_Grp_WorksColumns0CloseDropDownForm
            OnOpenDropDownForm = Grid_Grp_WorksColumns0OpenDropDownForm
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WORK_TIME'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1103', '#1084#1080#1085'.'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Db_Dep_Group_Link: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid'
      'From   Ogt.V_TP_TIME_DEP_GRP_OP_LINK t'
      'Order  By t.Ceh_Code, t.Group_Name')
    Optimize = False
    SequenceField.Field = 'ID_DEP_GRP_OP_LNK'
    SequenceField.Sequence = 'Ogt.Tp_Op_Gp_Link$sqn$id'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000000C00000022000000490044005F004400450050005F00470052005000
      5F004F0050005F004C004E004B000100000000000C0000004300450048005F00
      49004400010000000000100000004300450048005F0043004F00440045000100
      000000000C0000004400450050005F0049004400010000000000100000004700
      52004F00550050005F004900440001000000000014000000470052004F005500
      50005F004E0041004D0045000100000000001400000043004F004E0053005400
      5F00540049004D0045000100000000001400000043004F004500460046005F00
      46004C00410047000100000000001E00000043004F004500460046005F004600
      4C00410047005F004E0041004D0045000100000000001800000043004F004E00
      530054005F00540049004D0045005F0032000100000000001800000043004F00
      4500460046005F0046004C00410047005F003200010000000000220000004300
      4F004500460046005F0046004C00410047005F0032005F004E0041004D004500
      010000000000}
    UniqueFields = 'ID_DEP_GRP_OP_LNK'
    UpdatingTable = 'Ogt.V_TP_TIME_DEP_GRP_OP_LINK'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    Left = 280
    Top = 576
    object Db_Dep_Group_LinkID_DEP_GRP_OP_LNK: TFloatField
      FieldName = 'ID_DEP_GRP_OP_LNK'
      Required = True
    end
    object Db_Dep_Group_LinkCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Dep_Group_LinkCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Dep_Group_LinkDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object Db_Dep_Group_LinkGROUP_ID: TFloatField
      FieldName = 'GROUP_ID'
    end
    object Db_Dep_Group_LinkGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Size = 100
    end
    object Db_Dep_Group_LinkCONST_TIME: TFloatField
      FieldName = 'CONST_TIME'
    end
    object Db_Dep_Group_LinkCOEFF_FLAG: TStringField
      FieldName = 'COEFF_FLAG'
      Size = 200
    end
    object Db_Dep_Group_LinkCOEFF_FLAG_NAME: TStringField
      FieldName = 'COEFF_FLAG_NAME'
      Size = 23
    end
    object Db_Dep_Group_LinkCONST_TIME_2: TFloatField
      FieldName = 'CONST_TIME_2'
    end
    object Db_Dep_Group_LinkCOEFF_FLAG_2: TStringField
      FieldName = 'COEFF_FLAG_2'
      Size = 200
    end
    object Db_Dep_Group_LinkCOEFF_FLAG_2_NAME: TStringField
      FieldName = 'COEFF_FLAG_2_NAME'
      Size = 23
    end
  end
  object Data_Dep_Group_Link: TDataSource
    DataSet = Db_Dep_Group_Link
    Left = 288
    Top = 520
  end
  object Db_Obor_Grp_Link: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid '
      'From   Ogt.V_TP_TIME_OBR_GRP_OP_GRP_LNK t'
      'Where  t.Op_Grp_Op_Lnk_Rw_Id = :ID_DEP_GRP_OP_LNK')
    Optimize = False
    Variables.Data = {
      0400000001000000240000003A00490044005F004400450050005F0047005200
      50005F004F0050005F004C004E004B00050000000000000000000000}
    SequenceField.Field = 'ID_RW_OBR_OP_GRP_LINK'
    SequenceField.Sequence = 'Ogt.Seq_Tp_t_Obr_Gr_o_Gr_Lnk_Id_Rw'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000070000002A000000490044005F00520057005F004F00420052005F00
      4F0050005F004700520050005F004C0049004E004B0001000000000026000000
      4F0050005F004700520050005F004F0050005F004C004E004B005F0052005700
      5F00490044000100000000001A0000004700520050005F004F00420052005F00
      520057005F0049004400010000000000180000004700520050005F004F004200
      52005F004E0041004D0045000100000000001400000043004F004E0053005400
      5F00540049004D0045000100000000001400000043004F004500460046005F00
      46004C00410047000100000000001E00000043004F004500460046005F004600
      4C00410047005F004E0041004D004500010000000000}
    UniqueFields = 'ID_RW_OBR_OP_GRP_LINK'
    Master = Db_Dep_Group_Link
    MasterFields = 'ID_DEP_GRP_OP_LNK'
    UpdatingTable = 'Ogt.V_TP_TIME_OBR_GRP_OP_GRP_LNK'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Obor_Grp_LinkNewRecord
    Left = 960
    Top = 80
    object Db_Obor_Grp_LinkID_RW_OBR_OP_GRP_LINK: TIntegerField
      FieldName = 'ID_RW_OBR_OP_GRP_LINK'
      Required = True
    end
    object Db_Obor_Grp_LinkOP_GRP_OP_LNK_RW_ID: TIntegerField
      FieldName = 'OP_GRP_OP_LNK_RW_ID'
    end
    object Db_Obor_Grp_LinkGRP_OBR_RW_ID: TIntegerField
      FieldName = 'GRP_OBR_RW_ID'
    end
    object Db_Obor_Grp_LinkGRP_OBR_NAME: TStringField
      FieldName = 'GRP_OBR_NAME'
      Size = 250
    end
    object Db_Obor_Grp_LinkCONST_TIME: TFloatField
      FieldName = 'CONST_TIME'
    end
    object Db_Obor_Grp_LinkCOEFF_FLAG: TStringField
      FieldName = 'COEFF_FLAG'
      Size = 200
    end
    object Db_Obor_Grp_LinkCOEFF_FLAG_NAME: TStringField
      FieldName = 'COEFF_FLAG_NAME'
      Size = 23
    end
  end
  object Data_Obor_Grp_Link: TDataSource
    DataSet = Db_Obor_Grp_Link
    Left = 862
    Top = 81
  end
  object Db_Prof_Code_Link: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid '
      'From   Ogt.V_Tp_Time_Op_Grp_Kodprof_Link t'
      'Where  t.Op_Gr_Ch_Link_Rw_Id = :ID_DEP_GRP_OP_LNK')
    Optimize = False
    Variables.Data = {
      0400000001000000240000003A00490044005F004400450050005F0047005200
      50005F004F0050005F004C004E004B00050000000000000000000000}
    SequenceField.Field = 'ID_ROW'
    SequenceField.Sequence = 'ogt.Seq_t_o_Gr_Kdp_l_Id_Row'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000040000000C000000490044005F0052004F0057000100000000002600
      00004F0050005F00470052005F00430048005F004C0049004E004B005F005200
      57005F004900440001000000000012000000500052004F0046005F0043004F00
      4400450001000000000012000000500052004F0046005F004E0041004D004500
      010000000000}
    UniqueFields = 'ID_ROW'
    Master = Db_Dep_Group_Link
    MasterFields = 'ID_DEP_GRP_OP_LNK'
    UpdatingTable = 'Ogt.V_Tp_Time_Op_Grp_Kodprof_Link'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Prof_Code_LinkNewRecord
    Left = 560
    Top = 264
    object Db_Prof_Code_LinkID_ROW: TIntegerField
      FieldName = 'ID_ROW'
      Required = True
    end
    object Db_Prof_Code_LinkOP_GR_CH_LINK_RW_ID: TIntegerField
      FieldName = 'OP_GR_CH_LINK_RW_ID'
    end
    object Db_Prof_Code_LinkPROF_CODE: TStringField
      FieldName = 'PROF_CODE'
      Size = 5
    end
    object Db_Prof_Code_LinkPROF_NAME: TStringField
      FieldName = 'PROF_NAME'
      Size = 100
    end
  end
  object Data_Prof_Code_Link: TDataSource
    DataSet = Db_Prof_Code_Link
    Left = 654
    Top = 262
  end
  object Db_Param_Schem: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid '
      'From   Ogt.V_Tp_Time_Op_Prms_Schem t'
      'Where  t.Op_Grp_Op_Lnk_Rw_Id = :ID_DEP_GRP_OP_LNK')
    Optimize = False
    Variables.Data = {
      0400000001000000240000003A00490044005F004400450050005F0047005200
      50005F004F0050005F004C004E004B00050000000000000000000000}
    SequenceField.Field = 'ID_RW_TIME_OP_PRM'
    SequenceField.Sequence = 'Ogt.Seq_Tp_Time_Op_Prms_Sch_Id_Rw'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000000E00000022000000490044005F00520057005F00540049004D004500
      5F004F0050005F00500052004D00010000000000260000004F0050005F004700
      520050005F004F0050005F004C004E004B005F00520057005F00490044000100
      00000000180000004F0050005F00500052004D005F00520057005F0049004400
      010000000000140000004E0041004D0045005F0050004100520041004D000100
      000000001400000054005900500045005F0050004100520041004D0001000000
      0000120000004D0049004E005F00560041004C00550045000100000000001200
      00004D00410058005F00560041004C0055004500010000000000180000004300
      48004F00530045004E005F00560041004C005500450001000000000012000000
      56004C005F00430048005F00500052004D000100000000001400000054004900
      4D0045005F00560041004C005500450001000000000014000000440045005000
      45004E00440053005F004F004E000100000000001A0000004400450050004500
      4E00440053005F004F004E005F00490044000100000000002400000044004500
      500045004E00440053005F0050004100520041004D005F004E0041004D004500
      0100000000001E00000044004500500045004E00440053005F004F004E005F00
      4E0041004D004500010000000000}
    UniqueFields = 'ID_RW_TIME_OP_PRM'
    Master = Db_Dep_Group_Link
    MasterFields = 'ID_DEP_GRP_OP_LNK'
    UpdatingTable = 'Ogt.V_Tp_Time_Op_Prms_Schem'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Param_SchemNewRecord
    Left = 552
    Top = 488
    object Db_Param_SchemID_RW_TIME_OP_PRM: TIntegerField
      FieldName = 'ID_RW_TIME_OP_PRM'
      Required = True
    end
    object Db_Param_SchemOP_GRP_OP_LNK_RW_ID: TIntegerField
      FieldName = 'OP_GRP_OP_LNK_RW_ID'
    end
    object Db_Param_SchemOP_PRM_RW_ID: TIntegerField
      FieldName = 'OP_PRM_RW_ID'
    end
    object Db_Param_SchemNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object Db_Param_SchemTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object Db_Param_SchemMIN_VALUE: TFloatField
      FieldName = 'MIN_VALUE'
    end
    object Db_Param_SchemMAX_VALUE: TFloatField
      FieldName = 'MAX_VALUE'
    end
    object Db_Param_SchemCHOSEN_VALUE: TFloatField
      FieldName = 'CHOSEN_VALUE'
    end
    object Db_Param_SchemVL_CH_PRM: TStringField
      FieldName = 'VL_CH_PRM'
      Size = 1000
    end
    object Db_Param_SchemTIME_VALUE: TFloatField
      FieldName = 'TIME_VALUE'
    end
    object Db_Param_SchemDEPENDS_ON: TStringField
      FieldName = 'DEPENDS_ON'
      Size = 10
    end
    object Db_Param_SchemDEPENDS_ON_ID: TIntegerField
      FieldName = 'DEPENDS_ON_ID'
    end
    object Db_Param_SchemDEPENDS_PARAM_NAME: TStringField
      FieldName = 'DEPENDS_PARAM_NAME'
      Size = 150
    end
    object Db_Param_SchemDEPENDS_ON_NAME: TStringField
      FieldName = 'DEPENDS_ON_NAME'
      Size = 22
    end
  end
  object Main_M_Tp_Setup_Time_Calc_Cnfg: TMainMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 678
    Top = 429
    object Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_Dubl: TMenuItem
      Caption = #1044#1091#1073#1083#1080#1082#1072#1090
      OnClick = Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_DublClick
    end
    object Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_Save: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 22
      OnClick = Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_SaveClick
    end
    object Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_Exit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 32
      OnClick = Main_M_Tp_Setup_Time_Calc_Cnfg_Btn_ExitClick
    end
  end
  object Data_Param_Schem: TDataSource
    DataSet = Db_Param_Schem
    Left = 648
    Top = 488
  end
  object Db_Works: TOracleDataSet
    SQL.Strings = (
      'Select t.*, t.rowid '
      'From   Ogt.V_Tp_Time_Wrk_Op_Grp_Link t'
      'Where  t.Op_Grp_Op_Lnk_Rw_Id = :ID_DEP_GRP_OP_LNK')
    Optimize = False
    Variables.Data = {
      0400000001000000240000003A00490044005F004400450050005F0047005200
      50005F004F0050005F004C004E004B00050000000000000000000000}
    SequenceField.Field = 'ID_RW_WRK_OP_GRP_LINK'
    SequenceField.Sequence = 'OGT.SEQ_TP_T_WRK_O_GRP_LNK_ID_RW'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      05000000090000002A000000490044005F00520057005F00570052004B005F00
      4F0050005F004700520050005F004C0049004E004B0001000000000026000000
      4F0050005F004700520050005F004F0050005F004C004E004B005F0052005700
      5F004900440001000000000012000000570052004B005F00520057005F004900
      44000100000000001200000057004F0052004B005F004E0041004D0045000100
      000000001200000057004F0052004B005F00540049004D004500010000000000
      1600000055005300450052005F0049004E005300450052005400010000000000
      1600000044004100540045005F0049004E005300450052005400010000000000
      1600000055005300450052005F004300480041004E0047004500010000000000
      1600000044004100540045005F004300480041004E0047004500010000000000}
    UniqueFields = 'ID_RW_WRK_OP_GRP_LINK'
    Master = Db_Dep_Group_Link
    MasterFields = 'ID_DEP_GRP_OP_LNK'
    UpdatingTable = 'Ogt.V_Tp_Time_Wrk_Op_Grp_Link'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_WorksNewRecord
    Left = 568
    Top = 632
    object Db_WorksID_RW_WRK_OP_GRP_LINK: TIntegerField
      FieldName = 'ID_RW_WRK_OP_GRP_LINK'
      Required = True
    end
    object Db_WorksOP_GRP_OP_LNK_RW_ID: TIntegerField
      FieldName = 'OP_GRP_OP_LNK_RW_ID'
    end
    object Db_WorksWRK_RW_ID: TIntegerField
      FieldName = 'WRK_RW_ID'
    end
    object Db_WorksWORK_NAME: TStringField
      FieldName = 'WORK_NAME'
      Size = 500
    end
    object Db_WorksWORK_TIME: TFloatField
      FieldName = 'WORK_TIME'
    end
    object Db_WorksUSER_INSERT: TStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object Db_WorksDATE_INSERT: TDateTimeField
      FieldName = 'DATE_INSERT'
    end
    object Db_WorksUSER_CHANGE: TStringField
      FieldName = 'USER_CHANGE'
      Size = 30
    end
    object Db_WorksDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
  end
  object Data_Works: TDataSource
    DataSet = Db_Works
    Left = 634
    Top = 631
  end
  object MemTableEh1: TMemTableEh
    Params = <>
    Left = 296
    Top = 280
  end
  object Db_ProfCodes: TOracleDataSet
    SQL.Strings = (
      'select * '
      'from   SVETA.M26 t'
      'left   join Ogt.V_Tp_Time_Op_Grp_Kodprof_Link p'
      'On     p.Prof_Code = t.Kodprof')
    Optimize = False
    Session = DM_Main.Session
    Left = 312
    Top = 208
  end
  object Data_ProfCodes: TDataSource
    DataSet = Db_ProfCodes
    Left = 312
    Top = 160
  end
end
