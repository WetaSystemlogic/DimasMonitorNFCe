unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.TabNotBk, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Samples.Spin,
  ACBrNFeDANFEFRDM, ACBrNFeDANFEClass, ACBrNFeDANFEFR, ACBrDFe, ACBrNFe, System.DateUtils,
  ACBrBase, ACBrMail, IniFiles, ShellAPI,  pcnRetConsReciNFe, OleCtrls, SHDocVw,
  pcnConversao, ACBrUtil, ACBrNFeDANFeESCPOS, XMLIntf, XMLDoc, zlib,
  ACBrNFeDANFeRLClass, ACBrDANFCeFortesFr, ACBrPosPrinter, Printers, Vcl.DBCtrls,
  Vcl.Mask, Vcl.AppEvnts, Vcl.Menus, System.Math, Zip, IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
  IdExplicitTLSClientServerBase;

type
  TfrmPrincipal = class(TForm)
    gdpTop: TGridPanel;
    tnPrincipal: TTabbedNotebook;
    StatusBar: TStatusBar;
    tnVendas: TTabbedNotebook;
    dbgVendas: TDBGrid;
    dbgProdutos: TDBGrid;
    sbtnAtualizar: TSpeedButton;
    sbtnEmail: TSpeedButton;
    sbtnStatus: TSpeedButton;
    gpnForma: TGridPanel;
    sbtnAVista: TSpeedButton;
    sbtnPrazo: TSpeedButton;
    pnlData: TPanel;
    lblDataInicio: TLabel;
    dtpInicio: TDateTimePicker;
    lblDataFim: TLabel;
    dtpFim: TDateTimePicker;
    gbEstadoVenda: TGroupBox;
    rbAberta: TRadioButton;
    rbCancelada: TRadioButton;
    rbFechada: TRadioButton;
    gbFormaPagamento: TGroupBox;
    rbAVista: TRadioButton;
    rbAPrazo: TRadioButton;
    rbTodosFormaPagamento: TRadioButton;
    gbModelo: TGroupBox;
    rb02: TRadioButton;
    rb03: TRadioButton;
    rbTodosModeloDocumento: TRadioButton;
    gbTributacaoAuxiliar: TGroupBox;
    cbCST: TComboBox;
    edtICMS: TEdit;
    cbCSOSN: TComboBox;
    cbSituacaoTributaria: TComboBox;
    cbCFOPNFCE: TComboBox;
    gbStatusNFCe: TGroupBox;
    rbEnviado: TRadioButton;
    rbPendente: TRadioButton;
    rbErro: TRadioButton;
    rbTodasStatusNFCe: TRadioButton;
    sbtnGravarFiltros: TSpeedButton;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    mmEmailMsg: TMemo;
    cbEmailSSL: TCheckBox;
    sbtnGravarEmail: TSpeedButton;
    edtLogoMarca: TEdit;
    sbtnLogoMarca: TSpeedButton;
    Label7: TLabel;
    gbDanfe: TGroupBox;
    rbImprimir: TRadioButton;
    rbPDF: TRadioButton;
    rbNaoImprimir: TRadioButton;
    Label8: TLabel;
    cbImpressora: TComboBox;
    sbtnGravarDanfe: TSpeedButton;
    pnlVendasTop: TPanel;
    gplSelecionar: TGridPanel;
    sbtnSelecionada: TSpeedButton;
    sbtnTodas: TSpeedButton;
    sbtnExcluirSelecionadas: TSpeedButton;
    sbtnExcluir: TSpeedButton;
    sbtnDanfeNFCe: TSpeedButton;
    Label9: TLabel;
    MemoLog: TMemo;
    gbClassificacaoFiscal: TGroupBox;
    dbgClassificacaoFiscal: TDBGrid;
    dbedtCST: TDBEdit;
    dbedtICMS: TDBEdit;
    dbedtCSOSN: TDBEdit;
    dbedtSituacaoTributaria: TDBEdit;
    dbedtCFOP: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    sbtnCarregar: TSpeedButton;
    rgUsarTributacao: TRadioGroup;
    TimerEnvio: TTimer;
    Menu: TPopupMenu;
    ApplicationEvents: TApplicationEvents;
    TrayIcon: TTrayIcon;
    Sair1: TMenuItem;
    edtTimer: TEdit;
    lblTimer: TLabel;
    pnlConfiguracoes: TPanel;
    pnlConfigDanfe: TPanel;
    RbCanhoto: TRadioGroup;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EditMargemEsquerda: TEdit;
    EditMargemSuperior: TEdit;
    EditMargemDireita: TEdit;
    EditMargemInferior: TEdit;
    rbTarjaNfeCancelada: TCheckBox;
    Label19: TLabel;
    CBImprimirUndQtVlComercial: TComboBox;
    rbImprimirDadosDocReferenciados: TCheckBox;
    rgModeloRelatorio: TRadioGroup;
    Abortar1: TMenuItem;
    rgMensagemRetorno: TRadioGroup;
    Label20: TLabel;
    edtCaminho: TEdit;
    Label21: TLabel;
    edtConexao: TEdit;
    sbtnAbrirBanco: TSpeedButton;
    sbtnGravarConexao: TSpeedButton;
    TimerMinimizar: TTimer;
    Label22: TLabel;
    edtPorta: TEdit;
    edtNCM: TEdit;
    rb55: TRadioButton;
    rb65: TRadioButton;
    cbAutomatico: TCheckBox;
    sbtnEnviadas: TSpeedButton;
    sbtnCancelar: TSpeedButton;
    rbImprimirDireto: TRadioButton;
    dInicial: TDateTimePicker;
    lbInicial: TLabel;
    edtEmail: TEdit;
    lbEmail: TLabel;
    sbtnSalvarXML: TSpeedButton;
    ProgressBar: TProgressBar;
    lbFinal: TLabel;
    dFinal: TDateTimePicker;
    Mostrar: TMenuItem;
    MenuPrincipal: TPopupMenu;
    Atualizar: TMenuItem;
    gbVendasEnviadas: TGroupBox;
    dtVIni: TDateTimePicker;
    dtVFim: TDateTimePicker;
    lblDe: TLabel;
    lblAte: TLabel;
    cbStatus: TComboBox;
    lblStatus: TLabel;
    SpeedButton1: TSpeedButton;
    Label23: TLabel;
    cbTipoRelatorio: TComboBox;
    edt_AssinaturaEmail: TEdit;
    Label24: TLabel;
    procedure sbtnAtualizarClick(Sender: TObject);
    procedure tnPrincipalClick(Sender: TObject);
    procedure dbgVendasDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbtnGravarDanfeClick(Sender: TObject);
    procedure sbtnGravarEmailClick(Sender: TObject);
    procedure sbtnGravarFiltrosClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnStatusClick(Sender: TObject);
    procedure sbtnAVistaClick(Sender: TObject);
    procedure sbtnPrazoClick(Sender: TObject);
    procedure sbtnExcluirSelecionadasClick(Sender: TObject);
    procedure sbtnExcluirClick(Sender: TObject);
    procedure sbtnTodasClick(Sender: TObject);
    procedure sbtnSelecionadaClick(Sender: TObject);
    procedure dbedtCSTKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtICMSKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtCSOSNKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure sbtnCarregarClick(Sender: TObject);
    procedure TimerEnvioTimer(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure ApplicationEventsMinimize(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure edtTimerKeyPress(Sender: TObject; var Key: Char);
    procedure sbtnCancelarClick(Sender: TObject);
    procedure sbtnDanfeNFCeClick(Sender: TObject);
    procedure Abortar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbtnAbrirBancoClick(Sender: TObject);
    procedure sbtnGravarConexaoClick(Sender: TObject);
    procedure TimerMinimizarTimer(Sender: TObject);
    procedure sbtnEnviadasClick(Sender: TObject);
    procedure sbtnEmailClick(Sender: TObject);
    procedure dbgVendasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgProdutosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure sbtnSalvarXMLClick(Sender: TObject);
    procedure MostrarClick(Sender: TObject);
    procedure AtualizarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbTipoRelatorioChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DesativarButoes(ativo: Boolean);
    procedure EnviarNFCe();
    function ClrDig(fField : String): String;
    function GetFileList(const Path: string): TStringList;
    function GerarEAN13(Codigo: Integer): string;
  end;

var
  frmPrincipal: TfrmPrincipal;

  //Variaveis de Filtro
  EstadoVenda, FormaPagamento, StatusNFCe, ModeloDocumento, AuxSQL: String;

  //Testar se esta enviado
  EnviadoNF: string;

  //Variavel para receber o caminho onde esta sendo salvo o XML e Chave
  CaminhoXML, ChaveXML, CNPJCPFXML: string;
  modeloXML:  Integer;
  DataXML: TDateTime;

  //Variavel para abortar Processo
  SairdoLoop: Boolean;

  //Serie Manual NF
  SERIENOTAFISCALMANUALPADRAO: string;

  //Variavel para Enviar Notas Automaticamente
  Auto: Integer;

  //Variavel para Impressora
  Impressora: string;

implementation

{$R *.dfm}

uses uModulo, ufrmStatus, Unit1, unit2, U_Principal, pcnConversaoNFe,
  uThreadNFCe, uThreadStatus;

procedure TfrmPrincipal.Abortar1Click(Sender: TObject);
var
  ThreadNFCe: NFCe;
  ThreadStatus: Status;
begin
  SairdoLoop  :=  True;

  ThreadNFCe  :=  NFCe.Create(True);
  ThreadNFCe.FreeOnTerminate  :=  True;
  ThreadNFCe.Priority :=  tpNormal;
  ThreadNFCe.Suspended  :=  True;
  //ThreadNFCe.Terminate;
  ThreadNFCe.Resume;

  ThreadStatus  :=  Status.Create(True);
  ThreadStatus.FreeOnTerminate  :=  True;
  ThreadStatus.Priority :=  tpNormal;
  ThreadStatus.Suspended  :=  True;
  ThreadStatus.Terminate;
  //ThreadStatus.Resume;
end;

procedure TfrmPrincipal.ApplicationEventsMinimize(Sender: TObject);
begin
  Self.Hide();
  Self.WindowState  :=  wsMinimized;
  TrayIcon.Visible  :=  True;
  TrayIcon.Animate  :=  True;
  TrayIcon.BalloonTitle :=  'Informação';
  TrayIcon.BalloonHint  :=  'Monitor em Execulção';
  TrayIcon.ShowBalloonHint;
  TimerEnvio.Enabled  := True;
  SairdoLoop :=  False;
end;

procedure TfrmPrincipal.AtualizarClick(Sender: TObject);
var
  i: Integer;
  Soma: Currency;
begin
  //Somar Valor Selecionado
  Soma  := 0;
  for I := 1 to dbgVendas.SelectedRows.Count do
  begin
    Modulo.qryVendas.GotoBookmark(Pointer(dbgVendas.SelectedRows.Items[i-1]));
    Soma  :=  Soma  + Modulo.qryVendas.FieldByName('valortotal').AsFloat;
  end;
  StatusBar.Panels[3].Text :=  FormatFloat('#,##0.00', Soma);
end;

procedure TfrmPrincipal.cbTipoRelatorioChange(Sender: TObject);
begin
  if cbTipoRelatorio.ItemIndex = 2 then
  begin
    cbStatus.ItemIndex  :=  0;
    cbStatus.Enabled    := False;
  end else
    cbStatus.Enabled    := True;
end;

function TfrmPrincipal.ClrDig(fField: String): String;
var
  I : Byte;
begin
  Result := '';
  for I := 1 To Length(fField) do
     if fField [I] In ['1','2','3','4','5','6','7','8','9','0'] Then
       Result := Result + fField [I];
end;

procedure TfrmPrincipal.dbedtCFOPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in['0'..'9',',',#8,#13 ]) then
    Key := #0;
end;

procedure TfrmPrincipal.dbedtCSOSNKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in['0'..'9',',',#8,#13 ]) then
    Key := #0;
end;

procedure TfrmPrincipal.dbedtCSTKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in['0'..'9',',',#8,#13 ]) then
    Key := #0;
end;

procedure TfrmPrincipal.dbedtICMSKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in['0'..'9',',',#8,#13 ]) then
    Key := #0;
end;

procedure TfrmPrincipal.dbgProdutosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //Fazer Grid Zebrado
  if not (Odd(Modulo.qryVProdutos.RecNo)) then
    if not (gdSelected in State) then begin
      with dbgProdutos do begin
        with Canvas do begin
          Brush.Color :=  clBlack;
          dbgProdutos.Canvas.Font.Color :=  clWhite;
          FillRect(Rect);
        end;
        DefaultDrawDataCell(Rect, Column.Field, State);
      end;
    end;


end;

procedure TfrmPrincipal.dbgVendasDblClick(Sender: TObject);
begin
  //Dando Duplo Clique Mostrar os Produtos da Venda
  tnVendas.PageIndex  := 1;
end;

procedure TfrmPrincipal.dbgVendasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //Colorir Grid
  if dbgVendas.Columns[9].Field.AsString = 'ENVIADO' then
    dbgVendas.Canvas.Font.Color :=  clBlue;
  if dbgVendas.Columns[9].Field.AsString = 'ERRO' then
    dbgVendas.Canvas.Font.Color :=  clRed;
  if dbgVendas.Columns[9].Field.AsString = 'CANCELADA' then
    dbgVendas.Canvas.Font.Color :=  clMaroon;

  dbgVendas.DefaultDrawDataCell(Rect, dbgVendas.Columns[DataCol].Field, State);

end;

procedure TfrmPrincipal.DesativarButoes(ativo: Boolean);
begin
  //Desativar e Ativar Butões
  sbtnAtualizar.Enabled           :=  ativo;
  sbtnCancelar.Enabled            :=  ativo;
  sbtnEmail.Enabled               :=  ativo;
  sbtnAVista.Enabled              :=  ativo;
  sbtnPrazo.Enabled               :=  ativo;
  sbtnSelecionada.Enabled         :=  ativo;
  sbtnTodas.Enabled               :=  ativo;
  sbtnExcluirSelecionadas.Enabled :=  ativo;
  sbtnExcluir.Enabled             :=  ativo;
  sbtnDanfeNFCe.Enabled           :=  ativo;
  //Edit de Data
  dtpInicio.Enabled               :=  ativo;
  dtpFim.Enabled                  :=  ativo;
end;

procedure TfrmPrincipal.edtTimerKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in['0'..'9',#8,#13 ]) then
    Key := #0;
end;

procedure TfrmPrincipal.EnviarNFCe;
var
 vAux, vNumLote, vSincrono : String;
 Sincrono, OK, ErroNFCe : boolean;
 IdItemNota, IdVenda, NumeroNFCe: Integer;
 CFOP, CSTAux, CSOSNAux, NCMAux: string;
 pICMSAux, vICMSAux, vICMSTotal, vPRODTotal, vDescontoRateado, SomaItens, vOutros: Real;
 Caminho: String;
 sValorTotPago: Real;
begin
  if (Modulo.qryVendas.FieldByName('statusnf').AsString = 'ENVIADO') or
      (Modulo.qryVendas.FieldByName('statusnf').AsString = 'CANCELADA') then begin
    MemoLog.Lines.Add('Venda: ' + IntToStr(Modulo.qryVendas.FieldByName('Codigo').AsInteger));
    MemoLog.Lines.Add('Venda com NFCe já enviada ou cancelada.');
  end else begin

    //Passagem de Valores
    vAux      :=  Form1.edtIdNFCe.Text; //Numero da NFCe
    vNumLote  :=  '1';  //Numero do Lote
    vSincrono :=  '1';  //Envio Síncrono(1=Sim, 0=Não)

    vNumLote  :=  OnlyNumber(vNumLote);

    if Trim(vNumLote) = '' then
     begin
       //MessageDlg('Número do Lote inválido.',mtError,[mbok],0);
       MemoLog.Lines.Add('Número do Lote inválido.');
       exit;
     end;

    if (Trim(vSincrono) <> '1') and
       (Trim(vSincrono) <> '0') then
     begin
       //MessageDlg('Valor Inválido.',mtError,[mbok],0);
       MemoLog.Lines.Add('Valor Inválido.');
       exit;
     end;

    if (Trim(vSincrono) = '1') then
      Sincrono := True
    else
      Sincrono := False;

    //Gerar NFCe

    Form1.ACBrNFe1.NotasFiscais.Clear;

    Form1.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
    Form1.ACBrNFe1.Configuracoes.Geral.VersaoDF := TpcnVersaoDF(Form1.cbVersaoDF.ItemIndex);

    //Função para Gerar a NFCe
    with Form1 do begin
        with ACBrNFe1.NotasFiscais.Add.NFe do
       begin
         Ide.cNF       := StrToInt(vAux); //Caso não seja preenchido será gerado um número aleatório pelo componente
         Ide.natOp     := 'VENDA';
         Ide.indPag    := ipVista;
         Ide.modelo    := 65;
         Ide.serie     := StrToInt(Form1.edtSerie.Text); //Serie
         Ide.nNF       := StrToInt(vAux);
         Ide.dEmi      := now;
         Ide.dSaiEnt   := now;
         Ide.hSaiEnt   := now;
         Ide.tpNF      := tnSaida;
         Ide.tpEmis    := TpcnTipoEmissao(cbFormaEmissao.ItemIndex); ;
         if rgTipoAmb.ItemIndex = 0 then
          Ide.tpAmb    := taProducao
          else
            Ide.tpAmb  := taHomologacao;
         //Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variÃ¡vel quando for para ambiente de produÃ§Ã£o
         Ide.cUF       := UFtoCUF(edtEmitUF.Text);
         Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
         Ide.finNFe    := fnNormal;
         Ide.tpImp     := tiNFCe;
         Ide.indFinal  := cfConsumidorFinal;
         Ide.indPres   := pcPresencial;

  //       Ide.dhCont := date;
  //       Ide.xJust  := 'Justificativa Contingencia';

          Emit.CNPJCPF           := edtEmitCNPJ.Text;
          Emit.IE                := edtEmitIE.Text;
          Emit.xNome             := edtEmitRazao.Text;
          Emit.xFant             := edtEmitFantasia.Text;

          Emit.EnderEmit.fone    := edtEmitFone.Text;
          Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
          Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
          Emit.EnderEmit.nro     := edtEmitNumero.Text;
          Emit.EnderEmit.xCpl    := edtEmitComp.Text;
          Emit.EnderEmit.xBairro := edtEmitBairro.Text;
          Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
          Emit.EnderEmit.xMun    := edtEmitCidade.Text;
          Emit.EnderEmit.UF      := edtEmitUF.Text;
          Emit.enderEmit.cPais   := 1058;
          Emit.enderEmit.xPais   := 'BRASIL';

          Emit.IEST              := '';
  //        Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
  //        Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                        // a inclusão de serviços na NFe

          Emit.CRT  := TpcnCRT(cbRegime.ItemIndex);
          //Emit.CRT               := crtSimplesNacional;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

         {$REGION 'Dados do Cliente'}
          //Dados do Cliente
          if Modulo.qryVendas.FieldByName('cnpj').AsString <> '' then begin //Testar se o Cliente tem CPF ou CNPJ
            Dest.CNPJCPF           := ClrDig(Modulo.qryVendas.FieldByName('cnpj').AsString);
            Dest.xNome             := Modulo.qryVendas.FieldByName('PESSOA_NOME').AsString;
            Dest.EnderDest.xCpl    := ' ';
            Dest.EnderDest.UF      := 'MA';
            Dest.indIEDest         := inNaoContribuinte;
  //          Dest.IE                := '687138770110'; //NFC-e não aceita IE
            Dest.ISUF              := '';

            Dest.EnderDest.Fone    := '';
            Dest.EnderDest.CEP     := 0;

            Dest.EnderDest.nro     := '';
            Dest.EnderDest.xLgr    := '';
            Dest.EnderDest.xBairro := '';
            Dest.EnderDest.cMun    := 0;
            Dest.EnderDest.xMun    := '';
            Dest.EnderDest.cPais   := 1058;
            Dest.EnderDest.xPais   := 'BRASIL';
          end;

  //  Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
  {        Retirada.CNPJCPF := '';
          Retirada.xLgr    := '';
          Retirada.nro     := '';
          Retirada.xCpl    := '';
          Retirada.xBairro := '';
          Retirada.cMun    := 0;
          Retirada.xMun    := '';
          Retirada.UF      := '';}

  //  Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
  {        Entrega.CNPJCPF := '';
          Entrega.xLgr    := '';
          Entrega.nro     := '';
          Entrega.xCpl    := '';
          Entrega.xBairro := '';
          Entrega.cMun    := 0;
          Entrega.xMun    := '';
          Entrega.UF      := '';}

        {$ENDREGION}

  //  Adicionando Produtos
        //Zerando Variavel de Soma de Itens
        SomaItens :=  0;
        Modulo.qryVProdutos.First;
        IdItemNota  := 1;
        while not Modulo.qryVProdutos.Eof  do begin
          //Receber valores de acordo com o selecionado no filtro
          case rgUsarTributacao.ItemIndex of
            0: //Do banco Banco de Dados da Tabela ClassificacaoFiscal
            //Classificacao Fiscal
            begin
              NCMAux  :=  Modulo.qryVProdutos.FieldByName('ncm').AsString;
              CFOP    :=  IntToStr(Modulo.qryVProdutos.FieldByName('cfcfop').AsInteger);
              CSTAux  :=  IntToStr(Modulo.qryVProdutos.FieldByName('cfcst').AsInteger);
              CSOSNAux:=  IntToStr(Modulo.qryVProdutos.FieldByName('cfcsosn').AsInteger);
              pICMSAux:=  Modulo.qryVProdutos.FieldByName('cficms').AsFloat;
              vICMSAux:=  (pICMSAux / 100) * Modulo.qryVProdutos.FieldByName('total').AsFloat;
            end;
            1: //Dos campos que sao preenchidos pelo usuario no filtros Tributaçao Auxiliar
            //Tributacao Auxiliar
            begin
              NCMAux  :=  edtNCM.Text;
              CFOP    :=  cbCFOPNFCE.Text;
              CSTAux  :=  cbCST.Text;
              CSOSNAux:=  cbCSOSN.Text;
              pICMSAux:=  StrToFloat(edtICMS.Text);
              vICMSAux:=  (pICMSAux / 100) * Modulo.qryVProdutos.FieldByName('total').AsFloat;
            end;
            2: //Do do banco de dados da tabela itensvenda
            //Itens Venda
            begin
              NCMAux  :=  Modulo.qryVProdutos.FieldByName('ncm').AsString;
              CFOP    :=  Modulo.qryVProdutos.FieldByName('cfop').AsString;
              CSTAux  :=  Modulo.qryVProdutos.FieldByName('cst').AsString;
              CSOSNAux:=  Modulo.qryVProdutos.FieldByName('cst').AsString;
              pICMSAux:=  Modulo.qryVProdutos.FieldByName('percentualicms').AsFloat;
              vICMSAux:=  Modulo.qryVProdutos.FieldByName('valoricms').AsFloat;
            end;
            3:  //Pegar o CFOP o Item da tabela Itens Venda e Testar o CFOP 5102/5405 para Substituição e Tributado
            //Itens Venda por CFOP
            begin
              if Modulo.qryVProdutos.FieldByName('cfop').AsString = '5102' then
              begin
                NCMAux  :=  Modulo.qryVProdutos.FieldByName('ncm').AsString;
                CFOP    := '5102';
                CSTAux  := '000';
                CSOSNAux:= '102';
                pICMSAux:= 0;
                vICMSAux:= 0;
              end else
              if Modulo.qryVProdutos.FieldByName('cfop').AsString = '5405' then
              begin
                NCMAux  :=  Modulo.qryVProdutos.FieldByName('ncm').AsString;
                CFOP    :=  '5405';
                CSTAux  :=  '060';
                CSOSNAux:=  '500';
                pICMSAux:=  0;
                vICMSAux:=  0;
              end;
            end;
          end;

          with Det.Add do
           begin
             Prod.nItem    := IdItemNota; // Número sequencial, para cada item deve ser incrementado
             Prod.cProd    := Modulo.qryVProdutos.FieldByName('produto').AsString;
             //Testar se o Dodigo de Barras tem menos de 13 Digitos se tiver Gerar um Codigo
             if Length(Modulo.qryVProdutos.FieldByName('codigobarras').AsString) < 13 then
              Prod.cEAN    := GerarEAN13(StrToInt(Modulo.qryVProdutos.FieldByName('produto').AsString))
              else
                Prod.cEAN  := Modulo.qryVProdutos.FieldByName('codigobarras').AsString;
             Prod.xProd    := Modulo.qryVProdutos.FieldByName('descricao').AsString;
             Prod.NCM      := NCMAux; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
             Prod.EXTIPI   := '';
             Prod.CFOP     := CFOP;
             Prod.uCom     := Modulo.qryVProdutos.FieldByName('unidademedida').AsString;
             Prod.qCom     := Modulo.qryVProdutos.FieldByName('quantidade').AsFloat;
             Prod.vUnCom   := Modulo.qryVProdutos.FieldByName('valor').AsFloat;
             //Prod.vProd    := Modulo.qryVProdutos.FieldByName('total').AsFloat;
             //Prod.vProd    := StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('total').AsFloat));
             Prod.vProd    := SimpleRoundTo(Modulo.qryVProdutos.FieldByName('total').AsFloat, -2);
//             Prod.vProd    := Modulo.qryVProdutos.FieldByName('total').AsFloat;
             //Passar o Valor Total para a variavel de Soma
             //SomaItens  :=  SomaItens + StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('total').AsFloat));
             SomaItens  :=  SomaItens + SimpleRoundTo(Modulo.qryVProdutos.FieldByName('total').AsFloat, -2);
//             SomaItens  :=  SomaItens + Modulo.qryVProdutos.FieldByName('total').AsFloat;
             //Testar se o Dodigo de Barras tem menos de 13 Digitos se tiver Gerar um Codigo
             if Length(Modulo.qryVProdutos.FieldByName('codigobarras').AsString) < 13 then
              Prod.cEANTrib := GerarEAN13(StrToInt(Modulo.qryVProdutos.FieldByName('produto').AsString))
              else
                Prod.cEANTrib:= Modulo.qryVProdutos.FieldByName('codigobarras').AsString;
             Prod.uTrib     := Modulo.qryVProdutos.FieldByName('unidademedida').AsString;
             Prod.qTrib     := Modulo.qryVProdutos.FieldByName('quantidade').AsFloat;
             Prod.vUnTrib   := Modulo.qryVProdutos.FieldByName('valor').AsFloat;

             //Prod.vOutro    := StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('valoroutrasdespesasrateado').AsFloat));
             Prod.vOutro    := SimpleRoundTo(Modulo.qryVProdutos.FieldByName('valoroutrasdespesasrateado').AsFloat, -2);
//             Prod.vOutro    := Modulo.qryVProdutos.FieldByName('valoroutrasdespesasrateado').AsFloat;
             Prod.vFrete    := 0;
             Prod.vSeg      := 0;
             //Prod.vDesc    := StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('valordescontorateado').AsFloat));
             Prod.vDesc    := SimpleRoundTo(Modulo.qryVProdutos.FieldByName('valordescontorateado').AsFloat, -2);
//             Prod.vOutro    := Modulo.qryVProdutos.FieldByName('valoroutrasdespesasrateado').AsFloat;
             //Recebendo o Valor Rateado
             //vDescontoRateado :=  vDescontoRateado +  StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('valordescontorateado').AsFloat));
             //vOutros  :=  vOutros + StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('valoroutrasdespesasrateado').AsFloat));
             vDescontoRateado :=  vDescontoRateado +  SimpleRoundTo(Modulo.qryVProdutos.FieldByName('valordescontorateado').AsFloat, -2);
             vOutros  :=  vOutros + SimpleRoundTo(Modulo.qryVProdutos.FieldByName('valoroutrasdespesasrateado').AsFloat, -2);
//             vDescontoRateado :=  vDescontoRateado +  Modulo.qryVProdutos.FieldByName('valordescontorateado').AsFloat;
//             vOutros  :=  vOutros + Modulo.qryVProdutos.FieldByName('valoroutrasdespesasrateado').AsFloat;

             Prod.CEST := Modulo.qryVProdutos.FieldByName('cest').AsString;

  //           infAdProd      := 'Informação Adicional do Produto';

             with Imposto do
              begin
                // lei da transparencia nos impostos
                vTotTrib := 0;

                with ICMS do
                 begin
                   case Form1.cbRegime.ItemIndex of
                     0: // Simples Nacional
                     begin
                      //CSOSN        :=  csosn400; //Regime Simples Nacional
                      CSOSN        :=  StrToCSOSNIcms(OK, CSOSNAux); //Regime Simples Nacional
                     end;
                     1: //  Simples Excesso Receita
                     begin
                      CSOSN        :=  StrToCSOSNIcms(OK, CSOSNAux); //Regime Simples Nacional
                     end;
                     2: //  Regime Normal
                     begin
                      //CST          := cst00;   //Regime Normal
                      CST          := StrToCSTICMS(OK, CSTAux);   //Regime Normal
                     end;
                   end;

                   ICMS.orig    := oeNacional;
                   ICMS.modBC   := dbiValorOperacao;
                   ICMS.vBC     := 0;
                   ICMS.pICMS   := pICMSAux;
                   ICMS.vICMS   := vICMSAux;
                   ICMS.modBCST := dbisMargemValorAgregado;
                   ICMS.pMVAST  := 0;
                   ICMS.pRedBCST:= 0;
                   ICMS.vBCST   := 0;
                   ICMS.pICMSST := 0;
                   ICMS.vICMSST := 0;
                   ICMS.pRedBC  := 0;

                   // partilha do ICMS e fundo de probreza
                   with ICMSUFDest do
                    begin
                      vBCUFDest      := 0.00;
                      pFCPUFDest     := 0.00;
                      pICMSUFDest    := 0.00;
                      pICMSInter     := 0.00;
                      pICMSInterPart := 0.00;
                      vFCPUFDest     := 0.00;
                      vICMSUFDest    := 0.00;
                      vICMSUFRemet   := 0.00;
                    end;
                 end;

                {$REGION 'PIS'}
  {              with PIS do
                 begin
                   CST      := pis99;
                   PIS.vBC  := 0;
                   PIS.pPIS := 0;
                   PIS.vPIS := 0;

                   PIS.qBCProd   := 0;
                   PIS.vAliqProd := 0;
                   PIS.vPIS      := 0;
                 end;

                with PISST do
                 begin
                   vBc       := 0;
                   pPis      := 0;
                   qBCProd   := 0;
                   vAliqProd := 0;
                   vPIS      := 0;
                 end;

                with COFINS do
                 begin
                   CST            := cof99;
                   COFINS.vBC     := 0;
                   COFINS.pCOFINS := 0;
                   COFINS.vCOFINS := 0;

                   COFINS.qBCProd   := 0;
                   COFINS.vAliqProd := 0;
                 end;

                with COFINSST do
                 begin
                   vBC       := 0;
                   pCOFINS   := 0;
                   qBCProd   := 0;
                   vAliqProd := 0;
                   vCOFINS   := 0;
                 end;
  }
  //  Grupo para serviços
  {              with ISSQN do
                 begin
                   vBC       := 0;
                   vAliq     := 0;
                   vISSQN    := 0;
                   cMunFG    := 0;
                   cListServ := 1402; // Preencha este campo usando a tabela disponível
                                   // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
          {       end;}
                {$ENDREGION}
              end;
           end ;

          vICMSTotal  := vICMSTotal + vICMSAux;
          IdItemNota  := IdItemNota + 1;
          Modulo.qryVProdutos.Next;
        end;

          {$REGION 'Serviços'}
  //  Adicionando Serviços
  {        with Det.Add do
           begin
             Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
             Prod.cProd    := '123457';
             Prod.cEAN     := '';
             Prod.xProd    := 'Descrição do Serviço';
             Prod.NCM      := '99';
             Prod.EXTIPI   := '';
             Prod.CFOP     := '5933';
             Prod.uCom     := 'UN';
             Prod.qCom     := 1 ;
             Prod.vUnCom   := 100;
             Prod.vProd    := 100 ;

             Prod.cEANTrib  := '';
             Prod.uTrib     := 'UN';
             Prod.qTrib     := 1;
             Prod.vUnTrib   := 100;

             Prod.vFrete    := 0;
             Prod.vSeg      := 0;
             Prod.vDesc     := 0;

             infAdProd      := 'Informação Adicional do Serviço';

  //  Grupo para serviços
                with Imposto.ISSQN do
                 begin
                   cSitTrib  := ISSQNcSitTribNORMAL;
                   vBC       := 100;
                   vAliq     := 2;
                   vISSQN    := 2;
                   cMunFG    := 3554003;
                   cListServ := 1402; // Preencha este campo usando a tabela disponível
                                   // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
                 end;
           end ;
  }
          {$ENDREGION}

          Total.ICMSTot.vBC     := 0;
          Total.ICMSTot.vICMS   := vICMSTotal;
          Total.ICMSTot.vBCST   := 0;
          Total.ICMSTot.vST     := 0;
          //Total.ICMSTot.vProd   := Modulo.qryVendas.FieldByName('valorprodutos').AsFloat;  --Valor da Tabela
          Total.ICMSTot.vProd   :=  SomaItens;
          Total.ICMSTot.vFrete  := 0;
          Total.ICMSTot.vSeg    := 0;
          //Total.ICMSTot.vDesc   := Modulo.qryVendas.FieldByName('valordesconto').AsFloat; //Forma Exata usada
          Total.ICMSTot.vDesc   := vDescontoRateado;
          Total.ICMSTot.vII     := 0;
          Total.ICMSTot.vIPI    := 0;
          Total.ICMSTot.vPIS    := 0;
          Total.ICMSTot.vCOFINS := 0;
          Total.ICMSTot.vOutro  := vOutros;
          //Total.ICMSTot.vNF     := Modulo.qryVendas.FieldByName('valortotal').AsFloat; --Pegando Informação da Tabela
          Total.ICMSTot.vNF     := (SomaItens - vDescontoRateado) + vOutros;

          // partilha do icms e fundo de probreza
          Total.ICMSTot.vFCPUFDest   := 0.00;
          Total.ICMSTot.vICMSUFDest  := 0.00;
          Total.ICMSTot.vICMSUFRemet := 0.00;

          Total.ISSQNtot.vServ   := 0;
          Total.ISSQNTot.vBC     := 0;
          Total.ISSQNTot.vISS    := 0;
          Total.ISSQNTot.vPIS    := 0;
          Total.ISSQNTot.vCOFINS := 0;

          //Testar se o valor da NF é o mesmo do valor total
          if Total.ICMSTot.vNF <> Modulo.qryVendas.FieldByName('valortotal').AsFloat then
            sValorTotPago :=  Total.ICMSTot.vNF
          else
            sValorTotPago :=  Modulo.qryVendas.FieldByName('valortotal').AsFloat;

          {$REGION 'RetTrib'}
  {        Total.retTrib.vRetPIS    := 0;
          Total.retTrib.vRetCOFINS := 0;
          Total.retTrib.vRetCSLL   := 0;
          Total.retTrib.vBCIRRF    := 0;
          Total.retTrib.vIRRF      := 0;
          Total.retTrib.vBCRetPrev := 0;
          Total.retTrib.vRetPrev   := 0;}
          {$ENDREGION}

          Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

          {$REGION 'Duplicata'}
  {        Cobr.Fat.nFat  := 'Numero da Fatura';
          Cobr.Fat.vOrig := 100 ;
          Cobr.Fat.vDesc := 0 ;
          Cobr.Fat.vLiq  := 100 ;

          with Cobr.Dup.Add do
           begin
             nDup  := '1234';
             dVenc := now+10;
             vDup  := 50;
           end;

          with Cobr.Dup.Add do
           begin
             nDup  := '1235';
             dVenc := now+10;
             vDup  := 50;
           end;
   }
          {$ENDREGION}

          with pag.Add do //PAGAMENTOS apenas para NFC-e
           begin
             if Copy(Modulo.qryVendas.FieldByName('condicaopagamento').AsString, 1, 7) = 'A VISTA' then begin
              tPag := fpDinheiro;
              //vPag := Modulo.qryVendas.FieldByName('valortotal').AsFloat +
              //        Modulo.qryVendas.FieldByName('valortroco').AsFloat;
              //vPag := Modulo.qryVendas.FieldByName('valortotal').AsFloat;
              vPag := sValorTotPago;
             end else if Copy(Modulo.qryVendas.FieldByName('condicaopagamento').AsString, 1, 7) = 'A PRAZO' then begin
              tPag := fpCartaoCredito;
              //vPag := Modulo.qryVendas.FieldByName('valortotal').AsFloat;
              vPag := sValorTotPago;
             end else if Copy(Modulo.qryVendas.FieldByName('condicaopagamento').AsString, 1, 13) = 'CARTAO DEBITO' then begin
              tPag := fpCartaoDebito;
              //vPag := Modulo.qryVendas.FieldByName('valortotal').AsFloat;
              vPag := sValorTotPago;
             end else begin
              tPag := fpOutro;
              //vPag := Modulo.qryVendas.FieldByName('valortotal').AsFloat;
              vPag := sValorTotPago;
             end;

           end;

          InfAdic.infCpl     :=  '';
          InfAdic.infAdFisco :=  '';

          {$REGION 'Informação OBS Adicional'}
  {        with InfAdic.obsCont.Add do
           begin
             xCampo := 'ObsCont';
             xTexto := 'Texto';
           end;

          with InfAdic.obsFisco.Add do
           begin
             xCampo := 'ObsFisco';
             xTexto := 'Texto';
           end; }
          {$ENDREGION}
       end;
    end;

    Form1.ACBrNFe1.NotasFiscais.GerarNFe;

    IdVenda     :=  Modulo.qryVendas.FieldByName('codigo').AsInteger;

     try
       if rbNaoImprimir.Checked = True then
        Form1.ACBrNFe1.Enviar(vNumLote,False,Sincrono)
        else if rbImprimirDireto.Checked = True then begin
          Form1.ACBrNFe1.Enviar(vNumLote,False,Sincrono);

          Form1.ACBrNFe1.DANFE  :=  TACBrNFeDANFEFR.Create(nil);
          Form1.ACBrNFeDANFEFR1.FastFile  :=  ExtractFilePath(Application.ExeName) + 'Rel\DANFeNFCe.fr3';
          Form1.ACBrNFeDANFEFR1.Logo  :=  edtLogoMarca.Text;
          Form1.ACBrNFeDANFEFR1.Impressora  :=  Impressora;
          Form1.ACBrNFeDANFEFR1.MostrarPreview  :=  False;
          Form1.ACBrNFe1.DANFE  :=  Form1.ACBrNFeDANFEFR1;

          Form1.ACBrNFe1.NotasFiscais.Imprimir;
        end else
          Form1.ACBrNFe1.Enviar(vNumLote,True,Sincrono);

     except
      on E: exception do begin
        ErroNFCe  :=  True;
        MemoLog.Lines.Add('Motivo do Erro: ');
        MemoLog.Lines.Add(E.Message);
        //MemoLog.Lines.Add('');
        MemoLog.Lines.Add('');
        MemoLog.Lines.Add('Detalhes:');
        MemoLog.Lines.Add('**************************************');
        MemoLog.Lines.Add('Erro ao Enviar Nota.');
        MemoLog.Lines.Add('Venda: '+ IntToStr(IdVenda));
        MemoLog.Lines.Add('Problema de Envio.');
        //MemoLog.Lines.Add('');
        //MemoLog.Lines.Add(E.Message);
        if Copy(E.Message, 11,11) = 'Duplicidade' then begin
          Form1.edtIdNFCe.Text  :=  IntToStr(StrToInt(Form1.edtIdNFCe.Text) + 1);
          Form1.btnSalvarConfig.Click;
          MemoLog.Lines.Add('Alteração no ID da NFCe Realizada com Sucesso!');
        end;
      end;
       //on e: Exception do
         //ShowMessage('Erro ao Enviar!'+#13+e.Message);
     end;

    if not Sincrono then
    begin
      //MemoLog.Lines.Add(Form1.ACBrNFe1.WebServices.Retorno.RetWS);
      //MemoLog.Lines.Add(Form1.ACBrNFe1.WebServices.Retorno.RetornoWS);

      MemoLog.Lines.Add('');
      MemoLog.Lines.Add('Envio NFCe');
      //MemoLog.Lines.Add('tpAmb: '+ TpAmbToStr(Form1.ACBrNFe1.WebServices.Retorno.TpAmb));
      //MemoLog.Lines.Add('verAplic: '+ Form1.ACBrNFe1.WebServices.Retorno.verAplic);
      MemoLog.Lines.Add('cStat: '+ IntToStr(Form1.ACBrNFe1.WebServices.Retorno.cStat));
      //MemoLog.Lines.Add('cUF: '+ IntToStr(Form1.ACBrNFe1.WebServices.Retorno.cUF));
      MemoLog.Lines.Add('xMotivo: '+ Form1.ACBrNFe1.WebServices.Retorno.xMotivo);
      //MemoLog.Lines.Add('cMsg: '+ IntToStr(Form1.ACBrNFe1.WebServices.Retorno.cMsg));
      //MemoLog.Lines.Add('xMsg: '+ Form1.ACBrNFe1.WebServices.Retorno.xMsg);
      //MemoLog.Lines.Add('Recibo: '+ Form1.ACBrNFe1.WebServices.Retorno.Recibo);
      //MemoLog.Lines.Add('Protocolo: '+ Form1.ACBrNFe1.WebServices.Retorno.Protocolo);
      MemoLog.Lines.Add('**************************************');
      MemoLog.Lines.Add('');
      //MemoLog.Lines.Add('');
    end
    else
    begin
      //MemoLog.Lines.Add(Form1.ACBrNFe1.WebServices.Enviar.RetWS);
      //MemoLog.Lines.Add(Form1.ACBrNFe1.WebServices.Enviar.RetornoWS);

      MemoLog.Lines.Add('');
      MemoLog.Lines.Add('Envio NFCe');
      //MemoLog.Lines.Add('tpAmb: '+ TpAmbToStr(Form1.ACBrNFe1.WebServices.Enviar.TpAmb));
      //MemoLog.Lines.Add('verAplic: '+ Form1.ACBrNFe1.WebServices.Enviar.verAplic);
      MemoLog.Lines.Add('cStat: '+ IntToStr(Form1.ACBrNFe1.WebServices.Enviar.cStat));
      //MemoLog.Lines.Add('cUF: '+ IntToStr(Form1.ACBrNFe1.WebServices.Enviar.cUF));
      MemoLog.Lines.Add('xMotivo: '+ Form1.ACBrNFe1.WebServices.Enviar.xMotivo);
      //MemoLog.Lines.Add('Recibo: '+ Form1.ACBrNFe1.WebServices.Enviar.Recibo);
      MemoLog.Lines.Add('**************************************');
      MemoLog.Lines.Add('');
      //MemoLog.Lines.Add('');
    end;

    //Gerar dados para pegar o caminho onde esta salvando o xml
    DataXML     :=  Form1.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi;
    CNPJCPFXML  :=  Form1.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
    modeloXML   :=  Form1.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo;

    ChaveXML    :=  Copy(Form1.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 100) + '-nfe.xml';

    CaminhoXML  :=  PathWithDelim(Form1.ACBrNFe1.Configuracoes.Arquivos.GetPathNFe(DataXML,
    CNPJCPFXML, modeloXML));

    Caminho     :=  Form1.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' + 'ENVIADOS'+'\'+FormatDateTime('yyyymm' ,DataXML)+'\';

    CaminhoXML  :=  CaminhoXML + ChaveXML;

    //Gravar Chave e Caminho no Banco de Dados
    Modulo.qryAux.Close;
    Modulo.qryAux.SQL.Clear;
    Modulo.qryAux.SQL.Add('update vendas set');
    if ErroNFCe = False then begin
      Modulo.qryAux.SQL.Add('modelo = :modelo,');
      Modulo.qryAux.SQL.Add('serie = :serie,');
    end;
    Modulo.qryAux.SQL.Add('chave = :chave,');
    Modulo.qryAux.SQL.Add('updatev = :updatev,');
    Modulo.qryAux.SQL.Add('caminhoxml = :caminhoxml,');
    //Modulo.qryAux.SQL.Add('xml = :xml,'); --Nao Usar Salvando no Banco
    Modulo.qryAux.SQL.Add('statusnf = :statusnf');
    Modulo.qryAux.SQL.Add('where codigo = :codigo');
    Modulo.qryAux.ParamByName('chave').AsString        := Copy(Form1.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 100);
    Modulo.qryAux.ParamByName('caminhoxml').AsString   := CaminhoXML;
    Modulo.qryAux.ParamByName('codigo').AsInteger      :=  IdVenda;
    if ErroNFCe = True then begin
      Modulo.qryAux.ParamByName('statusnf').AsString   := 'ERRO';
    end else begin
      EnviadoNF :=  'S';
      Modulo.qryAux.ParamByName('statusnf').AsString   := 'ENVIADO';
      Modulo.qryAux.ParamByName('modelo').AsString   := '65';
      Modulo.qryAux.ParamByName('serie').AsString   := SERIENOTAFISCALMANUALPADRAO;
      Modulo.qryAux.ParamByName('updatev').AsString   := 'N';
      //Modulo.qryAux.ParamByName('xml').LoadFromFile(CaminhoXML,ftBlob); --Nao Usar Salvando no banco
      //Criar pasta se nao Existir
      if not DirectoryExists(Caminho) then
        ForceDirectories(Caminho);
      //Copiar o xml para uma Pasta Para Compactar Posteriormente
      CopyFile(PChar(CaminhoXML), PChar(Caminho+'\'+ChaveXML), True);
      MemoLog.Lines.Add('Nota NFCe Gerada com Sucesso!');
      MemoLog.Lines.Add('');
      MemoLog.Lines.Add('');
      //Atualizar o Numero da NFCe no Edit e no config
      NumeroNFCe  :=  StrToInt(Form1.edtIdNFCe.Text) + 1;
      Form1.edtIdNFCe.Text  :=  IntToStr(NumeroNFCe);  //Numero da NFCe
      Form1.btnSalvarConfig.Click;
    end;
    Modulo.qryAux.ExecSQL;

    //Atualizar Produto da Venda se for Enviado
    if EnviadoNF = 'S' then
    begin
      EnviadoNF := '';
      Modulo.qryVProdutos.First;
      while not Modulo.qryVProdutos.Eof  do begin
        Modulo.qryAux.Close;
        Modulo.qryAux.SQL.Clear;
        Modulo.qryAux.SQL.Add('update itensvendas set enviado_nf = :A where codigo = :B');
        Modulo.qryAux.ParamByName('a').AsString   :=  'S';
        Modulo.qryAux.ParamByName('b').AsInteger  :=  Modulo.qryVProdutos.FieldByName('codigo').AsInteger;
        Modulo.qryAux.ExecSQL;
        Modulo.qryVProdutos.Next;
      end;
    end;
    Form1.ACBrNFe1.NotasFiscais.Clear;
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  //Nao Permitir abrir mais de um EXE
  CreateMutex(nil, False, 'MonitorNFCe');
   if GetLastError = ERROR_ALREADY_EXISTS then
  begin
//    MessageBox(0, 'Este programa já está sendo executado','Aviso', MB_ICONSTOP);
    Halt(0); // cancela execução
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
    Teste1, Teste2: TDateTime;
begin
  //------------------------------------------------------------------------------------
  //Parte de sistema para teste                                                     ////
  //Teste1 :=  EncodeDateTime(2018,03,01,0,0,0,0);//Data 01/03/2018                   ////
  //Teste2 :=  EncodeDateTime(2018,04,30,0,0,0,0);//Data 30/04/2018                   ////
  //if not ((Now >= Teste1) and (Now <= Teste2)) then begin                           ////
  //  ShowMessage('Sistema para Avaliação entre em contato com o Desenvolvedor.'+#13+ ////
  //  'Wessel: 98 9 8260-4909');                                                      ////
  //  Application.Terminate;                                                          ////
  //end;                                                                              ////
  //------------------------------------------------------------------------------------

  //Carregar Configurações do INI
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
    //Conexao com o Banco de Dados
    edtCaminho.Text           :=  Ini.ReadString( 'Conexão','Caminho do banco' ,'');
    edtConexao.Text           :=  Ini.ReadString( 'Conexão','Conexao' ,'');
    edtPorta.Text             :=  Ini.ReadString( 'Conexão','Porta', '');
    //Tentar conexão com o Banco de dados
    Modulo.ConexaoPDV.Connected :=  False;
    try
      Modulo.ConexaoPDV.Params.Values['Database'] :=  Ini.ReadString( 'Conexão','Caminho do banco' ,'');
      Modulo.ConexaoPDV.Params.Values['Conexao'] :=  Ini.ReadString( 'Conexão','Conexao' ,'');
      Modulo.ConexaoPDV.Params.Values['Port'] :=  Ini.ReadString( 'Conexão','Porta', '');
      Modulo.ConexaoPDV.Connected :=  True
    except
      on E: Exception do
      ShowMessage('Conexão com o Banco de Dados Mal Sucedida!' +#13+E.Message);
    end;
    //Receber Serie Padrão de NF Manual
    Modulo.qryAux.Close;
    Modulo.qryAux.SQL.Clear;
    Modulo.qryAux.SQL.Add('select SERIENOTAFISCALMANUALPADRAO from CONFIGURACOES');
    Modulo.qryAux.Open();
    SERIENOTAFISCALMANUALPADRAO := Modulo.qryAux.FieldByName('SERIENOTAFISCALMANUALPADRAO').AsString;
    //Pesquisar CST no banco e Preencher o ComboBox
    Modulo.qryAux.Close;
    Modulo.qryAux.SQL.Clear;
    Modulo.qryAux.SQL.Add('select codigo from csts');
    Modulo.qryAux.SQL.Add('order by codigo');
    Modulo.qryAux.Open();
    Modulo.qryAux.First;
    while not Modulo.qryAux.Eof do begin
      cbCST.Items.Add(Modulo.qryAux.FieldByName('codigo').AsString);
      Modulo.qryAux.Next;
    end;

    //Pesquisar CFOP no banco e Preencher o ComboBox
    Modulo.qryAux.Close;
    Modulo.qryAux.SQL.Clear;
    Modulo.qryAux.SQL.Add('select codigo from cfops');
    Modulo.qryAux.SQL.Add('order by codigo');
    Modulo.qryAux.Open();
    Modulo.qryAux.First;
    while not Modulo.qryAux.Eof do begin
      cbCFOPNFCE.Items.Add(Modulo.qryAux.FieldByName('codigo').AsString);
      Modulo.qryAux.Next;
    end;

    //Listar Impressoras do Windows
    cbImpressora.Items.Assign(Printer.Printers);
    //Mostrar o Form do ACBr no Panel de Configurações
    Form1 :=  TForm1.Create(Self);
    Form1.Parent  := pnlConfiguracoes;
    Form1.Show;

    //Passar Data para os Edits de Data do Mes
    //dtpInicio.Date  :=  StartOfTheMonth(Now);
    //dtpFim.Date     :=  EndOfTheMonth(Now);

    //Passar Data para os Edits de Data do Mes
    dInicial.Date  :=  StartOfTheMonth(Now);
    dFinal.Date    :=  EndOfTheMonth(Now);
    dtVIni.Date    :=  StartOfTheMonth(Now);
    dtVFim.Date    :=  EndOfTheMonth(Now);

    //Passar Data para os Edits de Data do Dia Atual
    dtpInicio.Date  :=  Now;
    dtpFim.Date     :=  Now;

    //Email
    edtSmtpHost.Text      := Ini.ReadString( 'Email','Host'   ,'') ;
    edtSmtpPort.Text      := Ini.ReadString( 'Email','Port'   ,'') ;
    edtSmtpUser.Text      := Ini.ReadString( 'Email','User'   ,'') ;
    edtSmtpPass.Text      := Ini.ReadString( 'Email','Pass'   ,'') ;
    edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','') ;
    edt_AssinaturaEmail.Text  := Ini.ReadString( 'Email','Assinatura','') ;
    cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False) ;
    StreamMemo := TMemoryStream.Create;
    Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
    mmEmailMsg.Lines.LoadFromStream(StreamMemo);
    StreamMemo.Free;

    //Danfe
    edtLogoMarca.Text         := Ini.ReadString( 'DANFE','LogoMarca'   ,'') ;
    if Form1.ACBrNFe1.DANFE <> nil then
     begin
       //Passar o tipo para a Danfe NFCe
       Form1.ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(Form1.rgTipoDanfe.ItemIndex+1));
       Form1.ACBrNFe1.DANFE.Logo       := edtLogoMarca.Text;
     end;
    if Ini.ReadString( 'DANFE','Tipo Impressao' ,'') = 'IMPRIMIR' then
      rbImprimir.Checked  :=  True
      else if Ini.ReadString( 'DANFE','Tipo Impressao' ,'') = 'PDF' then
        rbPDF.Checked :=  True
        else if Ini.ReadString( 'DANFE','Tipo Impressao' ,'') = 'NÃO IPRIMIR' then
          rbNaoImprimir.Checked :=  True
          else if Ini.ReadString( 'DANFE','Tipo Impressao' ,'') = 'IMPRIMIR DIRETO' then
            rbImprimirDireto.Checked  :=  True;

    RbCanhoto.ItemIndex                   :=  Ini.ReadInteger( 'DANFE','Canhoto'   ,0) ;
    EditMargemSuperior.Text               :=  Ini.ReadString( 'DANFE','Margem Superior'   ,'') ;
    EditMargemInferior.Text               :=  Ini.ReadString( 'DANFE','Margem Inferior'   ,'') ;
    EditMargemEsquerda.Text               :=  Ini.ReadString( 'DANFE','Margem Esquerda'   ,'') ;
    EditMargemDireita.Text                :=  Ini.ReadString( 'DANFE','Margem Direita'   ,'') ;
    CBImprimirUndQtVlComercial.ItemIndex  :=  Ini.ReadInteger( 'DANFE','Imprimir Und Qt Vl Comercial'   ,0) ;
    rgModeloRelatorio.ItemIndex           :=  Ini.ReadInteger( 'DANFE','Modelo Relatorio'   ,0) ;
    if Ini.ReadString( 'DANFE','Tarja Nfe Cancelada'   ,'')  = 'S' then
      rbTarjaNfeCancelada.Checked := True;
    if Ini.ReadString( 'DANFE','Imprimir Dados Doc Referenciados'   ,'')  = 'S' then
      rbImprimirDadosDocReferenciados.Checked  := True;
    cbImpressora.Text :=  Ini.ReadString( 'DANFE','Impressora' ,'');
    Impressora        :=  Ini.ReadString( 'DANFE','Impressora' ,'');

    //Filtros
    //EstadoVendas
    EstadoVenda :=  Ini.ReadString( 'Filtro','Estado Venda' ,'');
    if Ini.ReadString( 'Filtro','Estado Venda' ,'') = 'A' then
      rbAberta.Checked  :=  True
      else if Ini.ReadString( 'Filtro','Estado Venda' ,'') = 'C' then
        rbCancelada.Checked :=  True
        else if Ini.ReadString( 'Filtro','Estado Venda' ,'') = 'F' then
          rbFechada.Checked :=  True;
    //FormaPagamento
    FormaPagamento  :=  Ini.ReadString( 'Filtro','Forma Pagamento' ,'');
    if Ini.ReadString( 'Filtro','Forma Pagamento' ,'') = 'A VISTA' then
      rbAVista.Checked  :=  True
      else if Ini.ReadString( 'Filtro','Forma Pagamento' ,'') = 'A PRAZO' then
        rbAPrazo.Checked  := True
        else if Ini.ReadString( 'Filtro','Forma Pagamento' ,'') = 'TODOS' then
          rbTodosFormaPagamento.Checked :=  True;
    //StatusNFCe
    StatusNFCe  :=  Ini.ReadString( 'Filtro','Status NFCe' ,'');
    if Ini.ReadString( 'Filtro','Status NFCe' ,'') = 'ENVIADO' then
      rbEnviado.Checked :=  True
      else if Ini.ReadString( 'Filtro','Status NFCe' ,'') = 'PENDENTE' then
        rbPendente.Checked  :=  True
        else if Ini.ReadString( 'Filtro','Status NFCe' ,'') = 'ERRO' then
          rbErro.Checked  :=  True
          else if Ini.ReadString( 'Filtro','Status NFCe' ,'') = 'TODOS' then
            rbTodasStatusNFCe.Checked :=  True;
    //Envio Automatico
    Auto  :=  Ini.ReadInteger('Filtro', 'Envio Automatico', 0);
    if Auto = 1 then
      cbAutomatico.Checked  :=  True
      else
        cbAutomatico.Checked  :=  False;
    //Variavel de Auxilio de Pesquisa para NFCe Pendente
    AuxSQL  :=  '(vendas.statusnf = :statusnf) or (statusnf is null) or (statusnf = '''')';
    //ModeloDocumento
    ModeloDocumento :=  Ini.ReadString( 'Filtro','Modelo Documento' ,'');
    if Ini.ReadString( 'Filtro','Modelo Documento' ,'') = '02' then
      rb02.Checked  :=  True
      else if Ini.ReadString( 'Filtro','Modelo Documento' ,'') = '03' then
        rb03.Checked  :=  True
        else if Ini.ReadString( 'Filtro','Modelo Documento' ,'') = '55' then
          rb55.Checked  :=  True
          else if Ini.ReadString( 'Filtro','Modelo Documento' ,'') = '65' then
            rb65.Checked  :=  True
            else if Ini.ReadString( 'Filtro','Modelo Documento' ,'') = 'TODOS' then
              rbTodosModeloDocumento.Checked  :=  True;
    cbCST.Text                :=  Ini.ReadString( 'Filtro','CST' ,'');
    edtICMS.Text              :=  Ini.ReadString( 'Filtro','ICMS' ,'');
    cbCSOSN.Text              :=  Ini.ReadString( 'Filtro','CSOSN' ,'');
    cbSituacaoTributaria.Text :=  Ini.ReadString( 'Filtro','Situacao Tributaria' ,'');
    cbCFOPNFCE.Text           :=  Ini.ReadString( 'Filtro','CFOP NFCe' ,'');
    edtNCM.Text               :=  Ini.ReadString( 'Filtro','NCM','');
    rgUsarTributacao.ItemIndex:=  Ini.ReadInteger('Filtro','Usar Tributacao' , 0);
    rgMensagemRetorno.ItemIndex :=  Ini.ReadInteger('Filtro','Mensagem de Retorno' , 0);
    edtTimer.Text             :=  IntToStr(Ini.ReadInteger('Filtro', 'Tempo Automatico', 0) div 60000);
    TimerEnvio.Interval       :=  Ini.ReadInteger('Filtro', 'Tempo Automatico', 0);
    TimerEnvio.Enabled        :=  False;

  finally
    Ini.Free;
  end;

  //Atualizar Grid
  sbtnAtualizar.Click;

  //Iniciar minimizado
  if TimerMinimizar <> nil then  
  TimerMinimizar.Enabled  :=  True;

end;

function TfrmPrincipal.GerarEAN13(Codigo: Integer): string;
  function Par(Cod: Integer): Boolean;
  begin
    result	:= Cod mod 2 = 0;
  end;
var
  Ean: string;
  i, SomarPar, SomarImpar: Integer;
begin
  //Gerar codigo de barras EAN13 Valido
  Ean :=  '9781' + FormatFloat('########00000000', Codigo);

  //Gerar
  SomarPar  := 0;
  SomarImpar:= 0;
  for i := 1 to 12 do
  begin
    if Par(i) then
      SomarPar  :=  SomarPar  + StrToInt(Ean[i])
      else
        SomarImpar  :=  SomarImpar  + StrToInt(Ean[i]);
  end;
  SomarPar  :=  SomarPar * 3;
  i :=  0;
  while i < (SomarPar + SomarImpar) do
    Inc(i, 10);

  Result := Ean + IntToStr(i - (SomarPar + SomarImpar));
end;

function TfrmPrincipal.GetFileList(const Path: string): TStringList;
var
  I: Integer;
  SearchRec: TSearchRec;
begin
  Result := TStringList.Create;
  try
    I := FindFirst(Path, 0, SearchRec);
    while I = 0 do
    begin
      Result.Add(SearchRec.Name);
      I := FindNext(SearchRec);
    end;
  except
    Result.Free;
    raise;
  end;
end;

procedure TfrmPrincipal.MostrarClick(Sender: TObject);
begin
  try
    TrayIcon.Visible  :=  False;
    Self.Show;
    Self.WindowState :=  wsNormal;
    Application.BringToFront;
    //Parar o Timer
    TimerEnvio.Enabled  :=  False;
    //Refazer a Pesquisa
    sbtnAtualizar.Click;
  Except
    on E: exception do
    StatusBar.Panels[2].Text  :=  E.Message;
  end;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.sbtnAbrirBancoClick(Sender: TObject);
begin
  Form1.OpenDialog1.Title := 'Selecione o Banco de Dados';
  Form1.OpenDialog1.DefaultExt := '*.fdb';
  Form1.OpenDialog1.Filter := 'Arquivos FDB (*.fdb)|*.fdb|Todos os Arquivos (*.*)|*.*';
  Form1.OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if Form1.OpenDialog1.Execute then begin
    edtCaminho.Text :=  Form1.OpenDialog1.FileName;
  end;
end;

procedure TfrmPrincipal.sbtnAtualizarClick(Sender: TObject);
begin
  //Atualizar Tab que Tiver Ativo
  case tnVendas.PageIndex of
    0:  //Vendas
    begin
      Modulo.qryVendas.Close;
      Modulo.qryVendas.SQL.Clear;
      Modulo.qryVendas.SQL.Add('select');
      Modulo.qryVendas.SQL.Add('condicoespagamentos.descricao CONDICAOPAGAMENTO,');
      Modulo.qryVendas.SQL.Add('empresas.razaosocial EMPRESA_RAZAOSOCIAL,');
      Modulo.qryVendas.SQL.Add('usuarios.usuario USUARIO_NOME,');
      Modulo.qryVendas.SQL.Add('filiais.razaosocial FILIAL_RAZAOSOCIAL,');
      Modulo.qryVendas.SQL.Add('pessoas.nomefantasia PESSOA_NOME,');
      Modulo.qryVendas.SQL.Add('pessoas.cnpj CNPJ,');
      Modulo.qryVendas.SQL.Add('pessoas.logradouroresidencial ENDERECO,');
      Modulo.qryVendas.SQL.Add('series.descricao SERIE_DESCRICAO,');
      Modulo.qryVendas.SQL.Add('vendas.*');
      Modulo.qryVendas.SQL.Add('from');
      Modulo.qryVendas.SQL.Add('vendas, condicoespagamentos, empresas,');
      Modulo.qryVendas.SQL.Add('usuarios, filiais, pessoas, series');
      Modulo.qryVendas.SQL.Add('where');
      Modulo.qryVendas.SQL.Add('(');
      Modulo.qryVendas.SQL.Add('vendas.condicaopagamento = condicoespagamentos.codigo and');
      Modulo.qryVendas.SQL.Add('vendas.empresa           = empresas.codigo and');
      Modulo.qryVendas.SQL.Add('vendas.usuario           = usuarios.codigo and');
      Modulo.qryVendas.SQL.Add('vendas.filial            = filiais.codigo and');
      Modulo.qryVendas.SQL.Add('vendas.pessoa            = pessoas.codigo and');
      Modulo.qryVendas.SQL.Add('vendas.serie             = series.codigo');
      Modulo.qryVendas.SQL.Add(')');
      Modulo.qryVendas.SQL.Add('and');
      Modulo.qryVendas.SQL.Add('(');
      Modulo.qryVendas.SQL.Add('vendas.data >= :dataInicio and vendas.data <= :dataFim');
      Modulo.qryVendas.SQL.Add(')');
      Modulo.qryVendas.SQL.Add('and');
      Modulo.qryVendas.SQL.Add('(');
      Modulo.qryVendas.SQL.Add('vendas.situacao = :situacao');
      Modulo.qryVendas.SQL.Add(')');
      if FormaPagamento <> 'TODOS' then begin
        Modulo.qryVendas.SQL.Add('and');
        Modulo.qryVendas.SQL.Add('(');
        Modulo.qryVendas.SQL.Add('condicoespagamentos.descricao like :condicoespagamentos');
        Modulo.qryVendas.SQL.Add(')');
        Modulo.qryVendas.ParamByName('condicoespagamentos').AsString  := FormaPagamento + '%';
      end;
      if StatusNFCe <> 'TODOS' then begin
        Modulo.qryVendas.SQL.Add('and');
        Modulo.qryVendas.SQL.Add('(');
        if StatusNFCe = 'PENDENTE' then
          Modulo.qryVendas.SQL.Add(AuxSQL)
          else
            Modulo.qryVendas.SQL.Add('vendas.statusnf = :statusnf');
        Modulo.qryVendas.SQL.Add(')');
        Modulo.qryVendas.ParamByName('statusnf').AsString           :=  StatusNFCe;
      end;
      if ModeloDocumento <> 'TODOS' then begin
        Modulo.qryVendas.SQL.Add('and');
        Modulo.qryVendas.SQL.Add('(');
        Modulo.qryVendas.SQL.Add('vendas.modelo = :modelo');
        Modulo.qryVendas.SQL.Add(')');
        Modulo.qryVendas.ParamByName('modelo').AsString               :=  ModeloDocumento;
      end;
      Modulo.qryVendas.ParamByName('dataInicio').AsDate             :=  dtpInicio.Date;
      Modulo.qryVendas.ParamByName('dataFim').AsDate                :=  dtpFim.Date;
      Modulo.qryVendas.ParamByName('situacao').AsString             :=  EstadoVenda;
      Modulo.qryVendas.SQL.Add('order by vendas.codigo');
      Modulo.qryVendas.Open();
      //Mostrar quantidades de registros encontrados
      StatusBar.Panels[1].Text  :=  IntToStr(Modulo.qryVendas.RecordCount);
    end;

    1:  //Produtos
    begin
      ShowMessage('Selecione a Guia de Vendas!');

    end;

  end;
end;

procedure TfrmPrincipal.sbtnAVistaClick(Sender: TObject);
begin
  //Mudar a Variavel de FormaPagamento
  FormaPagamento  :=  'A VISTA';
  sbtnAtualizar.Click;
end;

procedure TfrmPrincipal.sbtnCancelarClick(Sender: TObject);
var
 Chave, idLote, CNPJ, Protocolo, Justificativa : string;
begin
  if Modulo.qryVendas.FieldByName('statusnf').AsString = 'CANCELADA' then  begin
    ShowMessage('NFCe já Cancelada!');
    Abort;
  end;

  Chave :=  Modulo.qryVendas.FieldByName('chave').AsString;
  Chave := Trim(OnlyNumber(Chave));
  idLote := Form1.edtSerie.Text;
  CNPJ := copy(Chave,7,14);
  Protocolo:='';
  while Length(Justificativa) < 15 do begin
    if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa do Cancelamento', Justificativa)) then
     exit;
     if Length(Justificativa) < 15 then
      ShowMessage('Justificativa com Menos de 15 Caracteres!');
  end;

  Form1.ACBrNFe1.EventoNFe.Evento.Clear;
  with Form1.ACBrNFe1.EventoNFe.Evento.Add do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := Justificativa;
     infEvento.detEvento.nProt := Protocolo;
   end;
  Form1.ACBrNFe1.EnviarEvento(StrToInt(idLote));

  MemoLog.Lines.Add('**************************');
  MemoLog.Lines.Add(Form1.ACBrNFe1.WebServices.EnvEvento.RetWS);
  MemoLog.Lines.Add(Form1.ACBrNFe1.WebServices.EnvEvento.RetornoWS);
  MemoLog.Lines.Add('**************************');

  //Mudar Status da NFCe
  Modulo.qryAux.Close;
  Modulo.qryAux.SQL.Clear;
  Modulo.qryAux.SQL.Add('update vendas set');
  Modulo.qryAux.SQL.Add('statusnf = :statusnf');
  Modulo.qryAux.SQL.Add('where codigo = :codigo');
  Modulo.qryAux.ParamByName('codigo').AsInteger :=  dbgVendas.Columns[0].Field.AsInteger;
  Modulo.qryAux.ParamByName('statusnf').AsString   := 'CANCELADA';
  Modulo.qryAux.ExecSQL;

  sbtnAtualizar.Click;
end;

procedure TfrmPrincipal.sbtnCarregarClick(Sender: TObject);
begin
  //Pesquisar CST no banco e Preencher o ComboBox
  Modulo.qryClassificacaoFiscal.Close;
  Modulo.qryClassificacaoFiscal.SQL.Clear;
  Modulo.qryClassificacaoFiscal.SQL.Add('select');
  Modulo.qryClassificacaoFiscal.SQL.Add('CLASSIFICACOESFISCAIS.codigo CODCLASS,');
  Modulo.qryClassificacaoFiscal.SQL.Add('CLASSIFICACOESFISCAIS.descricao,');
  Modulo.qryClassificacaoFiscal.SQL.Add('CLASSIFICACOESFISCAIS.bloqueado,');
  Modulo.qryClassificacaoFiscal.SQL.Add('CLASSIFICACOESFISCAIS.usuario USUCLASS,');
  Modulo.qryClassificacaoFiscal.SQL.Add('CLASSIFICACOESFISCAIS.alteracao ALTCLASS,');
  Modulo.qryClassificacaoFiscal.SQL.Add('CLASSIFICACOESFISCAIS.numeroestacao NUMCLASS,');
  Modulo.qryClassificacaoFiscal.SQL.Add('ITENSCLASSIFICACOESFISCAIS.*');
  Modulo.qryClassificacaoFiscal.SQL.Add('from CLASSIFICACOESFISCAIS, ITENSCLASSIFICACOESFISCAIS');
  Modulo.qryClassificacaoFiscal.SQL.Add('where');
  Modulo.qryClassificacaoFiscal.SQL.Add('(');
  Modulo.qryClassificacaoFiscal.SQL.Add('CLASSIFICACOESFISCAIS.CODIGO = ITENSCLASSIFICACOESFISCAIS.CLASSIFICACAOFISCAL');
  Modulo.qryClassificacaoFiscal.SQL.Add(')');
  Modulo.qryClassificacaoFiscal.SQL.Add('order by codigo');
  Modulo.qryClassificacaoFiscal.Open();
end;

procedure TfrmPrincipal.sbtnDanfeNFCeClick(Sender: TObject);
begin
  if Modulo.qryVendas.FieldByName('caminhoxml').AsString = '' then
    ShowMessage('Não existe NFCe Gerada para esta Venda!')
    else begin
      //Verificar se a NFCe esta cancelada
      if Modulo.qryVendas.FieldByName('statusnf').AsString = 'CANCELADA' then  begin
        ShowMessage('NFCe Cancelada!');
        Abort;
      end;
      //Verificar se o arquivo existe
      if not FilesExists(Modulo.qryVendas.FieldByName('caminhoxml').AsString) then begin
        ShowMessage('Arquivo XML não encontrado no Diretório Abaixo:' +#13
        +Modulo.qryVendas.FieldByName('caminhoxml').AsString);
        Abort;
      end;

      //**************************************************************
      With Form1.ACBrNFeDANFEFR1 do
      begin
        PosCanhoto      := TPosRecibo( RbCanhoto.ItemIndex );

        // Mostra  a Tarja NFe CANCELADA
        NFeCancelada    := rbTarjaNfeCancelada.Checked;
        { Ajustar a propriedade ProtocoloNFe conforme a sua necessidade }
        { ProtocoloNFe := }

        // Margens
        MargemEsquerda  := StringToFloat( EditMargemEsquerda.Text ) + 0;
        MargemSuperior  := StringToFloat( EditMargemSuperior.Text ) + 0;
        MargemDireita   := StringToFloat( EditMargemDireita.Text ) + 0;
        MargemInferior  := StringToFloat( EditMargemInferior.Text ) + 0;

        // ImprimirUndQtVlComercial
        ImprimirUnQtVlComercial     := TImprimirUnidQtdeValor( CBImprimirUndQtVlComercial.ItemIndex );

        ImprimirDadosDocReferenciados := rbImprimirDadosDocReferenciados.Checked;

      end;
      //**************************************************************

      Form1.ACBrNFe1.NotasFiscais.Clear;
      Form1.ACBrNFe1.NotasFiscais.LoadFromFile(Modulo.qryVendas.FieldByName('caminhoxml').AsString);
      if rgModeloRelatorio.ItemIndex = 0 then begin //Fast Report
        Form1.ACBrNFe1.DANFE  :=  TACBrNFeDANFEFR.Create(nil);
        Form1.ACBrNFeDANFEFR1.FastFile  :=  ExtractFilePath(Application.ExeName) + 'Rel\DANFeNFCe.fr3';
        Form1.ACBrNFeDANFEFR1.Logo  :=  edtLogoMarca.Text;
        Form1.ACBrNFe1.DANFE  :=  Form1.ACBrNFeDANFEFR1;
      end else begin //Fortes Report
        Form1.ACBrNFe1.DANFE  :=  TACBrNFeDANFCeFortes.Create(nil);
        Form1.ACBrNFeDANFCeFortes1.Logo  :=  edtLogoMarca.Text;
        Form1.ACBrNFeDANFCeFortes1.ExpandirLogoMarca  :=  False;
        Form1.ACBrNFeDANFCeFortes1.TamanhoLogoHeight  :=  100;
        Form1.ACBrNFeDANFCeFortes1.TamanhoLogoWidth   :=  100;
        Form1.ACBrNFe1.DANFE  :=  Form1.ACBrNFeDANFCeFortes1;
      end;
      Form1.ACBrNFe1.NotasFiscais.Imprimir;
    end;
end;

procedure TfrmPrincipal.sbtnEmailClick(Sender: TObject);
var
 Para : String;
 CC: Tstrings;
begin
  if Modulo.qryVendas.FieldByName('CAMINHOXML').AsString = '' then
    ShowMessage('Venda não gerada NFCe ou sem Caminho do XML')
    else begin
      if not FilesExists(Modulo.qryVendas.FieldByName('CAMINHOXML').AsString) then begin
        ShowMessage('Arquivo XML não encontrado no Diretório Abaixo:'+#13
        +Modulo.qryVendas.FieldByName('CAMINHOXML').AsString);
        Abort;
      end;
    end;

  with Form1 do begin
    if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
      exit;

      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(Modulo.qryVendas.FieldByName('CAMINHOXML').AsString);
      CC:=TstringList.Create;
      try
        CC.Add(Para); //especifique um email vÃ¡lido

        ACBrMail1.Host := edtSmtpHost.Text;
        ACBrMail1.Port := edtSmtpPort.Text;
        ACBrMail1.Username := edtSmtpUser.Text;
        ACBrMail1.Password := edtSmtpPass.Text;
        ACBrMail1.From := edtSmtpUser.Text;
        ACBrMail1.SetSSL := cbEmailSSL.Checked; // SSL - ConexÃ£o Segura
        ACBrMail1.SetTLS := cbEmailSSL.Checked; // Auto TLS
        ACBrMail1.ReadingConfirmation := False; //Pede confirmaÃ§Ã£o de leitura do email
        ACBrMail1.UseThread := False;           //Aguarda Envio do Email(nÃ£o usa thread)
//        ACBrMail1.FromName := 'Projeto SIGEC - Monitor NFCe';
        ACBrMail1.FromName := edt_AssinaturaEmail.Text;

        try
          ACBrNFe1.NotasFiscais.Items[0].EnviarEmail( Para, edtEmailAssunto.Text,
                                                   mmEmailMsg.Lines
                                                   , True  // Enviar PDF junto
                                                   , CC    // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
                                                   , nil); // Lista de anexos - TStrings
          ShowMessage('Mensagem Enviada com Sucesso!');
        except
          on E: exception do begin
            ShowMessage('Verifique se Existe a Pasta PDF ou se os Dados estão Corretos'+#13#13
            +E.Message);
          end;
        end;

      finally
        CC.Free;
      end;


  end;
end;

procedure TfrmPrincipal.sbtnEnviadasClick(Sender: TObject);
begin
  //Mudar a Variavel de Status NFCe
  StatusNFCe  :=  'ENVIADO';
  sbtnAtualizar.Click;
end;

procedure TfrmPrincipal.sbtnExcluirClick(Sender: TObject);
begin
  //Excluir Todas que estão no Grid
  Modulo.qryVendas.First;
  while not Modulo.qryVendas.Eof do begin
    Modulo.qryNFCe.Close;
    Modulo.qryNFCe.SQL.Clear;
    Modulo.qryNFCe.SQL.Add('update vendas set statusnf = :statusnf');
    Modulo.qryNFCe.SQL.Add('where codigo = :codigo');
    Modulo.qryNFCe.ParamByName('statusnf').AsString :=  'EXCLUIDA';
    Modulo.qryNFCe.ParamByName('codigo').AsInteger    :=  Modulo.qryVendas.FieldByName('codigo').AsInteger;
    Modulo.qryNFCe.ExecSQL;

    Modulo.qryVendas.Next;
  end;
  //Refazer a Pesquisa
  sbtnAtualizar.Click;
end;

procedure TfrmPrincipal.sbtnExcluirSelecionadasClick(Sender: TObject);
var
  i: integer;
begin
  //Excluir Selecionadas
  if dbgVendas.SelectedRows.Count>0 then begin
    with dbgVendas.DataSource.DataSet do begin
      for I := 0 to dbgVendas.SelectedRows.Count - 1 do begin
        //Passar Procedimento para cada Item Selecionado
        GotoBookmark(pointer(dbgVendas.SelectedRows.Items[i]));
        //Pegar a informação do Fiel e Utilizar como parametro
        //ShowMessage(IntToStr(FieldByName('codigo').AsInteger));
        Modulo.qryNFCe.Close;
        Modulo.qryNFCe.SQL.Clear;
        Modulo.qryNFCe.SQL.Add('update vendas set statusnf = :statusnf');
        Modulo.qryNFCe.SQL.Add('where codigo = :codigo');
        Modulo.qryNFCe.ParamByName('statusnf').AsString :=  'EXCLUIDA';
        Modulo.qryNFCe.ParamByName('codigo').AsInteger    :=  FieldByName('codigo').AsInteger;
        Modulo.qryNFCe.ExecSQL;
      end;
    end;
  end;
  //Refazer a Pesquisa
  sbtnAtualizar.Click;
end;

procedure TfrmPrincipal.sbtnGravarConexaoClick(Sender: TObject);
Var IniFile : String ;
    Ini     : TIniFile ;
begin
  //Gravar no Ini
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
    Ini.WriteString( 'Conexão','Caminho do banco' ,edtCaminho.Text) ;
    Ini.WriteString( 'Conexão','Conexao' ,edtConexao.Text) ;
    Ini.WriteString( 'Conexão','Porta', edtPorta.Text);
  finally
    Ini.Free;
  end;
end;

procedure TfrmPrincipal.sbtnGravarDanfeClick(Sender: TObject);
Var IniFile : String ;
    Ini     : TIniFile ;
    Danfe   : String;
begin
  //Gravar no Ini
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
    if rbImprimir.Checked then
      Danfe := 'IMPRIMIR'
      else if rbPDF.Checked then
        Danfe :=  'PDF'
        else if rbNaoImprimir.Checked then
          Danfe :=  'NÃO IMPRIMIR'
          else if rbImprimirDireto.Checked then
            Danfe :=  'IMPRIMIR DIRETO';

    Ini.WriteString( 'DANFE','Tipo Impressao' ,Danfe) ;
    Ini.WriteString( 'DANFE','LogoMarca'   ,edtLogoMarca.Text) ;
    Ini.WriteString( 'DANFE','Impressora',  cbImpressora.Text);
    Ini.WriteInteger( 'DANFE','Canhoto',  RbCanhoto.ItemIndex);
    Ini.WriteString( 'DANFE','Margem Superior',  EditMargemSuperior.Text);
    Ini.WriteString( 'DANFE','Margem Inferior',  EditMargemInferior.Text);
    Ini.WriteString( 'DANFE','Margem Esquerda',  EditMargemEsquerda.Text);
    Ini.WriteString( 'DANFE','Margem Direita',  EditMargemDireita.Text);
    if rbTarjaNfeCancelada.Checked = True then
      Ini.WriteString( 'DANFE','Tarja Nfe Cancelada',  'S');
    if rbImprimirDadosDocReferenciados.Checked  = True then
      Ini.WriteString( 'DANFE','Imprimir Dados Doc Referenciados', 'S');
    Ini.WriteInteger( 'DANFE','Imprimir Und Qt Vl Comercial',  CBImprimirUndQtVlComercial.ItemIndex);
    Ini.WriteInteger( 'DANFE','Modelo Relatorio',  rgModeloRelatorio.ItemIndex);
  finally
    Ini.Free;
  end;
end;

procedure TfrmPrincipal.sbtnGravarEmailClick(Sender: TObject);
Var IniFile : String ;
    Ini     : TIniFile ;
    StreamMemo : TMemoryStream;
begin
  //Gravar no INI
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
    Ini.WriteString( 'Email','Host'    ,edtSmtpHost.Text) ;
    Ini.WriteString( 'Email','Port'    ,edtSmtpPort.Text) ;
    Ini.WriteString( 'Email','User'    ,edtSmtpUser.Text) ;
    Ini.WriteString( 'Email','Pass'    ,edtSmtpPass.Text) ;
    Ini.WriteString( 'Email','Assunto' ,edtEmailAssunto.Text) ;
    Ini.WriteString( 'Email','Assinatura' ,edt_AssinaturaEmail.Text) ;
    Ini.WriteBool(   'Email','SSL'     ,cbEmailSSL.Checked ) ;
    StreamMemo := TMemoryStream.Create;
    mmEmailMsg.Lines.SaveToStream(StreamMemo);
    StreamMemo.Seek(0,soFromBeginning);
    Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo) ;
    StreamMemo.Free;
  finally
    Ini.Free;
  end;
end;

procedure TfrmPrincipal.sbtnGravarFiltrosClick(Sender: TObject);
Var IniFile : String ;
    Ini     : TIniFile ;
begin
  //Passar as Informações para as Variaveis
  if rbAberta.Checked then
    EstadoVenda :=  'A'  //Aberta
    else if rbCancelada.Checked then
      EstadoVenda :=  'C' //Cancelada
      else if rbFechada.Checked then
        EstadoVenda := 'F'; //Fechada

  if rbAVista.Checked then
    FormaPagamento  :=  'A VISTA'
    else if rbAPrazo.Checked then
      FormaPagamento  :=  'A PRAZO'
      else if rbTodosFormaPagamento.Checked then
        FormaPagamento  :=  'TODOS';

  if rbEnviado.Checked then
    StatusNFCe  :=  'ENVIADO'
    else if rbPendente.Checked then
      StatusNFCe  :=  'PENDENTE'
      else if rbErro.Checked then
        StatusNFCe  :=  'ERRO'
        else if rbTodasStatusNFCe.Checked then
          StatusNFCe  :=  'TODOS';

  if rb02.Checked then
    ModeloDocumento :=  '02'
    else if rb03.Checked then
      ModeloDocumento :=  '03'
      else if rb55.Checked then
        ModeloDocumento :=  '55'
        else if rb65.Checked then
          ModeloDocumento :=  '65'
          else if rbTodosModeloDocumento.Checked then
            ModeloDocumento :=  'TODOS';

  if cbAutomatico.Checked = True then
    Auto  :=  1
    else
      Auto  := 0;
  //Gravar no INI
  IniFile := ChangeFileExt( Application.ExeName, '.ini');

  Ini := TIniFile.Create( IniFile );
  try
    Ini.WriteString( 'Filtro','Estado Venda' , EstadoVenda);
    Ini.WriteString( 'Filtro','Forma Pagamento' , FormaPagamento);
    Ini.WriteString( 'Filtro','Status NFCe' , StatusNFCe);
    Ini.WriteString( 'Filtro','Modelo Documento' , ModeloDocumento);
    Ini.WriteString( 'Filtro','CST' , cbCST.Text);
    Ini.WriteString( 'Filtro','ICMS' , edtICMS.Text);
    Ini.WriteString( 'Filtro','CSOSN' , cbCSOSN.Text);
    Ini.WriteString( 'Filtro','Situacao Tributaria' , cbSituacaoTributaria.Text);
    Ini.WriteString( 'Filtro','CFOP NFCe' , cbCFOPNFCE.Text);
    Ini.WriteString( 'Filtro','NCM' , edtNCM.Text);
    Ini.WriteInteger( 'Filtro','Usar Tributacao' , rgUsarTributacao.ItemIndex);
    Ini.WriteInteger('Filtro', 'Tempo Automatico', StrToInt(edtTimer.Text)*60000);
    Ini.WriteInteger('Filtro', 'Mensagem de Retorno', rgMensagemRetorno.ItemIndex);
    Ini.WriteInteger('Filtro', 'Envio Automatico', Auto);
  finally
    Ini.Free;
  end;

end;

procedure TfrmPrincipal.sbtnLogoMarcaClick(Sender: TObject);
begin
  Form1.OpenDialog1.Title := 'Selecione o Logo';
  Form1.OpenDialog1.DefaultExt := '*.bmp';
  Form1.OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  Form1.OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if Form1.OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := Form1.OpenDialog1.FileName;
  end;
end;

procedure TfrmPrincipal.sbtnPrazoClick(Sender: TObject);
begin
  //Mudar a Variavel de FormaPagamento
  FormaPagamento  :=  'A PRAZO';
  sbtnAtualizar.Click;
end;

procedure TfrmPrincipal.sbtnSalvarXMLClick(Sender: TObject);
var
  Caminho, Pasta, Para: string;
  ZipFile: TZipFile;
  Arquivos, CC: TStringList;
  I: Integer;
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sAnexo: string;
begin
  //Testar se Tem caminho
  if edtEmail.Text = '' then begin
    ShowMessage('Digite um Email!');
    Abort;
  end;
  Pasta :=  FormatDateTime('yyyymm', dInicial.DateTime);
  Caminho :=  Form1.ACBrNFe1.Configuracoes.Arquivos.PathNFe + '\' + 'ENVIADOS' + '\'+Pasta+'\';
  //Consultar os XMLS na Pasta
  if not DirectoryExists(Caminho) then begin
    ShowMessage('Arquivos XMLs Nao Encontrados.');
    Abort;
  end;

  if Application.MessageBox('XMLs Carregados com Sucesso Deseja Salvar!', 'Salvar XMLs', MB_YESNO+MB_ICONQUESTION) = IDYES then begin
    //Comecar a Parte de Compactacao
    // Cria uma instância da classe TZipFile
    ZipFile := TZipFile.Create;

    // Indica o diretório e nome do arquivo Zip que será criado
    try
      ZipFile.Open('C:\XMLs - '+ Pasta +'.zip', zmWrite);

      try
        try
          Arquivos  :=  TStringList.Create;
          Arquivos.Assign(GetFileList(Caminho + '*.xml'));
          //Zerar ProgressBar
          ProgressBar.Max :=  Arquivos.Count;
          ProgressBar.Min :=  0;
          ProgressBar.Position  :=  0;

          for I := 0 to Arquivos.Count -1 do begin
            ZipFile.Add(Caminho+'\'+Arquivos.Strings[I]);

            ProgressBar.Position  :=  I;
          end;
        except
          on e: exception do
            ShowMessage('Problema ao Compactar.'+#13+e.Message);
        end;
      finally
        Arquivos.Free;
      end;

    finally
      ZipFile.Free;
    end;

    if not FilesExists('C:\XMLs - '+ Pasta +'.zip') then begin
      ShowMessage('Arquivo ZIP não encontrado no Diretório Abaixo:'+#13
      +'C:\XMLs - '+ Pasta +'.zip');
      Abort;
    end else begin
      //Enviar Email é Necessario as DLLs ssleay32.dll e libeay32.dll na Mesma Pasta do EXE
      Para := edtEmail.Text;

      IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSMTP := TIdSMTP.Create(Self);
      IdMessage := TIdMessage.Create(Self);

      try
        IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
        IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

        IdSMTP.IOHandler := IdSSLIOHandlerSocket;
        IdSMTP.UseTLS := utUseExplicitTLS;
        IdSMTP.AuthType := satDefault;
        IdSMTP.Port := StrToInt(edtSmtpPort.Text);
        IdSMTP.Host := edtSmtpHost.Text;
        IdSMTP.Username := edtSmtpUser.Text;
        IdSMTP.Password := edtSmtpPass.Text;

        IdMessage.From.Address := edtSmtpUser.Text;
        IdMessage.From.Name := 'Monitor NFCe';
        IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
        IdMessage.Recipients.Add.Text := Para;
        //IdMessage.Recipients.Add.Text := 'destinatario2@email.com'; // opcional
        //IdMessage.Recipients.Add.Text := 'destinatario3@email.com'; // opcional
        IdMessage.Subject := edtEmailAssunto.Text;
        IdMessage.Encoding := meMIME;

        IdText := TIdText.Create(IdMessage.MessageParts);
        IdText.Body.Assign(mmEmailMsg.Lines);
        IdText.ContentType := 'text/plain; charset=iso-8859-1';

        sAnexo := 'C:\XMLs - '+ Pasta +'.zip';

        if FileExists(sAnexo) then
        begin
          TIdAttachmentFile.Create(IdMessage.MessageParts, sAnexo);
        end;

        try
          IdSMTP.Connect;
          IdSMTP.Authenticate;
        except
          on E:Exception do
          begin
            MessageDlg('Erro na conexão ou autenticação: ' +
              E.Message, mtWarning, [mbOK], 0);
            Exit;
          end;
        end;

        try
          IdSMTP.Send(IdMessage);
          MessageDlg('Mensagem enviada com sucesso!', mtInformation, [mbOK], 0);
        except
          On E:Exception do
          begin
            MessageDlg('Erro ao enviar a mensagem: ' +
              E.Message, mtWarning, [mbOK], 0);
          end;
        end;

      finally
        IdSMTP.Disconnect;
        // liberação da DLL
        UnLoadOpenSSLLibrary;
        // liberação dos objetos da memória
        FreeAndNil(IdMessage);
        FreeAndNil(IdSSLIOHandlerSocket);
        FreeAndNil(IdSMTP);
      end;

      ProgressBar.Position  :=  I + 1;
      DeleteFile('C:\XMLs - '+ Pasta +'.zip');
    end;

  end else
    Abort;

end;

procedure TfrmPrincipal.sbtnSelecionadaClick(Sender: TObject);
var
  i: integer;
begin
  //Enviar Selecionadas
  if dbgVendas.SelectedRows.Count>0 then begin
    with dbgVendas.DataSource.DataSet do begin
      for I := 0 to dbgVendas.SelectedRows.Count - 1 do begin
        //Passar Procedimento para cada Item Selecionado
        GotoBookmark(pointer(dbgVendas.SelectedRows.Items[i]));
        //Pegar a informação do Fiel e Utilizar como parametro
        //Chamar Função de Enviar NFCe
        EnviarNFCe;

      end;
    end;
  end;
  //Refazer a Pesquisa
  sbtnAtualizar.Click;
end;

procedure TfrmPrincipal.sbtnStatusClick(Sender: TObject);
begin
  //Testar Status do Servidor
  Form1.ACBrNFe1.WebServices.StatusServico.Executar;
  //Resposta do Servidor
  ShowMessage('Resposta do Serviço: '+#13+#13+
  '--->'+Form1.ACBrNFe1.WebServices.StatusServico.xMotivo+'<---' +#13+#13+
  'Detalhes: '+#13+
  '-----------------------------------------------------------------------'+#13+
  Form1.ACBrNFe1.WebServices.StatusServico.RetWS +#13+
  Form1.ACBrNFe1.WebServices.StatusServico.RetornoWS +#13+
  TpAmbToStr(Form1.ACBrNFe1.WebServices.StatusServico.tpAmb) +#13+
  Form1.ACBrNFe1.WebServices.StatusServico.verAplic +#13+
  IntToStr(Form1.ACBrNFe1.WebServices.StatusServico.cStat) +#13+
  Form1.ACBrNFe1.WebServices.StatusServico.xMotivo +#13+
  IntToStr(Form1.ACBrNFe1.WebServices.StatusServico.cUF) +#13+
  DateTimeToStr(Form1.ACBrNFe1.WebServices.StatusServico.dhRecbto) +#13+
  IntToStr(Form1.ACBrNFe1.WebServices.StatusServico.TMed) +#13+
  DateTimeToStr(Form1.ACBrNFe1.WebServices.StatusServico.dhRetorno) +#13+
  Form1.ACBrNFe1.WebServices.StatusServico.xObs +#13+
  '-----------------------------------------------------------------------'
  );
end;

procedure TfrmPrincipal.sbtnTodasClick(Sender: TObject);
begin
  //Enviar Todas que estão no Grid
  Modulo.qryVendas.First;
  while not Modulo.qryVendas.Eof do begin
    //Chamar Função de Enviar NFCe
    EnviarNFCe;

    Modulo.qryVendas.Next;
  end;
  //Refazer a Pesquisa
  sbtnAtualizar.Click;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  //Escolher Tipo de Relatório
  case cbTipoRelatorio.ItemIndex of
    0: begin      //Relatorio Resumido
          //Buscar Resultados
          with Modulo do
          begin
            //Consulta
            qryRelatorioResumo.Close;
            qryRelatorioResumo.SQL.Clear;
            qryRelatorioResumo.SQL.Add('SELECT * FROM VENDAS');
            qryRelatorioResumo.SQL.Add('where');
            qryRelatorioResumo.SQL.Add('(DATA BETWEEN :ini AND :fim) AND');
            qryRelatorioResumo.SQL.Add('(SITUACAO = ''F'')');
            if cbStatus.Text <> 'TODOS' then
            begin
              qryRelatorioResumo.SQL.Add('and');
              if cbStatus.Text = 'PENDENTE' then
              begin
                qryRelatorioResumo.SQL.Add('(statusnf = :status) or (statusnf is null) or (statusnf = '''')');
              end
              else
              begin
                qryRelatorioResumo.SQL.Add('(statusnf = :status)');
              end;
              qryRelatorioResumo.ParamByName('status').AsString := cbStatus.Text;
            end;
            qryRelatorioResumo.SQL.Add('order by data');
            qryRelatorioResumo.ParamByName('ini').AsDate      := dtVIni.Date;
            qryRelatorioResumo.ParamByName('fim').AsDate      := dtVFim.Date;
            qryRelatorioResumo.Open();
            //Chamar Relatorio
            RelVendas.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Rel\VENDAS_RESUMO.fr3');
//            RelVendas.IniFile :=  ExtractFilePath(Application.ExeName) + 'Rel\VENDAS_RESUMO.fr3';
            RelVendas.ShowReport();
          end;
       end;
    1: begin //Relatorio Resumido
          //Buscar Resultados
          with Modulo do
          begin
            //Consulta Vendas
            qryRelatorio.Close;
            qryRelatorio.SQL.Clear;
            qryRelatorio.SQL.Add('SELECT V.* FROM VENDAS V');
            qryRelatorio.SQL.Add('WHERE');
            qryRelatorio.SQL.Add('(V.DATA BETWEEN :ini AND :fim) AND');
            qryRelatorio.SQL.Add('(V.SITUACAO = ''F'')');
            if cbStatus.Text <> 'TODOS' then
            begin
              qryRelatorio.SQL.Add('and');
              if cbStatus.Text = 'PENDENTE' then
              begin
                qryRelatorio.SQL.Add('(V.statusnf = :status) or (V.statusnf is null) or (V.statusnf = '''')');
              end
              else
              begin
                qryRelatorio.SQL.Add('(V.statusnf = :status)');
              end;
              qryRelatorio.ParamByName('status').AsString := cbStatus.Text;
            end;
            qryRelatorio.SQL.Add('order by data');
            qryRelatorio.ParamByName('ini').AsDate      := dtVIni.Date;
            qryRelatorio.ParamByName('fim').AsDate      := dtVFim.Date;
            qryRelatorio.Open();
            //Consulta Itens Vendas
            qryRelatorioItens.Close;
            qryRelatorioItens.SQL.Clear;
            qryRelatorioItens.SQL.Add('SELECT');
            qryRelatorioItens.SQL.Add('I.venda VENDA,');
            qryRelatorioItens.SQL.Add('I.produto CODPRODUTO,');
            qryRelatorioItens.SQL.Add('I.descricao DESCRICAO,');
            qryRelatorioItens.SQL.Add('I.quantidade QUANTIDADE,');
            qryRelatorioItens.SQL.Add('I.valor VALORUND,');
            qryRelatorioItens.SQL.Add('I.total TOTAL,');
            qryRelatorioItens.SQL.Add('I.cst cstring,');
            qryRelatorioItens.SQL.Add('I.cfop CFOPPRODUTO,');
            qryRelatorioItens.SQL.Add('I.percentualicms PERCENTUALICMS,');
            qryRelatorioItens.SQL.Add('I.valoricms VALORICMSPRODUTO,');
            qryRelatorioItens.SQL.Add('I.valordesconto VALORDESCONTOPRODUTO');
            qryRelatorioItens.SQL.Add('FROM ITENSVENDAS I');
            qryRelatorioItens.Open();
            //Chamar Relatorio
            RelVendas.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Rel\VENDAS.fr3');
            RelVendas.ShowReport();
          end;
        end;
    2: begin  //Relatorio por CFOP
          //Buscar Resultados
          with Modulo do
          begin
            //Consulta
            qryRelatorioCFOP.Close;
            qryRelatorioCFOP.SQL.Clear;
            qryRelatorioCFOP.SQL.Add('select sum(v.total) total,');
            qryRelatorioCFOP.SQL.Add('v.data, v.cfop from itensvendas v');
            qryRelatorioCFOP.SQL.Add('WHERE');
            qryRelatorioCFOP.SQL.Add('(V.DATA BETWEEN :ini AND :fim) AND');
            qryRelatorioCFOP.SQL.Add('((v.cfop = 5102) or (v.cfop = 5405)) and');
            qryRelatorioCFOP.SQL.Add('(v.enviado_nf = ''S'')');
            qryRelatorioCFOP.SQL.Add('group by v.data, v.cfop ');
            qryRelatorioCFOP.SQL.Add('order by v.data');
            qryRelatorioCFOP.ParamByName('ini').AsDate      := dtVIni.Date;
            qryRelatorioCFOP.ParamByName('fim').AsDate      := dtVFim.Date;
            qryRelatorioCFOP.Open();
            //Chamar Relatorio
            RelVendas.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Rel\VENDAS_CFOP.fr3');
            RelVendas.ShowReport();
          end;
       end;
  end;
end;

procedure TfrmPrincipal.TimerEnvioTimer(Sender: TObject);
var
  Thread: NFCe;
begin
  if TrayIcon.Visible = True then begin
    TimerEnvio.Enabled  :=  False;
    //*****************************************
    //*****************************************
    //Chamar Função de Enviar NFCe
    Thread  :=  NFCe.Create(False);
    Thread.Resume;

    //*****************************************
    //*****************************************
    TimerEnvio.Enabled  :=  True;
  end;
end;

procedure TfrmPrincipal.TimerMinimizarTimer(Sender: TObject);
begin
  TimerMinimizar.Enabled    :=  False;
  FreeAndNil(TimerMinimizar);
  ApplicationEventsMinimize(Self);
end;

procedure TfrmPrincipal.tnPrincipalClick(Sender: TObject);
begin
  //Desativar e Ativar Butões
  case tnPrincipal.PageIndex of
    0:  //Notas
    begin
      DesativarButoes(True);
    end;
    1: //Danfe
    begin
      DesativarButoes(False);
    end;
    2:  //Email
    begin
      DesativarButoes(False);
    end;
    3:  //Filtros
    begin
      DesativarButoes(False);
      sbtnCarregar.Click;
    end;
    4:  //Configurações
    begin
      DesativarButoes(False);
    end;
  end;
end;

procedure TfrmPrincipal.TrayIconDblClick(Sender: TObject);
begin
  try
    TrayIcon.Visible  :=  False;
    Self.Show;
    Self.WindowState :=  wsNormal;
    Application.BringToFront;
    //Parar o Timer
    TimerEnvio.Enabled  :=  False;
    //Refazer a Pesquisa
    sbtnAtualizar.Click;
  Except
    on E: exception do
    StatusBar.Panels[2].Text  :=  E.Message;
  end;
end;

end.
