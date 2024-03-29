unit U_cadastro_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, dm, data.db, Vcl.Grids,
  Vcl.DBGrids;

type
  Tcasdastrocliente = class(TForm)
    page: TPageControl;
    pg_cliente: TTabSheet;
    pg_consulta: TTabSheet;
    db_nome: TDBEdit;
    db_endereco: TDBEdit;
    db_cep: TDBEdit;
    DBComboBox1: TDBComboBox;
    db_celular: TDBEdit;
    db_datanasc: TDBEdit;
    db_cidade: TDBEdit;
    db_rg: TDBEdit;
    db_bairro: TDBEdit;
    db_cpf: TDBEdit;
    db_email: TDBEdit;
    Image1: TImage;
    btn_inserir: TImage;
    btn_salvar: TImage;
    btn_cancelar: TImage;
    btn_localizar: TImage;
    btn_excluir: TImage;
    btn_fechar: TImage;
    btn_editar: TImage;
    db_id: TDBEdit;
    Image2: TImage;
    Button1: TButton;
    DBGrid1: TDBGrid;
    rg_op: TRadioGroup;
    btn_pesq: TButton;
    txt_buscar: TEdit;
    datanasc: TDateTimePicker;
    lb: TLabel;
    btn_imprimir: TButton;
    procedure btn_inserirClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rg_opClick(Sender: TObject);
    procedure btn_pesqClick(Sender: TObject);
  private
    { Private declarations }
    procedure configbotoes;
  public
    { Public declarations }
  end;

var
  casdastrocliente: Tcasdastrocliente;

implementation

{$R *.dfm}

{ Tcasdastrocliente }

procedure Tcasdastrocliente.btn_cancelarClick(Sender: TObject);
begin
  dm1.tb_clientes.cancel;
   btn_salvar.visible:=false;
   btn_cancelar.visible:=false;
  configbotoes;
end;

procedure Tcasdastrocliente.btn_editarClick(Sender: TObject);
begin
  dm1.tb_clientes.Edit;
  configbotoes;
end;

procedure Tcasdastrocliente.btn_excluirClick(Sender: TObject);
begin
case Application.MessageBox('Deseja Excluir o Cliente', 'Excluir Cliente',
MB_YESNO + MB_ICONQUESTION) of
IDYES:
Begin
Dm1.tb_clientes.delete;
ShowMessage('O Cliente foi exclu�do!!');
end;
IDNO:
begin
exit;
end;
end;
end;

procedure Tcasdastrocliente.btn_fecharClick(Sender: TObject);
begin
  if dm1.tb_clientes.State in [dsinsert, dsedit] then
  begin
     showmessage('Salve ou cancele o registro antes de continuar!');
     exit
  end
  else
  begin
    close;
  end;

end;

procedure Tcasdastrocliente.btn_inserirClick(Sender: TObject);
begin
  dm1.tb_clientes.Active:=true;
  dm1.tb_clientes.Insert;

   btn_salvar.visible:=true;
   btn_cancelar.visible:=true;

  configbotoes;
end;

procedure Tcasdastrocliente.btn_localizarClick(Sender: TObject);
begin
     page.TabIndex:=1;
     pg_consulta.TabVisible:=true;
     pg_cliente.TabVisible:=false;
end;

procedure Tcasdastrocliente.btn_pesqClick(Sender: TObject);
begin
  if txt_buscar.Text = '' then
    ShowMessage('Espa�o em branco');
    txt_buscar.SetFocus;
    Exit;
end;



procedure Tcasdastrocliente.btn_salvarClick(Sender: TObject);
begin
dm1.tb_clientes.Post;
showmessage('Cliente Salvo com Sucesso');
 btn_salvar.visible:=false;
 btn_cancelar.visible:=false;
configbotoes;
end;

procedure Tcasdastrocliente.Button1Click(Sender: TObject);
begin
page.TabIndex:=0;
pg_cliente.TabVisible:=true;
pg_consulta.TabVisible:=false;
end;

procedure Tcasdastrocliente.configbotoes;
begin
btn_inserir.Enabled := dm1.tb_clientes.State in [dsbrowse];
btn_editar.Enabled := dm1.tb_clientes.State in [dsbrowse];
btn_excluir.Enabled := dm1.tb_clientes.State in [dsbrowse];
btn_salvar.Enabled := dm1.tb_clientes.State in [dsinsert, dsedit];
btn_cancelar.Enabled := dm1.tb_clientes.State in [dsinsert, dsedit];
end;

procedure Tcasdastrocliente.FormCreate(Sender: TObject);
begin
     page.TabIndex:=0;
     pg_consulta.TabVisible:=false;

     btn_salvar.visible:=false;
     btn_cancelar.visible:=false;

     txt_buscar.Visible:=false;
     lb.Visible:=false;
     datanasc.Visible:=false;
     btn_pesq.Enabled:=false;
     btn_imprimir.Visible:=false;




end;

procedure Tcasdastrocliente.rg_opClick(Sender: TObject);
begin
case rg_op.ItemIndex of
0:
begin
txt_buscar.Visible := true;
lb.Caption := 'Digite o c�digo do Cliente';
lb.Visible := true;
datanasc.Visible := false;
txt_buscar.Clear;
btn_pesq.Enabled := true;
txt_buscar.SetFocus;
end;

1:
begin
txt_buscar.Visible := true;
lb.Caption := 'Digite o nome do Cliente';
lb.Visible := true;
datanasc.Visible := false;
txt_buscar.Clear;
btn_pesq.Enabled := true;
txt_buscar.SetFocus;
end;

2:
begin
txt_buscar.Visible := true;
lb.Caption := 'Digite o RG do Cliente';
lb.Visible := true;
datanasc.Visible := false;
txt_buscar.Clear;
btn_pesq.Enabled := true;
txt_buscar.SetFocus;
end;

3:
begin
txt_buscar.Visible := true;
lb.Caption := 'Digite o CPF do Cliente';
lb.Visible := true;
datanasc.Visible := false;
txt_buscar.Clear;
btn_pesq.Enabled := true;
txt_buscar.SetFocus;
end;

4:
begin
txt_buscar.Visible := false;
lb.Caption := 'Data de nascimento do Cliente';
lb.Visible := true;
datanasc.Visible := true;
txt_buscar.Text := 'a';
btn_pesq.Enabled := true;
end;
end;
end;
end.
