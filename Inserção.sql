INSERT INTO PESSOA
    VALUES 
    ('972.045.870-49', 'Amanda Oliveira', 'ALUNO', '16 99764-1415', TO_DATE('10/04/1990','dd/mm/yyyy'), 'F'),
    ('078.638.050-07', 'Breno Rodrigues', 'ALUNO', '16 98731-2427', TO_DATE('27/09/1984','dd/mm/yyyy'), 'M'),
    ('561.918.720-97', 'Liana Ruiz', 'ALUNO', '16 95674-2311', TO_DATE('02/03/1978','dd/mm/yyyy'), 'F'),
    ('868.332.570-94', 'Solange Fontes', 'ALUNO', '16 98703-2567', TO_DATE('28/12/1969','dd/mm/yyyy'), 'F'),
    ('699.586.920-66', 'Fabrício Siqueira', 'ALUNO', '16 98001-5445', TO_DATE('22/05/1975','dd/mm/yyyy'), 'M'),
    
    ('134.361.080-06', 'Lorenzo Gimenes', 'PROFESSOR', '16 97662-0991', TO_DATE('23/09/1988','dd/mm/yyyy'), 'M'),
    ('118.964.070-80', 'Felipe Falcão', 'PROFESSOR', '16 94522-0013', TO_DATE('11/04/1995','dd/mm/yyyy'), 'M'),
    ('055.384.450-46', 'Tomás Vasconcelos', 'PROFESSOR', '16 94421-0889', TO_DATE('31/05/1980','dd/mm/yyyy'), 'M'),
    ('409.115.908-70', 'Marcia Azevedo', 'PROFESSOR', '16 92203-9011', TO_DATE('26/06/1985','dd/mm/yyyy'), 'F'),
    ('820.165.408-00', 'Virgínia Vaz', 'PROFESSOR', '16 95456-7897', TO_DATE('01/01/1991','dd/mm/yyyy'), 'F'),
    
    ('186.455.628-55', 'Eliana Gomes', 'COORDENADOR', '16 97711-8923', TO_DATE('02/02/1984','dd/mm/yyyy'), 'F'),
    ('955.386.388-47', 'Ana Barbosa', 'COORDENADOR', '16 96553-1198', TO_DATE('07/12/1979','dd/mm/yyyy'), 'F'),
    ('321.580.018-79', 'André Prado', 'COORDENADOR', '16 97766-5434', TO_DATE('15/05/1975','dd/mm/yyyy'), 'M'),
    ('444.145.268-33', 'Diego Pessoa', 'COORDENADOR', '16 90033-8756', TO_DATE('20/02/1967','dd/mm/yyyy'), 'M'),
    ('061.582.828-04', 'Natália Ruiz', 'COORDENADOR', '16 93445-6789', TO_DATE('16/08/1968','dd/mm/yyyy'), 'F'),
    
    ('552.722.818-96', 'Antenor Velho', 'TECNICO', '16 9677-0321', TO_DATE('21/04/1987','dd/mm/yyyy'), 'M'),
    ('289.962.268-40', 'Ronaldo Pacheco', 'TECNICO', '16 99494-9124', TO_DATE('15/03/1991','dd/mm/yyyy'), 'M'),
    ('753.661.008-44', 'Samuel Cardoso', 'TECNICO', '16 97889-3227', TO_DATE('17/09/1993','dd/mm/yyyy'), 'M'),
    ('132.505.548-47', 'Jaqueline Amaral', 'TECNICO', '16 96555-9009', TO_DATE('09/10/1993','dd/mm/yyyy'), 'F'),
    ('886.385.858-61', 'Mateus Bueno', 'TECNICO', '16 94558-2231', TO_DATE('11/11/1989','dd/mm/yyyy'), 'M');
    
INSERT INTO CENTRO (ID, CEP, NUMERO, NOME)
    VALUES
    (1, '13560-200', '118', 'Sede São Carlos'),
    (2, '14010-035', '2374', 'Sede Ribeirão Preto'),
    (3, '01033-000', '987', 'Sede São Paulo'),
    (4, '15990-060', '455', 'Sede Matão'),
    (5, '13010-060', '5776', 'Sede Campinas');
    
INSERT INTO BLOCO
    VALUES  
    (1, 1),
    (1, 2),
    (2, 1),
    (3, 1),
    (3, 2),
    (3, 3),
    (4, 1),
    (5, 1);
    
INSERT INTO SALA
    VALUES
    (1, 1, 1, 10, 'COMPUTADORES', 30),
    (2, 1, 1, 20, 'COMPUTADORES', 30),
    (3, 1, 1, 30, 'EVENTO', 60),
    (4, 1, 2, 40, 'AULA', 60),
    (5, 1, 2, 50, 'AULA', 60),
    
    (6, 2, 1, 10, 'AULA', 40),
    (7, 2, 1, 20, 'AULA', 40),
    (8, 2, 1, 30, 'EVENTO', 40),
    
    (9, 3, 1, 10, 'AULA', 50),
    (10, 3, 1, 20, 'AULA', 50),
    (11, 3, 2, 30, 'EVENTO', 50),
    (12, 3, 2, 40, 'EVENTO', 40),
    (13, 3, 3, 50, 'COMPUTADORES', 20),
    (14, 3, 3, 60, 'COMPUTADORES', 20),
    
    (15, 4, 1, 10, 'AULA', 50),
    (16, 4, 1, 20, 'COMPUTADORES', 20),
    
    (17, 5, 1, 10, 'AULA', 60),
    (18, 5, 1, 20, 'COMPUTADORES', 25),
    (19, 5, 1, 30, 'AULA', 40);
    
