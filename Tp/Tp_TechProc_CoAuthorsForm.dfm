object Form_CoAuthors: TForm_CoAuthors
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form_CoAuthors'
  ClientHeight = 448
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'clWindowText'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Grid_CoAuthors: TDBGridEh
    Left = 0
    Top = 37
    Width = 510
    Height = 411
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_Doc_CoAuthors
    DynProps = <>
    EvenRowColor = clMenu
    Flat = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SearchPanel.Enabled = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USER_NAME'
        Footers = <>
        Title.Caption = #1060#1048#1054
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USER_PROF'
        Footers = <>
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 510
    Height = 37
    AutoSize = True
    ButtonHeight = 37
    ButtonWidth = 62
    Caption = 'ToolBar1'
    Images = Form_Tech_Proc_Main.ImageList1
    ShowCaptions = True
    TabOrder = 1
    object Tb_Add_User: TToolButton
      Left = 0
      Top = 0
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 59
      OnClick = Tb_Add_UserClick
    end
    object Tb_DeleteUser: TToolButton
      Left = 62
      Top = 0
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 29
      OnClick = Tb_DeleteUserClick
    end
    object Tb_Save: TToolButton
      Left = 124
      Top = 0
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 22
      OnClick = Tb_SaveClick
    end
  end
  object Db_Doc_CoAuthors: TOracleDataSet
    SQL.Strings = (
      'Select t.*, '
      
        '       Stp.Pkg_User.F_Get_User_Fio(t.Co_Author_User_Id) User_Nam' +
        'e,'
      
        '       Stp.Pkg_User.F_Get_User_Prof(t.Co_Author_User_Id) User_Pr' +
        'of,'
      '       t.rowid'
      'From   Src.v_Doc_Header_Co_Authors t'
      'Where  t.Doc_Header_Id=:In_Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      0400000001000000220000003A0049004E005F0044004F0043005F0048004500
      41004400450052005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000040000001A00000044004F0043005F00480045004100440045005200
      5F00490044000100000000001200000055005300450052005F004E0041004D00
      45000100000000001200000055005300450052005F00500052004F0046000100
      000000002200000043004F005F0041005500540048004F0052005F0055005300
      450052005F0049004400010000000000}
    UniqueFields = 'Doc_Header_Id; Co_Author_User_Id'
    UpdatingTable = 'Src.v_Doc_Header_Co_Authors'
    CommitOnPost = False
    CachedUpdates = True
    Session = DM_Main.Session
    OnNewRecord = Db_Doc_CoAuthorsNewRecord
    Left = 248
    Top = 216
    object Db_Doc_CoAuthorsDOC_HEADER_ID: TIntegerField
      FieldName = 'DOC_HEADER_ID'
      Required = True
    end
    object Db_Doc_CoAuthorsUSER_NAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_NAME'
      Size = 4000
    end
    object Db_Doc_CoAuthorsUSER_PROF: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'USER_PROF'
      Size = 4000
    end
    object Db_Doc_CoAuthorsCO_AUTHOR_USER_ID: TStringField
      FieldName = 'CO_AUTHOR_USER_ID'
      Required = True
      Size = 30
    end
  end
  object Data_Doc_CoAuthors: TDataSource
    DataSet = Db_Doc_CoAuthors
    Left = 328
    Top = 328
  end
end
