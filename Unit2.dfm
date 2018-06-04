object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SQLConnection1: TSQLConnection
    Left = 312
    Top = 152
  end
  object SQLQuery1: TSQLQuery
    Params = <>
    SQL.Strings = (
      'SELECT * FROM `bookings`')
    Left = 336
    Top = 200
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 440
    Top = 176
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 408
    Top = 120
  end
end
