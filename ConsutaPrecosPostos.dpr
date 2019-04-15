program ConsutaPrecosPostos;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMain in 'uMain.pas' {FMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
