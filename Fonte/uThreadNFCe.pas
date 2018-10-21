unit uThreadNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.TabNotBk, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Samples.Spin,
  ACBrNFeDANFEFRDM, ACBrNFeDANFEClass, ACBrNFeDANFEFR, ACBrDFe, ACBrNFe, System.DateUtils,
  ACBrBase, ACBrMail, IniFiles, ShellAPI,  pcnRetConsReciNFe, OleCtrls, SHDocVw,
  pcnConversao, ACBrUtil, ACBrNFeDANFeESCPOS, XMLIntf, XMLDoc, zlib,
  ACBrNFeDANFeRLClass, ACBrDANFCeFortesFr, ACBrPosPrinter, Printers, Vcl.DBCtrls,
  Vcl.Mask, Vcl.AppEvnts, Vcl.Menus, System.Math;


type
  NFCe = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure Enviar;
  end;

var
    //Variaveis de Filtro
  EstadoVenda, FormaPagamento, StatusNFCe, ModeloDocumento: String;
  EnviadoNF : string;

  //Variavel para receber o caminho onde esta sendo salvo o XML e Chave
  CaminhoXML, ChaveXML, CNPJCPFXML: string;
  modeloXML:  Integer;
  DataXML: TDateTime;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure NFCe.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

uses U_Principal, uConsultaFilial, ufrmStatus, uModulo, Unit1, unit2,
  uPrincipal, pcnConversaoNFe, uThreadStatus;

{ NFCe }


procedure NFCe.Enviar;
var
 vAux, vNumLote, vSincrono : String;
 Sincrono, OK, ErroNFCe : boolean;
 IdItemNota, IdVenda, NumeroNFCe, I: Integer;
 CFOP, CSTAux, CSOSNAux, NCMAux: string;
 pICMSAux, vICMSAux, vICMSTotal, vPRODTotal, vDescontoRateado, SomaItens, vOutros: Real;
 sValorTotPago: Real;
