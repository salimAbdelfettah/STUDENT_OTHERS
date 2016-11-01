unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TForm5 = class(TForm)
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form5: TForm5;

implementation

uses qr3, qr2;

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
var p:string;cat:integer;
begin
if(radiogroup1.ItemIndex=-1)then
showmessage('Veuillez selectionner le type de lecteur pénalisé a afficher !')
else
begin
dbgrid1.Visible:=true;
dbgrid1.DataSource:=datasource1;
query1.SQL.Clear;
query1.SQL.Add('select num_l,nom_l,prenom_l,nb_pret');
query1.SQL.Add('from lecteur');
p:='Pénalisé';
query1.SQL.Add('where etat_l=:param1');
query1.ParamByName('param1').AsString:=p;
if(radiogroup1.ItemIndex=1)then
begin
cat:=1;
query1.SQL.Add('and num_cat=:param2');
query1.ParamByName('param2').asinteger:=cat;
end;
if(radiogroup1.ItemIndex=2)then
begin
cat:=2;
query1.SQL.Add('and num_cat=:param2');
query1.ParamByName('param2').asinteger:=cat;
end;
if(radiogroup1.ItemIndex=3)then
begin
cat:=3;
query1.SQL.Add('and num_cat=:param2');
query1.ParamByName('param2').asinteger:=cat;
end;
query1.Open;
dbgrid1.Fields[0].DisplayLabel:='Numéro';
dbgrid1.Fields[1].DisplayLabel:='Nom';
dbgrid1.Fields[2].DisplayLabel:='Prénom';
dbgrid1.Fields[3].DisplayLabel:='Nombre de livre prétés';
end;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
if(radiogroup1.ItemIndex=-1)then
showmessage('Veuillez selectionner le type de lecteur pénalisé a afficher !')
else
begin
bitbtn1.Click;
qr3.quickreport3.DataSet:=query1;
qr3.QuickReport3.QRDBText1.DataSet:=query1;
qr3.QuickReport3.QRDBText2.DataSet:=query1;
qr3.QuickReport3.QRDBText3.DataSet:=query1;
qr3.QuickReport3.qRDBText1.DataField:='num_l';
qr3.QuickReport3.qRDBText2.DataField:='nom_l';
qr3.QuickReport3.qRDBText3.DataField:='prenom_l';
quickreport3.Preview;
end;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
if(radiogroup1.ItemIndex=-1)then
showmessage('Veuillez selectionner le type de lecteur pénalisé a afficher !')
else
begin
bitbtn1.Click;
qr3.quickreport3.DataSet:=query1;
qr3.QuickReport3.QRDBText1.DataSet:=query1;
qr3.QuickReport3.QRDBText2.DataSet:=query1;
qr3.QuickReport3.QRDBText3.DataSet:=query1;
qr3.QuickReport3.QRDBText4.DataSet:=query1;
qr3.QuickReport3.QRDBText4.DataSet:=query1;
qr3.QuickReport3.QRDBText4.DataField:='nb_pret';
qr3.QuickReport3.QRDBText4.DataField:='nb_pret';
qr3.QuickReport3.qRDBText1.DataField:='num_l';
qr3.QuickReport3.qRDBText2.DataField:='nom_l';
qr3.QuickReport3.qRDBText3.DataField:='prenom_l';
quickreport3.Print;
end;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
query1.SQL.Clear;
query1.SQL.Add('select num_l,nom_l,prenom_l,nb_pret');
query1.SQL.Add('from lecteur');
query1.SQL.Add('where etat_l=:param1');
query1.ParamByName('param1').AsString:='Pénalisé';
query1.Open;
dbgrid1.DataSource:=datasource1;
dbgrid1.Fields[0].DisplayLabel:='Numéro';
dbgrid1.Fields[1].DisplayLabel:='Nom';
dbgrid1.Fields[2].DisplayLabel:='Prénom';
dbgrid1.Fields[3].DisplayLabel:='Nombre de livre prétés';
end;

end.
