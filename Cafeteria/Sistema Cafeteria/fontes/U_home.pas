unit U_home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Menus, U_cadastro_cliente;

type
  Thome = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure Arquivo2Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  home: Thome;

implementation

{$R *.dfm}

procedure Thome.Arquivo2Click(Sender: TObject);
begin
close;
end;

procedure Thome.Image2Click(Sender: TObject);
begin
casdastrocliente.showmodal;
home.Close;
end;

end.
