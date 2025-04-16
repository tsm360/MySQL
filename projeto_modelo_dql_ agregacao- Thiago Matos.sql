-- Criação do BD e uso do BD
create database restaurante;
use restaurante;

-- Criação das tabelas funcionario, cliente, produto, pedido e info_produto
create table if not exists funcionario(
	id_funcionario int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255),
    cpf varchar(14),
    data_nascimento date,
    endereco varchar(255),
    telefone varchar(15),
    email varchar(100),
    cargo varchar(100),
    salario decimal(10,2),
    data_admissao date
);
create table if not exists cliente(
	id_cliente int auto_increment primary key,
    nome varchar(255),
    cpf varchar(14),
    data_nascimento date,
    endereco varchar(255),
    telefone varchar(15),
    email varchar(100),
    data_cadastro date
);
create table if not exists produto(
	id_produto int auto_increment primary key,
    nome varchar(255),
    descricao text,
    preco decimal(10,2),
    categoria varchar(100)
);
create table if not exists pedido(
	id_pedido int auto_increment primary key,
    id_cliente int,
    id_funcionario int,
    id_produto int,
    quantidade int,
    preco decimal(10,2),
    data_pedido date,
    situacao varchar(50),
    foreign key (id_cliente) references cliente(id_cliente),
    foreign key (id_funcionario) references funcionario(id_funcionario),
    foreign key (id_produto) references produto(id_produto)
);
create table if not exists info_produto(
	id_info int auto_increment primary key,
    id_produto int,
    ingredientes text,
    fornecedor varchar(255),
    foreign key (id_produto) references produto(id_produto)
);

-- inserção de dados na tabela funcionario
insert into funcionario values(null, 'Ricardo Sousa', '111.222.333-44', '1992-05-12', 'Rua Harmonia 157, São Paulo', '11987651234', 'ricardo.sousa@email.com', 'Chefe de Cozinha', 6000.00, '2019-03-15');
insert into funcionario values(null, 'Lívia Castro', '222.333.444-55', '1989-11-25', 'Av. Rebouças 1234, São Paulo', '11987653421', 'livia.castro@email.com', 'Subgerente', 5500.00, '2019-06-20'),
							  (null, 'Marcos Lima', '333.444.555-66', '1985-04-17', 'Rua Augusta 2020, São Paulo', '11987655678', 'marcos.lima@email.com', 'Barman', 2800.00, '2020-01-10'),
							  (null, 'Carla Mendes', '444.555.666-77', '1993-07-03', 'Av. Paulista 1853, São Paulo', '11987659876', 'carla.mendes@email.com', 'Atendente', 2600.00, '2020-07-15'),
							  (null, 'Tiago Nunes', '555.666.777-88', '1978-08-12', 'Rua Funchal 500, São Paulo', '11987656789', 'tiago.nunes@email.com', 'Sommelier', 3400.00, '2021-04-22'),
							  (null, 'Cláudia Vieira', '666.777.888-99', '1981-01-19', 'Alameda Lorena 1300, São Paulo', '11987657890', 'claudia.vieira@email.com', 'Cozinheira', 3200.00, '2021-08-30'),
							  (null, 'Pedro Martins', '777.888.999-00', '1983-12-05', 'Rua dos Pinheiros 800, São Paulo', '11987658901', 'pedro.martins@email.com', 'Garçom', 2700.00, '2022-03-15'),
							  (null, 'Fernanda Rocha', '888.999.000-11', '1990-09-27', 'Av. Faria Lima 1500, São Paulo', '11987659012', 'fernanda.rocha@email.com', 'Garçonete', 2700.00, '2022-05-20'),
							  (null, 'André Costa', '999.000.111-22', '1986-03-14', 'Rua Bela Cintra 985, São Paulo', '11987660123', 'andre.costa@email.com', 'Gerente', 4700.00, '2022-10-10'),
							  (null, 'Sofia Alves', '000.111.222-33', '1995-06-01', 'Rua Consolação 1235, São Paulo', '11987661234', 'sofia.alves@email.com', 'Recepcionista', 2400.00, '2023-01-01');   

