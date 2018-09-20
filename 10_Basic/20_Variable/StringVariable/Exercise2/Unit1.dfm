object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #50672#49845#47928#51228': '#49373#51068#52629#54616
  ClientHeight = 251
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtName: TEdit
    Left = 16
    Top = 10
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = #51060#47492
  end
  object edtAge: TEdit
    Left = 16
    Top = 39
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = #45208#51060
  end
  object Button1: TButton
    Left = 144
    Top = 8
    Width = 75
    Height = 25
    Caption = #52629#54616#47700#49884#51648
    TabOrder = 2
    OnClick = Button1Click
  end
  object mmoMessage: TMemo
    Left = 16
    Top = 66
    Width = 281
    Height = 167
    Lines.Strings = (
      '[Name]'#45784' '#50504#45397#54616#49464#50836'.'
      ''
      '[Name]'#45784#51032' [Age]'#48264#51704' '#49373#51068#51012' '#52629#54616#54633#45768#45796'.'
      ''
      '[Name]'#45784#50640#44172'...')
    TabOrder = 3
  end
end
