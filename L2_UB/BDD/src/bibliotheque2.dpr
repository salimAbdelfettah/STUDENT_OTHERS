program bibliotheque2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  UnitAP in 'UnitAP.pas' {Fap},
  UnitVP in 'UnitVP.pas' {FVP},
  Unit3 in 'Unit3.pas' {Form3},
  qr1 in 'qr1.pas' {QuickReport1: TQuickRep},
  Unit4 in 'Unit4.pas' {Form4},
  qr2 in 'qr2.pas' {QuickReport2: TQuickRep},
  Unit5 in 'Unit5.pas' {Form5},
  qr3 in 'qr3.pas' {QuickReport3: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Bibliotheque';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFap, Fap);
  Application.CreateForm(TFVP, FVP);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TQuickReport1, QuickReport1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TQuickReport2, QuickReport2);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TQuickReport3, QuickReport3);
  Application.Run;
end.
