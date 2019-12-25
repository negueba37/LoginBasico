program ProjetoMVC;

uses
  System.StartUpCopy,
  FMX.Forms,
  untLogin in 'untLogin.pas' {Form3},
  Usuario in 'Usuario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
