object Form61: TForm61
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1047#1072#1084#1077#1085#1072' '#1089#1090#1088#1086#1082
  ClientHeight = 64
  ClientWidth = 159
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
  object Label1: TLabel
    Left = 63
    Top = 9
    Width = 33
    Height = 16
    Caption = '<--->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Btn_Flip: TButton
    Left = 8
    Top = 32
    Width = 143
    Height = 25
    Caption = #1055#1086#1084#1077#1085#1103#1090#1100' '#1084#1077#1089#1090#1072#1084#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Btn_FlipClick
  end
  object Lcb_First_Row: TDBLookupComboboxEh
    Left = 8
    Top = 5
    Width = 49
    Height = 24
    DynProps = <>
    DataField = ''
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'NOMOPER'
    ListField = 'NOMOPER'
    ListSource = DATA_OPERS
    ParentFont = False
    TabOrder = 1
    Visible = True
  end
  object Lcb_Second_Row: TDBLookupComboboxEh
    Left = 102
    Top = 5
    Width = 49
    Height = 24
    DynProps = <>
    DataField = ''
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'NOMOPER'
    ListField = 'NOMOPER'
    ListSource = DATA_OPERS
    ParentFont = False
    TabOrder = 2
    Visible = True
  end
  object DB_OPERS: TOracleDataSet
    SQL.Strings = (
      'select t.nomoper from TP_OK_DLP_TEMP t'
      'Where t.Id_Part_Tp = :Id'
      'Order by Nomoper')
    Optimize = False
    Variables.Data = {0400000001000000060000003A0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000010000000E0000004E004F004D004F00500045005200010000000000}
    CommitOnPost = False
    Session = Form2.OracleSession1
    Left = 40
    Top = 37
    object DB_OPERSNOMOPER: TFloatField
      FieldName = 'NOMOPER'
    end
  end
  object DATA_OPERS: TDataSource
    DataSet = DB_OPERS
    Left = 8
    Top = 37
  end
  object DB_OPER_PER: TOracleDataSet
    SQL.Strings = (
      'select t.nom_per from TP_OK_PER_DLP_TEMP t'
      'where t.oper = :Id'
      'And t.Id_Part_Tp = :Id_Part_Tp'
      'Order By Nom_Per')
    Optimize = False
    Variables.Data = {
      0400000002000000060000003A00490044000500000000000000000000001600
      00003A00490044005F0050004100520054005F00540050000500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      05000000010000000E0000004E004F004D005F00500045005200010000000000}
    LockingMode = lmNone
    CommitOnPost = False
    Session = Form2.OracleSession1
    Left = 83
    Top = 37
    object DB_OPER_PERNOM_PER: TFloatField
      FieldName = 'NOM_PER'
    end
  end
  object DATA_OPER_PER: TDataSource
    DataSet = DB_OPER_PER
    Left = 123
    Top = 37
  end
end
