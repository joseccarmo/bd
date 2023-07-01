SELECT C.CEP, C.NUMERO, ROUND(COALESCE(AVG(PA.NAULAS), 0),2)
FROM CENTRO C
LEFT JOIN (
    SELECT P.CPF, CO.CENTRO, COUNT(D.SIGLA) AS NAULAS
    FROM PROFESSOR P
    JOIN COORDENADOR CO ON P.SUPERVISOR = CO.CPF
    LEFT JOIN DISCIPLINA D ON D.PROFESSOR = P.CPF
    GROUP BY P.CPF, CO.CENTRO
) PA ON C.ID = PA.CENTRO
GROUP BY C.CEP, C.NUMERO;

SELECT EQ.CEP, P.NOME, COUNT(*) AS QUANTIDADE_DE_EVENTOS
FROM PROPOSTA P
JOIN (
    SELECT SC.CEP, E.PROPOSTA
    FROM (
        SELECT PROPOSTA, SALA, HORARIO
        FROM EVENTO
        WHERE BOOLABERTO = 'PUBLICO'
    ) E
    JOIN (
        SELECT S.ID, C.CEP
        FROM SALA S
        JOIN CENTRO C ON S.CENTRO = C.ID
    ) SC ON SC.ID = E.SALA
) EQ ON EQ.PROPOSTA = P.ID
GROUP BY EQ.CEP, P.NOME
ORDER BY EQ.CEP, P.NOME DESC;

SELECT T.CPF
FROM TECNICO T
WHERE NOT EXISTS(
    SELECT ID FROM CENTRO
    EXCEPT
    SELECT DISTINCT S.CENTRO AS ID
    FROM SALA S, (
        SELECT DISTINCT ES.SALA
        FROM (
            SELECT EQUIPAMENTO
            FROM MANUTENCAO M
            WHERE T.CPF = M.TECNICO
        ) MT
        JOIN EQUIPAMENTOSALA ES ON ES.EQUIPAMENTO = MT.EQUIPAMENTO
    ) ST
    WHERE S.ID = ST.SALA
);

SELECT P.NOME 
FROM COORDENADOR C
JOIN PESSOA P ON C.CPF = P.CPF
JOIN(
	SELECT SUPERVISOR, COUNT(*)
	FROM PROFESSOR
	GROUP BY SUPERVISOR
	HAVING COUNT(*) > 3
) D ON P.CPF = D.SUPERVISOR;

SELECT DISTINCT SUBSTR(D.SIGLA, 1, 1) AS TOPICO,
                SUM(HD.NHORARIOS) AS NHORARIOS,
                RANK() OVER (ORDER BY SUM(HD.NHORARIOS) DESC) AS RANK_NUMERO_AULAS
FROM DISCIPLINA D
JOIN (
    SELECT DISC, COUNT(*) AS NHORARIOS
    FROM HORARIOSDISC
    GROUP BY DISC
) HD ON D.SIGLA = HD.DISC
GROUP BY SUBSTR(D.SIGLA, 1, 1);