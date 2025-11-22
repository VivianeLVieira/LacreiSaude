## **Teste de Carga 1**

**ID:** NFR-LD-001*

**Título:** Verificar se a aplicação suporta 50 usuários logando simultaneamente

**Escopo:** Endpoint de autenticação

**Critério de Sucesso:** A aplicação deve processar o volume de requisições definido com um tempo de resposta aceitável 

### **Cenário de Teste**

1. Simular 50 usuários virtuais acessando o endpoint de login em um crescimento de 0 a 50 usuários em 1 minuto
2. Cada usuário deverá:
    - Enviar requisição POST com credenciais válidas
    - Aguardar resposta
    - Encerrar a sessão
3. Duraçao da carga de pico: 5 minutos

### **Dados de Teste**

Endpoint: v1/lacreiid/auth/login/ 

Tipo: Post

Corpo da requisição:

```json
{
  "email": "testertesting@gmail.com",
  "password": "Lacrandoem321$"
}
```

### **Resultados Esperados**

- Tempo médio de resposta: < 2.000 ms
- Tempo máximo de resposta: < 5.000 ms
- Nenhum travamento, queda ou reinicialização não planejada do sistema

### **Entregáveis**

- Relatório gerado automaticamente pela ferramenta de teste
- Report técnico com das métricas coletadas:
    - Tempo de resposta médio
    - Tempo máximo de resposta
    - Erros 
    - Throughput (requisições por segundo)
    - Estabilidade do sistema (CPU, memória, threads, conexões de banco de dados)


## **Teste de Carga 2**

**ID:** NFR-LD-002*

Título: Testar a capacidade da aplicação de suportar 50 usuários buscando por um profissionais simultaneamente

**Escopo:** Endpoint de busca de profissionais

.

.

.






*NFR-> Non-Functional Requirement (Teste não funcional)

LD-> Load Test (teste de carga)

001-> Número sequencial do caso de teste