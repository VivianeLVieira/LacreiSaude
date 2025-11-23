# Como executar os testes

Antes de executar os testes, certifique-se de:
- ter a aplicação em execução publicada em um ambiente acessível (staging).
- ter acesso à internet.
- ter contas de usuário válidas ou dados de teste necessários.
- ter dispositivos e navegadores disponíveis, caso os testes envolvam responsividade ou usabilidade.
- ter ferramentas de registro e captura de evidências (screenshots, gravação de tela, logs), ex: 1click
- instalar dependências e ferramentas necessárias para execução de testes automáticos

## Testes manuais

Os testes manuais do projeto estão escritos no formato **Gherkin**, utilizando **Scenario Outline** com exemplos de possíveis entradas para o mesmo fluxo.

### Exemplo de Teste

```gherkin
Feature: Cadastro de Usuário

  Scenario Outline: Usuário cadastra com sucesso
    Given que o usuário acessa a página de cadastro
    When ele preenche o formulário com:
      | Nome            | Email            | Senha     |
      | viviane vieira  | viviane@mail.com | testando  |
    And clica no botão "Cadastrar"
    Then ele deve ver a mensagem "Cadastro realizado com sucesso"
```

### Passos para localizar os testes

1. Acesse a raiz do projeto.
1. Navegue até `cypress/e2e/`.
1. Dentro desta pasta, localize os arquivos com extensão `.feature`.
    - Cada arquivo `.feature` contém cenários escritos em Gherkin.
    - Os Scenario Outlines permitem testar múltiplas combinações de dados para o mesmo fluxo. 

### Execução manual

Para testar os cenários manualmente em smartphones, tablets ou no desktop, siga os passos abaixo:

1. **Acessar a aplicação**
    - Digite a URL da aplicação no navegador do dispositivo.
    - Navegue até a funcionalidade que deseja testar, seguindo os passos descritos nos cenários `.feature`.

1. **Seguir os cenários**
    - Abra o arquivo `.feature` correspondente.
    - Para cada **Scenario Outline**, execute cada linha da tabela de `Examples` como um teste individual.
    - Preencha campos de formulário, selecione opções, clique em botões e interaja com a aplicação conforme descrito no cenário.
    - Observe os resultados esperados descritos na coluna `resultado` de cada cenário.

## Testes automáticos com Cypress + Cucumber

Os testes automatizados deste projeto foram implementados utilizando Cypress em conjunto com Cucumber, permitindo a combinação de automação de interface com testes escritos no formato Gherkin. O GitHub Actions está configurado para executar os testes automaticamente após cada commit e pull request direcionado à branch main.

Siga os passos a seguir para executá-los localmente:

**1. Checkout do projeto**

Clone o repositório do GitHub:

```bash
git clone <URL_DO_PROJETO>
cd <NOME_DO_PROJETO>
```

**2. Instalar dependências**

Instale todas as dependências do projeto com npm:

```bash
npm install
```

### Modo interativo (GUI)

1. Execute o comando:

```bash
npm test:open
```

1. Selecione o **browser** desejado.
1. Escolha a **funcionalidade** ou **feature** que deseja testar.

> Este modo abre a interface gráfica do Cypress, permitindo acompanhar os testes em tempo real.

### Modo headless (CLI)

Para rodar todos os testes no terminal, execute:

```bash
npm test
```

### Registrar resultados
- Anote se o comportamento da aplicação corresponde ao esperado.
- Capture screenshots ou grave vídeos, se necessário, para evidenciar bugs.
- Documente qualquer problema, como erros de validação, campos quebrados ou falhas de usabilidade.

## Testes Exploratórios

Este projeto utiliza teste exploratório baseado em sessão (Session-Based Exploratory Testing – SBT). Os testes são genéricos e aplicáveis a qualquer funcionalidade.

### Preparação

1. Defina a funcionalidade ou área a ser testada.
1. Selecione dispositivos e resoluções (desktop, tablet, smartphone, landscape e portrait).
1. Tenha navegadores e ferramentas de captura prontos.

### Execução 

- Executar um teste exploratório Session-Based/Charter consiste em explorar de forma focada e flexível uma funcionalidade ou área da aplicação, seguindo objetivos pré-definidos. Essa técnica permite descobrir problemas não previstos, facilita o aprendizado rápido sobre a aplicação e aumenta a eficiência na identificação de bugs.

- Navegar pela funcionalidade alvo explorando diferentes entradas, combinações e fluxos alternativos.

- Observar o comportamento da aplicação, validando mensagens, interações e consistência de layout.

- Registrar problemas, ideias de melhoria e evidências (screenshots, logs) primeiramente em formato de anotação.

- Revisar e priorizar os resultados ao final da sessão, reportar bugs e compartilhar achados com a equipe.

## Testes de Responsividade e Usabilidade

