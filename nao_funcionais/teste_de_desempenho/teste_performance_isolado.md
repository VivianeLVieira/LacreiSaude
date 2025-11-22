## **Teste de Performance Isolado 1**

**ID:** NFR-PERF-ISO-001

**Título:** Verificar tempo de resposta da operações de autenticação sem carga concorrente

**Escopo:** Endpoint de autenticação

**Critério de Sucesso:** A operação deve ser concluída corretamente dentro do tempo de resposta aceitável, sem erros ou falhas do sistema

### **Cenário de Teste**

1. Executar a operação de login, sem gerar carga concorrente
2. A operação deverá:
    - Enviar requisição
    - Aguardar resposta do sistema
    - Registrar métricas de tempo de resposta, erros e uso de recursos
3. Iterações recomendadas: > 5 execuções para coleta de métricas consistentes

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
- Tempo máximo de resposta: < 5.000 ms (operações críticas)
- Nenhum travamento, queda ou reinicialização não planejada do sistema

### **Entregáveis**

- Relatório gerado automaticamente pela ferramenta de teste
- Report técnico com as métricas coletadas:
    - Tempo de resposta médio
    - Tempo máximo de resposta
    - Erros
    - Throughput (requisições por segundo)
    - Estabilidade do sistema (CPU, memória, threads, conexões de banco de dados)

## **Teste de Performance Isolado 2**

**ID:** NFR-PERF-ISO-002

**Título:** Verificar tempo de resposta da operação de buscar profissionais sem carga concorrente

**Escopo:** Endpoint de busca de profissionais

.

.

.



*NFR-> Non-Functional Requirement (Teste não funcional)

PERF-> Performance Test (teste de performance)

001-> Número sequencial do caso de teste