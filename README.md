# Lacrei_Saude

 **Sistema Alvo:** https://paciente-staging.lacreisaude.com.br/ 

 O Lacrei Saúde é uma sistema que conectamos pessoas LGBTQIAPN+ com profissionais de saúde qualificados, proporcionando experiências de cuidado seguras e inclusivas.


   Planejamento de testes ---------------------
  Objetivo: Validação de funcionalidades, performance, segurança, usabilidade e responsividade.
  Tipos de teste: funcional, não funcional, exploratório e automático.
  Relatório: Ao fim da execução de cada rodada e tipo de testes, um relatório deve ser gerado com a análise da qualidade das funcionalidades testadas e o número de bugs. Ao fim de toda a bateria de testes, o testador deve liberar ou não a versão testada para ir para produção. 

 
**Funcionalidades:**

  1. Cadastro da pessoa usuária
  2. Busca de profissional de saúde
  3. Edição de perfil
  4. Recuperação de senha

Escopo negativo: As funcionalidades não listadas no plano de testes, bem como os fluxos alternativos que levem à exaustão do sistema, serão desconsiderados.



**Lista de ferramentas necessárias:**
  - Testes Funcionais: Gherkin, Notion, GitHub
  - Automação: Cypress + Cucumber
  - CI/CD: GitHub Actions
  - Acessibilidade: Lighthouse,  DevTools, VoiceOver
  - Performance: JMeter
  - Gestão de Bugs: GitHub Issues e Notion (ESCOLHEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE)

# **Execução de Testes**

Antes de executar os testes, certifique-se de:
  - ter a aplicação em execução publicada em um ambiente acessível (staging).

  - ter acesso à internet.

  - ter contas de usuário válidas ou dados de teste necessários.

  - ter dispositivos e navegadores disponíveis, caso os testes envolvam responsividade ou usabilidade.

  - ter ferramentas de registro e captura de evidências (screenshots, gravação de tela, logs). ex: 1click

  - instalar dependências e ferramentas necessárias para execução de testes automáticos


## Testes manuais:

Os testes manuais do projeto estão escritos no formato **Gherkin**, utilizando **Scenario Outline** com exemplos de possíveis entradas para o mesmo fluxo.

#### Exemplo de Teste

```gherkin
Feature: Cadastro de Usuário

  Scenario Outline: Usuário cadastra com sucesso
    Given que o usuário acessa a página de cadastro
    When ele preenche o formulário com:
      | Nome            | Email            | Senha     |
      | viviane vieira  | viviane@mail.com | testando  |
    And clica no botão "Cadastrar"
    Then ele deve ver a mensagem "Cadastro realizado com sucesso"o"
```

#### **Passos para localizar os testes**

1. Acesse a raiz do projeto.
2. Entre na pasta `cypress`.
3. Navegue até `cypress/e2e/`.
4. Dentro desta pasta, localize os arquivos com extensão `.feature`.
    - Cada arquivo `.feature` contém cenários escritos em Gherkin.
    - Os Scenario Outlines permitem testar múltiplas combinações de dados para o mesmo fluxo. 
    

#### **Execução manual**

Para testar os cenários manualmente em smartphones, tablets ou no desktop, siga os passos abaixo:

1. **Acessar a aplicação**
    - Digite a URL da aplicação no navegador do dispositivo.
    - Navegue até a funcionalidade que deseja testar, seguindo os passos descritos nos cenários `.feature`.

2. **Seguir os cenários**
    - Abra o arquivo `.feature` correspondente.
    - Para cada **Scenario Outline**, execute cada linha da tabela de `Examples` como um teste individual.
    - Preencha campos de formulário, selecione opções, clique em botões e interaja com a aplicação conforme descrito no cenário.
    - Observe os resultados esperados descritos na coluna `resultado` de cada cenário.


## Testes automáticos com Cypress + Cucumber:

Os testes automáticos deste projeto foram implementados utilizando Cypress juntamente com Cucumber, permitindo a combinação de automação de interface com testes escritos no formato Gherkin. Siga os passos a seguir para executá-los:

#### **1. Checkout do projeto**

Clone o repositório do GitHub:

```
git clone <URL_DO_PROJETO>
cd <NOME_DO_PROJETO>
```


#### **2. Instalar dependências**

Instale todas as dependências do projeto com npm:

```bash
npm install
```


#### **3. Executar o Cypress**

#### **Modo interativo (GUI)**

1. Execute o comando:

```bash
npm t
```

1. Selecione o **browser** desejado.
2. Escolha a **funcionalidade** ou **feature** que deseja testar.

