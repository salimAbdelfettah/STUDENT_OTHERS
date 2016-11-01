unit UnitAP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFap = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Fap: TFap;

implementation

uses Unit1;

{$R *.dfm}

procedure TFap.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.enabled:=true;
end;

procedure TFap.FormShow(Sender: TObject);
begin
form1.Enabled:=false;
end;

end.
