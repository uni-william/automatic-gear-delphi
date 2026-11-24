unit UFormClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask;

type
  TFormClientes = class(TForm)
    pcClientes: TPageControl;
    tsListagem: TTabSheet;
    tsCadastro: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    rgFiltro: TRadioGroup;
    edtFiltro: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DSClientes: TDataSource;
    dbgClientes: TDBGrid;
    QClientes: TFDQuery;
    btConsultar: TBitBtn;
    btnNovo: TBitBtn;
    Panel4: TPanel;
    Label2: TLabel;
    lblId: TLabel;
    Label3: TLabel;
    edtDocumento: TMaskEdit;
    Label4: TLabel;
    edtNome: TEdit;
    Label5: TLabel;
    edtLog: TEdit;
    Label6: TLabel;
    edtNumero: TEdit;
    Label7: TLabel;
    edtBairro: TEdit;
    Label8: TLabel;
    edtCep: TMaskEdit;
    Label9: TLabel;
    edtCidade: TEdit;
    Label10: TLabel;
    cbEstado: TComboBox;
    Label11: TLabel;
    edtDataCadastro: TDateTimePicker;
    Panel5: TPanel;
    chAtivo: TCheckBox;
    btSalvar: TBitBtn;
    btVoltar: TBitBtn;
    insertSQL: TFDCommand;
    updaSQL: TFDCommand;
    Label12: TLabel;
    edtEmail: TEdit;
    Label13: TLabel;
    edtTelefone: TEdit;
    btNovo: TBitBtn;
    chAtivos: TCheckBox;
    Panel6: TPanel;
    Panel7: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    rbFisica: TRadioButton;
    rbJuridica: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btVoltarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure dbgClientesDblClick(Sender: TObject);
    procedure dbgClientesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure rbFisicaClick(Sender: TObject);
    procedure rbJuridicaClick(Sender: TObject);
  private
    { Private declarations }
    procedure novoCliente;
    function validarCampos : boolean;
    procedure inserirCliente;
    procedure atualizarCliente;
    procedure carregarCliente;
    function validarDocumento(documento : String) : String;
  public
    { Public declarations }
  end;

var
  FormClientes: TFormClientes;

implementation

{$R *.dfm}

uses UDMPrincipal, UUltils;


procedure TFormClientes.btConsultarClick(Sender: TObject);
begin
  QClientes.Close;
  QClientes.ParamByName('pdocumento').Clear;
  QClientes.ParamByName('pnome').Clear;
  QClientes.ParamByName('pativo').Clear;

  if trim(edtFiltro.Text) <> EmptyStr then
  begin
    if rgFiltro.ItemIndex = 0 then
      QClientes.ParamByName('pdocumento').AsString := edtFiltro.Text
    else
      QClientes.ParamByName('pnome').AsString := '%' + edtFiltro.Text + '%';
  end;
  if chAtivos.Checked = true then
    QClientes.ParamByName('pativo').AsBoolean := True;

  QClientes.Open;

end;

procedure TFormClientes.btnNovoClick(Sender: TObject);
begin
  pcClientes.ActivePage := tsCadastro;
  novoCliente;
end;

procedure TFormClientes.btNovoClick(Sender: TObject);
begin
  novoCliente;
end;

procedure TFormClientes.btSalvarClick(Sender: TObject);
begin
  if validarCampos then
    if lblId.Caption = EmptyStr then
      inserirCliente
    else
      atualizarCliente;
end;

procedure TFormClientes.btVoltarClick(Sender: TObject);
begin
  QClientes.Close;
  pcClientes.ActivePage := tsListagem;
  novoCliente;
end;

procedure TFormClientes.carregarCliente;
begin
  if QClientes.Active and (QClientes.RecordCount > 0) then
  begin
    lblId.Caption := Copy(GUIDToString(QClientes.FieldByName('id').AsGuid), 2, 36);

    if  QClientes.FieldByName('tipo_pessoa').AsString = 'F' then
    begin
      rbFisica.Checked := true;
      edtDocumento.EditMask := '999.999.999-99;0;_';
    end
    else
    begin
      rbJuridica.Checked := true;
      edtDocumento.EditMask := '99.999.999/9999-99;0;_';
    end;

    edtDocumento.Text := QClientes.FieldByName('documento').AsString;
    edtNome.Text := QClientes.FieldByName('nome').AsString;
    edtLog.Text := QClientes.FieldByName('logradouro').AsString;
    edtNumero.Text := QClientes.FieldByName('numero').AsString;
    edtBairro.Text := QClientes.FieldByName('bairro').AsString;
    edtCep.Text := QClientes.FieldByName('cep').AsString;
    edtCidade.Text := QClientes.FieldByName('cidade').AsString;
    cbEstado.Text :=  QClientes.FieldByName('estado').AsString;
    edtDataCadastro.DateTime := QClientes.FieldByName('data_cadastro').AsDateTime;
    chAtivo.Checked := QClientes.FieldByName('ativo').AsBoolean;
    edtEmail.Text := QClientes.FieldByName('email').AsString;
    edtTelefone.Text := QClientes.FieldByName('telefone').AsString;
    pcClientes.ActivePage := tsCadastro;
  end;
end;

procedure TFormClientes.dbgClientesDblClick(Sender: TObject);
begin
  carregarCliente;
end;

