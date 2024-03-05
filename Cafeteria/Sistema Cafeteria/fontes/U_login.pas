unit U_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.StdCtrls, U_splash;

type
  Tlogin = class(TForm)
    Image1: TImage;
    usua: TEdit;
    senha: TMaskEdit;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  login: Tlogin;

implementation

{$R *.dfm}

procedure Tlogin.Image2Click(Sender: TObject);
begin
Application.CreateForm(Tsplash, Splash);
  Splash.Showmodal;
  login.Close;
end;

end.
