-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Jun-2023 às 21:29
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
(1, 'Garrafas', 'R$ 15,00', 1500),
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

--
-- Extraindo dados da tabela `sessions`
--

INSERT INTO `sessions` (`id`, `id_user`, `session`) VALUES
(0, 21, 5),
(0, 21, 15),
(0, 21, 57728),
(0, 21, 6),
(0, 21, 0),
(0, 21, 0),
(0, 22, 0),
(0, 22, 0),
(0, 22, 2),
(0, 22, 7940),
(0, 22, 0),
(0, 22, 0),
(0, 22, 0),
(0, 22, 8),
(0, 22, 184),
(0, 22, 9),
(0, 21, 838),
(0, 22, 0),
(0, 22, 9),
(0, 22, 9),
(0, 22, 0),
(0, 22, 88),
(0, 22, 0),
(0, 22, 792191),
(0, 22, 0),
(0, 22, 444),
(0, 22, 3),
(0, 22, 11),
(0, 22, 2),
(0, 107, 0),
(0, 48, 95),
(0, 48, 4),
(0, 48, 0),
(0, 48, 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `office` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `password` varchar(257) NOT NULL,
  `email` varchar(200) NOT NULL,
  `token` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `office`, `cpf`, `password`, `email`, `token`) VALUES
(21, 'Manoela', 'Larissa', 'Atriz', '49047138855', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'teste@gmail.com', ''),
(48, 'vitor', 'Moreira', 'dev junnior', '12345678910', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'teste@gmail.com', ''),
(107, 'vitor', 'josue', 'dev senior', '12345678911', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'teste@gmail.com', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
