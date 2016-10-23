unit UP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus, Buttons, Sockets, ScktComp;
type tint=array[1..256]of integer;

type
  TFP = class(TForm)
    GB1: TGroupBox;
    SB1: TStatusBar;
    M1: TMemo;
    Btn2: TButton;
    MainMenu1: TMainMenu;
    AP: TMenuItem;
    Fichier: TMenuItem;
    Quit: TMenuItem;
    Btn3: TButton;
    Btn1: TButton;
    L1: TLabel;
    LCle: TLabel;
    ECle: TEdit;
    TClient: TClientSocket;
    TServer: TServerSocket;
    M2: TMemo;
    L2: TLabel;
    LStatut: TLabel;
    LEtat: TLabel;
    LIP: TLabel;
    EIP: TEdit;
    Btn5: TButton;
    procedure QuitClick(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure reception();
    procedure envoie();
    function chiffrer(text:char;key:integer):char;
    procedure chiffrer_cle(cle:string;var s:tint);
    procedure FormShow(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure TServerClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure TClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure Btn1Click(Sender: TObject);
    procedure TServerAccept(Sender: TObject; Socket: TCustomWinSocket);
    procedure TServerClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure TServerClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure TServerListen(Sender: TObject; Socket: TCustomWinSocket);
    procedure TServerClientError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure TClientLookup(Sender: TObject; Socket: TCustomWinSocket);
    procedure TClientConnecting(Sender: TObject; Socket: TCustomWinSocket);
    procedure TClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure TClientError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure TClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure APClick(Sender: TObject);
    procedure TServerGetSocket(Sender: TObject; Socket: Integer;
      var ClientSocket: TServerClientWinSocket);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FP: TFP;
  mode,g,ii,jj:integer;
  key:tint;



implementation

uses UT;

{$R *.dfm}
procedure permut(var a,b:integer);
var c:integer;
begin
c:=a;
a:=b;
b:=c;
end;

function TFP.chiffrer(text:char;key:integer):char;
begin
  chiffrer:=chr((ord(text))xor key);
end;

procedure TFP.chiffrer_cle(cle:string;var s:tint);
var t:tint;i,j,l:integer;
begin
l:=length(cle);
  for i:=1 to 256 do
  begin
    s[i]:=i;
    if(i mod l=0)then
    t[i]:=ord(cle[l])
    else
    t[i]:=ord(cle[i mod l]);
  end;
  j:=0;
  for i:=1 to 256 do
  begin
    j:=((j+s[i]+t[i])mod 256)+1;
    if(j=0)then
    j:=256;
    permut(s[i],s[j]);
  end;
end;

procedure TFP.reception();
begin
M1.Clear;
M2.Clear;
TServer.Close;
g:=0;
ii:=0;
jj:=0;
Tserver.Port:=21306;
Tserver.Open;
end;

procedure TFP.envoie();
begin
M2.Clear;
TClient.Close;
TClient.Port:=21306;
TClient.Address:=EIP.Text;
TClient.Open;
end;

procedure TFP.QuitClick(Sender: TObject);
begin
close;
end;

procedure TFP.Btn2Click(Sender: TObject);
begin
M1.Clear;
end;

procedure TFP.FormShow(Sender: TObject);
var position:integer;
begin
FT.ShowModal;
  if(mode=1)then
  begin
    GB1.Caption:='Reception / Déchiffrement';
    Btn1.Caption:='&Recevoir et Déchiffrer';
    Btn5.Caption:='&Annuler la Reception / Déchiffrement';
    LIP.Visible:=false;
    EIP.Visible:=false;
    position:=M1.Left;
    M1.Left:=M2.Left;
    L1.Left:=L2.Left;
    M2.Left:=position;
    L2.Left:=position;
    M1.ReadOnly:=true;
  end
  else
  begin
    GB1.Caption:='Chiffrement / Envoie';
    Btn1.Caption:='&Chiffrer et Envoyer';
    Btn5.Caption:='&Annuler le Chiffrement / Envoie';
  end;
end;

procedure TFP.Btn3Click(Sender: TObject);
begin
Ecle.Clear;
end;

procedure TFP.Btn5Click(Sender: TObject);
begin
  if(mode=0)then
  begin
  TClient.Active:=false;
  TClient.Close;
  LEtat.Caption:='Envoie annulé.';
  end
  else
  begin
  TServer.Active:=false;
  Tserver.Close;
  LEtat.Caption:='Reception annulée.';
  end;
end;

procedure TFP.TServerClientRead(Sender: TObject; Socket: TCustomWinSocket);
var r:string;i,len,t,o_c:integer;
begin
r:=Socket.ReceiveText;
len:=length(r);
  for i:=1 to len do
  begin
  g:=g+1;
  ii:=(ii+1)mod 256;
  jj:=(jj+key[ii])mod 256;
  if(ii=0)then
  ii:=256;
  if(jj=0)then
  jj:=256;
  permut(key[ii],key[jj]);
  t:=(key[ii]+key[jj])mod 256;
  if(t=0)then
  t:=256;
  o_c:=key[t];
  Letat.Caption:='Reception de l''octet N°: '+inttostr(g)+' ...';
  M2.Lines.Text:=M2.Lines.Text+r[i];
  Letat.Caption:='Déchiffrement de l''octet N°: '+inttostr(g)+' ...';
  M1.Lines.Text:=M1.Lines.Text+chiffrer(r[i],o_c);
  Letat.Caption:='Déchiffrement de l''octet N°: '+inttostr(g)+' éfféctué.';
  end;
end;

procedure TFP.TClientConnect(Sender: TObject; Socket: TCustomWinSocket);
var i,t,len,o_c:integer;
begin
ii:=0;
jj:=0;
len:=length(M1.Lines.Text);
  for i:=1 to len do
  begin
  ii:=(ii+1)mod 256;
  jj:=(jj+key[ii])mod 256;
  if(ii=0)then
  ii:=256;
  if(jj=0)then
  jj:=256;
  permut(key[ii],key[jj]);
  t:=(key[ii]+key[jj])mod 256;
  if(t=0)then
  t:=256;
  o_c:=key[t];
  LEtat.Caption:='Chiffrement de l''octet N° : '+inttostr(i)+' ...';
  M2.Lines.Text:=M2.Lines.Text+chiffrer(M1.Lines.Text[i],o_c);
  LEtat.Caption:='Envoie de l''octet chiffré N° : '+inttostr(i)+' ...';
  TClient.Socket.SendText(chiffrer(M1.Lines.Text[i],o_c));
  LEtat.Caption:='Envoie de l''octet chiffré N° : '+inttostr(i)+' réussi.';
  end;
LEtat.Caption:='Envoie du message réussie.';
end;

procedure TFP.Btn1Click(Sender: TObject);
begin
  if(mode=0)then
  begin
    if(ECle.Text<>'')and(M1.Lines.Text<>'')and(EIP.Text<>'')then
    begin
    LEtat.Caption:='Préparation pour l''envoie ...';
    chiffrer_cle(ECle.Text,key);
    envoie();
    end
    else
    showmessage('L''une des erreurs suivantes est survenue :'+#13+'* Texte clair vide'#13+'* Clé non introduite ou incorrecte'+#13+'* Adresse IP non introduite ou incorrect');
  end
  else
  begin
    if(ECle.Text<>'')then
    begin
    LEtat.Caption:='Préparation pour la reception ...';
    chiffrer_cle(ECle.Text,key);
    reception();
    end
    else
    showmessage('* Clé non introduite ou incorrect');
  end;
end;

procedure TFP.TServerAccept(Sender: TObject; Socket: TCustomWinSocket);
begin
LEtat.Caption:='Connection accépté.';
end;

procedure TFP.TServerClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
LEtat.Caption:='Connécté a l''emmeteur.';
end;

procedure TFP.TServerClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
LEtat.Caption:='L''emmeteur a été déconnécté.';
end;

procedure TFP.TServerListen(Sender: TObject; Socket: TCustomWinSocket);
begin
LEtat.Caption:='A l''écoute des informations ...';
end;

procedure TFP.TServerClientError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
LEtat.Caption:='Erreur lors de la transmission.';
end;

procedure TFP.TClientLookup(Sender: TObject; Socket: TCustomWinSocket);
begin
LEtat.Caption:='Recherche du recepteur ...';
end;

procedure TFP.TClientConnecting(Sender: TObject; Socket: TCustomWinSocket);
begin
LEtat.Caption:='Connection au recepteur.';
end;

procedure TFP.TClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
LEtat.Caption:='Déconnécté.';
end;

procedure TFP.TClientError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
LEtat.Caption:='Erreur lors de la transmission.';
end;

procedure TFP.TClientRead(Sender: TObject; Socket: TCustomWinSocket);
begin
LEtat.Caption:='Envoie en cours ...';
end;

procedure TFP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TServer.Close;
TClient.Close;
end;

procedure TFP.APClick(Sender: TObject);
begin
Showmessage('TP N°2 Sécurité'+#13+'Par : ABDELFETTAH Salim'+#13+'Master 1 Informatique Groupe : A1'+#13+'2011 / 2012');
end;

procedure TFP.TServerGetSocket(Sender: TObject; Socket: Integer;
  var ClientSocket: TServerClientWinSocket);
begin
LEtat.Caption:='Reception du message réussite.';
end;

end.
