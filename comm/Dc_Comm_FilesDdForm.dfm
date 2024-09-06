object Drop_D_Dc_Comm_Files: TDrop_D_Dc_Comm_Files
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1060#1072#1081#1083#1099' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1103
  ClientHeight = 438
  ClientWidth = 598
  Color = clBtnFace
  Constraints.MinHeight = 34
  Constraints.MinWidth = 34
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'clWindowText'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesigned
  DropDownMode = True
  OnInitForm = CustomDropDownFormEhInitForm
  DesignSize = (
    598
    438)
  PixelsPerInch = 96
  TextHeight = 14
  object Grid_Files: TDBGridEh
    Left = 1
    Top = 2
    Width = 596
    Height = 435
    Align = alClient
    AutoFitColWidths = True
    DataSource = Form_Main_Dc_Comm.Data_Dc_Files
    DynProps = <>
    Flat = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
    ReadOnly = True
    RowHeight = 2
    RowLines = 1
    SearchPanel.Enabled = True
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 2
    Columns = <
      item
        CellButtons = <
          item
            Action = Act_OpenFile
            Images.NormalImages = Form_Main_Dc_Comm.Img_List_Dc_Comm
            Images.NormalIndex = 76
            Images.HotIndex = 76
            Images.PressedIndex = 76
            Images.DisabledIndex = 76
            Style = ebsGlyphEh
          end>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FILE_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1072#1081#1083#1072
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DATE_INSERT'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FILE_NAME'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FILE_EXT'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Dlg_Open_File: TOpenDialog
    Left = 168
    Top = 280
  end
  object Q_ActionWithFile: TOracleQuery
    SQL.Strings = (
      'Begin '
      ' If :Action = '#39'Insert'#39
      '    Or :Action = '#39'Answer'#39
      ' Then'
      '    Insert Into Src.V_Doc_Comms '
      #9#9'  ( Doc_Header_Id, '
      #9#9'    Comm_Text, '
      #9#9'    Dc_Comm_Rw_Id )'
      #9#9'Values'
      #9#9'  ( :Id_Doc_Header,'
      #9#9'    :Comm_Text,'
      #9#9'    Decode(:Id_Comm, Null, Null, 0, Null, :Id_Comm) );'
      ' Elsif :Action = '#39'Edit'#39
      ' Then'
      '   Update Src.V_Doc_Comms t'
      '   Set    t.Comm_Text = :Comm_Text'
      '   Where  t.Id_Rw_Dc_Comm = :Id_Comm;'
      ' Elsif :Action = '#39'Delete'#39
      ' Then'
      '   Delete'
      '   From   Src.V_Doc_Comms t'
      '   Where  t.Id_Rw_Dc_Comm = :Id_Comm;'
      ' End If;'
      ' Commit;'
      'End;')
    Session = DM_Main.Session
    Optimize = False
    Variables.Data = {
      04000000040000000E0000003A0041004300540049004F004E00050000000000
      0000000000001C0000003A00490044005F0044004F0043005F00480045004100
      440045005200050000000000000000000000140000003A0043004F004D004D00
      5F005400450058005400050000000000000000000000100000003A0049004400
      5F0043004F004D004D00050000000000000000000000}
    Left = 330
    Top = 328
  end
  object ActionList1: TActionList
    Images = Form_Main_Dc_Comm.Img_List_Dc_Comm
    Left = 226
    Top = 216
    object Act_OpenFile: TAction
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088
      ImageIndex = 76
      OnExecute = Act_OpenFileExecute
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 377
    Top = 173
  end
end
