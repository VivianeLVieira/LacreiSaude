# Lacrei_Saude

**Sistema Alvo:** https://paciente-staging.lacreisaude.com.br/ 

O Lacrei Saúde é um sistema que conectamos pessoas LGBTQIAPN+ com profissionais de saúde qualificados, proporcionando experiências de cuidado seguras e inclusivas.


## Planejamento de testes ---------------------------
**Objetivo**: Validação de funcionalidades, performance, segurança, usabilidade e responsividade.

**Tipos de teste**: funcional, não funcional, exploratório e automático.

**Relatório**: Ao fim da execução de cada rodada e tipo de testes, um relatório deve ser gerado com a análise da qualidade das funcionalidades testadas e o número de bugs. Ao fim de toda a bateria de testes, o testador deve liberar ou não a versão testada para ir para produção. 

## Funcionalidades:

1. Cadastro da pessoa usuária
1. Busca de profissional de saúde
1. Edição de perfil
1. Recuperação de senha

**Escopo negativo**: As funcionalidades não listadas no plano de testes, bem como os fluxos alternativos que levem à exaustão do sistema, serão desconsiderados.

**Lista de ferramentas necessárias:**
- Testes Funcionais: Gherkin, Notion, GitHub
- Automação: Cypress + Cucumber
- CI/CD: GitHub Actions
- Acessibilidade: Lighthouse, DevTools, VoiceOver
- Performance: Artillery
- Gestão de Bugs: GitHub Issues  

# Execução de Testes

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

Os testes automáticos deste projeto foram implementados utilizando Cypress juntamente com Cucumber, permitindo a combinação de automação de interface com testes escritos no formato Gherkin. Siga os passos a seguir para executá-los:

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

- Executar um teste exploratório Session-Based/Charter consiste em explorar de forma focada e flexível uma funcionalidade ou área da aplicação, seguindo objetivos pré-definidos.

- Navegar pela funcionalidade alvo explorando diferentes entradas, combinações e fluxos alternativos.

- Observar o comportamento da aplicação, validando mensagens, interações e consistência de layout.

- Registrar problemas, ideias de melhoria e evidências (screenshots, logs) primeiramente em formato de anotação.

- Revisar e priorizar os resultados ao final da sessão, reportar bugs e compartilhar achados com a equipe.

Essa técnica permite descobrir problemas não previstos, facilita o aprendizado rápido sobre a aplicação e aumenta a eficiência na identificação de bugs.

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

O pacote também inclui testes para VoiceOver e testes automáticos de contraste de cores e legibilidade, executados utilizando a ferramenta Lighthouse, garantindo que a aplicação atenda aos padrões de acessibilidade do WCAG.

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

###Lighthouse com funciona<------------------------------------------------------------>

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

⚠️ Observação Geral: Alguns testes não puderam ser executados devido a limitações de acesso ao banco de dados e ferramentas de monitoramento. A execução do checklist foi limitada pelo tempo. Não há plano de backup e rollback implementado. 

Percentual de execução do checklist: 8/20

Conclusão: O plano de segurança está em processo de desenvolvimento. É necessário priorizar testes críticos e implementar políticas de backup/rollback.

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

# Relatório de Testes

O surgimento de bugs críticos na aplicação alterou o planejamento inicial dos testes, impossibilitando a execução de alguns cenários previstos. A seguir, apresenta-se o relatório completo dos problemas identificados e as estratégias adotadas para minimizar seus impactos.

## ⚠️ Problemas no ambiente de staging e bugs no sistema

No terceiro dia do desafio, houve algum problema no servidor que me impediu de logar e cadastrar novos usuário na aplicação. Além do problema do servidor, funcionalidades de recuperação de senha, solicitação de um novo de e-mail de confirmação (caso o mesmo tenha expirado) também não funcionam corretamente. Esses problemas foram reportado com mais detalhes por e-mail, bloqueando a execução dos testes e a conclusão do desafio. 

