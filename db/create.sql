CREATE TABLE usuario(
       idUsuario INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
       nome VARCHAR(30),
       cpf VARCHAR(11),
       usuario VARCHAR(15),
       telefone VARCHAR(11),
       email VARCHAR(40),
       senha VARCHAR(65)
);



CREATE TABLE bandeiraPosto(
       idBandeiraPosto INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
       descricao VARCHAR(40)
);



CREATE TABLE bandeira(
       idBandeira INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
       latitude VARCHAR(17),
       longitude VARCHAR(17)
);



CREATE TABLE posto(
       idPosto INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
       idBandeira INTEGER,
       nome VARCHAR(50),
       enderco VARCHAR(50),
       telefone VARCHAR(11),
       FOREIGN KEY (idBandeira) REFERENCES bandeira(idBandeira)
);



CREATE TABLE combustivel(
       idCombustivel INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
       descricao VARCHAR(45)
);



CREATE TABLE precoPosto(
       idPrecoPosto INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
       idPosto INTEGER,
       idCombustivel INTEGER,
       data DATE,
       fotoPlaca BLOB,
       valor DECIMAL(8,2),
       FOREIGN KEY (idPosto) REFERENCES posto(idPosto),
       FOREIGN KEY (idCombustivel) REFERENCES combustivel(idCombustivel)
);


