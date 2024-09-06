object DM_Gen_Chs: TDM_Gen_Chs
  OldCreateOrder = False
  Height = 375
  Width = 622
  object Db_Gen_Chose: TOracleDataSet
    Optimize = False
    Session = DM_Main.Session
    Left = 65
    Top = 189
  end
  object Driver_Gen_Chose: TDataSetDriverEh
    ProviderDataSet = Db_Gen_Chose
    Left = 65
    Top = 133
  end
  object MemT_Gen_Chose: TMemTableEh
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Gen_Chose
    Left = 65
    Top = 77
  end
  object Data_Gen_Chose: TDataSource
    DataSet = MemT_Gen_Chose
    Left = 65
    Top = 21
  end
end
