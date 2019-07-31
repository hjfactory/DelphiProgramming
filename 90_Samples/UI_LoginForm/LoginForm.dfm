object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 173
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object edtId: TEdit
    Left = 88
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'User id'
  end
  object edtPassword: TEdit
    Left = 88
    Top = 91
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'Password'
  end
  object btnLogin: TButton
    Left = 232
    Top = 89
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object btnCancel: TButton
    Left = 320
    Top = 89
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = btnCancelClick
  end
end
