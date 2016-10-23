object FP: TFP
  Left = 198
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'CryptoRC4'
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
    Width = 761
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
      Left = 8
      Top = 396
      Width = 21
      Height = 13
      Caption = 'Cl'#233' :'
    end
    object L2: TLabel
      Left = 376
      Top = 24
      Width = 66
      Height = 13
      Caption = 'Texte Chiffr'#233' :'
    end
    object LStatut: TLabel
      Left = 8
      Top = 432
      Width = 25
      Height = 13
      Caption = 'Etat :'
    end
    object LEtat: TLabel
      Left = 112
      Top = 432
      Width = 3
      Height = 13
    end
    object LIP: TLabel
      Left = 376
      Top = 396
      Width = 57
      Height = 13
      Caption = 'Adresse IP :'
    end
    object M1: TMemo
      Left = 8
      Top = 48
      Width = 361
      Height = 321
      MaxLength = 256
      TabOrder = 0
    end
    object Btn2: TButton
      Left = 240
      Top = 464
      Width = 97
      Height = 25
      Caption = '&Effacer le Texte'
      TabOrder = 1
      OnClick = Btn2Click
    end
    object Btn3: TButton
      Left = 344
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
      Width = 225
      Height = 25
      Caption = 'Btn1'
      TabOrder = 3
      OnClick = Btn1Click
    end
    object ECle: TEdit
      Left = 112
      Top = 392
      Width = 161
      Height = 21
      MaxLength = 256
      TabOrder = 4
    end
    object M2: TMemo
      Left = 376
      Top = 48
      Width = 361
      Height = 321
      ReadOnly = True
      TabOrder = 5
    end
    object EIP: TEdit
      Left = 448
      Top = 392
      Width = 161
      Height = 21
      TabOrder = 6
    end
    object Btn5: TButton
      Left = 424
      Top = 464
      Width = 185
      Height = 25
      Caption = 'Btn5'
      TabOrder = 7
      OnClick = Btn5Click
    end
  end
  object SB1: TStatusBar
    Left = 0
    Top = 527
    Width = 792
    Height = 19
    Panels = <
      item
        Text = 
          'CryptoRD4 (Par ABDELFETTAH Salim Master1 Informatique A1 2011/20' +
          '12)'
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
    Top = 65528
  end
  object TServer: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    OnListen = TServerListen
    OnAccept = TServerAccept
    OnGetSocket = TServerGetSocket
    OnClientConnect = TServerClientConnect
    OnClientDisconnect = TServerClientDisconnect
    OnClientRead = TServerClientRead
    OnClientError = TServerClientError
    Left = 368
  end
end
