# Guia de Integração — Motores Tributários da Receita Federal

O BTax foi projetado para integrar os motores oficiais de código aberto disponibilizados pela **Receita Federal do Brasil**.

---

## 🏛️ Repositórios Oficiais

### 1. Regime Regular (CBS, IBS e Imposto Seletivo)
- **Repositório GitHub:** [ReceitaFederal/calculadora-rtc-regime-regular](https://github.com/ReceitaFederal/calculadora-rtc-regime-regular)
- **Tecnologia:** Java / Spring Boot
- **Porta Padrão:** `8080`
- **Swagger / OpenAPI:** `http://localhost:8080/api/swagger-ui.html`
- **Escopo:** Operações tributárias do regime normal de apuração com cálculo de CBS (União), IBS (Estados/Municípios) e Imposto Seletivo (IS).

### 2. Simples Nacional (CBS e IBS)
- **Repositório GitHub:** [ReceitaFederal/calculadora-rtc-simples-nacional](https://github.com/ReceitaFederal/calculadora-rtc-simples-nacional)
- **Tecnologia:** Java / Spring Boot
- **Porta Padrão:** `8082`
- **Swagger / OpenAPI:** `http://localhost:8082/api/swagger-ui.html`
- **Escopo:** Operações realizadas por optantes do Simples Nacional para cálculo das parcelas correspondentes de CBS e IBS.

---

## 🚀 Como Executar os Motores Localmente

### Pré-requisitos
- Docker e Docker Compose instalados, OU
- Java JDK 21+ e Maven/Gradle.

### Exemplo via Docker:
```bash
# Clone e execute o Regime Regular
git clone https://github.com/ReceitaFederal/calculadora-rtc-regime-regular.git
cd calculadora-rtc-regime-regular
docker build -t calculadora-regime-regular .
docker run -p 8080:8080 calculadora-regime-regular

# Clone e execute o Simples Nacional
git clone https://github.com/ReceitaFederal/calculadora-rtc-simples-nacional.git
cd calculadora-rtc-simples-nacional
docker build -t calculadora-simples-nacional .
docker run -p 8082:8082 calculadora-simples-nacional
```

---

## 🔌 Estrutura de Integração no Frontend BTax (Fase 2)

No frontend React, pode ser criada uma camada de serviço em `src/services/rtcApi.ts`:

```typescript
// Exemplo de serviço de conexão
export async function calcularOperacaoRTC(dados: {
  regime: 'regular' | 'simples';
  valor: number;
  ncm?: string;
  ufOrigem: string;
  ufDestino: string;
}) {
  const baseUrl = dados.regime === 'regular' 
    ? 'http://localhost:8080/api' 
    : 'http://localhost:8082/api';

  try {
    const response = await fetch(`${baseUrl}/calcular`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(dados)
    });
    if (!response.ok) throw new Error('Falha no motor RTC');
    return await response.json();
  } catch (error) {
    console.warn('Motor RTC local indisponível, utilizando motor demonstrativo:', error);
    // Retorna fallback demonstrativo já construído no BTax
    return null;
  }
}
```

O BTax já possui modo fallback demonstrativo 100% calibrado de acordo com a LC 214/2025, garantindo que o simulador funcione com excelência mesmo sem os serviços Java rodando em segundo plano.