object dm1: Tdm1
  OnCreate = DataModuleCreate
  Height = 304
  Width = 460
  object FDConnection1: TFDConnection
    ConnectionName = 'cafeteria'
    Params.Strings = (
      'Database=cafeteria'
      'User_Name=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object driver: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Guilhas-PC\Downloads\Sistema Cafeteria\Sistema Cafeteri' +
      'a\lib\libmySQL.dll'
    Left = 32
    Top = 80
  end
  object waitcursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 152
  end
  object tb_clientes: TFDTable
    IndexFieldNames = 'Id_cliente'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    UpdateOptions.UpdateTableName = 'cafeteria.cliente'
    TableName = 'cafeteria.cliente'
    Left = 136
    Top = 8
    object tb_clientesId_cliente: TFDAutoIncField
      FieldName = 'Id_cliente'
      Origin = 'Id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_clientesNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 255
    end
    object tb_clientesEndereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Size = 255
    end
    object tb_clientesBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Bairro'
      Origin = 'Bairro'
      Size = 255
    end
    object tb_clientesCidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cidade'
      Origin = 'Cidade'
      Size = 255
    end
    object tb_clientesUf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Uf'
      Origin = 'Uf'
      FixedChar = True
      Size = 2
    end
    object tb_clientesCep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cep'
      Origin = 'Cep'
      Size = 10
    end
    object tb_clientesRg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Rg'
      Origin = 'Rg'
      EditMask = '99.999.999.99;1;_'
    end
    object tb_clientesCpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cpf'
      Origin = 'Cpf'
      EditMask = '999.999.999-99;1;_'
      Size = 14
    end
    object tb_clientesCelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Celular'
      Origin = 'Celular'
      EditMask = '(99)99999-9999;1;_'
    end
    object tb_clientesDataNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataNascimento'
      Origin = 'DataNascimento'
      EditMask = '99/99/9999;1;_'
    end
    object tb_clientesemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
  end
  object dt_clientes: TDataSource
    DataSet = tb_clientes
    Left = 200
    Top = 8
  end
  object tb_func: TFDTable
    IndexFieldNames = 'Id_funcionario'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    UpdateOptions.UpdateTableName = 'funcionario'
    TableName = 'funcionario'
    Left = 136
    Top = 80
    object tb_funcId_funcionario: TFDAutoIncField
      FieldName = 'Id_funcionario'
      Origin = 'Id_funcionario'
      ReadOnly = True
    end
    object tb_funcNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 255
    end
    object tb_funcCargo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Size = 255
    end
    object tb_funcDepartamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Departamento'
      Origin = 'Departamento'
      Size = 255
    end
    object tb_funcDataNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataNascimento'
      Origin = 'DataNascimento'
    end
    object tb_funcDataContratacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataContratacao'
      Origin = 'DataContratacao'
    end
    object tb_funcSalario: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Salario'
      Origin = 'Salario'
      Precision = 10
      Size = 2
    end
    object tb_funcEndereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Size = 255
    end
    object tb_funcCidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cidade'
      Origin = 'Cidade'
      Size = 255
    end
    object tb_funcUf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Uf'
      Origin = 'Uf'
      FixedChar = True
      Size = 2
    end
    object tb_funcCep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cep'
      Origin = 'Cep'
      Size = 10
    end
    object tb_funcRg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Rg'
      Origin = 'Rg'
    end
    object tb_funcCpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cpf'
      Origin = 'Cpf'
      Size = 14
    end
    object tb_funcTelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefone'
      Origin = 'Telefone'
    end
    object tb_funcEmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Email'
      Origin = 'Email'
      Size = 255
    end
  end
  object dt_func: TDataSource
    DataSet = tb_func
    Left = 200
    Top = 80
  end
  object tb_prod: TFDTable
    Connection = FDConnection1
    Left = 136
    Top = 152
  end
  object dt_prod: TDataSource
    DataSet = tb_prod
    Left = 200
    Top = 152
  end
end
