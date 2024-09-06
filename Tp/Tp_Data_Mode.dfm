object Tp_Dm: TTp_Dm
  OldCreateOrder = False
  Height = 809
  Width = 1183
  object Data_Buffer_Per_Osn: TDataSource
    DataSet = MemT_Buffer_Per_Osn
    Left = 196
    Top = 360
  end
  object MemT_Buffer_Per_Osn: TMemTableEh
    DetailFields = 'ID_PER_ROW'
    FetchAllOnOpen = True
    MasterFields = 'ID_PER_ROW'
    MasterSource = Data_Buffer_Oper_Per
    Params = <>
    Left = 60
    Top = 360
    object MemT_Buffer_Per_OsnSHOSN_ID: TFloatField
      FieldName = 'SHOSN_ID'
      Required = True
    end
    object MemT_Buffer_Per_OsnSHOSN_NUM: TStringField
      FieldName = 'SHOSN_NUM'
      Size = 50
    end
    object MemT_Buffer_Per_OsnSHOSN_NAME: TStringField
      FieldName = 'SHOSN_NAME'
      Size = 100
    end
    object MemT_Buffer_Per_OsnID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
  end
  object MemT_Buffer_Per_Ins: TMemTableEh
    DetailFields = 'ID_PER_ROW'
    MasterFields = 'ID_PER_ROW'
    MasterSource = Data_Buffer_Oper_Per
    Params = <>
    Left = 60
    Top = 312
    object MemT_Buffer_Per_InsINSTR_ID: TFloatField
      FieldName = 'INSTR_ID'
      Required = True
    end
    object MemT_Buffer_Per_InsINSTR_NAME: TStringField
      FieldName = 'INSTR_NAME'
      Size = 100
    end
    object MemT_Buffer_Per_InsID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
  end
  object Data_Buffer_Per_Ins: TDataSource
    DataSet = MemT_Buffer_Per_Ins
    Left = 196
    Top = 312
  end
  object Data_Buffer_Per_Mat: TDataSource
    DataSet = MemT_Buffer_Per_Mat
    Left = 196
    Top = 264
  end
  object MemT_Buffer_Per_Mat: TMemTableEh
    DetailFields = 'ID_PER_ROW'
    FetchAllOnOpen = True
    MasterFields = 'ID_PER_ROW'
    MasterSource = Data_Buffer_Oper_Per
    Params = <>
    Left = 60
    Top = 264
    object MemT_Buffer_Per_MatID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
    object MemT_Buffer_Per_MatMAT_ID: TFloatField
      FieldName = 'MAT_ID'
      Required = True
    end
    object MemT_Buffer_Per_MatNOM_MAT: TIntegerField
      FieldName = 'NOM_MAT'
    end
    object MemT_Buffer_Per_MatNORMA_MIN: TFloatField
      FieldName = 'NORMA_MIN'
    end
    object MemT_Buffer_Per_MatNORMA_MAX: TFloatField
      FieldName = 'NORMA_MAX'
    end
    object MemT_Buffer_Per_MatED_ID: TFloatField
      FieldName = 'ED_ID'
    end
    object MemT_Buffer_Per_MatMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object MemT_Buffer_Per_MatED_NAME: TStringField
      FieldName = 'ED_NAME'
      Required = True
      Size = 3
    end
    object MemT_Buffer_Per_MatMAT_VISCOS: TStringField
      FieldName = 'MAT_VISCOS'
      Size = 100
    end
  end
  object MemT_Buffer_Per_Det: TMemTableEh
    DetailFields = 'ID_PER_ROW'
    FetchAllOnOpen = True
    MasterFields = 'ID_PER_ROW'
    MasterSource = Data_Buffer_Oper_Per
    Params = <>
    Left = 60
    Top = 216
    object MemT_Buffer_Per_DetID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
    object MemT_Buffer_Per_DetDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object MemT_Buffer_Per_DetDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object MemT_Buffer_Per_DetDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object MemT_Buffer_Per_DetNOM_DET: TIntegerField
      FieldName = 'NOM_DET'
    end
    object MemT_Buffer_Per_DetKOL: TFloatField
      FieldName = 'KOL'
    end
  end
  object Data_Buffer_Per_Det: TDataSource
    DataSet = MemT_Buffer_Per_Det
    Left = 196
    Top = 216
  end
  object MemT_Buffer_Oper_Per: TMemTableEh
    DetailFields = 'ID_OPER_ROW'
    FetchAllOnOpen = True
    MasterFields = 'ID_OPER_ROW'
    MasterSource = Data_Buffer_Opers
    Params = <>
    Left = 60
    Top = 120
    object MemT_Buffer_Oper_PerPER: TStringField
      FieldName = 'PER'
      Required = True
      Size = 1500
    end
    object MemT_Buffer_Oper_PerPRIM: TStringField
      FieldName = 'PRIM'
      Size = 500
    end
    object MemT_Buffer_Oper_PerTT_PER: TStringField
      FieldName = 'TT_PER'
      Size = 500
    end
    object MemT_Buffer_Oper_PerID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
    object MemT_Buffer_Oper_PerID_OPER_ROW: TFloatField
      FieldName = 'ID_OPER_ROW'
      Required = True
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object PER: TMTStringDataFieldEh
          FieldName = 'PER'
          StringDataType = fdtStringEh
          DisplayLabel = 'PER'
          DisplayWidth = 1500
          Required = True
          Size = 1500
          Transliterate = True
        end
        object PRIM: TMTStringDataFieldEh
          FieldName = 'PRIM'
          StringDataType = fdtStringEh
          DisplayLabel = 'PRIM'
          DisplayWidth = 500
          Size = 500
          Transliterate = True
        end
        object TT_PER: TMTStringDataFieldEh
          FieldName = 'TT_PER'
          StringDataType = fdtStringEh
          DisplayLabel = 'TT_PER'
          DisplayWidth = 500
          Size = 500
          Transliterate = True
        end
        object ID_PER_ROW: TMTNumericDataFieldEh
          FieldName = 'ID_PER_ROW'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'ID_PER_ROW'
          DisplayWidth = 10
          Required = True
          currency = False
          Precision = 15
        end
        object ID_OPER_ROW: TMTNumericDataFieldEh
          FieldName = 'ID_OPER_ROW'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'ID_OPER_ROW'
          DisplayWidth = 10
          Required = True
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object Data_Buffer_Oper_Per: TDataSource
    DataSet = MemT_Buffer_Oper_Per
    Left = 196
    Top = 120
  end
  object MemT_Buffer_Opers: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    Left = 68
    Top = 24
    object MemT_Buffer_OpersOPER: TFloatField
      FieldName = 'OPER_ID'
      Required = True
    end
    object MemT_Buffer_OpersOBOR: TFloatField
      FieldName = 'OBOR'
    end
    object MemT_Buffer_OpersEDIZM: TStringField
      FieldName = 'EDIZM'
      Size = 1
    end
    object MemT_Buffer_OpersPRIM: TStringField
      FieldName = 'PRIM'
      Size = 500
    end
    object MemT_Buffer_OpersTT: TStringField
      FieldName = 'TT'
      Size = 1000
    end
    object MemT_Buffer_OpersTIME_R: TFloatField
      FieldName = 'TIME_R'
    end
    object MemT_Buffer_OpersRAZR: TIntegerField
      FieldName = 'RAZR'
    end
    object MemT_Buffer_OpersTIME_M: TFloatField
      FieldName = 'TIME_M'
    end
    object MemT_Buffer_OpersTIME_N: TFloatField
      FieldName = 'TIME_N'
    end
    object MemT_Buffer_OpersTARA: TFloatField
      FieldName = 'TARA'
    end
    object MemT_Buffer_OpersMAT: TFloatField
      FieldName = 'MAT'
    end
    object MemT_Buffer_OpersTIME_SH: TFloatField
      FieldName = 'TIME_SH'
    end
    object MemT_Buffer_OpersTIME_PZ: TFloatField
      FieldName = 'TIME_PZ'
    end
    object MemT_Buffer_OpersTIME_OP: TFloatField
      FieldName = 'TIME_OP'
    end
    object MemT_Buffer_OpersTIME_O: TFloatField
      FieldName = 'TIME_O'
    end
    object MemT_Buffer_OpersTIME_V: TFloatField
      FieldName = 'TIME_V'
    end
    object MemT_Buffer_OpersTIME_OB: TFloatField
      FieldName = 'TIME_OB'
    end
    object MemT_Buffer_OpersTIME_T: TFloatField
      FieldName = 'TIME_T'
    end
    object MemT_Buffer_OpersTIME_ORG: TFloatField
      FieldName = 'TIME_ORG'
    end
    object MemT_Buffer_OpersKODPROF: TStringField
      FieldName = 'KODPROF'
      Size = 5
    end
    object MemT_Buffer_OpersOLD_ID: TFloatField
      FieldName = 'OLD_ID'
    end
    object MemT_Buffer_OpersIOT: TStringField
      FieldName = 'IOT'
      Size = 50
    end
    object MemT_Buffer_OpersUT: TStringField
      FieldName = 'UT'
      Size = 10
    end
    object MemT_Buffer_OpersOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object MemT_Buffer_OpersOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object MemT_Buffer_OpersTARA_NUM: TStringField
      FieldName = 'TARA_NUM'
      Size = 50
    end
    object MemT_Buffer_OpersTARA_NAME: TStringField
      FieldName = 'TARA_NAME'
      Size = 100
    end
    object MemT_Buffer_OpersMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object MemT_Buffer_OpersCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object MemT_Buffer_OpersID_OPER_ROW: TFloatField
      FieldName = 'ID_OPER_ROW'
      Required = True
    end
    object MemT_Buffer_OpersOPER_NUM: TStringField
      FieldName = 'OPER_NUM'
      Size = 5
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object OPER: TMTNumericDataFieldEh
          FieldName = 'OPER'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'OPER'
          DisplayWidth = 10
          Required = True
          currency = False
          Precision = 15
        end
        object OBOR: TMTNumericDataFieldEh
          FieldName = 'OBOR'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'OBOR'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object EDIZM: TMTStringDataFieldEh
          FieldName = 'EDIZM'
          StringDataType = fdtStringEh
          DisplayLabel = 'EDIZM'
          DisplayWidth = 1
          Size = 1
          Transliterate = True
        end
        object PRIM: TMTStringDataFieldEh
          FieldName = 'PRIM'
          StringDataType = fdtStringEh
          DisplayLabel = 'PRIM'
          DisplayWidth = 500
          Size = 500
          Transliterate = True
        end
        object TT: TMTStringDataFieldEh
          FieldName = 'TT'
          StringDataType = fdtStringEh
          DisplayLabel = 'TT'
          DisplayWidth = 1000
          Size = 1000
          Transliterate = True
        end
        object TIME_R: TMTNumericDataFieldEh
          FieldName = 'TIME_R'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TIME_R'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object RAZR: TMTNumericDataFieldEh
          FieldName = 'RAZR'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          DisplayLabel = 'RAZR'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TIME_M: TMTNumericDataFieldEh
          FieldName = 'TIME_M'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TIME_M'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TIME_N: TMTNumericDataFieldEh
          FieldName = 'TIME_N'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TIME_N'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TARA: TMTNumericDataFieldEh
          FieldName = 'TARA'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TARA'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object MAT: TMTNumericDataFieldEh
          FieldName = 'MAT'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'MAT'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TIME_SH: TMTNumericDataFieldEh
          FieldName = 'TIME_SH'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TIME_SH'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TIME_PZ: TMTNumericDataFieldEh
          FieldName = 'TIME_PZ'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TIME_PZ'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TIME_OP: TMTNumericDataFieldEh
          FieldName = 'TIME_OP'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TIME_OP'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TIME_O: TMTNumericDataFieldEh
          FieldName = 'TIME_O'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TIME_O'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TIME_V: TMTNumericDataFieldEh
          FieldName = 'TIME_V'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TIME_V'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TIME_OB: TMTNumericDataFieldEh
          FieldName = 'TIME_OB'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TIME_OB'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TIME_T: TMTNumericDataFieldEh
          FieldName = 'TIME_T'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TIME_T'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TIME_ORG: TMTNumericDataFieldEh
          FieldName = 'TIME_ORG'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'TIME_ORG'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object KODPROF: TMTStringDataFieldEh
          FieldName = 'KODPROF'
          StringDataType = fdtStringEh
          DisplayLabel = 'KODPROF'
          DisplayWidth = 5
          Size = 5
          Transliterate = True
        end
        object OLD_ID: TMTNumericDataFieldEh
          FieldName = 'OLD_ID'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'OLD_ID'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object IOT: TMTStringDataFieldEh
          FieldName = 'IOT'
          StringDataType = fdtStringEh
          DisplayLabel = 'IOT'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object UT: TMTStringDataFieldEh
          FieldName = 'UT'
          StringDataType = fdtStringEh
          DisplayLabel = 'UT'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object OPER_NAME: TMTStringDataFieldEh
          FieldName = 'OPER_NAME'
          StringDataType = fdtStringEh
          DisplayLabel = 'OPER_NAME'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object OBOR_NAME: TMTStringDataFieldEh
          FieldName = 'OBOR_NAME'
          StringDataType = fdtStringEh
          DisplayLabel = 'OBOR_NAME'
          DisplayWidth = 201
          Size = 201
          Transliterate = True
        end
        object TARA_NUM: TMTStringDataFieldEh
          FieldName = 'TARA_NUM'
          StringDataType = fdtStringEh
          DisplayLabel = 'TARA_NUM'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object TARA_NAME: TMTStringDataFieldEh
          FieldName = 'TARA_NAME'
          StringDataType = fdtStringEh
          DisplayLabel = 'TARA_NAME'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object MAT_NAME: TMTStringDataFieldEh
          FieldName = 'MAT_NAME'
          StringDataType = fdtStringEh
          DisplayLabel = 'MAT_NAME'
          DisplayWidth = 150
          Size = 150
          Transliterate = True
        end
        object CEH_CODE: TMTStringDataFieldEh
          FieldName = 'CEH_CODE'
          StringDataType = fdtStringEh
          DisplayLabel = 'CEH_CODE'
          DisplayWidth = 2
          Size = 2
          Transliterate = True
        end
        object ID_OPER_ROW: TMTNumericDataFieldEh
          FieldName = 'ID_OPER_ROW'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'ID_OPER_ROW'
          DisplayWidth = 10
          Required = True
          currency = False
          Precision = 15
        end
        object OPER_NUM: TMTStringDataFieldEh
          FieldName = 'OPER_NUM'
          StringDataType = fdtStringEh
          DisplayLabel = 'OPER_NUM'
          DisplayWidth = 5
          Size = 5
          Transliterate = True
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object Data_Buffer_Opers: TDataSource
    DataSet = MemT_Buffer_Opers
    Left = 196
    Top = 24
  end
  object MemT_Buffer: TMemTableEh
    Params = <>
    Left = 56
    Top = 432
  end
  object Data_Copy_Opers: TDataSource
    DataSet = MemT_Copy_Opers
    Left = 416
    Top = 72
  end
  object Data_Copy_Oper_Per: TDataSource
    DataSet = MemT_Copy_Oper_Per
    Left = 417
    Top = 120
  end
  object Data_Copy_Per_Det: TDataSource
    DataSet = MemT_Copy_Per_Det
    Left = 416
    Top = 216
  end
  object Data_Copy_Per_Mat: TDataSource
    DataSet = MemT_Copy_Per_Mat
    Left = 416
    Top = 264
  end
  object Data_Copy_Per_Ins: TDataSource
    DataSet = MemT_Copy_Per_Ins
    Left = 416
    Top = 312
  end
  object Data_Copy_Per_Osn: TDataSource
    DataSet = MemT_Copy_Per_Osn
    Left = 416
    Top = 360
  end
  object MemT_Copy_Per_Ins: TMemTableEh
    DetailFields = 'ID_PER_ROW'
    FetchAllOnOpen = True
    MasterFields = 'ID_PER_ROW'
    MasterSource = Data_Copy_Oper_Per
    Params = <>
    DataDriver = Driver_Copy_Per_Ins
    Left = 568
    Top = 312
    object MemT_Copy_Per_InsINSTR_ID: TFloatField
      FieldName = 'INSTR_ID'
      Required = True
    end
    object MemT_Copy_Per_InsINSTR_NAME: TStringField
      FieldName = 'INSTR_NAME'
      Size = 100
    end
    object MemT_Copy_Per_InsID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
  end
  object MemT_Copy_Per_Osn: TMemTableEh
    DetailFields = 'ID_PER_ROW'
    FetchAllOnOpen = True
    MasterFields = 'ID_PER_ROW'
    MasterSource = Data_Copy_Oper_Per
    Params = <>
    DataDriver = Driver_Copy_Per_Osn
    Left = 568
    Top = 360
    object MemT_Copy_Per_OsnSHOSN_ID: TFloatField
      FieldName = 'SHOSN_ID'
      Required = True
    end
    object MemT_Copy_Per_OsnSHOSN_NUM: TStringField
      FieldName = 'SHOSN_NUM'
      Size = 50
    end
    object MemT_Copy_Per_OsnSHOSN_NAME: TStringField
      FieldName = 'SHOSN_NAME'
      Size = 100
    end
    object MemT_Copy_Per_OsnID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
  end
  object MemT_Copy_Per_Mat: TMemTableEh
    DetailFields = 'ID_PER_ROW'
    FetchAllOnOpen = True
    MasterFields = 'ID_PER_ROW'
    MasterSource = Data_Copy_Oper_Per
    Params = <>
    DataDriver = Driver_Copy_Per_Mat
    Left = 568
    Top = 264
    object MemT_Copy_Per_MatID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
    object MemT_Copy_Per_MatMAT_ID: TFloatField
      FieldName = 'MAT_ID'
      Required = True
    end
    object MemT_Copy_Per_MatNOM_MAT: TIntegerField
      FieldName = 'NOM_MAT'
    end
    object MemT_Copy_Per_MatNORMA_MIN: TFloatField
      FieldName = 'NORMA_MIN'
    end
    object MemT_Copy_Per_MatNORMA_MAX: TFloatField
      FieldName = 'NORMA_MAX'
    end
    object MemT_Copy_Per_MatED_ID: TFloatField
      FieldName = 'ED_ID'
    end
    object MemT_Copy_Per_MatMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object MemT_Copy_Per_MatED_NAME: TStringField
      FieldName = 'ED_NAME'
      Required = True
      Size = 3
    end
    object MemT_Copy_Per_MatMAT_VISCOS: TStringField
      FieldName = 'MAT_VISCOS'
      Size = 100
    end
  end
  object MemT_Copy_Per_Det: TMemTableEh
    DetailFields = 'ID_PER_ROW'
    FetchAllOnOpen = True
    MasterFields = 'ID_PER_ROW'
    MasterSource = Data_Copy_Oper_Per
    Params = <>
    DataDriver = Driver_Copy_Per_Det
    Left = 568
    Top = 216
    object MemT_Copy_Per_DetID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
    object MemT_Copy_Per_DetDET_ID: TFloatField
      FieldName = 'DET_ID'
      Required = True
    end
    object MemT_Copy_Per_DetDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object MemT_Copy_Per_DetDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object MemT_Copy_Per_DetNOM_DET: TIntegerField
      FieldName = 'NOM_DET'
    end
    object MemT_Copy_Per_DetKOL: TFloatField
      FieldName = 'KOL'
    end
  end
  object MemT_Copy_Oper_Per: TMemTableEh
    DetailFields = 'ID_OPER_ROW'
    FetchAllOnOpen = True
    MasterFields = 'ID_OPER_ROW'
    MasterSource = Data_Copy_Opers
    Params = <>
    DataDriver = Driver_Copy_Oper_Per
    Left = 569
    Top = 120
    object MemT_Copy_Oper_PerPER: TStringField
      FieldName = 'PER'
      Required = True
      Size = 1500
    end
    object MemT_Copy_Oper_PerPRIM: TStringField
      FieldName = 'PRIM'
      Size = 500
    end
    object MemT_Copy_Oper_PerTT_PER: TStringField
      FieldName = 'TT_PER'
      Size = 500
    end
    object MemT_Copy_Oper_PerID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
    object MemT_Copy_Oper_PerID_OPER_ROW: TFloatField
      FieldName = 'ID_OPER_ROW'
      Required = True
    end
  end
  object MemT_Copy_Opers: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = Driver_Copy_Opers
    Left = 568
    Top = 72
    object MemT_Copy_OpersOPER: TFloatField
      FieldName = 'OPER_ID'
      Required = True
    end
    object MemT_Copy_OpersOBOR: TFloatField
      FieldName = 'OBOR'
    end
    object MemT_Copy_OpersEDIZM: TStringField
      FieldName = 'EDIZM'
      Size = 1
    end
    object MemT_Copy_OpersPRIM: TStringField
      FieldName = 'PRIM'
      Size = 500
    end
    object MemT_Copy_OpersTT: TStringField
      FieldName = 'TT'
      Size = 1000
    end
    object MemT_Copy_OpersTIME_R: TFloatField
      FieldName = 'TIME_R'
    end
    object MemT_Copy_OpersRAZR: TIntegerField
      FieldName = 'RAZR'
    end
    object MemT_Copy_OpersTIME_M: TFloatField
      FieldName = 'TIME_M'
    end
    object MemT_Copy_OpersTIME_N: TFloatField
      FieldName = 'TIME_N'
    end
    object MemT_Copy_OpersTARA: TFloatField
      FieldName = 'TARA'
    end
    object MemT_Copy_OpersMAT: TFloatField
      FieldName = 'MAT'
    end
    object MemT_Copy_OpersTIME_SH: TFloatField
      FieldName = 'TIME_SH'
    end
    object MemT_Copy_OpersTIME_PZ: TFloatField
      FieldName = 'TIME_PZ'
    end
    object MemT_Copy_OpersTIME_OP: TFloatField
      FieldName = 'TIME_OP'
    end
    object MemT_Copy_OpersTIME_O: TFloatField
      FieldName = 'TIME_O'
    end
    object MemT_Copy_OpersTIME_V: TFloatField
      FieldName = 'TIME_V'
    end
    object MemT_Copy_OpersTIME_OB: TFloatField
      FieldName = 'TIME_OB'
    end
    object MemT_Copy_OpersTIME_T: TFloatField
      FieldName = 'TIME_T'
    end
    object MemT_Copy_OpersTIME_ORG: TFloatField
      FieldName = 'TIME_ORG'
    end
    object MemT_Copy_OpersKODPROF: TStringField
      FieldName = 'KODPROF'
      Size = 5
    end
    object MemT_Copy_OpersOLD_ID: TFloatField
      FieldName = 'OLD_ID'
    end
    object MemT_Copy_OpersIOT: TStringField
      FieldName = 'IOT'
      Size = 50
    end
    object MemT_Copy_OpersUT: TStringField
      FieldName = 'UT'
      Size = 10
    end
    object MemT_Copy_OpersOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object MemT_Copy_OpersOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object MemT_Copy_OpersTARA_NUM: TStringField
      FieldName = 'TARA_NUM'
      Size = 50
    end
    object MemT_Copy_OpersTARA_NAME: TStringField
      FieldName = 'TARA_NAME'
      Size = 100
    end
    object MemT_Copy_OpersMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object MemT_Copy_OpersCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object MemT_Copy_OpersID_OPER_ROW: TFloatField
      FieldName = 'ID_OPER_ROW'
      Required = True
    end
    object MemT_Copy_OpersOPER_NUM: TStringField
      FieldName = 'OPER_NUM'
      Size = 5
    end
  end
  object Driver_Copy_Opers: TDataSetDriverEh
    ProviderDataSet = Db_Copy_Doc_Info_Opers
    Left = 713
    Top = 73
  end
  object Driver_Copy_Oper_Per: TDataSetDriverEh
    ProviderDataSet = Db_Copy_Doc_Info_Oper_Per
    Left = 713
    Top = 121
  end
  object Driver_Copy_Per_Det: TDataSetDriverEh
    ProviderDataSet = Db_Copy_Doc_Info_Oper_Per_Det
    Left = 713
    Top = 217
  end
  object Driver_Copy_Per_Mat: TDataSetDriverEh
    ProviderDataSet = Db_Copy_Doc_Info_Oper_Per_Mat
    Left = 712
    Top = 264
  end
  object Driver_Copy_Per_Ins: TDataSetDriverEh
    ProviderDataSet = Db_Copy_Doc_Info_Oper_Per_Ins
    Left = 713
    Top = 313
  end
  object Driver_Copy_Per_Osn: TDataSetDriverEh
    ProviderDataSet = Db_Copy_Doc_Info_Oper_Per_Osn
    Left = 712
    Top = 360
  end
  object Db_Copy_Doc_Info_Oper_Per_Osn: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Row_Per Id_Per_Row,'
      '       t.Shosn_Id,'
      '       t.Shosn_Num,'
      '       t.Shosn_Name'
      'From   Ogt.v_Tp_Ok_Per_Osn_Dlp t'
      'Join  Ogt.V_Spr_Tp_Doc Inf'
      'On    Inf.Id = t.Dok_In'
      '      And Inf.Id_Vers = t.Doc_Tp_Vers_Id'
      '      And Inf.Doc_Header_Id = :Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000400000010000000530048004F0053004E005F004900440001000000
      000012000000530048004F0053004E005F004E0055004D000100000000001400
      0000530048004F0053004E005F004E0041004D00450001000000000014000000
      490044005F005000450052005F0052004F005700010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 880
    Top = 312
    object Db_Copy_Doc_Info_Oper_Per_OsnSHOSN_ID: TFloatField
      FieldName = 'SHOSN_ID'
      Required = True
    end
    object Db_Copy_Doc_Info_Oper_Per_OsnSHOSN_NUM: TStringField
      FieldName = 'SHOSN_NUM'
      Size = 50
    end
    object Db_Copy_Doc_Info_Oper_Per_OsnSHOSN_NAME: TStringField
      FieldName = 'SHOSN_NAME'
      Size = 100
    end
    object Db_Copy_Doc_Info_Oper_Per_OsnID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
  end
  object Db_Copy_Doc_Info_Oper_Per_Ins: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Row_Per Id_Per_Row,'
      '       t.Instr_Id,'
      '       t.Instr_Name'
      'From   Ogt.v_Tp_Ok_Per_Ins_Dlp t'
      'Join  Ogt.V_Spr_Tp_Doc Inf'
      'On    Inf.Id = t.Dok_In'
      '      And Inf.Id_Vers = t.Doc_Tp_Vers_Id'
      '      And Inf.Doc_Header_Id = :Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000001000000049004E005300540052005F004900440001000000
      00001400000049004E005300540052005F004E0041004D004500010000000000
      14000000490044005F005000450052005F0052004F005700010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 880
    Top = 360
    object Db_Copy_Doc_Info_Oper_Per_InsINSTR_ID: TFloatField
      FieldName = 'INSTR_ID'
      Required = True
    end
    object Db_Copy_Doc_Info_Oper_Per_InsINSTR_NAME: TStringField
      FieldName = 'INSTR_NAME'
      Size = 100
    end
    object Db_Copy_Doc_Info_Oper_Per_InsID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
  end
  object Db_Copy_Doc_Info_Oper_Per_Mat: TOracleDataSet
    SQL.Strings = (
      'Select  t.Id_Row_Per Id_Per_Row,'
      '        t.Mat_Id,'
      '        t.Nom_Mat,'
      '        t.Norma_Min,'
      '        t.Norma_Max,'
      '        t.Ed_Id,'
      '        t.Mat_Name,'
      '        t.Ed_Name,'
      '        t.Mat_Viscos'
      'From   Ogt.v_Tp_Ok_Per_Mat_Dlp t'
      'Join  Ogt.V_Spr_Tp_Doc Inf'
      'On    Inf.Id = t.Dok_In'
      '      And Inf.Id_Vers = t.Doc_Tp_Vers_Id'
      '      And Inf.Doc_Header_Id = :Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000090000000C0000004D00410054005F00490044000100000000000E00
      00004E004F004D005F004D0041005400010000000000120000004E004F005200
      4D0041005F004D0049004E00010000000000120000004E004F0052004D004100
      5F004D00410058000100000000000A000000450044005F004900440001000000
      0000100000004D00410054005F004E0041004D0045000100000000000E000000
      450044005F004E0041004D004500010000000000140000004D00410054005F00
      56004900530043004F00530001000000000014000000490044005F0050004500
      52005F0052004F005700010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 880
    Top = 264
  end
  object Db_Copy_Doc_Info_Oper_Per_Det: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Row_Per Id_Per_Row,'
      '       t.Det_Id,'
      '       t.Det_Num,'
      '       t.Det_Name,'
      '       t.Nom_Det,'
      '       t.Kol'
      'From   Ogt.v_Tp_Ok_Per_Det_Dlp t'
      'Join  Ogt.V_Spr_Tp_Doc Inf'
      'On    Inf.Id = t.Dok_In'
      '      And Inf.Id_Vers = t.Doc_Tp_Vers_Id'
      '      And Inf.Doc_Header_Id = :Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000060000000C0000004400450054005F00490044000100000000000E00
      00004400450054005F004E0055004D0001000000000010000000440045005400
      5F004E0041004D0045000100000000000E0000004E004F004D005F0044004500
      5400010000000000060000004B004F004C000100000000001400000049004400
      5F005000450052005F0052004F005700010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 880
    Top = 216
  end
  object Db_Copy_Doc_Info_Oper_Per: TOracleDataSet
    SQL.Strings = (
      'Select  t.Id as Id_Per_Row,'
      '        t.Id_Row_Oper Id_Oper_Row,'
      '        t.Per,'
      '        t.Prim,'
      '        t.Tt_Per'
      'from Ogt.V_TP_OK_PER_DLP t'
      'Join  Ogt.V_Spr_Tp_Doc Inf'
      'On    Inf.Id = t.Dok_In'
      '      And Inf.Id_Vers = t.Doc_Tp_Vers_Id'
      '      And Inf.Doc_Header_Id = :Doc_Header_Id'
      'Order by Nom_Per')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000005000000060000005000450052000100000000000800000050005200
      49004D000100000000000C000000540054005F00500045005200010000000000
      14000000490044005F005000450052005F0052004F0057000100000000001600
      0000490044005F004F005000450052005F0052004F005700010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 880
    Top = 120
    object Db_Copy_Doc_Info_Oper_PerPER: TStringField
      FieldName = 'PER'
      Required = True
      Size = 1500
    end
    object Db_Copy_Doc_Info_Oper_PerPRIM: TStringField
      FieldName = 'PRIM'
      Size = 500
    end
    object Db_Copy_Doc_Info_Oper_PerTT_PER: TStringField
      FieldName = 'TT_PER'
      Size = 500
    end
    object Db_Copy_Doc_Info_Oper_PerID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
    object Db_Copy_Doc_Info_Oper_PerID_OPER_ROW: TFloatField
      FieldName = 'ID_OPER_ROW'
      Required = True
    end
  end
  object Db_Copy_Doc_Info_Opers: TOracleDataSet
    SQL.Strings = (
      'select  t.Id_Row_Oper As Id_Oper_Row,'
      
        '        To_Char( ( Row_number() Over(Order By  Part.Row_Num, t.N' +
        'omoper ) ), '#39'000'#39' )||'#39'0'#39' Oper_Num, '
      '        t.Oper_Id,'
      '        t.Obor,'
      '        t.Ceh_Code,'
      '        t.Edizm,'
      '        t.Prim,'
      '        t.Tt,'
      '        t.Time_r,'
      '        t.Razr,'
      '        t.Time_m,'
      '        t.Time_n,'
      '        t.Tara,'
      '        t.Mat,'
      '        t.Time_Sh,'
      '        t.Time_Pz,'
      '        t.Time_Op,'
      '        t.Time_o,'
      '        t.Time_v,'
      '        t.Time_Ob,'
      '        t.Time_t,'
      '        t.Time_Org,'
      '        t.Kodprof,'
      '        t.Old_Id,'
      '        t.Iot,'
      '        t.Ut,'
      '        t.Oper_Name,'
      '        t.Obor_Name,'
      '        t.Tara_Num,'
      '        t.Tara_Name,'
      '        t.Mat_Name'
      'From  Ogt.V_TP_OK_DLP t'
      'Join  Ogt.V_Spr_Tp_Doc Inf'
      'On    Inf.Id = t.Id_Doc_Tp'
      '      And Inf.Id_Vers = t.Doc_Tp_Vers_Id'
      '      And Inf.Doc_Header_Id = :Doc_Header_Id'
      'Join (Select a.Id, a.Id_Rw_Vers, a.Row_Num '
      '      From Ogt.V_Tp_Ok_Mar_Parts a'
      '      Where    a.Id_Doc_Tp = (Select (Case '
      
        '                                              When b.Main_Doc_Id' +
        ' Is Null'
      '                                              Then b.Id'
      '                                              Else b.Main_doc_Id'
      '                                            End)'
      '                                    From   Ogt.v_Spr_tp_doc b'
      
        '                                    Where  b.Doc_Header_Id = :Do' +
        'c_Header_Id) ) Part'
      'On    Part.Id=t.Id_Part_Tp'
      
        '      And Part.Id_Rw_Vers = Ogt.pkg_tp_doc.f_get_item_idvers_for' +
        'doc(in_doc_header_id => :Doc_Header_Id,'
      
        '                                                                ' +
        '    in_id_item => Part.Id,'
      
        '                                                                ' +
        '    item_flag => '#39'Part'#39')'
      'Order by Part.Row_Num, t.Nomoper')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      050000001F000000120000004F005000450052005F004E0041004D0045000100
      00000000080000004F0042004F0052000100000000000A000000450044004900
      5A004D00010000000000080000005000520049004D0001000000000004000000
      540054000100000000000C000000540049004D0045005F005200010000000000
      08000000520041005A0052000100000000000C000000540049004D0045005F00
      4D000100000000000C000000540049004D0045005F004E000100000000000800
      00005400410052004100010000000000060000004D0041005400010000000000
      0E000000540049004D0045005F00530048000100000000000E00000054004900
      4D0045005F0050005A000100000000000E000000540049004D0045005F004F00
      50000100000000000C000000540049004D0045005F004F000100000000000C00
      0000540049004D0045005F0056000100000000000E000000540049004D004500
      5F004F0042000100000000000C000000540049004D0045005F00540001000000
      000010000000540049004D0045005F004F00520047000100000000000E000000
      4B004F004400500052004F0046000100000000000C0000004F004C0044005F00
      490044000100000000000600000049004F005400010000000000040000005500
      5400010000000000120000004F0042004F0052005F004E0041004D0045000100
      000000001000000054004100520041005F004E0055004D000100000000001200
      000054004100520041005F004E0041004D004500010000000000100000004D00
      410054005F004E0041004D004500010000000000100000004300450048005F00
      43004F004400450001000000000016000000490044005F004F00500045005200
      5F0052004F005700010000000000100000004F005000450052005F004E005500
      4D000100000000000E0000004F005000450052005F0049004400010000000000}
    CountAllRecords = True
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 880
    Top = 72
    object Db_Copy_Doc_Info_OpersID_OPER_ROW: TFloatField
      FieldName = 'ID_OPER_ROW'
      Required = True
    end
    object Db_Copy_Doc_Info_OpersOPER_NUM: TStringField
      FieldName = 'OPER_NUM'
      Size = 5
    end
    object Db_Copy_Doc_Info_OpersOPER_ID: TFloatField
      FieldName = 'OPER_ID'
      Required = True
    end
    object Db_Copy_Doc_Info_OpersOBOR: TFloatField
      FieldName = 'OBOR'
    end
    object Db_Copy_Doc_Info_OpersCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Copy_Doc_Info_OpersEDIZM: TStringField
      FieldName = 'EDIZM'
      Size = 1
    end
    object Db_Copy_Doc_Info_OpersPRIM: TStringField
      FieldName = 'PRIM'
      Size = 1000
    end
    object Db_Copy_Doc_Info_OpersTT: TStringField
      FieldName = 'TT'
      Size = 1000
    end
    object Db_Copy_Doc_Info_OpersTIME_R: TFloatField
      FieldName = 'TIME_R'
    end
    object Db_Copy_Doc_Info_OpersRAZR: TIntegerField
      FieldName = 'RAZR'
    end
    object Db_Copy_Doc_Info_OpersTIME_M: TFloatField
      FieldName = 'TIME_M'
    end
    object Db_Copy_Doc_Info_OpersTIME_N: TFloatField
      FieldName = 'TIME_N'
    end
    object Db_Copy_Doc_Info_OpersTARA: TFloatField
      FieldName = 'TARA'
    end
    object Db_Copy_Doc_Info_OpersMAT: TFloatField
      FieldName = 'MAT'
    end
    object Db_Copy_Doc_Info_OpersTIME_SH: TFloatField
      FieldName = 'TIME_SH'
    end
    object Db_Copy_Doc_Info_OpersTIME_PZ: TFloatField
      FieldName = 'TIME_PZ'
    end
    object Db_Copy_Doc_Info_OpersTIME_OP: TFloatField
      FieldName = 'TIME_OP'
    end
    object Db_Copy_Doc_Info_OpersTIME_O: TFloatField
      FieldName = 'TIME_O'
    end
    object Db_Copy_Doc_Info_OpersTIME_V: TFloatField
      FieldName = 'TIME_V'
    end
    object Db_Copy_Doc_Info_OpersTIME_OB: TFloatField
      FieldName = 'TIME_OB'
    end
    object Db_Copy_Doc_Info_OpersTIME_T: TFloatField
      FieldName = 'TIME_T'
    end
    object Db_Copy_Doc_Info_OpersTIME_ORG: TFloatField
      FieldName = 'TIME_ORG'
    end
    object Db_Copy_Doc_Info_OpersKODPROF: TStringField
      FieldName = 'KODPROF'
      Size = 5
    end
    object Db_Copy_Doc_Info_OpersOLD_ID: TFloatField
      FieldName = 'OLD_ID'
    end
    object Db_Copy_Doc_Info_OpersIOT: TStringField
      FieldName = 'IOT'
      Size = 50
    end
    object Db_Copy_Doc_Info_OpersUT: TStringField
      FieldName = 'UT'
      Size = 10
    end
    object Db_Copy_Doc_Info_OpersOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object Db_Copy_Doc_Info_OpersOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object Db_Copy_Doc_Info_OpersTARA_NUM: TStringField
      FieldName = 'TARA_NUM'
      Size = 50
    end
    object Db_Copy_Doc_Info_OpersTARA_NAME: TStringField
      FieldName = 'TARA_NAME'
      Size = 100
    end
    object Db_Copy_Doc_Info_OpersMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
  end
  object Db_Copy_Old_Info_Oper_Per_Ins: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Per Id_Per_Row,'
      '       t.id_instr Instr_Id,'
      '       t.Instr_Txt Instr_Name'
      'From   Ogt.Tp_Ok_Per_Instr_Txt t'
      'Where  t.Tp_In = :Id_Doc_Tp')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A00490044005F0044004F0043005F0054005000
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000030000001000000049004E005300540052005F004900440001000000
      00001400000049004E005300540052005F004E0041004D004500010000000000
      14000000490044005F005000450052005F0052004F005700010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 1065
    Top = 360
    object Db_Copy_Old_Info_Oper_Per_InsID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
    end
    object Db_Copy_Old_Info_Oper_Per_InsINSTR_ID: TFloatField
      FieldName = 'INSTR_ID'
    end
    object Db_Copy_Old_Info_Oper_Per_InsINSTR_NAME: TStringField
      FieldName = 'INSTR_NAME'
      Size = 100
    end
  end
  object Db_Copy_Old_Info_Oper_Per_Osn: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Per Id_Per_Row,'
      '       ( Select Id'
      '         From   Ogt.Spr_Osn_Txt'
      '         Where  Shosn = t.Shosn_Txt'
      
        '                And Nvl( Nosn, '#39'0'#39') = Nvl( t.Nosn, '#39'0'#39') )Shosn_I' +
        'd,'
      '       t.Shosn_Txt Shosn_Num,'
      '       t.Nosn Shosn_Name'
      'From   Ogt.Tp_Ok_Per_Osn_Txt t'
      'Where  t.Tp_In = :Id_Doc_Tp')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A00490044005F0044004F0043005F0054005000
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000400000010000000530048004F0053004E005F004900440001000000
      000012000000530048004F0053004E005F004E0055004D000100000000001400
      0000530048004F0053004E005F004E0041004D00450001000000000014000000
      490044005F005000450052005F0052004F005700010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 1065
    Top = 320
    object Db_Copy_Old_Info_Oper_Per_OsnID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
    end
    object Db_Copy_Old_Info_Oper_Per_OsnSHOSN_ID: TFloatField
      FieldName = 'SHOSN_ID'
    end
    object Db_Copy_Old_Info_Oper_Per_OsnSHOSN_NUM: TStringField
      FieldName = 'SHOSN_NUM'
      Size = 50
    end
    object Db_Copy_Old_Info_Oper_Per_OsnSHOSN_NAME: TStringField
      FieldName = 'SHOSN_NAME'
      Size = 100
    end
  end
  object Db_Copy_Old_Info_Opers: TOracleDataSet
    SQL.Strings = (
      'select  t.Id As Id_Oper_Row,'
      '        t.Nomoper Oper_Num,'
      '        ( Case'
      '            When t.Ceh_Txt = '#39'02'#39
      '            Then '#39'01'#39
      '            Else t.Ceh_Txt'
      '          End ) Ceh_Code,'
      '        t.Edizm,'
      '        t.Prim,'
      '        t.Tt,'
      '        t.Time_r,'
      '        t.Razr,'
      '        t.Time_m,'
      '        t.Time_n,'
      '        t.Time_Sh,'
      '        t.Time_Pz,'
      '        t.Time_Op,'
      '        t.Time_o,'
      '        t.Time_v,'
      '        t.Time_Ob,'
      '        t.Time_t,'
      '        t.Time_Org,'
      '        t.Kodprof,'
      '        t.Old_Id,'
      '        t.Iot_Txt Iot,'
      '        t.Ut,'
      '        t.Oper_Id Oper_Id,'
      '        t.Oper_Txt Oper_Name,'
      '        t.Tt_Txt Oper_Tt,'
      '        t.Obor_Txt Obor_Name,'
      '        t.Id_Obor Obor,'
      '        ( Select a.Id'
      '          From   Ogt.V$Spr_Tara a'
      '          Where  a.Tara = t.Tara'
      '                 And a.Naim_T = t.Naim_T ) Tara,'
      '        t.Tara Tara_Num,'
      '        t.Naim_T Tara_Name,     '
      '        t.Mat_Txt Mat_Name,'
      '        ( Select Id '
      '          From   Ogt.Spr_Matx_Txt'
      '          Where  Mat = t.Mat_Txt ) Mat'
      'From  Ogt.TP_OK_TXT t'
      'Where t.Tp = :Id_Doc_Tp'
      'Order by Nomoper')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A00490044005F0044004F0043005F0054005000
      050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0500000020000000120000004F005000450052005F004E0041004D0045000100
      000000000A0000004500440049005A004D000100000000000800000050005200
      49004D0001000000000004000000540054000100000000000C00000054004900
      4D0045005F00520001000000000008000000520041005A005200010000000000
      0C000000540049004D0045005F004D000100000000000C000000540049004D00
      45005F004E000100000000000E000000540049004D0045005F00530048000100
      000000000E000000540049004D0045005F0050005A000100000000000E000000
      540049004D0045005F004F0050000100000000000C000000540049004D004500
      5F004F000100000000000C000000540049004D0045005F005600010000000000
      0E000000540049004D0045005F004F0042000100000000000C00000054004900
      4D0045005F00540001000000000010000000540049004D0045005F004F005200
      47000100000000000E0000004B004F004400500052004F004600010000000000
      0C0000004F004C0044005F00490044000100000000000600000049004F005400
      0100000000000400000055005400010000000000120000004F0042004F005200
      5F004E0041004D0045000100000000001000000054004100520041005F004E00
      55004D000100000000001200000054004100520041005F004E0041004D004500
      010000000000100000004D00410054005F004E0041004D004500010000000000
      080000004F0042004F0052000100000000000E0000004F005000450052005F00
      54005400010000000000100000004300450048005F0043004F00440045000100
      00000000060000004D0041005400010000000000080000005400410052004100
      01000000000016000000490044005F004F005000450052005F0052004F005700
      010000000000100000004F005000450052005F004E0055004D00010000000000
      0E0000004F005000450052005F0049004400010000000000}
    CountAllRecords = True
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 1065
    Top = 72
    object Db_Copy_Old_Info_OpersID_OPER_ROW: TFloatField
      FieldName = 'ID_OPER_ROW'
      Required = True
    end
    object Db_Copy_Old_Info_OpersOPER_NUM: TIntegerField
      FieldName = 'OPER_NUM'
      Required = True
    end
    object Db_Copy_Old_Info_OpersCEH_CODE: TStringField
      FieldName = 'CEH_CODE'
      Size = 2
    end
    object Db_Copy_Old_Info_OpersEDIZM: TStringField
      FieldName = 'EDIZM'
      Size = 1
    end
    object Db_Copy_Old_Info_OpersPRIM: TStringField
      FieldName = 'PRIM'
      Size = 500
    end
    object Db_Copy_Old_Info_OpersTT: TStringField
      FieldName = 'TT'
      Size = 1000
    end
    object Db_Copy_Old_Info_OpersTIME_R: TFloatField
      FieldName = 'TIME_R'
    end
    object Db_Copy_Old_Info_OpersRAZR: TIntegerField
      FieldName = 'RAZR'
    end
    object Db_Copy_Old_Info_OpersTIME_M: TFloatField
      FieldName = 'TIME_M'
    end
    object Db_Copy_Old_Info_OpersTIME_N: TFloatField
      FieldName = 'TIME_N'
    end
    object Db_Copy_Old_Info_OpersTIME_SH: TFloatField
      FieldName = 'TIME_SH'
    end
    object Db_Copy_Old_Info_OpersTIME_PZ: TFloatField
      FieldName = 'TIME_PZ'
    end
    object Db_Copy_Old_Info_OpersTIME_OP: TFloatField
      FieldName = 'TIME_OP'
    end
    object Db_Copy_Old_Info_OpersTIME_O: TFloatField
      FieldName = 'TIME_O'
    end
    object Db_Copy_Old_Info_OpersTIME_V: TFloatField
      FieldName = 'TIME_V'
      Required = True
    end
    object Db_Copy_Old_Info_OpersTIME_OB: TFloatField
      FieldName = 'TIME_OB'
      Required = True
    end
    object Db_Copy_Old_Info_OpersTIME_T: TFloatField
      FieldName = 'TIME_T'
      Required = True
    end
    object Db_Copy_Old_Info_OpersTIME_ORG: TFloatField
      FieldName = 'TIME_ORG'
      Required = True
    end
    object Db_Copy_Old_Info_OpersKODPROF: TStringField
      FieldName = 'KODPROF'
      Size = 5
    end
    object Db_Copy_Old_Info_OpersOLD_ID: TFloatField
      FieldName = 'OLD_ID'
    end
    object Db_Copy_Old_Info_OpersIOT: TStringField
      FieldName = 'IOT'
      Size = 50
    end
    object Db_Copy_Old_Info_OpersUT: TStringField
      FieldName = 'UT'
      Size = 10
    end
    object Db_Copy_Old_Info_OpersOPER_ID: TFloatField
      FieldName = 'OPER_ID'
      Required = True
    end
    object Db_Copy_Old_Info_OpersOPER_NAME: TStringField
      FieldName = 'OPER_NAME'
      Size = 100
    end
    object Db_Copy_Old_Info_OpersOPER_TT: TStringField
      FieldName = 'OPER_TT'
      Size = 500
    end
    object Db_Copy_Old_Info_OpersOBOR_NAME: TStringField
      FieldName = 'OBOR_NAME'
      Size = 201
    end
    object Db_Copy_Old_Info_OpersOBOR: TFloatField
      FieldName = 'OBOR'
    end
    object Db_Copy_Old_Info_OpersTARA: TFloatField
      FieldName = 'TARA'
    end
    object Db_Copy_Old_Info_OpersTARA_NUM: TStringField
      FieldName = 'TARA_NUM'
      Size = 50
    end
    object Db_Copy_Old_Info_OpersTARA_NAME: TStringField
      FieldName = 'TARA_NAME'
      Size = 100
    end
    object Db_Copy_Old_Info_OpersMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object Db_Copy_Old_Info_OpersMAT: TFloatField
      FieldName = 'MAT'
    end
  end
  object Db_Copy_Old_Info_Oper_Per: TOracleDataSet
    SQL.Strings = (
      'Select  t.Id as Id_Per_Row,'
      '        t.Id_Oper Id_Oper_Row,'
      '        t.Per,'
      '        t.Prim,'
      '        t.Tt_Per'
      'from Ogt.TP_OK_PER_TXT t'
      'Where  t.Tp_In = :Id_Doc_Tp'
      'Order by Nom_Per')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A00490044005F0044004F0043005F0054005000
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0500000008000000060000005000450052000100000000000800000050005200
      49004D000100000000000C000000540054005F00500045005200010000000000
      060000004700410053000100000000000A000000530050004500450044000100
      000000000A00000054005F004700410053000100000000001400000049004400
      5F005000450052005F0052004F00570001000000000016000000490044005F00
      4F005000450052005F0052004F005700010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 1065
    Top = 120
    object Db_Copy_Old_Info_Oper_PerID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
    object Db_Copy_Old_Info_Oper_PerID_OPER_ROW: TFloatField
      FieldName = 'ID_OPER_ROW'
      Required = True
    end
    object Db_Copy_Old_Info_Oper_PerPER: TStringField
      FieldName = 'PER'
      Size = 550
    end
    object Db_Copy_Old_Info_Oper_PerPRIM: TStringField
      FieldName = 'PRIM'
      Size = 500
    end
    object Db_Copy_Old_Info_Oper_PerTT_PER: TStringField
      FieldName = 'TT_PER'
      Size = 500
    end
  end
  object Db_Copy_Old_Info_Oper_Per_Det: TOracleDataSet
    SQL.Strings = (
      'Select t.Id_Per Id_Per_Row,'
      '       t.Det_txt Det_Num,'
      '       t.Nd Det_Name,'
      '       ( Select Id '
      '         From   Ogt.Spr_Det_Txt '
      '         Where  Det = t.Det_txt'
      '                And Nvl(Nd, '#39'0'#39') = Nvl(t.Nd, '#39'0'#39') ) Det_Id,'
      '       t.Nom_Det,'
      '       t.Kol'
      'From   Ogt.Tp_Ok_Per_Det_Txt t'
      'Where  t.Tp_In = :Id_Doc_Tp')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A00490044005F0044004F0043005F0054005000
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000060000000E0000004400450054005F004E0055004D00010000000000
      100000004400450054005F004E0041004D0045000100000000000C0000004400
      450054005F00490044000100000000000E0000004E004F004D005F0044004500
      5400010000000000060000004B004F004C000100000000001400000049004400
      5F005000450052005F0052004F005700010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 1065
    Top = 216
    object Db_Copy_Old_Info_Oper_Per_DetID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
    end
    object Db_Copy_Old_Info_Oper_Per_DetDET_NUM: TStringField
      FieldName = 'DET_NUM'
      Size = 50
    end
    object Db_Copy_Old_Info_Oper_Per_DetDET_NAME: TStringField
      FieldName = 'DET_NAME'
      Size = 100
    end
    object Db_Copy_Old_Info_Oper_Per_DetDET_ID: TFloatField
      FieldName = 'DET_ID'
    end
    object Db_Copy_Old_Info_Oper_Per_DetNOM_DET: TIntegerField
      FieldName = 'NOM_DET'
    end
    object Db_Copy_Old_Info_Oper_Per_DetKOL: TFloatField
      FieldName = 'KOL'
      Required = True
    end
  end
  object Db_Copy_Old_Info_Oper_Per_Mat: TOracleDataSet
    SQL.Strings = (
      'Select  t.Id_Per Id_Per_Row,'
      '        ( Select Id'
      '          From   Ogt.Spr_Matx_Txt '
      '          Where  Mat = t.Mat_Txt )Mat_Id,'
      '        t.Nom_Mat,'
      '        t.Norma Norma_Min,'
      '        t.Norma_Max,'
      '        ( Select Id'
      '          From   Ogt.Spr_Ed'
      '          Where  Ed = t.Ed_Txt ) Ed_Id,'
      '        t.Mat_txt Mat_Name,'
      '        t.Ed_Txt Ed_Name'
      'From   Ogt.Tp_Ok_Per_Mat_Txt t'
      'Where  t.Tp_In = :Id_Doc_Tp')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A00490044005F0044004F0043005F0054005000
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      05000000080000000C0000004D00410054005F00490044000100000000000E00
      00004E004F004D005F004D0041005400010000000000120000004E004F005200
      4D0041005F004D0049004E00010000000000120000004E004F0052004D004100
      5F004D00410058000100000000000A000000450044005F004900440001000000
      0000100000004D00410054005F004E0041004D0045000100000000000E000000
      450044005F004E0041004D00450001000000000014000000490044005F005000
      450052005F0052004F005700010000000000}
    CommitOnPost = False
    Session = DM_Main.Session
    Left = 1065
    Top = 264
    object Db_Copy_Old_Info_Oper_Per_MatID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
    end
    object Db_Copy_Old_Info_Oper_Per_MatMAT_ID: TFloatField
      FieldName = 'MAT_ID'
    end
    object Db_Copy_Old_Info_Oper_Per_MatNOM_MAT: TIntegerField
      FieldName = 'NOM_MAT'
    end
    object Db_Copy_Old_Info_Oper_Per_MatNORMA_MIN: TFloatField
      FieldName = 'NORMA_MIN'
      Required = True
    end
    object Db_Copy_Old_Info_Oper_Per_MatNORMA_MAX: TFloatField
      FieldName = 'NORMA_MAX'
    end
    object Db_Copy_Old_Info_Oper_Per_MatED_ID: TFloatField
      FieldName = 'ED_ID'
    end
    object Db_Copy_Old_Info_Oper_Per_MatMAT_NAME: TStringField
      FieldName = 'MAT_NAME'
      Size = 150
    end
    object Db_Copy_Old_Info_Oper_Per_MatED_NAME: TStringField
      FieldName = 'ED_NAME'
      Size = 3
    end
  end
  object Db_Copy_Doc_Info_Oper_Params: TOracleDataSet
    SQL.Strings = (
      'Select a.Oper_Row_Id Id_Oper_Row,'
      '       a.Param_Row_Id,'
      '       a.Name_Param,'
      '       a.Type_Param,'
      '       a.Numeric_Vl,'
      '       a.Text_Vl,'
      '       a.Param_Ch_Row_Id,'
      '       a.Param_Value'
      'From   Ogt.v_Tp_Ok_Oper_Params a'
      'Join  Ogt.V_Spr_Tp_Doc Inf'
      'On    Inf.Id = a.Doc_Tp_Id'
      '      And Inf.Id_Vers = a.Doc_Tp_Vers_Id'
      '      And Inf.Doc_Header_Id = :Doc_Header_Id'
      ''
      '/*Union'
      ''
      'Select Pr.Id_Oper_Row,'
      '       Pr.Param_Row_Id,'
      '       Pr.Name_Param,'
      '       Pr.Type_Param,'
      '       Pr.Numeric_Vl,'
      '       Pr.Text_Vl,'
      '       Ch_Pr.Prm_Ch_Row_Id Param_Ch_Row_Id, '
      '       ( Case'
      
        '           When Pr.Type_Param = '#39'numeric'#39' Then Trim(To_Char(Pr.N' +
        'umeric_Vl, '#39'99999999'#39'||Pr.Numeric_Dim))'
      '           When Pr.Type_Param = '#39'text'#39' Then Pr.Text_Vl'
      '           When Pr.Type_Param = '#39'choice_numeric'#39' '
      '                Or Pr.Type_Param = '#39'choice_text'#39
      '           Then Ch_Pr.Vl_Ch_Prm'
      '         End ) Param_Value'
      'From'
      '  (Select t.Id_Row_Param Param_Row_Id,'
      '         Oper.Id Id_Oper_Row,'
      '         Oper.Oper,'
      '         Oper.Oper_Name,'
      '         t.Name_Param,'
      '         t.Type_Param,'
      '         t.Numeric_Dim,'
      '         ( Case'
      '             When t.Id_Row_Param = 14 Then Oper.Mech_Degree'
      '             When t.Id_Row_Param = 20 Then Oper.Temp_Min'
      '             When t.Id_Row_Param = 21 Then Oper.Temp_Max'
      '             When t.Id_Row_Param = 22 Then Oper.u_Min'
      '             When t.Id_Row_Param = 24 Then Oper.u_Max'
      '             When t.Id_Row_Param = 25 Then Oper.ph_Min'
      '             When t.Id_Row_Param = 26 Then Oper.ph_Max'
      '             When t.Id_Row_Param = 27 Then Oper.i_Min'
      '             When t.Id_Row_Param = 28 Then Oper.i_Max'
      '             When t.Id_Row_Param = 29 Then Oper.Time_Oper'
      '             When t.Id_Row_Param = 30 Then Oper.Time_Oper_Max'
      '             When t.Id_Row_Param = 31 Then Oper.d_z'
      '             When t.Id_Row_Param = 32 Then Oper.w_z'
      '             When t.Id_Row_Param = 33 Then Oper.l_z'
      '             When t.Id_Row_Param = 34 Then Oper.l_z'
      '             When t.Id_Row_Param = 35 Then Oper.Num_Plot'
      '             When t.Id_Row_Param = 36 Then To_Number(Oper.Kr)'
      '             When t.Id_Row_Param = 45 Then Oper.Num_Wp'
      '             When t.Id_Row_Param = 49 Then Oper.Num_Of_Ins'
      '             When t.Id_Row_Param = 83 Then Oper.k_Gr'
      '             When t.Id_Row_Param = 85 Then Oper.Kol_Det'
      '             When t.Id_Row_Param = 47 Then Oper.Min_Ph'
      '             When t.Id_Row_Param = 121 Then Oper.Max_Ph'
      '           End ) Numeric_Vl, '
      '         ( Case'
      '             When t.Id_Row_Param = 42 Then ( Case'
      
        '                                               When Oper.Edizm_T' +
        'ime = '#39#1063#39' Then '#39#1063#1072#1089#1099#39
      
        '                                               When Oper.Edizm_T' +
        'ime = '#39#1052#39' Then '#39#1052#1080#1085#1091#1090#1099#39
      
        '                                               When Oper.Edizm_T' +
        'ime = '#39#1057#39' Then '#39#1057#1077#1082#1091#1085#1076#1099#39
      '                                             End )'
      '             When t.Id_Row_Param = 46 Then Oper.Op_Ak'
      '             When t.Id_Row_Param = 84 Then Oper.En'
      '           End ) Text_Vl'
      '  From  Ogt.V_TP_OK_OPER_PARAMS_LIST t'
      '  Cross Join Ogt.v_Tp_Ok_Dlp Oper'
      '  Where Oper.Id_Doc_Tp = :Id_Doc_Tp) Pr'
      '  Left Join Ogt.v_Tp_Op_Prm_Ch_Prm_Link Ch_Pr'
      '  On   Ch_Pr.Param_Row_Id = Pr.Param_Row_Id'
      '       And ( (Ch_Pr.Numeric_Vl = Pr.Numeric_Vl'
      '            And Pr.Type_Param = '#39'choice_numeric'#39')'
      '            Or (Ch_Pr.Text_Vl = Pr.Text_Vl'
      '                And Pr.Type_Param = '#39'choice_text'#39') ) '
      'Where Pr.Numeric_Vl Is Not Null '
      '      Or Pr.Text_Vl Is Not Null*/'
      '')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000800000016000000490044005F004F005000450052005F0052004F00
      57000100000000001800000050004100520041004D005F0052004F0057005F00
      49004400010000000000140000004E0041004D0045005F005000410052004100
      4D000100000000001400000054005900500045005F0050004100520041004D00
      010000000000140000004E0055004D0045005200490043005F0056004C000100
      000000000E00000054004500580054005F0056004C0001000000000016000000
      50004100520041004D005F00560041004C00550045000100000000001E000000
      50004100520041004D005F00430048005F0052004F0057005F00490044000100
      00000000}
    Session = DM_Main.Session
    Left = 880
    Top = 24
    object Db_Copy_Doc_Info_Oper_ParamsID_OPER_ROW: TFloatField
      FieldName = 'ID_OPER_ROW'
    end
    object Db_Copy_Doc_Info_Oper_ParamsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
    end
    object Db_Copy_Doc_Info_Oper_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object Db_Copy_Doc_Info_Oper_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object Db_Copy_Doc_Info_Oper_ParamsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object Db_Copy_Doc_Info_Oper_ParamsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object Db_Copy_Doc_Info_Oper_ParamsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object Db_Copy_Doc_Info_Oper_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
  end
  object Driver_Copy_Oper_Params: TDataSetDriverEh
    ProviderDataSet = Db_Copy_Doc_Info_Oper_Params
    Left = 712
    Top = 24
  end
  object MemT_Copy_Oper_Params: TMemTableEh
    DetailFields = 'ID_OPER_ROW'
    MasterFields = 'ID_OPER_ROW'
    MasterSource = Data_Copy_Opers
    Params = <>
    DataDriver = Driver_Copy_Oper_Params
    Left = 568
    Top = 24
    object MemT_Copy_Oper_ParamsID_OPER_ROW: TFloatField
      FieldName = 'ID_OPER_ROW'
    end
    object MemT_Copy_Oper_ParamsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
    end
    object MemT_Copy_Oper_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object MemT_Copy_Oper_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object MemT_Copy_Oper_ParamsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object MemT_Copy_Oper_ParamsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object MemT_Copy_Oper_ParamsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object MemT_Copy_Oper_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
  end
  object Data_Copy_Oper_Params: TDataSource
    DataSet = MemT_Copy_Oper_Params
    Left = 416
    Top = 24
  end
  object Db_Copy_Old_Info_Oper_Params: TOracleDataSet
    SQL.Strings = (
      'Select Pr.Id_Oper_Row,'
      '       Pr.Param_Row_Id,'
      '       Pr.Name_Param,'
      '       Pr.Type_Param,'
      '       Pr.Numeric_Vl,'
      '       Pr.Text_Vl,'
      '       Ch_Pr.Prm_Ch_Row_Id Param_Ch_Row_Id, '
      '       ( Case'
      
        '           When Pr.Type_Param = '#39'numeric'#39' Then Trim(To_Char(Pr.N' +
        'umeric_Vl, '#39'99999999'#39'||Pr.Numeric_Dim))'
      '           When Pr.Type_Param = '#39'text'#39' Then Pr.Text_Vl'
      '           When Pr.Type_Param = '#39'choice_numeric'#39' '
      '                Or Pr.Type_Param = '#39'choice_text'#39
      '           Then Ch_Pr.Vl_Ch_Prm'
      '         End ) Param_Value'
      'From'
      '  (Select t.Id_Row_Param Param_Row_Id,'
      '         Oper.Id Id_Oper_Row,'
      '         t.Name_Param,'
      '         t.Type_Param,'
      '         t.Numeric_Dim,'
      '         ( Case'
      '             When t.Id_Row_Param = 20 Then Oper.Temp_Min'
      '             When t.Id_Row_Param = 21 Then Oper.Temp_Max'
      '             When t.Id_Row_Param = 22 Then Oper.u_Min'
      '             When t.Id_Row_Param = 24 Then Oper.u_Max'
      '             When t.Id_Row_Param = 25 Then Oper.ph_Min'
      '             When t.Id_Row_Param = 26 Then Oper.ph_Max'
      '             When t.Id_Row_Param = 27 Then Oper.i_Min'
      '             When t.Id_Row_Param = 28 Then Oper.i_Max'
      '             When t.Id_Row_Param = 29 Then Oper.Time_Oper'
      '             When t.Id_Row_Param = 30 Then Oper.Time_Oper_Max'
      '             When t.Id_Row_Param = 31 Then Oper.d_z'
      '             When t.Id_Row_Param = 32 Then Oper.w_z'
      '             When t.Id_Row_Param = 33 Then Oper.l_z'
      '             When t.Id_Row_Param = 34 Then Oper.l_z'
      '             When t.Id_Row_Param = 35 Then Null'
      '             When t.Id_Row_Param = 36 Then To_Number(Oper.Kr)'
      '             When t.Id_Row_Param = 83 Then Oper.k_Gr'
      '             When t.Id_Row_Param = 85 Then Oper.Kol_Det'
      '             When t.Id_Row_Param = 47 Then Oper.Min_Ph'
      '             When t.Id_Row_Param = 121 Then Oper.Max_Ph'
      '           End ) Numeric_Vl, '
      '         ( Case'
      '             When t.Id_Row_Param = 42 Then ( Case'
      
        '                                               When Oper.Edizm_T' +
        'ime = '#39#1063#39' Then '#39#1063#1072#1089#1099#39
      
        '                                               When Oper.Edizm_T' +
        'ime = '#39#1052#39' Then '#39#1052#1080#1085#1091#1090#1099#39
      
        '                                               When Oper.Edizm_T' +
        'ime = '#39#1057#39' Then '#39#1057#1077#1082#1091#1085#1076#1099#39
      '                                             End )'
      '             When t.Id_Row_Param = 46 Then Oper.Op_Ak'
      '             When t.Id_Row_Param = 47 Then Oper.Ph'
      '             When t.Id_Row_Param = 84 Then Oper.En'
      '           End ) Text_Vl'
      '  From  Ogt.V_TP_OK_OPER_PARAMS_LIST t'
      '  Cross Join Ogt.Tp_Ok_Txt Oper'
      '  Where Oper.Tp = :Id_Doc_Tp) Pr'
      'Left Join Ogt.v_Tp_Op_Prm_Ch_Prm_Link Ch_Pr'
      'On   Ch_Pr.Param_Row_Id = Pr.Param_Row_Id'
      '     And ( (Ch_Pr.Numeric_Vl = Pr.Numeric_Vl'
      '            And Pr.Type_Param = '#39'choice_numeric'#39')'
      '            Or (Ch_Pr.Text_Vl = Pr.Text_Vl'
      '                And Pr.Type_Param = '#39'choice_text'#39') ) '
      'Where Pr.Numeric_Vl Is Not Null '
      '      Or Pr.Text_Vl Is Not Null')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A00490044005F0044004F0043005F0054005000
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000800000016000000490044005F004F005000450052005F0052004F00
      57000100000000001800000050004100520041004D005F0052004F0057005F00
      49004400010000000000140000004E0041004D0045005F005000410052004100
      4D000100000000001400000054005900500045005F0050004100520041004D00
      010000000000140000004E0055004D0045005200490043005F0056004C000100
      000000000E00000054004500580054005F0056004C0001000000000016000000
      50004100520041004D005F00560041004C00550045000100000000001E000000
      50004100520041004D005F00430048005F0052004F0057005F00490044000100
      00000000}
    Session = DM_Main.Session
    Left = 1064
    Top = 24
    object FloatField1: TFloatField
      FieldName = 'ID_OPER_ROW'
    end
    object IntegerField1: TIntegerField
      FieldName = 'PARAM_ROW_ID'
    end
    object StringField1: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object StringField2: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object FloatField2: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object StringField3: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object StringField4: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object Db_Copy_Old_Info_Oper_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
  end
  object Db_Copy_Doc_Info_Per_Params: TOracleDataSet
    SQL.Strings = (
      '/*Select Pr.Id_Per_Row,'
      '       Pr.Param_Row_Id,'
      '       Pr.Name_Param,'
      '       Pr.Type_Param,'
      '       Pr.Numeric_Vl,'
      '       Pr.Text_Vl,'
      '       Ch_Pr.Prm_Ch_Row_Id Param_Ch_Row_Id, '
      '       ( Case'
      
        '           When Pr.Type_Param = '#39'numeric'#39' Then Trim(To_Char(Pr.N' +
        'umeric_Vl, '#39'99999999'#39'||Pr.Numeric_Dim))'
      '           When Pr.Type_Param = '#39'text'#39' Then Pr.Text_Vl'
      '           When Pr.Type_Param = '#39'choice_numeric'#39' '
      '                Or Pr.Type_Param = '#39'choice_text'#39
      '           Then Ch_Pr.Vl_Ch_Prm'
      '         End ) Param_Value'
      'From'
      '  (Select t.Id_Row_Param Param_Row_Id,'
      '         Per.Id Id_Per_Row,'
      '         t.Name_Param,'
      '         t.Type_Param,'
      '         t.Numeric_Dim,'
      '         Null Numeric_Vl, '
      '         ( Case'
      '             When t.Id_Row_Param = 57 Then Per.Gas'
      '             When t.Id_Row_Param = 86 Then Per.Speed'
      '             When t.Id_Row_Param = 87 Then Per.Hardness'
      '             When t.Id_Row_Param = 88 Then Per.t_Gas  '
      '           End ) Text_Vl'
      '  From  Ogt.v_Tp_Ok_Oper_Params_List t'
      '  Cross Join Ogt.v_Tp_Ok_Per_Dlp Per'
      '  Where Per.Dok_In = :Id_Doc_Tp) Pr'
      'Left Join Ogt.v_Tp_Op_Prm_Ch_Prm_Link Ch_Pr'
      'On   Ch_Pr.Param_Row_Id = Pr.Param_Row_Id'
      '     And ( (Ch_Pr.Numeric_Vl = Pr.Numeric_Vl'
      '            And Pr.Type_Param = '#39'choice_numeric'#39')'
      '            Or (Ch_Pr.Text_Vl = Pr.Text_Vl'
      '                And Pr.Type_Param = '#39'choice_text'#39') ) '
      'Where Pr.Numeric_Vl Is Not Null '
      '      Or Pr.Text_Vl Is Not Null'
      ''
      'Union*/'
      ''
      'Select a.Per_Row_Id Id_Per_Row,'
      '       a.Param_Row_Id,'
      '       a.Name_Param,'
      '       a.Type_Param,'
      '       a.Numeric_Vl,'
      '       a.Text_Vl,'
      '       a.Param_Ch_Row_Id,'
      '       a.Param_Value'
      'From   Ogt.v_Tp_Ok_Per_Params a'
      'Join  Ogt.V_Spr_Tp_Doc Inf'
      'On    Inf.Id = a.Doc_Tp_Id'
      '      And Inf.Id_Vers = a.Doc_Tp_Vers_Id'
      '      And Inf.Doc_Header_Id = :Doc_Header_Id')
    Optimize = False
    Variables.Data = {
      04000000010000001C0000003A0044004F0043005F0048004500410044004500
      52005F0049004400050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000800000014000000490044005F005000450052005F0052004F005700
      0100000000001800000050004100520041004D005F0052004F0057005F004900
      4400010000000000140000004E0041004D0045005F0050004100520041004D00
      0100000000001400000054005900500045005F0050004100520041004D000100
      00000000140000004E0055004D0045005200490043005F0056004C0001000000
      00000E00000054004500580054005F0056004C00010000000000160000005000
      4100520041004D005F00560041004C00550045000100000000001E0000005000
      4100520041004D005F00430048005F0052004F0057005F004900440001000000
      0000}
    Session = DM_Main.Session
    Left = 880
    Top = 168
    object Db_Copy_Doc_Info_Per_ParamsID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
    end
    object Db_Copy_Doc_Info_Per_ParamsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
    end
    object Db_Copy_Doc_Info_Per_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object Db_Copy_Doc_Info_Per_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object Db_Copy_Doc_Info_Per_ParamsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object Db_Copy_Doc_Info_Per_ParamsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object Db_Copy_Doc_Info_Per_ParamsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object Db_Copy_Doc_Info_Per_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
  end
  object Db_Copy_Old_Info_Per_Params: TOracleDataSet
    SQL.Strings = (
      'Select Pr.Id_Per_Row,'
      '       Pr.Param_Row_Id,'
      '       Pr.Name_Param,'
      '       Pr.Type_Param,'
      '       Pr.Numeric_Vl,'
      '       Pr.Text_Vl,'
      '       Ch_Pr.Prm_Ch_Row_Id Param_Ch_Row_Id, '
      '       ( Case'
      
        '           When Pr.Type_Param = '#39'numeric'#39' Then Trim(To_Char(Pr.N' +
        'umeric_Vl, '#39'99999999'#39'||Pr.Numeric_Dim))'
      '           When Pr.Type_Param = '#39'text'#39' Then Pr.Text_Vl'
      '           When Pr.Type_Param = '#39'choice_numeric'#39' '
      '                Or Pr.Type_Param = '#39'choice_text'#39
      '           Then Ch_Pr.Vl_Ch_Prm'
      '         End ) Param_Value'
      'From'
      '  (Select t.Id_Row_Param Param_Row_Id,'
      '         Per.Id Id_Per_Row,'
      '         t.Name_Param,'
      '         t.Type_Param,'
      '         t.Numeric_Dim,'
      '         Null Numeric_Vl, '
      '         ( Case'
      '             When t.Id_Row_Param = 57 Then Per.Gas'
      '             When t.Id_Row_Param = 86 Then Per.Speed'
      '             When t.Id_Row_Param = 88 Then Per.t_Gas  '
      '           End ) Text_Vl'
      '  From  Ogt.v_Tp_Ok_Oper_Params_List t'
      '  Cross Join Ogt.Tp_Ok_Per_Txt Per'
      '  Where Per.Tp_In = :Id_Doc_Tp) Pr'
      'Left Join Ogt.v_Tp_Op_Prm_Ch_Prm_Link Ch_Pr'
      'On   Ch_Pr.Param_Row_Id = Pr.Param_Row_Id'
      '     And ( (Ch_Pr.Numeric_Vl = Pr.Numeric_Vl'
      '            And Pr.Type_Param = '#39'choice_numeric'#39')'
      '            Or (Ch_Pr.Text_Vl = Pr.Text_Vl'
      '                And Pr.Type_Param = '#39'choice_text'#39') ) '
      'Where Pr.Numeric_Vl Is Not Null '
      '      Or Pr.Text_Vl Is Not Null')
    Optimize = False
    Variables.Data = {
      0400000001000000140000003A00490044005F0044004F0043005F0054005000
      050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000800000014000000490044005F005000450052005F0052004F005700
      0100000000001800000050004100520041004D005F0052004F0057005F004900
      4400010000000000140000004E0041004D0045005F0050004100520041004D00
      0100000000001400000054005900500045005F0050004100520041004D000100
      00000000140000004E0055004D0045005200490043005F0056004C0001000000
      00000E00000054004500580054005F0056004C00010000000000160000005000
      4100520041004D005F00560041004C00550045000100000000001E0000005000
      4100520041004D005F00430048005F0052004F0057005F004900440001000000
      0000}
    Session = DM_Main.Session
    Left = 1064
    Top = 168
    object Db_Copy_Old_Info_Per_ParamsID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
      Required = True
    end
    object Db_Copy_Old_Info_Per_ParamsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
      Required = True
    end
    object Db_Copy_Old_Info_Per_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Required = True
      Size = 150
    end
    object Db_Copy_Old_Info_Per_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Required = True
      Size = 50
    end
    object Db_Copy_Old_Info_Per_ParamsNUMERIC_VL: TStringField
      FieldName = 'NUMERIC_VL'
      Size = 1
    end
    object Db_Copy_Old_Info_Per_ParamsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 100
    end
    object Db_Copy_Old_Info_Per_ParamsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object Db_Copy_Old_Info_Per_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
  end
  object Driver_Copy_Per_Params: TDataSetDriverEh
    ProviderDataSet = Db_Copy_Doc_Info_Per_Params
    Left = 712
    Top = 168
  end
  object MemT_Copy_Per_Params: TMemTableEh
    DetailFields = 'ID_PER_ROW'
    MasterFields = 'ID_PER_ROW'
    MasterSource = Data_Copy_Oper_Per
    Params = <>
    DataDriver = Driver_Copy_Per_Params
    Left = 568
    Top = 168
    object MemT_Copy_Per_ParamsID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
    end
    object MemT_Copy_Per_ParamsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
    end
    object MemT_Copy_Per_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object MemT_Copy_Per_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object MemT_Copy_Per_ParamsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object MemT_Copy_Per_ParamsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object MemT_Copy_Per_ParamsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object MemT_Copy_Per_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
  end
  object Data_Copy_Per_Params: TDataSource
    DataSet = MemT_Copy_Per_Params
    Left = 416
    Top = 168
  end
  object MemT_Buffer_Oper_Params: TMemTableEh
    CachedUpdates = True
    DetailFields = 'ID_OPER_ROW'
    MasterFields = 'ID_OPER_ROW'
    MasterSource = Data_Buffer_Opers
    Params = <>
    SortOrder = 'NAME_PARAM'
    Left = 65
    Top = 72
    object MemT_Buffer_Oper_ParamsID_OPER_ROW: TFloatField
      FieldName = 'ID_OPER_ROW'
    end
    object MemT_Buffer_Oper_ParamsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
    end
    object MemT_Buffer_Oper_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object MemT_Buffer_Oper_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object MemT_Buffer_Oper_ParamsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object MemT_Buffer_Oper_ParamsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object MemT_Buffer_Oper_ParamsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object MemT_Buffer_Oper_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object ID_OPER_ROW: TMTNumericDataFieldEh
          FieldName = 'ID_OPER_ROW'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'ID_OPER_ROW'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object PARAM_ROW_ID: TMTNumericDataFieldEh
          FieldName = 'PARAM_ROW_ID'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          DisplayLabel = 'PARAM_ROW_ID'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object NAME_PARAM: TMTStringDataFieldEh
          FieldName = 'NAME_PARAM'
          StringDataType = fdtStringEh
          DisplayLabel = 'NAME_PARAM'
          DisplayWidth = 150
          Size = 150
          Transliterate = True
        end
        object TYPE_PARAM: TMTStringDataFieldEh
          FieldName = 'TYPE_PARAM'
          StringDataType = fdtStringEh
          DisplayLabel = 'TYPE_PARAM'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object NUMERIC_VL: TMTNumericDataFieldEh
          FieldName = 'NUMERIC_VL'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'NUMERIC_VL'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TEXT_VL: TMTStringDataFieldEh
          FieldName = 'TEXT_VL'
          StringDataType = fdtStringEh
          DisplayLabel = 'TEXT_VL'
          DisplayWidth = 1000
          Size = 1000
          Transliterate = True
        end
        object PARAM_VALUE: TMTStringDataFieldEh
          FieldName = 'PARAM_VALUE'
          StringDataType = fdtStringEh
          DisplayLabel = 'PARAM_VALUE'
          DisplayWidth = 4000
          Size = 4000
          Transliterate = True
        end
        object PARAM_CH_ROW_ID: TMTNumericDataFieldEh
          FieldName = 'PARAM_CH_ROW_ID'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          DisplayLabel = 'PARAM_CH_ROW_ID'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object Data_Buffer_Oper_Params: TDataSource
    DataSet = MemT_Buffer_Oper_Params
    Left = 193
    Top = 73
  end
  object MemT_Buffer_Per_Params: TMemTableEh
    Active = True
    CachedUpdates = True
    DetailFields = 'ID_PER_ROW'
    MasterFields = 'ID_PER_ROW'
    MasterSource = Data_Buffer_Oper_Per
    Params = <>
    SortOrder = 'NAME_PARAM'
    Left = 65
    Top = 173
    object MemT_Buffer_Per_ParamsID_PER_ROW: TFloatField
      FieldName = 'ID_PER_ROW'
    end
    object MemT_Buffer_Per_ParamsPARAM_ROW_ID: TIntegerField
      FieldName = 'PARAM_ROW_ID'
    end
    object MemT_Buffer_Per_ParamsNAME_PARAM: TStringField
      FieldName = 'NAME_PARAM'
      Size = 150
    end
    object MemT_Buffer_Per_ParamsTYPE_PARAM: TStringField
      FieldName = 'TYPE_PARAM'
      Size = 50
    end
    object MemT_Buffer_Per_ParamsNUMERIC_VL: TFloatField
      FieldName = 'NUMERIC_VL'
    end
    object MemT_Buffer_Per_ParamsTEXT_VL: TStringField
      FieldName = 'TEXT_VL'
      Size = 1000
    end
    object MemT_Buffer_Per_ParamsPARAM_VALUE: TStringField
      FieldName = 'PARAM_VALUE'
      Size = 4000
    end
    object MemT_Buffer_Per_ParamsPARAM_CH_ROW_ID: TIntegerField
      FieldName = 'PARAM_CH_ROW_ID'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object ID_PER_ROW: TMTNumericDataFieldEh
          FieldName = 'ID_PER_ROW'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'ID_PER_ROW'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object PARAM_ROW_ID: TMTNumericDataFieldEh
          FieldName = 'PARAM_ROW_ID'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          DisplayLabel = 'PARAM_ROW_ID'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object NAME_PARAM: TMTStringDataFieldEh
          FieldName = 'NAME_PARAM'
          StringDataType = fdtStringEh
          DisplayLabel = 'NAME_PARAM'
          DisplayWidth = 150
          Size = 150
          Transliterate = True
        end
        object TYPE_PARAM: TMTStringDataFieldEh
          FieldName = 'TYPE_PARAM'
          StringDataType = fdtStringEh
          DisplayLabel = 'TYPE_PARAM'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object NUMERIC_VL: TMTNumericDataFieldEh
          FieldName = 'NUMERIC_VL'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'NUMERIC_VL'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object TEXT_VL: TMTStringDataFieldEh
          FieldName = 'TEXT_VL'
          StringDataType = fdtStringEh
          DisplayLabel = 'TEXT_VL'
          DisplayWidth = 1000
          Size = 1000
          Transliterate = True
        end
        object PARAM_VALUE: TMTStringDataFieldEh
          FieldName = 'PARAM_VALUE'
          StringDataType = fdtStringEh
          DisplayLabel = 'PARAM_VALUE'
          DisplayWidth = 4000
          Size = 4000
          Transliterate = True
        end
        object PARAM_CH_ROW_ID: TMTNumericDataFieldEh
          FieldName = 'PARAM_CH_ROW_ID'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          DisplayLabel = 'PARAM_CH_ROW_ID'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object Data_Buffer_Per_Params: TDataSource
    DataSet = MemT_Buffer_Per_Params
    Left = 193
    Top = 169
  end
end
