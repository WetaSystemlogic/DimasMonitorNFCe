object frmConsultaFilial: TfrmConsultaFilial
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Filial'
  ClientHeight = 223
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dbgFilial: TDBGrid
    Left = 0
    Top = 0
    Width = 630
    Height = 223
    Align = alClient
    DataSource = Modulo.dsFilial
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgFilialDblClick
    OnKeyPress = dbgFilialKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPRESA'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSCRICAOESTADUAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFANTASIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOGRADOURO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMEROLOCAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSCRICAOMUNICIPAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSCRICAOESTADUALST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUFRAMA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNAE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGIMETRIBUTARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLOQUEADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALTERACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMEROESTACAO'
        Visible = True
      end>
  end
end
