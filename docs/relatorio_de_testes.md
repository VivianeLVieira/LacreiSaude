# Relatório de Testes

O surgimento de bugs críticos na aplicação alterou o planejamento inicial dos testes, impossibilitando a execução de alguns cenários previstos. A seguir, apresenta-se o relatório completo dos problemas identificados e as estratégias adotadas para minimizar seus impactos.

## ⚠️ Problemas no ambiente de staging e bugs no sistema

No terceiro dia do desafio, houve algum problema no servidor que me impediu de logar e cadastrar novos usuário na aplicação. Além do problema do servidor, funcionalidades de recuperação de senha, solicitação de um novo de e-mail de confirmação (caso o mesmo tenha expirado) também não funcionam corretamente. Esses problemas foram reportado com mais detalhes por e-mail, bloqueando a execução dos testes e a conclusão do desafio. 

Na fase de planejamento dos testes e escrita de casos de teste/charters foram aplicadas as técnicas de teste manuais ad-hoc e exploratório freestyle. Durante esse processo foi possível mapear as telas, encontrar préviamente diversos bugs e capturar evidências, tanto funcionais como não funcionais. Todas evidências foram coletadas no ambiente desktop com uso do browser Google Chrome. Não foi possível executar testes manuais em dispositivos móveis.

## ⚠️ Adição de confirmação de email automáticas
Sobre a criação e execução de testes automáticos: O sistema requisita que ao final da primeira etapa do cadastro, que o usuário entre no e-mail pessoal para confirmar o cadastro na aplicação. Nessa etapa, além de haver uma espera de 4 minutos (aconteceu 2 vezes) para que o e-mail de confirmação apareca na caixa de entrada, requer uma ação manual, o que dificulta a automação de testes. É sugerido que esse passo seja realizado automáticamente atravéz de uma requisição direto na API, garantindo que o teste não precise sair do contexto da apliçação. Por esse motivo e os mencionados anteriormente não foi possível finalizar a automação de um teste de sucesso. Como CI/CD está configurado no GitHub Actions, os testes rodando no pipeline estão falhando. 
 

## ⚠️ Não é possível gerar um relatório detalhado com cobertura de testes
Como só foi possível excutar partialmente os testes planejatos, e parte estão no modelo de charter, não é possivel mensurar corretamente a cobertura de teste para essa primeira rodada de testes manuais.
Porém, é possível afirmar que os caminhos mais críticos da aplicação foram cobertos. 

## Resultado dos testes
No total foram reportados 20 bugs e 2 melhorias. Os bugs com a tag "report_incompleto" não foram detalhados por falta de tempo, porém é possivel entender o problema pelo anexo. Ainda há bugs para serem reportados. Acesse: https://github.com/VivianeLVieira/LacreiSaude/issues 

Há bugs críticos, problemas de layout, erros de digitação, erros de persistência na base de dados, falta de tratamento de erros nas messagens de erros passadas para o usuário, o volume de dados na base parece ser insuficiente para alguns testes, problemas de usabilidade como na navegação via teclado e outros.

Os **testes de acessibilidade** usando navegação via teclado ou "TAB" também foram executados de forma exploratória com a ajuda de um checklist de acessibilidade, porém a ordem lógica de foco e o acionamento de elementos (caixas de texto, checkbox e etc) estavam contra intuitivos ou inacessíveis. Melhorias foram reportados. 

Testes com **VoiceOver** e **Lighthouse** foram parcialmente bloqueados. Sendo executados nas telas de login e criação de contas. 
O report do Lighthouse informou que a note de acessibilidade atual é 95, ou seja satisfaz os critérios de aceitação. O report do Lighthouse pode ser encontrado em nao_funcionais/teste_de_acessibilidade/lighthouse/reports

No **VoiceOver** foram achados alguns bugs que dificultam mas não impedem que o usuário realize suas atividades. 

No **teste de performce** com carga realizado no endpoint de autenticaçao, os seguintes resultados foram observados:

 - 350 requisições resultaram em timeout.

 - 2 requisições retornaram erro 403.

 - Tempo de resposta das poucas respostas válidas variou entre 4,6 e 5,5 segundos, acima do esperado.

A API não suportou a carga aplicada, indicando possíveis problemas de sobrecarga, bloqueio ou limitação de acesso agressivo. Bugs foram reportados. 

Detalhe completos da execução estão disponíveis na pasta de reports:
nao_funcionais/teste_de_desempenho/reports

Não foi possível executar **testes de responsividade** da aplicação nos devices inicialmente planejados, porém alguns erros de usabilidade e layout foram encontrados e reportados.

Alguns testes do **Checklist de Segurança** não puderam ser executados devido a limitações de acesso ao banco de dados e ferramentas de monitoramento.
O checklist de segurança está em andamento, com 8 itens validados de um total de 20.
É necessário priorizar a implementação de políticas de backup e rollback.

### Conclusão

Embora tenha sido necessário priorizar determinados testes e replanejar algumas execuções de teste, a análise da severidade dos bugs e dos problemas de ambiente indica que esta versão do sistema ainda não está pronta para ser colocada no ambiente de produção e disponibilizada ao público.