-- inserção na tabela cliente
insert into cliente values(null, 'Lucas Silva', '123.456.789-01', '1990-01-15', 'Av. Brigadeiro Faria Lima, 1571, São Paulo', '11987651234', 'lucas.silva@email.com', '2023-01-12');
insert into cliente values(null, 'Ana Paula', '234.567.890-12', '1985-03-22', 'Rua Oscar Freire, 1290, São Paulo', '11987652345', 'ana.paula@email.com', '2023-01-12'),
						  (null, 'Rafael Costa', '345.678.901-23', '1992-07-18', 'Av. Paulista, 1844, São Paulo', '11987653456', 'rafael.costa@email.com', '2023-01-12'),
						  (null, 'Camila Rodrigues', '456.789.012-34', '1988-05-24', 'Rua Augusta, 2530, São Paulo', '11987654567', 'camila.rodrigues@email.com', '2023-01-12'),
						  (null, 'Eduardo Santos', '567.890.123-45', '1975-11-30', 'Alameda Santos, 980, São Paulo', '11987655678', 'eduardo.santos@email.com', '2023-01-12'),
						  (null, 'Fernanda Lima', '678.901.234-56', '1994-04-15', 'Rua da Consolação, 2000, São Paulo', '11987656789', 'fernanda.lima@email.com', '2023-01-12'),
						  (null, 'Gustavo Pereira', '789.012.345-67', '1982-02-28', 'Av. Rebouças, 3001, São Paulo', '11987657890', 'gustavo.pereira@email.com', '2023-01-12'),
						  (null, 'Juliana Machado', '890.123.456-78', '1996-09-14', 'Av. Brasil, 1620, São Paulo', '11987658901', 'juliana.machado@email.com', '2023-01-12'),
						  (null, 'Marcos Ribeiro', '901.234.567-89', '1991-12-12', 'Rua Bela Cintra, 1225, São Paulo', '11987659012', 'marcos.ribeiro@email.com', '2023-01-12'),
						  (null, 'Patricia Almeida', '912.345.678-90', '1987-06-19', 'Rua Haddock Lobo, 1327, São Paulo', '11987660123', 'patricia.almeida@email.com', '2023-01-12'),
						  (null, 'Roberto Nunes', '923.456.789-01', '1979-03-21', 'Av. Nove de Julho, 2045, São Paulo', '11987661234', 'roberto.nunes@email.com', '2023-01-12'),
						  (null, 'Sandra Gomes', '934.567.890-12', '1984-08-10', 'Rua Pamplona, 1453, São Paulo', '11987662345', 'sandra.gomes@email.com', '2023-01-12'),
						  (null, 'Tiago Souza', '945.678.901-23', '1989-01-15', 'Av. Europa, 784, São Paulo', '11987663456', 'tiago.souza@email.com', '2023-01-12'),
						  (null, 'Vanessa Moraes', '956.789.012-34', '1974-10-23', 'Rua Amauri, 350, São Paulo', '11987664567', 'vanessa.moraes@email.com', '2023-01-12'),
						  (null, 'Daniel Oliveira', '967.890.123-45', '1993-12-11', 'Rua dos Pinheiros, 900, São Paulo', '11987665678', 'daniel.oliveira@email.com', '2023-01-12'),
						  (null, 'Maria Clara', '978.901.234-56', '1998-03-05', 'Av. Ibirapuera, 3103, São Paulo', '11987666789', 'maria.clara@email.com', '2023-01-12'),
						  (null, 'João Pedro', '989.012.345-67', '1981-05-27', 'Rua Tabapuã, 1123, São Paulo', '11987667890', 'joao.pedro@email.com', '2023-01-12'),
						  (null, 'Larissa Fonseca', '991.123.456-78', '1986-11-09', 'Av. Cidade Jardim, 400, São Paulo', '11987668901', 'larissa.fonseca@email.com', '2023-01-12'),
						  (null, 'Henrique Silva', '992.234.567-89', '1990-02-14', 'Av. São Gabriel, 477, São Paulo', '11987669012', 'henrique.silva@email.com', '2023-01-12'),
						  (null, 'Isabela Freitas', '993.345.678-90', '1994-07-20', 'Rua Veneza, 1000, São Paulo', '11987670123', 'isabela.freitas@email.com', '2023-01-12'),
						  (null, 'Giovanna Rocha', '994.456.789-01', '1987-12-01', 'Rua Artur Azevedo, 1767, São Paulo', '11987671234', 'giovanna.rocha@email.com', '2023-01-12'),
						  (null, 'Leonardo Alves', '995.567.890-12', '1988-01-22', 'Rua Joaquim Antunes, 760, São Paulo', '11987672345', 'leonardo.alves@email.com', '2023-01-12'),
						  (null, 'Beatriz Santos', '996.678.901-23', '1976-06-16', 'Av. Santo Amaro, 1230, São Paulo', '11987673456', 'beatriz.santos@email.com', '2023-01-12'),
						  (null, 'Carlos Eduardo', '997.789.012-34', '1972-04-04', 'Rua Estados Unidos, 1457, São Paulo', '11987674567', 'carlos.eduardo@email.com', '2023-01-12'),
					      (null, 'Fábio Lopes', '998.890.123-45', '1989-08-12', 'Av. das Nações Unidas, 1889, São Paulo', '11987675678', 'fabio.lopes@email.com', '2023-01-12'),
						  (null, 'Tatiane Costa', '999.901.234-56', '1995-10-30', 'Rua Guarará, 532, São Paulo', '11987676789', 'tatiane.costa@email.com', '2023-01-12'),
						  (null, 'Ricardo Mendonça', '991.012.345-67', '1980-03-17', 'Rua Pedroso Alvarenga, 1100, São Paulo', '11987677890', 'ricardo.mendonca@email.com', '2023-01-12'),
						  (null, 'Elisa Carvalho', '992.123.456-78', '1997-05-25', 'Av. Roque Petroni Júnior, 1089, São Paulo', '11987678901', 'elisa.carvalho@email.com', '2023-01-12'),
						  (null, 'Flávio Barros', '993.234.567-89', '1985-09-19', 'Rua Gomes de Carvalho, 1356, São Paulo', '11987679012', 'flavio.barros@email.com', '2023-01-12'),
						  (null, 'Priscila Ribeiro', '994.345.678-90', '1983-07-28', 'Rua Bandeira Paulista, 982, São Paulo', '11987680123', 'priscila.ribeiro@email.com', '2023-01-12');

