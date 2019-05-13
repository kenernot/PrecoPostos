program ConsutaPrecosPostos;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMain in 'uMain.pas' {FMain},
  uLogin in 'uLogin.pas' {FLogin},
  uCadastroUsuario in 'uCadastroUsuario.pas' {FCadastroUsuario},
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFCadastroUsuario, FCadastroUsuario);
  Application.Run;
end.
