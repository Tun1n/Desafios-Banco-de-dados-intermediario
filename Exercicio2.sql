CREATE TABLE ProdutoCategoria
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Produto
(
	ProdutoId INT PRIMARY KEY IDENTITY(1,1),
	Nome VARCHAR(50) NOT NULL,
	Estoque INT,
	CategoriaId INT NOT NULL,
	FOREIGN KEY (CategoriaId) REFERENCES ProdutoCategoria(Id)
);

INSERT INTO ProdutoCategoria (Nome)
VALUES ('Eletrônicos'), ('Roupas'), ('Alimentos');

INSERT INTO Produto (Nome, CategoriaId, Estoque)
VALUES 
('Notebook Lenovo', 1,100),
('Smartphone Samsung', 1, 200),
('Camiseta Polo', 2,500),
('Calça Jeans', 2,250),
('Arroz 5kg', 3,400);

SELECT p.Nome, c.Nome, c.Id FROM Produto as P
INNER JOIN ProdutoCategoria as C
ON P.CategoriaId = c.Id

DELETE FROM Produto 
WHERE Produto.CategoriaId = 2

SELECT * FROM Produto