> Este modo abre a interface gráfica do Cypress, permitindo acompanhar os testes em tempo real.
> 


#### **Modo headless (CLI)**

Para rodar todos os testes no terminal, execute:

```bash
npx cypress run
```

**Registrar resultados**
    - Anote se o comportamento da aplicação corresponde ao esperado.
    - Capture screenshots ou grave vídeos, se necessário, para evidenciar bugs.
    - Documente qualquer problema, como erros de validação, campos quebrados ou falhas de usabilidade.


## Testes Exploratórios:

Este projeto utiliza teste exploratório baseado em sessão (Session-Based Exploratory Testing – SBT). Os testes são genéricos e aplicáveis a qualquer funcionalidade.

### Preparação

Defina a funcionalidade ou área a ser testada.

Selecione dispositivos e resoluções (desktop, tablet, smartphone, landscape e portrait).

Tenha navegadores e ferramentas de captura prontos.

### Execução 

- Executar um teste exploratório Session-Based/Charter consiste em explorar de forma focada e flexível uma funcionalidade ou área da aplicação, seguindo objetivos pré-definidos.

- Navegar pela funcionalidade alvo explorando diferentes entradas, combinações e fluxos alternativos.

- Observar o comportamento da aplicação, validando mensagens, interações e consistência de layout.

- Registrar problemas, ideias de melhoria e evidências (screenshots, logs) primeiramente em formato de anotação.

- Revisar e priorizar os resultados ao final da sessão, reportar bugs e compartilhar achados com a equipe.

Essa técnica permite descobrir problemas não previstos, facilita o aprendizado rápido sobre a aplicação e aumenta a eficiência na identificação de bugs.


## Testes de Responsividade e Usabilidade:

Os testes de Responsividade e Usabilidade utilizam a técnica de Charter, permitindo explorar a aplicação por diferentes cenários de forma flexível e focada. É possível também usar um checklist como guia para garantir maior cobertura de testes, se necessário. Embora o Cypress permita automacao de testes de responsividade, testes exploratórios são mais eficientes para encontrar bugs considerando as limitações de tempo disponível para a execução dos testes.

### **Passos para localizar os testes**

1. Acesse a raiz do projeto.

2. Entre na pasta não-funcionais.

3. Navegue até teste_de_responsividade_usabilidade

4. Abra os testes exploratorio genericos, arquivo charter_<nome_da_funcionalidade>.md correspondente para acessar os detalhes da sessão exploratória e os cenários a serem testados.

5. Abra o checklist guia.  


## Testes de Acessibilidade:
Assim como nos testes de responsividade, é possível encontrar charters e um checklist para guiar a execução dos testes de acessibilidade.
O pacote também inclui testes automáticos de contraste de cores e legibilidade, executados utilizando a ferramenta Lighthouse, garantindo que a aplicação atenda aos padrões de acessibilidade do WCAG.

### **Passos para localizar os testes**

1. Acesse a raiz do projeto.

2. Entre na pasta não-funcionais.

3. Navegue até teste_de_acessibilidade

###Lighthouse com funciona<------------------------------------------------------------>

## Testes de Desempenho:

Performance Isolado -  
Carga - JMeter como funciona??????

### **Passos para localizar os testes**

1. Acesse a raiz do projeto.

2. Entre na pasta não-funcionais.

3. Navegue até teste_de_desempenho


## Checklist de Segurança Aplicado:

checklist: https://www.notion.so/Checklist-de-Seguran-a-2b18ac69d04c80ba81d2ff7c8d5c83da

⚠️ Observação Geral: Alguns testes não puderam ser executados devido a limitações de acesso ao banco de dados e ferramentas de monitoramento. A execução do checklist foi limitada pelo tempo. Não há plano de backup e rollback implementado. 

Percentual de execução do checklist: 8/20

Conclusão: O plano de segurança está em processo de desenvolvimento. É necessário priorizar testes críticos e implementar políticas de backup/rollback.

## Processo de Rollback dos Testes Automatizados

(Embora não aplicável ao presente desafio, o texto abaixo descreve uma forma adequada de implementação.)

Para garantir integridade e previsibilidade durante a execução de testes automatizados, recomenda-se a utilização de um processo estruturado de rollback baseado em seed data. Esse mecanismo permite restaurar o banco de dados para um estado inicial conhecido, assegurando que cada teste seja executado sob condições controladas e livres de interferência de execuções anteriores.

1. Seed Data e Verificação de Consistência

