object Form20: TForm20
  Left = 0
  Top = 0
  Caption = 'Form20'
  ClientHeight = 243
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'select upper(userenv('#39'terminal'#39')) from dual')
    Optimize = False
    Session = OracleSession1
    Left = 216
    Top = 112
  end
  object OracleSession1: TOracleSession
    LogonUsername = 'mrk'
    LogonPassword = 'mrkt'
    LogonDatabase = 'SDB'
    Preferences.ConvertUTF = cuUTF8ToUTF16
    Connected = True
    Left = 352
    Top = 104
  end
end
