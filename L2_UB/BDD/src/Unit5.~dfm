object Form5: TForm5
  Left = 458
  Top = 229
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Liste des lecteurs suspendus'
  ClientHeight = 272
  ClientWidth = 423
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
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 16
    Width = 153
    Height = 97
    Items.Strings = (
      'Tous'
      'Enseignant'
      'Etudiant'
      'Fonctionnaire')
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 192
    Top = 24
    Width = 75
    Height = 25
    Caption = '&Afficher'
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkAll
  end
  object Button1: TButton
    Left = 192
    Top = 56
    Width = 75
    Height = 25
    Caption = 'A&per'#231'u'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 88
    Width = 75
    Height = 25
    Caption = 'I&mprimer'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 128
    Width = 369
    Height = 120
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 16
  end
  object Query1: TQuery
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    SQL.Strings = (
      'select num_l,nom_l,prenom_l'
      'from lecteur l'
      'where etat_l='#39'P'#233'nalis'#233#39)
    Left = 256
    Top = 72
  end
end
