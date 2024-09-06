object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 59
  ClientWidth = 167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SYSTEM_VAR_DB: TOracleDataSet
    Optimize = False
    Session = OracleSession1
    Left = 32
    Top = 8
  end
  object OracleSession1: TOracleSession
    LogonUsername = 'ogt'
    LogonPassword = 'ogt'
    LogonDatabase = 'SDB'
    Preferences.ConvertUTF = cuUTF8ToUTF16
    Connected = True
    Left = 112
    Top = 8
  end
end
