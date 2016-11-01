unit UnitVP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFVP = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FVP: TFVP;

implementation

{$R *.dfm}

procedure TFVP.FormShow(Sender: TObject);
begin
image1.Picture.LoadFromFile('../img/v1.bmp');
end;

procedure TFVP.BitBtn1Click(Sender: TObject);
begin
close;
end;

end.
