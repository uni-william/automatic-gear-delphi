object FormClientes: TFormClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 763
  ClientWidth = 1001
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object pcClientes: TPageControl
    Left = 0
    Top = 0
    Width = 1001
    Height = 763
    ActivePage = tsListagem
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object tsListagem: TTabSheet
      Caption = 'Listagem'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 993
        Height = 153
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 109
          Width = 29
          Height = 15
          Caption = 'Filtro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rgFiltro: TRadioGroup
          Left = 3
          Top = 19
          Width = 502
          Height = 65
          Caption = 'Pesquisar por'
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'CPF/CNPJ'
            'Nome')
          ParentFont = False
          TabOrder = 0
        end
        object edtFiltro: TEdit
          Left = 56
          Top = 105
          Width = 449
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object btConsultar: TBitBtn
          Left = 560
          Top = 100
          Width = 89
          Height = 32
          Caption = '&Consultar'
          Default = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ImageIndex = 2
          Images = DMPrincipal.ImageList
          ParentFont = False
          TabOrder = 2
          OnClick = btConsultarClick
        end
        object btnNovo: TBitBtn
          Left = 664
          Top = 100
          Width = 89
          Height = 32
          Caption = '&Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ImageIndex = 6
          Images = DMPrincipal.ImageList
          ParentFont = False
          TabOrder = 3
          OnClick = btnNovoClick
        end
        object chAtivos: TCheckBox
          Left = 536
          Top = 43
          Width = 153
          Height = 17
          Caption = 'Somente clientes ativos'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 689
        Width = 993
        Height = 41
        Align = alBottom
        TabOrder = 1
        object Label14: TLabel
          Left = 38
          Top = 4
          Width = 33
          Height = 15
          Caption = 'Ativos'
        end
        object Label15: TLabel
          Left = 39
          Top = 20
          Width = 41
          Height = 15
          Caption = 'Inativos'
        end
        object BitBtn1: TBitBtn
          Left = 905
          Top = 1
          Width = 87
          Height = 39
          Align = alRight
          Caption = '&Fechar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Kind = bkClose
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object Panel6: TPanel
          Left = 17
          Top = 5
          Width = 15
          Height = 13
          Color = clBlue
          ParentBackground = False
          TabOrder = 1
        end
        object Panel7: TPanel
          Left = 17
          Top = 21
          Width = 15
          Height = 13
          Color = clRed
          ParentBackground = False
          TabOrder = 2
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 153
        Width = 993
        Height = 536
        Align = alClient
        TabOrder = 2
        object dbgClientes: TDBGrid
          Left = 1
          Top = 1
          Width = 991
          Height = 534
          Align = alClient
          DataSource = DSClientes
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = dbgClientesDrawColumnCell
          OnDblClick = dbgClientesDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'documento'
              Title.Caption = 'CPF/CNPJ'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Nome'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 400
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'logradouro'
              Title.Caption = 'Logradouro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 500
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'numero'
              Title.Caption = 'N'#250'mero'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bairro'
              Title.Caption = 'Bairro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cep'
              Title.Caption = 'CEP'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email'
              ReadOnly = False
              Title.Caption = 'E-mail'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'telefone'
              Title.Caption = 'Telefone'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tipo_pessoa'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
    end
    object tsCadastro: TTabSheet
      Caption = 'Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 993
        Height = 641
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 82
          Top = 40
          Width = 18
          Height = 17
          Caption = 'ID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblId: TLabel
          Left = 106
          Top = 40
          Width = 4
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 40
          Top = 109
          Width = 64
          Height = 17
          Caption = 'CPF/CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 58
          Top = 156
          Width = 41
          Height = 17
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 24
          Top = 204
          Width = 72
          Height = 17
          Caption = 'Logradouro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 46
          Top = 252
          Width = 54
          Height = 17
          Caption = 'N'#250'mero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 59
          Top = 300
          Width = 41
          Height = 17
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 72
          Top = 341
          Width = 27
          Height = 17
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 54
          Top = 388
          Width = 46
          Height = 17
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 77
          Top = 436
          Width = 20
          Height = 17
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 1
          Top = 603
          Width = 96
          Height = 17
          Caption = 'Cadastrado em:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 56
          Top = 532
          Width = 43
          Height = 17
          Caption = 'E-mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 43
          Top = 572
          Width = 57
          Height = 17
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 26
          Top = 72
          Width = 78
          Height = 17
          Caption = 'Tipo pessoa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtDocumento: TMaskEdit
          Left = 112
          Top = 106
          Width = 155
          Height = 25
          CharCase = ecUpperCase
          EditMask = '999.999.999-99;0;_'
          MaxLength = 14
          TabOrder = 0
          Text = ''
        end
        object edtNome: TEdit
          Left = 112
          Top = 152
          Width = 529
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object edtLog: TEdit
          Left = 112
          Top = 200
          Width = 729
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object edtNumero: TEdit
          Left = 112
          Top = 248
          Width = 145
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object edtBairro: TEdit
          Left = 112
          Top = 296
          Width = 433
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object edtCep: TMaskEdit
          Left = 112
          Top = 338
          Width = 89
          Height = 25
          EditMask = '00000-000;0;_'
          MaxLength = 9
          TabOrder = 5
          Text = ''
        end
        object edtCidade: TEdit
          Left = 112
          Top = 385
          Width = 433
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 6
        end
        object cbEstado: TComboBox
          Left = 112
          Top = 432
          Width = 57
          Height = 25
          ItemIndex = 3
          TabOrder = 7
          Text = 'AM'
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
        object edtDataCadastro: TDateTimePicker
          Left = 112
          Top = 599
          Width = 161
          Height = 25
          Date = 46347.00000000000000000
          Format = 'dd/MM/yyyy HH:mm:ss'
          Time = 46347.00000000000000000
          DateMode = dmUpDown
          Enabled = False
          TabOrder = 8
        end
        object chAtivo: TCheckBox
          Left = 61
          Top = 488
          Width = 68
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Ativo:'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 9
        end
        object edtEmail: TEdit
          Left = 112
          Top = 529
          Width = 513
          Height = 25
          TabOrder = 10
        end
        object edtTelefone: TEdit
          Left = 112
          Top = 569
          Width = 225
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 11
        end
        object rbFisica: TRadioButton
          Left = 112
          Top = 72
          Width = 57
          Height = 17
          Caption = 'F'#237'sica'
          Checked = True
          TabOrder = 12
          TabStop = True
          OnClick = rbFisicaClick
        end
        object rbJuridica: TRadioButton
          Left = 192
          Top = 72
          Width = 73
          Height = 17
          Caption = 'Jur'#237'dica'
          TabOrder = 13
          OnClick = rbJuridicaClick
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 641
        Width = 993
        Height = 89
        Align = alClient
        TabOrder = 1
        ExplicitTop = 609
        ExplicitHeight = 96
        object btSalvar: TBitBtn
          Left = 40
          Top = 24
          Width = 98
          Height = 41
          Caption = '&Salvar'
          ImageIndex = 3
          Images = DMPrincipal.ImageList
          TabOrder = 0
          OnClick = btSalvarClick
        end
        object btVoltar: TBitBtn
          Left = 375
          Top = 24
          Width = 98
          Height = 41
          Caption = '&Voltar'
          ImageIndex = 4
          Images = DMPrincipal.ImageList
          TabOrder = 1
          OnClick = btVoltarClick
        end
        object btNovo: TBitBtn
          Left = 200
          Top = 24
          Width = 98
          Height = 41
          Caption = '&Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ImageIndex = 6
          Images = DMPrincipal.ImageList
          ParentFont = False
          TabOrder = 2
          OnClick = btNovoClick
        end
      end
    end
  end
  object DSClientes: TDataSource
    DataSet = QClientes
    Left = 452
    Top = 238
  end
  object QClientes: TFDQuery
    Connection = DMPrincipal.ConPostgres
    SQL.Strings = (
      'select id, documento, nome,'
      '  logradouro, numero, bairro,'
      '  cep, cidade, estado, data_cadastro, ativo,'
      '  email, telefone, tipo_pessoa'
      'from clientes'
      'where (documento =:pdocumento or :pdocumento is null)'
      '  and (nome like :pnome or :pnome is null)'
      '  and (ativo =:pativo or :pativo is null)'
      'order by nome')
    Left = 372
    Top = 238
    ParamData = <
      item
        Name = 'PDOCUMENTO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PNOME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PATIVO'
        DataType = ftBoolean
        ParamType = ptInput
        Value = Null
      end>
  end
  object insertSQL: TFDCommand
    Connection = DMPrincipal.ConPostgres
    CommandText.Strings = (
      '       insert into clientes'
      
        '(id, documento, nome, logradouro, numero, bairro, cep, cidade, e' +
        'stado, ativo, email, telefone, data_cadastro, tipo_pessoa)'
      'values'
      
        '(:pid, :pdocumento, :pnome, :plogradouro, :pnumero, :pbairro, :p' +
        'cep, :pcidade, :pestado, :pativo, :pemail, :ptelefone, CURRENT_T' +
        'IMESTAMP, :ppessoa)')
    ParamData = <
      item
        Name = 'PID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PDOCUMENTO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PNOME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PLOGRADOURO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PNUMERO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PBAIRRO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PCEP'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PCIDADE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PESTADO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PATIVO'
        DataType = ftBoolean
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PEMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PTELEFONE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PPESSOA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    Left = 220
    Top = 318
  end
  object updaSQL: TFDCommand
    Connection = DMPrincipal.ConPostgres
    CommandText.Strings = (
      'update clientes set'
      'documento =:pdocumento,'
      'nome =:pnome,'
      'logradouro =:plogradouro,'
      'numero =:pnumero,'
      'bairro =:pbairro,'
      'cep =:pcep,'
      'cidade =:pcidade,'
      'estado =:pestado,'
      'ativo =:pativo,'
      'email =:pemail,'
      'telefone =:ptelefone,'
      'tipo_pessoa =:ppessoa'
      'where id =:pid')
    ParamData = <
      item
        Name = 'PDOCUMENTO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PNOME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PLOGRADOURO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PNUMERO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PBAIRRO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PCEP'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PCIDADE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PESTADO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PATIVO'
        DataType = ftBoolean
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PEMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PTELEFONE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PPESSOA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    Left = 292
    Top = 318
  end
end
