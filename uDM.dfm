object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 271
  Width = 398
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    AfterConnect = FDConnection1AfterConnect
    BeforeConnect = FDConnection1BeforeConnect
    Left = 264
    Top = 81
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 264
    Top = 153
  end
  object FDQOpenQuery: TFDQuery
    Connection = FDConnection1
    Left = 104
    Top = 88
  end
end
