USE VIRTUALDC;

/*
Quando trabalhamos com unioes nao tem semelhança com joins pois nao ha relacao entre as tabelas
apenas exitem um empilhamento de tabelas de forma que os campos precisam corresponder em tipo
pois estao uns a baixo dos outros

se trata a penas de um empilhamento de tabelas
*/

SELECT CODFUN AS CODIGO, NOME AS [NOME FUNCIONARIO] FROM CADFUN -- O PRIMEIRO SELECT VAI SER O NOME DO CABEÇALHO

UNION ALL -- SE TIRRAR O ALL A UNION IRA RETIRAR OS REGISTROS DUPLICADOS

SELECT CODFUN, NOME FROM morto -- AS PROXIMAS SAO SO EMPILHAMENTO
;