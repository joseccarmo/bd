INSERT INTO PESSOA VALUES 
('972.045.870-49', 'Amanda Oliveira', 'ALUNO', '16 99764-1415', TO_DATE('10/04/1990','dd/mm/yyyy'), 'F'),
('078.638.050-07', 'Breno Rodrigues', 'ALUNO', '16 98731-2427', TO_DATE('27/09/1984','dd/mm/yyyy'), 'M'),
('561.918.720-97', 'Liana Ruiz', 'ALUNO', '16 95674-2311', TO_DATE('02/03/1978','dd/mm/yyyy'), 'F'),
('868.332.570-94', 'Solange Fontes', 'ALUNO', '16 98703-2567', TO_DATE('28/12/1969','dd/mm/yyyy'), 'F'),
('699.586.920-66', 'Fabr�cio Siqueira', 'ALUNO', '16 98001-5445', TO_DATE('22/05/1975','dd/mm/yyyy'), 'M'),

('134.361.080-06', 'Lorenzo Gimenes', 'PROFESSOR', '16 97662-0991', TO_DATE('23/09/1988','dd/mm/yyyy'), 'M'),
('118.964.070-80', 'Felipe Falc�o', 'PROFESSOR', '16 94522-0013', TO_DATE('11/04/1995','dd/mm/yyyy'), 'M'),
('055.384.450-46', 'Tom�s Vasconcelos', 'PROFESSOR', '16 94421-0889', TO_DATE('31/05/1980','dd/mm/yyyy'), 'M'),
('409.115.908-70', 'Marcia Azevedo', 'PROFESSOR', '16 92203-9011', TO_DATE('26/06/1985','dd/mm/yyyy'), 'F'),
('820.165.408-00', 'Virg�nia Vaz', 'PROFESSOR', '16 95456-7897', TO_DATE('01/01/1991','dd/mm/yyyy'), 'F'),

('186.455.628-55', 'Eliana Gomes', 'COORDENADOR', '16 97711-8923', TO_DATE('02/02/1984','dd/mm/yyyy'), 'F'),
('955.386.388-47', 'Ana Barbosa', 'COORDENADOR', '16 96553-1198', TO_DATE('07/12/1979','dd/mm/yyyy'), 'F'),
('321.580.018-79', 'Andr� Prado', 'COORDENADOR', '16 97766-5434', TO_DATE('15/05/1975','dd/mm/yyyy'), 'M'),
('444.145.268-33', 'Diego Pessoa', 'COORDENADOR', '16 90033-8756', TO_DATE('20/02/1967','dd/mm/yyyy'), 'M'),
('061.582.828-04', 'Nat�lia Ruiz', 'COORDENADOR', '16 93445-6789', TO_DATE('16/08/1968','dd/mm/yyyy'), 'F'),

('552.722.818-96', 'Antenor Velho', 'TECNICO', '16 9677-0321', TO_DATE('21/04/1987','dd/mm/yyyy'), 'M'),
('289.962.268-40', 'Ronaldo Pacheco', 'TECNICO', '16 99494-9124', TO_DATE('15/03/1991','dd/mm/yyyy'), 'M'),
('753.661.008-44', 'Samuel Cardoso', 'TECNICO', '16 97889-3227', TO_DATE('17/09/1993','dd/mm/yyyy'), 'M'),
('132.505.548-47', 'Jaqueline Amaral', 'TECNICO', '16 96555-9009', TO_DATE('09/10/1993','dd/mm/yyyy'), 'F'),
('886.385.858-61', 'Mateus Bueno', 'TECNICO', '16 94558-2231', TO_DATE('11/11/1989','dd/mm/yyyy'), 'M');

INSERT INTO CENTRO (ID, CEP, NUMERO, NOME) VALUES
(1, '13560-200', '118', 'Sede S�o Carlos'),
(2, '14010-035', '2374', 'Sede Ribeir�o Preto'),
(3, '01033-000', '987', 'Sede S�o Paulo'),
(4, '15990-060', '455', 'Sede Mat�o'),
(5, '13010-060', '5776', 'Sede Campinas');
 

