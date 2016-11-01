unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, DBTables;

type
  TForm4 = class(TForm)
    DataSource1: TDataSource;
    Query1: TQuery;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form4: TForm4;

implementation

uses qr2, qr1;

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
dbgrid1.Visible:=true;
dbgrid1.DataSource:=datasource1;
dbgrid1.Fields[1].DisplayLabel:='Numéro lecteur';
dbgrid1.Fields[0].DisplayLabel:='Cote du livre';
dbgrid1.Fields[2].DisplayLabel:='Date de pret';
dbgrid1.Fields[3].DisplayLabel:='Date de retour';
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
bitbtn1.Click;
quickreport2.DataSet:=query1;
qr2.QuickReport2.QRDBText1.DataSet:=query1;
qr2.QuickReport2.QRDBText2.DataSet:=query1;
qr2.QuickReport2.QRDBText3.DataSet:=query1;
qr2.QuickReport2.QRDBText4.DataSet:=query1;
qr2.QuickReport2.QRDBText1.DataField:='cote';
qr2.QuickReport2.QRDBText2.DataField:='num_l';
qr2.QuickReport2.QRDBText3.DataField:='date_pret';
qr2.QuickReport2.QRDBText4.DataField:='date_retour';
quickreport2.Preview;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
bitbtn1.Click;
quickreport2.DataSet:=query1;
qr2.QuickReport2.QRDBText1.DataSet:=query1;
qr2.QuickReport2.QRDBText2.DataSet:=query1;
qr2.QuickReport2.QRDBText3.DataSet:=query1;
qr2.QuickReport2.QRDBText4.DataSet:=query1;
qr2.QuickReport2.QRDBText1.DataField:='cote';
qr2.QuickReport2.QRDBText2.DataField:='num_l';
qr2.QuickReport2.QRDBText3.DataField:='date_pret';
qr2.QuickReport2.QRDBText4.DataField:='date_retour';
quickreport2.Print;
end;

end.
