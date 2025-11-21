Feature: Cadastro da pessoa usuária no sistema

  Scenario Outline: Usuário realiza cadastro
    Given o usuário está na página principal
    When ele clica em "Criar conta"
    And ele insere <nome>, <sobrenome>, <email>, <confirme_email>, <senha>, <confirme_senha>
    And marca a checkbox <concorda_termos> para concordar com os termos e políticas de privacidade
    And marca a checkbox <confirma_idade> para declarar que possui mais de 18 anos de idade
    And clica no botão "Cadastrar"
    Then ele deve ver <resultado> #atualmente existe um redirecionamento da tela (que informa ao usuário que ele precisa confirmar a criação da conta via email) para a tela de login, que impossibilita validar a mensagem de cadastro, inclusive o usuário também não consegue lê-la
    #Acessar link API para confirmar email automaticamente sem precisar abrir email manualmente
    #continuar teste na tela de pós-cadastro pra concluir todo processo de cadastro

  Examples:
    | nome   | sobrenome | email                        | confirme_email               | senha           | confirme_senha | concorda_termos | confirma_idade | resultado                     |
    | Vi     | Ly        | testertestingdone@gmail.com  | testertestingdone@gmail.com  | Lacrandoem321$  | Lacrandoem321$ | true            | true           | confirme email                |
