object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Connected = True
    AfterConnect = FDConnection1AfterConnect
    Left = 216
    Top = 104
  end
  object TFDConnection
    Left = 352
    Top = 72
  end
end
