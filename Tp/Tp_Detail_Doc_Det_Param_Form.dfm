object Form_Det_Params: TForm_Det_Params
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form_Det_Params'
  ClientHeight = 105
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object VGrid_Det_Params: TDBVertGridEh
    Left = 0
    Top = 0
    Width = 483
    Height = 105
    Align = alClient
    AllowedSelections = []
    RowCategories.CategoryProps = <>
    PrintService.ColorSchema = pcsFullColorEh
    DataSource = Form_Tp_Connected_Details.Data_Doc_Details
    DrawGraphicData = True
    DrawMemoText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    OptionsEh = [dgvhHighlightFocusEh, dgvhClearSelectionEh, dgvhEnterToNextRowEh]
    ParentFont = False
    TabOrder = 0
    LabelColWidth = 152
    Rows = <
      item
        DynProps = <>
        EditButtons = <
          item
            ShortCut = 0
            Style = ebsEllipsisEh
            OnClick = VGrid_Det_ParamsRows0EditButtons0Click
          end>
        FieldName = 'DET_MAT_NAME'
        RowLabel.Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1084#1072#1090#1077#1088#1080#1072#1083
        RowLabel.Color = 12180223
        OnUpdateData = VGrid_Det_ParamsRows0UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'DET_EV_CODE'
        RowLabel.Caption = #1045#1042
        RowLabel.Color = 12180223
        OnUpdateData = DBVertGridEh1Rows1UpdateData
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'DET_MASS'
        RowLabel.Caption = #1052#1044
        RowLabel.Color = 12180223
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'DIFC_GROUP'
        RowLabel.Caption = #1043#1057
        RowLabel.Color = 12180223
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'DET_EV_ID'
        Visible = False
      end>
  end
end
