# 📊 BI & Analytics Platform (Power BI & Ecossistema Microsoft)

Bem-vindo(a) ao repositório do projeto **BI & Analytics Platform**. Este repositório documenta a construção de uma solução completa de Inteligência de Negócios e Análise Preditiva, cobrindo desde a **Engenharia de ETL em M Code**, passando por **Modelagem Dimensional (Star Schema)**, **DAX Avançado**, até a integração com **Machine Learning em Python** e automações no **Power Platform**.

---

## Arquitetura e Módulos da Solução

bi-analytics-power-platform/
│
├── 📁 01_power_query_mcode/          # Pipelines de ETL e Tratamento Resiliente de Erros em M
├── 📁 02_modelagem_star_schema/       # Modelagem Dimensional (Fatos, Dimensões e dData)
├── 📁 03_dax_avancado_indicadores/    # Métricas de Negócio, Time Intelligence e Tabelas Virtuais
├── 📁 04_machine_learning_python/     # Predição (Classificação/Regressão) e Clusterização
└── 📄 README.md                       # Documentação Oficial da Solução

---

## Módulo 1: Engenharia de ETL & Linguagem M (Power Query)

Nesta etapa, a camada de extração e transformação foi desenvolvida utilizando scripts avançados em Linguagem M no Editor Avançado do Power Query, focando na estabilidade e resiliência da pipeline de dados.

### Destaques Técnicos da Implementação:

* **Tratamento de Exceções (try ... otherwise):** Prevenção de falhas em atualizações agendadas (scheduled refreshes) através da captura preventiva de erros de tipagem e valores ausentes ou corrompidos.
* **Parametrização Dinâmica de Ambientes:** Implementação de variáveis de ambiente para chaveamento automático de conexões de dados entre ambientes (DEV, HOMOLOG, PROD).
* **Tratamento Cultural de Dados (pt-BR):** Padronização e sanitização de formatos numéricos e temporais locais e internacionais.
---

---

## Módulo 2: Modelagem Dimensional (Star Schema) & DAX

Nesta etapa, estruturamos a modelagem dimensional no padrão **Star Schema**, garantindo performance e integridade analítica para as consultas no Power BI.

### Destaques Técnicos da Implementação:
- **Modelo Relacional:** Construção da tabela dimensão de calendário (`dData`) conectada à tabela fato (`fVendas`) com relacionamento $1:N$ e filtro único.
- **Governança do Modelo:** Configuração de colunas não agregáveis (ex: `Ano`) como *Não Resumir* para evitar somas indevidas de metadados.
- **Medidas Analíticas (DAX):**
  - `Total Faturamento`: Soma total das vendas (`SUM`).
  - `Total Unidades`: Totalização do volume de itens vendidos.
  - `Ticket Medio`: Cálculo defensivo utilizando a função `DIVIDE` para prevenção de erros de divisão por zero.