-- inserção na tabela produtos
insert into produto values(null, 'Feijoada', 'Feijoada completa com arroz, farofa, couve e laranja.', 29.90, 'Prato Principal'),
						  (null, 'Picanha na Chapa', 'Picanha fatiada servida com alho, arroz, farofa e vinagrete.', 42.00, 'Prato Principal'),
						  (null, 'Moqueca Baiana', 'Moqueca de peixe e camarão, acompanhada de arroz branco e pirão.', 37.50, 'Prato Principal'),
						  (null, 'Bobó de Camarão', 'Camarão cozido em creme de mandioca e azeite de dendê, servido com arroz.', 45.00, 'Prato Principal'),
						  (null, 'Bacalhau à Brás', 'Bacalhau desfiado, preparado com batata palha, ovos e cebola.', 38.00, 'Prato Principal'),
						  (null, 'Coxinha de Frango', 'Massa de batata com recheio cremoso de frango, servida frita.', 6.50, 'Aperitivo'),
						  (null, 'Pastel de Carne', 'Pastel frito com recheio de carne moída temperada.', 5.00, 'Aperitivo'),
						  (null, 'Pastel de Queijo', 'Pastel frito com recheio de queijo derretido.', 5.00, 'Aperitivo'),
						  (null, 'Empada de Palmito', 'Empada de massa podre recheada com creme de palmito.', 6.00, 'Aperitivo'),
						  (null, 'Risoto de Camarão', 'Risoto de camarão com toque de limão siciliano e alho-poró.', 36.00, 'Prato Principal'),
						  (null, 'Escondidinho de Carne Seca', 'Purê de mandioca com recheio de carne seca e queijo coalho.', 32.00, 'Prato Principal'),
						  (null, 'Salada Caprese', 'Tomate, muçarela de búfala e manjericão, com azeite e vinagre balsâmico.', 22.00, 'Entrada'),
						  (null, 'Polenta Mole com Ragú de Linguiça', 'Polenta cremosa servida com ragú de linguiça e molho de tomate.', 28.00, 'Prato Principal'),
						  (null, 'Frango à Parmegiana', 'Peito de frango empanado coberto com queijo e molho de tomate, servido com arroz e fritas.', 35.00, 'Prato Principal'),
						  (null, 'Salmão Grelhado', 'Salmão grelhado servido com legumes no vapor e molho de alcaparras.', 42.00, 'Prato Principal'),
						  (null, 'Caipirinha de Limão', 'Tradicional caipirinha brasileira feita com cachaça, limão e açúcar.', 15.00, 'Bebida'),
						  (null, 'Suco de Maracujá', 'Suco natural de maracujá.', 8.00, 'Bebida'),
						  (null, 'Chopp Gelado', 'Chopp claro, servido bem gelado.', 7.50, 'Bebida'),
						  (null, 'Mousse de Maracujá', 'Sobremesa leve e refrescante à base de maracujá.', 12.00, 'Sobremesa'),
						  (null, 'Pudim de Leite', 'Pudim de leite condensado com calda de caramelo.', 10.00, 'Sobremesa');
 
