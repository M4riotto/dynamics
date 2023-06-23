-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Jun-2023 às 21:41
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
-- Estrutura da tabela `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(70) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `houseNumber` varchar(5) NOT NULL,
  `referencePoint` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clients`
--

INSERT INTO `clients` (`id`, `fname`, `lname`, `cpf`, `dateOfBirth`, `phone`, `email`, `address`, `street`, `cep`, `houseNumber`, `referencePoint`) VALUES
(2, 'vitor', 'Moreira', '12345678910', '2003-07-18', '129978038973', 'teste@gmail.com', 'afqwfqwqf', 'teste', '1888564', '115', 'casa 8'),
(3, 'josephino', 'laraveol', '49040128871', '2003-07-18', '129978038973', 'lelek@gmail.com', 'afqwfqwqf', 'efqfw', '1888564', '115', 'ao lado do seu psdqowi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `office` varchar(20) NOT NULL,
  `wage` varchar(10) NOT NULL,
  `birth` date NOT NULL,
  `street` varchar(50) NOT NULL,
  `number` int(5) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `employees`
--

INSERT INTO `employees` (`id`, `lname`, `fname`, `cpf`, `email`, `office`, `wage`, `birth`, `street`, `number`, `address`) VALUES
(1, 'moreira', 'vitor', '490490490', 'teste@gmail.com', 'administragodr de ge', '$1200', '2003-07-18', 'derivlado', 118, 'morro do algodão'),
(2, 'Lucas', 'Moreira', '12345678910', 'teste@gmail.com', 'dev junnior', '1200', '2003-07-18', 'efqfw', 111, 'afqwfqwqf'),
(3, 'josueçç', 'Moreira', '12345678910', 'teste@gmail.com', 'dev junnior', '1200', '2003-07-18', 'efqfw', 111, 'afqwfqwqf'),
(4, 'laraveol', 'xoxo', '12345678910', 'teste@gmail.com', 'dev senior', '1200', '2003-07-18', 'efqfw', 7, 'afqwfqwqf'),
(5, 'Siqueira', 'Jean', '12345678910', 'teste@gmail.com', 'dev junnior', '1200', '1980-09-28', 'perieira', 2222, 'poiares');

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
-- Estrutura da tabela `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(11) NOT NULL,
  `id_sales` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `product_sales`
--

INSERT INTO `product_sales` (`id`, `id_sales`, `id_product`, `stock`) VALUES
(2, 12, 9, 10),
(3, 12, 12, 10),
(4, 14, 8, 10),
(5, 14, 13, 10),
(6, 14, 15, 10),
(7, 15, 8, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sales`
--

INSERT INTO `sales` (`id`, `id_cliente`, `date`) VALUES
(1, 3, '2023-06-23'),
(2, 3, '2023-06-23'),
(3, 3, '2023-06-23'),
(4, 3, '2023-06-23'),
(5, 3, '2023-06-23'),
(6, 3, '2023-06-23'),
(7, 3, '2023-06-23'),
(8, 3, '2023-06-23'),
(9, 3, '2023-06-23'),
(10, 3, '2023-06-23'),
(11, 3, '2023-06-23'),
(12, 3, '2023-06-23'),
(13, 2, '2023-06-23'),
(14, 2, '2023-06-23'),
(15, 2, '2023-06-23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sales2`
--

CREATE TABLE `sales2` (
  `id` int(11) NOT NULL,
  `client` varchar(250) NOT NULL,
  `product` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sales2`
--

INSERT INTO `sales2` (`id`, `client`, `product`) VALUES
(1, 'josephino', 'Garrafas'),
(2, 'vitor', 'Lápis de Escrever');

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
(36, 48, 2147483647),
(37, 48, 10),
(39, 48, 18),
(49, 48, 44661);

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
(48, 'vitor', 'Moreira', 'dev junnior', '12345678910', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'teste@gmail.com', ''),
(107, 'vitor', 'josue', 'dev senior', '12345678911', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'teste@gmail.com', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_sales` (`id_sales`),
  ADD KEY `fk_id_product` (`id_product`);

--
-- Índices para tabela `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_client` (`id_cliente`);

--
-- Índices para tabela `sales2`
--
ALTER TABLE `sales2`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `sales2`
--
ALTER TABLE `sales2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `product_sales`
--
ALTER TABLE `product_sales`
  ADD CONSTRAINT `fk_id_product` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_id_sales` FOREIGN KEY (`id_sales`) REFERENCES `sales` (`id`);

--
-- Limitadores para a tabela `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_id_client` FOREIGN KEY (`id_cliente`) REFERENCES `clients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