O projeto pode manter um arquivo de referência contendo o estado base do banco de dados (seed data). Esse arquivo representa a configuração inicial esperada do sistema e deve ser utilizado para:

 - Restaurar rapidamente o banco de dados para um estado conhecido durante desenvolvimento ou testes.

 - Garantir consistência após a execução de migrations ou alterações manuais.

 - Facilitar processos de QA, integração contínua (CI/CD), versionamento de dados e rollback sempre que houver falhas.

2. Funcionamento do Processo

    a) Arquivo de Seed
    Contém todos os registros iniciais definidos como “fonte de verdade” do banco de dados. Representa o estado que deve ser restaurado sempre que necessário.

    b) Aplicação dos Seeds
    Scripts ou comandos específicos são executados para inserir ou restaurar os dados conforme o arquivo de seed, garantindo que o ambiente volte ao estado padrão.

    c) Verificação de Consistência
    Após qualquer alteração no banco de dados, podem ser utilizados scripts de comparação para identificar divergências entre:
      - o estado atual da base
      - o estado definido no seed

Esse procedimento reduz riscos de corrupção, inconsistências ou violações de integridade referencial.

3. Execução Durante os Testes

  Durante a execução da suíte de testes automatizados, a base pode ser restaurada entre cada teste ou após um conjunto de testes que possam se sobrepor. Essa prática garante que cada caso seja executado em um ambiente totalmente previsível, evita resultados inesperados decorrentes de resíduos ou modificações deixadas por testes anteriores e preserva a integridade, confiabilidade e reprodutibilidade da suíte de testes.


4. Exemplos de Seed Data:

 - Conjunto de usuários previamente cadastrados.

 - Registros de consultas ou dados operacionais essenciais para funcionamento do sistema.

 - Configurações de permissões, perfis, tokens ou parâmetros iniciais.


# Relatório de Testes:

⚠️ Problemas no ambiente de staging e bugs no sistema: No terceiro do desafio, houve algum problema no servidor que me impediu de logar e cadastrar novos usuário na aplicação. Além do problema do servidor, funcionalidades de recuperação de senha, solicitacao de um novo de e-mail de confirmação (caso o mesmo tenha expirado) também não funcionam corretamente. Esses problemas foram reportado com mais detalhes por e-mail, bloqueando a execução dos testes e a conclusão do desafio. Durante o planejamento dos testes e escrita de casos de teste, eu aplique as técnicas de teste ad-hoc e exploratório freestyle.

Durante esse processo eu consegui mapear as telas e encontrar diversos bugs na aplicação, tanto funcionais como não funcionais, tudo via desktop. Felizmente, eu sempre tento fazer prints e capturar os problemas em vídeo para facilitar a reprodução posterior. Há bugs críticos, problemas de layout, erros de digitação, erros de persistência na base de dados, falta de tratamento de erros nas messagens de erros passadas para o usuário, o volume de dados na base parece ser insuficiente para alguns testes, problemas de usabilidade como na navegação via teclado e outros.

Sobre a execução de testes automáticos:  O sistema requisita que ao final da primeira etapa do cadastro, que o usuário entre no e-mail pessoal para confirmar o cadastro na aplicação.
Nessa etapa, além de haver uma espera de 4 minutos (aconteceu 2 vezes) para que o e-mail de confirmação apareca na caixa de entrada e ser uma ação manual, que dificulta a automação. É sugerido que esse passo seja realizado automáticamente atravéz de um ping direto na API, garantindo que o teste não precise sair do contexto da apliçação.

⚠️Por esse motivo e os mencionados anteiormente não foi possível finalizar um exemplo completo de cadastro automatizado.

Foi possível executar alguns testes com navegação via teclado, porém com voiceOver só foram executadas nas telas iniciais, antes do login. 
O Teste de desempenho testa a performance da aplicação ao ser acessada por muitos usuário que desejam se cadastrar e demonstrou..... (além das erros de servidor)

⚠️Não é possível gerar um report detalhado com cobertura de testes por exemplo, porém, considerando o tempo de exeçução dos testes é possível afirmar que os caminhos mais críticos da aplicação foram cobertos. 

O número total de bugs reportados é: 
Bugs críticos: 


Resumindo, o sistema ainda não está pronto para ir para o ambiente de produção e ser utilizado para o público.  


Extras: 

1. O link da logo na tela principal da apliçação (superior, esquerda) em staging leva o usuário para o ambiente de produção.

    https://lacreisaude.com.br/

Por curiosidade, eu me cadastrei no ambiente de produção (acabei fazendo um exploratório) e reparei que o e-mail de confirmação de conta chegou como se tivesse vindo do ambiente de staging. Ainda assim, eu confirmei e consegui logar na conta em produção. 

