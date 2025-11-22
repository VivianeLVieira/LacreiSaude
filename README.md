# Lacrei Saúde

**Sistema Alvo:** https://paciente-staging.lacreisaude.com.br/ 

O Lacrei Saúde é um sistema que conectamos pessoas LGBTQIAPN+ com profissionais de saúde qualificados, proporcionando experiências de cuidado seguras e inclusivas.

## Planejamento de testes

**Objetivo**: Validação de funcionalidades, performance, acessibilidade, usabilidade e responsividade.

**Tipos de teste**: funcional, não funcional, exploratório e automático.

**Relatório**: Ao fim da execução de cada rodada e tipo de testes, um relatório deve ser gerado com a análise da qualidade das funcionalidades testadas e o número de bugs. Ao fim de toda a bateria de testes, o testador deve liberar ou não a versão testada para ir para produção. 

## Funcionalidades

### Escopo positivo

1. Cadastro da pessoa usuária
1. Busca de profissional de saúde
1. Edição de perfil
1. Recuperação de senha

### Escopo negativo

As funcionalidades não listadas no plano de testes, bem como os fluxos alternativos que levem à exaustão do sistema, serão desconsiderados.

## Pré-requisitos

As seguintes ferramentas são necessárias para os testes:

- Testes Funcionais: Gherkin, Notion, GitHub
- Automação: Cypress + Cucumber
- CI/CD: GitHub Actions
- Acessibilidade: Lighthouse, DevTools, VoiceOver
- Performance: Artillery
- Gestão de Bugs: GitHub Issues  

## Execução de Testes

Para detalhes sobre como executar os testes, veja o documento [Execução de Testes](docs/execucao_de_testes.md).

## Relatório de Testes

Para detalhes sobre os resultados dos testes, veja o documento [Relatório de Testes](docs/relatorio_de_testes.md).
