# BTax — Como Executar e Trabalhar no Projeto

**Slogan:** O sistema tributário brasileiro, sem complicação.  
**Origem:** Projeto Acadêmico — Ciência da Computação, UNAMA (Universidade da Amazônia).

---

## 📁 Localização do Código-Fonte

O projeto completo está localizado no diretório:
`C:\Users\ticoa\.gemini\antigravity\scratch\btax`

Você pode abrir essa pasta rapidamente dando duplo clique no script:
`ABRIR_PASTA_DO_CODIGO.bat` (localizado nesta mesma pasta).

---

## 🚀 Como Iniciar Rapidamente

### Opção 1: Pelo Atalho (Mais Fácil)
Dê um duplo clique no arquivo:
👉 `INICIAR_BTAX.bat`

O script abrirá o terminal, iniciará o servidor Vite e abrirá seu navegador automaticamente em:
`http://localhost:5173`

---

### Opção 2: Pelo Terminal (PowerShell / Prompt de Comando)
Abra o terminal e execute os comandos:

```powershell
# 1. Navegue até o diretório do projeto
cd "C:\Users\ticoa\.gemini\antigravity\scratch\btax"

# 2. Inicie o servidor de desenvolvimento
npm.cmd run dev
```

Abra seu navegador em: `http://localhost:5173`

---

## 🛠️ Comandos Disponíveis no Projeto

| Comando | Descrição |
| :--- | :--- |
| `npm.cmd run dev` | Inicia o servidor local de desenvolvimento com Hot Reload (Vite). |
| `npm.cmd run build` | Compila o projeto com TypeScript (`tsc -b`) e gera o bundle de produção otimizado na pasta `dist/`. |
| `npm.cmd run preview` | Visualiza localmente a versão gerada do build de produção. |
| `npm.cmd run lint` | Executa o linter ultrarrápido (`oxlint`) para verificação estática do código. |

---

## 📦 Tecnologias Utilizadas

- **Framework:** React 19 + TypeScript
- **Bundler / Dev Server:** Vite 8
- **Roteamento:** React Router DOM 7
- **Gráficos Interativos:** Recharts 3
- **Ícones:** Lucide React
- **Estilização:** CSS Moderno com Design System proprietário (Variáveis CSS, Dark/Light modes, Layouts Responsivos e acessíveis).