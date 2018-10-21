unit uConsultaFilial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsultaFilial = class(TForm)
    dbgFilial: TDBGrid;
    procedure dbgFilialDblClick(Sender: TObject);
    procedure dbgFilialKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PassarParaEdit();
  end;

var
  frmConsultaFilial: TfrmConsultaFilial;

implementation

{$R *.dfm}

uses uModulo, U_Principal, ufrmStatus, Unit1, unit2, uPrincipal;

{ TfrmConsultaFilial }

procedure TfrmConsultaFilial.dbgFilialDblClick(Sender: TObject);
begin
  PassarParaEdit;
end;

procedure TfrmConsultaFilial.dbgFilialKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PassarParaEdit;
end;

procedure TfrmConsultaFilial.PassarParaEdit;
begin
  //Passar Informações para os Edits
  with Form1 do begin
    edtEmitCNPJ.Text          := dbgFilial.Columns[2].Field.AsString;
    edtEmitIE.Text            := dbgFilial.Columns[3].Field.AsString;
    edtEmitRazao.Text         := dbgFilial.Columns[4].Field.AsString;
    edtEmitFantasia.Text      := dbgFilial.Columns[5].Field.AsString;
    edtEmitFone.Text          := dbgFilial.Columns[6].Field.AsString;
    edtEmitCEP.Text           := dbgFilial.Columns[7].Field.AsString;
    edtEmitLogradouro.Text    := dbgFilial.Columns[8].Field.AsString;
    edtEmitNumero.Text        := dbgFilial.Columns[9].Field.AsString;
    edtEmitComp.Text          := '';
    edtEmitBairro.Text        := dbgFilial.Columns[10].Field.AsString;
    edtEmitCodCidade.Text     := '';
    edtEmitCidade.Text        := dbgFilial.Columns[11].Field.AsString;
    edtEmitUF.Text            := dbgFilial.Columns[12].Field.AsString;
  end;
  Close;
end;

end.
