# Lacrei_Saude

 Sistema Alvo: https://paciente-staging.lacreisaude.com.br/ 
 
 Reservar contas de email válidas para testes manuais e automáticos.

 Configurar ambiente de testes:
 Listar ferramentas necessárias
 Instalação de softwares e dependências  
 Variáveis de ambiente

# **Execução de Testes**

## Testes manuais:

Os testes manuais do projeto estão escritos no formato **Gherkin**, utilizando **Scenario Outline** com exemplos de possíveis entradas para o mesmo fluxo.

### **Passos para localizar os testes**

1. Acesse a raiz do projeto.
2. Entre na pasta `cypress`.
3. Navegue até `cypress/e2e/`.
4. Dentro desta pasta, localize os arquivos com extensão `.feature`.
    - Cada arquivo `.feature` contém cenários escritos em Gherkin.
    - Os Scenario Outlines permitem testar múltiplas combinações de dados para o mesmo fluxo. 
    
    
### **Passos para executar os testes**

#### **Execução manual em dispositivos móveis**

Para testar os cenários manualmente em smartphones, tablets ou no desktop, siga os passos abaixo:

1. **Preparar o ambiente de teste**
    - Abra o navegador no dispositivo (Chrome, Safari ou outro compatível).
    - Certifique-se de que o dispositivo esteja conectado à mesma rede que a aplicação em execução ou que a aplicação esteja publicada em um ambiente acessível (staging).

2. **Acessar a aplicação**
    - Digite a URL da aplicação no navegador do dispositivo.
    - Navegue até a funcionalidade que deseja testar, seguindo os passos descritos nos cenários `.feature`.

3. **Seguir os cenários**
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

###Lighthouse <----------------------------------------------------------------->

## Testes de Performance:

JMeter 






  Planejamento de testes 
  Objetivo: Validação de funcionalidades, performance, segurança, usabilidade e responsividade.
  Tipos de teste: funcional, não funcional, exploratório e automático.
  Relatório: Ao fim da execução de cada rodada e tipo de testes, um relatório deve ser gerado com a análise da qualidade das funcionalidades testadas e o número de bugs. Ao fim de toda a bateria de testes, o testador deve liberar ou não a versão testada para ir para produção. 

  Lista de Funcionalidades:
  Cadastro da pessoa usuária
  Busca de profissional de saúde
  Edição de perfil
  Recuperação de senha
  

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
  
Escopo negativo: As funcionalidades não listadas no plano de testes, bem como os fluxos alternativos que levem à exaustão do sistema, serão desconsiderados nesta execução.
O foco permanece apenas nas funcionalidades e cenários previamente definidos, garantindo que os testes sejam direcionados e produtivos.



Execução de Testes 

 Como executar os testes: 
 
 Testes Manuais -> Os testes manuais seguem a metodologia Gherkin, permitindo descrever o comportamento esperado do sistema de forma clara e estruturada, utilizando a sintaxe:
  Exemplo de Teste
  Feature: Cadastro de Usuário
  Scenario: Usuário cadastra com sucesso
    Given que o usuário acessa a página de cadastro
    When ele preenche o formulário com:
      | Nome            | Email                 | Senha     |
      | viviane vieira  | viviane@mail.com      | testando  |
    And clica no botão "Cadastrar"
    Then ele deve ver a mensagem "Cadastro realizado com sucesso"

Inputs de Teste
Para cada cenário, existem exemplos de inputs em forma tabular para facilitar a execução e validação dos testes, a fim de cobrir fluxos principais e alternativos de sucesso e falhos.
Resultados esperados: Mensagens de sucesso ou erro e criação de registros no banco.

Reporte de bugs/melhorias: Após a execução de cada caso de teste.

Testes automáticos
 ---------->>>>>> Explicar como executar uma suíte de testes automáticos.

Exploratório com charters: 
A execução de um teste exploratório consiste em seguir o objetivo definido, navegando pela área ou funcionalidade alvo e testando diferentes entradas, combinações e fluxos alternativos. Durante a exploração, observe o comportamento do sistema, as mensagens exibidas e quaisquer inconsistências, registrando bugs, ideias de melhoria e evidências como capturas de tela ou logs. É importante manter o foco nos pontos-chave definidos no charter, revisar e priorizar os problemas encontrados ao final da sessão. Por fim, compartilhar os resultados com a equipe ou registrar no repositório/Notion, aproveitando a flexibilidade do teste exploratório para identificar questões não previstas inicialmente. Esse processo também ajuda o testador a aprender mais rapidamente sobre a aplicação, compreendendo seus fluxos e funcionamento, o que facilita a identificação de bugs de forma mais eficiente.

Documentação:
 Estrutura de pastas e arquivos

/docs
   └─ casos_de_teste/
       ├─ cadastro_usuario.feature
       └─ ...
       
Checklist de segurança 
  Testes realizados no ambiente de staging
  Dados de login e senha devem ser escondidos no .ENV

  

Processo de rollback dos testes automatizados (não se aplica ao desafio, mas o texto a seguir sugere como poderia ser feito) ------------------>
 
   Seed Data e Verificação de Consistência -> O projeto pode manter um arquivo de referência contendo o estado base do banco de dados ou seed data. Esse arquivo representa a configuração inicial esperada de todos os dados do sistema e deverá ser utilizado para:

  1. Restaurar rapidamente o banco de dados para um estado conhecido durante desenvolvimento ou testes.

  2. Garantir consistência após a execução de scripts de alteração (migrations, updates ou correções manuais).

  3. Facilitar processos de QA, integração contínua (CI/CD), versionamento de dados e rollback em caso de falhas.

  Como deve funcionar: 

  Arquivo de Seed -> Contém todos os registros iniciais do banco, servindo como fonte de verdade para o estado esperado.
  
  Aplicação de Seeds -> Scripts ou comandos podem ser executados para inserir ou restaurar os dados conforme definidos no arquivo de seed.
  
  Verificação de Consistência -> Após alterações no banco, scripts de comparação podem ser utilizados para identificar divergências entre os dados atuais e o estado definido no seed. Isso garante que as alterações não corrompam a base ou violem regras de integridade.

  Durante o teste -> Durante a execução dos testes, a base de dados pode ser restaurada após a execução dos casos de teste ou entre testes que possam se sobrepor.
  Essa prática garante que cada teste seja executado em um estado conhecido e consistente do banco de dados, que resultados inesperados causados por alterações de testes anteriores sejam evitados e que a integridade e confiabilidade dos testes sejam mantidas.

  Exemplo de seed data: Ter um grupo de usuários previamente cadastrados no banco de dados, ter dados de consultas. 

