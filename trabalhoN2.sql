CREATE TABLE pessoa (
    idPessoa INT PRIMARY KEY IDENTITY(1,1),
    nomePessoa VARCHAR(100) NOT NULL,
    telefonePessoa VARCHAR(30) NOT NULL,
    emailPessoa VARCHAR(50),
    cpf VARCHAR(30),
    cnpj VARCHAR(30),
    razaoSocial VARCHAR(100)
);

CREATE TABLE usuario (
    idUsuario INT PRIMARY KEY IDENTITY(1,1),
    nomeUsuario VARCHAR(100) NOT NULL,
    emailUsuario VARCHAR(50) NOT NULL,
    senhaUsuario VARCHAR(30) NOT NULL
);

CREATE TABLE produto (
    idProduto INT PRIMARY KEY IDENTITY(1,1),
    nomeProduto VARCHAR(100) NOT NULL,
    quantidadeProduto INT NOT NULL,
	precoProduto FLOAT NOT NULL
);

CREATE TABLE venda (
    idVenda INT PRIMARY KEY IDENTITY(1,1),
    idPessoa INT FOREIGN KEY REFERENCES pessoa(idPessoa),
	idProduto INT FOREIGN KEY REFERENCES produto(idProduto),
	idUsuario INT FOREIGN KEY REFERENCES usuario(idUsuario),
    quantidadeVenda INT NOT NULL,
	dataVenda DATE NOT NULL
);

CREATE TABLE compra (
    idCompra INT PRIMARY KEY IDENTITY(1,1),
    idPessoa INT FOREIGN KEY REFERENCES pessoa(idPessoa),
	idProduto INT FOREIGN KEY REFERENCES produto(idProduto),
	idUsuario INT FOREIGN KEY REFERENCES usuario(idUsuario),
    quantidadeCompra INT NOT NULL,
	precoUniCompra FLOAT NOT NULL,
	dataCompra DATE NOT NULL
);
