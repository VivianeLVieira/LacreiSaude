## Teste de contraste de cores e legibilidade: Lighthouse

**ID:** NFR-ACCS-LIGHTHOUSE-001

**Objetivo:**
Validar de forma automatizada a acessibilidade da aplicação, garantindo que ela atenda aos padrões do WCAG, com foco em contraste de cores e legibilidade

**Escopo:**

- Verificação automática de elementos visuais e de interação que impactam usuários com deficiência
- Avaliação da pontuação mínima de 90 em acessibilidade

**Como executar:**

1. Abrir Lighthouse
    - Acesse a página a ser testada no Chrome
    - Abra o DevTools (F12 ou Ctrl+Shift+I)
    - Vá até a aba **Lighthouse**, selecione **Accessibility** e clique em **Generate report**

2. Executar auditoria - o Lighthouse irá analisar automaticamente:
    - Contraste de cores do texto em relação ao fundo
    - Legibilidade dos textos (tamanho e escalabilidade)
    - Labels de formulários e elementos interativos
    - Uso de cores para transmitir informação
    - Estrutura semântica básica (títulos, headings)

3. Analisar resultados do relatório

    A. Lighthouse apresenta itens como Fail / Pass / Not applicable, com explicação detalhada de cada problema

    B. Contraste:
    - Verificar todos os textos sinalizados com baixa taxa de contraste
    - Conferir cores de fundo e texto, tamanhos e estado dos elementos

    C. Legibilidade:
    - Confirmar se fontes são grandes o suficiente e se textos não ficam truncados
    - Lighthouse sinaliza textos pequenos ou que podem prejudicar leitura em zoom
    
4. Verificar mensagens e feedbacks
    - Lighthouse indica se mensagens de alerta ou erro dependem apenas de cor para transmitir informação
    - Conferir visualmente e registrar elementos que necessitam de melhoria

5. Registrar evidências
    - Para cada item sinalizado, capturar a seção do relatório do Lighthouse
    - Documentar o tipo de problema (ex.: contraste insuficiente, texto pequeno, dependência de cor)
    - Caso necessário, complementar com screenshots da interface