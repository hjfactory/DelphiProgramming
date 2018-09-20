object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 213
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 24
    Width = 33
    Height = 13
    Caption = #47112#51060#48660
  end
  object Edit1: TEdit
    Left = 48
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
    Text = #50504#45397#54616#49464#50836'.'
  end
  object Button1: TButton
    Left = 175
    Top = 41
    Width = 75
    Height = 25
    Caption = #48260#53948
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 48
    Top = 72
    Width = 225
    Height = 113
    Lines.Strings = (
      #52395' '#48264#51704' '#51460
      #46160' '#48264#51704' '#51460
      ''
      #45348#48264#51704' '#51460)
    TabOrder = 2
  end
end