Observei também que muitos problemas em staging não acontecem no de produção, o que é muito positivo. 

2. Carga horária do volutariado fornecida inconsiste entre as fontes:
 - No site do atados são 13 horas semanais.

    https://www.atados.com.br/vaga/qa-lead-lacrei-saude-313538

 - No e-mail com os detalhes do desafio são 15 horas.
 - E no notion são: 20 horas. 
    
    https://lacrei-saude.notion.site/Desafio-T-cnico-Quality-Assurance-na-Lacrei-Sa-de-de16f470007841aba5c564e5dd543943

Estou reportando aqui, por parece que faz parte do desafio, verificar se observamos os detalhes. Além ter ficado curiosa sobre qual carga horária é a correta. 

------
  






  

  Criação teste
  Criação de casos de teste contendo o passo a passo em linguagem Gherkin, os casos de testes devem conter as tags de fluxo principal ou caminho feliz, smoke testing (grupo de testes minimo para garantir que o mais basico da aplicação funciona), sanity (comtempla fluxos basico e fluxos principais relacionados, executado apos correção de bugs) e regressão (cobrindo fluxo principal + fluxos alternativos + erros + validações).
  Criação de testes automáticos utilizando cypress/selenium + Cucumber. Podendo adotar a mesma organização de tags dos testes manuais para facilitar a execução e obter relatórios, mas rapidamente, ao invés de ter que esperar toda a execução exaustiva da automação. 
  Criação de teste exploratorio deve ser do tipo charter/session based
  Criação de testes de performance deve ser específica para os caminhos mais críticos e com maior potencial de usuários utilizando paralelamente. Utilizando como inputs relatórios de ferramenta de monitoramento de sistema caso sejam utilizados no projeto. 
  Criação de testes de usabilidade, inicialmente os testes de usabilidade devem focar nos fluxos principais para garantir que qualquer pessoa consiga sozinha utilizar a aplicação independente de suas habilidades e limitações.  
  

  Projeto de Teste
  Escopo de teste 
  
  Os testes manuais devem comtemplar apenas a suite de smoke testing ser executados apenas na versão mobile e cobrir os seguintes fluxos :
    - Cadastro da pessoa usuária: cadastro → pós-cadastro → buscar profissional
    - Busca de profissional de saúde: buscar profissional → contatar profissional
    - Edição de perfil: inserir e atualizar informações
    - Recuperação de senha: fluxo completo de esqueci minha senha


  Os testes exploratórios serão executados de forma ad hoc durante o tempo definido para a sessão. A execução focará exclusivamente na feature de busca de profissionais, permitindo explorar comportamentos, entradas inesperadas e validações que possam não estar cobertas pelos testes manuais.
  Reporte de bugs/melhorias: A coleta de evidências deve ser realizada simultaneamente às anotações rápidas durante a execução do teste exploratório (charter). Entretanto, o report formal de bugs e melhorias deve ser feito após a conclusão completa da sessão, priorizando inicialmente os problemas mais críticos para a aplicação.

  O teste automático deve cobrir o fluxo de cadastro completo de um usuário.
  Reporte de bugs: Após a execução de cada suíte de teste automático. Caso os testes falhos não gerem evidências automaticamente, o bug deve ser reproduzido manualmente antes do report para garantir que realmente o bug existe e que o teste continua válido. 

  O teste de performance deve verificar o tempo de resposta nas operações críticas de busca de profissional e recuperação de senha e a estabilidade sob carga, simulando X usuários simultâneos. Esse teste será executado na versão web do sistema, utilizando as ferramentas JMeter. e <------------------------- ATUALIZAR AQUI É válido também considerar a heurística/sentimento/conhecimento dos testadores durante a execução dos demais testes para levantar possíveis melhorias de performance.
  Report de bugs/melhoria:
    *Os casos em que o sistema não responde corretamente às requisições dos usuários devem ser reportados como bugs.
    *Problemas relacionados ao tempo de resposta inferior a 3 segundos também devem ser tratados como bugs, por indicarem falha funcional.
    *Outros problemas de performance, como lentidão ou otimização de recursos que não interrompem a funcionalidade, devem ser apontados como melhoria.
 

  O teste de usabilidade deve ser aplicado apenas aos fluxos críticos das features de cadastro de usuário e busca de profissionais, e devem contemplar:
    - Navegação via teclado
    - Uso com leitores de tela (VoiceOver)
    - Contraste de cores e legibilidade (nota mínima 90 no Lighthouse)
  

