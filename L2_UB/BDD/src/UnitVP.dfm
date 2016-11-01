object FVP: TFVP
  Left = 421
  Top = 142
  BorderStyle = bsDialog
  Caption = 'Version pr'#233'c'#233'dante'
  ClientHeight = 450
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 24
    Width = 417
    Height = 393
  end
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 95
    Height = 24
    Caption = 'Version 1.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 335
    Top = 422
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
end
