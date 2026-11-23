# BTax — Brazilian Tax
## Documento de Visão, Escopo e Planejamento

**Slogan:** O sistema tributário brasileiro, sem complicação.

### 1. Contextualização e proposta
O BTax é um projeto acadêmico desenvolvido por estudantes de Ciência da Computação da Universidade da Amazônia (UNAMA).
A proposta surgiu da percepção de que o sistema tributário brasileiro é complexo e, muitas vezes, pouco compreensível para quem não possui conhecimentos de contabilidade ou legislação tributária.

A quantidade de impostos, as diferenças entre as competências federal, estadual e municipal, as regras específicas de cada setor e as mudanças introduzidas pela Reforma Tributária tornam difícil compreender quanto se paga, por que se paga e como esses valores afetam a economia.

O BTax pretende aproximar esse conhecimento da população por meio de uma plataforma digital que reúne explicações educativas, informações fundamentadas em fontes verificáveis e ferramentas de simulação tributária.

Trata-se de uma iniciativa independente, sem vínculo institucional ou endosso do Governo Federal ou da Receita Federal.

### 2. Objetivos do projeto
O objetivo principal é facilitar o acesso à informação sobre o sistema tributário brasileiro, tornando seus conceitos, regras e transformações mais compreensíveis.

Objetivos específicos:
- Explicar os principais tributos brasileiros e suas formas de incidência.
- Apresentar a origem e a evolução da tributação no Brasil.
- Demonstrar por que empresas precisam recolher tributos e como essa cobrança pode afetar o consumidor.
- Explicar a Reforma Tributária, suas motivações e mudanças.
- Apresentar as diferenças entre o regime regular, o Simples Nacional e o tratamento aplicável ao MEI.
- Disponibilizar simulações baseadas nos motores de cálculo de código aberto da Receita Federal, dentro dos regimes efetivamente suportados.
- Reunir fontes oficiais, legislação e notícias complementares.

### 3. Público-alvo
- **Cidadãos e consumidores:** pessoas interessadas em entender como os impostos estão presentes nos produtos e serviços que consomem.
- **Estudantes:** pessoas que desejam aprender sobre tributação, economia e legislação brasileira.
- **MEIs e pequenos empreendedores:** pessoas que precisam compreender as obrigações tributárias relacionadas às suas atividades.
- **Empresas e profissionais:** usuários que buscam consultar informações, conhecer mudanças e experimentar simulações tributárias.

### 4. Diretrizes de conteúdo e comunicação
- Simplicidade sem superficialidade. Textos curtos, objetivos e em português brasileiro.
- Respostas a perguntas práticas: O que é? Por que existe? Sobre o que incide? Quem recolhe? Efeitos nos preços? O que muda com a reforma?
- Diferenciação clara entre fatos históricos, normas vigentes, mudanças futuras, propostas e notícias.

### 5. Estrutura e organização do site
- **5.1. Página inicial (Início):** Apresentação, Quem somos (UNAMA), 4 Cards modulares, Linha do tempo de evolução, Funcionalidades integradas, CTA para simulador, Rodapé.
- **5.2. Página Tributos:** PIS/Pasep, Cofins, IPI, ICMS, ISS, CBS, IBS, Imposto Seletivo. Ficha técnica detalhada com 9 campos padronizados.
- **5.3. Página História:** Da Antiguidade e Brasil Colônia à Reforma de 1965, Constituição de 1988, modelo pré-reforma e a EC 132/2023.
- **5.4. Página Reforma Tributária:** Motivações, modelo antes vs depois, CBS/IBS/IS, cronograma de transição (2026-2033), impactos em empresas e consumidores, Simples Nacional e MEI.
- **5.5. Página Simulador:** Formulário com filtros, cálculo comparativo, gráficos de pizza e barra, detalhamento de alíquotas, memória de cálculo passo a passo e histórico de simulações.
- **5.6. Página Atualizações:** Legislações, regulamentações, comunicados e notícias com distinção jurídica, resumo da equipe e link oficial.
- **5.7. Página Referências:** Aba 1 (Fontes consultadas agrupadas por instituição) e Aba 2 (Nossa equipe UNAMA com cards individuais de portfólio).

### 6. Repositórios da Receita Federal
1. **Regime Regular:** [calculadora-rtc-regime-regular](https://github.com/ReceitaFederal/calculadora-rtc-regime-regular) — API REST (CBS, IBS, IS) na porta local 8080.
2. **Simples Nacional:** [calculadora-rtc-simples-nacional](https://github.com/ReceitaFederal/calculadora-rtc-simples-nacional) — API REST (CBS, IBS) na porta local 8082.