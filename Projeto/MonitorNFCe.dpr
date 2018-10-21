program MonitorNFCe;

uses
  Vcl.Forms,
  uPrincipal in '..\Fonte\uPrincipal.pas' {frmPrincipal},
  uModulo in '..\Fonte\uModulo.pas' {Modulo: TDataModule},
  ufrmStatus in '..\ACBr\ufrmStatus.pas' {frmStatus},
  Unit1 in '..\ACBr\Unit1.pas' {Form1},
  unit2 in '..\ACBr\unit2.pas' {frSelecionarCertificado},
  U_Principal in '..\ConsultaCNPJ\U_Principal.pas' {F_Principal},
  uConsultaFilial in '..\Fonte\uConsultaFilial.pas' {frmConsultaFilial},
  uThreadNFCe in '..\Fonte\uThreadNFCe.pas',
  uThreadStatus in '..\Fonte\uThreadStatus.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TModulo, Modulo);
  Application.CreateForm(TfrmStatus, frmStatus);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrSelecionarCertificado, frSelecionarCertificado);
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TfrmConsultaFilial, frmConsultaFilial);
  Application.Run;
end.
