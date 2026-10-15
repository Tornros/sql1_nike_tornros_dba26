-- beskriver filket filformat som ska läsas
SET LOADFORMAT XLSX

-- skapar tabellen 'amazon', samt vilken fil den ska hämta från
LOAD TABLE amazon 'Amazon 2_Raw.xlsx' NEW

COMMIT;
