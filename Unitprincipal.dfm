object FormGerencia: TFormGerencia
  Left = 600
  Top = 1
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Gerencia de Transportes'
  ClientHeight = 1
  ClientWidth = 264
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 160
    Top = 136
    object CADASTRO1: TMenuItem
      Caption = 'CADASTRO'
      object Proprietario1: TMenuItem
        Caption = 'Proprietario'
        OnClick = Proprietario1Click
      end
      object Funcionrios2: TMenuItem
        Caption = 'Funcionários'
        OnClick = Funcionrios2Click
      end
      object Veiculos2: TMenuItem
        Caption = 'Veiculos'
        OnClick = Veiculos2Click
      end
      object CadastrodePropriedades1: TMenuItem
        Caption = 'Propriedades'
        OnClick = CadastrodePropriedades1Click
      end
      object TabeladeFretes2: TMenuItem
        Caption = 'Tabela de Fretes'
        OnClick = TabeladeFretes2Click
      end
      object Itens2: TMenuItem
        Caption = 'Itens'
        OnClick = Itens2Click
      end
      object Cotao1: TMenuItem
        Caption = 'Cotação'
        OnClick = Cotao1Click
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object LANAMENTOS1: TMenuItem
      Caption = 'LANÇAMENTOS'
      object Itens1: TMenuItem
        Caption = 'Itens'
        OnClick = Itens1Click
      end
      object Cana1: TMenuItem
        Caption = 'Cana Preta'
        OnClick = Cana1Click
      end
      object CanaUsina1: TMenuItem
        Caption = 'Cana Picada'
        OnClick = CanaUsina1Click
      end
      object Combustivel1: TMenuItem
        Caption = 'Combustivel'
        OnClick = Combustivel1Click
      end
      object CanaPlantada1: TMenuItem
        Caption = 'Cana Plantada'
        OnClick = CanaPlantada1Click
      end
    end
    object ITENS3: TMenuItem
      Caption = 'SERVIÇOS'
      object Combustivel2: TMenuItem
        Caption = 'Combustivel'
        object N21: TMenuItem
          Caption = 'Relatório'
          OnClick = N21Click
        end
      end
      object Impresso1: TMenuItem
        Caption = 'Lanc. Cana'
        object LANCAMENTOPORDATA1: TMenuItem
          Caption = '2325 / Rodoviaria'
          OnClick = LANCAMENTOPORDATA1Click
        end
        object N2428Gerra1: TMenuItem
          Caption = '2428 / Gerra'
          OnClick = N2428Gerra1Click
        end
        object N2219FNV1: TMenuItem
          Caption = '2219 / FNV'
          OnClick = N2219FNV1Click
        end
        object FrotaMotorista1: TMenuItem
          Caption = 'Frota / Motorista'
          OnClick = FrotaMotorista1Click
        end
        object Frota1: TMenuItem
          Caption = 'Frota'
          OnClick = Frota1Click
        end
        object Motorista1: TMenuItem
          Caption = 'Motorista'
          OnClick = Motorista1Click
        end
        object Datas1: TMenuItem
          Caption = 'Geral por Data'
          OnClick = Datas1Click
        end
      end
      object Pesquisa1: TMenuItem
        Caption = 'Pesquisa'
        OnClick = Pesquisa1Click
      end
    end
    object SAIR2: TMenuItem
      Caption = 'SAIR'
      OnClick = SAIR2Click
    end
  end
end
