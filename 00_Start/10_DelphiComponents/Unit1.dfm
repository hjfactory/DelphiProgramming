object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 385
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 24
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 24
    Top = 136
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 82
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 3
  end
  object CheckBox2: TCheckBox
    Left = 120
    Top = 82
    Width = 97
    Height = 17
    Caption = 'CheckBox2'
    TabOrder = 4
  end
  object RadioButton1: TRadioButton
    Left = 24
    Top = 105
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 5
  end
  object RadioButton2: TRadioButton
    Left = 120
    Top = 105
    Width = 113
    Height = 17
    Caption = 'RadioButton2'
    TabOrder = 6
  end
  object Chart1: TChart
    Left = 223
    Top = 8
    Width = 305
    Height = 217
    Title.Text.Strings = (
      'TChart')
    TabOrder = 7
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Timer1: TTimer
    Left = 48
    Top = 248
  end
  object IdSocksServer1: TIdSocksServer
    Bindings = <>
    AllowSocks4 = True
    AllowSocks5 = True
    NeedsAuthentication = False
    Left = 48
    Top = 312
  end
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    AllowCookies = True
    HandleRedirects = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 144
    Top = 248
  end
  object IdTCPClient1: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 144
    Top = 312
  end
  object FDConnection1: TFDConnection
    Left = 232
    Top = 248
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 232
    Top = 312
  end
  object FDTable1: TFDTable
    Connection = FDConnection1
    Left = 312
    Top = 312
  end
  object Bluetooth1: TBluetooth
    Enabled = False
    Left = 400
    Top = 248
  end
  object BluetoothLE1: TBluetoothLE
    Enabled = False
    Left = 400
    Top = 312
  end
  object Beacon1: TBeacon
    ModeExtended = [iBeacons, AltBeacons, Eddystones]
    MonitorizedRegions = <>
    SPC = 0.500000000000000000
    Left = 488
    Top = 312
  end
end
