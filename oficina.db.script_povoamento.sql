USE mydb;

INSERT INTO mecanicos (nome, endereco, cpf_mec) VALUES ("Vicente Juan Melo", "55645-152", "106.654.661-45"), ("Eduardo Rafael Joaquim Lopes", 
"54320-000", "067.922.364-97"), ("Samuel Carlos Eduardo Enrico da Silva", "54480-480", "247.653.074-33");

INSERT INTO peca (nome_peca, valor_peca) VALUES ("Motor", "R$ 250,00"), ("Bateria", "R$ 200,00"), ("Borracha", "R$ 150,00"), 
("Câmbio", "R$ 100,00");

INSERT INTO servico (nome_servico) VALUES ("Revisão"), ("Reparo");

INSERT INTO servico_mecanicos (servico_id, mecanicos_id) VALUES (1, 1), (2, 1), (1, 2), (3, 2);

INSERT INTO servico_peca (servico_id, peca_id) VALUES (1, 1), (1, 2), (2, 1), (2, 2), (3, 1), (3, 2), (4, 1), (4, 2);

INSERT INTO veiculo (nome_prop, num_proprietario, placa, modelo) VALUES ("Pedro Henrique Yago Manoel Silva", "(81) 98182-9852", 
"HOY0843", "Saturn SL-2 1.9"), ("Agatha Elaine da Mota", "(81) 98845-0878", "JZF6436", "Rools-Royce Ghost ll 6.6 V12 Aut."), 
("Bento Henry Theo Nunes", "(81) 98362-5993", "IAD8724", "Suzuki Ignis 1.3 16V 82cv 4p Mec."), ("Elias Miguel Sebastião da Mota", 
"(81) 98570-5854", "GPO4910", "Ssangyong Korando GLX 2.9 TB Diesel Int. 120cv Mec"), ("César Carlos de Paula", "(87) 98913-7197", 
"MUJ1317", "Chrysler PT Cruiser Limited 2.0 16V 4p");

INSERT INTO servico_veiculo (veiculo_id, servico_id) VALUES (1, 1), (2, 1), (3, 1), (5, 1), (1, 2), (3, 2), (4, 2), (5, 2);

INSERT INTO mao_de_obra (data_entrega, valor, descritivo_valor, autorizacao, servico_veiculo_id, servico_mecanicos_id, servico_peca_id) 
VALUES ("2024/03/24", "R$ 400,00", "Revisão(150,00)+Motor(250,00)", 0, 1, 1, 1), ("2024/02/17", "R$ 350,00", "Revisão(150,00)+Bateria(200,00)", 
0, 2, 1, 3), ("2024/02/19", "R$ 250,00", "Revisão(150,00)+Câmbio(100,00)", 1, 3, 2, 7), ("2024/02/22", "R$ 300,00", "Revisão(150,00)+Borracha(150,00)", 
0, 4, 2, 5), ("2024/03/02", "R$ 450,00", "Reparo(250,00)+Bateria(200,00)", 0, 5, 3, 4), ("2024/03/07", "R$ 350,00", "Reparo(250,00)+Câmbio(150,00)", 
1, 6, 3, 8), ("2024/03/17", "R$ 500,00", "Reparo(250,00)+Motor(250,00)", 0, 7, 4, 2), ("2024/04/01", "R$ 400,00", "Reparo(250,00)+Borracha(150,00)", 
1, 8, 4, 6);
