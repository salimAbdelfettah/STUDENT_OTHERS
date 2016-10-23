unit UP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus, Buttons, Sockets, ScktComp;

type
  TFP = class(TForm)
    GB1: TGroupBox;
    GB2: TGroupBox;
    SB1: TStatusBar;
    M1: TMemo;
    M2: TMemo;
    Btn2: TButton;
    MainMenu1: TMainMenu;
    AP: TMenuItem;
    Fichier: TMenuItem;
    Quit: TMenuItem;
    Btn4: TButton;
    Btn3: TButton;
    Btn1: TButton;
    LStatut: TLabel;
    LLongeur: TLabel;
    LDimensions: TLabel;
    L1: TLabel;
    L2: TLabel;
    Btn5: TButton;
    LCle: TLabel;
    ECle: TEdit;
    LEtat: TLabel;
    LLong: TLabel;
    LDim: TLabel;
    TClient: TClientSocket;
    TServer: TServerSocket;
    LIP: TLabel;
    EIP: TEdit;
    procedure QuitClick(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure reception();
    procedure envoie();
    function chiffrer(text:string;key:integer):string;
    function dechiffrer(text:string;key:integer):string;
    procedure FormShow(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
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
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  FP: TFP;
  mode:integer;

implementation

uses UT;

{$R *.dfm}
procedure permut(var a,b:char);
var c:char;
begin
c:=a;
a:=b;
b:=c;
end;

function TFP.chiffrer(text:string;key:integer):string;
var i,j,l,d,k:integer;tab:array[1..30,1..30]of char;c:char;s:string;
begin
  l:=length(text);
  LLong.Caption:=inttostr(l);
  d:=1;
  while(d*d<l)do
  begin
    d:=d+1;
  end;
  LDim.Caption:=inttostr(d);
  k:=1;
  for i:= 1 to d do
  begin
    for j:=1 to d do
    begin
      if(k<=l)then
      tab[i,j]:=text[k]
      else
      tab[i,j]:=' ';
    k:=k+1;
    end;
  end;
  for i:= 1 to d do
  begin
    for j:=1 to (d div 2) do
    begin
      c:=tab[i,j];
      tab[i,j]:=tab[i,d-j+1];
      tab[i,d-j+1]:=c;
    end;
  end;
  for i:= 1 to d do
  begin
    for j:=1 to d do
    begin
      tab[i,j]:=chr((ord(tab[i,j])+key)mod 256);
    end;
  end;
  s:='';
  for i:= 1 to d do
  begin
    for j:=1 to d do
    begin
      s:=s+tab[j,i];
    end;
  end;
  chiffrer:=s;
end;

function TFP.dechiffrer(text:string;key:integer):string;
var i,j,l,d,k:integer;tab:array[1..30,1..30]of char;c:char;s:string;
begin
  l:=length(text);
  LLong.Caption:=inttostr(l);
  d:=1;
  while(d*d<l)do
  begin
    d:=d+1;
  end;
  LDim.Caption:=inttostr(d);
  k:=1;
  for i:= 1 to d do
  begin
    for j:=1 to d do
    begin
      tab[j,i]:=text[k];
      k:=k+1;
    end;
  end;
  for i:= 1 to d do
  begin
    for j:=1 to (d div 2) do
    begin
      c:=tab[i,j];
      tab[i,j]:=tab[i,d-j+1];
      tab[i,d-j+1]:=c;
    end;
  end;
  for i:= 1 to d do
  begin
    for j:=1 to d do
    begin
      tab[i,j]:=chr((ord(tab[i,j])-key)mod 256);
    end;
  end;
  s:='';
  for i:= 1 to d do
  begin
    for j:=1 to d do
    begin
      s:=s+tab[i,j];
    end;
  end;
  dechiffrer:=s;
end;

procedure TFP.reception();
begin
Tserver.Port:=21306;
Tserver.Open;
TServer.Active:=true;
end;

procedure TFP.envoie();
begin
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
    position:=GB1.Left;
    GB1.Left:=GB2.Left;
    GB2.Left:=position;
    GB2.Caption:='Reception';
    GB1.Caption:='D�chiffrement';
    Btn1.Caption:='&D�chiffrer';
    Btn4.Caption:='&Recevoir';
    Btn5.Caption:='&Annuler la reception';
    LIP.Visible:=false;
    EIP.Visible:=false;
  end
  else
  begin
    GB2.Caption:='Envoie';
    GB1.Caption:='Chiffrement';
    Btn1.Caption:='&Chiffrer';
    Btn4.Caption:='En&voyer';
    Btn5.Caption:='&Annuler l''envoie';
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
  LEtat.Caption:='Envoie annul�.';
  end
  else
  begin
  TServer.Active:=false;
  Tserver.Close;
  LEtat.Caption:='Reception annul�e.';
  end;
end;

procedure TFP.Btn4Click(Sender: TObject);
begin
  if(mode=0)then
  begin
    if(M2.Lines.Text<>'')AND(EIP.Text<>'')then
    begin
    LEtat.Caption:='Envoie en cours ...';
    Envoie();
    end
    else
    showmessage('L''une des erreurs suivantes est survenue :'+#13+'* Texte chiffr� vide'#13+'* Addresse IP introduite ou incorrecte');
  end
  else
  begin
  LEtat.Caption:='Reception en cours ...';
  reception();
  end;
end;

procedure TFP.TServerClientRead(Sender: TObject; Socket: TCustomWinSocket);
begin
Letat.Caption:='Lecture des informations effecu�es.';
M2.Lines.Text:=Socket.ReceiveText;
ECle.Text:=Socket.ReceiveText;
LEtat.Caption:='Reception r�ussite.';
end;

procedure TFP.TClientConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
TClient.Socket.SendText(M2.Lines.Text);
LEtat.Caption:='Envoie r�ussie ...';
end;

procedure TFP.Btn1Click(Sender: TObject);
begin
  if(mode=0)then
  begin
    if(ECle.Text<>'')and(strtoint(ECle.text)>=0)and(strtoint(ECle.Text)<256)then
    begin
    M2.Lines.Text:=chiffrer(M1.Lines.Text,strtoint(ECle.Text));
    LEtat.Caption:='Texte chiffr�.';
    end
    else
    showmessage('L''une des erreurs suivantes est survenue :'+#13+'* Texte clair vide'#13+'* Cl� non introduite ou incorrecte');
  end
  else
  begin
    if(ECle.Text<>'')and(strtoint(ECle.text)>=0)and(strtoint(Ecle.Text)<256)then
    begin
    M1.Lines.Text:=dechiffrer(M2.Lines.Text,strtoint(ECle.Text));
    LEtat.Caption:='Texte dechiffr�.';
    end
    else
    showmessage('L''une des erreurs suivantes est survenue :'+#13+'* Texte clair vide'#13+'* Cl� non introduite ou incorrecte');
  end;
end;

procedure TFP.TServerAccept(Sender: TObject; Socket: TCustomWinSocket);
begin
LEtat.Caption:='Connection acc�pt�.';
end;

procedure TFP.TServerClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
LEtat.Caption:='Conn�ct� a l''emmeteur.';
end;

procedure TFP.TServerClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
LEtat.Caption:='L''emmeteur a �t� d�conn�ct�.';
end;

procedure TFP.TServerListen(Sender: TObject; Socket: TCustomWinSocket);
begin
LEtat.Caption:='A l''�coute des informations';
end;

procedure TFP.TServerClientError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
LEtat.Caption:='Erreur lors de la transmission.';
end;

procedure TFP.TClientLookup(Sender: TObject; Socket: TCustomWinSocket);
begin
LEtat.Caption:='Recherche du recepteur.';
end;

procedure TFP.TClientConnecting(Sender: TObject; Socket: TCustomWinSocket);
begin
LEtat.Caption:='Connection au recepteur.';
end;

procedure TFP.TClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
LEtat.Caption:='D�conn�ct�.';
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
Showmessage('TP N�1 S�curit�'+#13+'Par : ABDELFETTAH Salim'+#13+'Master 1 Informatique Groupe : A1'+#13+'2011 / 2012');
end;

end.
