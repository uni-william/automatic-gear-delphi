program AutomaticGearApp;

uses
  Vcl.Forms,
  UFormPrincipal in 'UFormPrincipal.pas' {FormPrincipal},
  UDMPrincipal in 'UDMPrincipal.pas' {DMPrincipal: TDataModule},
  UFormClientes in 'UFormClientes.pas' {FormClientes},
  UUltils in 'UUltils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.Run;
end.
