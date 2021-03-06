object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Monitor NFCe'
  ClientHeight = 570
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = MenuPrincipal
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tnPrincipal: TTabbedNotebook
    Left = 0
    Top = 88
    Width = 911
    Height = 459
    ParentCustomHint = False
    Align = alClient
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'Tahoma'
    TabFont.Style = []
    TabOrder = 1
    OnClick = tnPrincipalClick
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Notas'
      object tnVendas: TTabbedNotebook
        Left = 0
        Top = 0
        Width = 903
        Height = 431
        Align = alClient
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clBtnText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        TabOrder = 0
        OnChange = tnVendasChange
        object TTabPage
          Left = 4
          Top = 24
          Caption = 'Vendas'
          object dbgVendas: TDBGrid
            Left = 0
            Top = 28
            Width = 895
            Height = 375
            Align = alClient
            DataSource = Modulo.dsVendas
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
            PopupMenu = MenuPrincipal
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbgVendasDrawColumnCell
            OnDblClick = dbgVendasDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO'
                Title.Caption = 'Codigo'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMPRESA'
                Title.Caption = 'ID'
                Width = 20
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMPRESA_RAZAOSOCIAL'
                Title.Caption = 'Empresa'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Title.Caption = 'ID'
                Width = 20
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO_NOME'
                Title.Caption = 'Usuario'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONDICAOPAGAMENTO'
                Title.Caption = 'Pagamento'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORTOTAL'
                Title.Caption = 'Valor Total'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Caption = 'Data'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORA'
                Title.Caption = 'Hora'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUSNF'
                Title.Caption = 'Status NFCe'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PESSOA'
                Title.Caption = 'ID'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PESSOA_NOME'
                Title.Caption = 'Pessoa'
                Width = 225
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILIAL_RAZAOSOCIAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODIGODAVENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIE_DESCRICAO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FICHA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORCAMENTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORDEMSERVICO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FILIAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMERO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECOVENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COOCANCELAMENTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIALECF'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CFOP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REPRESENTANTE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONDICAOPAGAMENTO_1'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BASECALCULOICMS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORICMS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BASECALCULOICMSST'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORICMSST'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORFRETE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORSEGURO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOROUTRASDESPESAS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BASECALCULOIPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORIPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BASECALCULOISS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORISS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORPRODUTOS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORSERVICOS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORDESCONTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORCREDITO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADEVOLUMES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVACOES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORTROCO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITUACAO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMEROESTACAO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SINCRONIZADO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COOFICHA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CERFICHA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORSERVICOESPECIAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORCUSTOMEDIO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORCUSTOFORNECEDOR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORCUSTOCOMPRA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECOCOMPRA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CNPJ'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ENDERECO'
                Visible = True
              end>
          end
          object pnlVendasTop: TPanel
            Left = 0
            Top = 0
            Width = 895
            Height = 28
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object gplSelecionar: TGridPanel
              Left = 0
              Top = 0
              Width = 895
              Height = 28
              Align = alClient
              BevelOuter = bvNone
              ColumnCollection = <
                item
                  Value = 20.004424269756620000
                end
                item
                  Value = 19.998027709623190000
                end
                item
                  Value = 19.997720506431730000
                end
                item
                  Value = 19.999403442546610000
                end
                item
                  Value = 20.000424071641840000
                end>
              ControlCollection = <
                item
                  Column = 0
                  Control = sbtnSelecionada
                  Row = 0
                end
                item
                  Column = 1
                  Control = sbtnTodas
                  Row = 0
                end
                item
                  Column = 2
                  Control = sbtnExcluirSelecionadas
                  Row = 0
                end
                item
                  Column = 3
                  Control = sbtnExcluir
                  Row = 0
                end
                item
                  Column = 4
                  Control = sbtnDanfeNFCe
                  Row = 0
                end>
              RowCollection = <
                item
                  Value = 100.000000000000000000
                end>
              TabOrder = 0
              object sbtnSelecionada: TSpeedButton
                Left = 0
                Top = 0
                Width = 179
                Height = 28
                Align = alClient
                Caption = 'Enviar Selecionadas'
                Flat = True
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05793AEDF8F2FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E8245
                  63CE9D108447EFF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF0D844472D1A76DD0A466CE9F0F8747E8F4ECFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF0D864480D7B07ED5AE76D2A96DD0A465CD9F108947EBF6EEFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF04823D8FDAB98FDAB986D8B37DD5AE74D2A86ACF
                  A261CC9D0F8B48EEF7F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C88469CDFC19FE0C398DDBF8EDBB8
                  85D7B27AD4AB6FD1A665CE9F5CCB9A0F8D4AEEF7F1FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF098C47A5E1C6ADE4CCA7
                  E2C89FDFC395DCBC8AD9B67ED6AE72D1A868CEA05ECB9A57C9970E904CCBE3CC
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF099048A7E2
                  C8B8E7D2B5E6D0AEE4CCA4E1C699DDBF26B46688D9B475D2A96ACFA260CC9B57
                  C99651C794048C41D5E9D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  079347A1E1C4B8E7D2BEE9D6B7E7D3AFE5CDA3E0C60D964AFFFFFF1FAD5F83D7
                  B26BD0A260CC9C58C99651C89351C7930E974DDAECDBFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF0291438FDBB9AEE4CCB4E6D0B8E7D2B5E6D0A7E2C80B974BFFFFFF
                  FFFFFFFFFFFF1FAD5F7CD5AD60CC9C57CA9651C89350C79251C7920E984EDDEE
                  DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF19A359A0E0C3AEE4CCB0E4CDA4E1C51D
                  A35BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23B16373D1A856C99650C7924FC791
                  4FC79251C791119C51DEEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1CA75C9DDF
                  C2A6E2C7109F51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23B1636B
                  D0A24FC7924FC79250C79250C79250C791139E53E3F2E5FFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF1AA85A16A557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF24B36563CD9E50C7924FC79250C79250C79251C7920C9B4DFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20AF615FCC9A4FC79250C79251C8
                  93088D46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1BAA5C
                  5ACA9853C8940A964BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF11A052139F53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                OnClick = sbtnSelecionadaClick
                ExplicitTop = -16
              end
              object sbtnTodas: TSpeedButton
                Left = 179
                Top = 0
                Width = 178
                Height = 28
                Align = alClient
                Caption = 'Enviar Todas'
                Flat = True
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C006000000000000000000000000000000000000FFFFFFFCFFFF
                  FDFFFFF9FEFFE5F5FDE4F4FCFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFF9FFFFF4FFFFD2F9FE5CC2EE25A2E227A4E25EC0EBADDEF2EFF8FCFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFF0FFFFDEFEFF42B5EA399AD4CAE6F5D8F0FCC0E6FA71
                  C7F249B3EAB5E3FCFFFEFEF9F4F0F3EAE3F3EAE3F9F4F0FFFEFEFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6FFFFB0F3FD0A95DCBBDCE7FFFF
                  FFFFFFFFFFFFFFFFFFFFC8D0D05B8E9EAB6A2AAB6D25A56B31A46A30A66C25AA
                  6B2ACDA585F7EFEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAFFFF9BEFFC
                  0A99DBAEDFF0FFFFFFFFFFFFFFFFFFD3AE93A05412AA6722B37D3DB67B43B576
                  2EAF6434AD6D26AD712FAA67219D5312D5B197FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFD0FFFF9DF4FE0EA2E27ECDE8FFFFFFFFFFFFC08A629F5312A5581EAA580E
                  A474352E812E607E39AD5C1EAB5F16A4500AA5540FA65C15A0510DC18D66FFFF
                  FFFFFFFFFFFFFFFFFFFFC9FEFFA8FBFF24B6EF4FBEE6F7F7F7C699769F500FA0
                  5321AB5A0DB2641770924C00AB0E0C9F1FAA8469BC843DAB6619A9610FA65C11
                  AC6124A3520FCCA280FFFFFFFFFFFFFFFFFFCEFDFFAEFEFF58D4F902A7F1999A
                  91904B099D571EAC6921B27115B28C5E339D3B12BB382AB043358833C09941B6
                  9434B28526B17B2AB07227AC6716A0540AEBDACCFFFFFFFFFFFFE4FEFFABFDFF
                  89EFFF09B3FF3997A99B550E935B1EBD6D46BE923955A05528B5454AD07121BC
                  44288826C09A5CBB9831B38E30B17C38B2812CB27C1FAF6D18A37749FFFFFFFF
                  FFFFFCFFFFBDFDFF9CFBFD40C3F600B7FE896B348E5728B08228C7AC5914B639
                  4DD67755D47B3AD06728AD409A9D62C09A3DBB993AC19F39C09A35BD912CD27C
                  5AA56F1FF7F0E8FFFFFFFFFFFFE8FFFF93F0F059B9C715BAFF34A8BC945F29AC
                  8840BDB4690FC64180F2A773EC9C58E08516C7462C9530D5B552D2B54DD0B14C
                  D0AC43B78C41498D40659441E9D6BFFFFFFFFFFFFFFFFFFFE9FBFB55A39D55BF
                  E807C4FF7B875EA77D3671A05627C54C65EF986CEE9A3BCC6507AD2BA4B551E3
                  CA64DEC260D0B25AAB9B53378F36199E2B1FC04EE3C8A9FFFFFFFFFFFFFFFFFF
                  FFFFFFA3AE9571C6C439C1FB29C0E2A07F4363904A2FA64144B95C47B553B8C2
                  6DE7D173ECD979E5D074D5C76D2CA93D13B8393EC35E39D46A43DF7DE3C9A7FF
                  FFFFFFFFFFFFFFFFFFFEFEE3D1B66DAE8C6DCFE02AC4FF3DB2B78C82487C7F48
                  D7C293EFDC80F1E087F1E288F1E486D1CD7DB5D06B41D97755DF8359DD836BEB
                  9866E490E9D6B9FFFFFFFFFFFFFFFFFFFFFFFFEEE3D2AA97445BCCBB65D2F427
                  C9FF689987AB8157DABC81F3E689F8E49BF7F094FAEC96ECE58FB2DE7774F6A5
                  75ED9F68E49068EB999FC769F2E7D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCB1
                  57A9BE6F5FD0C15FD2FB2BCBFDA28E7EBDA268DED091F8EFB3FDF9B7FFFABAF9
                  F0B78ED48C63E99273EE9E71EE9D67EE9CCDBA68FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFE0CDA0D7D47983D28F6BCCBD58D8FF2BC8F7B6A98FBEA47DE6DB
                  B6F9F4D1FEF9D8FFEBD587B78931CD5C80F6AA7DF7AC82E490E6D5ACFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9C470CAE8AF87D2908DC9B35BD7FC
                  3EC8F2A8A68EC7B299DACDB0F6EBD1FEE7DA82C58D2ED45D85FCB172F3A6D5CA
                  80CEEFFFFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCF9E4D78CB4
                  C2988FDA98BCC9AE76D4ED21C7FF9EB8BBC7AF95E1C1B1DDD3BE6CCF8743E078
                  72F3A4C4C983FEFDFB87D7FFE0F0F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFCFAF5E5D896B8D5AD6DE499B6DBACA4EAFA33D4FF85BBCF9FA67F5C
                  B1634BD37369E390DCDB9EFDFCF8FFFFFFD4F1FF52B8EDFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DBACECE8C0A3E9ADB4C7A6A9B6
                  B241BBDF37B0C2639363C4CC9AE9DCB7FFFFFFFFFFFFFFFFFFD4F0FF99D8F7FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  EDE5CAEAE1BDDFD8B2D7D9B987D8E34BC6EF3FB9F1B5E5FDEDF8FEFFFFFFC8EC
                  FE5ABBECDBEFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFCFFABE9FF5ECEFB
                  34B7F435B4F35BBFF0C4E6F4F9FCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                OnClick = sbtnTodasClick
                ExplicitLeft = 180
                ExplicitWidth = 186
              end
              object sbtnExcluirSelecionadas: TSpeedButton
                Left = 357
                Top = 0
                Width = 178
                Height = 28
                Align = alClient
                Caption = 'Excluir Selecionadas'
                Flat = True
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C006000000000000000000000000000000000000FFFFFF926544
                  9265449265449266449266449266449266439266439265449265449266449266
                  44926644926543926543926643926543926543926644926644926543926644FF
                  FFFFFFFFFF936644E3CAACE3CAACE4CAACE3CBACE3CBACE3CBACE3CBACE3CBAC
                  E4CAADE4CAADE3CAADE3CAADE4CAADE4CBACE4CBACE4CAADE4CAACE4CAACE4CB
                  ACE4CBAC926644FFFFFFFFFFFF946844E4CBADE4CBADE4CBADE3CBADE3CBAD16
                  8A57168A57E4CBADE4CBADE4CBADE3CBAEE3CBAEE4CBAEE4CBADE4CBADE4CBAE
                  E4CBADE4CBADE4CCADE4CCAD946744FFFFFFFFFFFF966845E5CDB0E5CDB0E4CD
                  B0E4CCB0168A57168A57168A57168A57E4CDAFE4CDAFE4CDB0E4CDB0E4CDB0E4
                  CDB0E4CDB0E4CDB0E4CDB0E4CDB0E4CDB0E4CDB0956845FFFFFFFFFFFF976945
                  E5CFB2E5CFB2E5CEB2168A57168A5727B97827B978168A57168A57E5CFB2E5CE
                  B2D9BB9ED7B89AD7B89AD7B89AD7B89BD7B89AD7B89AE5CEB2E5CEB2966945FF
                  FFFFFFFFFF996A46E6D1B5E6D1B5168A57168A5727B978E6CFB5E6CFB527B978
                  168A57E6D1B5E6CFB5B2825EA8754EA8744DA8744DA8744DA8744DA8744DE6CF
                  B5E6CFB5986A46FFFFFFFFFFFF996B47E7D2B8E7D2B8168A5727B978E7D2B8E7
                  D2B8E7D2B8E7D2B8E7D2B8E7D2B8E7D2B7E7D2B7E7D2B8E7D2B8E7D2B8E7D2B8
                  E7D2B8E7D2B8E7D2B8E7D2B89A6B47FFFFFFFFFFFF9B6D47E7D4BCE7D4BCE7D4
                  BCE7D4BBE7D4BBE7D4BCE7D4BCE7D4BCE7D4BCE7D4BCE7D4BBE7D4BBE7D4BCE7
                  D5BCE7D5BCE7D4BBE7D4BCE7D4BCE7D4BCE7D4BC9C6C47FFFFFFFFFFFF9E6D48
                  E8D7BFE8D7BFA599C32623CAE8D7BFE8D6BFE8D6C02623CAA599C3E8D7BFE8D6
                  C0E8D6C0E8D6BFE8D6BFE8D6BFE8D6BFE8D7BFE8D7BFE8D6BFE8D6BF9E6E47FF
                  FFFFFFFFFF9F6E49E9D9C3E9D9C31F1FF70707CC2E2BCBE9D9C32E2BCB0707CC
                  1F1FF7E9D9C3EAD9C3EAD8C3E9D8C3E9D8C2E9D8C2E9D8C3E9D9C2E9D9C2E9D8
                  C2E9D8C29F6F49FFFFFFFFFFFFA1704AEBDAC7EBDAC7EBDBC71F1FF70707CC07
                  07CC0707CC1F1FF7EADBC7EADBC7EADAC7EADAC7EADAC7EADBC5EADBC5EADBC7
                  EADAC5EADAC5EADBC5EADBC5A06F49FFFFFFFFFFFFA2714AEBDCCAEBDCCAEBDD
                  CBEBDCCB0707CC0707CC0707CCECDCCBEBDDCAEADECAEADDCADEC8B0DCC3ABDC
                  C3ACDCC3ACDBC4ABDAC3ACDAC2ACEBDECBEBDECBA3714AFFFFFFFFFFFFA4734A
                  EBDFCFEBDFCFEBDFCE0707CC0707CC1F1FF70707CC0707CCECE0CEECE0CEECE0
                  CEB38562A9754EA8744DA8744DA8744DA8744DA8744DECE0CFECE0CFA5724BFF
                  FFFFFFFFFFA7734BEDE1D2EDE1D22321CD0707CC1F1FF7EDE1D21F1FF70707CC
                  2321CDEDE2D1EDE1D1ECE2D2ECE2D2ECE1D1ECE1D1ECE1D1EDE1D1EDE1D1EDE2
                  D2EDE2D2A6734BFFFFFFFFFFFFA8744CEEE4D5EEE4D5A9A1D21F1FF7EEE3D5EE
                  E3D5EEE3D51F1FF7A9A3D2EEE5D5EEE4D5EEE4D5EEE4D5EEE4D5EEE4D5EEE3D5
                  EEE4D5EEE4D5EEE4D5EEE4D5A8744CFFFFFFFFFFFFA9764DEFE6D8EFE6D8EBDE
                  CEEBDECEEBDECEEBDECEEBDECEEBDECEEADECEEFE6D8EFE6D8EFE6D9EFE6D9EF
                  E6D8EFE6D8EFE6D8EFE5D8EFE5D8EFE6D8EFE6D8A9764DFFFFFFFFFFFFAC774E
                  EFE8DCEFE8DCECD2BEECD2BEECD2BEECD2BEECD2BEECD2BEECD2BEEFE8DCEFE8
                  DCF0E8DCF0E8DCEFE8DCEFE8DCEFE8DCEFE8DCEFE8DCEFE8DCEFE8DCAC774EFF
                  FFFFFFFFFFAE784EF0EBDFF0EBDFB19E90EEE5D7EDE5D8EEE5D7EEE5D8EDE4D8
                  D3C0B3F0EBE0F0EBDFF0EADFF0EADFF0EBE0F0EBE0F0EADFF0EBDFF0EBDFF0EA
                  DFF0EADFAE774EFFFFFFFFFFFFAE794FF1ECE1F1ECE1B19E90F0E8DDEFE9DEF0
                  E8DDF0E8DDF0E8DDD3C0B3F1ECE2F1ECE2E2D3C3DFCFBEE0D0BEE0D0BEE0D0BE
                  E0D0BEE0D0BEF1ECE1F1ECE1AE784FFFFFFFFFFFFFB07A50F1EEE5F1EEE5B19E
                  90F0ECE2F1ECE2F0ECE2F0ECE3F1EBE2D3C0B3F1EDE4F2EEE4B48765A9754EA8
                  744DA8744DA8744DA8744DA8744DF1EDE4F1EDE4B0794FFFFFFFFFFFFFB17B50
                  F2EFE7F2EFE7B19E90F2EFE7F2EFE7F2EFE7F2EFE7F2EFE7D3C0B3F1EFE7F2EF
                  E6F2EFE6F2EFE7F3EFE7F3EFE7F2EFE7F2EFE7F2EFE7F1EFE6F1EFE6B17B50FF
                  FFFFFFFFFFB27C51F3F0E8F3F0E893745B93745B93745B93745B93745B93745B
                  93745BF2F1E9F2F0E8F3F0E8F3F0E9F3F1E9F3F1E9F2F1E9F2F0E9F2F0E9F2F1
                  E8F2F1E8B37B50FFFFFFFFFFFFB47C51F3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3
                  F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EA
                  F3F1EAF3F1EAF3F1EAF3F1EAB37B50FFFFFFFFFFFFB47C51B47C51B47C51B47C
                  51B47C51B47C51B47C51B47C51B47D51B47D51B47C51B47C51B47C51B47C51B4
                  7C51B47C51B47C51B47C51B47C51B47C51B47C51B47C51FFFFFF}
                OnClick = sbtnExcluirSelecionadasClick
                ExplicitLeft = 568
                ExplicitTop = 16
                ExplicitWidth = 23
                ExplicitHeight = 22
              end
              object sbtnExcluir: TSpeedButton
                Left = 535
                Top = 0
                Width = 178
                Height = 28
                Align = alClient
                Caption = 'Excluir'
                Flat = True
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E2616BF9616BF93842E0FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0616BF9
                  616BF93B46E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
                  FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
                  42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFF3842E0
                  4C54EA6169F66972FC757FFE848DFE636DFA3842E0FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF3842E0636DFA848DFE757FFE6972FC6169F64C54EA3842E0FFFFFFFF
                  FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
                  FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
                  E73741DFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851E85C64F3646CF96A73FD74
                  7DFE7B85FE5D67F73B46E2FFFFFF3B46E25D67F77B85FE747DFE6A73FD646CF9
                  5C64F34851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
                  E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
                  6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF3741DF4750E75860F15D65F4616AF7646DF96770FB6770FB6770
                  FB646DF9616AF75D65F45860F14750E73741DFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
                  5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE4E
                  55E9575FF05A62F25C64F35C64F35C64F35A62F2575FF04E55E93640DEFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF3640DE575FF05A62F25C64F35C64F35C64F35A62F2575FF036
                  40DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF3640DE4E55E9575FF05A62F25C64F35C64F35C64
                  F35A62F2575FF04E55E93640DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
                  5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4750E75860F15D
                  65F4616AF7646DF96770FB6770FB6770FB646DF9616AF75D65F45860F14750E7
                  3741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
                  E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
                  6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  3741DF4851E85C64F3646CF96A73FD747DFE7B85FE5D67F73B46E2FFFFFF3B46
                  E25D67F77B85FE747DFE6A73FD646CF95C64F34851E83741DFFFFFFFFFFFFFFF
                  FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
                  FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
                  E73741DFFFFFFFFFFFFFFFFFFF3842E04C54EA6169F66972FC757FFE848DFE63
                  6DFA3842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0636DFA848DFE757FFE
                  6972FC6169F64C54EA3842E0FFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
                  FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
                  42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF3B46E2616BF9616BF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF3842E0616BF9616BF93B46E2FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                OnClick = sbtnExcluirClick
                ExplicitLeft = 752
                ExplicitTop = 24
                ExplicitWidth = 23
                ExplicitHeight = 22
              end
              object sbtnDanfeNFCe: TSpeedButton
                Left = 713
                Top = 0
                Width = 182
                Height = 28
                Align = alClient
                Caption = 'Danfe NFCe'
                Flat = True
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF8F8F8F8F8F8F8F8F8F8F8F8
                  F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAFAFAFDFDFDFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEDEDEDCECECEB58158B4
                  8056B48055B47F55B47F55B48055B48055B47F55B38056B48056B48056B58158
                  CECECEEDEDEDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFAAABAB7171716E6F6F5B5B
                  5B333333B18057F3DEC5F4DEC5F3DDC5F3DEC5F4DDC5F4DEC5F3DEC5F4DEC5F3
                  DDC5F3DEC7B27F573333335A5B5B6E6F6F7171719E9F9FFFFFFFFFFFFF686868
                  6162625E5F5F4849491B1B1BB38158F9EADAF8EADAF8EADAF8E9DAF8EADAF8EA
                  DAF9EADAF9E9D9F8EADAF8E9DAB381581B1B1B4849495E5F5F616262646565FF
                  FFFFFFFFFF8E8F8F878888838484636464232323B4845BFBF1E7FBF2E7FBF1E7
                  FBF1E7FBF1E8FBF1E8FBF1E7FBF1E7FBF1E7FBF1E7B4835B2323236364648384
                  848788888B8C8CFFFFFFFFFFFF9494958D8D8E89898A69696A272727B6875FFB
                  F2E7FBF1E7FBF1E7FBF2E7FBF1E8FBF1E8FBF2E7FBF1E8FBF1E7FBF1E8B6865E
                  27272769696A89898A8D8D8E919192FFFFFFFFFFFF9B9B9C9595969292937878
                  7943434429292A26262726262726262726262726262726262726262726262726
                  262726262729292A43434478787992929395959699999AFFFFFFFFFFFFA9A9AA
                  A4A4A5A3A3A49898998484857A7A7B7979797979797979797979797979797979
                  797979797979797979797979797A7A7B848485989899A3A3A4A4A4A5A7A7A8FF
                  FFFFFFFFFFBCBCBCB8B8B8B8B8B8B7B7B7B4B4B4B3B3B3B3B3B3B3B3B3B3B3B3
                  B3B3B3B3B3B3B3B3B30ACE220F8F1EB3B3B30ACE220F8F1EB4B4B4B7B7B7B8B8
                  B8B8B8B8BBBBBBFFFFFFFFFFFFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                  CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                  CCCCCCCCCCCCEAEAEAEAEAEACECECEFFFFFFFFFFFFDDDDDDDADADADADADADADA
                  DA3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3E3F3F3F3F3E3F3F3F3F3F3E3F3F3F3F
                  3F3F3E3F3F3F3F3F3E3F3FDADADAC4C4C4C4C4C5DCDCDCFFFFFFFFFFFFE0E0E0
                  DEDEDEDEDEDEDEDEDE494949626262747474909090B0B0B0CECECFE3E4E3EBEB
                  EBE0E0E0C7C8C7A8A8A88D8D8C7C7C7C494949DEDEDE8B8C8B8B8B8BE0E0E0FF
                  FFFFFFFFFFD0D0D0CDCDCDCDCDCDCDCDCD535454626262757574909090B0B0B0
                  CECECFE4E4E4EBEBEBE0E0E0C8C7C8A8A8A98C8D8D7C7C7C535354CDCDCDCDCD
                  CDCDCDCDCFCFCFFFFFFFFFFFFF9797977070707070706F6F6F5E5E5E5E5D5E5D
                  5D5D5E5E5E5E5E5E5E5E5E5E5E5E5E5D5D5E5E5E5E5E5D5E5D5E5E5E5E5E5E5E
                  5E5E5E6F6F6F7070707070708E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090
                  90777777CDA882F6EDE6F5EEE6F6EDE7F5EEE7F6EEE7F6EDE7F6EEE7F5EEE6F6
                  EDE7F5EEE6CDA782777777909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF8C8C8C7A7A7ACFAB86F4EDE5F4EDE6F4EDE5F4EDE5F5EDE5F4ED
                  E6F4EDE6F5EDE5F4EDE6F5EDE6CFAA867A7A7A8C8C8CFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A7C7B7CD1AD89F4ECE5F4ECE4F4ECE5
                  F4ECE5F4ECE5F4ECE4F4ECE5F4ECE4F4ECE4F4ECE4D1AD897C7B7C8A8A8AFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888887C7C7CD3B08CF3
                  EBE3F3EBE3F3EBE3F3EBE4F4EBE4F3ECE4F4ECE3F3EBE4F3EBE3F4EBE3D3B18C
                  7C7C7C888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393
                  937C7C7CD4B38FF1E9E0F2E9DFF2E9E0F2E9DFF2E8DFF2E9DFF2E9DFF1E9E0F2
                  E9E0F2E9DFD5B38F7C7C7C939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFF9F9F9868686D5B591EFE3D5F0E3D5F0E3D5EFE3D5EFE3D5EFE3
                  D5F0E3D6EFE3D5F0E3D6F0E3D5D6B691868686F9F9F9FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D9BA96EEDFCDEEDFCDEEDFCD
                  EEDFCDEEDFCDEEDECEEEDFCDEEDFCDEEDFCEEEDFCED9BB96F6F6F6FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBBC99DA
                  BA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DBBC99
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                OnClick = sbtnDanfeNFCeClick
                ExplicitLeft = 800
                ExplicitTop = 16
                ExplicitWidth = 23
                ExplicitHeight = 22
              end
            end
          end
        end
        object TTabPage
          Left = 4
          Top = 24
          Caption = 'Produtos'
          object dbgProdutos: TDBGrid
            Left = 0
            Top = 0
            Width = 895
            Height = 403
            Align = alClient
            DataSource = Modulo.dsVProdutos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbgProdutosDrawColumnCell
          end
        end
        object TTabPage
          Left = 4
          Top = 24
          Caption = 'Logs'
          object MemoLog: TMemo
            Left = 0
            Top = 0
            Width = 895
            Height = 403
            Align = alClient
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Danfe'
      object sbtnLogoMarca: TSpeedButton
        Left = 244
        Top = 20
        Width = 20
        Height = 19
        Caption = '...'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtnLogoMarcaClick
      end
      object Label7: TLabel
        Left = 4
        Top = 3
        Width = 55
        Height = 13
        Caption = 'Logo Marca'
      end
      object Label8: TLabel
        Left = 123
        Top = 42
        Width = 54
        Height = 13
        Caption = 'Impressora'
      end
      object sbtnGravarDanfe: TSpeedButton
        Left = 4
        Top = 151
        Width = 108
        Height = 36
        Caption = 'Gravar'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF4646463D3D3D4141416B6B6BA5A5A5ADADADA9
          A9A9A8A8A8A6A6A6A4A4A4A2A2A2A0A0A09E9E9E9D9D9D9A9A9A9999999A9A9A
          9191916363633D3D3D353535414141FFFFFFFFFFFF4040409494944B4B4B8888
          88128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF312
          8BF3128BF3128BF3128BF37878787F7F7F505050343434FFFFFFFFFFFF454545
          AEAEAE99999985858525A5F725A5F725A5F725A5F725A5F725A5F725A5F725A5
          F725A5F725A5F725A5F725A5F725A5F725A5F7777777929292A4A4A4353535FF
          FFFFFFFFFF4747473E3E3E414141868686F0F0F0FFFFFFFFFFFFFDFDFDFAFAFA
          F6F6F6F3F3F3F0F0F0EEEEEEEAEAEAE7E7E7E4E4E4E7E7E7D5D5D57979793030
          30212121353535FFFFFFFFFFFF4A4A4A424242444444878787EFEFEFFFFFFFFF
          FFFFFFFFFFFEFEFEFBFBFBF8F8F8F5F5F5F3F3F3EFEFEFECECECE9E9E9ECECEC
          D9D9D9797979303030212121353535FFFFFFFFFFFF4D4D4D4747474747478787
          87EFEFEFCEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CE
          BDB5CEBDB5CEBDB5DEDEDE7B7B7B2F2F2F212121353535FFFFFFFFFFFF4F4F4F
          4C4C4C4B4B4B878787EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFCFCFCF8F8F8F5F5F5F1F1F1F5F5F5E2E2E27D7D7D2F2F2F212121353535FF
          FFFFFFFFFF5353535151514E4E4E888888EFEFEFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF6F6F6FBFBFBE6E6E67D7D7D2F2F
          2F212121353535FFFFFFFFFFFF575757575757515151898989EFEFEFCEBDB5CE
          BDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5
          ECECEC8080802F2F2F212121353535FFFFFFFFFFFF5959595B5B5B5555558B8B
          8BF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF0F0F08484842F2F2F212121353535FFFFFFFFFFFF5B5B5B
          606060595959888888E9E9E9FCFCFCF5F5F5F4F4F4F4F4F4F4F4F4F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F6F6F6FFFFFFEAEAEA808080313131222222353535FF
          FFFFFFFFFF5E5E5E6767676060606767678787878C8C8C888888868686848484
          8282828282828181818181818181817F7F7F8080808181817979794F4F4F3232
          32272727373737FFFFFFFFFFFF6262626B6B6B6A6A6A65656562626260606056
          56564E4E4E4A4A4A4747474545454242424040403D3D3D3A3A3A393939373737
          3737373737373434342D2D2D3A3A3AFFFFFFFFFFFF6868687070706A6A6A6464
          645E5E5E5A5A5A5B5B5B6060606161615C5C5C5959595555555353535353534F
          4F4F4848484242423B3B3B3838383838383333333D3D3DFFFFFFFFFFFF6F6F6F
          7373735454544747474848483E3E3E797979B9B9B9BFBFBFB1B1B1ADADADA8A8
          A8A4A4A4A1A1A19C9C9C9898988C8C8C6B6B6B4141413C3C3C383838404040FF
          FFFFFFFFFF7575757575754141412C2C2C303030202020909090FFFFFFFFFFFF
          F1F1F1ECECECEAEAEAD5D5D5B1B1B1B3B3B3CECECEC7C7C78D8D8D4848484040
          403D3D3D434343FFFFFFFFFFFF7A7A7A7A7A7A4444443030303434342525258E
          8E8EF7F7F7FAFAFAE7E7E7E3E3E3E6E6E6B9B9B95D5D5D707070BDBDBDC3C3C3
          8989894C4C4C444444414141464646FFFFFFFFFFFF7E7E7E7D7D7D4747473131
          313535352626268D8D8DF6F6F6FAFAFAE6E6E6E2E2E2E7E7E7B5B5B54A4A4A62
          6262BABABAC3C3C38B8B8B505050484848454545494949FFFFFFFFFFFF838383
          8282824848483131313434342727278E8E8EF5F5F5FAFAFAE6E6E6E2E2E2E6E6
          E6B6B6B6515151676767BABABAC2C2C28C8C8C5353534C4C4C4A4A4A4D4D4DFF
          FFFFFFFFFF8A8A8A8888884545452B2B2B2F2F2F212121919191FFFFFFFFFFFF
          F0F0F0ECECECEAEAEAD0D0D09B9B9BA2A2A2C9C9C9C6C6C69393935858585050
          504E4E4E797979FFFFFFFFFFFF8686868484845B5B5B4B4B4B4E4E4E45454585
          8585C5C5C5C7C7C7BABABAB6B6B6B3B3B3AEAEAEA5A5A5A2A2A2A3A3A39C9C9C
          8080805F5F5F5A5A5A797979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbtnGravarDanfeClick
      end
      object edtLogoMarca: TEdit
        Left = 4
        Top = 20
        Width = 239
        Height = 21
        TabOrder = 0
        TextHint = 'Logo Marca'
      end
      object gbDanfe: TGroupBox
        Left = 4
        Top = 43
        Width = 114
        Height = 106
        Caption = 'DANFE'
        TabOrder = 1
        object rbImprimir: TRadioButton
          Left = 6
          Top = 15
          Width = 59
          Height = 17
          Caption = 'Imprimir'
          TabOrder = 0
        end
        object rbPDF: TRadioButton
          Left = 6
          Top = 58
          Width = 41
          Height = 17
          Caption = 'PDF'
          TabOrder = 1
        end
        object rbNaoImprimir: TRadioButton
          Left = 6
          Top = 81
          Width = 82
          Height = 17
          Caption = 'N'#227'o Imprimir'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object rbImprimirDireto: TRadioButton
          Left = 6
          Top = 35
          Width = 113
          Height = 17
          Caption = 'Imprimir Direto'
          TabOrder = 3
        end
      end
      object cbImpressora: TComboBox
        Left = 123
        Top = 59
        Width = 145
        Height = 21
        TabOrder = 2
        TextHint = 'Impressora'
      end
      object pnlConfigDanfe: TPanel
        Left = 287
        Top = 3
        Width = 305
        Height = 230
        BevelOuter = bvNone
        TabOrder = 3
        object Label19: TLabel
          Left = 4
          Top = 132
          Width = 123
          Height = 13
          Caption = 'ImprimirUndQtVlComercial'
        end
        object RbCanhoto: TRadioGroup
          Left = 0
          Top = 0
          Width = 305
          Height = 46
          Align = alTop
          Caption = 'Canhoto'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Cabe'#231'alho '
            'Rodap'#233)
          TabOrder = 0
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 46
          Width = 305
          Height = 59
          Align = alTop
          Caption = 'Margem'
          TabOrder = 1
          object Label15: TLabel
            Left = 15
            Top = 13
            Width = 40
            Height = 13
            Caption = 'Superior'
          end
          object Label16: TLabel
            Left = 75
            Top = 13
            Width = 36
            Height = 13
            Caption = 'Inferior'
          end
          object Label17: TLabel
            Left = 254
            Top = 13
            Width = 31
            Height = 13
            Caption = 'Direita'
          end
          object Label18: TLabel
            Left = 194
            Top = 13
            Width = 45
            Height = 13
            Caption = 'Esquerda'
          end
          object EditMargemEsquerda: TEdit
            Left = 194
            Top = 31
            Width = 33
            Height = 21
            TabOrder = 0
          end
          object EditMargemSuperior: TEdit
            Left = 15
            Top = 31
            Width = 30
            Height = 21
            TabOrder = 1
          end
          object EditMargemDireita: TEdit
            Left = 254
            Top = 31
            Width = 33
            Height = 21
            TabOrder = 2
          end
          object EditMargemInferior: TEdit
            Left = 75
            Top = 31
            Width = 33
            Height = 21
            TabOrder = 3
          end
        end
        object rbTarjaNfeCancelada: TCheckBox
          Left = 4
          Top = 111
          Width = 169
          Height = 17
          Caption = ' Mostra a Tarja de Cancelada'
          TabOrder = 2
        end
        object CBImprimirUndQtVlComercial: TComboBox
          AlignWithMargins = True
          Left = 131
          Top = 129
          Width = 141
          Height = 21
          AutoCloseUp = True
          TabOrder = 3
          Text = 'iuComercialETributavel'
          Items.Strings = (
            'iuComercial'
            'iuTributavel'
            'iuComercialETributavel')
        end
        object rbImprimirDadosDocReferenciados: TCheckBox
          Left = 4
          Top = 149
          Width = 202
          Height = 17
          Caption = ' Imprimir documentos referenciados'
          TabOrder = 4
        end
        object rgModeloRelatorio: TRadioGroup
          Left = 0
          Top = 177
          Width = 305
          Height = 53
          Align = alBottom
          Caption = 'Modelo de Relatorio'
          Columns = 2
          DragKind = dkDock
          ItemIndex = 0
          Items.Strings = (
            'Fast Report'
            'Fortes Report')
          TabOrder = 5
        end
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Email'
      object Label1: TLabel
        Left = 4
        Top = 3
        Width = 69
        Height = 13
        Caption = 'Servidor SMTP'
      end
      object Label2: TLabel
        Left = 287
        Top = 3
        Width = 26
        Height = 13
        Caption = 'Porta'
      end
      object Label3: TLabel
        Left = 4
        Top = 39
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object Label4: TLabel
        Left = 175
        Top = 39
        Width = 30
        Height = 13
        Caption = 'Senha'
      end
      object Label5: TLabel
        Left = 3
        Top = 74
        Width = 122
        Height = 13
        Caption = 'Assunto do email enviado'
      end
      object Label6: TLabel
        Left = 349
        Top = 3
        Width = 93
        Height = 13
        Caption = 'Mensagem do Email'
      end
      object sbtnGravarEmail: TSpeedButton
        Left = 3
        Top = 181
        Width = 115
        Height = 45
        Caption = 'Gravar'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF4646463D3D3D4141416B6B6BA5A5A5ADADADA9
          A9A9A8A8A8A6A6A6A4A4A4A2A2A2A0A0A09E9E9E9D9D9D9A9A9A9999999A9A9A
          9191916363633D3D3D353535414141FFFFFFFFFFFF4040409494944B4B4B8888
          88128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF312
          8BF3128BF3128BF3128BF37878787F7F7F505050343434FFFFFFFFFFFF454545
          AEAEAE99999985858525A5F725A5F725A5F725A5F725A5F725A5F725A5F725A5
          F725A5F725A5F725A5F725A5F725A5F725A5F7777777929292A4A4A4353535FF
          FFFFFFFFFF4747473E3E3E414141868686F0F0F0FFFFFFFFFFFFFDFDFDFAFAFA
          F6F6F6F3F3F3F0F0F0EEEEEEEAEAEAE7E7E7E4E4E4E7E7E7D5D5D57979793030
          30212121353535FFFFFFFFFFFF4A4A4A424242444444878787EFEFEFFFFFFFFF
          FFFFFFFFFFFEFEFEFBFBFBF8F8F8F5F5F5F3F3F3EFEFEFECECECE9E9E9ECECEC
          D9D9D9797979303030212121353535FFFFFFFFFFFF4D4D4D4747474747478787
          87EFEFEFCEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CE
          BDB5CEBDB5CEBDB5DEDEDE7B7B7B2F2F2F212121353535FFFFFFFFFFFF4F4F4F
          4C4C4C4B4B4B878787EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFCFCFCF8F8F8F5F5F5F1F1F1F5F5F5E2E2E27D7D7D2F2F2F212121353535FF
          FFFFFFFFFF5353535151514E4E4E888888EFEFEFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF6F6F6FBFBFBE6E6E67D7D7D2F2F
          2F212121353535FFFFFFFFFFFF575757575757515151898989EFEFEFCEBDB5CE
          BDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5
          ECECEC8080802F2F2F212121353535FFFFFFFFFFFF5959595B5B5B5555558B8B
          8BF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF0F0F08484842F2F2F212121353535FFFFFFFFFFFF5B5B5B
          606060595959888888E9E9E9FCFCFCF5F5F5F4F4F4F4F4F4F4F4F4F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F6F6F6FFFFFFEAEAEA808080313131222222353535FF
          FFFFFFFFFF5E5E5E6767676060606767678787878C8C8C888888868686848484
          8282828282828181818181818181817F7F7F8080808181817979794F4F4F3232
          32272727373737FFFFFFFFFFFF6262626B6B6B6A6A6A65656562626260606056
          56564E4E4E4A4A4A4747474545454242424040403D3D3D3A3A3A393939373737
          3737373737373434342D2D2D3A3A3AFFFFFFFFFFFF6868687070706A6A6A6464
          645E5E5E5A5A5A5B5B5B6060606161615C5C5C5959595555555353535353534F
          4F4F4848484242423B3B3B3838383838383333333D3D3DFFFFFFFFFFFF6F6F6F
          7373735454544747474848483E3E3E797979B9B9B9BFBFBFB1B1B1ADADADA8A8
          A8A4A4A4A1A1A19C9C9C9898988C8C8C6B6B6B4141413C3C3C383838404040FF
          FFFFFFFFFF7575757575754141412C2C2C303030202020909090FFFFFFFFFFFF
          F1F1F1ECECECEAEAEAD5D5D5B1B1B1B3B3B3CECECEC7C7C78D8D8D4848484040
          403D3D3D434343FFFFFFFFFFFF7A7A7A7A7A7A4444443030303434342525258E
          8E8EF7F7F7FAFAFAE7E7E7E3E3E3E6E6E6B9B9B95D5D5D707070BDBDBDC3C3C3
          8989894C4C4C444444414141464646FFFFFFFFFFFF7E7E7E7D7D7D4747473131
          313535352626268D8D8DF6F6F6FAFAFAE6E6E6E2E2E2E7E7E7B5B5B54A4A4A62
          6262BABABAC3C3C38B8B8B505050484848454545494949FFFFFFFFFFFF838383
          8282824848483131313434342727278E8E8EF5F5F5FAFAFAE6E6E6E2E2E2E6E6
          E6B6B6B6515151676767BABABAC2C2C28C8C8C5353534C4C4C4A4A4A4D4D4DFF
          FFFFFFFFFF8A8A8A8888884545452B2B2B2F2F2F212121919191FFFFFFFFFFFF
          F0F0F0ECECECEAEAEAD0D0D09B9B9BA2A2A2C9C9C9C6C6C69393935858585050
          504E4E4E797979FFFFFFFFFFFF8686868484845B5B5B4B4B4B4E4E4E45454585
          8585C5C5C5C7C7C7BABABAB6B6B6B3B3B3AEAEAEA5A5A5A2A2A2A3A3A39C9C9C
          8080805F5F5F5A5A5A797979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbtnGravarEmailClick
      end
      object Label24: TLabel
        Left = 3
        Top = 114
        Width = 82
        Height = 13
        Caption = 'Assinatura E-mail'
      end
      object edtSmtpHost: TEdit
        Left = 3
        Top = 18
        Width = 278
        Height = 21
        TabOrder = 0
      end
      object edtSmtpPort: TEdit
        Left = 287
        Top = 18
        Width = 55
        Height = 21
        TabOrder = 1
      end
      object edtSmtpUser: TEdit
        Left = 4
        Top = 54
        Width = 167
        Height = 21
        TabOrder = 2
      end
      object edtSmtpPass: TEdit
        Left = 175
        Top = 54
        Width = 167
        Height = 21
        PasswordChar = '*'
        TabOrder = 3
      end
      object edtEmailAssunto: TEdit
        Left = 3
        Top = 91
        Width = 338
        Height = 21
        TabOrder = 4
      end
      object mmEmailMsg: TMemo
        Left = 348
        Top = 18
        Width = 589
        Height = 276
        Color = 11794687
        ScrollBars = ssBoth
        TabOrder = 5
      end
      object cbEmailSSL: TCheckBox
        Left = 3
        Top = 158
        Width = 157
        Height = 17
        Caption = 'SMTP exige conex'#227'o segura'
        TabOrder = 6
      end
      object edt_AssinaturaEmail: TEdit
        Left = 3
        Top = 131
        Width = 339
        Height = 21
        TabOrder = 7
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Filtros'
      object sbtnGravarFiltros: TSpeedButton
        Left = 4
        Top = 271
        Width = 109
        Height = 38
        Caption = 'Gravar'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF4646463D3D3D4141416B6B6BA5A5A5ADADADA9
          A9A9A8A8A8A6A6A6A4A4A4A2A2A2A0A0A09E9E9E9D9D9D9A9A9A9999999A9A9A
          9191916363633D3D3D353535414141FFFFFFFFFFFF4040409494944B4B4B8888
          88128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF312
          8BF3128BF3128BF3128BF37878787F7F7F505050343434FFFFFFFFFFFF454545
          AEAEAE99999985858525A5F725A5F725A5F725A5F725A5F725A5F725A5F725A5
          F725A5F725A5F725A5F725A5F725A5F725A5F7777777929292A4A4A4353535FF
          FFFFFFFFFF4747473E3E3E414141868686F0F0F0FFFFFFFFFFFFFDFDFDFAFAFA
          F6F6F6F3F3F3F0F0F0EEEEEEEAEAEAE7E7E7E4E4E4E7E7E7D5D5D57979793030
          30212121353535FFFFFFFFFFFF4A4A4A424242444444878787EFEFEFFFFFFFFF
          FFFFFFFFFFFEFEFEFBFBFBF8F8F8F5F5F5F3F3F3EFEFEFECECECE9E9E9ECECEC
          D9D9D9797979303030212121353535FFFFFFFFFFFF4D4D4D4747474747478787
          87EFEFEFCEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CE
          BDB5CEBDB5CEBDB5DEDEDE7B7B7B2F2F2F212121353535FFFFFFFFFFFF4F4F4F
          4C4C4C4B4B4B878787EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFCFCFCF8F8F8F5F5F5F1F1F1F5F5F5E2E2E27D7D7D2F2F2F212121353535FF
          FFFFFFFFFF5353535151514E4E4E888888EFEFEFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF6F6F6FBFBFBE6E6E67D7D7D2F2F
          2F212121353535FFFFFFFFFFFF575757575757515151898989EFEFEFCEBDB5CE
          BDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5
          ECECEC8080802F2F2F212121353535FFFFFFFFFFFF5959595B5B5B5555558B8B
          8BF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF0F0F08484842F2F2F212121353535FFFFFFFFFFFF5B5B5B
          606060595959888888E9E9E9FCFCFCF5F5F5F4F4F4F4F4F4F4F4F4F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F6F6F6FFFFFFEAEAEA808080313131222222353535FF
          FFFFFFFFFF5E5E5E6767676060606767678787878C8C8C888888868686848484
          8282828282828181818181818181817F7F7F8080808181817979794F4F4F3232
          32272727373737FFFFFFFFFFFF6262626B6B6B6A6A6A65656562626260606056
          56564E4E4E4A4A4A4747474545454242424040403D3D3D3A3A3A393939373737
          3737373737373434342D2D2D3A3A3AFFFFFFFFFFFF6868687070706A6A6A6464
          645E5E5E5A5A5A5B5B5B6060606161615C5C5C5959595555555353535353534F
          4F4F4848484242423B3B3B3838383838383333333D3D3DFFFFFFFFFFFF6F6F6F
          7373735454544747474848483E3E3E797979B9B9B9BFBFBFB1B1B1ADADADA8A8
          A8A4A4A4A1A1A19C9C9C9898988C8C8C6B6B6B4141413C3C3C383838404040FF
          FFFFFFFFFF7575757575754141412C2C2C303030202020909090FFFFFFFFFFFF
          F1F1F1ECECECEAEAEAD5D5D5B1B1B1B3B3B3CECECEC7C7C78D8D8D4848484040
          403D3D3D434343FFFFFFFFFFFF7A7A7A7A7A7A4444443030303434342525258E
          8E8EF7F7F7FAFAFAE7E7E7E3E3E3E6E6E6B9B9B95D5D5D707070BDBDBDC3C3C3
          8989894C4C4C444444414141464646FFFFFFFFFFFF7E7E7E7D7D7D4747473131
          313535352626268D8D8DF6F6F6FAFAFAE6E6E6E2E2E2E7E7E7B5B5B54A4A4A62
          6262BABABAC3C3C38B8B8B505050484848454545494949FFFFFFFFFFFF838383
          8282824848483131313434342727278E8E8EF5F5F5FAFAFAE6E6E6E2E2E2E6E6
          E6B6B6B6515151676767BABABAC2C2C28C8C8C5353534C4C4C4A4A4A4D4D4DFF
          FFFFFFFFFF8A8A8A8888884545452B2B2B2F2F2F212121919191FFFFFFFFFFFF
          F0F0F0ECECECEAEAEAD0D0D09B9B9BA2A2A2C9C9C9C6C6C69393935858585050
          504E4E4E797979FFFFFFFFFFFF8686868484845B5B5B4B4B4B4E4E4E45454585
          8585C5C5C5C7C7C7BABABAB6B6B6B3B3B3AEAEAEA5A5A5A2A2A2A3A3A39C9C9C
          8080805F5F5F5A5A5A797979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbtnGravarFiltrosClick
      end
      object lblTimer: TLabel
        Left = 1
        Top = 247
        Width = 96
        Height = 13
        Caption = 'Tempo de Excul'#231#227'o:'
      end
      object Label25: TLabel
        Left = 229
        Top = 247
        Width = 96
        Height = 13
        Caption = 'Email Contabilidade:'
      end
      object Label26: TLabel
        Left = 185
        Top = 274
        Width = 140
        Height = 13
        Caption = 'Relat'#243'rio para Contabilidade:'
      end
      object gbEstadoVenda: TGroupBox
        Left = 4
        Top = 8
        Width = 101
        Height = 73
        Caption = 'Estado da Venda'
        TabOrder = 0
        object rbAberta: TRadioButton
          Left = 7
          Top = 15
          Width = 113
          Height = 17
          Caption = 'Aberta'
          TabOrder = 0
        end
        object rbCancelada: TRadioButton
          Left = 7
          Top = 33
          Width = 113
          Height = 17
          Caption = 'Cancelada'
          TabOrder = 1
        end
        object rbFechada: TRadioButton
          Left = 7
          Top = 51
          Width = 113
          Height = 17
          Caption = 'Fechada'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
      end
      object gbFormaPagamento: TGroupBox
        Left = 111
        Top = 8
        Width = 104
        Height = 73
        Caption = 'Forma Pagamento'
        TabOrder = 1
        object rbAVista: TRadioButton
          Left = 9
          Top = 15
          Width = 56
          Height = 17
          Caption = 'A Vista'
          TabOrder = 0
        end
        object rbAPrazo: TRadioButton
          Left = 9
          Top = 33
          Width = 56
          Height = 17
          Caption = 'A Prazo'
          TabOrder = 1
        end
        object rbTodosFormaPagamento: TRadioButton
          Left = 9
          Top = 51
          Width = 113
          Height = 17
          Caption = 'Todas'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
      end
      object gbModelo: TGroupBox
        Left = 222
        Top = 8
        Width = 115
        Height = 73
        Caption = 'Modelo Documento'
        TabOrder = 2
        object rb02: TRadioButton
          Left = 7
          Top = 16
          Width = 113
          Height = 17
          Caption = '02'
          TabOrder = 0
        end
        object rb03: TRadioButton
          Left = 7
          Top = 33
          Width = 113
          Height = 17
          Caption = '03'
          TabOrder = 1
        end
        object rbTodosModeloDocumento: TRadioButton
          Left = 7
          Top = 51
          Width = 113
          Height = 17
          Caption = 'Todos'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object rb55: TRadioButton
          Left = 46
          Top = 16
          Width = 113
          Height = 17
          Caption = '55'
          TabOrder = 3
        end
        object rb65: TRadioButton
          Left = 46
          Top = 33
          Width = 113
          Height = 17
          Caption = '65'
          TabOrder = 4
        end
      end
      object gbTributacaoAuxiliar: TGroupBox
        Left = 4
        Top = 81
        Width = 109
        Height = 157
        Caption = 'Tributa'#231#227'o Auxiliar'
        TabOrder = 3
        object cbCST: TComboBox
          Left = 7
          Top = 15
          Width = 82
          Height = 21
          TabOrder = 0
          TextHint = 'CST'
        end
        object edtICMS: TEdit
          Left = 7
          Top = 38
          Width = 82
          Height = 21
          TabOrder = 1
          TextHint = 'ICMS'
        end
        object cbCSOSN: TComboBox
          Left = 7
          Top = 60
          Width = 82
          Height = 21
          TabOrder = 2
          TextHint = 'CSOSN'
          Items.Strings = (
            ' '
            '101'
            '102'
            '103'
            '201'
            '202'
            '203'
            '300'
            '400'
            '500'
            '900')
        end
        object cbSituacaoTributaria: TComboBox
          Left = 7
          Top = 83
          Width = 82
          Height = 21
          TabOrder = 3
          TextHint = 'S. Tributaria'
          Items.Strings = (
            'T'
            'I'
            'N'
            'F')
        end
        object cbCFOPNFCE: TComboBox
          Left = 7
          Top = 106
          Width = 82
          Height = 21
          TabOrder = 4
          TextHint = 'CFOP NFCe'
        end
        object edtNCM: TEdit
          Left = 7
          Top = 130
          Width = 82
          Height = 21
          TabOrder = 5
          TextHint = 'NCM'
        end
      end
      object gbStatusNFCe: TGroupBox
        Left = 118
        Top = 81
        Width = 97
        Height = 100
        Caption = 'Status NFCe'
        TabOrder = 4
        object rbEnviado: TRadioButton
          Left = 6
          Top = 14
          Width = 71
          Height = 17
          Caption = 'Enviado'
          TabOrder = 0
        end
        object rbPendente: TRadioButton
          Left = 6
          Top = 33
          Width = 71
          Height = 17
          Caption = 'Pendente'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object rbErro: TRadioButton
          Left = 6
          Top = 53
          Width = 71
          Height = 17
          Caption = 'Erro'
          TabOrder = 2
        end
        object rbTodasStatusNFCe: TRadioButton
          Left = 6
          Top = 74
          Width = 71
          Height = 17
          Caption = 'Todas'
          TabOrder = 3
        end
      end
      object gbClassificacaoFiscal: TGroupBox
        Left = 343
        Top = 8
        Width = 256
        Height = 205
        Caption = 'Classifica'#231'ao Fiscal'
        TabOrder = 5
        object Label10: TLabel
          Left = 7
          Top = 87
          Width = 19
          Height = 13
          Caption = 'CST'
        end
        object Label11: TLabel
          Left = 91
          Top = 87
          Width = 25
          Height = 13
          Caption = 'ICMS'
        end
        object Label12: TLabel
          Left = 174
          Top = 87
          Width = 34
          Height = 13
          Caption = 'CSOSN'
        end
        object Label13: TLabel
          Left = 7
          Top = 127
          Width = 59
          Height = 13
          Caption = 'S. Tributaria'
        end
        object Label14: TLabel
          Left = 91
          Top = 127
          Width = 27
          Height = 13
          Caption = 'CFOP'
        end
        object sbtnCarregar: TSpeedButton
          Left = 7
          Top = 170
          Width = 77
          Height = 30
          Caption = 'Carregar'
          Flat = True
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFDFDFDF3F3F3C5C5C5808080777777747474787878
            7D7D7D8686868C8C8C8C8C8C878787808080808080848484C5C5C5F4F4F4FFFF
            FFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF6C6C6C6666667E7E7E9E9E9EB0
            B0B0BCBCBCC4C4C4CDCDCDDDDDDDEFEFEFFBFBFBFCFCFCF3F3F3ECECECDEDEDE
            A6A6A67676766F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B8B8B8B9393
            939A9A9AA5A5A5AEAEAEB5B5B5BCBCBCC4C4C4D2D2D2E6E6E6F8F8F8FFFFFFFF
            FFFFFFFFFFF9F9F9E3E3E3D6D6D6BABABA5D5D5DFFFFFFFFFFFFFFFFFFFFFFFF
            5E5E5E8484848383838D8D8DA0A0A0B1B1B1BDBDBDC6C6C6CFCFCFDCDCDCEFEF
            EFFBFBFBFFFFFFFFFFFFFFFFFFF6F6F6D4D4D4BEBEBEBBBBBB6A6A6AFFFFFFFF
            FFFFFFFFFFFFFFFF5F5F5F777777919191B8B8B8D7D7D7E0E0E0E1E1E1E0E0E0
            DFDFDFDFDFDFE1E1E1E1E1E1E3E3E3E8E8E8F1F1F1F8F8F8EBEBEBC9C9C9B2B2
            B2696969FFFFFFFFFFFFFFFFFFFFFFFF636363D8D8D8E3E3E3D4D4D4BABABAAE
            AEAEA4A4A49999999797979696969292929090908D8D8D919191989898A2A2A2
            BDBDBDD8D8D8E9E9E96B6B6BFFFFFFFFFFFFFFFFFFFFFFFF919191E4E4E4A7A7
            A79191917F7F7F7B7B7B7A7A7A7A7A7A7D7D7D7E7E7E8181817E7E7E79797971
            71716E6E6E6F6F6F7C7C7C939393E2E2E2919191FFFFFFFFFFFFFFFFFFFFFFFF
            DEDEDE8B8B8B7F7F7F7575758D8D8D9D9D9DABABABB5B5B5C0C0C0CECECEE0E0
            E0EAEAEAEBEBEBE0E0E0D0D0D0B8B8B8828282848484888888E5E5E5FFFFFFFF
            FFFFFFFFFFFFFFFFBDBDBD666666868686989898A8A8A8B3B3B3B9B9B9BEBEBE
            C7C7C7D4D4D4E8E8E8F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFE4E4E4C4C4C48686
            86BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF7575758282828888889191919E9E9EAC
            ACACB5B5B5BCBCBCC6C6C6D6D6D6E9E9E9F9F9F9FFFFFFFFFFFFFFFFFFF4F4F4
            D5D5D5C3C3C3B9B9B97F7F7FFFFFFFFFFFFFFFFFFFFFFFFF7878787575757D7D
            7D9A9A9ABEBEBED2D2D2DADADADFDFDFE2E2E2E7E7E7ECECECEFEFEFF4F4F4FC
            FCFCFFFFFFFEFEFEDEDEDEBFBFBFADADAD818181FFFFFFFFFFFFFFFFFFFFFFFF
            767676ABABABD8D8D8DEDEDECACACABCBCBCB2B2B2A3A3A39F9F9F9B9B9B9898
            989797979898989D9D9DA8A8A8B8B8B8D1D1D1E0E0E0CDCDCD7F7F7FFFFFFFFF
            FFFFFFFFFFFFFFFF929292EBEBEBB9B9B99D9D9D8383837C7C7C777777737373
            7171717070706D6D6D6A6A6A6868686767676B6B6B737373898989A2A2A2E9E9
            E9979797FFFFFFFFFFFFFFFFFFFFFFFFACACACAFAFAF8383836F6F6F78787885
            85859393939F9F9FA9A9A9B6B6B6C4C4C4C9C9C9C4C4C4B6B6B6A0A0A0848484
            626262787878A9A9A9B1B1B1FFFFFFFFFFFFFFFFFFFFFFFFEAEAEA7373738383
            83939393ABABABB7B7B7BEBEBEC4C4C4CCCCCCDADADAEFEFEFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFDBDBDBB5B5B5818181EBEBEBFFFFFFFFFFFFFFFFFFFFFFFF
            7D7D7D7D7D7D888888959595A2A2A2ADADADB3B3B3B9B9B9C3C3C3D2D2D2E6E6
            E6F7F7F7FFFFFFFFFFFFFFFFFFF4F4F4D9D9D9C5C5C5B1B1B1818181FFFFFFFF
            FFFFFFFFFFFFFFFF7777777B7B7B7D7D7D8B8B8BA3A3A3BBBBBBC8C8C8D3D3D3
            DDDDDDE5E5E5F2F2F2FDFDFDFFFFFFFFFFFFFFFFFFF9F9F9D6D6D6BEBEBEB2B2
            B2808080FFFFFFFFFFFFFFFFFFFFFFFF7474748C8C8CB9B9B9DBDBDBECECECEB
            EBEBEAEAEAE8E8E8E3E3E3E1E1E1DDDDDDD8D8D8D7D7D7D8D8D8DBDBDBE2E2E2
            E7E7E7D9D9D9BBBBBB7E7E7EFFFFFFFFFFFFFFFFFFFFFFFF888888E9E9E9E8E8
            E8E6E6E6E5E5E5E7E7E7EBEBEBECECECEDEDEDEAEAEAE7E7E7E2E2E2DDDDDDD5
            D5D5D0D0D0CACACAC8C8C8D2D2D2EDEDED8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF
            979797E2E2E2D7D7D7ECECECF7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF9F9
            F9F3F3F3EDEDEDE6E6E6DDDDDDD7D7D7CECECEC1C1C1DDDDDD9A9A9AFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFA4A4A4999999A0A0A0B9B9B9C5C5C5CFCFCFD8D8D8
            DADADADCDCDCD6D6D6D0D0D0C9C9C9BFBFBFB8B8B8AFAFAF9F9F9F999999A6A6
            A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3CFCFCF9D9D9D94
            94949494949E9E9EABABABB0B0B0B0B0B0ABABAB9E9E9E969696979797A0A0A0
            D1D1D1F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFEFEFEFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFD
            FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = sbtnCarregarClick
        end
        object dbgClassificacaoFiscal: TDBGrid
          Left = 7
          Top = 15
          Width = 244
          Height = 68
          DataSource = Modulo.dsClassificacaoFiscal
          Options = [dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODCLASS'
              Title.Caption = 'ID'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 160
              Visible = True
            end>
        end
        object dbedtCST: TDBEdit
          Left = 7
          Top = 104
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CST'
          DataSource = Modulo.dsClassificacaoFiscal
          TabOrder = 1
          OnKeyPress = dbedtCSTKeyPress
        end
        object dbedtICMS: TDBEdit
          Left = 91
          Top = 104
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PERCENTUALICMS'
          DataSource = Modulo.dsClassificacaoFiscal
          TabOrder = 2
          OnKeyPress = dbedtICMSKeyPress
        end
        object dbedtCSOSN: TDBEdit
          Left = 174
          Top = 104
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CSOSN'
          DataSource = Modulo.dsClassificacaoFiscal
          TabOrder = 3
          OnKeyPress = dbedtCSOSNKeyPress
        end
        object dbedtSituacaoTributaria: TDBEdit
          Left = 7
          Top = 143
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ITECF'
          DataSource = Modulo.dsClassificacaoFiscal
          TabOrder = 4
        end
        object dbedtCFOP: TDBEdit
          Left = 91
          Top = 143
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CFOP'
          DataSource = Modulo.dsClassificacaoFiscal
          TabOrder = 5
          OnKeyPress = dbedtCFOPKeyPress
        end
      end
      object rgUsarTributacao: TRadioGroup
        Left = 222
        Top = 81
        Width = 116
        Height = 100
        Caption = 'Usar Tributa'#231'ao'
        ItemIndex = 2
        Items.Strings = (
          'Classifica'#231'ao Fiscal'
          'Tributa'#231'ao Auxiliar'
          'Produto Venda'
          'Produto por CFOP')
        TabOrder = 6
      end
      object edtTimer: TEdit
        Left = 102
        Top = 244
        Width = 121
        Height = 21
        TabOrder = 7
        OnKeyPress = edtTimerKeyPress
      end
      object rgMensagemRetorno: TRadioGroup
        Left = 118
        Top = 187
        Width = 219
        Height = 51
        Caption = 'Mensagem de Retorno'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Mostrar'
          'Ocultar')
        TabOrder = 8
      end
      object cbAutomatico: TCheckBox
        Left = 343
        Top = 219
        Width = 138
        Height = 17
        Caption = 'Enviar Automaticamente'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object edtEmailContabilidade: TEdit
        Left = 331
        Top = 244
        Width = 268
        Height = 21
        TabOrder = 10
      end
      object cbRelContabilidade: TComboBox
        Left = 331
        Top = 271
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 11
        Text = 'RESUMIDO'
        Items.Strings = (
          'RESUMIDO'
          'COMPLETO'
          'CFOP'
          'CFOP RESUMIDO')
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Configura'#231#245'es'
      object pnlConfiguracoes: TPanel
        Left = 0
        Top = 0
        Width = 903
        Height = 431
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Conex'#227'o'
      object Label20: TLabel
        Left = 4
        Top = 5
        Width = 71
        Height = 13
        Caption = 'Caminho Base:'
      end
      object Label21: TLabel
        Left = 4
        Top = 48
        Width = 85
        Height = 13
        Caption = 'Tipo de Conex'#227'o:'
      end
      object sbtnAbrirBanco: TSpeedButton
        Left = 240
        Top = 23
        Width = 26
        Height = 21
        Caption = '...'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtnAbrirBancoClick
      end
      object sbtnGravarConexao: TSpeedButton
        Left = 4
        Top = 137
        Width = 85
        Height = 27
        Caption = 'Gravar'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF4646463D3D3D4141416B6B6BA5A5A5ADADADA9
          A9A9A8A8A8A6A6A6A4A4A4A2A2A2A0A0A09E9E9E9D9D9D9A9A9A9999999A9A9A
          9191916363633D3D3D353535414141FFFFFFFFFFFF4040409494944B4B4B8888
          88128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF3128BF312
          8BF3128BF3128BF3128BF37878787F7F7F505050343434FFFFFFFFFFFF454545
          AEAEAE99999985858525A5F725A5F725A5F725A5F725A5F725A5F725A5F725A5
          F725A5F725A5F725A5F725A5F725A5F725A5F7777777929292A4A4A4353535FF
          FFFFFFFFFF4747473E3E3E414141868686F0F0F0FFFFFFFFFFFFFDFDFDFAFAFA
          F6F6F6F3F3F3F0F0F0EEEEEEEAEAEAE7E7E7E4E4E4E7E7E7D5D5D57979793030
          30212121353535FFFFFFFFFFFF4A4A4A424242444444878787EFEFEFFFFFFFFF
          FFFFFFFFFFFEFEFEFBFBFBF8F8F8F5F5F5F3F3F3EFEFEFECECECE9E9E9ECECEC
          D9D9D9797979303030212121353535FFFFFFFFFFFF4D4D4D4747474747478787
          87EFEFEFCEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CE
          BDB5CEBDB5CEBDB5DEDEDE7B7B7B2F2F2F212121353535FFFFFFFFFFFF4F4F4F
          4C4C4C4B4B4B878787EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFCFCFCF8F8F8F5F5F5F1F1F1F5F5F5E2E2E27D7D7D2F2F2F212121353535FF
          FFFFFFFFFF5353535151514E4E4E888888EFEFEFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF6F6F6FBFBFBE6E6E67D7D7D2F2F
          2F212121353535FFFFFFFFFFFF575757575757515151898989EFEFEFCEBDB5CE
          BDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5CEBDB5
          ECECEC8080802F2F2F212121353535FFFFFFFFFFFF5959595B5B5B5555558B8B
          8BF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF0F0F08484842F2F2F212121353535FFFFFFFFFFFF5B5B5B
          606060595959888888E9E9E9FCFCFCF5F5F5F4F4F4F4F4F4F4F4F4F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F6F6F6FFFFFFEAEAEA808080313131222222353535FF
          FFFFFFFFFF5E5E5E6767676060606767678787878C8C8C888888868686848484
          8282828282828181818181818181817F7F7F8080808181817979794F4F4F3232
          32272727373737FFFFFFFFFFFF6262626B6B6B6A6A6A65656562626260606056
          56564E4E4E4A4A4A4747474545454242424040403D3D3D3A3A3A393939373737
          3737373737373434342D2D2D3A3A3AFFFFFFFFFFFF6868687070706A6A6A6464
          645E5E5E5A5A5A5B5B5B6060606161615C5C5C5959595555555353535353534F
          4F4F4848484242423B3B3B3838383838383333333D3D3DFFFFFFFFFFFF6F6F6F
          7373735454544747474848483E3E3E797979B9B9B9BFBFBFB1B1B1ADADADA8A8
          A8A4A4A4A1A1A19C9C9C9898988C8C8C6B6B6B4141413C3C3C383838404040FF
          FFFFFFFFFF7575757575754141412C2C2C303030202020909090FFFFFFFFFFFF
          F1F1F1ECECECEAEAEAD5D5D5B1B1B1B3B3B3CECECEC7C7C78D8D8D4848484040
          403D3D3D434343FFFFFFFFFFFF7A7A7A7A7A7A4444443030303434342525258E
          8E8EF7F7F7FAFAFAE7E7E7E3E3E3E6E6E6B9B9B95D5D5D707070BDBDBDC3C3C3
          8989894C4C4C444444414141464646FFFFFFFFFFFF7E7E7E7D7D7D4747473131
          313535352626268D8D8DF6F6F6FAFAFAE6E6E6E2E2E2E7E7E7B5B5B54A4A4A62
          6262BABABAC3C3C38B8B8B505050484848454545494949FFFFFFFFFFFF838383
          8282824848483131313434342727278E8E8EF5F5F5FAFAFAE6E6E6E2E2E2E6E6
          E6B6B6B6515151676767BABABAC2C2C28C8C8C5353534C4C4C4A4A4A4D4D4DFF
          FFFFFFFFFF8A8A8A8888884545452B2B2B2F2F2F212121919191FFFFFFFFFFFF
          F0F0F0ECECECEAEAEAD0D0D09B9B9BA2A2A2C9C9C9C6C6C69393935858585050
          504E4E4E797979FFFFFFFFFFFF8686868484845B5B5B4B4B4B4E4E4E45454585
          8585C5C5C5C7C7C7BABABAB6B6B6B3B3B3AEAEAEA5A5A5A2A2A2A3A3A39C9C9C
          8080805F5F5F5A5A5A797979FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbtnGravarConexaoClick
      end
      object Label22: TLabel
        Left = 4
        Top = 92
        Width = 30
        Height = 13
        Caption = 'Porta:'
      end
      object edtCaminho: TEdit
        Left = 4
        Top = 23
        Width = 234
        Height = 21
        TabOrder = 0
        TextHint = 'Caminho do Banco de dados'
      end
      object edtConexao: TEdit
        Left = 4
        Top = 66
        Width = 141
        Height = 21
        TabOrder = 1
        TextHint = '127.0.0.1'
      end
      object edtPorta: TEdit
        Left = 4
        Top = 109
        Width = 141
        Height = 21
        TabOrder = 2
        TextHint = '3050'
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Contabilidade'
      object lbInicial: TLabel
        Left = 9
        Top = 5
        Width = 31
        Height = 13
        Caption = 'Inicial:'
      end
      object lbEmail: TLabel
        Left = 10
        Top = 48
        Width = 89
        Height = 13
        Caption = 'Email Destinatario:'
      end
      object sbtnSalvarXML: TSpeedButton
        Left = 9
        Top = 91
        Width = 95
        Height = 53
        Caption = 'Enviar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          361B0000424D361B000000000000360000002800000030000000300000000100
          180000000000001B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8CC5DFE1EDF4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFAAD9EB1C93CC186FB778A7C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFECF4F933ADEB41AEDF2880C01773BF1B73B6
          A4C4DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C96
          BD1A98E61598E130B2EA41A6D7207ABC1778C03682B6CADDEAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFD0E0EC0B7FD0399CD9118FDF1390DF1A9EE33CB7EA
          3C9ACF1976BD197BC05B98C1EFF5F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F8AC61090
          E62487C72099E31290DE138FDE1492DF1CA2E642B5E6328EC7187AC01B7BBB84
          B2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFFFF9EB7C421A4EE1592DF0F88D53B9CD81091DF1692DE1692DE
          1290DE1695E129ACE942AEDF2985C2177DC22480BBA8C3D4FFFFFFFBFBFBFCFC
          FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF9F9FAE1E1E1CCCCCCCACACAC5C5C5ADADAD259AD923A4E7229F
          E21592E0248AC8279FE61695DF1793DE1491DE1691DE1490DD1699E134B3EA42
          A7D71F80BF1B88CC3280AF828687ACACACBCBCBCC8C8C8CACACACBCBCBCBCBCB
          CBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCACACAD7D7D7F1F1
          F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED3090C5145CBF15
          5EBD124FA31A6CA62AADEF25A3E425A2E4239FE30E8DD83DA0D71195E11895DF
          1793E01692DE1491DF1390DE1391DF189DE33CB6E93A9BCF1B82C6208FD71B7B
          AF1971962088BD2293D22291D5208BD21F83CE1C7CCA1B76C8186FC4176BC216
          65C01662BD155EBC145BBB1B7AD3A9B2B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE5E5E52B97CF1957AD1B57A6113E772EACE32DA8E62AA6E529A6
          E529A4E424A2E5248ECA3CAEE91697DF1998E11895E01795DE1491DE1692DE15
          90DE1393DF21A6E842B4E33192C81E84C62083C31665911B628B1F78AD2480BF
          247EBE2077BB2170B8206AB51D65B21E62B01D5EB01A5AAC1C57AC2177C692A2
          A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E21D92E41C93E413
          66AC2683B331B2EF2FABE52CA8E62CA8E629A5E428A5E51D9ADF51ADD925A7E6
          1799E11A98E01796DF1794E01592DE1491DE1490DE138FDD1396E12AACE843AD
          DE2588C41A85C71E7AB715548A13599C1971C21B83D81B91E31B8FE11B8FE01B
          8FE01B90E01B90E11B90E11F9CF38A99A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDFDFDF36A2EA097BCE0F548D39B9ED33B0E834AEE62FABE731AC
          E530ABE62EA8E629A8E72C98CE5CC3ED26A7E41B9CE21D9BE21899E11996DF19
          94E01592DE1692DE1691DE1290DD179AE236B4EA3FA3D51F82C01C84C7186CA6
          0B4E87095EA70F73C51185D90F8ADE108ADD1089DD0E88DC0B87DD24A0F48292
          9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4177EC639679431
          9DC73ABAED37B2E936B3E734B0E833AEE632ADE730ABE72EAAE627A4E256B1D8
          47BBEC2DABE51CA0E21B9CE11D9CE01A98E11895DF1794E01893DE1491DF1591
          DE1592DF19A0E540B6E83896CD1A7CC01F7FC01460990D568D126DB4137FCF16
          91DE1291DF1292E341A2DD278BD086959EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE4E4E41172C2135E8E43C3F43EB9EA39B5EA3BB6E836B2E936B3
          E736B0E835B0E630ACE731AEE92D9ACF65C9EF4BBCEB2FACE61CA0E31FA0E31E
          9EE11999E01B97DF1895E01594DE1692DE1692DE138FDE1594DF21A7E843B3E1
          2F87C21776BF1C73B8135A8E1061981279C02E9CE13E8FC70F7DC41199F18A9A
          A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC0D579740B6DF41
          C0EF3EBAEA3EBAEB3BB7E93BB7EA39B4E836B4E936B1E733B1E833AFE82BABE6
          57B1D652C1EE4FBFEB2EAFE81EA4E41EA1E41C9EE31A9CE21A98E11796DF1794
          E01592DE1491DE1490DE138FDD1596E12CAFEC40A7D92076BB1771BE1667A824
          628B1D57860B66B41479CE1695EC8B9BA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCECECE2A88B149CBF745C0ED44C0EB40BCEC41BDEA3DB9EB3FBA
          E93DB7EA3AB7E838B3E937B4E936B2E92DA0D371CEF053C2ED52C1EC34B2E720
          A6E421A5E321A1E21F9EE11B9AE21A9AE11A96DF1793E01793DE1491DE1591DE
          1491DD179CE33AB6EA3D9ACF176AB6176DBC145D9D0E5386146AAD1683D68A97
          A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A7A74FD2FC49C6EF47
          C2EC47C2ED43BFED44C0EB40BCEC41BDEA3FBAEB3FBAE93AB6EA3CB7EA39B5E9
          30B0E95BB5D75FCDF158C4EE57C2ED35B5E820A8E525A7E521A5E41D9FE21D9D
          E11B9AE01897E11A96DF1593E01893DE1692DF138FDE1492DF1EA4E73FB4E733
          87C31667B7176AB71558901368A1839097FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF59A4BB52D5FA4DC8EF4BC8EF4AC6ED48C4EE45C1EC45C1ED42BE
          EB42BEEC3FBBEA3FBBEB3CB8EB3CB8E939B6EB2EA3D57BD4F05ECCF05BC8EF5B
          C5EE36B7E922ACE623A9E622A5E520A3E41EA0E31C9DE11999E01996E11694E0
          1594DE1491DE1491DE128EDE1393DF25ACEA43AEDF2575BA1366B7176AB7536B
          7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1D8DE57D9FD52CEF050CDF04E
          CAEE4EC8EF4AC8EF4BC6ED47C3EE48C1EC45C0ED45C0EB41BDEC42BEEA40BBEB
          3EBAEB39B8EB5CB6D76ED6F563CEEF60CBEE5EC8EF3ABBEA26B0E725ADE726A9
          E622A5E51EA1E41E9FE31A9CE21C99E11997DF1795E01793DE1692DE1490DE15
          90DD169AE130B3EC40A1D51D69B5146BC03476B3CDDBE7FFFFFFFFFFFFFFFFFF
          FFFFFF56BCD657D7F654D0F053D0F153CFEF50CDF04FCCF04DCAEE4CC8EF4AC5
          ED4AC5EE47C2EC44C0ED45C0ED42BEEB41BDEC40BCEC32A9D883D9EF6AD3F268
          D0F162CDEF64CCEF3DBEEC24B2E82AB1E826ADE523A7E423A6E31FA0E21F9EE1
          1D9BE21897E11A96DF1994E01692DE1692DE1591DE1290DF1B9FE43CB7EA3990
          CA115EAF1362B26DA7CEFFFFFFFFFFFFA3D1DB5DDEFA5AD6F358D5F155D2F255
          D2F052CFF152CFF14FCCEF4FCCF04EC9EE4BC9EF4BC7ED49C5EE46C2EE46C2EC
          43BFED43BFEC3DBDED5AB5D67ADEF86DD4F36AD2F266CFF167CDF03EC0ED26B5
          E92AB3E926AFE625AAE623A6E51FA4E41D9FE21B9CE11999E01998E11695DF15
          93E01691DE1491DE138FDE1292DF1CA4E742B2E52C83C24FB4DFFFFFFFF6FAFB
          59D5EA53DDF851D8F64FD8F44DD5F54CD4F34BD3F347D0F248D0F244CDF244CC
          F141CAF141C9F03DC7F03EC4EE3CC2EF3AC1EF39C0ED39C0F027ACDF7FD7EF75
          DAF471D7F36ED4F16AD1F06ACFF141C2EC2AB9EA2CB6EA2AB3E727AEE725AAE6
          24A6E51FA3E41F9FE31C9CE11899E01696DF1593DF118FDD118FDE108FDE0D8E
          DE1095E129B1F0D2E8F4FFFFFF7FB1CF5394BDD1E1E2C0D9DFC0D8DEBFD8DEBF
          D9DEBFD7DEBFD8DEBED8DEBED7DEBDD7DEBED6DFBDD6DDBCD7DDBDD5DDBDD6DD
          B7D5DEB6D4DEB5D4DEB7D5E1A1C1CA78E2FA74DAF472D9F46FD6F36AD4F26ED4
          F243C6EF28BDED2CBAED27B5EA25B2E923AEE821AAE724A8E628A6E728A4E533
          A7E63CA9E743AAE849ACE74AA9E448A6DF46A5E1609CC0FFFFFFFFFFFF3582C7
          A3BCD1FFFFFBFCF8F7FCF8F7FCF8F7FDF8F7FDF8F7FCF8F7FDF8F7FDF8F7FDF8
          F7FDF8F7FDF8F7FDF8F7FDF9F7FDF9F7FCF7F5FCF8F6FCF8F6FDF8F7F9ECE99C
          DDEA91E1F48DDDF18BD8EC85D2E87ECBE47AC8E05BBCDC55B7D954B4D954B1D7
          50AED64EACD549A9D442A5D33CA2D2319BD02796CF1C90CE138CCC148DD0118E
          D21E97DDEAF2F7FFFFFFFFFFFFBBC9D4FFFFFFF5F5F5F3F3F3F3F3F3F5F5F5F3
          F3F3F3F3F3F5F5F5F3F3F3F5F5F5F3F3F3F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3
          F5F5F5F3F3F3F3F3F3F5F5F5F6F6F6ECE4E4F3E3DF8FBFCE2FB4E339B5E43BB7
          E637B7E621AFE726B1E723AEE724AFE724AEE821ABE822ACE722A9E71FA7E621
          A6E621A5E51FA2E520A3E41EA0E41CA5EE7FB0CDFFFFFFFFFFFFFFFFFFD4D0CC
          FCFCFCF5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F5F5F5F3F3
          F3F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F4
          F4F4FAF9F9F1E5E156C9EE44C2EE47C2ED45C0ED42BFEC2CB6EA2AB5E82CB3E9
          2BB3E728B0E829AEE628AEE725ABE526A9E625A9E422A6E523A4E31FA3E530AF
          F2EFF0F0FFFFFFFFFFFFCAC9C9F0F0F0E8E8E8F7F7F7F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5FEF8F6B6D2DB3EC7F149C5
          ED48C4EE46C2ED44C0EC2AB7EB2BB7EA2AB4E829B4E928B2E728AFE827AFE826
          ADE625AAE724AAE522A7E627B4F769828FFAFAFAFFFFFFFFFFFFC0C0C0F0F0F0
          E0E0E0DFDFDFEDEDEDF6F6F6F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F5F5F5F3F3
          F3F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F3
          F3F3F5F5F5F5F5F4F9EAE66ACCEA46C9EF4DC8EF4AC6ED49C4EE46C1ED2FBAEA
          2FBAEB2DB6E92EB7EA2BB5E828B1E929B2E728B0E825ACE625ADE837B5EB7E8B
          8CFDFDFDFFFFFFFFFFFFFFFFFFBABABAF3F3F3E8E7E6DBDBDBE2E2E2F3F3F3F5
          F5F5F3F3F3F5F5F5F3F3F3F5F5F5F3F3F3F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3
          F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3FCF8F7CBD6D947CD
          F44ECCF04CCAEE4DC7EF4AC7EE47C4ED2FBCEB2EBBEA30B9EB2FB9E92CB6EA2D
          B4E82CB4E927B0E831B4EE39B3CD8B9DA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F4F4F4B7BBBEFAF2ECE6E4E1DBDBDBE4E4E4F8F8F8F6F6F6F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5FDF0ED84D1E548CDF151CEEF4ECCF04EC9EE4CC9EF
          49C6EE2EBDEB2FBDEC2EBAEA2EBAEB2DB7E92BB7EA28B5EC389FC63ED0DE8FA4
          A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F9FA2C79B9C6D0D7F6ECE4E4
          E2E2DDDDDDE9E9E9F7F7F7F5F5F5F3F3F3F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3
          F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3F9F7F7DEDC
          DA53D4F451D0F152CEF151CEEF4FCBF04FCBEE4BC8EF32C0EC33C0EB2FBCEC30
          BDEA2DBAEB37B7EB42BBC75BE2EE9FAAACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF5B9ACC0061B1578FBDE9E6E2EDE7E1DEDEDDE1E1E1EEEEEEF8F8
          F8F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5FDF4F19BD4E04CD3F356D3F253D0F053D0F1
          50CDEF50CDF04BCAEF31C1EE32C0ED31C0EB2FBFED3FBCDC43E0EE4CF5FFBBD3
          D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFD7EB1972BC0F71BC04
          64B083AAC7FAF0E9E8E4E1DBDBDBE1E1E1F5F5F5F5F5F5F5F5F5F3F3F3F3F3F3
          F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3F5F5F5F7F6
          F6ECE0DD62DAF456D5F358D3F157D3F254D0F053D0F154CFEF4FCCF032C5ED31
          C2EE47C0E886E9F685ECF986ECF8F0FBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF2A7EC11A74BC1C78BE0C71BC1770B2ADC2D0FCEFE7E6E5
          E2DADADAE6E6E6F7F7F7F4F4F4F3F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F3
          F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3FEF7F6B1D4DB51D9F75AD6F259D6F3
          59D5F155D2F256D2F054D0F150CEF039CEF4BCE0ECFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86B5DB1873BB1B
          76BE1D79BE1978BF056DB93884B8D5D8DCF4EAE4E3E2E2DEDEDEEBEBEBF8F8F8
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
          F5F7F6F6F3E6E474DAEF58DBF45DD8F45AD8F25AD5F357D5F157D4F255D4F570
          C6E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE3EEF71C77BC1D77BD1D7ABF1D79BF1E7DC0177AC0026C
          B5669EC4EDE8E2EBE4E0DEDDDDE0E0E0F0F0F0F6F6F6F3F3F3F5F5F5F3F3F3F3
          F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3FCF8F7C7D7DB57DFF860DBF3
          5EDBF45DD8F45DD8F25AD7F361DBF8E3F1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B93CB19
          75BB1D7ABF1D79BF1E7DBF1E7CC01F80C1137CC00C70B68FB3CBFAEFE8E7E3E0
          DBDBDBE3E3E3F6F6F6F6F6F6F3F3F3F3F3F3F5F5F5F3F3F3F3F3F3F5F5F5F3F3
          F3F3F3F3F6F6F6FAEBE988DBEA5CDFF561DEF560DBF560DBF35EDEF88FD0E4FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFABCCE61873BD1D79BD1D79BF1C7CC01E7CBF1D7F
          C11F7FC21D82C30A79C0227EB8B8C9D3FAEDE6E6E3E2DCDCDCE6E6E6F7F7F7F5
          F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F9F7F7D9DAD960E5FA
          62E0F663DEF661DEF567DEF6F8FCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFE25
          7DBF1B79BD1D79BF1E7DBF1E7CC02080C11F80C21F83C11F83C31C83C40777BE
          4591BEDBDCDDF0E7E1E1E1E0DEDEDEECECECF8F8F8F4F4F4F3F3F3F5F5F5F3F3
          F3F3F3F3F5F5F5F4F4F4FBF1EF9EDBE35FE4F965E1F56AE8FCAED8E5FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72AAD61877BC1D79BF1E7DBF1E7CC02080
          C11F80C21F83C11F83C32084C42087C41683C50777BA71A8C7F4EAE5E9E3DFDD
          DDDDE2E2E2F2F2F2F5F5F5F5F5F5F3F3F3F3F3F3F5F5F5F3F3F3F9F8F8E5DEDC
          6EE8F865E8F970D2E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE
          E2F11B77BD1C79BE1C7CC01E7CBF1D7FC11F7FC21F82C31E83C22083C42086C5
          2087C41F88C71282C5107AB99BBCCEFDF0E8E7E3E1DBDBDBE3E3E3F8F8F8F6F6
          F6F5F5F5F5F5F5F5F5F5F5F5F5FDF5F4BBE1E26EF5FFD0ECF4FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3989C61A78BE1E7DBF1E7CC02080
          C11F80C21F83C11F83C32084C42087C32087C52289C5218AC71E8AC80D81C42A
          86BCC3D0D6F7EBE4E5E3E2DBDBDBE9E9E9F7F7F7F5F5F5F3F3F3F5F5F5FFFFFC
          6995B98ACEE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF96C0E11977BD1E7DBF1E7CC02080C11F80C21F83C11F83C32084C42087C3
          2087C52289C5218AC7218AC8218BC61C89C7057BBE529AC2E2E0DFEBE4E0E0DF
          DFDFDFDFEDEDEDF6F6F6F9F8F7EBEFF14B98CDECF3F8FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F7FB217CC01B7BC01E7CBF1D7F
          C11F7FC21F82C31E83C22083C42086C52087C41F88C72088C61E88C71D87C71C
          88C61C88C71083C50276BA8CB6D0F6F2F0E8E7E7DBDBDBE2E2E2FFFFFFD9DADC
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF5D9FD11A7ABD1E7CC02080C11F80C21F83C11D81C21B81C31983C2
          1B83C31984C31D87C63091CC51A2D37BBADD9ECCE7C4E0F0EAF4F9FFFFFFF2F3
          F3BABABAF7F7F7EFEFEFB2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBD7EB1677BD1979BE187B
          BF177CC0187FC02988C64999CE71B1DA96C6E4BCDAEEE1EFF7FEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAC8C8C8F2F2F2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF529ACE6EABD696C3E1BBD8ECDBEBF5FBFDFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        OnClick = sbtnSalvarXMLClick
      end
      object lbFinal: TLabel
        Left = 111
        Top = 5
        Width = 26
        Height = 13
        Caption = 'Final:'
      end
      object dInicial: TDateTimePicker
        Left = 9
        Top = 21
        Width = 80
        Height = 21
        Date = 43171.859462893520000000
        Time = 43171.859462893520000000
        TabOrder = 0
      end
      object edtEmail: TEdit
        Left = 9
        Top = 64
        Width = 182
        Height = 21
        TabOrder = 1
        TextHint = 'Email Destinatario'
      end
      object ProgressBar: TProgressBar
        Left = 11
        Top = 145
        Width = 180
        Height = 22
        TabOrder = 2
      end
      object dFinal: TDateTimePicker
        Left = 111
        Top = 21
        Width = 80
        Height = 21
        Date = 43171.859462893520000000
        Time = 43171.859462893520000000
        TabOrder = 3
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Relat'#243'rio'
      object tnRelatorio: TTabbedNotebook
        Left = 0
        Top = 0
        Width = 903
        Height = 431
        Align = alClient
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clBtnText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        TabOrder = 0
        object TTabPage
          Left = 4
          Top = 24
          Caption = 'Enviados'
          object gbVendasEnviadas: TGroupBox
            Left = 3
            Top = 7
            Width = 240
            Height = 174
            Caption = 'Vendas Enviadas'
            TabOrder = 0
            object lblDe: TLabel
              Left = 5
              Top = 19
              Width = 13
              Height = 13
              Caption = 'De'
            end
            object lblAte: TLabel
              Left = 120
              Top = 21
              Width = 17
              Height = 13
              Caption = 'At'#233
            end
            object lblStatus: TLabel
              Left = 3
              Top = 87
              Width = 31
              Height = 13
              Caption = 'Status'
            end
            object SpeedButton1: TSpeedButton
              Left = 3
              Top = 125
              Width = 91
              Height = 34
              Caption = 'Visualisar'
              Flat = True
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5BEC3035C8100
                5B84FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF8F8F8F8F8F8F8F8F8F8F8F8
                F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAFAFAFDFDFDB5BE
                C30C6E8C005B84005B84FFFFFFFFFFFFFFFFFFFDFDFDEDEDEDCECECEB58158B4
                8056B48055B47F55B47F55B48055B48055B47F55B38056B48056B48056B58158
                CECECEB4BABA0A5F7A0069910F6287CACACAFFFFFFAAABAB7171716E6F6F5B5B
                5B333333B18057F3DEC5F4DEC5F3DDC5F3DEC5F4DDC5F4DEC5F3DEC5F4DEC5F3
                DDC5F3DEC7B27F572A2A2A0A34480053770788B176797BFFFFFFFFFFFF686868
                6162625E5F5F4849491B1B1BB38158F9EADAF8EADAF8EADAF8E9DAF8EADAF8EA
                DAF2E4D4E4D6C7EDE0D1F8E9DAB381580053770053770685AE414B4F646565FF
                FFFFFFFFFF8E8F8F878888838484636464232323B4845BFBF1E7FBF2E7FBF1E7
                FBF1E7E6DDD5A088749A6C448E5F36A773459991766A6348003E4E042A3D5A62
                658788888B8C8CFFFFFFFFFFFF9494958D8D8E89898A69696A272727B6875FFB
                F2E7FBF1E7FBF1E7DED6CCCFA06CF0DCC0F4E6D1F7ECDCF5E7D8F3E2CBE4CDAE
                23493E68686989898A8D8D8E919192FFFFFFFFFFFF9B9B9C9595969292937878
                7943434429292A2626272626272626276D492BFCF9F5FCF8F4FFFFFFFFFFFFFF
                FFFFFEFBF8FCF8F4A48C6676767792929395959699999AFFFFFFFFFFFFA9A9AA
                A4A4A5A3A3A49898998484857A7A7B7979797979796C6B6BDBBB94F7EDDFFFFE
                FCFFFEFCFFFFFFFFFFFFFFFFFFF9F4EAF7EDDF7C7975A3A3A4A4A4A5A7A7A8FF
                FFFFFFFFFFBCBCBCB8B8B8B8B8B8B7B7B7B4B4B4B3B3B3B3B3B3B3B3B3979390
                E0BB8CF5E7D6FFFFFFFEFBF8FEFBF8FEFBF8FCF8F4FCF7F1F1DFC4948579B8B8
                B8B8B8B8BBBBBBFFFFFFFFFFFFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                CCCCCCCCCCA9A5A1D3A46CEEDABCF7ECDCF7ECDCF8EEE1F7EDDFF9F3E7F8F0E3
                E2C093A19287EAEAEAEAEAEACECECEFFFFFFFFFFFFDDDDDDDADADADADADADADA
                DA3F3F3F3F3F3F3F3F3F3F3F3F3A3A3AAF7E49D4A66EE5C399E9CFA8EEDABCF5
                E9D8F7EADAE7CBA3CF9E65B1AEACC4C4C4C4C4C5DCDCDCFFFFFFFFFFFFE0E0E0
                DEDEDEDEDEDEDEDEDE494949626262747474909090B0B0B09C8A7EB57E43C791
                56D4A66EE6C79DF0DBBFDEB785BD864A74553BDEDEDE8B8C8B8B8B8BE0E0E0FF
                FFFFFFFFFFD0D0D0CDCDCDCDCDCDCDCDCD535454626262757574909090B0B0B0
                CECECFAD9785AB723BB37A40BD874BBD864AAE743B8263494F4F50CDCDCDCDCD
                CDCDCDCDCFCFCFFFFFFFFFFFFF9797977070707070706F6F6F5E5E5E5E5D5E5D
                5D5D5E5E5E5E5E5E5E5E5E5E5E5E605B587E6A568A6A4A856F58665F5A5E5E5E
                5E5E5E6F6F6F7070707070708E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090
                90777777CDA882F6EDE6F5EEE6F6EDE7F5EEE7F6EEE7F6EDE7F6EEE7F5EEE6F6
                EDE7F5EEE6CDA782777777909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF8C8C8C7A7A7ACFAB86F4EDE5F4EDE6F4EDE5F4EDE5F5EDE5F4ED
                E6F4EDE6F5EDE5F4EDE6F5EDE6CFAA867A7A7A8C8C8CFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A7C7B7CD1AD89F4ECE5F4ECE4F4ECE5
                F4ECE5F4ECE5F4ECE4F4ECE5F4ECE4F4ECE4F4ECE4D1AD897C7B7C8A8A8AFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888887C7C7CD3B08CF3
                EBE3F3EBE3F3EBE3F3EBE4F4EBE4F3ECE4F4ECE3F3EBE4F3EBE3F4EBE3D3B18C
                7C7C7C888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393
                937C7C7CD4B38FF1E9E0F2E9DFF2E9E0F2E9DFF2E8DFF2E9DFF2E9DFF1E9E0F2
                E9E0F2E9DFD5B38F7C7C7C939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF9F9F9868686D5B591EFE3D5F0E3D5F0E3D5EFE3D5EFE3D5EFE3
                D5F0E3D6EFE3D5F0E3D6F0E3D5D6B691868686F9F9F9FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D9BA96EEDFCDEEDFCDEEDFCD
                EEDFCDEEDFCDEEDECEEEDFCDEEDFCDEEDFCEEEDFCED9BB96F6F6F6FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBBC99DA
                BA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DBBC99
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SpeedButton1Click
            end
            object Label23: TLabel
              Left = 3
              Top = 47
              Width = 81
              Height = 13
              Caption = 'Tipo de Relat'#243'rio'
            end
            object dtVIni: TDateTimePicker
              Left = 21
              Top = 15
              Width = 93
              Height = 21
              Date = 43214.338251631950000000
              Time = 43214.338251631950000000
              TabOrder = 0
            end
            object dtVFim: TDateTimePicker
              Left = 140
              Top = 15
              Width = 93
              Height = 21
              Date = 43214.338251631950000000
              Time = 43214.338251631950000000
              TabOrder = 1
            end
            object cbStatus: TComboBox
              Left = 3
              Top = 103
              Width = 109
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 2
              Text = 'ENVIADO'
              Items.Strings = (
                'ENVIADO'
                'PENDENTE'
                'ERRO'
                'TODOS')
            end
            object cbTipoRelatorio: TComboBox
              Left = 3
              Top = 64
              Width = 109
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 3
              Text = 'RESUMIDO'
              OnChange = cbTipoRelatorioChange
              Items.Strings = (
                'RESUMIDO'
                'COMPLETO'
                'CFOP'
                'CFOP RESUMIDO')
            end
          end
        end
        object TTabPage
          Left = 4
          Top = 24
          Caption = 'SomaXML'
          object pnlSomaXML: TPanel
            Left = 0
            Top = 0
            Width = 895
            Height = 403
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
          end
        end
      end
    end
  end
  object gdpTop: TGridPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 62
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ColumnCollection = <
      item
        Value = 15.791204818922710000
      end
      item
        Value = 15.962293379502930000
      end
      item
        Value = 16.272874881319650000
      end
      item
        Value = 16.663985667445460000
      end
      item
        Value = 21.815584937061940000
      end
      item
        Value = 13.494056315747310000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = sbtnAtualizar
        Row = 0
      end
      item
        Column = 2
        Control = sbtnEmail
        Row = 0
      end
      item
        Column = 3
        Control = sbtnStatus
        Row = 0
      end
      item
        Column = 4
        Control = gpnForma
        Row = 0
      end
      item
        Column = 1
        Control = sbtnEnviadas
        Row = 0
      end
      item
        Column = 5
        Control = sbtnCancelar
        Row = 0
      end>
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    RowCollection = <
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 0
    object sbtnAtualizar: TSpeedButton
      Left = 0
      Top = 0
      Width = 143
      Height = 62
      Align = alClient
      Caption = 'Atualizar'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9EB
        DE248B3F1F883A98C8A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEA5D2B4279E583AB37621974E62AD77FFFFFFE7F3EAFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFEFEA3D2B333AB6853CD9745BF85249A52359753
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF7FCFAD9F1E635AE6D52CD9751
        CD9546C28829A15C349854FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F3EA59AF772D9D57289E572AA25D33AB
        6939B4744AC68F48C58E48C58E45C18828A15F5DAD78FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF5EE5EB17B28A05A3AB47547C388
        48C58C45C38A44C28944C28B40BE873FBD863FBC853DBB8441BE8728A3624EA6
        6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F0E735A05D38B47447
        C58C42C1893EBC853DBB833CBA833BB98139B88038B77F38B67E37B57E36B47C
        34B27A37B57D199049FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F9F537A0
        5F3BB77A40BF8738B77F37B67E36B57D35B57C34B37B33B37A32B17931B07830
        AF772EAE752EAD752DAC7426A56B148943FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF7BBE922DA8663ABA8130B07831B1782FAF752BAA6F27A467219D5D209D
        5E209C5B29A97029A97027A76F28A86F1C995E12894397C9A9FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF27985233B2752AAB722AAB7223A1641B9651198E47
        27934F50A76F3C9E61148E4A23A46B22A36A21A26A1392541A8B458DC6A183BD
        97E1EFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1891492BAC7223A56B1A965627
        935090C6A2F6FBF8FFFFFFFEFEFE9DCDAE108C481EA0671B9D640D8B4B298C4D
        FFFFFF70B489097D378AC29DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF138D461EA0
        6615935258AB75FFFFFFD3E7DA4297600978325EA7779BCBAB0C88441495580C
        854352A36EFFFFFF99CBA9198A4910884768B283FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF138A4313915242A063FEFEFEB5D7C01E85450D85490E8A4C36975CB5D8
        C01C864318834185BE98FFFFFFB6D9C223904F17925818915564B181FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF349858138642F3F9F592C5A30B7C39118F531C9861
        169155389A5EDFEEE4FFFFFFFFFFFFD0E7D853A770168C471C975C25A16A229C
        5E67B483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9DAC576B98D68B1810C864218
        965C209E67229F681A965A1F8F4C4EA56D419F631C8D46158D461D975725A269
        27A56D2EAB7326A15E7BBE93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A0
        67108B4A22A06728A66E27A56E28A76F25A2661F9959209A5B229D5F28A46A2C
        AA702FAD752FAD7533B27A37B3783AA464C5E2CEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF1893522CAC742EAD752EAD752FAE7630AF7732B17933B27A33B3
        7A35B47C36B57D36B57D37B67E3BBA8240BF862DA76384C399FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF25A16139B98035B57D37B77F39B98039B980
        3ABA813BBB833CBC843DBD853EBE8541C18847C78E44C1862CA56078BE90FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF28995637B77A43C48B3F
        C08841C28941C28945C58D46C78E46C78D49CA904BCA9043C28432AE6B33A15D
        A2D1B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9DC
        C4319E5B39B7794CCE954BCD944CCE9546C68A36B26F30AB6629A35B279E5638
        A25F99CDABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFA3D0B01B91453BB97951D49956D9A04ACB8E64C08CF1FB
        F7FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4D0B0198F4136B37055D89E
        4BCC8F4EB174E0EFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F8F4FEFEFEC2
        DFCA2F985132AE6B37B5734DAE73E1F0E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDBECDF55A56A0A7D2874B685FDFEFDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      OnClick = sbtnAtualizarClick
    end
    object sbtnEmail: TSpeedButton
      Left = 288
      Top = 0
      Width = 148
      Height = 62
      Align = alClient
      Caption = 'Enviar por Email'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFB39E81B29C7EAF997BAF9879AF997BAF997BAF997BAF997BAF997B
        AF997BAF997BAF997BAF997BAF997BAF997BAF997BAF997BAF997BAF997BAF98
        79AF997BAF997BFFFFFFFFFFFFB19B7DFFFFFFFBFAF9F7F4F1F7F4F1F3F0EBF1
        EDE7EDE8E1EDE8E1EDE8E1EFEAE3EFEAE3EEE9E2EEE9E2EFEAE3F1EEE9F3F0EB
        F5F3EFF5F3EFF7F5F3FFFFFFAD9777FFFFFFFFFFFFAF9879FFFFFFFFFFFFE0D8
        CCE5DDD3E8E1D8E7E0D7E7E0D7E8E1D8E8E1D8E8E1D8E7E0D7E7E0D7E7E0D7E8
        E1D8E8E1D8E7E0D7E5DDD3E2DACEFFFFFFFFFFFFAA9270FFFFFFFFFFFFAE9778
        FFFFFFF3F0EBFFFFFFE2DACEE6DED5E7E0D7E6DFD6E6DFD6E7E0D7E8E2D9E9E3
        DBE7E0D7E7E0D7E6DFD6E6DFD6E6DED5E2DBCFFFFFFFF5F3EFFFFFFFA8906EFF
        FFFFFFFFFFAE9778FFFFFFE6DED5F4F1ECFFFFFFE8E1D8E9E3DBEAE4DCEEE9E2
        F1EEE9EDE8E1EEE9E2F0ECE6EDE8E1EAE4DCE9E3DBE6DED5FFFFFFF5F3EFE8E1
        D8FFFFFFA8906EFFFFFFFFFFFFAE9778FFFFFFEFEBE5E8E1D8F4F1ECFFFFFFEB
        E5DDF4F1ECF4F2EECFC2AFB9A68BBCAA90D0C3B0F4F1ECF4F1ECECE6DFFFFFFF
        F7F5F3E9E3DBEFEAE3FFFFFFA8906EFFFFFFFFFFFFAE9778FFFFFFF4F2EEF1EE
        E9ECE7E0F7F5F3FFFFFFEDE8E1BCA98FD3C6B5FFFFFFFFFFFFD5C9B9BFAD93FF
        FFFFFFFFFFFAF8F6ECE7E0F1EDE7F2EFEAFFFFFFA8906EFFFFFFFFFFFFAE9778
        FFFFFFF8F6F4F4F2EEFAF8F6FDFCFBDFD7CBC7B8A3E7E0D7FFFFFFE2DBCFE2DA
        CEFFFFFFE8E1D8CCBEAAE2DACEFAF9F7FAF8F6F5F3EFF6F3F0FFFFFFA8906EFF
        FFFFFFFFFFAE9778FFFFFFFEFDFDFEFDFDF8F6F4CDBFABC6B6A0FFFFFFFFFFFF
        ECE6DFF2EFEAF0ECE6ECE7E0FFFFFFFFFFFFCDBFABD0C3B0F7F5F3FFFFFFFBFA
        F9FFFFFFA8906EFFFFFFFFFFFFAE9778FFFFFFFFFFFFEFEBE5C9BAA5FFFFFFFF
        FFFFFEFDFDF8F6F4FBFAF9FAF9F7FAF9F7FAF9F7F8F6F4FEFDFDFFFFFFDFD7CB
        CBBDA9F1EDE7FFFFFFFFFFFFA8906EFFFFFFFFFFFFAF9879FFFFFFF5F3EFDBD1
        C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF5F3EFDDD4C7F4F1ECFFFFFFA9916FFFFFFFFFFFFFB19B7D
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD9777FF
        FFFFFFFFFFB39E81B29C7EAF997BAF9879AF9879AF9879AE9778AE9778AE9778
        AE9778AE9778AE9778AE9778AE9778AE9778AE9778AF9879AF9879AF9879AF98
        79AF997BAF997BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      OnClick = sbtnEmailClick
      ExplicitLeft = 328
      ExplicitTop = 9
      ExplicitWidth = 85
      ExplicitHeight = 22
    end
    object sbtnStatus: TSpeedButton
      Left = 436
      Top = 0
      Width = 151
      Height = 62
      Align = alClient
      Caption = 'Status do Servidor'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF9E1D2C8C6AB98B49077AB8468AB84
        68B49078C6AB99E2D4CBFBF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7F6D0BAAAA377589067488A6748
        9E68488C653C7E5F447D663B826844936A4CA37759C5AFA0F8F6F5FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4DBD4AC856990664777
        542B815F305A6F514D6B5452654560431C6A4C186B51206C502074552A936A49
        AC8569E4DBD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDACCC2A478
        5A7C55346542176B3B0656592C2D7A540F784F157353515E4F735C305C3A065F
        3D095D3B076346127A542EA37759DACCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E6DCD5A77B5A714C265C43146C4107804B194276520C8A5D0F94650C8C5F1476
        5F77815777662C675010614E096E511E705024704C25A77B5BE5DBD3FFFFFFFF
        FFFFFFFFFFFBF8F7B0896B7B582D684D2A6F5022805919767B562585620A8F60
        18A56F149D690775545E8C5798924883853275722C73673179672F6A52177955
        24B0896BF8F6F4FFFFFFFFFFFFD3BEAD946D48665A17765E429B664D95814E46
        91600D885F149D6B25B77F17A06B0376514887609F9B5287913A767E3D777443
        767431776F22705413946C48CAB5A4FFFFFFFDFBFAAD83607C6827766F346D5D
        3EB6805D8BA5701E9D6009916028BF8729BF8618A56F027C54328C6B828E5683
        873684873F898A46888B39988739A97751865F3AA97F5DFCFAF9E5D8CD9A744D
        7A78298879527D7248C6A86F5CB8760E9F6627C0883DD89F2FC78E2AC68B14AB
        6E367A4B73A15DACA158AFAD57B4AF54BAA547918D4E5B7D685D785A997550E4
        D7CBCFB59F8B734288883D958A55B8A26CB4BE8624AB6E0B996436D39842E1A7
        30CF931BBC7C24A75C446F198BB669DEC576D7C076D3B66FA3A0613272451B6D
        44339956807D52CEB49EC0A081897C3C9B954CA2A160D0B66D6FB6750C98630E
        9D6721BE8226CA8B18BE7818A1613C862D88C074DFD289F1D692BBC57E6AAA6B
        24785102735005825916AF70588959BF9E81BB977592873F9DA25D6492687CA7
        7C41C07E15B6730FA06710955B1B975B33995ABACC8EF1D99BF5DE9FE8D89AFE
        D8A24CA35F1770380682571BAC782DC58C2CD190429660BA9675BD99759B8F49
        55A166158B5D2591553EC98132C78349B1799AC592ECDBA8E8D692EDD799F1D8
        9AF2DB9BD8CF97C3CD8C2BBF731BBF7B27C38830C88F34D1972CDB924D9E68BD
        9975C5A4848E86501BA26715AC720E9F662EB1767EC389BCCB99DED1A0EFD79C
        EDD695EBD198ECD798EDD79AECD99EB9D08A1DCE7A2CD19033D09531CB9131D4
        961CCB7F668A5AC5A485D4BBA38D815319A86B27C68916AD740C8D5E20B77A5E
        C790CBD29EE9D29AEBD19AEBD19AEBD19AECD69DEED7A3B1D2981CC57A2BCC8F
        36D29835D19730D7951AC1778D7F53D4BBA3E9DCCFA3855D32A86D23C88720BA
        8017B4760E9E6A10A16BB4CDA0E5D2A3E7D09FE7D09EE7D09EEAD1A1EAD2A9B7
        CCA217A96B1CB77C34D3993EDEA22DD99320B271A5855EEADDD1FDFBFABC956B
        6E945D19C07B27CC8D31D89724CC8A119F6BA8C8A1E6D3B0E7D0A5E7D1A3E7D1
        A3E7D1A6E6D2ADAECDA403885815A56F3CDAA036DC9E1BC880579461B99369FD
        FBFAFFFFFFDECAB59F896150BE7E22D08A37D89B2CCF900B9C6368C191DCD6B6
        E7D2ACE6D1A9E7D1A8E7D2ABE4D4B378C898058D5D22B97F3ADDA027DC9031BC
        7B9C8764D6C2ADFFFFFFFFFFFFFCFAF7C4A17A8892671DC07C2CD09232D39516
        AF740C9E6687CE9BDED2AEE7D1ACE7D1ABE8D1AEDBD1B042BD840CA36927C78A
        25D78D3AD292898E6CC29F79FBF9F7FFFFFFFFFFFFFFFFFFEFE6DBBD966A6A99
        6D1BBE7C2CCF902BC68D088E5F1AAB6BD7DDB3EBD6B1E9D3B2C4C8A378BA8940
        B76E1CC27319CB7E41D59496A084BA9469EEE5DBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE9DDCFBF996C73906722BF7B1DBF811CBF7E1BB974C6DBBAF0DBC1C4D4
        B458A35C5FBD6E62E0AD72E0B79FE4BA8B937ABB946AE8DBCDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E8DDC9A77E9F906979B68560DCA967C58F
        ACC9A4E5D5B9A6D0AA63C6896CC893CDF4DDD4BEAD9E8868C6A37BEEE6DBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF8E1CEB7C4
        9F71AF956BA59A72C6B692C9BF98CDC39FCBBC9AA99878AA8F68BC966AD9C6AF
        FBF9F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFDFCFAEDE1D3DCC5A9D0B18DCAA87FC9A77FCFB08CDCC4A9EC
        E0D1FDFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      OnClick = sbtnStatusClick
      ExplicitLeft = 800
      ExplicitTop = 24
      ExplicitWidth = 23
      ExplicitHeight = 22
    end
    object gpnForma: TGridPanel
      AlignWithMargins = True
      Left = 590
      Top = 3
      Width = 192
      Height = 56
      Align = alClient
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = sbtnAVista
          Row = 0
        end
        item
          Column = 0
          Control = sbtnPrazo
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 0
      object sbtnAVista: TSpeedButton
        Left = 0
        Top = 0
        Width = 192
        Height = 28
        Align = alClient
        Caption = 'A Vista'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D8A5B158655FFFF
          FF1D8A5B168756FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          1E8C5C168856FFFFFF1E8C5C178957FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCCE5DAB1D7C61B8D5B168A57B1D7C61B8D5B178B58CCE5DAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFB1D7C7309569158755158755178C58178C58158755178C58178C5815
          875530956998CAB4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB2D8C7168957168957168957168957188E5A188E5A1689
          57188E5A188E5A1689571689571689577FBEA3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF329A6B178C58178C58178C58178C58
          1A915D19905C65B3901A915D19905C178C58178C58178C58178C58E6F3EDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF188F5B188F5B18
          8F5B65B592FFFFFF2297641A935EFFFFFF2297641B945F65B592188F5B188F5B
          188F5BB2DAC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDE8
          DC19925D19925D19925DB3DBC9FFFFFF2399651B955FFFFFFF2399651C9660CD
          E8DC19925D19925D19925DB3DBC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE6F4EEB3DCCAB3DCCAB3DCCAE6F4EEFFFFFF239C661B9861FFFF
          FF239C661C9962E6F4EE1B955F1B955F1B955FB3DCCAFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          249F681C9B63FFFFFF249F681D9C6468BB971C99621C99621C9962B4DDCBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
          F5EFB4DFCC69BE9920A0671D9E6537A9771D9E651D9E651D9D651D9D651D9D65
          1D9D65E7F5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF83CBAB1EA0671EA0671EA0671EA0671EA0671EA0671EA0671EA0671E
          A0671EA0671EA06783CBABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9DD7BD20A46A20A46A20A46A20A46A1FA3691FA36920A4
          6A1FA3691FA36920A46A3AAF7B9DD7BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3BB27E21A86D21A86D21A86D53BC8E
          23A86D20A66BB5E2CF25A86E21A76CCFECDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22AC6F22AC6F22
          AC6F6CC89FFFFFFF28AC7221A96DFFFFFF28AC7222AA6EFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF24AF7224AF7224AF72B6E5D0FFFFFF29AF7422AC6FFFFFFF29AF7423AD709E
          DCC16DCAA16DCAA16DCAA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF25B27425B27425B2746ECCA3FFFFFF2AB17623AE71FFFF
          FF2AB17624AF726ECCA325B27425B27425B274FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FBE8626B57626B57626B57688D7B4
          29B37624B173FFFFFF29B37625B27426B57626B57626B5763FBE86FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0E0C427B87827
          B87827B87827B87825B37525B37527B87825B37525B37527B87827B87827B878
          88D8B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA0E1C527BA7A27BA7A27BA7A26B57626B57627BA7A26B57626B57627
          BA7A27BA7A6FD1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F8F1B8E9D370D3A729B87A26B77870D3
          A729B87A26B778A0E2C5D0F1E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          2EBC7E27B979FFFFFF2EBC7E28BA7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF2FBE7F28BB7AFFFFFF2FBE7F29BC7BFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FBF8028BC7BFFFFFF2FBF8029BD7CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbtnAVistaClick
        ExplicitLeft = 48
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
      object sbtnPrazo: TSpeedButton
        Left = 0
        Top = 28
        Width = 192
        Height = 28
        Align = alClient
        Caption = 'A Prazo'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000043988043988
          0439880439890438890439890439880539880439890439880539880439890539
          8805398804398804398904398904398805398904398804398804398905398804
          3988063A8A4779B52F62A52F62A62F61A62F62A52F62A62F61A6083D8A093D8B
          083D8A083D8A083D8A083D8B093D8A083C8A2F62A62F62A62F62A62F61A62F62
          A62E62A64576B3063B89083C8B4C7EB93366AA3366AA3366AA3366AA3366AA33
          67AA0F438E2089BA1786B4218BB4238CB40E82B24C9AC90E438E3466AA3366AA
          3366AA3366AB3366AA3366AA4B7DB9083C8B0A3F8C5282BE376BAF386BAF386B
          AF386BAF4274B55182BD144892007EB58FDAEAFFFFFFFFFFFF2AA9CF137FB114
          48924474B54273B5386BAF386BAF376AAF376BAE5081BD0B3F8D0D418D5787C2
          3D70B43D70B43D70B4487ABA76A3D47CA8D6184C9523AADB17AEDD1DB6E21EB7
          E20DA8DA55B6E0184C9577A4D477A3D45485C03D70B43D70B43D70B45686C10C
          418D0F438F5C8CC74276BA4275B9487BBD77A3D57AA7D61A4E95194E951A4E95
          1A4E961A4D961A4D961A4D951A4D96194D951A4E9678A4D57AA5D65382C14376
          B94275BA5B8CC70F438E1245906190CB487ABF487BBF6291CC7AA6D7154993E3
          C9AAE3C9AAE4C9AAE3C9AAE3C9AAE3C9AAE3C9AAE3C9AAE3C9AAE3C9AAE3C9AA
          7EA9D974A1D44C7EC1487BBF6190CB1245911347926794D04E81C54F82C56896
          D0E5CDB1E5CEB1E5CEB1E5CEB1E5CEB1E5CEB2E5CEB1E5CDB1E4CDB1E4CDB1E5
          CDB1E5CEB1E5CDB1E5CDB179A5D85989CB4D81C46796D0144792164A936B9AD5
          5386CB5588CCE7D2B9E7D2B9A8744DA8744DA8744DA8744DA8744DA8744DA874
          4DA8744DE7D2B9E7D3B9A8744DA8744DE7D2B9E7D2B95A8BCE5387CC6C9AD516
          4A93184C95709FD9598CD18A6140E9D7C1E9D7C1E9D7C1E9D7C1E9D7C0E9D7C0
          E9D7C1E9D7C0E9D7C1E9D7C1E9D7C1E9D7C1E9D7C0E9D7C0E9D7C0E9D7C08A61
          40598CD172A0DA194C941A4F9576A4DE033888916543EBDCCAEBDCC9EBDCC9EB
          DCC9EBDBC9ECDBCAEBDBC9EBDCC9EBDCC9EBDCCAEBDCCAEBDCC9EBDCC9EBDCC9
          EBDCC9EBDCC991654203378776A4DE1A4E961D509779A7E2003586976A45EDE0
          D1EDE0D1A8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8
          744DA8744DA8744DEDE0D1EDE1D19669460035867BA8E31C51971F52981F5398
          0035869D6D48EFE5D8EEE5D8EFE5D8EFE5D8EFE5D9EFE5D8EFE5D8EFE5D8EFE6
          D8EEE5D8EEE5D8EFE5D8EFE6D8EFE5D8EEE5D8EFE5D89D6D480035861E52981E
          5299FFFFFFFFFFFFFFFFFFA3714AF0EADFF0EADFA8744DA8744DA8744DF1E9DE
          F0E9DFF0EADFF0EADFF0E9DFF0E9DFF1E9DFF1EADEF1EADEF1E9DFF1E9DFA371
          4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8754CF2EDE6F3EDE6A8744DA8
          744DA8744DF2EDE5F2EDE5A8744DA8744DA8744DA8744DA8744DA8744DA8744D
          F2EDE5F3EDE5A8744DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD784EF3F1
          EAF4F1EBF3F1EBF3F1EBF4F1EBF4F1EAF4F1EBF4F1EBF3F1EAF4F1EBF4F1EBF4
          F1EBF4F1EAF3F1EBF4F0EBF4F1EAAD784EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB17A50F5F3EFF5F3EFF5F4EFF5F4EFF5F3EFF5F4EFF5F3EFF5F4F0F5F4
          EFF5F4F0F5F4F0F5F3F0F5F4EFF5F4F0F5F4EFF5F4F0B17A50FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB47C51B47C51B47C51B47C51B47C51B47C51B47C51
          B47C51B47C51B47C51B47C51B47C51B47C51B47C51B47C51B47C51B47C51B47C
          51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A97AF5F3EFF5
          F3EFF5F3EFF5F4EFF5F3EFF5F4EFF5F3EF2D2EC42D2DC4F5F4F0F5F4EFF5F4F0
          D5A97AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFB47C51B47C51B47C51B47C51B47C51B47C51B47C51B47C513A3AD73A3AD7B4
          7C51B47C51B47C51B47C51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A97AF5F3EF498029498028F5F4F0F5F4
          F04647EA4647EAF5F4F0D5A97AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB47C51B47C51579430
          569430B47C51B47C51B47C51B47C51B47C51B47C51FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF60A13560A135FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbtnPrazoClick
        ExplicitLeft = 56
        ExplicitTop = 48
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object sbtnEnviadas: TSpeedButton
      Left = 143
      Top = 0
      Width = 145
      Height = 62
      Align = alClient
      Caption = 'Enviadas'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF58A47158A47158A47158A47158A47158A47158A47158A471FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF58A37085BD9D85BD9D85BD9D85BD9D85BD9D85BD9D56
        A26EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56A26C84D5B1C2EAD9C2EAD9C2EA
        D9C2EAD99ED5B753A06AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53A0698CD8B6
        BEE9D6BEE9D6BEE9D6BEE9D69BD4B5509E67FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF509D6592DBBAB8E7D2B8E7D2B8E7D2B8E7D296D3B24D9B63FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4D9A6097DDBEB2E6CFB2E6CFB2E6CFB2E6CF91D3B14A
        985EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49975C99DEC0ABE4CBABE4CBABE4
        CBABE4CB8CD2AE46955AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4593579ADFC0
        A5E2C7A5E2C7A5E2C7A5E2C787D1AC429155FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF41905398DEBF9DE0C29DE0C29DE0C29DE0C280D1A93E8E50FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF3E8C4E94DDBD96DEBE96DEBE96DEBE96DEBE7AD0A63B
        8A4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3989488FDDBA8FDDBA8FDDBA8FDD
        BA8FDDBA75D0A3368745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36854388DBB6
        88DBB688DBB688DBB688DBB66FCFA1338340FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F803B2F803B2F803B2F
        803B2F803B80D9B180D9B180D9B180D9B180D9B168CD9D2F803B2F803B2F803B
        2F803B2F803BEBEEEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B7C
        3684E0B67AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7AD7A
        D7AD7AD7AD7AD7AD58BA842B7C36FBFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF2779328DE3BB73D5A973D5A973D5A973D5A973D5A973D5
        A973D5A973D5A973D5A973D5A958BF89277932FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24762D98E6C26DD4A66DD4A6
        6DD4A66DD4A66DD4A66DD4A66DD4A66DD4A658C38E24762DFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21
        7329A4E9C967D2A267D2A267D2A267D2A267D2A267D2A257C690217329FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF1E7126AFECD063D19F63D19F63D19F63D19F58C9931E
        7126FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B6F22B8EFD55ED09D5ED0
        9D59CC971B6F22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        196D1FBEF1D95ACD99196D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF176B1D176B1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      OnClick = sbtnEnviadasClick
      ExplicitLeft = 204
      ExplicitTop = 20
      ExplicitWidth = 23
      ExplicitHeight = 22
    end
    object sbtnCancelar: TSpeedButton
      Left = 785
      Top = 0
      Width = 126
      Height = 62
      Align = alClient
      Caption = 'Cancelar NFCe'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFD3D3F08687D94C51C8
        3039C43E4ECE3E4ECE3039C44C51C88687D9D3D3F0FDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF46E6FD136
        44CD556EE27294F583A9FF82A7FE82A7FE83A9FF7294F5556EE23542CC6D6DD1
        DFDFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2
        E63D42C6536CE67293FA7396FB7090F96E8FF97090FA7090FA6E8FF97090F973
        96FB7192F9526BE43D42C6B9B9E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFAFAFE52D34C55874EF6483F8607FF55E7AF3526BE84253D83640CB3640
        CB4355D8526BE85F7BF46281F86483F85874EF3138C6B8B8E7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE3E3F6393DC55167ED546EF3556EF25671F3313FD13939BA
        AEAEE5D5D5F2D7D7F2B2B2E66767CC383FC8495FE75672F45670F45169ED393D
        C5E3E3F6FFFFFFFFFFFFFFFFFFF9F9FE6B6DD03D4DE04E64F15A73F14E65F04A
        60EF3E4FE24245C8D8D8F2FFFFFFFFFFFFFFFFFFFFFFFFD0D0EF5052C73B4BDE
        4D64F24D64F13D4DE06B6DD0F9F9FEFFFFFFFFFFFFD4D4F1262DC94255EF4D62
        EF7D98F75F77F23F52ED4456EF3949E52D30C0CBCBEEFFFFFFFFFFFFFFFFFFFF
        FFFFF2F2FB5152C83949E24355EF4356EF262DC9D4D4F1FFFFFFFFFFFF8686DA
        2D37D93A49EE4C60ED303AD0556BE65164F13848EC3A4AED313EE22C2DC0CECE
        F0FFFFFFFFFFFFFFFFFFFFFFFFD0D0F03035C83848EA3B4BEE2D37D98686DAFF
        FFFFFFFFFF474BCE2F3AE7313FEC2D37E13B3BC43B3FCB495AE64051ED2F3AEA
        313EED2B36E12D30C6CDCEF1FFFFFFFFFFFFFFFFFFFFFFFF6768D12C37E1313D
        EC2F3AE7474BCEFFFFFFFFFFFF2026CB2B34ED2A33E9252BD7B0B2E9D8D8F430
        36CC3642E4303AEA2831E82A33EA262EE23035CCCFD0F3FFFFFFFFFFFFFFFFFF
        B3B5EB262CD72A33E92B34ED2026CBFFFFFFFFFFFF2127D4252AE8242AE7272C
        D6D7D8F6FFFFFFCDCFF33037D1272FE2242BE8242AE6242AE82227E22B32D0CE
        D0F4FFFFFFFFFFFFD8D9F6272CD6242AE7252AE82127D4FFFFFFFFFFFF2027D7
        1E23E71E23E6262DD9D8DAF7FFFFFFFFFFFFCED0F42D34D61E23E21E23E61E23
        E61E23E61E23E03138D5CFD1F6FFFFFFD7D9F7262DD91E23E61E23E72027D7FF
        FFFFFFFFFF212AD91A1AE61A1BE62026DEB5B9F2FFFFFFFFFFFFFFFFFFD0D2F6
        333CDB1A1DE21A1AE51A1BE51A1BE51A1EE13139DADADCF9B3B7F21F26DE1A1B
        E5181AE6212AD9FFFFFFFFFFFF4B56E31A1CE41A1AE5171AE16F78E8FFFFFFFF
        FFFFFFFFFFFFFFFFCFD2F7313CDF171BE11616E21617E21617E4181AE23E48E1
        4652E1181AE11617E4171AE44B56E3FFFFFFFFFFFF8C93EF1B22E22224E61616
        E2303AE3D4D7FAFFFFFFFFFFFFFFFFFFFFFFFFD0D3F8323FE3161AE21414E214
        14E21414E2171AE21B23E11414E21A1AE51E26E28C93EFFFFFFFFFFFFFD7DBFA
        1E28E52A2FE72226E61517E25C68ECF3F4FEFFFFFFFFFFFFFFFFFFFFFFFFCFD3
        F93441E8161AE21414E21414E21414E21414E2171AE2262DE6242FE5D7DAFAFF
        FFFFFFFFFFFAFAFF747FF11E26E63B49EA2327E6161AE45B69F0D4D8FCFFFFFF
        FFFFFFFFFFFFFFFFFFDBDEFB4855EC171BE51414E21414E2171AE4313BE82A35
        E8737EF1FAFAFFFFFFFFFFFFFFFFFFFFE6E8FD3E4EF02A31E84D60ED2B33E716
        1AE53340EC7480F5B8BEFADADEFDD9DDFDB4BBF94A5BF11D27E81414E21C1FE5
        404DEA3845EA4150F0E6E8FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6BEFB2B39
        EF3440EA5F75EF495CED2227E61A1FE62028E82530ED2430ED1D25E81A1DE61B
        1EE53641E9566CED4051ED3445F0BEC4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9C0FC4051F4313EED5F75EE7B99F4637CF04B5FED3947E93743
        E9404EEB566CED728EF2657EF04154EE4254F5BFC6FCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E5FE7884FB2B3DF24054F05E75F1
        7C99F38AA9F788A8F5809DF46681F24D65F33147F37884FBE2E5FEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFD8
        DCFF8E98FC5566FB354BF83346F43346F4364CF8576AFB8F9BFCD7DCFFFEFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      OnClick = sbtnCancelarClick
      ExplicitLeft = 788
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 547
    Width = 911
    Height = 23
    Panels = <
      item
        Text = 'Vendas Encontradas:'
        Width = 115
      end
      item
        Text = '0'
        Width = 50
      end
      item
        Text = 'Valor de Vendas Selecionadas: R$'
        Width = 182
      end
      item
        Text = '0,00'
        Width = 80
      end
      item
        Text = 'Pressione F5 para Atualizar'
        Width = 150
      end
      item
        Text = 'Limpar Logs: CRTL + L'
        Width = 75
      end>
    PopupMenu = MenuPrincipal
  end
  object pnlData: TPanel
    Left = 0
    Top = 62
    Width = 911
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object lblDataInicio: TLabel
      Left = 416
      Top = 9
      Width = 55
      Height = 13
      Caption = 'Data Inicio:'
    end
    object lblDataFim: TLabel
      Left = 670
      Top = 9
      Width = 46
      Height = 13
      Caption = 'Data Fim:'
    end
    object Label9: TLabel
      Left = 5
      Top = 9
      Width = 226
      Height = 13
      Caption = 'Pressionar CTRL + Click para Selecionar Varios.'
    end
    object dtpInicio: TDateTimePicker
      Left = 478
      Top = 6
      Width = 186
      Height = 21
      Date = 43142.422743668990000000
      Time = 43142.422743668990000000
      TabOrder = 0
    end
    object dtpFim: TDateTimePicker
      Left = 720
      Top = 6
      Width = 186
      Height = 21
      Date = 43142.423492731480000000
      Time = 43142.423492731480000000
      TabOrder = 1
    end
  end
  object pnlAguarde: TPanel
    Left = 321
    Top = 467
    Width = 305
    Height = 47
    BevelOuter = bvNone
    Caption = 'Aguarde!!!'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object TimerEnvio: TTimer
    Enabled = False
    OnTimer = TimerEnvioTimer
    Left = 464
    Top = 86
  end
  object Menu: TPopupMenu
    Left = 840
    Top = 95
    object Mostrar: TMenuItem
      Caption = 'Mostrar'
      OnClick = MostrarClick
    end
    object Abortar1: TMenuItem
      Caption = 'Abortar'
      OnClick = Abortar1Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnMinimize = ApplicationEventsMinimize
    Left = 544
    Top = 86
  end
  object TrayIcon: TTrayIcon
    BalloonFlags = bfInfo
    PopupMenu = Menu
    OnDblClick = TrayIconDblClick
    Left = 688
    Top = 96
  end
  object TimerMinimizar: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = TimerMinimizarTimer
    Left = 624
    Top = 94
  end
  object MenuPrincipal: TPopupMenu
    Left = 764
    Top = 96
    object Atualizar: TMenuItem
      Caption = 'Atualizar'
      ShortCut = 116
      OnClick = AtualizarClick
    end
  end
  object TimerAutoEnvio: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = TimerAutoEnvioTimer
    Left = 844
    Top = 184
  end
end
