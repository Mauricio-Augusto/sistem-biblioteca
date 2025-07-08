CREATE TABLE Autor (
  id_autor INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

CREATE TABLE Livro (
  id_livro INT PRIMARY KEY,
  titulo VARCHAR(200) NOT NULL,
  ano INT,
  id_autor INT,
  FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

CREATE TABLE Usuario (
  id_usuario INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Emprestimo (
  id_emprestimo INT PRIMARY KEY,
  id_usuario INT,
  id_livro INT,
  data_emprestimo DATE,
  data_devolucao DATE,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
  FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);

feat: adiciona criação das tabelas SQL
