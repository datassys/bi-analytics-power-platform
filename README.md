# 📊 BI & Analytics Platform (Power BI & Ecossistema Microsoft)

Bem-vindo(a) ao repositório do projeto **BI & Analytics Platform**. Este repositório documenta a construção de uma solução completa de Inteligência de Negócios e Análise Preditiva, cobrindo desde a **Engenharia de ETL em M Code**, passando por **Modelagem Dimensional (Star Schema)**, **DAX Avançado**, até a integração com **Machine Learning em Python** e automações no **Power Platform**.

---

## 🛠️ Arquitetura e Módulos da Solução

bi-analytics-power-platform/
│
├── 📁 01_power_query_mcode/          # Pipelines de ETL e Tratamento Resiliente de Erros em M
├── 📁 02_modelagem_star_schema/       # Modelagem Dimensional (Fatos, Dimensões e dData)
├── 📁 03_dax_avancado_indicadores/    # Métricas de Negócio, Time Intelligence e Tabelas Virtuais
├── 📁 04_machine_learning_python/     # Predição (Classificação/Regressão) e Clusterização
└── 📄 README.md                       # Documentação Oficial da Solução

---

## 🚀 Módulo 1: Engenharia de ETL & Linguagem M (Power Query)

Nesta primeira etapa, focamos na camada analógica do **Power Query**, utilizando a **Linguagem M no Editor Avançado** para construir pipelines de dados resilientes e prontas para ambiente de produção corporativo.

### 🌟 Diferenciais Técnicos Implementados:
- **Tratamento Elegante de Exceções (`try ... otherwise`):** Captura e tratamento preventivo de falhas de conversão de tipos (datas inválidas, textos em colunas numéricas) para impedir a quebra de atualizações agendadas (*scheduled refreshes*).
- **Parametrização Dinâmica de Ambientes:** Uso de parâmetros nativos do M Code para alternar dinamicamente endpoints de API e conexões entre ambientes (`DEV`, `HOMOLOG`, `PROD`) sem alterar o código-fonte da aplicação.
- **Sanitização de Dados e Regras Culturais (`pt-BR`):** Garantia da interpretação correta de caracteres numéricos decimais e padronização de formatos de datas locais vs. internacionais.

---

## 💻 Como Executar os Scripts em M
1. Abra o **Power BI Desktop**.
2. Vá em **Transformar Dados** > **Nova Fonte** > **Consulta Nula**.
3. Na guia **Exibir**, abra o **Editor Avançado**.
4. Copie o script localizado na pasta `01_power_query_mcode/pipeline_tratamento_m.m` e cole no editor.
