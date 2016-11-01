object Form1: TForm1
  Left = 348
  Top = 154
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Programme de Gestion d'#39'une bibliotheque'
  ClientHeight = 396
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 561
    Height = 401
    ActivePage = TabSheetr
    HotTrack = True
    TabOrder = 7
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      TabVisible = False
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 507
        Height = 22
        Caption = 'Bienvenue dans le programme de Gestion d'#39'une biblioth'#232'que.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Sylfaen'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 208
        Top = 136
        Width = 162
        Height = 22
        Caption = 'Veuillez vous identifier :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Sylfaen'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 240
        Top = 176
        Width = 75
        Height = 25
        Caption = 'S'#39'identifier'
        TabOrder = 0
        OnClick = Button1Click
      end
      object BitBtn1: TBitBtn
        Left = 200
        Top = 248
        Width = 161
        Height = 25
        Caption = '&Quitter le programme'
        TabOrder = 1
        Kind = bkClose
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      TabVisible = False
      OnShow = TabSheet2Show
    end
    object TabSheeto: TTabSheet
      Caption = 'TabSheeto'
      ImageIndex = 2
      TabVisible = False
      OnShow = TabSheetoShow
      object PageControl2: TPageControl
        Left = 200
        Top = 57
        Width = 289
        Height = 216
        ActivePage = ajout_ouv
        TabOrder = 0
        object ajout_ouv: TTabSheet
          Caption = 'Ajouter'
          OnShow = ajout_ouvShow
          object Label3: TLabel
            Left = 8
            Top = 16
            Width = 31
            Height = 13
            Caption = 'ISBN :'
          end
          object Label4: TLabel
            Left = 8
            Top = 41
            Width = 27
            Height = 13
            Caption = 'Titre :'
          end
          object Label5: TLabel
            Left = 8
            Top = 66
            Width = 37
            Height = 13
            Caption = 'Auteur :'
          end
          object Label6: TLabel
            Left = 8
            Top = 93
            Width = 39
            Height = 13
            Caption = 'Editeur :'
          end
          object Label7: TLabel
            Left = 8
            Top = 116
            Width = 79
            Height = 13
            Caption = 'Ann'#233'e d'#39'edition :'
          end
          object Edit1: TEdit
            Left = 96
            Top = 16
            Width = 121
            Height = 21
            Hint = 'Taper le code ISBN de l'#39'ouvrage'
            MaxLength = 20
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 96
            Top = 40
            Width = 121
            Height = 21
            Hint = 'Taper le titre de l'#39'ouvrage'
            MaxLength = 30
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object Edit3: TEdit
            Left = 96
            Top = 64
            Width = 121
            Height = 21
            Hint = 'Taper l'#39'auteur de l'#39'ouvrage'
            MaxLength = 30
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object Edit4: TEdit
            Left = 96
            Top = 88
            Width = 121
            Height = 21
            Hint = 'Taper l'#39'editeur de l'#39'ouvrage'
            MaxLength = 20
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object MaskEdit1: TMaskEdit
            Left = 96
            Top = 112
            Width = 121
            Height = 21
            Hint = 'Taper l'#39'ann'#233'e d'#39'edition de l'#39'ouvrage'
            EditMask = '9999;1;_'
            MaxLength = 4
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            Text = '    '
          end
          object BitBtn2: TBitBtn
            Left = 8
            Top = 144
            Width = 75
            Height = 25
            Caption = '&Ajouter'
            TabOrder = 5
            OnClick = BitBtn2Click
            Kind = bkOK
          end
          object BitBtn3: TBitBtn
            Left = 144
            Top = 144
            Width = 75
            Height = 25
            Caption = '&Effacer'
            TabOrder = 6
            OnClick = BitBtn3Click
            Kind = bkAbort
          end
        end
        object modif_ouv: TTabSheet
          Caption = 'Modifier'
          ImageIndex = 1
          OnShow = modif_ouvShow
          object Label10: TLabel
            Left = 16
            Top = 16
            Width = 31
            Height = 13
            Caption = 'ISBN :'
          end
          object Label11: TLabel
            Left = 16
            Top = 44
            Width = 27
            Height = 13
            Caption = 'Titre :'
          end
          object Label12: TLabel
            Left = 16
            Top = 66
            Width = 37
            Height = 13
            Caption = 'Auteur :'
          end
          object Label13: TLabel
            Left = 16
            Top = 91
            Width = 39
            Height = 13
            Caption = 'Editeur :'
          end
          object Label14: TLabel
            Left = 16
            Top = 115
            Width = 79
            Height = 13
            Caption = 'Ann'#233'e d'#39#233'dition :'
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 80
            Top = 13
            Width = 137
            Height = 21
            KeyField = 'ISBN'
            ListField = 'ISBN'
            ListSource = DataSource1
            TabOrder = 2
            OnExit = DBLookupComboBox2Exit
          end
          object Edit6: TEdit
            Left = 80
            Top = 64
            Width = 137
            Height = 21
            MaxLength = 30
            TabOrder = 4
            Text = 'Edit6'
          end
          object Edit7: TEdit
            Left = 80
            Top = 88
            Width = 137
            Height = 21
            MaxLength = 20
            TabOrder = 5
            Text = 'Edit7'
          end
          object MaskEdit2: TMaskEdit
            Left = 120
            Top = 112
            Width = 96
            Height = 21
            EditMask = '9999;1;_'
            MaxLength = 4
            TabOrder = 6
            Text = '    '
          end
          object Edit5: TEdit
            Left = 80
            Top = 40
            Width = 137
            Height = 21
            MaxLength = 30
            TabOrder = 3
            Text = 'Edit5'
          end
          object BitBtn5: TBitBtn
            Left = 16
            Top = 152
            Width = 75
            Height = 25
            Caption = '&Modifier'
            TabOrder = 0
            OnClick = BitBtn5Click
            Kind = bkOK
          end
          object BitBtn6: TBitBtn
            Left = 144
            Top = 152
            Width = 75
            Height = 25
            Caption = '&Effacer'
            TabOrder = 1
            OnClick = BitBtn6Click
            Kind = bkAbort
          end
        end
        object supp_ouv: TTabSheet
          Caption = 'Supprimer'
          ImageIndex = 2
          object Label8: TLabel
            Left = 16
            Top = 120
            Width = 211
            Height = 13
            Caption = 'Attention tous les exemplaires qui possedent '
          end
          object Label9: TLabel
            Left = 16
            Top = 144
            Width = 230
            Height = 13
            Caption = 'l'#39'ISBN introduit seront supprim'#233's avec l'#39'ouvrage !'
          end
          object Label22: TLabel
            Left = 16
            Top = 16
            Width = 31
            Height = 13
            Caption = 'ISBN :'
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 16
            Top = 40
            Width = 145
            Height = 21
            KeyField = 'ISBN'
            ListField = 'ISBN'
            ListSource = DataSource1
            TabOrder = 0
          end
          object BitBtn4: TBitBtn
            Left = 16
            Top = 72
            Width = 89
            Height = 25
            Caption = '&Supprimer'
            TabOrder = 1
            OnClick = BitBtn4Click
            Kind = bkAbort
          end
        end
      end
    end
    object TabSheete: TTabSheet
      Caption = 'TabSheete'
      ImageIndex = 3
      TabVisible = False
      OnShow = TabSheeteShow
      object PageControl3: TPageControl
        Left = 200
        Top = 57
        Width = 289
        Height = 216
        ActivePage = ajout_exm
        TabOrder = 0
        object ajout_exm: TTabSheet
          Caption = 'Ajouter'
          OnShow = ajout_exmShow
          object Label15: TLabel
            Left = 16
            Top = 40
            Width = 28
            Height = 13
            Caption = 'Cote :'
          end
          object Label16: TLabel
            Left = 16
            Top = 72
            Width = 31
            Height = 13
            Caption = 'ISBN :'
          end
          object Edit8: TEdit
            Left = 56
            Top = 37
            Width = 137
            Height = 21
            MaxLength = 15
            TabOrder = 0
            Text = 'Edit8'
          end
          object BitBtn7: TBitBtn
            Left = 16
            Top = 104
            Width = 75
            Height = 25
            Caption = '&Ajouter'
            TabOrder = 1
            OnClick = BitBtn7Click
            Kind = bkOK
          end
          object BitBtn8: TBitBtn
            Left = 128
            Top = 104
            Width = 75
            Height = 25
            Caption = '&Effacer'
            TabOrder = 2
            OnClick = BitBtn8Click
            Kind = bkAbort
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 56
            Top = 67
            Width = 145
            Height = 21
            KeyField = 'ISBN'
            ListField = 'ISBN'
            ListSource = DataSource1
            TabOrder = 3
          end
        end
        object supp_exm: TTabSheet
          Caption = 'Supprimer'
          ImageIndex = 2
          object Label17: TLabel
            Left = 16
            Top = 40
            Width = 28
            Height = 13
            Caption = 'Cote :'
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 64
            Top = 38
            Width = 145
            Height = 21
            KeyField = 'Cote'
            ListField = 'Cote'
            ListSource = DataSource2
            TabOrder = 0
          end
          object BitBtn9: TBitBtn
            Left = 16
            Top = 64
            Width = 99
            Height = 25
            Caption = '&Supprimer'
            TabOrder = 1
            OnClick = BitBtn9Click
            Kind = bkAbort
          end
        end
      end
    end
    object TabSheetga: TTabSheet
      Caption = 'TabSheetga'
      ImageIndex = 4
      TabVisible = False
      OnShow = TabSheetgaShow
      object PageControl4: TPageControl
        Left = 200
        Top = 57
        Width = 289
        Height = 216
        ActivePage = modif_id
        TabOrder = 0
        object ajout_id: TTabSheet
          Caption = 'Ajouter'
          OnShow = ajout_idShow
          object Label18: TLabel
            Left = 16
            Top = 12
            Width = 52
            Height = 13
            Caption = 'Identifiant :'
          end
          object Label19: TLabel
            Left = 16
            Top = 36
            Width = 70
            Height = 13
            Caption = 'Mot de passe :'
          end
          object Label20: TLabel
            Left = 16
            Top = 61
            Width = 64
            Height = 13
            Caption = 'Confirmation :'
          end
          object RadioGroup1: TRadioGroup
            Left = 16
            Top = 88
            Width = 201
            Height = 65
            Caption = 'Droits d'#39'acces'
            Items.Strings = (
              'Administrateur'
              'Utilisateur')
            TabOrder = 3
          end
          object Edit9: TEdit
            Left = 96
            Top = 10
            Width = 121
            Height = 21
            TabOrder = 0
            Text = 'Edit9'
          end
          object Edit10: TEdit
            Left = 96
            Top = 34
            Width = 121
            Height = 21
            PasswordChar = '*'
            TabOrder = 1
            Text = 'Edit10'
          end
          object Edit11: TEdit
            Left = 96
            Top = 58
            Width = 121
            Height = 21
            PasswordChar = '*'
            TabOrder = 2
            Text = 'Edit11'
          end
          object BitBtn10: TBitBtn
            Left = 16
            Top = 160
            Width = 75
            Height = 25
            Caption = '&Ajouter'
            TabOrder = 4
            OnClick = BitBtn10Click
            Kind = bkOK
          end
          object BitBtn11: TBitBtn
            Left = 144
            Top = 160
            Width = 75
            Height = 25
            Caption = '&Effacer'
            TabOrder = 5
            OnClick = BitBtn11Click
            Kind = bkAbort
          end
        end
        object modif_id: TTabSheet
          Caption = 'Modifier'
          ImageIndex = 1
          OnShow = modif_idShow
          object Label23: TLabel
            Left = 8
            Top = 8
            Width = 52
            Height = 13
            Caption = 'Identifiant :'
          end
          object Label24: TLabel
            Left = 8
            Top = 32
            Width = 105
            Height = 13
            Caption = 'Ancien mot de passe :'
          end
          object Label25: TLabel
            Left = 8
            Top = 56
            Width = 116
            Height = 13
            Caption = 'Nouveau mot de passe :'
          end
          object Label26: TLabel
            Left = 8
            Top = 80
            Width = 109
            Height = 13
            Caption = 'Confirmation nouveau :'
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 96
            Top = 5
            Width = 145
            Height = 21
            KeyField = 'User'
            ListField = 'User'
            ListSource = DataSource3
            TabOrder = 0
          end
          object BitBtn12: TBitBtn
            Left = 16
            Top = 160
            Width = 75
            Height = 25
            Caption = '&Modifier'
            TabOrder = 4
            OnClick = BitBtn12Click
            Kind = bkOK
          end
          object BitBtn13: TBitBtn
            Left = 176
            Top = 160
            Width = 75
            Height = 25
            Caption = '&Effacer'
            TabOrder = 5
            OnClick = BitBtn13Click
            Kind = bkAbort
          end
          object Edit12: TEdit
            Left = 136
            Top = 28
            Width = 121
            Height = 21
            MaxLength = 15
            PasswordChar = '*'
            TabOrder = 1
            Text = 'Edit12'
          end
          object Edit13: TEdit
            Left = 136
            Top = 52
            Width = 121
            Height = 21
            MaxLength = 15
            PasswordChar = '*'
            TabOrder = 2
            Text = 'Edit13'
          end
          object Edit14: TEdit
            Left = 136
            Top = 76
            Width = 121
            Height = 21
            MaxLength = 15
            PasswordChar = '*'
            TabOrder = 3
            Text = 'Edit14'
          end
          object RadioGroup2: TRadioGroup
            Left = 8
            Top = 98
            Width = 249
            Height = 57
            Caption = 'Droits d'#39'acces'
            Items.Strings = (
              'Administrateur'
              'Utilisateur')
            TabOrder = 6
          end
        end
        object supp_id: TTabSheet
          Caption = 'Supprimer'
          ImageIndex = 2
          object Label21: TLabel
            Left = 16
            Top = 40
            Width = 52
            Height = 13
            Caption = 'Identifiant :'
          end
          object BitBtn14: TBitBtn
            Left = 16
            Top = 72
            Width = 81
            Height = 25
            Caption = '&Supprimer'
            TabOrder = 1
            OnClick = BitBtn14Click
            Kind = bkAbort
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 82
            Top = 37
            Width = 145
            Height = 21
            KeyField = 'User'
            ListField = 'User'
            ListSource = DataSource3
            TabOrder = 0
          end
        end
      end
    end
    object TabSheetl: TTabSheet
      Caption = 'TabSheetl'
      ImageIndex = 5
      TabVisible = False
      OnShow = TabSheetlShow
      object PageControl5: TPageControl
        Left = 184
        Top = 56
        Width = 361
        Height = 297
        ActivePage = lecteur
        TabOrder = 0
        object lecteur: TTabSheet
          Caption = 'Lecteur'
          OnShow = lecteurShow
          object PageControl6: TPageControl
            Left = 8
            Top = 8
            Width = 329
            Height = 257
            ActivePage = supp_lec
            TabOrder = 0
            object ajout_lec: TTabSheet
              Caption = 'Ajouter'
              OnShow = ajout_lecShow
              object Label27: TLabel
                Left = 8
                Top = 8
                Width = 43
                Height = 13
                Caption = 'Num'#233'ro :'
              end
              object Label28: TLabel
                Left = 8
                Top = 32
                Width = 28
                Height = 13
                Caption = 'Nom :'
              end
              object Label29: TLabel
                Left = 8
                Top = 56
                Width = 42
                Height = 13
                Caption = 'Pr'#233'nom :'
              end
              object Label30: TLabel
                Left = 8
                Top = 104
                Width = 44
                Height = 13
                Caption = 'Adresse :'
              end
              object Label31: TLabel
                Left = 8
                Top = 129
                Width = 57
                Height = 13
                Caption = 'T'#233'l'#233'phone :'
              end
              object Label32: TLabel
                Left = 8
                Top = 177
                Width = 51
                Height = 13
                Caption = 'Cat'#233'gorie :'
              end
              object Label39: TLabel
                Left = 8
                Top = 80
                Width = 95
                Height = 13
                Caption = 'Date de naissance :'
              end
              object Label40: TLabel
                Left = 8
                Top = 153
                Width = 25
                Height = 13
                Caption = 'Mail :'
              end
              object BitBtn15: TBitBtn
                Left = 8
                Top = 202
                Width = 75
                Height = 25
                Caption = '&Ajouter'
                TabOrder = 8
                OnClick = BitBtn15Click
                Kind = bkOK
              end
              object MaskEdit3: TMaskEdit
                Left = 80
                Top = 4
                Width = 120
                Height = 21
                EditMask = '999999;1;_'
                MaxLength = 6
                TabOrder = 0
                Text = '      '
              end
              object Edit15: TEdit
                Left = 80
                Top = 28
                Width = 121
                Height = 21
                MaxLength = 20
                TabOrder = 1
                Text = 'Edit15'
              end
              object Edit16: TEdit
                Left = 80
                Top = 52
                Width = 121
                Height = 21
                MaxLength = 20
                TabOrder = 2
                Text = 'Edit16'
              end
              object Edit17: TEdit
                Left = 80
                Top = 101
                Width = 121
                Height = 21
                MaxLength = 50
                TabOrder = 4
                Text = 'Edit17'
              end
              object BitBtn16: TBitBtn
                Left = 128
                Top = 201
                Width = 75
                Height = 25
                Caption = '&Effacer'
                TabOrder = 9
                OnClick = BitBtn16Click
                Kind = bkAbort
              end
              object DBLookupComboBox7: TDBLookupComboBox
                Left = 80
                Top = 177
                Width = 121
                Height = 21
                Hint = '1->Enseignant,2->Etudiant,3->Fonctionnaire'
                KeyField = 'Num_cat'
                ListField = 'Num_cat'
                ListSource = DataSource5
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
              end
              object MaskEdit4: TMaskEdit
                Left = 80
                Top = 127
                Width = 120
                Height = 21
                EditMask = '9999999999;1;_'
                MaxLength = 10
                TabOrder = 5
                Text = '          '
              end
              object MaskEdit6: TMaskEdit
                Left = 112
                Top = 76
                Width = 120
                Height = 21
                EditMask = '99/99/9999;1;_'
                MaxLength = 10
                TabOrder = 3
                Text = '  /  /    '
              end
              object Edit21: TEdit
                Left = 80
                Top = 152
                Width = 121
                Height = 21
                MaxLength = 30
                TabOrder = 6
              end
            end
            object modif_lec: TTabSheet
              Caption = 'Modifier'
              ImageIndex = 1
              OnShow = modif_lecShow
              object Label33: TLabel
                Left = 8
                Top = 8
                Width = 43
                Height = 13
                Caption = 'Num'#233'ro :'
              end
              object Label34: TLabel
                Left = 8
                Top = 32
                Width = 28
                Height = 13
                Caption = 'Nom :'
              end
              object Label35: TLabel
                Left = 8
                Top = 56
                Width = 42
                Height = 13
                Caption = 'Pr'#233'nom :'
              end
              object Label36: TLabel
                Left = 8
                Top = 80
                Width = 95
                Height = 13
                Caption = 'Date de naissance :'
              end
              object Label37: TLabel
                Left = 8
                Top = 104
                Width = 44
                Height = 13
                Caption = 'Adresse :'
              end
              object Label38: TLabel
                Left = 8
                Top = 129
                Width = 57
                Height = 13
                Caption = 'T'#233'l'#233'phone :'
              end
              object Label41: TLabel
                Left = 8
                Top = 153
                Width = 25
                Height = 13
                Caption = 'Mail :'
              end
              object Label42: TLabel
                Left = 8
                Top = 177
                Width = 51
                Height = 13
                Caption = 'Cat'#233'gorie :'
              end
              object DBLookupComboBox8: TDBLookupComboBox
                Left = 80
                Top = 4
                Width = 145
                Height = 21
                KeyField = 'Num_l'
                ListField = 'Num_l'
                ListSource = DataSource4
                TabOrder = 0
                OnExit = DBLookupComboBox8Exit
              end
              object Edit18: TEdit
                Left = 80
                Top = 28
                Width = 121
                Height = 21
                TabOrder = 1
                Text = 'Edit18'
              end
              object Edit19: TEdit
                Left = 80
                Top = 50
                Width = 121
                Height = 21
                TabOrder = 2
                Text = 'Edit19'
              end
              object Edit20: TEdit
                Left = 80
                Top = 104
                Width = 121
                Height = 21
                TabOrder = 4
                Text = 'Edit20'
              end
              object MaskEdit5: TMaskEdit
                Left = 112
                Top = 77
                Width = 120
                Height = 21
                EditMask = '99/99/9999;1;_'
                MaxLength = 10
                TabOrder = 3
                Text = '  /  /    '
              end
              object DBLookupComboBox9: TDBLookupComboBox
                Left = 80
                Top = 174
                Width = 145
                Height = 21
                Hint = '1->Enseignant,2->Etudiant,3->Fonctionnaire'
                KeyField = 'Num_cat'
                ListField = 'Num_cat'
                ListSource = DataSource5
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
              end
              object MaskEdit7: TMaskEdit
                Left = 80
                Top = 128
                Width = 120
                Height = 21
                EditMask = '9999999999;1;_'
                MaxLength = 10
                TabOrder = 5
                Text = '          '
              end
              object Edit22: TEdit
                Left = 80
                Top = 152
                Width = 121
                Height = 21
                TabOrder = 6
                Text = 'Edit22'
              end
              object BitBtn17: TBitBtn
                Left = 8
                Top = 200
                Width = 75
                Height = 25
                Caption = '&Modifier'
                TabOrder = 8
                OnClick = BitBtn17Click
                Kind = bkOK
              end
              object BitBtn18: TBitBtn
                Left = 152
                Top = 200
                Width = 75
                Height = 25
                Caption = '&Effacer'
                TabOrder = 9
                OnClick = BitBtn18Click
                Kind = bkAbort
              end
            end
            object supp_lec: TTabSheet
              Caption = 'Supprimer'
              ImageIndex = 2
              object Label51: TLabel
                Left = 24
                Top = 32
                Width = 78
                Height = 13
                Caption = 'Num'#233'ro lecteur :'
              end
              object DBLookupComboBox16: TDBLookupComboBox
                Left = 112
                Top = 29
                Width = 145
                Height = 21
                KeyField = 'Num_l'
                ListField = 'Num_l'
                ListSource = DataSource4
                TabOrder = 0
              end
              object BitBtn24: TBitBtn
                Left = 24
                Top = 64
                Width = 75
                Height = 25
                Caption = '&Supprimer'
                TabOrder = 1
                OnClick = BitBtn24Click
                Kind = bkAbort
              end
            end
            object depen_l: TTabSheet
              Caption = 'Depenaliser'
              ImageIndex = 3
              object Label46: TLabel
                Left = 24
                Top = 24
                Width = 78
                Height = 13
                Caption = 'Num'#233'ro lecteur :'
              end
              object DBLookupComboBox11: TDBLookupComboBox
                Left = 120
                Top = 21
                Width = 145
                Height = 21
                KeyField = 'Num_l'
                ListField = 'Num_l'
                ListSource = DataSource4
                TabOrder = 0
              end
              object BitBtn21: TBitBtn
                Left = 24
                Top = 64
                Width = 97
                Height = 25
                Caption = '&Depenaliser'
                TabOrder = 1
                OnClick = BitBtn21Click
                Kind = bkOK
              end
            end
          end
        end
        object categorie: TTabSheet
          Caption = 'Categorie lecteur'
          ImageIndex = 1
          OnShow = categorieShow
          object PageControl7: TPageControl
            Left = 16
            Top = 16
            Width = 289
            Height = 241
            ActivePage = modif_cat
            TabOrder = 0
            object modif_cat: TTabSheet
              Caption = 'Modifier les cat'#233'gories'
              OnShow = modif_catShow
              object Label43: TLabel
                Left = 16
                Top = 16
                Width = 51
                Height = 13
                Caption = 'Cat'#233'gorie :'
              end
              object Label44: TLabel
                Left = 16
                Top = 42
                Width = 102
                Height = 13
                Caption = 'Nombre Max de pret :'
              end
              object Label45: TLabel
                Left = 16
                Top = 65
                Width = 90
                Height = 13
                Caption = 'Dur'#233'e de p'#233'nalit'#233' :'
              end
              object DBLookupComboBox10: TDBLookupComboBox
                Left = 88
                Top = 13
                Width = 145
                Height = 21
                KeyField = 'Lib_cat'
                ListField = 'Lib_cat'
                ListSource = DataSource5
                TabOrder = 0
                OnExit = DBLookupComboBox10Exit
              end
              object MaskEdit8: TMaskEdit
                Left = 128
                Top = 38
                Width = 72
                Height = 21
                EditMask = '9;1;_'
                MaxLength = 1
                TabOrder = 1
                Text = ' '
              end
              object MaskEdit9: TMaskEdit
                Left = 128
                Top = 62
                Width = 72
                Height = 21
                EditMask = '99;1;_'
                MaxLength = 2
                TabOrder = 2
                Text = '  '
              end
              object LabeledEdit1: TLabeledEdit
                Left = 16
                Top = 104
                Width = 241
                Height = 21
                EditLabel.Width = 98
                EditLabel.Height = 13
                EditLabel.Caption = 'Formule de panalit'#233' :'
                TabOrder = 3
              end
              object BitBtn19: TBitBtn
                Left = 184
                Top = 184
                Width = 75
                Height = 25
                Caption = '&Effacer'
                TabOrder = 4
                OnClick = BitBtn19Click
                Kind = bkAbort
              end
              object BitBtn20: TBitBtn
                Left = 16
                Top = 184
                Width = 75
                Height = 25
                Caption = '&Modifier'
                TabOrder = 5
                OnClick = BitBtn20Click
                Kind = bkOK
              end
            end
          end
        end
      end
    end
    object TabSheetp: TTabSheet
      Caption = 'TabSheetp'
      ImageIndex = 6
      TabVisible = False
      OnShow = TabSheetpShow
      object Label47: TLabel
        Left = 216
        Top = 93
        Width = 78
        Height = 13
        Caption = 'Num'#233'ro lecteur :'
      end
      object Label48: TLabel
        Left = 216
        Top = 125
        Width = 28
        Height = 13
        Caption = 'Cote :'
      end
      object DBLookupComboBox12: TDBLookupComboBox
        Left = 304
        Top = 88
        Width = 145
        Height = 21
        KeyField = 'Num_l'
        ListField = 'Num_l'
        ListSource = DataSourcel
        TabOrder = 0
        OnEnter = DBLookupComboBox12Enter
        OnExit = DBLookupComboBox12Exit
      end
      object DBLookupComboBox13: TDBLookupComboBox
        Left = 304
        Top = 120
        Width = 145
        Height = 21
        KeyField = 'Cote'
        ListField = 'Cote'
        ListSource = DataSource6
        TabOrder = 2
      end
      object BitBtn22: TBitBtn
        Left = 208
        Top = 168
        Width = 121
        Height = 25
        Caption = '&Effectuer le pret'
        TabOrder = 1
        OnClick = BitBtn22Click
        Kind = bkOK
      end
      object Button9: TButton
        Left = 208
        Top = 224
        Width = 145
        Height = 25
        Caption = 'Liste des documents en pret'
        TabOrder = 3
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 208
        Top = 256
        Width = 145
        Height = 25
        Caption = 'Liste des lecteurs suspendus'
        TabOrder = 4
        OnClick = Button10Click
      end
    end
    object TabSheetr: TTabSheet
      Caption = 'TabSheetr'
      ImageIndex = 7
      TabVisible = False
      OnShow = TabSheetrShow
      object Label49: TLabel
        Left = 216
        Top = 88
        Width = 78
        Height = 13
        Caption = 'Num'#233'ro lecteur :'
      end
      object Label50: TLabel
        Left = 216
        Top = 128
        Width = 28
        Height = 13
        Caption = 'Cote :'
      end
      object DBLookupComboBox14: TDBLookupComboBox
        Left = 328
        Top = 84
        Width = 145
        Height = 21
        KeyField = 'num_l'
        ListField = 'num_l'
        ListSource = DataSource7
        TabOrder = 0
        OnExit = DBLookupComboBox14Exit
      end
      object DBLookupComboBox15: TDBLookupComboBox
        Left = 328
        Top = 126
        Width = 145
        Height = 21
        ListSource = DataSource8
        TabOrder = 1
      end
      object BitBtn23: TBitBtn
        Left = 216
        Top = 272
        Width = 75
        Height = 25
        Caption = '&Effectuer'
        TabOrder = 2
        OnClick = BitBtn23Click
        Kind = bkOK
      end
      object RadioGroup3: TRadioGroup
        Left = 216
        Top = 160
        Width = 185
        Height = 105
        Caption = 'Etat retour'
        Items.Strings = (
          'Bonne'
          'Mauvaise'
          'Perdu')
        TabOrder = 3
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 377
    Width = 560
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Button2: TButton
    Left = 24
    Top = 64
    Width = 153
    Height = 25
    Caption = 'Espace Ouvrage'
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 24
    Top = 128
    Width = 153
    Height = 25
    Caption = 'Espace Lecteur'
    TabOrder = 2
    OnClick = Button4Click
  end
  object Button3: TButton
    Left = 24
    Top = 96
    Width = 153
    Height = 25
    Caption = 'Espace Exemplaire'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button5: TButton
    Left = 24
    Top = 160
    Width = 153
    Height = 25
    Caption = 'Espace Recherche'
    TabOrder = 3
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 24
    Top = 192
    Width = 153
    Height = 25
    Caption = 'Espace Pret'
    TabOrder = 4
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 24
    Top = 224
    Width = 153
    Height = 25
    Caption = 'Espace Restitution'
    TabOrder = 5
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 24
    Top = 256
    Width = 153
    Height = 25
    Caption = 'Espace Gestion des acces'
    TabOrder = 6
    OnClick = Button8Click
  end
  object XPManifest1: TXPManifest
  end
  object MainMenu1: TMainMenu
    Left = 28
    Top = 6
    object Sidentifier1: TMenuItem
      Caption = 'S'#39'identifier'
      OnClick = Sidentifier1Click
    end
    object Aller1: TMenuItem
      Caption = 'Aller '#224
      object Espaceouvrage1: TMenuItem
        Caption = 'Espace ouvrage'
        OnClick = Espaceouvrage1Click
      end
      object Espaceexemplaire1: TMenuItem
        Caption = 'Espace exemplaire'
        OnClick = Espaceexemplaire1Click
      end
      object Espacelecteur1: TMenuItem
        Caption = 'Espace lecteur'
        OnClick = Espacelecteur1Click
      end
      object Espacerecherche1: TMenuItem
        Caption = 'Espace recherche'
        OnClick = Espacerecherche1Click
      end
      object Espacepret1: TMenuItem
        Caption = 'Espace pret'
        OnClick = Espacepret1Click
      end
      object Espacerestitution1: TMenuItem
        Caption = 'Espace restitution'
        OnClick = Espacerestitution1Click
      end
      object EspaceGestiondesacces1: TMenuItem
        Caption = 'Espace gestion des acces'
        OnClick = EspaceGestiondesacces1Click
      end
      object Sedeconnecter1: TMenuItem
        Caption = 'Se deconnecter'
        OnClick = Sedeconnecter1Click
      end
      object Quitter1: TMenuItem
        Caption = 'Quitter'
        OnClick = Quitter1Click
      end
    end
    object N1: TMenuItem
      Caption = '?'
      object Versionprcdante1: TMenuItem
        Caption = 'Version pr'#233'c'#233'dante'
        OnClick = Versionprcdante1Click
      end
      object Apropos1: TMenuItem
        Caption = 'A propos'
        OnClick = Apropos1Click
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 168
    Top = 7
  end
  object Table1: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    TableName = 'ouvrage.DB'
    Left = 200
    Top = 7
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 232
    Top = 7
  end
  object Table2: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    TableName = 'exemplaire.db'
    Left = 264
    Top = 7
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 460
    Top = 6
  end
  object Table3: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    TableName = 'acces.DB'
    Left = 492
    Top = 6
  end
  object DataSource4: TDataSource
    DataSet = Table4
    Left = 324
    Top = 14
  end
  object Table4: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    TableName = 'lecteur.db'
    Left = 356
    Top = 14
  end
  object Table5: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    TableName = 'categorie.db'
    Left = 500
    Top = 38
  end
  object DataSource5: TDataSource
    DataSet = Table5
    Left = 468
    Top = 38
  end
  object Table6: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    TableName = 'pret.DB'
    Left = 104
    Top = 16
  end
  object DataSource6: TDataSource
    DataSet = Query1
    Left = 64
    Top = 16
  end
  object Query1: TQuery
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    SQL.Strings = (
      'select *'
      'from exemplaire'
      'where etat_exmpl='#39'Bonne'#39' and statut_exmpl='#39'Non pr'#233't'#233#39)
    Left = 136
    Top = 16
  end
  object Query2: TQuery
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    SQL.Strings = (
      'select *'
      'from pret'
      'where etat_res='#39'Non restitu'#233#39)
    Left = 200
    Top = 40
  end
  object Tablel: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    TableName = 'lecteur.DB'
    Left = 492
    Top = 118
  end
  object DataSourcel: TDataSource
    DataSet = Tablel
    Left = 492
    Top = 166
  end
  object Queryv: TQuery
    AutoRefresh = True
    DatabaseName = 'biblio'
    Left = 36
    Top = 350
  end
  object Query3: TQuery
    Active = True
    AutoRefresh = True
    DatabaseName = 'biblio'
    SQL.Strings = (
      'select num_l'
      'from pret'
      'where etat_res='#39'Non restitu'#233#39)
    Left = 196
    Top = 310
  end
  object Query4: TQuery
    AutoRefresh = True
    DatabaseName = 'biblio'
    Left = 228
    Top = 310
  end
  object DataSource7: TDataSource
    DataSet = Query3
    Left = 404
    Top = 334
  end
  object DataSource8: TDataSource
    DataSet = Query4
    Left = 452
    Top = 302
  end
end
