unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    DataSource1: TDataSource;
    Table1: TTable;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;
  nb:integer;
  acces:boolean;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
var trouve:boolean;
begin
nb:=nb+1;
trouve:=false;
table1.Close;
table1.Open;
table1.First;
    while(not(trouve))and(not(table1.Eof))do
    begin
      if(table1.FieldValues['user']=edit1.Text)then
      trouve:=true
      else
      table1.Next;
    end;
    if(not(trouve))then
    showmessage('Identificateur non trouvé !')
    else
    begin
      if(table1.FieldValues['pass']<>edit2.Text)then
      showmessage('Mot de passe erroné !')
      else
      begin
      acces:=true;
      form1.PageControl1.ActivePage:=form1.TabSheet2;
      form1.MainMenu1.Items.Items[0].Visible:=false;
      form1.MainMenu1.Items.Items[1].Visible:=true;
      form1.Button5.Visible:=true;
      form1.Button6.Visible:=true;
      form1.Button7.Visible:=true;
        if(table1.FieldValues['admin']=false)then
        begin
        form1.MainMenu1.Items.Items[1].Items[0].visible:=false;
        form1.MainMenu1.Items.Items[1].Items[1].visible:=false;
        form1.MainMenu1.Items.Items[1].Items[2].visible:=false;
        form1.MainMenu1.Items.Items[1].Items[6].visible:=false;
        end
        else
        begin
        form1.Button2.Visible:=true;
        form1.Button4.Visible:=true;
        form1.Button3.Visible:=true;
        form1.Button8.Visible:=true;
        form1.MainMenu1.Items.Items[1].Items[0].visible:=true;
        form1.MainMenu1.Items.Items[1].Items[1].visible:=true;
        form1.MainMenu1.Items.Items[1].Items[2].visible:=true;
        form1.MainMenu1.Items.Items[1].Items[6].visible:=true;
        end;
      form1.StatusBar1.Panels[0].Text:='Bibliotheque V 2.0';
      close;
      end;
    end;
if(nb=3)and(not(acces))then
begin
showmessage('Nombre de tentative dépassée !');
application.MainForm.Close;
end;

end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
if(edit1.Text='')then
bitbtn1.Enabled:=false;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin
if(edit2.Text='')then
bitbtn1.Enabled:=false;
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if(edit1.Text+key='')or(edit2.Text='')then
bitbtn1.Enabled:=false
else
bitbtn1.Enabled:=true;
end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if(edit1.Text='')or(edit2.Text+key='')then
bitbtn1.Enabled:=false
else
bitbtn1.Enabled:=true;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.Enabled:=true;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
form1.Enabled:=false;
bitbtn1.Enabled:=false;
edit1.Clear;
edit2.Clear;
nb:=0;
acces:=false;
end;

end.
