program Cube;

uses
  Forms,
  UP in 'UP.pas' {FP},
  UT in 'UT.pas' {FT};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'CryptoRC4';
  Application.CreateForm(TFP, FP);
  Application.CreateForm(TFT, FT);
  Application.Run;
end.
