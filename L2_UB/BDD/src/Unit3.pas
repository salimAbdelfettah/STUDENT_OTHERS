unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, DBTables, Mask;

type
  TForm3 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit2: TEdit;
    Query1: TQuery;
    Edit3: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;

implementation

uses qr1;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
dbgrid1.Visible:=true;
datasource1.DataSet:=query1;
query1.SQL.Clear;
query1.SQL.add('select cote,isbn,titre,auteur,editeur,annee_edition,nb_exemplaire');
query1.SQL.add('from ouvrage,exemplaire');
query1.sql.add('where ouvrage.isbn=exemplaire.isbn');
query1.Open;
dbgrid1.DataSource:=datasource1;
dbgrid1.Fields[0].DisplayLabel:='Cote';
dbgrid1.Fields[1].DisplayLabel:='ISBN';
dbgrid1.Fields[2].DisplayLabel:='Titre';
dbgrid1.Fields[3].DisplayLabel:='Auteur';
dbgrid1.Fields[4].DisplayLabel:='Editeur';
dbgrid1.Fields[5].DisplayLabel:='Année d''édition';
dbgrid1.Fields[6].DisplayLabel:='Nombre d''exemplaire';
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
edit3.Clear;
dbgrid1.Visible:=false;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
bitbtn3.Click;
dbgrid1.Visible:=false;
end;

procedure TForm3.Button1Click(Sender: TObject);
var aut:string;
begin
if(edit1.Text='')then
showmessage('Veuillez introduire le nom de l''auteur l''ouvrage que vous rechercher !')
else
begin
datasource1.DataSet:=query1;
query1.SQL.Clear;
query1.SQL.add('select cote,isbn,titre,auteur,editeur,annee_edition,nb_exemplaire');
query1.SQL.add('from ouvrage,exemplaire');
query1.SQL.add('where ouvrage.isbn=exemplaire.isbn and auteur=:param1');
aut:=edit1.text;
query1.ParamByName('param1').AsString:=aut;
query1.Open;
dbgrid1.Visible:=true;
dbgrid1.DataSource:=datasource1;
dbgrid1.Fields[0].DisplayLabel:='Cote';
dbgrid1.Fields[1].DisplayLabel:='ISBN';
dbgrid1.Fields[2].DisplayLabel:='Titre';
dbgrid1.Fields[3].DisplayLabel:='Auteur';
dbgrid1.Fields[4].DisplayLabel:='Editeur';
dbgrid1.Fields[5].DisplayLabel:='Année d''édition';
dbgrid1.Fields[6].DisplayLabel:='Nombre d''exemplaire';
edit1.Clear;
end;
end;

procedure TForm3.Button3Click(Sender: TObject);
var tit:string;
begin
if(edit2.Text='')then
showmessage('Veuillez introduire le titre de l''ouvrage que vous rechercher !')
else
begin
datasource1.DataSet:=query1;
query1.SQL.Clear;
query1.SQL.add('select cote,isbn,titre,auteur,editeur,annee_edition,nb_exemplaire');
query1.SQL.add('from ouvrage,exemplaire');
query1.SQL.add('where ouvrage.isbn=exemplaire.isbn and titre=:param1');
tit:=edit2.text;
query1.ParamByName('param1').AsString:=tit;
query1.Open;
dbgrid1.Visible:=true;
dbgrid1.DataSource:=datasource1;
dbgrid1.Fields[0].DisplayLabel:='Cote';
dbgrid1.Fields[1].DisplayLabel:='ISBN';
dbgrid1.Fields[2].DisplayLabel:='Titre';
dbgrid1.Fields[3].DisplayLabel:='Auteur';
dbgrid1.Fields[4].DisplayLabel:='Editeur';
dbgrid1.Fields[5].DisplayLabel:='Année d''édition';
dbgrid1.Fields[6].DisplayLabel:='Nombre d''exemplaire';
edit2.Clear;
end;
end;

