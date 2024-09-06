object Form_Ceh_For_Print: TForm_Ceh_For_Print
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1073#1086#1088' '#1094#1077#1093#1072
  ClientHeight = 117
  ClientWidth = 132
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 132
    Height = 117
    Align = alClient
    AutoFitColWidths = True
    DataSource = Data_Cehs_For_Print
    DynProps = <>
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    OnKeyUp = DBGridEh1KeyUp
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CEH_CODE'
        Footers = <>
        Title.Caption = #1062#1077#1093' / '#1086#1090#1076#1077#1083' '#1076#1083#1103' '#1087#1077#1095#1072#1090#1080
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Db_Cehs_For_Print: TOracleDataSet
    SQL.Strings = (
      'Select Distinct t.Ceh_Id,'
      '                t.Ceh_Code'
      'From   Ogt.v_Tp_Ok_Mar_Parts t'
      'Where  t.Id_Doc_Tp = ( Case '
      '                      When ( Select Nvl( a.Main_Doc_Id, 0 )'
      '                             From   Ogt.v_Spr_Tp_Doc a'
      
        '                             Where  a.Id = :v_Doc_Id ) = 0 Then ' +
        ':v_Doc_Id'
      '                      When ( Select Nvl( a.Main_Doc_Id, 0 )'
      '                             From   Ogt.v_Spr_Tp_Doc a'
      
        '                             Where  a.Id = :v_Doc_Id ) <> 0 Then' +
        ' ( Select To_Char( Nvl( a.Main_Doc_Id, 0 ) )'
      
        '                                                                ' +
        '   From   Ogt.v_Spr_Tp_Doc a'
      
        '                                                                ' +
        '   Where  a.Id = :v_Doc_Id )'
      '                      End )'
      '')
    Optimize = False
    Variables.Data = {
      0400000001000000120000003A0056005F0044004F0043005F00490044000500
      00000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000020000000C0000004300450048005F00490044000100000000001000
      00004300450048005F0043004F0044004500010000000000}
    Session = DM_Main.Session
    Left = 56
    Top = 32
    object Db_Cehs_For_PrintCEH_ID: TFloatField
      FieldName = 'CEH_ID'
    end
    object Db_Cehs_For_PrintCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
  end
  object Data_Cehs_For_Print: TDataSource
    DataSet = Db_Cehs_For_Print
    Left = 40
    Top = 72
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 25
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = DBGridEh1DblClick
    end
  end
end
