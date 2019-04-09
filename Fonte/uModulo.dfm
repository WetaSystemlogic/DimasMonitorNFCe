object Modulo: TModulo
  OldCreateOrder = False
  Height = 336
  Width = 589
  object ConexaoPDV: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=D:\NAO ABRA\NAO\Projetos\Projeto Monitor Dimas\Base PDV' +
        '\PDV.FDB'
      'DriverID=FB')
    Connected = True
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
    ReportOptions.LastChange = 43564.014927858800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 530
    Top = 8
    Datasets = <
      item
        DataSet = frxdbRelVendaCFOPResumido
        DataSetName = 'frxdbRelVendaCFOPResumido'
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 427.086890000000000000
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
        Height = 191.976500000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        DataSet = frxdbRelVendaCFOPResumido
        DataSetName = 'frxdbRelVendaCFOPResumido'
        RowCount = 0
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object frxdbRelVendaCFOPResumidoCFOP: TfrxMemoView
          Align = baWidth
          Top = 38.574830000000010000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          DataSet = frxdbRelVendaCFOPResumido
          DataSetName = 'frxdbRelVendaCFOPResumido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelVendaCFOPResumido."CFOP"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 88.929189999999990000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object frxdbRelVendaCFOPResumidoTOTAL: TfrxMemoView
          Align = baWidth
          Top = 123.283550000000000000
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          DataSet = frxdbRelVendaCFOPResumido
          DataSetName = 'frxdbRelVendaCFOPResumido'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbRelVendaCFOPResumido."TOTAL"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Align = baWidth
          Top = 170.078850000000000000
          Width = 718.110700000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
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
        Height = 37.795300000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 453.543600000000000000
          Top = 15.118119999999980000
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
            
              'Total de Vendas = [SUM(<frxdbRelVendaCFOPResumido."TOTAL">,Maste' +
              'rData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baBottom
          Top = 37.795300000000000000
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
    Left = 72
    Top = 280
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 144
    Top = 280
  end
  object DSEmpresa: TDataSource
    DataSet = QEmpresa
    Left = 16
    Top = 280
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 534
    Top = 64
  end
  object qryRelatorioCFOPResumido: TFDQuery
    Active = True
    Connection = ConexaoPDV
    SQL.Strings = (
      'select sum(v.total) total,'
      'v.cfop from itensvendas v'
      'WHERE'
      '(V.DATA BETWEEN :ini AND :fim) AND'
      '((v.cfop = 5102) or (v.cfop = 5405)) and'
      '(v.enviado_nf = '#39'S'#39')'
      'group by v.cfop')
    Left = 352
    Top = 232
    ParamData = <
      item
        Name = 'INI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIM'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object frxdbRelVendaCFOPResumido: TfrxDBDataset
    UserName = 'frxdbRelVendaCFOPResumido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TOTAL=TOTAL'
      'CFOP=CFOP')
    DataSet = qryRelatorioCFOPResumido
    BCDToCurrency = False
    Left = 456
    Top = 232
  end
end
