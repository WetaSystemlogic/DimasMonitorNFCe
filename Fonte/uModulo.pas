unit uModulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, IniFiles,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, ACBrBase, ACBrDFe, ACBrNFe, ACBrNFeDANFEFRDM,
  ACBrNFeDANFEClass, ACBrNFeDANFEFR, ACBrMail, Vcl.Dialogs, frxClass, frxDBSet,
  FireDAC.Comp.UI, frxExportPDF;

type
  TModulo = class(TDataModule)
    ConexaoPDV: TFDConnection;
    qryVendas: TFDQuery;
    qryVProdutos: TFDQuery;
    dsVendas: TDataSource;
    dsVProdutos: TDataSource;
    dsFilial: TDataSource;
    qryFilial: TFDQuery;
    qryNFCe: TFDQuery;
    qryAux: TFDQuery;
    qryClassificacaoFiscal: TFDQuery;
    dsClassificacaoFiscal: TDataSource;
    SaveFile: TSaveDialog;
    qryRelatorio: TFDQuery;
    RelVendas: TfrxReport;
    dbRelVendas: TfrxDBDataset;
    dbRelVendasResumo: TfrxDBDataset;
    qryRelatorioResumo: TFDQuery;
    qryRelatorioItens: TFDQuery;
    dbRelVendaItens: TfrxDBDataset;
    qryRelatorioCFOP: TFDQuery;
    frxdbRelVendaCFOP: TfrxDBDataset;
    OpenDialog: TOpenDialog;
    QEmpresa: TFDQuery;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    DSEmpresa: TDataSource;
    frxPDFExport: TfrxPDFExport;
    qryRelatorioCFOPResumido: TFDQuery;
    frxdbRelVendaCFOPResumido: TfrxDBDataset;
    procedure dsVendasDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    iCaminhoRel: string;
    function LerIni(Caminho, Sessao, Propriedade, ValorPadrao: string): string;
  end;

var
  Modulo: TModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uPrincipal, ufrmStatus, Unit1, unit2, U_Principal, uThreadNFCe,
  uThreadStatus;

{$R *.dfm}

procedure TModulo.dsVendasDataChange(Sender: TObject; Field: TField);
begin
  //Filtrar Itens da Venda no query de ItensVendas
  qryVProdutos.Close;
  qryVProdutos.SQL.Clear;
  qryVProdutos.SQL.Add('select');
  qryVProdutos.SQL.Add('itensvendas.*,');
  qryVProdutos.SQL.Add('produtos.codigobarras,');
  qryVProdutos.SQL.Add('produtos.ncm,');
  qryVProdutos.SQL.Add('produtos.cest,');
  qryVProdutos.SQL.Add('produtos.classificacaofiscal,');
  qryVProdutos.SQL.Add('filiais.uf,');
  qryVProdutos.SQL.Add('classificacoesfiscais.codigo codclass,');
  qryVProdutos.SQL.Add('itensclassificacoesfiscais.percentualicms cficms,');
  qryVProdutos.SQL.Add('itensclassificacoesfiscais.csosn cfcsosn,');
  qryVProdutos.SQL.Add('itensclassificacoesfiscais.itecf cfsituacaotributaria,');
  qryVProdutos.SQL.Add('itensclassificacoesfiscais.cst cfcst,');
  qryVProdutos.SQL.Add('itensclassificacoesfiscais.cfop cfcfop,');
  qryVProdutos.SQL.Add('itensclassificacoesfiscais.tipo');
  qryVProdutos.SQL.Add('from');
  qryVProdutos.SQL.Add('itensvendas, produtos, classificacoesfiscais, itensclassificacoesfiscais, filiais');
  qryVProdutos.SQL.Add('where');
  qryVProdutos.SQL.Add('(');
  qryVProdutos.SQL.Add('itensvendas.filial  =   filiais.codigo and');
  qryVProdutos.SQL.Add('itensvendas.produto =   produtos.codigo and');
  qryVProdutos.SQL.Add('produtos.classificacaofiscal    =   classificacoesfiscais.codigo and');
  qryVProdutos.SQL.Add('produtos.classificacaofiscal    =   itensclassificacoesfiscais.classificacaofiscal');
  qryVProdutos.SQL.Add(')');
  qryVProdutos.SQL.Add('and');
  qryVProdutos.SQL.Add('(');
  qryVProdutos.SQL.Add('itensvendas.venda = :venda and');
  qryVProdutos.SQL.Add('itensvendas.situacao = :situacao and');
  qryVProdutos.SQL.Add('itensclassificacoesfiscais.uf = filiais.uf and');
  qryVProdutos.SQL.Add('itensvendas.cfop = itensclassificacoesfiscais.cfop and');
  qryVProdutos.SQL.Add('itensvendas.cst = itensclassificacoesfiscais.cst and');
  qryVProdutos.SQL.Add('itensclassificacoesfiscais.tipo = ''S'' ');
  qryVProdutos.SQL.Add(')');
  qryVProdutos.SQL.Add('order by codigo');
  qryVProdutos.ParamByName('venda').AsInteger :=  frmPrincipal.dbgVendas.Columns[0].Field.AsInteger; //Selecionando o Codigo da venda no Grid
  qryVProdutos.ParamByName('situacao').AsString :=  'N';
  qryVProdutos.Open();
end;

function TModulo.LerIni(Caminho, Sessao, Propriedade,
  ValorPadrao: string): string;
var
  Ini: TIniFile;
begin
  try
    Ini :=  TIniFile.Create(Caminho);
    try
      Result  :=  Ini.ReadString(Sessao, Propriedade, ValorPadrao);
    except
      Result  :=  '';
    end;
  finally
    Ini.Free;
  end;
end;

end.
