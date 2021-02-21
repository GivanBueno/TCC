--
-- Estrutura da tabela `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `classe_name` text NOT NULL,
  `classe` text NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `classes`
--

INSERT INTO `classes` (`id`, `classe_name`, `classe`, `icon`) VALUES
(1, 'articles', 'Artigos Científicos', 'newspaper'),
(2, 'livros', 'Livros', 'book'),
(3, 'documentos', 'Documentos e Refêrencias', 'file'),
(4, 'links', 'Links', 'bookmark');

-- --------------------------------------------------------
--
-- Índices para tabela `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT de tabela `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


UPDATE documentos SET classe = 'Documentos e Refêrencias' WHERE classe = 'documentos e refencias';