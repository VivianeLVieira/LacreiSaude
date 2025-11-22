Script: carga_login.yaml
Ferramenta: Artillery

Cenário: 350 usuários virtuais tentaram 1 login cada, acessando o endpoint /v1/lacreiid/auth/login/ com email e senha fornecidos.

Fases: 
warm up-> 1→5 usuários/segundo
ramp up-> 5→10 usuários/segundo
spike -> 10→30 usuários/segundo

Resultado: 350 requisições timed out, apenas 2 respostas 403.

Tempo de resposta das poucas respostas: 4,6 a 5,5 segundos.

Conclusão: A API não suportou a carga, indicando sobrecarga, bloqueio ou rate limit agressivo.

