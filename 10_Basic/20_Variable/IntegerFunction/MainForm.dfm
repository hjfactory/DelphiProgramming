object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #49707#51088' '#51088#47308#54805
  ClientHeight = 411
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnRound: TButton
    Left = 248
    Top = 272
    Width = 129
    Height = 25
    Caption = #45236#47548'/'#48152#50732#47548
    TabOrder = 0
    OnClick = btnRoundClick
  end
  object Memo1: TMemo
    Left = 16
    Top = 47
    Width = 441
    Height = 210
    TabOrder = 1
  end
  object edtNumber: TEdit
    Left = 16
    Top = 276
    Width = 90
    Height = 21
    TabOrder = 2
    Text = '3'
  end
  object btnConvert: TButton
    Left = 112
    Top = 272
    Width = 130
    Height = 25
    Caption = #47928#51088#47484' '#49707#51088#47196' '#48320#54872
    TabOrder = 3
    OnClick = btnConvertClick
  end
  object edtNum1: TEdit
    Left = 16
    Top = 321
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '3'
  end
  object edtNum2: TEdit
    Left = 87
    Top = 321
    Width = 65
    Height = 21
    TabOrder = 5
    Text = '2'
  end
  object Button3: TButton
    Left = 158
    Top = 319
    Width = 35
    Height = 25
    Caption = '+'
    TabOrder = 6
    OnClick = Button3Click
  end
  object edtResult: TEdit
    Left = 16
    Top = 350
    Width = 136
    Height = 21
    TabOrder = 7
    TextHint = #44208#44284
  end
  object Button4: TButton
    Left = 199
    Top = 319
    Width = 35
    Height = 25
    Caption = '-'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 240
    Top = 319
    Width = 35
    Height = 25
    Caption = '*'
    TabOrder = 9
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 281
    Top = 319
    Width = 35
    Height = 25
    Caption = '/'
    TabOrder = 10
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 158
    Top = 350
    Width = 59
    Height = 25
    Caption = 'div'
    TabOrder = 11
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 223
    Top = 350
    Width = 66
    Height = 25
    Caption = 'mod'
    TabOrder = 12
    OnClick = Button8Click
  end
  object btnInteger: TButton
    Left = 16
    Top = 8
    Width = 136
    Height = 25
    Caption = #51221#49688' '#51088#47308#54805
    TabOrder = 13
    OnClick = btnIntegerClick
  end
  object btnReal: TButton
    Left = 158
    Top = 8
    Width = 136
    Height = 25
    Caption = #49892#49688' '#51088#47308#54805
    TabOrder = 14
    OnClick = btnRealClick
  end
end