begin
  with frmPrincipal do begin
        //Chamar Função de Enviar NFCe
        {$REGION 'Envio de NFCe'}

        if (Modulo.qryVendas.FieldByName('statusnf').AsString = 'ENVIADO') or
           (Modulo.qryVendas.FieldByName('statusnf').AsString = 'CANCELADA') then begin
          if rgMensagemRetorno.ItemIndex = 0 then begin
            TrayIcon.BalloonTitle :=  'Informação';
            TrayIcon.BalloonHint  :=  'Venda: ' + IntToStr(Modulo.qryVendas.FieldByName('Codigo').AsInteger) + 'Venda com NFCe já enviada ou cancelada.';
            TrayIcon.ShowBalloonHint;
          end;
        end else begin
          //Passagem de Valores
          vAux      :=  Form1.edtIdNFCe.Text; //Numero da NFCe
          vNumLote  :=  Form1.edtSerie.Text;  //Numero do Lote(Serie)
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
               Ide.serie     := 1;
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

                //Dados do Cliente
                if Modulo.qryVendas.FieldByName('cnpj').AsString <> '' then begin //Testar se o Cliente tem CPF ou CNPJ
                  Dest.CNPJCPF           := frmPrincipal.ClrDig(Modulo.qryVendas.FieldByName('cnpj').AsString);
                  Dest.xNome             := Modulo.qryVendas.FieldByName('PESSOA_NOME').AsString;
                  Dest.EnderDest.xCpl    := 'Rua Epitacio Cafeteira';
                  Dest.EnderDest.UF      := 'MA';
                  Dest.indIEDest         := inNaoContribuinte;
  //                Dest.IE                := '687138770110'; //NFC-e não aceita IE
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
                  //ItensVenda
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
                    Prod.cEAN    := frmPrincipal.GerarEAN13(StrToInt(Modulo.qryVProdutos.FieldByName('produto').AsString))
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
                   Prod.vProd    := StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('total').AsFloat));
                   //Passar o Valor Total para a variavel de Soma
                   SomaItens  :=  SomaItens + StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('total').AsFloat));

                   //Testar se o Dodigo de Barras tem menos de 13 Digitos se tiver Gerar um Codigo
                   if Length(Modulo.qryVProdutos.FieldByName('codigobarras').AsString) < 13 then
                    Prod.cEANTrib := frmPrincipal.GerarEAN13(StrToInt(Modulo.qryVProdutos.FieldByName('produto').AsString))
                    else
                      Prod.cEANTrib:= Modulo.qryVProdutos.FieldByName('codigobarras').AsString;
                   Prod.uTrib     := Modulo.qryVProdutos.FieldByName('unidademedida').AsString;;
                   Prod.qTrib     := Modulo.qryVProdutos.FieldByName('quantidade').AsFloat;
                   Prod.vUnTrib   := Modulo.qryVProdutos.FieldByName('valor').AsFloat;

                   //vDescontoRateado := FormatFloat('#,##0.00' ,RoundTo(Modulo.qryVProdutos.FieldByName('valordescontorateado').AsFloat, -1));

                   Prod.vOutro    := StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('valoroutrasdespesasrateado').AsFloat));
                   Prod.vFrete    := 0;
                   Prod.vSeg      := 0;
                   Prod.vDesc     := StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('valordescontorateado').AsFloat));
                   //Prod.vDesc     := StrToFloat(vDescontoRateado);
                   //Recebendo o Valor Rateado
                    vDescontoRateado :=  vDescontoRateado +  StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('valordescontorateado').AsFloat));
                    vOutros  :=  vOutros + StrToFloat(FormatFloat('#,##0.00', Modulo.qryVProdutos.FieldByName('valoroutrasdespesasrateado').AsFloat));
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
                    end;
                 end ;

                vICMSTotal  := vICMSTotal + vICMSAux;
                IdItemNota  := IdItemNota + 1;
                Modulo.qryVProdutos.Next;
              end;

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
                Total.ICMSTot.vBC     := 0;
                Total.ICMSTot.vICMS   := vICMSTotal;
                Total.ICMSTot.vBCST   := 0;
                Total.ICMSTot.vST     := 0;
                //Total.ICMSTot.vProd   := Modulo.qryVendas.FieldByName('valorprodutos').AsFloat; --Usando Valor da Tabela
                Total.ICMSTot.vProd   :=  SomaItens;
                Total.ICMSTot.vFrete  := 0;
                Total.ICMSTot.vSeg    := 0;
                //Total.ICMSTot.vDesc   := Modulo.qryVendas.FieldByName('valordesconto').AsFloat;
                Total.ICMSTot.vDesc   := vDescontoRateado;
                Total.ICMSTot.vII     := 0;
                Total.ICMSTot.vIPI    := 0;
                Total.ICMSTot.vPIS    := 0;
                Total.ICMSTot.vCOFINS := 0;
                Total.ICMSTot.vOutro  := vOutros;
                //Total.ICMSTot.vNF     := Modulo.qryVendas.FieldByName('valortotal').AsFloat; --Valor Sendo Pego da Tabela
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

        {        Total.retTrib.vRetPIS    := 0;
                Total.retTrib.vRetCOFINS := 0;
                Total.retTrib.vRetCSLL   := 0;
                Total.retTrib.vBCIRRF    := 0;
                Total.retTrib.vIRRF      := 0;
                Total.retTrib.vBCRetPrev := 0;
                Total.retTrib.vRetPrev   := 0;}
                if Total.ICMSTot.vNF <> Modulo.qryVendas.FieldByName('valortotal').AsFloat then
                  sValorTotPago :=  Total.ICMSTot.vNF
                else
                  sValorTotPago :=  Modulo.qryVendas.FieldByName('valortotal').AsFloat;


                Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

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
             end;
          end;

          Form1.ACBrNFe1.NotasFiscais.GerarNFe;

           try
             if rbNaoImprimir.Checked = True then
              Form1.ACBrNFe1.Enviar(vNumLote,False,Sincrono)
              else
                Form1.ACBrNFe1.Enviar(vNumLote,True,Sincrono);
           except
            on E: exception do begin
              ErroNFCe  :=  True;
              if rgMensagemRetorno.ItemIndex = 0 then begin
                TrayIcon.BalloonTitle :=  'Erro ao Enviar Nota.';
                TrayIcon.BalloonHint  :=  'Venda: '+ IntToStr(IdVenda) + E.Message;
                TrayIcon.ShowBalloonHint;
                if Copy(E.Message, 11,11) = 'Duplicidade' then begin
                  TrayIcon.BalloonTitle :=  'Erro ao Enviar Nota.';
                  TrayIcon.BalloonHint  :=  'Alteração no ID da NFCe Realizada com Sucesso!';
                  TrayIcon.ShowBalloonHint;
                  Form1.edtIdNFCe.Text  :=  IntToStr(StrToInt(Form1.edtIdNFCe.Text) + 1);
                  Form1.btnSalvarConfig.Click;
                end;

              end;
            end;
             //on e: Exception do
               //ShowMessage('Erro ao Enviar!'+#13+e.Message);
           end;

          //Gerar dados para pegar o caminho onde esta salvando o xml
          DataXML     :=  Form1.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi;
          CNPJCPFXML  :=  Form1.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
          modeloXML   :=  Form1.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo;

          ChaveXML    :=  Copy(Form1.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 100) + '-nfe.xml';

          CaminhoXML  :=  PathWithDelim(Form1.ACBrNFe1.Configuracoes.Arquivos.GetPathNFe(DataXML,
          CNPJCPFXML, modeloXML));

          CaminhoXML  :=  CaminhoXML + ChaveXML;

          IdVenda     :=  Modulo.qryVendas.FieldByName('codigo').AsInteger;

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
            if rgMensagemRetorno.ItemIndex = 0 then begin
              TrayIcon.BalloonTitle :=  'Informação';
              TrayIcon.BalloonHint  :=  'Nota NFCe Gerada com Sucesso!';
              TrayIcon.ShowBalloonHint;
            end;
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

        {$ENDREGION}
  end;
