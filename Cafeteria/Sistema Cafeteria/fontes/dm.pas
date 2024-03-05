unit dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL, Data.DB,
  FireDAC.Comp.Client, Data.FMTBcd, Data.SqlExpr, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tdm1 = class(TDataModule)
    FDConnection1: TFDConnection;
    driver: TFDPhysMySQLDriverLink;
    waitcursor: TFDGUIxWaitCursor;
    tb_clientes: TFDTable;
    tb_clientesId_cliente: TFDAutoIncField;
    tb_clientesNome: TStringField;
    tb_clientesEndereco: TStringField;
    tb_clientesBairro: TStringField;
    tb_clientesCidade: TStringField;
    tb_clientesUf: TStringField;
    tb_clientesCep: TStringField;
    tb_clientesRg: TStringField;
    tb_clientesCpf: TStringField;
    tb_clientesCelular: TStringField;
    tb_clientesDataNascimento: TDateField;
    dt_clientes: TDataSource;
    tb_func: TFDTable;
    tb_funcId_funcionario: TFDAutoIncField;
    tb_funcNome: TStringField;
    tb_funcCargo: TStringField;
    tb_funcDepartamento: TStringField;
    tb_funcDataNascimento: TDateField;
    tb_funcDataContratacao: TDateField;
    tb_funcSalario: TBCDField;
    tb_funcEndereco: TStringField;
    tb_funcCidade: TStringField;
    tb_funcUf: TStringField;
    tb_funcCep: TStringField;
    tb_funcRg: TStringField;
    tb_funcCpf: TStringField;
    tb_funcTelefone: TStringField;
    tb_funcEmail: TStringField;
    dt_func: TDataSource;
    tb_prod: TFDTable;
    dt_prod: TDataSource;
    tb_clientesemail: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm1: Tdm1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm1.DataModuleCreate(Sender: TObject);
begin
fdconnection1.Params.Database := 'cafeteria';
FDConnection1.Params.UserName := 'root';
FDConnection1.params.Password := '';
FDConnection1.Connected := True;
Driver.VendorLib:= GetCurrentDir + 'Lib\libmySQL';
tb_clientes.TableName:='cliente';
tb_clientes.Active:= True;
tb_func.TableName:='funcionario';
tb_func.Active:= True;
tb_prod.TableName:='produto';
tb_prod.Active:= True;
end;

end.