INSERT INTO ALUNO
    VALUES
    ('972.045.870-49'),
    ('078.638.050-07'),
    ('561.918.720-97'),
    ('868.332.570-94'),
    ('699.586.920-66');
    
INSERT INTO COORDENADOR
    VALUES
    ('186.455.628-55', 1),
    ('955.386.388-47', 2),
    ('321.580.018-79', 3),
    ('444.145.268-33', 4),
    ('061.582.828-04', 5);
    
INSERT INTO PROFESSOR
    VALUES
    ('134.361.080-06', '186.455.628-55'),
    ('118.964.070-80', '955.386.388-47'),
    ('055.384.450-46', '321.580.018-79'),
    ('409.115.908-70', '444.145.268-33'),
    ('820.165.408-00', '061.582.828-04');
    
INSERT INTO TECNICO
    VALUES
    ('552.722.818-96'),
    ('289.962.268-40'),
    ('753.661.008-44'),
    ('132.505.548-47'),
    ('886.385.858-61');
    
INSERT INTO DISCIPLINA (SIGLA, PROFESSOR, SALA)
    VALUES
    ('S-100', '134.361.080-06', 1),
    ('S-210', '134.361.080-06', 4),
    ('M-200', '118.964.070-80', 10),
    ('F-240', '055.384.450-46', 13),
    ('R-100', '409.115.908-70', 15),
    ('R-310', '820.165.408-00', 19);
    
INSERT INTO EQUIPAMENTO
    VALUES
    ('COMPUTADOR_1', '0000034720', 'FUNCIONANDO'),
    ('COMPUTADOR_2', '0000028501', 'MANUTENÇÃO'),
    ('COMPUTADOR_3', '0007819002', 'FUNCIONANDO'),
    ('COMPUTADOR_4', '0098223165', 'FUNCIONANDO'),
    ('COMPUTADOR_5', '0000892243', 'QUEBRADO');
    
INSERT INTO EQUIPAMENTOSALA
    VALUES
    (2, 'COMPUTADOR_1'),
    (13, 'COMPUTADOR_2'),
    (14, 'COMPUTADOR_3'),
    (16, 'COMPUTADOR_4'),
    (18, 'COMPUTADOR_5');
    
INSERT INTO MANUTENCAO
    VALUES
    ('COMPUTADOR_1', TO_DATE('21/04/2023','dd/mm/yyyy'), '552.722.818-96'),
    ('COMPUTADOR_2', TO_DATE('17/10/2021','dd/mm/yyyy'), '753.661.008-44'),
    ('COMPUTADOR_2', TO_DATE('19/06/2023','dd/mm/yyyy'), '753.661.008-44'),
    ('COMPUTADOR_4', TO_DATE('24/02/2022','dd/mm/yyyy'), '132.505.548-47'),
    ('COMPUTADOR_3', TO_DATE('11/09/2022','dd/mm/yyyy'), '753.661.008-44');
    
INSERT INTO PROPOSTA
    VALUES
    (1, 'Oficinas de introdução à tecnologia', 'Realize workshops interativos e práticos para ensinar conceitos básicos de tecnologia, como uso de computadores, navegação na internet, e-mail e uso de aplicativos móveis.'),
    (2, 'Alfabetização digital', 'Promova programas de alfabetização digital para ensinar às pessoas as habilidades essenciais necessárias para usar computadores, tablets e smartphones de forma eficaz e segura.'),
    (3, 'Capacitação em mídia social', 'Realize workshops sobre o uso responsável das redes sociais, ensinando às pessoas como criar perfis, interagir com segurança, proteger informações pessoais e explorar oportunidades profissionais.'),
    (4, 'Palestras e painéis sobre tecnologia inclusiva', 'Convide especialistas e líderes em tecnologia para discutir questões de inclusão digital, diversidade, acessibilidade e o papel da tecnologia na promoção de oportunidades igualitárias para todos.'),
    (5, 'Criação de conteúdo digital', 'Capacite comunidades marginalizadas a expressar suas vozes e histórias através de workshops de criação digital: fotografia, vídeo, design e mídia.');
    
INSERT INTO EVENTO
    VALUES
    (1, 3, CAST('2023-06-24 18:30:00' AS datetime), '134.361.080-06', 'PRIVADO'),
    (2, 8, CAST('2022-07-11 12:30:00' AS datetime), '118.964.070-80', 'PUBLICO'),
    (3, 11, CAST('2022-02-19 13:00:00' AS datetime), '321.580.018-79', 'PUBLICO'),
    (4, 12, CAST('2021-03-22 13:00:00' AS datetime), '321.580.018-79', 'PUBLICO'),
    (5, 3, CAST('2022-05-29 10:30:00' AS datetime), '186.455.628-55', 'PUBLICO');
    
INSERT INTO INSCRICOES
    VALUES
    (3, CAST('2023-06-24 18:30:00' AS datetime), '134.361.080-06'),
    (8, CAST('2022-07-11 12:30:00' AS datetime), '078.638.050-07'),
    (11, CAST('2022-02-19 13:00:00' AS datetime), '055.384.450-46'),
    (12, CAST('2021-03-22 13:00:00' AS datetime), '321.580.018-79'),
    (3, CAST('2022-05-29 10:30:00' AS datetime), '186.455.628-55');
    
INSERT INTO MATRICULA
    VALUES
    (),
    
    