end;

procedure NFCe.Execute;
var
  I, NumeroNFCe: Integer;
begin
{ Place thread code here }
  with frmPrincipal do begin
    if Auto = 1 then begin
      //Avisar que esta inciando
      TrayIcon.BalloonTitle :=  'Monitor NFCe';
      TrayIcon.BalloonHint  :=  'Iniciando Envio de Notas NFCe.';
      TrayIcon.ShowBalloonHint;

      //Enviar Todas que estão no Grid
      Modulo.qryVendas.First;
      while not Modulo.qryVendas.Eof do begin
        if SairdoLoop = True then begin
          TrayIcon.BalloonTitle :=  'Informação.';
          TrayIcon.BalloonHint  :=  'Thread Abortada.';
          TrayIcon.ShowBalloonHint;
          Terminate;
          if Terminated then Break;
          Inc(NumeroNFCe, Round(Abs(Sin(Sqrt(I)))));
          Synchronize(Enviar);
          SairdoLoop  :=  False;
        end else begin
	        //Chamar Função de Enviar NFCe
          FreeOnTerminate :=  True;
          for I := 1 to 2 do begin
            if Terminated then Break;
            Inc(NumeroNFCe, Round(Abs(Sin(Sqrt(I)))));
            Synchronize(Enviar);
          end;
          Modulo.qryVendas.Next;
        end;
      end;
    end else begin
      //Avisar que esta inciando
      TrayIcon.BalloonTitle :=  'Monitor NFCe';
      TrayIcon.BalloonHint  :=  'Modo Automatico Desabilitado.';
      TrayIcon.ShowBalloonHint;
    end;
  end;

end;

end.