procedure TFormClientes.dbgClientesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if QClientes.FieldByName('ativo').AsBoolean then
    dbgClientes.Canvas.Font.Color := clBlue
  else
    dbgClientes.Canvas.Font.Color := clRed;

  dbgClientes.DefaultDrawColumnCell(
    Rect, DataCol, Column, State);
end;

procedure TFormClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormClientes.FormDestroy(Sender: TObject);
begin
  FormClientes := nil;
end;

procedure TFormClientes.FormShow(Sender: TObject);
begin
  novoCliente;
end;

procedure TFormClientes.inserirCliente;
var
 uuid : String;
begin
  uuid := GerarUUID;
  insertSQL.ParamByName('pid').AsGUID := StringToGUID(uuid);
  insertSQL.ParamByName('pdocumento').AsString := edtDocumento.Text;
  insertSQL.ParamByName('pnome').AsString := edtNome.Text;
  insertSQL.ParamByName('plogradouro').AsString := edtLog.Text;
  insertSQL.ParamByName('pnumero').AsString := edtNumero.Text;
  insertSQL.ParamByName('pbairro').AsString := edtBairro.Text;
  insertSQL.ParamByName('pcep').AsString := edtCep.Text;
  insertSQL.ParamByName('pcidade').AsString := edtCidade.Text;
  insertSQL.ParamByName('pestado').AsString := cbEstado.Text;
  edtDataCadastro.DateTime := Now;
  insertSQL.ParamByName('pativo').AsBoolean := chAtivo.Checked;
  insertSQL.ParamByName('pemail').AsString := edtEmail.Text;
  insertSQL.ParamByName('ptelefone').AsString := edtTelefone.Text;
  if rbFisica.Checked then
    insertSQL.ParamByName('ppessoa').AsString := 'F'
  else
    insertSQL.ParamByName('ppessoa').AsString := 'J';
  insertSQL.Execute;
  lblId.Caption := uuid;
  ShowMessage('Cliente salvo com sucesso!');

end;

procedure TFormClientes.atualizarCliente;
begin
  updaSQL.ParamByName('pid').AsGUID := StringToGUID('{' + lblId.Caption + '}');
  updaSQL.ParamByName('pdocumento').AsString := edtDocumento.Text;
  updaSQL.ParamByName('pnome').AsString := edtNome.Text;
  updaSQL.ParamByName('plogradouro').AsString := edtLog.Text;
  updaSQL.ParamByName('pnumero').AsString := edtNumero.Text;
  updaSQL.ParamByName('pbairro').AsString := edtBairro.Text;
  updaSQL.ParamByName('pcep').AsString := edtCep.Text;
  updaSQL.ParamByName('pcidade').AsString := edtCidade.Text;
  updaSQL.ParamByName('pestado').AsString := cbEstado.Text;
  updaSQL.ParamByName('pativo').AsBoolean := chAtivo.Checked;
  updaSQL.ParamByName('pemail').AsString := edtEmail.Text;
  updaSQL.ParamByName('ptelefone').AsString := edtTelefone.Text;
  if rbFisica.Checked then
    updaSQL.ParamByName('ppessoa').AsString := 'F'
  else
    updaSQL.ParamByName('ppessoa').AsString := 'J';
  updaSQL.Execute;
  ShowMessage('Cliente atualizado com sucesso!');
end;

procedure TFormClientes.novoCliente;
begin
  lblId.Caption := '';
  rbFisica.Checked := true;
  edtDocumento.Clear;
  edtDocumento.EditMask := '999.999.999-99;0;_';
  edtNome.Clear;
  edtLog.Clear;
  edtNumero.Clear;
  edtBairro.Clear;
  edtCep.Clear;
  edtCidade.Clear;
  cbEstado.ItemIndex := 3;
  chAtivo.Checked := true;
  edtDataCadastro.DateTime := Now;
  edtEmail.Clear;
  edtTelefone.Clear;
end;

procedure TFormClientes.rbFisicaClick(Sender: TObject);
begin
  edtDocumento.EditMask := '999.999.999-99;0;_';
end;

procedure TFormClientes.rbJuridicaClick(Sender: TObject);
begin
  edtDocumento.EditMask := '99.999.999/9999-99;0;_';
end;

function TFormClientes.validarCampos: Boolean;
var
  resultado : Boolean;
  defalutMsg, camposMsg: String;
begin
  defalutMsg := 'Os seguintes campos são obrigatórios: ' + #13 + #13;
  camposMsg := '';
  resultado := true;
  if trim(validarDocumento(edtDocumento.Text)) = EmptyStr then
  begin
    camposMsg := camposMsg + 'CPF/CNPJ' + #13;
    resultado := false;
  end;

  if trim(edtNome.Text) = EmptyStr then
  begin
    camposMsg := camposMsg + 'Nome' + #13;
    resultado := false;
  end;

  if trim(edtDocumento.Text) = EmptyStr then
    edtDocumento.SetFocus
  else if trim(edtNome.Text) = EmptyStr then
    edtNome.SetFocus;

  if camposMsg <> '' then
  begin
      MessageDlg(defalutMsg + camposMsg, mtWarning, [mbOK], 0);
  end;

  Result := resultado;

end;

function TFormClientes.validarDocumento(documento: String): String;
var
  newDoc : String;
begin
   newDoc := documento.Replace('.', '');
   newDoc := newDoc.Replace('-', '');
   newDoc := newDoc.Replace('/', '');
   Result := newDoc;

end;

end.
