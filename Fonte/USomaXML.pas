unit USomaXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Data.DB, Vcl.FileCtrl,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, pcnConversao,
  ACBrBase, ACBrDFe, ACBrNFe, frxClass, frxDBSet, frxExportPDF, Vcl.ExtCtrls;

type
  TfrmSomaXML = class(TForm)
    sbSomaXML: TStatusBar;
    DSxml: TDataSource;
    Label1: TLabel;
    edtXML: TEdit;
    sbXML: TSpeedButton;
    btListar: TButton;
    btSomar: TButton;
    Label2: TLabel;
    lblQuant: TLabel;
    ACBrNFe: TACBrNFe;
    CDXxmlProd: TClientDataSet;
    DSxmlProd: TDataSource;
    CDXxmlProdNF: TIntegerField;
    CDXxmlProdProduto: TStringField;
    CDXxmlProdCFOP: TStringField;
    CDXxmlProdDeconto: TFloatField;
    CDXxmlProdValor: TFloatField;
    frxReport: TfrxReport;
    frxDSxml: TfrxDBDataset;
    frxDSXMLProduto: TfrxDBDataset;
    frxDSEmpresa: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    pcSomaXML: TPageControl;
    tsXML: TTabSheet;
    lblXMLs: TLabel;
    DBGxml: TDBGrid;
    tsProdutos: TTabSheet;
    Label4: TLabel;
    DBGridProdutos: TDBGrid;
    tsFormaPag: TTabSheet;
    DBGridFormaPag: TDBGrid;
    Label7: TLabel;
    DSFormaPag: TDataSource;
    pcResultados: TPageControl;
    tsTotalXML: TTabSheet;
    tsTotalCFOP: TTabSheet;
    tsTotalFormapPag: TTabSheet;
    Label3: TLabel;
    lblValor: TLabel;
    Label9: TLabel;
    lblDinheiro: TLabel;
    lblCredito: TLabel;
    Label11: TLabel;
    lblDebito: TLabel;
    Label13: TLabel;
    lblOutros: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    Label6: TLabel;
    lbl5405: TLabel;
    Panel2: TPanel;
    lbl5102: TLabel;
    Label8: TLabel;
    CDSxml: TClientDataSet;
    CDSxmlNumero: TIntegerField;
    CDSxmlData: TStringField;
    CDSxmlProtocolo: TStringField;
    CDSxmlDataHoraRecebimento: TStringField;
    CDSxmlValor: TFloatField;
    CDSxmlChave: TStringField;
    CDFormaPag: TClientDataSet;
    CDFormaPagNF: TIntegerField;
    CDFormaPagIndicador: TStringField;
    CDFormaPagFormaPag: TStringField;
    CDFormaPagValor: TFloatField;
    CDFormaPagIDFormaPag: TStringField;
    Panel3: TPanel;
    btnRelatorio: TButton;
    Button1: TButton;
    pmRelatorio: TPopupMenu;
    aaaaaaa1: TMenuItem;
    aaaaaaa2: TMenuItem;
    N3: TMenuItem;
    CompletoProduto2: TMenuItem;
    SimplesProduto2: TMenuItem;
    N4: TMenuItem;
    CompletoFormadePagamento2: TMenuItem;
    SimplesFormadePagamento2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbXMLClick(Sender: TObject);
    procedure btListarClick(Sender: TObject);
    procedure btSomarClick(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure DBGridProdutosTitleClick(Column: TColumn);
    procedure DBGridFormaPagTitleClick(Column: TColumn);
    procedure DBGxmlTitleClick(Column: TColumn);
    procedure DBGxmlDblClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure aaaaaaa1Click(Sender: TObject);
    procedure aaaaaaa2Click(Sender: TObject);
    procedure CompletoProduto2Click(Sender: TObject);
    procedure SimplesProduto2Click(Sender: TObject);
    procedure CompletoFormadePagamento2Click(Sender: TObject);
    procedure SimplesFormadePagamento2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetFileList(const Path: string);
    procedure LerXML(const XML: string);
  public
    { Public declarations }
    procedure PathClick(Sender: TObject);
    Procedure IniciaForm(FormClasse: TFormClass; var NewForm: TObject);
  end;

var
  frmSomaXML: TfrmSomaXML;

implementation

{$R *.dfm}

uses uModulo;

const
  SELDIRHELP = 1000;

procedure TfrmSomaXML.aaaaaaa1Click(Sender: TObject);
begin
  frxReport.LoadFromFile(Modulo.iCaminhoRel + '\XMLCompleto.fr3');
  frxReport.PrepareReport;
  frxReport.ShowReport;
end;

procedure TfrmSomaXML.aaaaaaa2Click(Sender: TObject);
begin
  frxReport.LoadFromFile(Modulo.iCaminhoRel + '\XMLSimples.fr3');
  frxReport.PrepareReport;
  frxReport.ShowReport;
end;

procedure TfrmSomaXML.btListarClick(Sender: TObject);
begin
  if edtXML.Text = '' then
    begin
      ShowMessage('Selecione o Caminho dos XMLs');
      exit;
    end
    else
      begin
        { LIMPAR TABELAS }
        CDSxml.EmptyDataSet;
        CDXxmlProd.EmptyDataSet;
        { LER XML'S }
        GetFileList(edtXML.Text + '\*.xml');
        { ORDENARS TABELAS }
        CDSxml.IndexFieldNames  :=  'Numero';
        CDXxmlProd.IndexFieldNames  :=  'NF';
        CDFormaPag.IndexFieldNames  :=  'NF';
        { MOSTRAR TOTAL DE ARQUIVOS ENCONTRADOS }
        lblQuant.Caption  :=  IntToStr(CDSxml.RecordCount);
      end;
end;

procedure TfrmSomaXML.btnRelatorioClick(Sender: TObject);
var
  P1, P2: TPoint;
begin
  P1.X := btnRelatorio.Left;
  P1.Y := btnRelatorio.Top + btnRelatorio.Height;
  P2 := ClientToScreen(P1);
  pmRelatorio.PopUp(P2.X, P2.Y);
end;

procedure TfrmSomaXML.btSomarClick(Sender: TObject);
var
  Total: Real;
  total5405, total5102: Real;
  sDinheiro, sCredito, sDebito, sOutros: Real;
begin
  if CDSxml.IsEmpty then
    ShowMessage('Sem informação para Soma!')
  else
    begin
      { INICIAR VARIAVEIS }
      Total      := 0;
      total5405  := 0;
      total5102  := 0;
      sDinheiro  := 0;
      sCredito   := 0;
      sDebito    := 0;
      sOutros    := 0;

      { SOMAR TOTAL DOS XML'S }
      CDSxml.First;
      while not CDSxml.Eof do
        begin
          Total :=  Total + CDSxmlValor.AsFloat;
          CDSxml.Next;
        end;
      { SOMAR TOTALS DOS PRODUTOS POR CFOP 5102 | 5405 }
      { 5102 }
      CDXxmlProd.Filtered := False;
      CDXxmlProd.Filter :=  'cfop = 5102';
      CDXxmlProd.Filtered := True;

      CDXxmlProd.First;
      while not CDXxmlProd.Eof do
        begin
          total5102 := total5102 + (CDXxmlProdValor.AsFloat - CDXxmlProdDeconto.AsFloat);
          CDXxmlProd.Next;
        end;
      { 5405 }
      CDXxmlProd.Filtered := False;
      CDXxmlProd.Filter :=  'cfop = 5405';
      CDXxmlProd.Filtered := True;

      CDXxmlProd.First;
      while not CDXxmlProd.Eof do
        begin
          total5405 := total5405 + (CDXxmlProdValor.AsFloat - CDXxmlProdDeconto.AsFloat);
          CDXxmlProd.Next;
        end;
      CDXxmlProd.Filtered := False;
      { SOMAR FORMA DE PAGAMENTO }
      { DINHEIRO }
      CDFormaPag.Filtered := False;
      CDFormaPag.Filter :=  'IDFormaPag = ''01'' ';
      CDFormaPag.Filtered := True;

      CDFormaPag.First;
      while not CDFormaPag.Eof do
        begin
          sDinheiro  :=  sDinheiro  + CDFormaPagValor.AsFloat;
          CDFormaPag.Next;
        end;
      { CREDITO }
      CDFormaPag.Filtered := False;
      CDFormaPag.Filter :=  'IDFormaPag = ''03'' ';
      CDFormaPag.Filtered := True;

      CDFormaPag.First;
      while not CDFormaPag.Eof do
        begin
          sCredito  :=  sCredito  + CDFormaPagValor.AsFloat;
          CDFormaPag.Next;
        end;
      { DEBITO }
      CDFormaPag.Filtered := False;
      CDFormaPag.Filter :=  'IDFormaPag = ''04'' ';
      CDFormaPag.Filtered := True;

      CDFormaPag.First;
      while not CDFormaPag.Eof do
        begin
          sDebito  :=  sDebito  + CDFormaPagValor.AsFloat;
          CDFormaPag.Next;
        end;
      { OUTROS }
      CDFormaPag.Filtered := False;
      CDFormaPag.Filter :=  '(IDFormaPag <> ''01'') and (IDFormaPag <> ''03'') and (IDFormaPag <> ''04'') ';
      CDFormaPag.Filtered := True;

      CDFormaPag.First;
      while not CDFormaPag.Eof do
        begin
          sOutros  :=  sOutros  + CDFormaPagValor.AsFloat;
          CDFormaPag.Next;
        end;
      CDFormaPag.Filtered := False;

      lblDinheiro.Caption  :=  FormatFloat('R$ ###,###,##0.000', sDinheiro);
      lblCredito.Caption  :=  FormatFloat('R$ ###,###,##0.000', sCredito);
      lblDebito.Caption  :=  FormatFloat('R$ ###,###,##0.000', sDebito);
      lblOutros.Caption  :=  FormatFloat('R$ ###,###,##0.000', sOutros);
      lbl5102.Caption   :=  FormatFloat('R$ ###,###,##0.000', total5102);
      lbl5405.Caption   :=  FormatFloat('R$ ###,###,##0.000', total5405);
      lblValor.Caption  :=  FormatFloat('R$ ###,###,##0.000', Total);
    end;
end;

procedure TfrmSomaXML.Button1Click(Sender: TObject);
begin
  ShowMessage(
              'Legenda tPag:' +          #13 +
              'Códigos e Descrição:' +   #13 +
              '01=Dinheiro' +            #13 +
              '02=Cheque' +              #13 +
              '03=Cartão de Crédito' +   #13 +
              '04=Cartão de Débito' +    #13 +
              '05=Crédito Loja' +        #13 +
              '10=Vale Alimentação' +    #13 +
              '11=Vale Refeição' +       #13 +
              '12=Vale Presente' +       #13 +
              '13=Vale Combustível' +    #13 +
              '15=Boleto Bancário' +     #13 +
              '90=Sem Pagamento' +       #13 +
              '99=Outros.'
             );
end;

procedure TfrmSomaXML.CompletoFormadePagamento2Click(Sender: TObject);
begin
  ShowMessage('Em Desenvolvimento!');
end;

procedure TfrmSomaXML.CompletoProduto2Click(Sender: TObject);
begin
  frxReport.LoadFromFile(Modulo.iCaminhoRel + '\ProdutoCompleto.fr3');
  frxReport.PrepareReport;
  frxReport.ShowReport;
end;

procedure TfrmSomaXML.DBGridFormaPagTitleClick(Column: TColumn);
begin
  CDFormaPag.IndexFieldNames  :=  Column.FieldName;
end;

procedure TfrmSomaXML.DBGridProdutosTitleClick(Column: TColumn);
begin
  CDXxmlProd.IndexFieldNames  :=  Column.FieldName;
end;

procedure TfrmSomaXML.DBGxmlDblClick(Sender: TObject);
begin
  ShowMessage('Chave: '+#13+CDSxmlChave.AsString);
end;

procedure TfrmSomaXML.DBGxmlTitleClick(Column: TColumn);
begin
  CDSxml.IndexFieldNames  :=  Column.FieldName;
end;

procedure TfrmSomaXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja Realmente Sair do Programa', 'A T E N Ç Ã O !',MB_YESNO+MB_ICONQUESTION) = IDYES then
    Action  := caFree
  else
    Abort;
end;

procedure TfrmSomaXML.GetFileList(const Path: string);
var
  I: Integer;
  SearchRec: TSearchRec;
begin
  try
    I := FindFirst(Path, 0, SearchRec);
    while I = 0 do
    begin
      LerXML(edtXML.Text+'\'+SearchRec.Name);
      I := FindNext(SearchRec);
    end;
  except
    raise;
  end;
end;

procedure TfrmSomaXML.IniciaForm(FormClasse: TFormClass;
  var NewForm: TObject);
begin
  Try
    if (TForm(NewForm) = Nil) Or (not TForm(NewForm).HandleAllocated) Then
       NewForm := FormClasse.Create(Self)
    else
       begin
        if (TForm(NewForm).WindowState = WsMinimized) Then
           TForm(NewForm).WindowState := wsNormal;
        end;
    TForm(NewForm).ShowModal;
  Finally

  end;
  { Exemplo de como Chamar a Função }
  //IniciaForm(TFNomedoForm, TObject(FNomedoForm));
end;

procedure TfrmSomaXML.LerXML(const XML: string);
var
  I: Integer;
begin
  ACBrNFe.NotasFiscais.Clear;
  ACBrNFe.NotasFiscais.LoadFromFile(XML);
  { TESTAR SE A NOTA FOI PROTOCOLADA }
  if not ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt.IsEmpty then
    begin
      { PASSAR INFORMAÇÃO PARA A TABELA TEMPORARIA }
      CDSxml.Append;
      CDSxmlNumero.AsInteger            :=  ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF;
      CDSxmlChave.AsString              :=  ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID;
      CDSxmlData.AsString               :=  DateToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi);
      CDSxmlProtocolo.AsString          :=  ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
      CDSxmlDataHoraRecebimento.AsString:=  DateTimeToStr(ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.dhRecbto);
      CDSxmlValor.AsFloat               :=  ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
      CDSxml.Post;
      { PASSAR PRODUTOS DA NOTA }
      for I := 0 to ACBrNFe.NotasFiscais.Items[0].NFe.Det.Count -1 do
        begin
          CDXxmlProd.Append;
          CDXxmlProdNF.AsInteger      :=  ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF;
          CDXxmlProdProduto.AsString  :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.xProd;
          CDXxmlProdCFOP.AsString     :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.CFOP;
          CDXxmlProdDeconto.AsFloat   :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vDesc;
          CDXxmlProdValor.AsFloat     :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vProd;
          CDXxmlProd.Post
        end;
      { PASSA FORMAS DE PAGAMENTO }
      for I := 0 to ACBrNFe.NotasFiscais.Items[0].NFe.pag.Count - 1 do
        begin
          CDFormaPag.Append;
          CDFormaPagNF.AsInteger := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF;
          { INDICADOR DE PAGAMENTO }
          case ACBrNFe.NotasFiscais.Items[0].NFe.pag.Items[I].indPag of
            ipVista:  CDFormaPagIndicador.AsString  :=  'A VISTA';
            ipPrazo:  CDFormaPagIndicador.AsString  :=  'A PRAZO';
            ipOutras: CDFormaPagIndicador.AsString  :=  'OUTRAS';
            ipNenhum: CDFormaPagIndicador.AsString  :=  'NENHUM';
          end;
          { FORMA DE PAGAMENTO USADA }
          case ACBrNFe.NotasFiscais.Items[0].NFe.pag.Items[I].tPag of
            fpDinheiro:
              begin
                CDFormaPagFormaPag.AsString := 'DINHEIRO';
                CDFormaPagIDFormaPag.AsString  :=  FormaPagamentoToStr(ACBrNFe.NotasFiscais.Items[0].NFe.pag.Items[I].tPag);
              end;
            fpCartaoCredito:
              begin
                CDFormaPagFormaPag.AsString := 'CARTÃO CREDITO';
                CDFormaPagIDFormaPag.AsString  :=  FormaPagamentoToStr(ACBrNFe.NotasFiscais.Items[0].NFe.pag.Items[I].tPag);
              end;
            fpCartaoDebito:
              begin
                CDFormaPagFormaPag.AsString := 'CARTÃO DÉBITO';
                CDFormaPagIDFormaPag.AsString  :=  FormaPagamentoToStr(ACBrNFe.NotasFiscais.Items[0].NFe.pag.Items[I].tPag);
              end
            else
              begin
                CDFormaPagFormaPag.AsString := 'OUTRAS';
                CDFormaPagIDFormaPag.AsString  :=  FormaPagamentoToStr(ACBrNFe.NotasFiscais.Items[0].NFe.pag.Items[I].tPag);
              end;
          end;
          { VALOR PAGO }
          CDFormaPagValor.AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.pag.Items[I].vPag;
          CDFormaPag.Post;
        end;
    end;
end;

procedure TfrmSomaXML.PathClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(TEdit(Sender).Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := TEdit(Sender).Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    TEdit(Sender).Text := Dir;
end;
procedure TfrmSomaXML.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSomaXML.sbXMLClick(Sender: TObject);
begin
  PathClick(edtXML);
end;

procedure TfrmSomaXML.SimplesFormadePagamento2Click(Sender: TObject);
var
  sDinheiro, sCredito, sDebito, sOutros: Real;
begin
  { INICIAR VARIAVEIS }
  sDinheiro  := 0;
  sCredito   := 0;
  sDebito    := 0;
  sOutros    := 0;

  { SOMAR FORMA DE PAGAMENTO }
  { DINHEIRO }
  CDFormaPag.Filtered := False;
  CDFormaPag.Filter :=  'IDFormaPag = ''01'' ';
  CDFormaPag.Filtered := True;

  CDFormaPag.First;
  while not CDFormaPag.Eof do
    begin
      sDinheiro  :=  sDinheiro  + CDFormaPagValor.AsFloat;
      CDFormaPag.Next;
    end;
  { CREDITO }
  CDFormaPag.Filtered := False;
  CDFormaPag.Filter :=  'IDFormaPag = ''03'' ';
  CDFormaPag.Filtered := True;

  CDFormaPag.First;
  while not CDFormaPag.Eof do
    begin
      sCredito  :=  sCredito  + CDFormaPagValor.AsFloat;
      CDFormaPag.Next;
    end;
  { DEBITO }
  CDFormaPag.Filtered := False;
  CDFormaPag.Filter :=  'IDFormaPag = ''04'' ';
  CDFormaPag.Filtered := True;

  CDFormaPag.First;
  while not CDFormaPag.Eof do
    begin
      sDebito  :=  sDebito  + CDFormaPagValor.AsFloat;
      CDFormaPag.Next;
    end;
  { OUTROS }
  CDFormaPag.Filtered := False;
  CDFormaPag.Filter :=  '(IDFormaPag <> ''01'') and (IDFormaPag <> ''03'') and (IDFormaPag <> ''04'') ';
  CDFormaPag.Filtered := True;

  CDFormaPag.First;
  while not CDFormaPag.Eof do
    begin
      sOutros  :=  sOutros  + CDFormaPagValor.AsFloat;
      CDFormaPag.Next;
    end;
  CDFormaPag.Filtered := False;

  { CHAMAR RELATORIO }
  frxReport.LoadFromFile(Modulo.iCaminhoRel + '\FormaPagSimples.fr3');
  frxReport.Variables['DINHEIRO']   :=  QuotedStr(FormatFloat('R$ ###,###,##0.000', sDinheiro));
  frxReport.Variables['OUTROS']     :=  QuotedStr(FormatFloat('R$ ###,###,##0.000', sOutros));
  frxReport.Variables['CREDITO']    :=  QuotedStr(FormatFloat('R$ ###,###,##0.000', sCredito));
  frxReport.Variables['DEBITO']     :=  QuotedStr(FormatFloat('R$ ###,###,##0.000', sDebito));
  frxReport.Variables['TOTAL_SOMA'] :=  QuotedStr(FormatFloat('R$ ###,###,##0.000', (sDinheiro + sOutros + sCredito + sDebito)));
  frxReport.PrepareReport;
  frxReport.ShowReport;
end;

procedure TfrmSomaXML.SimplesProduto2Click(Sender: TObject);
var
  Total, total5102, total5405: real;
begin
  { SOMAR TOTALS DOS PRODUTOS POR CFOP 5102 | 5405 }
  { 5102 }
  CDXxmlProd.Filtered := False;
  CDXxmlProd.Filter :=  'cfop = 5102';
  CDXxmlProd.Filtered := True;

  CDXxmlProd.First;
  while not CDXxmlProd.Eof do
    begin
      total5102 := total5102 + (CDXxmlProdValor.AsFloat - CDXxmlProdDeconto.AsFloat);
      CDXxmlProd.Next;
    end;
  { 5405 }
  CDXxmlProd.Filtered := False;
  CDXxmlProd.Filter :=  'cfop = 5405';
  CDXxmlProd.Filtered := True;

  CDXxmlProd.First;
  while not CDXxmlProd.Eof do
    begin
      total5405 := total5405 + (CDXxmlProdValor.AsFloat - CDXxmlProdDeconto.AsFloat);
      CDXxmlProd.Next;
    end;
  CDXxmlProd.Filtered := False;
  { CHAMAR RELATORIO }
  frxReport.LoadFromFile(Modulo.iCaminhoRel + '\ProdutoSimples.fr3');
  frxReport.Variables['TOTAL_5102'] :=  QuotedStr(FormatFloat('R$ ###,###,##0.000', total5102));
  frxReport.Variables['TOTAL_5405'] :=  QuotedStr(FormatFloat('R$ ###,###,##0.000', total5405));
  frxReport.Variables['TOTAL_SOMA'] :=  QuotedStr(FormatFloat('R$ ###,###,##0.000', (total5102 + total5405)));
  frxReport.PrepareReport;
  frxReport.ShowReport;
end;

procedure TfrmSomaXML.Sobre2Click(Sender: TObject);
begin
  ShowMessage('Sistema Leitor de XMLs.'+#13+
              'Desenvolvido por:'+#13+
              'Wessel Niemyer'+#13+
              'Em parceria com:'+#13+
              'Evoluir.');
end;

end.

