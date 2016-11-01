object Form4: TForm4
  Left = 366
  Top = 234
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Liste des documents en pret'
  ClientHeight = 198
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 16
    Width = 417
    Height = 120
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 152
    Width = 75
    Height = 25
    Caption = '&Afficher'
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object Button1: TButton
    Left = 112
    Top = 152
    Width = 75
    Height = 25
    Caption = 'A&per'#231'u'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 152
    Width = 75
    Height = 25
    Caption = '&Imprimer'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 56
    Top = 40
  end
  object Query1: TQuery
    Active = True
    CachedUpdates = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    SQL.Strings = (
      'select cote,num_l,date_pret,date_retour'
      'from pret'
      'where etat_res='#39'Non restitu'#233#39)
    Left = 96
    Top = 40
  end
end