Na fase de planejamento dos testes e escrita de casos de teste/charters foram aplicadas as técnicas de teste manuais ad-hoc e exploratório freestyle. Durante esse processo foi possível mapear as telas, encontrar préviamente diversos bugs e capturar evidências, tanto funcionais como não funcionais. Todas evidências foram coletadas no ambiente desktop com uso do browser Google Chrome. Não foi possível executar testes manuais em dispositivos móveis.

## ⚠️ Adição de confirmação de email automáticas
Sobre a criaçao e execução de testes automáticos: O sistema requisita que ao final da primeira etapa do cadastro, que o usuário entre no e-mail pessoal para confirmar o cadastro na aplicação. Nessa etapa, além de haver uma espera de 4 minutos (aconteceu 2 vezes) para que o e-mail de confirmação apareca na caixa de entrada, requer uma ação manual, o que dificulta a automação de testes. É sugerido que esse passo seja realizado automáticamente atravéz de uma requisição direto na API, garantindo que o teste não precise sair do contexto da apliçação. Por esse motivo e os mencionados anteriormente não foi possível finalizar um exemplo completo de cadastro automatizado.
 

## ⚠️ Não é possível gerar um relatório detalhado com cobertura de testes
Como só foi possível excutar partialmente os testes planejatos, e parte estão no modelo de charter, não é possivel mensurar corretamente a cobertura de teste para essa primeira rodada de testes manuais.
Porém, é possível afirmar que os caminhos mais críticos da aplicação foram cobertos. 

## Resultado dos testes
No total foram reportados X bugs. Sendo X criticos.

Há bugs críticos, problemas de layout, erros de digitação, erros de persistência na base de dados, falta de tratamento de erros nas messagens de erros passadas para o usuário, o volume de dados na base parece ser insuficiente para alguns testes, problemas de usabilidade como na navegação via teclado e outros.

Os **testes de acessibilidade** usando navegação via teclado ou "TAB" também foram executados de forma exploratória com a ajuda de um checklist de acessibilidade, porém a ordem lógica de foco e o acionamento de elementos (caixas de texto, checkbox e etc) estavam contra intuitivos ou inacessíveis. Melhorias foram reportados. 
Testes com **voiceOver** e **lighthouse** também foram parcialmente bloqueados. 

Foi possível executar  testes com voiceOver nas telas de login e criacao de contas

No **teste de performce** com carga realizado no endpoint de autenticaçao, os seguintes resultados foram observados:

 - 350 requisições resultaram em timeout.

 - 2 requisições retornaram erro 403.

 - Tempo de resposta das poucas respostas válidas variou entre 4,6 e 5,5 segundos, acima do esperado.

A API não suportou a carga aplicada, indicando possíveis problemas de sobrecarga, bloqueio ou limitação de acesso agressivo. Bugs foram reportados. (bug)

Detalhes completos da execução estão disponíveis na pasta de reports:
nao_funcionais/teste_de_desempenho/reports

Não foi possível executar **testes de responsividade** da aplicação nos devices inicialmente planejados, porém alguns erros de usabilidade e layout foram encontrados e reportados.

### Conclusão
Mesmo sem ter executado todos os testes previstos, com a análise da severidade de bugs e os problemas de ambiente, podemos concluir que o sistema ainda não está pronto para ir para o ambiente de produção e ser disponibilidade para o público. 



## Extra

1. O link da logo na tela principal da apliçação (superior, esquerda) em staging leva o usuário para o ambiente de produção.

    https://lacreisaude.com.br/

Por curiosidade, eu me cadastrei no ambiente de produção (acabei fazendo um exploratório) e reparei que o e-mail de confirmação de conta chegou como se tivesse vindo do ambiente de staging. Ainda assim, eu confirmei e consegui logar na conta em produção. 

Observei que muitos problemas que acontecem em staging não são reproduzidos em produção, o que é muito positivo. 

------
  