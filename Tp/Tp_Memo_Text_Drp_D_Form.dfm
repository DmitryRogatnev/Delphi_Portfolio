object Drop_D_Form_MemoText: TDrop_D_Form_MemoText
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Drop_D_Form_MemoText'
  ClientHeight = 335
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DropDownMode = True
  OnInitForm = CustomDropDownFormEhInitForm
  OnReturnParams = CustomDropDownFormEhReturnParams
  DesignSize = (
    463
    335)
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 27
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 2
    object Bnt_Apply: TButton
      Left = 1
      Top = 1
      Width = 23
      Height = 25
      Align = alLeft
      ImageIndex = 3
      Images = Form_Tech_Proc_Main.ImageList1
      TabOrder = 0
      OnClick = Bnt_ApplyClick
    end
    object Btn_Cancel: TButton
      Left = 439
      Top = 1
      Width = 23
      Height = 25
      Align = alRight
      ImageIndex = 4
      Images = Form_Tech_Proc_Main.ImageList1
      TabOrder = 1
      OnClick = Btn_CancelClick
      ExplicitLeft = 432
    end
    object Btn_Zoom_Pls: TButton
      Left = 30
      Top = 1
      Width = 25
      Height = 25
      ImageIndex = 39
      Images = Form_Tech_Proc_Main.ImageList1
      TabOrder = 2
      OnClick = Btn_Zoom_PlsClick
    end
    object Btn_Zoom_Mins: TButton
      Left = 61
      Top = 1
      Width = 25
      Height = 25
      ImageIndex = 40
      Images = Form_Tech_Proc_Main.ImageList1
      TabOrder = 3
      OnClick = Btn_Zoom_MinsClick
    end
  end
  object Mem_Text: TDBMemoEh
    Left = 0
    Top = 27
    Width = 463
    Height = 308
    Lines.Strings = (
      'Mem_Text')
    ScrollBars = ssVertical
    Align = alClient
    AutoSize = False
    DynProps = <>
    EditButtons = <>
    TabOrder = 3
    Visible = True
    WantReturns = True
  end
end
