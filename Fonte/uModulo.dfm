object Modulo: TModulo
  OldCreateOrder = False
  Height = 336
  Width = 589
  object ConexaoPDV: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object qryVendas: TFDQuery
    Connection = ConexaoPDV
    FetchOptions.AssignedValues = [evMode, evRowsetSize]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select'
      'condicoespagamentos.descricao CONDICAOPAGAMENTO,'
      'empresas.razaosocial EMPRESA_RAZAOSOCIAL,'
      'usuarios.usuario USUARIO_NOME,'
      'filiais.razaosocial FILIAL_RAZAOSOCIAL,'
      'pessoas.nomefantasia PESSOA_NOME,'
      'pessoas.cnpj CNPJ,'
      'pessoas.logradouroresidencial ENDERECO,'
      'series.descricao SERIE_DESCRICAO,'
      'vendas.*'
      'from'
      'vendas, condicoespagamentos, empresas,'
      'usuarios, filiais, pessoas, series'
      'where'
      '('
      'vendas.condicaopagamento = condicoespagamentos.codigo and'
      'vendas.empresa           = empresas.codigo and'
      'vendas.usuario           = usuarios.codigo and'
      'vendas.filial            = filiais.codigo and'
      'vendas.pessoa            = pessoas.codigo and'
      'vendas.serie             = series.codigo'
      ')'
      'order by vendas.codigo')
    Left = 32
    Top = 72
  end
  object qryVProdutos: TFDQuery
    Connection = ConexaoPDV
    Left = 96
    Top = 72
  end
  object dsVendas: TDataSource
    DataSet = qryVendas
    OnDataChange = dsVendasDataChange
    Left = 32
    Top = 128
  end
  object dsVProdutos: TDataSource
    DataSet = qryVProdutos
    Left = 96
    Top = 128
  end
  object dsFilial: TDataSource
    DataSet = qryFilial
    Left = 160
    Top = 128
  end
  object qryFilial: TFDQuery
    Connection = ConexaoPDV
    SQL.Strings = (
      'select'
      '*'
      'from filiais')
    Left = 160
    Top = 72
  end
  object qryNFCe: TFDQuery
    Connection = ConexaoPDV
    Left = 208
    Top = 72
  end
  object qryAux: TFDQuery
    Connection = ConexaoPDV
    Left = 264
    Top = 72
  end
  object qryClassificacaoFiscal: TFDQuery
    Connection = ConexaoPDV
    SQL.Strings = (
      'select'
      'CLASSIFICACOESFISCAIS.*,'
      'ITENSCLASSIFICACOESFISCAIS.*'
      'from CLASSIFICACOESFISCAIS, ITENSCLASSIFICACOESFISCAIS'
      'where'
      '('
      
        'CLASSIFICACOESFISCAIS.CODIGO = ITENSCLASSIFICACOESFISCAIS.CLASSI' +
        'FICACAOFISCAL'
      ')')
    Left = 264
    Top = 128
  end
  object dsClassificacaoFiscal: TDataSource
    DataSet = qryClassificacaoFiscal
    Left = 40
    Top = 184
  end
  object SaveFile: TSaveDialog
    Left = 176
    Top = 224
  end
  object qryRelatorio: TFDQuery
    Connection = ConexaoPDV
    SQL.Strings = (
      'SELECT'
      'V.*'
      'FROM VENDAS V')
    Left = 356
    Top = 8
  end
  object RelVendas: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43214.348461319400000000
    ReportOptions.LastChange = 43456.579379548610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '       cTotal_5102: currency;'
      
        '       cTotal_5405: currency;                                   ' +
        '   '
      ''
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <dbRelVendaItens."CFOPPRODUTO"> = 5102 then'
      '       cTotal_5102 := cTotal_5102 + <dbRelVendaItens."TOTAL">;'
      '    if <dbRelVendaItens."CFOPPRODUTO"> = 5405 then'
      
        '       cTotal_5405 := cTotal_5405 + <dbRelVendaItens."TOTAL">;  ' +
        '               '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 530
    Top = 8
    Datasets = <
      item
        DataSet = dbRelVendaItens
        DataSetName = 'dbRelVendaItens'
      end
      item
        DataSet = dbRelVendas
        DataSetName = 'dbRelVendas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 75.590600000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Align = baBottom
          Top = 22.677180000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo14: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DETALHADO DE VENDAS NFCe')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 483.779840000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 552.252320000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object TotalPages1: TfrxMemoView
          Left = 7.559060000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 58.252010000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = dbRelVendas
        DataSetName = 'dbRelVendas'
        RowCount = 0
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 38.897650000000000000
          Fill.BackColor = clScrollBar
          Frame.Color = clNone
        end
        object Memo1: TfrxMemoView
          Left = 1.779530000000000000
          Top = 19.779529999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[dbRelVendas."CODIGO"]')
        end
        object Memo2: TfrxMemoView
          Left = 75.590600000000000000
          Top = 19.779529999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[dbRelVendas."FICHA"]')
        end
        object Memo3: TfrxMemoView
          Left = 150.622140000000000000
          Top = 19.779529999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[dbRelVendas."DATA"]')
        end
        object Memo4: TfrxMemoView
          Left = 251.448980000000000000
          Top = 19.779529999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[dbRelVendas."HORA"]')
        end
        object Memo5: TfrxMemoView
          Left = 349.716760000000000000
          Top = 19.779529999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[dbRelVendas."STATUSNF"]')
        end
        object Memo6: TfrxMemoView
          Left = 588.827150000000000000
          Top = 19.779529999999990000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[dbRelVendas."VALORTOTAL"]')
        end
        object Memo16: TfrxMemoView
          Top = 39.354360000000010000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Detalhes:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 1.779530000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 76.590600000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Ficha')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 150.622148540000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 252.448988540000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Hora')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 350.716768540000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 588.827168310000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 64.252010000000040000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 453.543600000000000000
          Top = 15.118119999999920000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Vendas = [SUM(<dbRelVendas."VALORTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baBottom
          Top = 64.252010000000040000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Align = baWidth
          Top = 11.338590000000120000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo28: TfrxMemoView
          Left = 15.118120000000000000
          Top = 40.354359999999990000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[cTotal_5102]')
        end
        object Memo29: TfrxMemoView
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total CFOP 5102')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 204.094620000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total CFOP 5102')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 204.094620000000000000
          Top = 40.354359999999990000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[cTotal_5405]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = dbRelVendaItens
        DataSetName = 'dbRelVendaItens'
        Filter = '<dbRelVendaItens."VENDA">=<dbRelVendas."CODIGO">'
        RowCount = 0
        object Shape2: TfrxShapeView
          Left = 184.196970000000000000
          Top = 42.354359999999990000
          Width = 362.834880000000000000
          Height = 49.133890000000000000
        end
        object dbRelVendasCODPRODUTO: TfrxMemoView
          Left = 2.779530000000000000
          Top = 21.559059999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = dbRelVendas
          DataSetName = 'dbRelVendas'
          Memo.UTF8W = (
            '[dbRelVendaItens."CODPRODUTO"]')
        end
        object dbRelVendasDESCRICAO: TfrxMemoView
          Left = 78.370130000000000000
          Top = 21.559059999999990000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          DataSet = dbRelVendas
          DataSetName = 'dbRelVendas'
          Memo.UTF8W = (
            '[dbRelVendaItens."DESCRICAO"]')
        end
        object dbRelVendasQUANTIDADE: TfrxMemoView
          Left = 392.275820000000000000
          Top = 21.559059999999990000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = dbRelVendas
          DataSetName = 'dbRelVendas'
          Memo.UTF8W = (
            '[dbRelVendaItens."QUANTIDADE"]')
        end
        object dbRelVendasVALORUND: TfrxMemoView
          Left = 509.236550000000000000
          Top = 21.559059999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = dbRelVendas
          DataSetName = 'dbRelVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[dbRelVendaItens."VALORUND"]')
        end
        object dbRelVendasTOTAL: TfrxMemoView
          Left = 611.283860000000000000
          Top = 21.559059999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = dbRelVendas
          DataSetName = 'dbRelVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[dbRelVendaItens."TOTAL"]')
        end
        object Memo17: TfrxMemoView
          Left = 2.779530000000000000
          Top = 0.779529999999965700
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 78.370130000000000000
          Top = 0.779529999999965700
          Width = 309.921416060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 392.275820000000000000
          Top = 0.779529999999965700
          Width = 49.133846060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Quant.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 509.236550000000000000
          Top = 0.779529999999965700
          Width = 94.488206060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Valor UND')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 611.283860000000000000
          Top = 0.779529999999965700
          Width = 94.488206060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 188.756030000000000000
          Top = 38.354359999999990000
          Width = 139.842566060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Informa'#231#245'es Fiscais')
          ParentFont = False
          VAlign = vaCenter
        end
        object dbRelVendasCSTRING: TfrxMemoView
          Left = 229.551330000000000000
          Top = 74.811069999999910000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = dbRelVendas
          DataSetName = 'dbRelVendas'
          Memo.UTF8W = (
            '[dbRelVendaItens."CSTRING"]')
        end
        object dbRelVendasCFOPPRODUTO: TfrxMemoView
          Left = 316.480520000000000000
          Top = 74.811069999999910000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = dbRelVendas
          DataSetName = 'dbRelVendas'
          Memo.UTF8W = (
            '[dbRelVendaItens."CFOPPRODUTO"]')
        end
        object dbRelVendasPERCENTUALICMS: TfrxMemoView
          Left = 376.953000000000000000
          Top = 74.811069999999910000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = dbRelVendas
          DataSetName = 'dbRelVendas'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[dbRelVendaItens."PERCENTUALICMS"]')
        end
        object dbRelVendasVALORICMSPRODUTO: TfrxMemoView
          Left = 460.102660000000000000
          Top = 74.811069999999910000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = dbRelVendas
          DataSetName = 'dbRelVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[dbRelVendaItens."VALORICMSPRODUTO"]')
        end
        object dbRelVendasVALORDESCONTOPRODUTO: TfrxMemoView
          Left = 443.866420000000000000
          Top = 21.677180000000020000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = dbRelVendas
          DataSetName = 'dbRelVendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[dbRelVendaItens."VALORDESCONTOPRODUTO"]')
        end
        object Memo23: TfrxMemoView
          Left = 444.086890000000000000
          Top = 0.779529999999965700
          Width = 64.251966060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 229.551330000000000000
          Top = 54.472480000000020000
          Width = 83.149616060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'CST/CSOSN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 316.480520000000000000
          Top = 54.692950000000110000
          Width = 56.692906060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 376.953000000000000000
          Top = 54.472480000000020000
          Width = 79.370086060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            '% ICMS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 460.102660000000000000
          Top = 54.692950000000110000
          Width = 79.370086060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'R$ ICMS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dbRelVendas: TfrxDBDataset
    UserName = 'dbRelVendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FICHA=FICHA'
      'ORCAMENTO=ORCAMENTO'
      'ORDEMSERVICO=ORDEMSERVICO'
      'EMPRESA=EMPRESA'
      'FILIAL=FILIAL'
      'NUMERO=NUMERO'
      'COO=COO'
      'COOCANCELAMENTO=COOCANCELAMENTO'
      'SERIALECF=SERIALECF'
      'CFOP=CFOP'
      'SERIE=SERIE'
      'MODELO=MODELO'
      'DATA=DATA'
      'HORA=HORA'
      'REPRESENTANTE=REPRESENTANTE'
      'PESSOA=PESSOA'
      'CONDICAOPAGAMENTO=CONDICAOPAGAMENTO'
      'BASECALCULOICMS=BASECALCULOICMS'
      'VALORICMS=VALORICMS'
      'BASECALCULOICMSST=BASECALCULOICMSST'
      'VALORICMSST=VALORICMSST'
      'VALORFRETE=VALORFRETE'
      'VALORSEGURO=VALORSEGURO'
      'VALOROUTRASDESPESAS=VALOROUTRASDESPESAS'
      'BASECALCULOIPI=BASECALCULOIPI'
      'VALORIPI=VALORIPI'
      'BASECALCULOISS=BASECALCULOISS'
      'VALORISS=VALORISS'
      'VALORPRODUTOS=VALORPRODUTOS'
      'VALORSERVICOS=VALORSERVICOS'
      'VALORDESCONTO=VALORDESCONTO'
      'VALORCREDITO=VALORCREDITO'
      'VALORTOTAL=VALORTOTAL'
      'QUANTIDADEVOLUMES=QUANTIDADEVOLUMES'
      'USUARIO=USUARIO'
      'OBSERVACOES=OBSERVACOES'
      'VALORTROCO=VALORTROCO'
      'SITUACAO=SITUACAO'
      'NUMEROESTACAO=NUMEROESTACAO'
      'SINCRONIZADO=SINCRONIZADO'
      'COOFICHA=COOFICHA'
      'CERFICHA=CERFICHA'
      'PRECOVENDA=PRECOVENDA'
      'VALORSERVICOESPECIAL=VALORSERVICOESPECIAL'
      'VALORCUSTOMEDIO=VALORCUSTOMEDIO'
      'VALORCUSTOFORNECEDOR=VALORCUSTOFORNECEDOR'
      'VALORCUSTOCOMPRA=VALORCUSTOCOMPRA'
      'PRECOCOMPRA=PRECOCOMPRA'
      'CODIGODAVENDA=CODIGODAVENDA'
      'STATUSNFCE=STATUSNFCE'
      'CHAVE=CHAVE'
      'CAMINHOXML=CAMINHOXML'
      'STATUSNF=STATUSNF'
      'UPDATEV=UPDATEV')
    DataSet = qryRelatorio
    BCDToCurrency = False
    Left = 458
    Top = 8
  end
  object dbRelVendasResumo: TfrxDBDataset
    UserName = 'dbRelVendasResumo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FICHA=FICHA'
      'ORCAMENTO=ORCAMENTO'
      'ORDEMSERVICO=ORDEMSERVICO'
      'EMPRESA=EMPRESA'
      'FILIAL=FILIAL'
      'NUMERO=NUMERO'
      'COO=COO'
      'COOCANCELAMENTO=COOCANCELAMENTO'
      'SERIALECF=SERIALECF'
      'CFOP=CFOP'
      'SERIE=SERIE'
      'MODELO=MODELO'
      'DATA=DATA'
      'HORA=HORA'
      'REPRESENTANTE=REPRESENTANTE'
      'PESSOA=PESSOA'
      'CONDICAOPAGAMENTO=CONDICAOPAGAMENTO'
      'BASECALCULOICMS=BASECALCULOICMS'
      'VALORICMS=VALORICMS'
      'BASECALCULOICMSST=BASECALCULOICMSST'
      'VALORICMSST=VALORICMSST'
      'VALORFRETE=VALORFRETE'
      'VALORSEGURO=VALORSEGURO'
      'VALOROUTRASDESPESAS=VALOROUTRASDESPESAS'
      'BASECALCULOIPI=BASECALCULOIPI'
      'VALORIPI=VALORIPI'
      'BASECALCULOISS=BASECALCULOISS'
      'VALORISS=VALORISS'
      'VALORPRODUTOS=VALORPRODUTOS'
      'VALORSERVICOS=VALORSERVICOS'
      'VALORDESCONTO=VALORDESCONTO'
      'VALORCREDITO=VALORCREDITO'
      'VALORTOTAL=VALORTOTAL'
      'QUANTIDADEVOLUMES=QUANTIDADEVOLUMES'
      'USUARIO=USUARIO'
      'OBSERVACOES=OBSERVACOES'
      'VALORTROCO=VALORTROCO'
      'SITUACAO=SITUACAO'
      'NUMEROESTACAO=NUMEROESTACAO'
      'SINCRONIZADO=SINCRONIZADO'
      'COOFICHA=COOFICHA'
      'CERFICHA=CERFICHA'
      'PRECOVENDA=PRECOVENDA'
      'VALORSERVICOESPECIAL=VALORSERVICOESPECIAL'
      'VALORCUSTOMEDIO=VALORCUSTOMEDIO'
      'VALORCUSTOFORNECEDOR=VALORCUSTOFORNECEDOR'
      'VALORCUSTOCOMPRA=VALORCUSTOCOMPRA'
      'PRECOCOMPRA=PRECOCOMPRA'
      'CODIGODAVENDA=CODIGODAVENDA'
      'STATUSNFCE=STATUSNFCE'
      'CHAVE=CHAVE'
      'CAMINHOXML=CAMINHOXML'
      'STATUSNF=STATUSNF'
      'UPDATEV=UPDATEV')
    DataSet = qryRelatorioResumo
    BCDToCurrency = False
    Left = 458
    Top = 120
  end
  object qryRelatorioResumo: TFDQuery
    Connection = ConexaoPDV
    SQL.Strings = (
      'SELECT * FROM VENDAS')
    Left = 352
    Top = 120
  end
  object qryRelatorioItens: TFDQuery
    Connection = ConexaoPDV
    SQL.Strings = (
      'SELECT'
      'I.venda VENDA,'
      'I.produto CODPRODUTO,'
      'I.descricao DESCRICAO,'
      'I.quantidade QUANTIDADE,'
      'I.valor VALORUND,'
      'I.total TOTAL,'
      'I.cst cstring, '
      'I.cfop CFOPPRODUTO,'
      'I.percentualicms PERCENTUALICMS,'
      'I.valoricms VALORICMSPRODUTO,'
      'I.valordesconto VALORDESCONTOPRODUTO'
      'FROM ITENSVENDAS I')
    Left = 352
    Top = 64
  end
  object dbRelVendaItens: TfrxDBDataset
    UserName = 'dbRelVendaItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VENDA=VENDA'
      'CODPRODUTO=CODPRODUTO'
      'DESCRICAO=DESCRICAO'
      'QUANTIDADE=QUANTIDADE'
      'VALORUND=VALORUND'
      'TOTAL=TOTAL'
      'CSTRING=CSTRING'
      'CFOPPRODUTO=CFOPPRODUTO'
      'PERCENTUALICMS=PERCENTUALICMS'
      'VALORICMSPRODUTO=VALORICMSPRODUTO'
      'VALORDESCONTOPRODUTO=VALORDESCONTOPRODUTO')
    DataSet = qryRelatorioItens
    BCDToCurrency = False
    Left = 456
    Top = 64
  end
  object qryRelatorioCFOP: TFDQuery
    Connection = ConexaoPDV
    SQL.Strings = (
      'select sum(v.total) total,'
      'v.data, v.cfop from itensvendas v'
      'where ((v.cfop = 5102) or (v.cfop = 5405)) and'
      '(v.enviado_nf = '#39'S'#39')'
      'group by v.data, v.cfop')
    Left = 352
    Top = 176
  end
  object frxdbRelVendaCFOP: TfrxDBDataset
    UserName = 'frxdbRelVendaCFOP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TOTAL=TOTAL'
      'DATA=DATA'
      'CFOP=CFOP')
    DataSet = qryRelatorioCFOP
    BCDToCurrency = False
    Left = 456
    Top = 176
  end
  object OpenDialog: TOpenDialog
    Left = 248
    Top = 224
  end
  object QEmpresa: TFDQuery
    Connection = ConexaoPDV
    SQL.Strings = (
      'select * from empresas')
    Left = 352
    Top = 240
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 424
    Top = 248
  end
  object DSEmpresa: TDataSource
    DataSet = QEmpresa
    Left = 240
    Top = 280
  end
end
