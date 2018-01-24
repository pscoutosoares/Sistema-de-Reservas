
CREATE TABLE Item (
tipo varchar(100),
disponibilidade varchar(1),
codigo_identificador varchar(20) PRIMARY KEY,
descrição varchar(500),
cpf_fk_operador varchar(20)
)

CREATE TABLE Operador (
nome_completo varchar(100),
matricula varchar(20),
cpf varchar(20) PRIMARY KEY,
senha varchar(20),
email varchar(50),
login varchar(20),
cpf_fk_gerente varchar(20)
)

CREATE TABLE Reserva (
estado varchar(1),
confirmada varchar(1),
data_reserva varchar(20),
data_reservada varchar(20),
horario_reservado varchar(20),
codigo_identificar Texto(1) PRIMARY KEY,
codigo_identificador_fk_item varchar(20),
cpf_fk_usuario varchar(20),
cpf_fk_operador varchar(20),
FOREIGN KEY(codigo_identificador_fk_item) REFERENCES Item (codigo_identificador),
FOREIGN KEY(cpf_fk_operador) REFERENCES Operador (cpf)
)

CREATE TABLE Gerente (
cargo varchar(50),
senha varchar(50),
nome_completo varchar(100),
cpf varchar(20) PRIMARY KEY,
login varchar(20),
email varchar(50),
telefone_celular varchar(20),
matricula varchar(20)
)

CREATE TABLE Usuário (
nome_completo varchar(100),
cpf varchar(20) PRIMARY KEY,
senha varchar(20),
perfil varchar(20),
email varchar(20),
matricula varchar(20),
login varchar(20),
telefone_celular varchar(20)
)

ALTER TABLE Item ADD FOREIGN KEY(cpf_fk_operador) REFERENCES Operador (cpf)
ALTER TABLE Operador ADD FOREIGN KEY(cpf_fk_gerente) REFERENCES Gerente (cpf)
ALTER TABLE Reserva ADD FOREIGN KEY(cpf_fk_usuario) REFERENCES Usuário (cpf)