INSERT INTO BLOCO VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(5, 1);


INSERT INTO SALA VALUES
(1, 1, 1, 10, 'COMPUTADORES', 30),
(2, 1, 1, 20, 'COMPUTADORES', 30),
(3, 1, 1, 31, 'EVENTO', 60),
(4, 1, 2, 40, 'AULA', 60),
(5, 1, 2, 50, 'AULA', 60);

INSERT INTO SALA VALUES
(6, 2, 1, 10, 'AULA', 40),
(7, 2, 1, 20, 'AULA', 40),
(8, 2, 1, 30, 'EVENTO', 40);

INSERT INTO SALA VALUES
(9, 3, 1, 10, 'AULA', 50),
(10, 3, 1, 20, 'AULA', 50),
(11, 3, 2, 30, 'EVENTO', 50),
(12, 3, 2, 40, 'EVENTO', 40),
(13, 3, 3, 50, 'COMPUTADORES', 20),
(14, 3, 3, 60, 'COMPUTADORES', 20);

INSERT INTO SALA VALUES
(15, 4, 1, 10, 'AULA', 50),
(16, 4, 1, 20, 'COMPUTADORES', 20);

INSERT INTO SALA VALUES
(17, 5, 1, 10, 'AULA', 60),
(18, 5, 1, 20, 'COMPUTADORES', 25),
(19, 5, 1, 30, 'AULA', 40);
 

INSERT INTO ALUNO VALUES
('972.045.870-49'),
('078.638.050-07'),
('561.918.720-97'),
('868.332.570-94'),
('699.586.920-66');
 

INSERT INTO COORDENADOR VALUES
('186.455.628-55', 1),
('955.386.388-47', 2),
('321.580.018-79', 3),
('444.145.268-33', 4),
('061.582.828-04', 5);
 

INSERT INTO PROFESSOR VALUES
('134.361.080-06', '186.455.628-55'),
('118.964.070-80', '955.386.388-47'),
('055.384.450-46', '321.580.018-79'),
('409.115.908-70', '444.145.268-33'),
('820.165.408-00', '061.582.828-04');
 

INSERT INTO TECNICO VALUES
('552.722.818-96'),
('289.962.268-40'),
('753.661.008-44'),
('132.505.548-47'),
('886.385.858-61');
 

INSERT INTO DISCIPLINA (SIGLA, PROFESSOR, SALA) VALUES
('S-100', '134.361.080-06', 1),
('S-210', '134.361.080-06', 4),
('M-200', '118.964.070-80', 10),
('F-240', '055.384.450-46', 13),
('R-100', '409.115.908-70', 15),
('R-310', '820.165.408-00', 19);
 

INSERT INTO EQUIPAMENTO VALUES
('COMPUTADOR_1', '0000034720', 'FUNCIONANDO'),
('COMPUTADOR_2', '0000028501', 'MANUTEN��O'),
('COMPUTADOR_3', '0007819002', 'FUNCIONANDO'),
('COMPUTADOR_4', '0098223165', 'FUNCIONANDO'),
('COMPUTADOR_5', '0000892243', 'QUEBRADO');
 

INSERT INTO EQUIPAMENTOSALA VALUES
(2, '0000034720'),
(13, '0000028501'),
(14, '0007819002'),
(16, '0098223165'),
(18, '0000892243');
 

INSERT INTO MANUTENCAO VALUES
('0000034720', TO_DATE('21/04/2023','dd/mm/yyyy'), '552.722.818-96'),
('0000028501', TO_DATE('17/10/2021','dd/mm/yyyy'), '753.661.008-44'),
('0007819002', TO_DATE('19/06/2023','dd/mm/yyyy'), '753.661.008-44'),
('0098223165', TO_DATE('24/02/2022','dd/mm/yyyy'), '132.505.548-47'),
('0000892243', TO_DATE('11/09/2022','dd/mm/yyyy'), '753.661.008-44');
 

