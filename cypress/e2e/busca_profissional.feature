Feature: Busca por profissionais

  Background:
    Given que o usuário está logado

  Scenario Outline: Buscar profissionais por tipo de médico
    Given o usuário está na página de busca
    When ele adiciona o <tipo_medico>
    And  clica no botão "Pesquisa"
    Then ele deve ver <resultado>

  Examples:
    | tipo_medico    | resultado                          |
    | cardiologista  | lista de médicos deve ser exibida  |

  # Scenario: Buscar por profissionais que não são de saúde
  # Scenario: Buscar com string de número e caracteres especias
  # Scenario: Buscar com campo vazio ou espaço
  # Scenario: Busca que não retorna nada
  # Scenario: Busca que só retorna um profissional
  # Scenario: Busca muito genérica que retorne grande volume de dados

