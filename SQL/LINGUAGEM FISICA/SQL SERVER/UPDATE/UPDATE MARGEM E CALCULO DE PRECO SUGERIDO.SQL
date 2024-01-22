--banco de dados
USE BaseCasadoCabelereiro;

--comando de selecao
SELECT 
MERCADORIA.[Código da Mercadoria]
,MERCADORIA.Mercadoria
,MERCADORIA.CodigoSimilar
,SIMILARES.Registro
,SIMILARES.Grupo
,MERCADORIA.[Margem Lucro]
,[Preço de Venda Sugerido]
,MERCADORIA.[Preço Compra]

-- acrescentando uma porcentagem ao preço de compra, [Preço Compra] + 47%
,ROUND((MERCADORIA.[Preço Compra] * 0.47) + [Preço Compra], 2) AS SUGERIDO
FROM
[Cadastro de mercadorias] AS MERCADORIA
JOIN CadastroSimilares AS SIMILARES
ON MERCADORIA.CodigoSimilar = SIMILARES.Registro

-- Condicao codigo da mercadoria
WHERE [Código da Mercadoria] = 241

--update na tabela ...
UPDATE [Cadastro de mercadorias]
--campos a serem modificados o preco sugerido sofre um calculo para a nova margem
SET [Preço de Venda Sugerido] = ROUND(([Preço Compra] * 0.47) + [Preço Compra], 2),[Margem Lucro] = 47 
--a condição sao todos os produtos com margem 46 com margem 46
WHERE [Margem Lucro] = 47;