-- inserção na tabela info_produtos
insert into info_produto values(null, 1, 'Feijão preto, carne seca, costelinha, linguiça, arroz, farinha, couve, laranja', 'Distribuidora Central'),
							   (null, 2, 'Picanha, alho, arroz, farofa, vinagrete', 'Carnes Boi Nobre'),
							   (null, 3, 'Peixe, camarão, leite de coco, azeite de dendê, arroz, farinha', 'Mar & Terra Distribuidora'),
							   (null, 4, 'Camarão, mandioca, leite de coco, azeite de dendê, arroz', 'Mar & Terra Distribuidora'),
							   (null, 5, 'Bacalhau, batata, ovo, cebola, azeite', 'Importadora Lisboa'),
							   (null, 6, 'Frango, batata, massa de trigo', 'Avícola São José'),
							   (null, 7, 'Carne moída, massa de trigo', 'Carnes Boi Nobre'),
							   (null, 8, 'Queijo, massa de trigo', 'Laticínios Vale do Sereno'),
							   (null, 9, 'Palmito, massa de trigo, creme de leite', 'Conservas Sabor da Terra'),
							   (null, 10, 'Camarão, arroz arbóreo, limão siciliano, alho-poró', 'Mar & Terra Distribuidora'),
							   (null, 11, 'Carne seca, mandioca, queijo coalho', 'Carnes Boi Nobre e Laticínios Vale do Sereno'),
							   (null, 12, 'Tomate, muçarela de búfala, manjericão', 'Queijaria Bela Vista e Horta Santa Luzia'),
							   (null, 13, 'Linguiça, polenta, molho de tomate', 'Carnes Boi Nobre e Moinho Dourado'),
							   (null, 14, 'Frango, queijo, molho de tomate, arroz, batata', 'Avícola São José e Laticínios Vale do Sereno'),
							   (null, 15, 'Salmão, legumes, alcaparras', 'Pescados do Norte e Hortifruti Natural da Terra'),
							   (null, 16, 'Cachaça, limão, açúcar', 'Destilaria Nacional'),
							   (null, 17, 'Maracujá', 'Hortifruti Natural da Terra'),
							   (null, 18, 'Malte, lúpulo', 'Cervejaria do Vale'),
							   (null, 19, 'Maracujá, creme de leite, açúcar', 'Hortifruti Natural da Terra e Laticínios Vale do Sereno'),
							   (null, 20, 'Leite condensado, ovos, açúcar', 'Laticínios Vale do Sereno');
   
