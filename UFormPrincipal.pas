unit UFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Produtos1: TMenuItem;
    Operaes1: TMenuItem;
    Pedidos1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UFormClientes, UDMPrincipal;

procedure TFormPrincipal.Clientes1Click(Sender: TObject);
begin
  FormClientes := TFormClientes.Create(Self);
  FormClientes.Show;
end;

procedure TFormPrincipal.N2Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
