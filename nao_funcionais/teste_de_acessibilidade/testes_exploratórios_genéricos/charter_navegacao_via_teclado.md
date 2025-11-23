## Teste Exploratório Genérico: Navegação por Teclado

**Charter**

Validar que todos os elementos interativos da interface podem ser acessados e utilizados exclusivamente por meio do teclado, garantindo acessibilidade adequada e funcionamento correto em diferentes navegadores

**ID:** NFR-EXP-ACCS-KEYBOARD-001

**Objetivo da Sessão**

Explorar a aplicação utilizando apenas o teclado para assegurar que navegação, foco, acionamento de elementos, formulários e fluxos essenciais funcionem conforme o esperado

**Duração:** 30 minutos

**Prioridade:** Alta

**Recursos e Setup**

1. **Ambiente**
    - Acessar a aplicação no ambiente de teste ou staging
2. **Dispositivos e Navegadores**
    - Desktop
    - Navegadores recomendados: Chrome, Firefox, Edge e Safari
3. **Dados de Teste**
    - Usuários e informações fictícias

**Áreas a Explorar**

- Navegação via teclado
- Ordem lógica de foco
- Visibilidade do foco em todos os elementos
- Acionamento correto dos seguintes elementos:
    - Botões
    - Links
    - Campos de formulário
    - Menus
    - Controles que dependem de setas, como listas, selects, dropdowns, campos numéricos e componentes deslizantes (sliders)
- Uso das setas para percorrer opções, expandir/contrair menus, navegar em listas e alterar valores de controles que as suportam
- Comportamento de validações e exibição de mensagens de erro ao utilizar apenas o teclado
- Ausência de keyboard traps e loops de foco
- Capacidade de acessar e editar campos de texto utilizando apenas o teclado usando barra de espaço do teclado
- Possibilidade de marcar e desmarcar checkboxes utilizando Enter

**Observações**

- Registrar elementos que não recebem foco ou que não apresentam indicador visual adequado
- Reportar travamentos de foco (keyboard traps) e inconsistências na ordem de navegação
- Observar se todas as ações podem ser executadas sem uso do mouse

**Critérios de Aceite**

- Todos os elementos interativos recebem foco por teclado
- O foco é sempre visível e segue um padrão consistente
- Não há keyboard traps ou loops infinitos
- A ordem do foco segue a hierarquia lógica e estrutural da página
- As ações principais (login, cadastro e busca) podem ser concluídas usando apenas o teclado