-- inserção na tabela pedido
insert into pedido values(null, 1, 4, 1, 2, 29.90, '2024-07-01', 'Concluído'),
						 (null, 3, 4, 2, 1, 42.00, '2024-07-01', 'Concluído'),
						 (null, 6, 7, 3, 1, 37.50,'2024-07-01', 'Concluído'),
						 (null, 8, 7, 4, 3, 45.00,'2024-07-01', 'Concluído'),
						 (null, 10, 8, 5, 2, 38.00,'2024-07-02', 'Pendente'),
						 (null, 15, 8, 6, 4, 6.50,'2024-07-02', 'Concluído'),
						 (null, 22, 4, 7, 3, 5.00,'2024-07-02', 'Concluído'),
						 (null, 18, 4, 8, 2, 5.00,'2024-07-02', 'Concluído'),
						 (null, 4, 7, 9, 5, 6.00,'2024-07-02', 'Concluído'),
						 (null, 6, 7, 10, 1, 36.00,'2024-07-03', 'Concluído'),
						 (null, 9, 8, 11, 3, 32.00,'2024-07-03', 'Concluído'),
						 (null, 11, 8, 12, 1, 22.00,'2024-07-03', 'Concluído'),
						 (null, 24, 4, 13, 2, 28.00,'2024-07-03', 'Concluído'),
						 (null, 27, 4, 14, 1, 35.00,'2024-07-03', 'Concluído'),
						 (null, 17, 7, 15, 2, 42.00,'2024-07-03', 'Concluído'),
						 (null, 7, 7, 16, 3, 15.00,'2024-07-04', 'Concluído'),
						 (null, 13, 8, 17, 2, 8.00,'2024-07-04', 'Concluído'),
						 (null, 25, 8, 18, 4, 7.50,'2024-07-04', 'Concluído'),
						 (null, 22, 4, 19, 1, 12.00,'2024-07-04', 'Concluído'),
						 (null, 2, 4, 20, 2, 10.00,'2024-07-04', 'Concluído'),
						 (null, 8, 7, 2, 1, 42.00,'2024-07-04', 'Concluído'),
						 (null, 11, 7, 3, 2, 37.50,'2024-07-05', 'Concluído'),
						 (null, 18, 8, 4, 3, 45.00,'2024-07-05', 'Concluído'),
						 (null, 22, 8, 5, 1, 38.00,'2024-07-05', 'Concluído'),
						 (null, 19, 4, 6, 4, 6.50,'2024-07-05', 'Concluído'),
						 (null, 28, 4, 7, 3, 5.00,'2024-07-05', 'Concluído'),
						 (null, 1, 7, 8, 2, 5.00,'2024-07-05', 'Concluído'),
						 (null, 7, 7, 9, 5, 6.00,'2024-07-05', 'Concluído'),
						 (null, 19, 8, 10, 1, 36.00,'2024-07-05', 'Concluído'),
						 (null, 15, 8, 11, 3, 32.00,'2024-07-05', 'Concluído'),
                         (null, 24, 4, 12, 1, 22.00,'2024-07-05', 'Concluído'),
                         (null, 12, 4, 13, 2, 28.00,'2024-07-05', 'Concluído'),
                         (null, 4, 7, 14, 1, 35.00,'2024-07-05', 'Concluído'),
                         (null, 9, 7, 15, 2, 42.00,'2024-07-06', 'Concluído'),
                         (null, 18, 8, 16, 3, 15.00,'2024-07-06', 'Concluído'),
                         (null, 5, 8, 17, 2, 8.00,'2024-07-06', 'Pendente'),
                         (null, 22, 4, 18, 4, 7.50,'2024-07-06', 'Concluído'),
                         (null, 14, 4, 19, 1, 12.00,'2024-07-06', 'Pendente'),
                         (null, 19, 7, 20, 2, 10.00,'2024-07-06', 'Concluído'),
                         (null, 8, 7, 1, 2, 29.90,'2024-07-06', 'Pendente'),
                         (null, 7, 8, 2, 1, 42.00,'2024-07-06', 'Concluído'),
                         (null, 4, 8, 3, 2, 37.50,'2024-07-06', 'Pendente'),
                         (null, 21, 4, 4, 3, 45.00,'2024-07-06', 'Concluído'),
                         (null, 4, 4, 5, 1, 38.00,'2024-07-06', 'Pendente'),
                         (null, 13, 7, 6, 4, 6.50,'2024-07-06', 'Concluído'),
                         (null, 25, 7, 7, 3, 5.00,'2024-07-06', 'Pendente'),
                         (null, 7, 8, 8, 2, 5.00,'2024-07-06', 'Concluído'),
                         (null, 7, 8, 8, 2, 5.00,'2024-07-06', 'Concluído'),
                         (null, 12, 4, 10, 1, 36.00,'2024-07-06', 'Concluído'),
                         (null, 10, 4, 11, 3, 32.00,'2024-07-06', 'Pendente');
 
-- lista de select
select * from funcionario;
select * from cliente;
select * from produto;
select * from info_produto;
select * from pedido;

-- atualização de funcionario
desc funcionario;
select cargo,salario from funcionario where cpf="444.555.666-77";
SET SQL_SAFE_UPDATES = 0;
update funcionario set cargo="Garçonete", salario=2700.00 where cpf="444.555.666-77";
SET SQL_SAFE_UPDATES = 1;

-- atualização de pedidos
select id_pedido from pedido where data_pedido<'2024-07-06';
SET SQL_SAFE_UPDATES = 0;
update pedido set situacao="Concluído" where data_pedido<'2024-07-06';
SET SQL_SAFE_UPDATES = 1;

-- remoção do funcionário
select id_funcionario from funcionario where cpf="222.333.444-55";
SET SQL_SAFE_UPDATES = 0;
delete from funcionario where cpf="222.333.444-55";
SET SQL_SAFE_UPDATES = 1;
select * from funcionario;

