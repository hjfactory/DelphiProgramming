object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 390
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 208
    Top = 8
    Width = 376
    Height = 374
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 185
    Height = 153
    Caption = #51221#51201'(Static) '#48176#50676
    TabOrder = 1
    object Button1: TButton
      Left = 24
      Top = 32
      Width = 137
      Height = 25
      Caption = #51221#51201' '#48176#50676' '#49324#50857
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 32
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 32
      Top = 107
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit2'
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 167
    Width = 185
    Height = 122
    Caption = #46041#51201'(Dynamic) '#48176#50676
    TabOrder = 2
    object Button2: TButton
      Left = 24
      Top = 32
      Width = 137
      Height = 25
      Caption = #46041#51201#48176#50676' '#49324#50857
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 24
      Top = 72
      Width = 137
      Height = 25
      Caption = #51649#51217' '#52488#44592#54868' '#46321'(XE7 '#51060#49345')'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
end
