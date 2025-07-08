-- Lista todos os livros emprestados com nome de usuário
SELECT l.titulo, u.nome, e.data_emprestimo
FROM Emprestimo e
JOIN Livro l ON e.id_livro = l.id_livro
JOIN Usuario u ON e.id_usuario = u.id_usuario;