-- Nome e categoria dos produtos cujo preço ultrapassa os 30 reais
select nome,categoria from produto where preco>30;

-- Nome, telefone e data de nascimento dos clientes que nasceram antes de 1985
select nome,telefone,data_nascimento from cliente where year(data_nascimento)<1985;

-- Id_produto e ingredientes de info_produto onde o registro possua a palavra "carne" em ingredientes
select id_produto, ingredientes from info_produto where ingredientes like "%carne%";

-- Nome e categoria dos produtos ordenados em ordem alfabética por categoria, para cada categoria a ordenação é pelo nome do produto
select nome, categoria from produto order by categoria asc, nome asc;

-- 5 produtos mais caros do restaurante
select * from produto order by preco desc limit 5;

-- A cada dia da semana 2 pratos principais estão na promoção, hoje você deve selecionar 2 produtos da categoria ‘Prato Principal’ e pular 6 registros (offset = 5)
select * from produto where categoria="Prato Principal" limit 2 offset 5;

-- backup da tabela pedidos
create table backup_pedidos as select * from pedido;

-- Selecione todos os pedidos que do id funcionário igual a 4 e status é igual a ‘Pendente’
select * from pedido where id_funcionario=4 and situacao="Pendente";

-- Selecione todos os pedidos que o status não é igual a ‘Concluído’
select * from pedido where situacao<>"Concluído";

-- Selecione os pedidos que contenham os id produtos: 1, 3, 5, 7 ou 8
select * from pedido where id_produto in (1,3,5,7,8);

-- Selecione os clientes que começam com a letra c
select * from cliente where nome like "c%";

-- Selecione as informações de produtos que contenham nos ingredientes ‘carne’ ou ‘frango’
select * from info_produto where ingredientes like "%carne%" or ingredientes like "%frango%";

-- Selecione os produtos com o preço entre 20 a 30
select * from produto where preco between 20 and 30;

-- Atualizar id pedido 6 da tabela pedidos para status = NULL
update pedido set situacao=NULL where id_pedido=6;

-- Selecione os pedidos com status nulos
select * from pedido where situacao IS NULL;

-- Selecionar o id pedido e o status da tabela pedidos, porém para todos os status nulos, mostrar 'Cancelado'
select id_pedido,ifnull(situacao,"Cancelado") as situacao_corrigida from pedido;

-- Selecione o nome, cargo, salário dos funcionários e adicione um campo chamado media_salario, que irá mostrar ‘Acima da média’, para o salário > 3000, senão 'Abaixo da média'
select nome,cargo,salario,if(salario>3000,"Acima da Média","Abaixo da Média") as media_salario from funcionario;

-- Calcule a quantidade de pedidos
select count(id_pedido) as quantidade_pedidos from pedido;

-- Quantidade de produtos vendidos
select sum(quantidade) as quantidade_produtos from pedido;

-- Calcule a quantidade de clientes únicos que realizaram pedidos
select count(distinct id_cliente) as clientes_unicos, group_concat(distinct id_cliente) as id_cliente_unico from pedido;

-- Calcule a média de preço dos produtos
select round(avg(preco),2) as media_produtos from produto;

-- Calcule o mínimo e máximo do preço dos produtos
select min(preco) as preco_minimo,max(preco) as preco_maximo from produto;

-- Selecione o nome e o preço do produto e faça um rank dos 5 produtos mais caros
select nome,preco,row_number() over (order by preco desc) as ranking_precos from produto limit 5;

-- Selecione a média dos preços dos produtos agrupados por categoria
select categoria,round(avg(preco),2) as media_precos from produto group by categoria order by categoria asc;

-- Selecionar o fornecedor e a quantidade de produtos que vieram daquele fornecedor da informações de produtos
select fornecedor,count(fornecedor) as quantidade_por_fornecedor from info_produto group by fornecedor order by quantidade_por_fornecedor desc,fornecedor asc;

-- Selecionar os fornecedores que possuem mais de um produto cadastrado
select fornecedor,count(fornecedor) as quantidade_por_fornecedor from info_produto group by fornecedor having count(fornecedor)>1 order by quantidade_por_fornecedor desc,fornecedor asc;

-- Selecionar os clientes que realizaram apenas 1 pedido
select id_cliente,count(id_cliente) contagem_pedidos from pedido group by id_cliente having count(id_cliente)=1;
