Funcionalidade ---------->>>>>>>>> add na documentacao notion que esses testes pode ser aplicados a todas telas
## Teste Exploratório Genérico: Navegação via VoiceOver

**Charter**

Validar que a aplicação é totalmente utilizável por meio do leitor de tela VoiceOver, assegurando que todas as informações relevantes sejam anunciadas corretamente e que os fluxos essenciais possam ser concluídos sem apoio visual

**ID:** NFR-EXP-ACCS-VOICEOVER-001

**Objetivo da Sessão**

Explorar a aplicação utilizando exclusivamente o VoiceOver, verificando a qualidade da leitura, a ordem de navegação, a descrição dos elementos e a possibilidade de realizar ações essenciais apenas com comandos do leitor de tela

**Duração:** 30 minutos ??????

**Prioridade:** Alta

**Recursos e Setup**

1. **Ambiente**
- Acessar a aplicação no ambiente de teste ou staging
2. **Dispositivos e Navegadores**
    - VoiceOver ativado no dispositivo
    - Navegadores recomendados: Chrome e Safari
3. **Dados de Teste**
    - Usuários e informações fictícias

**Áreas a Explorar**

- Navegação por gestos do VoiceOver (varredura linear e navegação por rotor)
- Leitura e anúncio correto de:
    - Botões e links
    - Campos de texto
    - Checkboxes, radios e menus
    - Labels, instruções e mensagens de erro
    - Elementos dinâmicos e pop-ups
- Ordem lógica de navegação
- Identificação do tipo e estado dos elementos (ex.: “botão”, “selecionado”, “desativado”)
- Funcionamento de validações, mensagens de erro e confirmações
- Comportamento durante mudanças de página ou atualização de conteúdo (focus management)

**Observações**

- Registrar elementos sem descrição adequada ou com rótulos incorretos
- Identificar anúncios redundantes, ausentes ou confusos
- Documentar quebras de fluxo, inconsistências de foco ou falhas na navegação por rotor
- Priorizar funcionalidades críticas e interações essenciais
- Verificar se os elementos dinâmicos são anunciados automaticamente (estados, mensagens, resultados de busca)

**Critérios de Aceite**

- Todos os elementos interativos são anunciados corretamente, com rótulos claros e sem ambiguidades
- A ordem de navegação segue a estrutura lógica da interface
- É possível concluir fluxos essenciais usando apenas VoiceOver
- Mensagens de erro, alertas e mudanças de estado são anunciadas imediatamente
- Não há elementos inacessíveis, sem descrição ou impossíveis de acionar via gestos ou rotor
- O foco é gerido corretamente após navegação, envio de formulários e abertura de modais