program SistemaCafeteria;

uses
  Vcl.Forms,
  U_login in 'fontes\U_login.pas' {login},
  dm in 'fontes\dm.pas' {dm1: TDataModule},
  U_splash in 'fontes\U_splash.pas' {splash},
  U_home in 'fontes\U_home.pas' {home},
  U_cadastro_cliente in 'fontes\U_cadastro_cliente.pas' {casdastrocliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tlogin, login);
  Application.CreateForm(Tdm1, dm1);
  Application.CreateForm(Thome, home);
  Application.CreateForm(Tcasdastrocliente, casdastrocliente);
  Application.Run;
end.