INSERT INTO PROPOSTA VALUES
(1, 'Oficinas de introdu��o � tecnologia', 'Realize workshops interativos e pr�ticos para ensinar conceitos b�sicos de tecnologia, como uso de computadores, navega��o na internet, e-mail e uso de aplicativos m�veis.'),
(2, 'Alfabetiza��o digital', 'Promova programas de alfabetiza��o digital para ensinar �s pessoas as habilidades essenciais necess�rias para usar computadores, tablets e smartphones de forma eficaz e segura.'),
(3, 'Capacita��o em m�dia social', 'Realize workshops sobre o uso respons�vel das redes sociais, ensinando �s pessoas como criar perfis, interagir com seguran�a, proteger informa��es pessoais e explorar oportunidades profissionais.'),
(4, 'Palestras e pain�is sobre tecnologia inclusiva', 'Convide especialistas e l�deres em tecnologia para discutir quest�es de inclus�o digital, diversidade, acessibilidade e o papel da tecnologia na promo��o de oportunidades igualit�rias para todos.'),
(5, 'Cria��o de conte�do digital', 'Capacite comunidades marginalizadas a expressar suas vozes e hist�rias atrav�s de workshops de cria��o digital: fotografia, v�deo, design e m�dia.');
 

INSERT INTO EVENTO VALUES
(1, 3, CAST('2023-06-24 18:30:00' AS timestamp), '134.361.080-06', 'PRIVADO'),
(2, 8, CAST('2022-07-11 12:30:00' AS timestamp), '118.964.070-80', 'PUBLICO'),
(3, 11, CAST('2022-02-19 13:00:00' AS timestamp), '321.580.018-79', 'PUBLICO'),
(4, 12, CAST('2021-03-22 13:00:00' AS timestamp), '321.580.018-79', 'PUBLICO'),
(5, 3, CAST('2022-05-29 10:30:00' AS timestamp), '186.455.628-55', 'PUBLICO');
 

INSERT INTO INSCRICOES VALUES(3, CAST('2023-06-24 18:30:00' AS timestamp), '134.361.080-06'),
(8, CAST('2022-07-11 12:30:00' AS timestamp), '078.638.050-07'),
(11, CAST('2022-02-19 13:00:00' AS timestamp), '055.384.450-46'),
(12, CAST('2021-03-22 13:00:00' AS timestamp), '321.580.018-79'),
(3, CAST('2022-05-29 10:30:00' AS timestamp), '186.455.628-55');
 

INSERT INTO MATRICULA VALUES
('S-100', '972.045.870-49'),
('S-100', '078.638.050-07'),
('M-200', '561.918.720-97'),
('F-240', '561.918.720-97'),
('R-100', '868.332.570-94'),
('R-310', '699.586.920-66'),
('S-210', '972.045.870-49'),
('S-210', '078.638.050-07');
 

INSERT INTO HORARIOSDISC VALUES
('S-100', CAST('18:30:00' AS time)),
('S-210', CAST('14:30:00' AS time)),
('M-200', CAST('19:00:00' AS time)),
('F-240', CAST('14:30:00' AS time)),
('R-100', CAST('16:00:00' AS time)),
('R-310', CAST('10:00:00' AS time));
 

INSERT INTO MONITORIA VALUES
('S-100', '972.045.870-49'),
('S-210', '078.638.050-07'),
('M-200', '561.918.720-97'),
('R-100', '868.332.570-94'),
('R-310', '699.586.920-66');
 

INSERT INTO MONITORIAHORARIOS VALUES
('972.045.870-49', 1, CAST('15:30:00' AS time)),
('078.638.050-07', 2, CAST('18:00:00' AS time)),
('561.918.720-97', 9, CAST('17:30:00' AS time)),
('868.332.570-94', 15, CAST('09:00:00' AS time)),
('699.586.920-66', 17, CAST('11:00:00' AS time));