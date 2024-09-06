object Form_Per_Det: TForm_Per_Det
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1076#1077#1090#1072#1083#1077#1081' '#1082' '#1087#1077#1088#1077#1093#1086#1076#1091
  ClientHeight = 329
  ClientWidth = 855
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Main_M_Per_Det
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Grid_Per_Det: TDBGridEh
    Left = 0
    Top = 0
    Width = 855
    Height = 329
    Align = alClient
    AutoFitColWidths = True
    DataSource = Dm_Tech_Proc.Data_Per_Details
    DynProps = <>
    EditActions = [geaCopyEh, geaPasteEh, geaSelectAllEh]
    Flat = True
    OddRowColor = clMenuBar
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    PopupMenu = Pop_M_Per_Det
    SearchPanel.Enabled = True
    TabOrder = 0
    OnGetCellParams = Grid_Per_DetGetCellParams
    OnKeyUp = Grid_Per_DetKeyUp
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RW_STATUS'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOC_TP_VERS_ID'
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
        FieldName = 'ID_ROW_PER'
        Footers = <>
        Visible = False
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOM_DET'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1087'/'#1087
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1076#1077#1090#1072#1083#1077#1081
            ShortCut = 0
            Style = ebsEllipsisEh
            OnClick = Grid_Per_DetColumns3EditButtons0Click
          end>
        FieldName = 'DET_NUM'
        Footers = <>
        Title.Caption = #1064#1080#1092#1088
        Width = 229
        OnUpdateData = DBGridEh1Columns1UpdateData
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DET_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 383
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KOL'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATAIZM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Pop_M_Per_Det: TPopupMenu
    OnPopup = Pop_M_Per_DetPopup
    Left = 232
    Top = 200
    object Pop_M_Per_Det_Btn_Delete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = Pop_M_Per_Det_Btn_DeleteClick
    end
  end
  object Main_M_Per_Det: TMainMenu
    Images = Form_Tech_Proc_Main.ImageList1
    Left = 248
    Top = 120
    object Main_M_Per_Det_Btn_Copy_Det_From_Rcd: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1077#1090#1072#1083#1077#1081' '#1080#1079' '#1088#1072#1089#1094#1077#1093#1086#1074#1082#1080
      object Main_M_Per_Det_Btn_Copy_Det_From_Rcd_Ceh: TMenuItem
        Caption = #1055#1086' '#1094#1077#1093#1091
        OnClick = Main_M_Per_Det_Btn_Copy_Det_From_Rcd_CehClick
      end
      object Main_M_Per_Det_Btn_Copy_Det_From_Rcd_Chs: TMenuItem
        Caption = #1042#1099#1073#1088#1072#1090#1100
        OnClick = Main_M_Per_Det_Btn_Copy_Det_From_Rcd_ChsClick
      end
      object Main_M_Per_Det_Btn_Copy_Det_From_Rcd_All: TMenuItem
        Caption = #1042#1089#1077' '
        OnClick = Main_M_Per_Det_Btn_Copy_Det_From_Rcd_CehClick
      end
    end
    object Main_M_Per_Det_Btn_Exit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = Main_M_Per_Det_Btn_ExitClick
    end
  end
  object Db_Details_From_Rcd: TOracleDataSet
    SQL.Strings = (
      'Select Distinct a.Id_Det Det_Id,'
      '                a.Num_Det Det_Num,'
      '                a.Name_Det Det_Name,'
      '                a.Kol'
      'From   Ogt.V_Spr_Rcd a'
      'Where  a.Id_Uz = :v_Det_Id'
      '       And a.Mar like '#39'%='#39'||Ltrim( :v_Ceh_Code, '#39'0'#39')'
      '       And a.Kol > 0'
      'Order  By Num_Det')
    Optimize = False
    Variables.Data = {
      0400000002000000120000003A0056005F004400450054005F00490044000500
      0000070000003133353136350000000000160000003A0056005F004300450048
      005F0043004F00440045000500000002000000250000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000000C0000004400450054005F00490044000100000000000E00
      00004400450054005F004E0055004D0001000000000010000000440045005400
      5F004E0041004D004500010000000000060000004B004F004C00010000000000}
    Session = DM_Main.Session
    Left = 424
    Top = 184
    object Db_Details_From_RcdDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Details_From_RcdDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_Details_From_RcdDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_Details_From_RcdKOL: TFloatField
      FieldName = 'KOL'
      Required = True
    end
  end
end