procedure TForm3.Button2Click(Sender: TObject);
var isbn:string;
begin
if(edit3.Text='')then
showmessage('Veuillez introduire l''isbn de l''ouvrage que vous rechercher !')
else
begin
datasource1.DataSet:=query1;
query1.SQL.Clear;
query1.SQL.add('select cote,isbn,titre,auteur,editeur,annee_edition,nb_exemplaire');
query1.SQL.add('from ouvrage,exemplaire');
query1.SQL.add('where ouvrage.isbn=exemplaire.isbn and isbn=:param1');
isbn:=edit3.text;
query1.ParamByName('param1').AsString:=isbn;
query1.Open;
dbgrid1.Visible:=true;
dbgrid1.DataSource:=datasource1;
dbgrid1.Fields[0].DisplayLabel:='Cote';
dbgrid1.Fields[1].DisplayLabel:='ISBN';
dbgrid1.Fields[2].DisplayLabel:='Titre';
dbgrid1.Fields[3].DisplayLabel:='Auteur';
dbgrid1.Fields[4].DisplayLabel:='Editeur';
dbgrid1.Fields[5].DisplayLabel:='Année d''édition';
dbgrid1.Fields[6].DisplayLabel:='Nombre d''exemplaire';
edit3.Clear;
end;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
if(edit1.Text='')then
showmessage('Veuillez introduire le nom de l''auteur l''ouvrage que vous rechercher !')
else
begin
button1.Click;
quickreport1.DataSet:=query1;
qr1.QuickReport1.QRDBText1.DataSet:=query1;
qr1.QuickReport1.QRDBText2.DataSet:=query1;
qr1.QuickReport1.QRDBText3.DataSet:=query1;
qr1.QuickReport1.QRDBText4.DataSet:=query1;
qr1.QuickReport1.QRDBText5.DataSet:=query1;
qr1.QuickReport1.QRDBText6.DataSet:=query1;
qr1.QuickReport1.QRDBText7.DataSet:=query1;
qr1.QuickReport1.QRDBText7.Datafield:='cote';
qr1.QuickReport1.QRDBText1.DataField:='isbn';
qr1.QuickReport1.QRDBText2.DataField:='titre';
qr1.QuickReport1.QRDBText3.DataField:='auteur';
qr1.QuickReport1.QRDBText4.DataField:='editeur';
qr1.QuickReport1.QRDBText5.DataField:='annee_edition';
qr1.QuickReport1.QRDBText6.DataField:='nb_exemplaire';
quickreport1.Preview;
end;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
if(edit1.Text='')then
showmessage('Veuillez introduire le nom de l''auteur l''ouvrage que vous rechercher !')
else
begin
button1.Click;
quickreport1.DataSet:=query1;
qr1.QuickReport1.QRDBText1.DataSet:=query1;
qr1.QuickReport1.QRDBText2.DataSet:=query1;
qr1.QuickReport1.QRDBText3.DataSet:=query1;
qr1.QuickReport1.QRDBText4.DataSet:=query1;
qr1.QuickReport1.QRDBText5.DataSet:=query1;
qr1.QuickReport1.QRDBText6.DataSet:=query1;
qr1.QuickReport1.QRDBText7.DataSet:=query1;
qr1.QuickReport1.QRDBText7.Datafield:='cote';
qr1.QuickReport1.QRDBText1.DataField:='isbn';
qr1.QuickReport1.QRDBText2.DataField:='titre';
qr1.QuickReport1.QRDBText3.DataField:='auteur';
qr1.QuickReport1.QRDBText4.DataField:='editeur';
qr1.QuickReport1.QRDBText5.DataField:='annee_edition';
qr1.QuickReport1.QRDBText6.DataField:='nb_exemplaire';
quickreport1.Print;
end;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
if(edit3.Text='')then
showmessage('Veuillez introduire le isbn de l''ouvrage que vous rechercher !')
else
begin
button2.Click;
quickreport1.DataSet:=query1;
qr1.QuickReport1.QRDBText1.DataSet:=query1;
qr1.QuickReport1.QRDBText2.DataSet:=query1;
qr1.QuickReport1.QRDBText3.DataSet:=query1;
qr1.QuickReport1.QRDBText4.DataSet:=query1;
qr1.QuickReport1.QRDBText5.DataSet:=query1;
qr1.QuickReport1.QRDBText6.DataSet:=query1;
qr1.QuickReport1.QRDBText7.DataSet:=query1;
qr1.QuickReport1.QRDBText7.Datafield:='cote';
qr1.QuickReport1.QRDBText1.DataField:='isbn';
qr1.QuickReport1.QRDBText2.DataField:='titre';
qr1.QuickReport1.QRDBText3.DataField:='auteur';
qr1.QuickReport1.QRDBText4.DataField:='editeur';
qr1.QuickReport1.QRDBText5.DataField:='annee_edition';
qr1.QuickReport1.QRDBText6.DataField:='nb_exemplaire';
quickreport1.Preview;
end;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
if(edit3.Text='')then
showmessage('Veuillez introduire le isbn de l''ouvrage que vous rechercher !')
else
begin
button2.Click;
quickreport1.DataSet:=query1;
qr1.QuickReport1.QRDBText1.DataSet:=query1;
qr1.QuickReport1.QRDBText2.DataSet:=query1;
qr1.QuickReport1.QRDBText3.DataSet:=query1;
qr1.QuickReport1.QRDBText4.DataSet:=query1;
qr1.QuickReport1.QRDBText5.DataSet:=query1;
qr1.QuickReport1.QRDBText6.DataSet:=query1;
qr1.QuickReport1.QRDBText7.DataSet:=query1;
qr1.QuickReport1.QRDBText7.Datafield:='cote';
qr1.QuickReport1.QRDBText1.DataField:='isbn';
qr1.QuickReport1.QRDBText2.DataField:='titre';
qr1.QuickReport1.QRDBText3.DataField:='auteur';
qr1.QuickReport1.QRDBText4.DataField:='editeur';
qr1.QuickReport1.QRDBText5.DataField:='annee_edition';
qr1.QuickReport1.QRDBText6.DataField:='nb_exemplaire';
quickreport1.Print;
end;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
if(edit2.Text='')then
showmessage('Veuillez introduire le titre de l''ouvrage que vous rechercher !')
else
begin
button3.Click;
quickreport1.DataSet:=query1;
qr1.QuickReport1.QRDBText1.DataSet:=query1;
qr1.QuickReport1.QRDBText2.DataSet:=query1;
qr1.QuickReport1.QRDBText3.DataSet:=query1;
qr1.QuickReport1.QRDBText4.DataSet:=query1;
qr1.QuickReport1.QRDBText5.DataSet:=query1;
qr1.QuickReport1.QRDBText6.DataSet:=query1;
qr1.QuickReport1.QRDBText7.DataSet:=query1;
qr1.QuickReport1.QRDBText7.Datafield:='cote';
qr1.QuickReport1.QRDBText1.DataField:='isbn';
qr1.QuickReport1.QRDBText2.DataField:='titre';
qr1.QuickReport1.QRDBText3.DataField:='auteur';
qr1.QuickReport1.QRDBText4.DataField:='editeur';
qr1.QuickReport1.QRDBText5.DataField:='annee_edition';
qr1.QuickReport1.QRDBText6.DataField:='nb_exemplaire';
quickreport1.Preview;
end;
end;