Os testes de Responsividade e Usabilidade utilizam a técnica de Charter, permitindo explorar a aplicação por diferentes cenários de forma flexível e focada. É possível também usar um checklist como guia para garantir maior cobertura de testes, se necessário. Embora o Cypress permita automação de testes de responsividade, testes exploratórios são mais eficientes para encontrar bugs considerando as limitações de tempo disponível para a execução dos testes.

### Passos para localizar os testes

1. Acesse a raiz do projeto.
1. Entre na pasta `nao_funcionais`.
1. Navegue até `teste_de_responsividade_usabilidade`
1. Abra os testes exploratorio genericos, arquivo `charter_<nome_da_funcionalidade>.md` correspondente para acessar os detalhes da sessão exploratória e os cenários a serem testados.
1. Abra o checklist guia.  

## Testes de Acessibilidade
Assim como nos testes de responsividade, é possível encontrar charters e um checklist para guiar a execução dos testes de acessibilidade.

O pacote também inclui testes para VoiceOver e testes automáticos de acessibilidade, executados utilizando a ferramenta Lighthouse, garantindo que a aplicação atenda aos padrões de acessibilidade do WCAG.

### VoiceOver

#### Ativando o VoiceOver nos seus testes

macOS: Command + F5 ou acesse Preferências do Sistema → Acessibilidade → VoiceOver.

iOS: Ajustes → Acessibilidade → VoiceOver → Ativar.

#### Navegação Básica

Tecla Tab: Alternar entre grupos de elementos.
Control + Option + Setas: Explorar a interface de forma detalhada.
Control + Option + Space: Entrar em campos de texto, marcar/desmarcar checkbox.

### Lighthouse

### Passos para localizar os testes

1. Acesse a raiz do projeto.
1. Entre na pasta `nao_funcionais`.
1. Navegue até `teste_de_acessibilidade`.


## Testes de Desempenho

Foram criados casos de teste genéricos de performance, contemplando cenarios de teste de carga e testes isolado para tempo de resposta.
Além disso, foi implementado um teste de carga automatizado utilizando a ferramenta Artillery, que pode ser executado com o seguinte comando:

### Passos para localizar os testes

1. Acesse a raiz do projeto.
1. Entre na pasta `nao_funcionais`.
1. Navegue até `teste_de_desempenho`.

### Executar teste de carga
Utilize o comando no terminal do projeto:

```bash
npm run test:carga
```
O report automático deve aparecer no console.

## Checklist de Segurança Aplicado

**Checklist**: https://www.notion.so/Checklist-de-Seguran-a-2b18ac69d04c80ba81d2ff7c8d5c83da

## Processo de Rollback dos Testes Automatizados

(Embora não aplicável ao presente desafio, o texto abaixo descreve uma forma adequada de implementação.)

Para garantir integridade e previsibilidade durante a execução de testes automatizados, recomenda-se a utilização de um processo estruturado de rollback baseado em seed data. Esse mecanismo permite restaurar o banco de dados para um estado inicial conhecido, assegurando que cada teste seja executado sob condições controladas e livres de interferência de execuções anteriores.

### Seed Data e Verificação de Consistência

O projeto pode manter um arquivo de referência contendo o estado base do banco de dados (seed data). Esse arquivo representa a configuração inicial esperada do sistema e deve ser utilizado para:

- Restaurar rapidamente o banco de dados para um estado conhecido durante desenvolvimento ou testes.
- Garantir consistência após a execução de migrations ou alterações manuais.
- Facilitar processos de QA, integração contínua (CI/CD), versionamento de dados e rollback sempre que houver falhas.

### Funcionamento do Processo

#### Arquivo de Seed

Contém todos os registros iniciais definidos como “fonte de verdade” do banco de dados. Representa o estado que deve ser restaurado sempre que necessário.

#### Aplicação dos Seeds

Scripts ou comandos específicos são executados para inserir ou restaurar os dados conforme o arquivo de seed, garantindo que o ambiente volte ao estado padrão.

#### Verificação de Consistência

Após qualquer alteração no banco de dados, podem ser utilizados scripts de comparação para identificar divergências entre:
- O estado atual da base
- O estado definido no seed

Esse procedimento reduz riscos de corrupção, inconsistências ou violações de integridade referencial.

### Execução Durante os Testes

Durante a execução da suíte de testes automatizados, a base pode ser restaurada entre cada teste ou após um conjunto de testes que possam se sobrepor. Essa prática garante que cada caso seja executado em um ambiente totalmente previsível, evita resultados inesperados decorrentes de resíduos ou modificações deixadas por testes anteriores e preserva a integridade, confiabilidade e reprodutibilidade da suíte de testes.

### Exemplos de Seed Data

- Conjunto de usuários previamente cadastrados.
- Registros de consultas ou dados operacionais essenciais para funcionamento do sistema.
- Configurações de permissões, perfis, tokens ou parâmetros iniciais.
