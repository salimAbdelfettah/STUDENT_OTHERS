object Form2: TForm2
  Left = 511
  Top = 261
  BorderStyle = bsDialog
  Caption = 'Acces'
  ClientHeight = 171
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 211
    Height = 13
    Caption = 'Taper votre identifiant et votre mot de passe.'
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 52
    Height = 13
    Caption = 'Identifiant :'
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 70
    Height = 13
    Caption = 'Mot de passe :'
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 120
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Effacer'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 176
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Annuler'
    TabOrder = 2
    OnClick = BitBtn3Click
    Kind = bkCancel
  end
  object Edit1: TEdit
    Left = 96
    Top = 53
    Width = 121
    Height = 21
    Hint = 'Taper ici votre identifiant'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 96
    Top = 79
    Width = 121
    Height = 21
    Hint = 'Taper ici votre mot de passe'
    ParentShowHint = False
    PasswordChar = '*'
    ShowHint = True
    TabOrder = 4
    OnChange = Edit2Change
    OnKeyPress = Edit2KeyPress
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 232
    Top = 8
  end
  object Table1: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    TableName = 'acces.DB'
    Left = 232
    Top = 40
  end
end
