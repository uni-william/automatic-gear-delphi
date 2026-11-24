unit UFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

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
    Panel1: TPanel;
    btclientes: TBitBtn;
    btprodutos: TBitBtn;
    btforncedores: TBitBtn;
    btpedidos: TBitBtn;
    btfinanceiro: TBitBtn;
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
  if not Assigned(FormClientes) then
    FormClientes := TFormClientes.Create(Self);

  FormClientes.Show;
  FormClientes.BringToFront;
  FormClientes.SetFocus;
end;

procedure TFormPrincipal.N2Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
