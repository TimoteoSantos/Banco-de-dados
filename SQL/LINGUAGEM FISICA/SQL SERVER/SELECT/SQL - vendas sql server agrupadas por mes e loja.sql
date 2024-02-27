USE BaseCasadoCabelereiro;

/*
vendas agrupadas por mes e loja
*/

SELECT
    LojaOrigem,
    SUM(CASE WHEN MONTH([Data da Venda]) = 1 THEN Total_Item ELSE 0 END) AS [01],
    SUM(CASE WHEN MONTH([Data da Venda]) = 2 THEN Total_Item ELSE 0 END) AS [02],
    SUM(CASE WHEN MONTH([Data da Venda]) = 3 THEN Total_Item ELSE 0 END) AS [03],
    SUM(CASE WHEN MONTH([Data da Venda]) = 4 THEN Total_Item ELSE 0 END) AS [04],
    SUM(CASE WHEN MONTH([Data da Venda]) = 5 THEN Total_Item ELSE 0 END) AS [05],
    SUM(CASE WHEN MONTH([Data da Venda]) = 6 THEN Total_Item ELSE 0 END) AS [06],
    SUM(CASE WHEN MONTH([Data da Venda]) = 7 THEN Total_Item ELSE 0 END) AS [07],
    SUM(CASE WHEN MONTH([Data da Venda]) = 8 THEN Total_Item ELSE 0 END) AS [08],
    SUM(CASE WHEN MONTH([Data da Venda]) = 9 THEN Total_Item ELSE 0 END) AS [09],
    SUM(CASE WHEN MONTH([Data da Venda]) = 10 THEN Total_Item ELSE 0 END) AS [10],
    SUM(CASE WHEN MONTH([Data da Venda]) = 11 THEN Total_Item ELSE 0 END) AS [11],
    SUM(CASE WHEN MONTH([Data da Venda]) = 12 THEN Total_Item ELSE 0 END) AS [12]
FROM
    memoria_VendasTodas
WHERE
    YEAR([Data da Venda]) = 2024 -- Filtrando para o ano de 2023
GROUP BY
    LojaOrigem