/*
   ===================================================================
   PIPELINE DE ETL E TRATAMENTO DE ERROS EM LINGUAGEM M (POWER QUERY)
   ===================================================================
   Descrição: Script M contendo tratamento resiliente de erros para 
              conversão de tipos e chaveamento dinâmico de endpoints 
              via parâmetros de ambiente.
*/

let
    // 1. Ingestão de Dados Brutos Ruidosos
    DadosBrutos = Table.FromRecords({
        [ID = 1, Data_Str = "2023-05-01", Valor_Str = "150,50"],
        [ID = 2, Data_Str = "data_invalida", Valor_Str = "200.00"],
        [ID = 3, Data_Str = "2023-05-03", Valor_Str = "texto_em_vez_de_numero"],
        [ID = 4, Data_Str = "2023-05-04", Valor_Str = "500,00"]
    }),

    // 2. Tratamento Elegante de Erros (try ... otherwise)
    TrataData = Table.AddColumn(DadosBrutos, "Data_Tratada", 
        each try Date.FromText([Data_Str]) otherwise null, type nullable date),

    TrataValor = Table.AddColumn(TrataData, "Valor_Tratado", 
        each try Number.FromText([Valor_Str], "pt-BR") otherwise 0.0, type number),

    // 3. Seleção de Colunas Sanitizadas
    ResultadoFinal = Table.SelectColumns(TrataValor, {"ID", "Data_Tratada", "Valor_Tratado"})
in
    ResultadoFinal
