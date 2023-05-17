-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Maio-2023 às 19:15
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dynamics`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`) VALUES
(1, 'Garrafa', 'R$ 15,00', 150),
(2, 'Mochila', 'R$ 150,00', 300),
(3, 'Caderno', 'R$ 10,00', 150),
(8, 'Borracha', 'R$ 1,50', 110),
(9, 'Caneta Bic', 'R$ 2,99', 750),
(10, 'Estojo', 'R$ 30,00', 240),
(11, 'Tesoura', 'R$ 18,00', 60),
(12, 'Marca Texto', 'R$ 2,00', 500),
(13, 'Cx Lápis de Cor', 'R$ 48,00', 270),
(14, 'Lápis de Escrever', 'R$ 1,00', 499),
(15, 'Régua', 'R$ 20,00', 40),
(16, 'Lapisera', 'R$ 5,00', 200);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `session` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `office` varchar(50) NOT NULL,
  `cpf` int(11) NOT NULL,
  `password` varchar(257) NOT NULL,
  `email` varchar(200) NOT NULL,
  `token` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `office`, `cpf`, `password`, `email`, `token`) VALUES
(1, 'Giovanna', 'Siqueira', 'Dev Junior', 490441, '63e3ca6db02a52b901e682868ab41a1e3032f9f52dd2dad931c98847780f8de7', 'siqueira.nicolau@aluno.ifsp.edu.br', ''),
(2, 'Vítor', 'Moreira', 'Dev Junior', 490471, '3cbe64eb45ee11ec63f0ab109169f6a934ef1168ca01899f0c1e5fbb32346574', 'vitor.moreira@aluno.ifsp.edu.br', ''),
(3, 'Vítor', 'Barreto', 'Dev Junior', 450491, '63e3ca6db02a52b901e682868ab41a1e3032f9f52dd2dad931c98847780f8de7', 'vitor@gmail.com', ''),
(4, 'Nata', 'Mendes', 'Dev Junior', 551875, '3cbe64eb45ee11ec63f0ab109169f6a934ef1168ca01899f0c1e5fbb32346574', 'nata_mendes@gmail.com', ''),
(5, 'Renan', 'Cavichi', 'Dev Senior', 531855, '63e3ca6db02a52b901e682868ab41a1e3032f9f52dd2dad931c98847780f8de7', 'renancavichi@gmail.com', ''),
(6, 'Moreira', 'Moreira', 'dev junnior', 490401, 'b8627206beb9e3b1bc6c65f3292d35fc8be5e1a2a764ad3ff2efe3c73b3ab77a', 'teste@gmail.com', ''),
(7, 'jubieleu', 'Moreira', 'dev junnior', 490401, 'b8627206beb9e3b1bc6c65f3292d35fc8be5e1a2a764ad3ff2efe3c73b3ab77a', 'teste@gmail.com', ''),
(8, 'villa', 'josue', 'dev senior', 490401, 'db0b535428ac709e69473e02f1d00bbb301f0adab3a40fa823da586d3eb45867', 'teste@gmail.com', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sessions`
--
ALTER TABLE `sessions`
  ADD KEY `fk_id_user` (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`cpf`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_id_user` FOREIGN KEY (`id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
