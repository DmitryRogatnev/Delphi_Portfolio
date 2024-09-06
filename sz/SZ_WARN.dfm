object Form21: TForm21
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1042#1085#1080#1084#1072#1085#1080#1077'!'
  ClientHeight = 171
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object MWarnINFO: TRichEdit
    Left = 0
    Top = 0
    Width = 337
    Height = 171
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      'MUserComments')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Zoom = 100
    ExplicitWidth = 377
    ExplicitHeight = 161
  end
  object WARN_INFO: TOracleDataSet
    SQL.Strings = (
      'select t.* from mrk.sz_simmil_sz t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      05000000050000000E00000053005A005F004E0055004D004200010000000000
      0E00000053005A005F0044004100540045000100000000001400000053005A00
      5F004E0041004D0045005F004F0042000100000000001600000053005A005F00
      49004200590041004C005F004F0042000100000000001400000053005A005F00
      43004F004E005400410043005400010000000000}
    Session = Form20.OracleSession1
    Left = 106
    Top = 64
    object WARN_INFOSZ_NAME_OB: TStringField
      FieldName = 'SZ_NAME_OB'
      Size = 1000
    end
    object WARN_INFOSZ_IBYAL_OB: TStringField
      FieldName = 'SZ_IBYAL_OB'
      Size = 1000
    end
    object WARN_INFOSZ_NUMB: TFloatField
      FieldName = 'SZ_NUMB'
    end
    object WARN_INFOSZ_DATE: TStringField
      FieldName = 'SZ_DATE'
      Size = 1000
    end
    object WARN_INFOSZ_CONTACT: TStringField
      FieldName = 'SZ_CONTACT'
      Size = 1000
    end
  end
end
