object FP: TFP
  Left = 198
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Crypto'
  ClientHeight = 546
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GB1: TGroupBox
    Left = 8
    Top = 16
    Width = 380
    Height = 500
    Caption = 'GB1'
    TabOrder = 0
    object L1: TLabel
      Left = 8
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Texte Clair :'
    end
    object LCle: TLabel
      Left = 16
      Top = 368
      Width = 21
      Height = 13
      Caption = 'Cl'#233' :'
    end
    object M1: TMemo
      Left = 8
      Top = 48
      Width = 361
      Height = 289
      TabOrder = 0
    end
    object Btn2: TButton
      Left = 168
      Top = 464
      Width = 97
      Height = 25
      Caption = '&Effacer le Texte'
      TabOrder = 1
      OnClick = Btn2Click
    end
    object Btn3: TButton
      Left = 280
      Top = 464
      Width = 75
      Height = 25
      Caption = 'E&ffacer la cl'#233
      TabOrder = 2
      OnClick = Btn3Click
    end
    object Btn1: TButton
      Left = 8
      Top = 464
      Width = 150
      Height = 25
      Caption = 'Btn1'
      TabOrder = 3
      OnClick = Btn1Click
    end
    object ECle: TEdit
      Left = 80
      Top = 368
      Width = 121
      Height = 21
      MaxLength = 12
      TabOrder = 4
    end
  end
  object GB2: TGroupBox
    Left = 400
    Top = 16
    Width = 380
    Height = 500
    Caption = 'GB2'
    TabOrder = 1
    object LStatut: TLabel
      Left = 24
      Top = 352
      Width = 25
      Height = 13
      Caption = 'Etat :'
    end
    object LLongeur: TLabel
      Left = 24
      Top = 376
      Width = 86
      Height = 13
      Caption = 'Longeur du texte :'
    end
    object LDimensions: TLabel
      Left = 24
      Top = 400
      Width = 60
      Height = 13
      Caption = 'Dimensions :'
    end
    object L2: TLabel
      Left = 8
      Top = 24
      Width = 66
      Height = 13
      Caption = 'Texte Chiffr'#233' :'
    end
    object LEtat: TLabel
      Left = 136
      Top = 352
      Width = 3
      Height = 13
    end
    object LLong: TLabel
      Left = 136
      Top = 376
      Width = 3
      Height = 13
    end
    object LDim: TLabel
      Left = 136
      Top = 400
      Width = 3
      Height = 13
    end
    object LIP: TLabel
      Left = 24
      Top = 424
      Width = 57
      Height = 13
      Caption = 'Adresse IP :'
    end
    object M2: TMemo
      Left = 8
      Top = 48
      Width = 361
      Height = 289
      ReadOnly = True
      TabOrder = 0
    end
    object Btn4: TButton
      Left = 16
      Top = 464
      Width = 100
      Height = 25
      Caption = 'Btn4'
      TabOrder = 1
      OnClick = Btn4Click
    end
    object Btn5: TButton
      Left = 128
      Top = 464
      Width = 145
      Height = 25
      Caption = 'Btn5'
      TabOrder = 2
      OnClick = Btn5Click
    end
    object EIP: TEdit
      Left = 136
      Top = 423
      Width = 121
      Height = 21
      TabOrder = 3
    end
  end
  object SB1: TStatusBar
    Left = 0
    Top = 527
    Width = 792
    Height = 19
    Panels = <
      item
        Text = 'Crypto (Par ABDELFETTAH Salim Master1 Informatique A1 2011/2012)'
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    Left = 168
    Top = 65528
    object Fichier: TMenuItem
      Caption = '&Fichier'
      object Quit: TMenuItem
        Caption = '&Quiter'
        OnClick = QuitClick
      end
    end
    object AP: TMenuItem
      Caption = '&A Propos'
      OnClick = APClick
    end
  end
  object TClient: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnLookup = TClientLookup
    OnConnecting = TClientConnecting
    OnConnect = TClientConnect
    OnDisconnect = TClientDisconnect
    OnRead = TClientRead
    OnError = TClientError
    Left = 304
    Top = 16
  end
  object TServer: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    OnListen = TServerListen
    OnAccept = TServerAccept
    OnClientConnect = TServerClientConnect
    OnClientDisconnect = TServerClientDisconnect
    OnClientRead = TServerClientRead
    OnClientError = TServerClientError
    Left = 368
    Top = 24
  end
end
