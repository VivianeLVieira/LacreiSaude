@allowedToFail 
Feature: Cadastro da pessoa usuária no sistema

  Scenario Outline: Usuário realiza cadastro
    Given o usuário está na página principal
    When ele clica em "Criar conta"
    And ele insere <nome>, <sobrenome>, <email>, <confirme_email>, <senha>, <confirme_senha>
    And marca a checkbox <concorda_termos> para concordar com os termos e políticas de privacidade
    And marca a checkbox <confirma_idade> para declarar que possui mais de 18 anos de idade
    And clica no botão "Cadastrar"
    Then ele deve ver <resultado> #bug, atualmente existe um redirecionamento da tela (que informa ao usuário que ele precisa confirmar a criação da conta via email) para a tela de login, que impossibilita validar a mensagem de cadastro, inclusive o usuário também não consegue lê-la
    #Acessar link API para confirmar email automaticamente sem precisar abrir o email manualmente #melhoria
    #continuar teste na tela de pós-cadastro pra concluir todo processo de cadastro 

  Examples:
    | nome   | sobrenome | email                        | confirme_email               | senha           | confirme_senha | concorda_termos | confirma_idade | resultado                     |
    | Vi     | Ly        | testertestingdone@gmail.com  | testertestingdone@gmail.com  | Lacrandoem321$  | Lacrandoem321$ | true            | true           | usuário cadastrado            |
    #| Vi     | Ly        | testertestingdone@gmail.com  | testertestingdone@gmail.com  | Lacrandoem321$  | outrasenha     | true            | true          | mensagem de erro              | confirmar resultado esperado


  # Scenario: Usuário tenta logar antes de confirmar email

  # Scenario: Usuário tenta cadastrar um email já cadastrado

  # Scenario: Usuário tenta cadastrar um email inválido # email de empresa pode ser aceito?

  # Scenario: Usuário tenta cadastrar uma senha fraca ou inválida

  # Scenario: Usuário deixa campos obrigatórios vazios ao criar conta

  # Scenario: Usuário tentar se cadastrar mesmo sem atender ao criterio de idade mínima

  # Scenario: Usuário tentar se cadastrar sem aceitar os termos de e condições de privacidade

  # Scenario: Usuário com nome muito longo


