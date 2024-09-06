object Form_Per_Mat: TForm_Per_Mat
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1082' '#1087#1077#1088#1077#1093#1086#1076#1091
  ClientHeight = 420
  ClientWidth = 954
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Main_M_Per_Mat
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Grid_Per_Mat: TDBGridEh
    Left = 0
    Top = 0
    Width = 954
    Height = 420
    Align = alClient
    AutoFitColWidths = True
    DataSource = Dm_Tech_Proc.Data_Per_Materials
    DynProps = <>
    EditActions = [geaCopyEh, geaPasteEh]
    Flat = True
    OddRowColor = clMenu
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    PopupMenu = Pop_M_Per_Mat
    SearchPanel.Enabled = True
    TabOrder = 0
    OnGetCellParams = Grid_Per_MatGetCellParams
    OnKeyUp = Grid_Per_MatKeyUp
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
        FieldName = 'MAT_ID'
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
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOK_IN'
        Footers = <>
        Visible = False
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOM_MAT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1087'/'#1087
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MAT_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 376
        OnUpdateData = DBGridEh1Columns1UpdateData
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.000000'
        DynProps = <>
        EditButtons = <>
        FieldName = 'NORMA_MIN'
        Footers = <>
        Title.Caption = #1053#1086#1088#1084#1072' ('#1084#1080#1085'.)'
        Width = 120
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.000000'
        DynProps = <>
        EditButtons = <>
        FieldName = 'NORMA_MAX'
        Footers = <>
        Title.Caption = #1053#1086#1088#1084#1072' ('#1084#1072#1082#1089'.)'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MAT_VISCOS'
        Footers = <>
        Title.Caption = #1042#1103#1079#1082#1086#1089#1090#1100
        Width = 115
      end
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ED_NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1045#1076'. '#1080#1079#1084'.'
        Width = 50
        OnUpdateData = DBGridEh1Columns4UpdateData
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
  object Pop_M_Per_Mat: TPopupMenu
    OnPopup = Pop_M_Per_MatPopup
    Left = 232
    Top = 200
    object Pop_M_Btn_Delete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = Pop_M_Btn_DeleteClick
    end
  end
  object Main_M_Per_Mat: TMainMenu
    Left = 496
    Top = 280
    object Main_M_Per_Mat_Btn_Copy_Mat_From_Rcd: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074' '#1080#1079' '#1085#1086#1088#1084'. '#1088#1072#1089#1093#1086#1076#1072
      object N2: TMenuItem
        Caption = #1042#1099#1073#1088#1072#1090#1100
        OnClick = N2Click
      end
      object N1: TMenuItem
        Caption = #1042#1089#1077
        OnClick = N1Click
      end
    end
    object Main_M_Per_Mat_Btn_Exit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = Main_M_Per_Mat_Btn_ExitClick
    end
  end
  object PKG_TP_DOC: TOraclePackage
    PackageName = 'PKG_TP_DOC'
    Left = 448
    Top = 51
  end
  object Db_Norm_Mat_Det: TOracleDataSet
    SQL.Strings = (
      'Select Id_Mat Mat_Id,'
      '       Name_Mat Mat_Name,'
      '       Norma Norma_Min,'
      '       Id_Ed Ed_Id,'
      '       Code_Ed Ed_Name'
      'From   Ogt.V_Norm_Mat a'
      'Where  a.Id_Det = :v_Det_Id'
      '       And a.Code_Ceh like :v_Ceh_Code'
      '       And a.Id_Vidrab like :v_Id_Vidrab'
      '       And a.Flag = '#39'1'#39
      '       And a.Norma > 0')
    Optimize = False
    Variables.Data = {
      0400000003000000120000003A0056005F004400450054005F00490044000500
      00000000000000000000160000003A0056005F004300450048005F0043004F00
      44004500050000000000000000000000180000003A0056005F00490044005F00
      560049004400520041004200050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000050000000C0000004D00410054005F00490044000100000000001000
      00004D00410054005F004E0041004D0045000100000000000E00000045004400
      5F004E0041004D0045000100000000000A000000450044005F00490044000100
      00000000120000004E004F0052004D0041005F004D0049004E00010000000000}
    Session = DM_Main.Session
    Left = 416
    Top = 184
    object Db_Norm_Mat_DetMAT_ID: TFloatField
      FieldName = 'MAT_ID'
      Required = True
    end
    object Db_Norm_Mat_DetMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object Db_Norm_Mat_DetNORMA_MIN: TFloatField
      FieldName = 'NORMA_MIN'
      Required = True
    end
    object Db_Norm_Mat_DetED_ID: TFloatField
      FieldName = 'ED_ID'
      Required = True
    end
    object Db_Norm_Mat_DetED_NAME: TStringField
      FieldName = 'ED_NAME'
      Size = 3
    end
  end
end
