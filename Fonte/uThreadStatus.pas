unit uThreadStatus;

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
  Status = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure Status.UpdateCaption;
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

uses
  strutils, TypInfo, ufrmStatus, synacode, blcksock, pcnNFe,
  pcnConversaoNFe, ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT,
  FileCtrl,ACBrNFeNotasFiscais, ACBrDFeOpenSSL, Unit2,
  ACBrNFeConfiguracoes, U_Principal, uModulo, uPrincipal, uConsultaFilial,
  uThreadNFCe, Unit1;

{ Status }

procedure Status.Execute;
begin
  { Place thread code here }
  with Form1 do begin
      case ACBrNFe1.Status of
      stIdle :
      begin
      {
        if ( frmStatus <> nil ) then
          frmStatus.Hide;
      }
      end;
      stNFeStatusServico :
      begin
        frmPrincipal.TrayIcon.BalloonTitle :=  'NFe';
        frmPrincipal.TrayIcon.BalloonHint  :=  'Verificando Status do servico...';
        frmPrincipal.TrayIcon.ShowBalloonHint;
        {
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
        frmStatus.Show;
        frmStatus.BringToFront;
        }
      end;
      stNFeRecepcao :
      begin
        frmPrincipal.TrayIcon.BalloonTitle :=  'NFe';
        frmPrincipal.TrayIcon.BalloonHint  :=  'Enviando dados da NFe...';
        frmPrincipal.TrayIcon.ShowBalloonHint;
        {
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
        }
      end;
      stNfeRetRecepcao :
      begin
        frmPrincipal.TrayIcon.BalloonTitle :=  'NFe';
        frmPrincipal.TrayIcon.BalloonHint  :=  'Recebendo dados da NFe...';
        frmPrincipal.TrayIcon.ShowBalloonHint;
        {
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
        }
      end;
      stNfeConsulta :
      begin
      {
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      }
      end;
      stNfeCancelamento :
      begin
      {
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      }
      end;
      stNfeInutilizacao :
      begin
      {
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
        frmStatus.Show;
        frmStatus.BringToFront;
      }
      end;
      stNFeRecibo :
      begin
      {
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
        frmStatus.Show;
        frmStatus.BringToFront;
      }
      end;
      stNFeCadastro :
      begin
      {
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
        frmStatus.Show;
        frmStatus.BringToFront;
      }
      end;
      stNFeEmail :
      begin
      {
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Email...';
        frmStatus.Show;
        frmStatus.BringToFront;
      }
      end;
      stNFeCCe :
      begin
      {
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
        frmStatus.Show;
        frmStatus.BringToFront;
      }
      end;
      stNFeEvento :
      begin
      {
        if ( frmStatus = nil ) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Evento...';
        frmStatus.Show;
        frmStatus.BringToFront;
      }
      end;
    end;

  end;
end;

end.
