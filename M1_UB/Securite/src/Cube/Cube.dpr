program Cube;

uses
  Forms,
  UP in 'UP.pas' {FP},
  UT in 'UT.pas' {FT};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Crypto';
  Application.CreateForm(TFP, FP);
  Application.CreateForm(TFT, FT);
  Application.Run;
end.