procedure TForm3.Button9Click(Sender: TObject);
begin
if(edit2.Text='')then
showmessage('Veuillez introduire le titre de l''ouvrage que vous rechercher !')
else
begin
button3.Click;
quickreport1.DataSet:=query1;
qr1.QuickReport1.QRDBText1.DataSet:=query1;
qr1.QuickReport1.QRDBText2.DataSet:=query1;
qr1.QuickReport1.QRDBText3.DataSet:=query1;
qr1.QuickReport1.QRDBText4.DataSet:=query1;
qr1.QuickReport1.QRDBText5.DataSet:=query1;
qr1.QuickReport1.QRDBText6.DataSet:=query1;
qr1.QuickReport1.QRDBText7.DataSet:=query1;
qr1.QuickReport1.QRDBText7.Datafield:='cote';
qr1.QuickReport1.QRDBText1.DataField:='isbn';
qr1.QuickReport1.QRDBText2.DataField:='titre';
qr1.QuickReport1.QRDBText3.DataField:='auteur';
qr1.QuickReport1.QRDBText4.DataField:='editeur';
qr1.QuickReport1.QRDBText5.DataField:='annee_edition';
qr1.QuickReport1.QRDBText6.DataField:='nb_exemplaire';
quickreport1.Print;
end;
end;

end.
