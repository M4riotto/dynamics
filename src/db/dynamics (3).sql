-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jun-2023 às 23:15
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
(3, 'josephino', 'laraveol', '49040128871', '2003-07-18', '129978038973', 'lelek@gmail.com', 'afqwfqwqf', 'efqfw', '1888564', '115', 'ao lado do seu psdqowi'),
(20, 'Gabriel', 'Carvalho', '13076062716', '1982-06-15', '41 83846 4593', 'g_carvalho@hotmail.couk', '796-5805 Congue. Rd.', 'São Paulo', '97749-092', '', '699'),
(21, 'Whitney', 'de Moura', '11564254522', '1986-01-29', '77 63311 6944', 'w.demoura8463@aol.couk', '266-5834 Aliquam Ave', 'Maranhão', '75778-314', '', '988'),
(22, 'Lara', 'de Lourdes', '17880091802', '1967-07-10', '23 14543 4835', 'ldelourdes@aol.ca', 'P.O. Box 573, 5873 Tincidunt Street', 'Maranhão', '94339-389', '', '725'),
(23, 'Raphael', 'Pinto', '15917278438', '1979-02-07', '26 12761 6490', 'pintoraphael4869@hotmail.com', '342-3798 Eget Road', 'Pará', '52721-824', '', '271'),
(24, 'Jack', 'Galdino', '13893089017', '1944-04-21', '32 49918 8687', 'jack.galdino@outlook.couk', 'Ap #503-2103 Mauris Av.', 'Minas Gerais', '82776-601', '', '350'),
(25, 'Evangeline', 'do Carmo', '11757135429', '1954-10-23', '74 73142 1539', 'e.docarmo2861@icloud.edu', '399-8708 Malesuada Avenue', 'Rio Grande do Sul', '90955-232', '', '623'),
(26, 'Warren', 'Figueiredo', '18028488701', '1969-09-21', '48 36562 5135', 'w_figueiredo5425@aol.ca', 'Ap #667-8531 Sodales Rd.', 'Rio de Janeiro', '14887-950', '', '578'),
(27, 'Orli', 'Cunha', '13094472935', '1962-11-18', '37 26534 4473', 'c_orli@aol.ca', 'Ap #665-8980 Ipsum. Street', 'Minas Gerais', '58713-033', '', '343'),
(28, 'Elijah', 'Braz', '13428553779', '1978-09-05', '38 61328 7694', 'b-elijah486@yahoo.com', 'P.O. Box 305, 4216 Lectus Street', 'Rio de Janeiro', '13633-163', '', '657'),
(29, 'Shelly', 'Borges', '13724785549', '1943-06-13', '53 37267 2614', 'borges.shelly3116@hotmail.couk', '508 Semper. Road', 'Pará', '95214-971', '', '750'),
(30, 'Hilel', 'Brito', '11775353172', '1950-01-18', '39 43659 6834', 'h.brito2047@aol.com', 'P.O. Box 574, 6443 Hendrerit Rd.', 'Rio de Janeiro', '39685645', '495', '267'),
(31, 'Tashya', 'Bueno', '16144652080', '1984-05-28', '46 42312 7298', 't.bueno9555@hotmail.net', '455-4760 Sociosqu Avenue', 'Maranhão', '32802446', '547', '882'),
(32, 'MacKensie', 'Cunha', '11922472198', '1961-01-25', '14 42458 5395', 'cunha_mackensie6757@google.org', 'Ap #976-3631 Nunc Ave', 'Ceará', '81755-832', '780', '775'),
(33, 'Ignatius', 'Furtado', '18806258294', '1955-03-17', '25 24630 7035', 'i.furtado@icloud.edu', '492-8934 Sed Rd.', 'Pernambuco', '75731-633', '725', '418'),
(34, 'Uriel', 'Moraes', '12101895654', '1982-11-19', '47 83559 4251', 'uriel-moraes@google.org', '607-8703 Quisque Road', 'Goiás', '75775-455', '883', '583'),
(35, 'Barbara', 'Cunha', '10484635062', '1987-07-09', '71 84774 4481', 'b.cunha193@hotmail.net', '7652 Odio St.', 'Pernambuco', '68404-561', '380', '337'),
(36, 'Nathan', 'Maia', '16067676058', '1952-07-01', '36 37413 6293', 'm-nathan4248@yahoo.ca', '1781 Dictum Street', 'Santa Catarina', '89534-563', '385', '398'),
(37, 'Raphael', 'Mota', '15225651860', '1941-01-18', '46 83340 2885', 'r-mota@yahoo.edu', '518-3025 Erat. St.', 'Goiás', '63384-808', '766', '525'),
(38, 'Solomon', 'Sántos', '13211130608', '1956-02-22', '25 43448 4661', 's_sntos3974@aol.com', '3449 Ornare St.', 'Ceará', '58831-037', '289', '988'),
(39, 'Farrah', 'Nogueira', '18861298764', '1956-10-04', '32 47733 8556', 'f_nogueira@google.ca', 'P.O. Box 915, 1532 Ornare St.', 'Rio Grande do Sul', '39628737', '998', '587'),
(40, 'Hilel', 'Brito', '11775353172', '1950-01-18', '39 43659 6834', 'h.brito2047@aol.com', 'P.O. Box 574, 6443 Hendrerit Rd.', 'Rio de Janeiro', '39685645', '495', '267'),
(41, 'Tashya', 'Bueno', '16144652080', '1984-05-28', '46 42312 7298', 't.bueno9555@hotmail.net', '455-4760 Sociosqu Avenue', 'Maranhão', '32802446', '547', '882'),
(42, 'MacKensie', 'Cunha', '11922472198', '1961-01-25', '14 42458 5395', 'cunha_mackensie6757@google.org', 'Ap #976-3631 Nunc Ave', 'Ceará', '81755-832', '780', '775'),
(43, 'Ignatius', 'Furtado', '18806258294', '1955-03-17', '25 24630 7035', 'i.furtado@icloud.edu', '492-8934 Sed Rd.', 'Pernambuco', '75731-633', '725', '418'),
(44, 'Uriel', 'Moraes', '12101895654', '1982-11-19', '47 83559 4251', 'uriel-moraes@google.org', '607-8703 Quisque Road', 'Goiás', '75775-455', '883', '583'),
(45, 'Barbara', 'Cunha', '10484635062', '1987-07-09', '71 84774 4481', 'b.cunha193@hotmail.net', '7652 Odio St.', 'Pernambuco', '68404-561', '380', '337'),
(46, 'Nathan', 'Maia', '16067676058', '1952-07-01', '36 37413 6293', 'm-nathan4248@yahoo.ca', '1781 Dictum Street', 'Santa Catarina', '89534-563', '385', '398'),
(47, 'Raphael', 'Mota', '15225651860', '1941-01-18', '46 83340 2885', 'r-mota@yahoo.edu', '518-3025 Erat. St.', 'Goiás', '63384-808', '766', '525'),
(48, 'Solomon', 'Sántos', '13211130608', '1956-02-22', '25 43448 4661', 's_sntos3974@aol.com', '3449 Ornare St.', 'Ceará', '58831-037', '289', '988'),
(49, 'Farrah', 'Nogueira', '18861298764', '1956-10-04', '32 47733 8556', 'f_nogueira@google.ca', 'P.O. Box 915, 1532 Ornare St.', 'Rio Grande do Sul', '39628737', '998', '587'),
(50, 'Hilel', 'Brito', '11775353172', '1950-01-18', '39 43659 6834', 'h.brito2047@aol.com', 'P.O. Box 574, 6443 Hendrerit Rd.', 'Rio de Janeiro', '39685645', '495', '267'),
(51, 'Tashya', 'Bueno', '16144652080', '1984-05-28', '46 42312 7298', 't.bueno9555@hotmail.net', '455-4760 Sociosqu Avenue', 'Maranhão', '32802446', '547', '882'),
(52, 'MacKensie', 'Cunha', '11922472198', '1961-01-25', '14 42458 5395', 'cunha_mackensie6757@google.org', 'Ap #976-3631 Nunc Ave', 'Ceará', '81755-832', '780', '775'),
(53, 'Ignatius', 'Furtado', '18806258294', '1955-03-17', '25 24630 7035', 'i.furtado@icloud.edu', '492-8934 Sed Rd.', 'Pernambuco', '75731-633', '725', '418'),
(54, 'Uriel', 'Moraes', '12101895654', '1982-11-19', '47 83559 4251', 'uriel-moraes@google.org', '607-8703 Quisque Road', 'Goiás', '75775-455', '883', '583'),
(55, 'Barbara', 'Cunha', '10484635062', '1987-07-09', '71 84774 4481', 'b.cunha193@hotmail.net', '7652 Odio St.', 'Pernambuco', '68404-561', '380', '337'),
(56, 'Nathan', 'Maia', '16067676058', '1952-07-01', '36 37413 6293', 'm-nathan4248@yahoo.ca', '1781 Dictum Street', 'Santa Catarina', '89534-563', '385', '398'),
(57, 'Raphael', 'Mota', '15225651860', '1941-01-18', '46 83340 2885', 'r-mota@yahoo.edu', '518-3025 Erat. St.', 'Goiás', '63384-808', '766', '525'),
(58, 'Solomon', 'Sántos', '13211130608', '1956-02-22', '25 43448 4661', 's_sntos3974@aol.com', '3449 Ornare St.', 'Ceará', '58831-037', '289', '988'),
(59, 'Farrah', 'Nogueira', '18861298764', '1956-10-04', '32 47733 8556', 'f_nogueira@google.ca', 'P.O. Box 915, 1532 Ornare St.', 'Rio Grande do Sul', '39628737', '998', '587'),
(60, 'Georgia', 'dos Reis', '11850969019', '1973-09-06', '86 91431 8243', 'dgeorgia647@google.com', '3778 Est Street', 'Paraíba', '52821-059', '310', '739'),
(61, 'Heidi', 'Diniz', '13660136238', '1997-09-28', '45 68624 6216', 'd-heidi4624@aol.edu', 'Ap #850-9174 Tellus. Rd.', 'Paraíba', '68273-521', '677', '215'),
(62, 'Autumn', 'de Matos', '17091700067', '1981-12-14', '85 26482 6171', 'autumn.dematos@outlook.org', 'Ap #882-1514 Ultricies Street', 'Paraíba', '65245-854', '539', '209'),
(63, 'Caldwell', 'Amaral', '18238641847', '1994-04-28', '31 35870 2728', 'c-amaral1232@icloud.org', 'Ap #658-6905 Odio St.', 'Minas Gerais', '51482-919', '946', '454'),
(64, 'Evan', 'Ribeiro', '14440661545', '1966-12-16', '72 54996 0797', 'ribeiro_evan@icloud.com', '489-9100 Risus St.', 'Santa Catarina', '58354-785', '283', '853'),
(65, 'Hilel', 'Garcia', '18372909073', '1955-06-14', '82 72296 4386', 'h-garcia5198@icloud.org', 'Ap #229-4104 Nunc Av.', 'São Paulo', '89156-870', '124', '573'),
(66, 'Bruce', 'Leal', '13865334851', '1952-02-19', '52 39567 7313', 'l_bruce4761@icloud.com', 'P.O. Box 437, 8413 Lorem Av.', 'Rio Grande do Sul', '85750-886', '555', '111'),
(67, 'Carson', 'da Silva', '17873492590', '1978-02-04', '54 45147 6553', 'dasilvacarson@hotmail.net', '641-5611 Semper Road', 'Rio de Janeiro', '76741-630', '579', '484'),
(68, 'Dillon', 'Macedo', '11528961374', '1951-01-15', '42 55610 4858', 'd_macedo2675@hotmail.org', '239-6124 Hendrerit Rd.', 'Pernambuco', '65131-444', '863', '687'),
(69, 'Tallulah', 'Cardoso', '10969026567', '1991-08-21', '24 62314 2106', 'c.tallulah@hotmail.edu', '6971 Phasellus Avenue', 'Paraíba', '65147-111', '198', '298'),
(70, 'Teagan', 'Antunes', '12044150940', '1960-11-25', '84 02754 6712', 'teaganantunes7502@yahoo.net', 'Ap #843-7200 Convallis Street', 'Paraná', '89669-863', '824', '936'),
(71, 'Hedley', 'Abreu', '16002288729', '1984-01-11', '88 84727 5883', 'h-abreu2143@hotmail.ca', '687-4929 Dictum St.', 'Santa Catarina', '26787-325', '215', '903'),
(72, 'Kimberly', 'Bento', '12156104982', '1968-12-11', '14 35522 5840', 'b.kimberly1465@aol.net', 'Ap #932-9540 Semper Ave', 'Ceará', '65589-718', '928', '159'),
(73, 'Octavius', 'Domingues', '12233655164', '1972-04-14', '67 04636 8175', 'odomingues1665@google.org', '226-1479 Luctus St.', 'Bahia', '75795-150', '220', '975'),
(74, 'Gabriel', 'Felix', '15403303287', '1940-08-09', '28 31713 2714', 'g.felix@icloud.com', 'P.O. Box 307, 2293 Pede Rd.', 'Santa Catarina', '25307-432', '418', '779'),
(75, 'Lucas', 'Vaz', '17143627618', '1941-01-11', '72 47510 3253', 'lucas_vaz1696@hotmail.edu', '710-8331 Hendrerit Rd.', 'Pará', '37513226', '240', '412'),
(76, 'Kane', 'de Barros', '13028205869', '1993-03-31', '89 57288 3543', 'd_kane662@google.com', '335-5666 Sapien, Road', 'Pará', '52528-819', '223', '310'),
(77, 'Bianca', 'Barboza', '16306630039', '1994-03-24', '87 67087 2767', 'barboza_bianca888@outlook.ca', '492-1748 Non Rd.', 'Rio Grande do Sul', '89792-525', '505', '871'),
(78, 'Karly', 'Franco', '16263051072', '1944-12-09', '28 14566 3992', 'franco-karly8884@hotmail.ca', '2434 Mauris St.', 'Paraná', '65928-362', '294', '130'),
(79, 'Zachery', 'Borges', '13677311397', '1980-09-22', '55 44784 5815', 'zachery-borges@yahoo.ca', '120-3595 Scelerisque St.', 'Maranhão', '37056806', '921', '929'),
(80, 'Zena', 'de Almeida', '19271530996', '1996-07-26', '67 97741 4468', 'dealmeida.zena4758@yahoo.com', '7055 Egestas. Av.', 'Rio de Janeiro', '38059251', '269', '249'),
(81, 'Wendy', 'Gonçalves', '16528540538', '1959-04-16', '96 18368 3276', 'gonalves_wendy@outlook.couk', '757-1572 Mauris Road', 'Paraná', '67185-379', '973', '758'),
(82, 'Lillian', 'Ramos', '18468044525', '1966-11-03', '94 75231 8914', 'lillian.ramos@outlook.ca', 'Ap #565-8808 Non St.', 'Goiás', '61311-957', '624', '662'),
(83, 'Colt', 'Sales', '14476309156', '1940-10-15', '85 19171 2824', 's.colt2493@aol.com', '3634 Quisque Ave', 'Goiás', '18713-484', '567', '712'),
(84, 'Holmes', 'Alves', '14227514599', '1983-04-02', '22 31266 6674', 'holmesalves@hotmail.ca', 'Ap #167-5595 Montes, Av.', 'Paraná', '43006-646', '519', '750'),
(85, 'Karyn', 'Muniz', '15389095878', '1980-03-14', '18 66347 0221', 'karynmuniz@icloud.edu', 'Ap #297-9488 Imperdiet Road', 'Paraná', '52851-267', '468', '585'),
(86, 'Connor', 'da Rosa', '17314565600', '1962-10-20', '73 16753 5605', 'connor-darosa7998@hotmail.net', 'P.O. Box 341, 3825 Aenean Road', 'Minas Gerais', '61516-994', '434', '853'),
(87, 'Rudyard', 'de Moraes', '14618334768', '1997-03-01', '86 17194 1375', 'd_rudyard@icloud.org', '467-6554 Nulla Ave', 'Bahia', '68417-612', '671', '179'),
(88, 'Timon', 'Marinho', '10133672615', '1957-06-06', '38 40630 0757', 'marinho.timon2471@outlook.edu', '3376 Ac Ave', 'Rio de Janeiro', '88085-872', '684', '924'),
(89, 'Amena', 'Gonzaga', '14552378915', '1954-08-05', '56 28834 9763', 'a_gonzaga486@yahoo.couk', '3516 Sit Avenue', 'Pernambuco', '63461-912', '860', '528'),
(90, 'Quemby', 'Gonzaga', '16523615151', '1987-07-20', '49 63512 1025', 'g-quemby@outlook.com', '850-4213 Sed St.', 'Rio de Janeiro', '83254-683', '263', '183'),
(91, 'Grady', 'de Paula', '18828666039', '1950-06-21', '81 83383 2635', 'd-grady@google.edu', 'P.O. Box 940, 101 Nunc Street', 'Rio Grande do Sul', '93131-543', '990', '736'),
(92, 'Brock', 'Evangelista', '17042455655', '1951-09-25', '34 28398 8506', 'bevangelista6248@hotmail.org', 'Ap #685-9780 Mattis Rd.', 'Paraíba', '89478-815', '421', '745'),
(93, 'Quemby', 'Matos', '13848257394', '1985-12-20', '25 05083 8216', 'matos_quemby7134@aol.ca', '9227 Imperdiet, St.', 'Goiás', '63124-580', '316', '172'),
(94, 'Helen', 'Correa', '13564571675', '1980-03-10', '74 96438 5837', 'c_helen4286@yahoo.net', 'Ap #327-5697 Ut St.', 'Minas Gerais', '83263-992', '901', '548'),
(95, 'Guy', 'do Nascimento', '16676485768', '1982-01-30', '73 57434 4872', 'g.donascimento1498@google.edu', 'P.O. Box 108, 7139 Risus. Rd.', 'Ceará', '53473-370', '402', '833'),
(96, 'Sylvia', 'de Melo', '17802250688', '1985-08-07', '73 42389 7186', 'sdemelo1824@yahoo.edu', '118-7865 Vestibulum St.', 'Pernambuco', '92359-817', '762', '216'),
(97, 'Destiny', 'Nogueira', '14101220320', '1982-02-22', '32 71513 4663', 'destiny_nogueira5063@icloud.net', 'P.O. Box 493, 2087 Magna. Rd.', 'Maranhão', '66373-422', '486', '651'),
(98, 'Urielle', 'Messias', '14071316240', '1972-02-11', '85 38458 4634', 'm.urielle@aol.couk', '6237 Faucibus Avenue', 'Ceará', '68676-867', '254', '295'),
(99, 'Claire', 'Santiago', '14876239749', '1978-01-21', '84 25352 8652', 'claire.santiago@yahoo.org', 'P.O. Box 448, 9230 Elit, Ave', 'Paraíba', '24845-491', '253', '563'),
(100, 'Carter', 'Lemos', '19693340436', '1957-03-27', '77 30693 2164', 'c_lemos@google.couk', 'P.O. Box 182, 4880 In Rd.', 'Maranhão', '33131117', '929', '203'),
(101, 'Brandon', 'Aguiar', '15412557701', '1986-07-04', '26 76542 8737', 'baguiar@yahoo.com', '6324 Eget St.', 'Pernambuco', '34643425', '523', '388'),
(102, 'Leonard', 'de Freitas', '15603210507', '1983-01-19', '48 14638 1423', 'l_defreitas156@google.net', '680-8378 Imperdiet, Street', 'Paraná', '74797-776', '373', '303'),
(103, 'Leo', 'Barreto', '17056656781', '1979-03-29', '49 24115 4301', 'barreto-leo@yahoo.edu', '144-4513 Varius St.', 'Minas Gerais', '65769-351', '496', '995'),
(104, 'Clementine', 'Santiago', '15868007057', '1980-07-18', '78 16156 2787', 'c-santiago@icloud.edu', '8423 Dapibus St.', 'Pará', '55623-672', '726', '709'),
(105, 'Hop', 'Costa', '12453969871', '1942-11-28', '37 10248 3214', 'chop5432@hotmail.couk', '647-3834 Aenean St.', 'Pará', '88864-437', '903', '756'),
(106, 'Melanie', 'de Almeida', '16516184771', '1985-07-19', '71 53861 5048', 'mdealmeida@yahoo.edu', 'Ap #699-7816 Ornare. Ave', 'Minas Gerais', '98287-277', '697', '931'),
(107, 'Jana', 'Firmino', '13487601410', '1948-12-31', '87 11563 4184', 'j_firmino5044@aol.com', '4558 Magna. Street', 'Santa Catarina', '98360-019', '718', '949'),
(108, 'Orli', 'Campos', '15142457326', '1967-12-27', '76 07454 2418', 'c_orli@hotmail.couk', 'Ap #327-8100 Eu, St.', 'Minas Gerais', '44642-661', '995', '467'),
(109, 'Valentine', 'Ramos', '12006294308', '1965-04-19', '47 82382 4227', 'ramos-valentine@outlook.couk', '277-2209 Tellus, Rd.', 'Santa Catarina', '27676-632', '597', '769'),
(110, 'Zephr', 'Torres', '13173822621', '1995-10-03', '57 62807 7774', 'z-torres@yahoo.com', 'Ap #193-222 Augue St.', 'Bahia', '65125-583', '834', '409'),
(111, 'Dennis', 'Sousa', '12831873667', '1940-07-11', '61 22250 7641', 'd-sousa@outlook.com', '588-1826 Sem Rd.', 'Minas Gerais', '96170-678', '231', '903'),
(112, 'Burton', 'Teodoro', '17602577223', '1962-05-22', '88 44086 6884', 'bteodoro@outlook.edu', '298-1236 Lorem. St.', 'Paraíba', '73762-218', '766', '613'),
(113, 'Harlan', 'Dias', '14854042920', '1960-10-01', '37 35561 5667', 'h_dias2081@google.org', '670 Risus. Street', 'Ceará', '65476-938', '314', '416'),
(114, 'Silas', 'Silva', '15828809129', '1948-07-25', '95 02555 6317', 'ssilva9708@yahoo.org', '717-9093 Lorem Rd.', 'Rio Grande do Sul', '66529-051', '400', '559'),
(115, 'Jonas', 'Silveira', '16091713068', '1972-02-24', '57 47210 9601', 'jsilveira9184@yahoo.com', '3265 Massa. Rd.', 'Rio Grande do Sul', '53272-346', '355', '656'),
(116, 'Quemby', 'Messias', '15812789510', '1984-04-23', '41 16839 8182', 'messias-quemby@icloud.ca', '238-3153 Ut Ave', 'Pará', '12465-554', '834', '859'),
(117, 'Chaney', 'Matias', '19657435350', '1955-05-26', '59 33158 3845', 'chaney_matias@google.edu', '649-3112 Fringilla St.', 'Bahia', '81312-070', '320', '804'),
(118, 'Shellie', 'Rocha', '13847256398', '1959-04-10', '32 02713 8154', 's-rocha@icloud.net', '3004 At, Ave', 'Santa Catarina', '65254-716', '834', '235'),
(119, 'Hyatt', 'Santana', '13137389006', '1959-12-31', '75 83828 8993', 'hyatt-santana@icloud.couk', '7849 Scelerisque Rd.', 'Minas Gerais', '32377782', '563', '443'),
(120, 'Noah', 'Oliveira', '15022457106', '1958-07-08', '32 13158 9431', 'noah_oliveira@google.edu', '725-3824 Nullam Street', 'Minas Gerais', '58278-192', '385', '432'),
(121, 'Peter', 'Firmino', '16513676239', '1980-10-17', '94 88672 4871', 'f.peter@yahoo.org', '850-1578 Vel, St.', 'Paraíba', '90533-685', '526', '807'),
(122, 'Laura', 'Brito', '14847738502', '1968-02-01', '25 10335 4443', 'laura.brito@icloud.edu', 'Ap #765-799 Eget Rd.', 'Pernambuco', '13248-752', '764', '447'),
(123, 'Marah', 'Leite', '11926380314', '1984-11-26', '54 83226 9188', 'm.leite6502@yahoo.ca', '243-5723 Eu Ave', 'Paraná', '47417-361', '712', '953'),
(124, 'Vielka', 'Franco', '12409289336', '1987-10-08', '83 12671 2561', 'franco_vielka@icloud.couk', 'Ap #582-7691 Consectetuer Rd.', 'Paraíba', '18363-652', '484', '502'),
(125, 'Ivan', 'Brandao', '18423444966', '1963-05-05', '53 88947 6422', 'ivanbrandao@yahoo.edu', '5370 Lectus, Rd.', 'Pará', '80340-356', '742', '905'),
(126, 'Alden', 'Candido', '10149510281', '1990-07-03', '46 42745 2511', 'candido.alden@icloud.couk', 'Ap #396-5481 Ac Road', 'Rio de Janeiro', '87765-200', '328', '886'),
(127, 'Thor', 'dos Anjos', '16818360320', '1949-11-09', '59 96913 2232', 't_dosanjos2270@icloud.couk', 'Ap #632-4210 Sed Avenue', 'Paraná', '67288-488', '117', '404'),
(128, 'Lacey', 'Almeida', '12087275274', '2000-05-21', '65 61422 5393', 'almeida.lacey9662@outlook.ca', 'P.O. Box 411, 9501 Mauris Rd.', 'Goiás', '65827-858', '508', '202'),
(129, 'Iris', 'dos Anjos', '14704290709', '1998-03-14', '35 45634 2113', 'i_dosanjos@google.com', '190-9883 Imperdiet Rd.', 'Ceará', '17811-246', '333', '265'),
(130, 'Nathaniel', 'Fernandes', '19703899123', '1964-05-08', '44 24366 3648', 'fernandesnathaniel@outlook.net', '417-9036 Quisque St.', 'Minas Gerais', '58216-581', '251', '467'),
(131, 'Nerea', 'Matos', '10852095295', '1992-12-11', '42 33616 3319', 'matos_nerea@yahoo.com', 'P.O. Box 896, 6492 Venenatis Av.', 'Rio Grande do Sul', '32154715', '324', '670'),
(132, 'Vladimir', 'Abreu', '15103547718', '1943-02-04', '77 53196 5337', 'abreu_vladimir9394@icloud.couk', 'Ap #362-5515 Nam Av.', 'Ceará', '75733-812', '735', '575'),
(133, 'Colt', 'Bastos', '18266438097', '1947-09-26', '57 96386 5646', 'bastoscolt@hotmail.couk', '3362 Lorem, Avenue', 'Rio de Janeiro', '58614-570', '696', '379'),
(134, 'Katelyn', 'Caetano', '17921428889', '1961-08-02', '67 88197 7481', 'katelyncaetano6336@hotmail.couk', 'Ap #461-6070 Metus. Av.', 'Paraná', '27747-427', '331', '982'),
(135, 'Maxwell', 'Gonzaga', '14993784154', '1962-09-01', '96 71808 3806', 'gmaxwell7095@yahoo.couk', '556-7853 Magna. Rd.', 'Paraíba', '58444-813', '996', '657'),
(136, 'Byron', 'Melo', '13487680219', '1965-07-06', '48 71084 1417', 'melo_byron3838@google.couk', '959-791 Ullamcorper Rd.', 'Santa Catarina', '13626-788', '518', '877'),
(137, 'Dolan', 'Magalhaes', '16498328505', '1958-10-21', '22 84341 4338', 'mdolan@google.edu', '4772 At Rd.', 'Ceará', '46757-443', '760', '788'),
(138, 'Leonard', 'Macedo', '10431979239', '1969-06-14', '74 16817 8101', 'leonard.macedo8145@hotmail.couk', 'P.O. Box 489, 432 Elit. Rd.', 'Ceará', '97185-468', '751', '107'),
(139, 'Savannah', 'Lopes', '11401557441', '1980-09-27', '74 27018 1683', 'lopessavannah7156@aol.ca', '686-277 Nunc Ave', 'Minas Gerais', '21585-431', '800', '866'),
(140, 'Jayme', 'da Rosa', '16474698449', '1982-08-25', '95 83030 6658', 'darosa_jayme@hotmail.net', 'Ap #761-665 Neque Av.', 'Santa Catarina', '67269-752', '619', '674'),
(141, 'Marcia', 'Moreira', '15726054472', '1955-05-31', '34 78331 1181', 'moreiramarcia@aol.org', 'P.O. Box 905, 2454 Egestas. Rd.', 'Paraíba', '35873744', '708', '908'),
(142, 'Lawrence', 'Barreto', '10910149051', '1947-07-03', '57 63438 7612', 'blawrence@outlook.org', 'Ap #101-8978 Pede. Street', 'Maranhão', '65763-443', '806', '307'),
(143, 'Natalie', 'Marinho', '19155763506', '1942-06-04', '65 71696 6446', 'marinho-natalie7007@aol.couk', '408-452 Lacus. Avenue', 'Santa Catarina', '46435-475', '684', '270'),
(144, 'Ella', 'da Cunha', '16962725092', '1946-11-27', '57 31765 7872', 'e_dacunha@yahoo.couk', '570-6460 Pede St.', 'Pernambuco', '68667-243', '405', '866'),
(145, 'Lee', 'Nunes', '14708549921', '1944-04-23', '87 29852 2518', 'l-nunes@aol.com', 'Ap #264-9752 Nunc Rd.', 'São Paulo', '89352-153', '865', '142'),
(146, 'William', 'Queiroz', '18088172798', '1970-04-04', '75 38576 3474', 'w.queiroz@aol.com', 'Ap #526-4520 Penatibus St.', 'Paraná', '67687-632', '415', '523'),
(147, 'Eleanor', 'de Jesus', '12686337703', '1970-07-12', '52 69518 7557', 'e.dejesus@google.ca', 'Ap #808-6128 Duis Street', 'São Paulo', '91217-422', '111', '261'),
(148, 'Zenia', 'Castro', '18385077679', '1999-07-09', '12 57364 6765', 'castro.zenia5249@outlook.ca', '871-8879 Sem, Rd.', 'São Paulo', '97116-663', '605', '940'),
(149, 'Lynn', 'Costa', '19814133177', '1993-05-15', '46 15025 1456', 'costa_lynn3184@outlook.org', '680-4418 Velit. St.', 'Santa Catarina', '24002-725', '367', '130');

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
(5, 'Siqueira', 'Jean', '12345678910', 'teste@gmail.com', 'dev junnior', '1200', '1980-09-28', 'perieira', 2222, 'poiares'),
(6, 'Azevedo Henriques', 'Antonio ', '501.242.084-52', 'azevedii@gmail.com', 'Gerente geral', 'R$18538.00', '1961-07-08', 'Travessa Fernandes Vieira', 165, 'Marcos Freire'),
(7, ' Costa Norte', 'Laudemar', '005.652.281-96', 'laudemar.norte@hotmail.com.br', 'T.I', 'R$1997.00', '2000-04-12', 'Avenida Érico Gonçalves Preza Filho', 645, 'Jardim Itália'),
(8, 'Carla', 'Thais', '021.721.958-72', 'thaisplodindo@icloud.com', 'Chefe de cozinha', 'R$1889,00', '1987-02-02', 'Rua Álvaro Bezerra', 2002, 'Santa Inês'),
(9, 'Geraldo Ferreira', 'Laura ', '362.183.119-37', 'laura.ferreira@gmail.com', 'Desenvolvedor senior', 'R$15350.00', '1975-04-12', 'Rua Cruz Alta', 188, 'Encano do Norte'),
(10, 'Lucy', 'Fagundes', '668', 'l_fagundes@hotmail.org', 'desenvolvedor sênior', 'R$6.215,69', '1979-09-29', 'P.O. Box 369, 8255 Vel Rd.', 506, 'Ceará'),
(11, 'Ivana', 'Cabral', '730', 'cabral.ivana@google.com', 'desenvolvedor pleno', 'R$12.745,4', '1948-11-17', 'Ap #430-1313 Risus. Rd.', 120, 'Paraíba'),
(12, 'Bethany', 'de Moura', '989', 'demoura_bethany@yahoo.org', 'Secretario', 'R$7.114,76', '1961-01-21', 'Ap #781-8311 Iaculis Rd.', 430, 'São Paulo'),
(13, 'Heather', 'Ferreira', '809', 'ferreiraheather731@google.org', 'desenvolvedor pleno', 'R$10.254,8', '1978-05-22', '354-621 Pellentesque. St.', 794, 'Paraná'),
(14, 'Damian', 'Tavares', '357', 't.damian8276@yahoo.org', 'Gerenciador financei', 'R$17.638,0', '1948-07-04', 'Ap #536-4402 Nisi Ave', 254, 'Pará'),
(15, 'Camden', 'Lopes', '805', 'camden.lopes@outlook.com', 'desenvolvedor junior', 'R$3.501,58', '1974-08-07', 'P.O. Box 801, 1518 Augue St.', 157, 'Goiás'),
(16, 'Cyrus', 'Ribeiro', '519', 'r.cyrus@yahoo.net', 'Caixa', 'R$18.409,2', '1988-10-31', 'Ap #653-6495 Neque Av.', 176, 'Pernambuco'),
(17, 'Dara', 'Medeiros', '315', 'medeiros-dara3330@yahoo.edu', 'Gerenciador financei', 'R$7.187,38', '1994-03-18', 'Ap #698-6004 Adipiscing Rd.', 892, 'Goiás'),
(18, 'James', 'Diniz', '162', 'djames@hotmail.net', 'Secretario', 'R$3.171,61', '1991-11-27', '818-986 Nec Street', 275, 'Rio Grande do Sul'),
(19, 'Rahim', 'Queiroz', '967', 'q-rahim@hotmail.com', 'desenvolvedor sênior', 'R$1.435,77', '1957-06-27', '910-5970 Id St.', 653, 'Paraná'),
(20, 'Althea', 'Pinto', '677', 'pinto-althea3986@yahoo.org', 'Gerenciador financei', 'R$8.650,63', '1964-05-02', 'Ap #835-2565 Est, Rd.', 268, 'Paraná'),
(21, 'Ella', 'Mendes', '961', 'e_mendes8892@outlook.org', 'desenvolvedor junior', 'R$16.969,8', '1977-06-05', '604-4904 Diam Road', 852, 'Paraná'),
(22, 'Hop', 'Miranda', '615', 'm-hop419@aol.edu', 'Gerenciador financei', 'R$19.683,8', '1942-03-15', '102-6221 Dapibus Street', 359, 'São Paulo'),
(23, 'Kennan', 'Andrade', '330', 'andradekennan@outlook.net', 'Secretario', 'R$12.488,6', '1955-08-26', 'Ap #231-5588 Lorem Rd.', 915, 'São Paulo'),
(24, 'Justine', 'Menezes', '545', 'mjustine6272@google.com', 'Gerenciador financei', 'R$16.613,7', '1940-12-28', 'P.O. Box 398, 6758 Sodales Road', 757, 'Pernambuco'),
(25, 'Jared', 'Batista', '513', 'j-batista4430@hotmail.com', 'Secretario', 'R$2.981,80', '1942-11-28', 'Ap #703-7783 Mauris Avenue', 846, 'Pernambuco'),
(26, 'Cassidy', 'Barboza', '645', 'barbozacassidy@google.org', 'Gerenciador financei', 'R$9.188,18', '1977-01-27', 'Ap #989-7809 Lobortis Rd.', 401, 'Pará'),
(27, 'Jack', 'Duarte', '392', 'jackduarte@outlook.org', 'Vendedor', 'R$11.514,6', '1950-04-30', 'Ap #603-6447 Mollis Rd.', 988, 'Rio de Janeiro'),
(28, 'Gwendolyn', 'Martins', '223', 'gwendolyn_martins1749@yahoo.edu', 'RH(recursos humanos)', 'R$19.222,5', '1960-03-09', 'Ap #124-9830 Libero. St.', 799, 'Pernambuco'),
(29, 'May', 'Costa', '399', 'm.costa@icloud.edu', 'Vendedor', 'R$19.274,1', '1965-03-14', '255-3310 Libero. St.', 976, 'Minas Gerais'),
(30, 'Fritz', 'Medeiros', '608', 'm-fritz@outlook.org', 'Vendedor', 'R$10.830,9', '1978-02-09', '488-3495 Massa. Street', 997, 'Minas Gerais'),
(31, 'Willa', 'do Carmo', '937', 'docarmo.willa@outlook.org', 'Caixa', 'R$3.011,03', '1942-07-20', '522 Tempus Rd.', 387, 'São Paulo'),
(32, 'Nash', 'Peixoto', '559', 'n_peixoto@icloud.com', 'Caixa', 'R$8.727,62', '1988-03-25', '563-7298 Ultricies Rd.', 810, 'Bahia'),
(33, 'Elizabeth', 'Pereira', '683', 'e.pereira@aol.org', 'RH(recursos humanos)', 'R$10.506,1', '1968-11-20', 'P.O. Box 805, 9870 Diam. Road', 784, 'Santa Catarina'),
(34, 'Constance', 'de Melo', '419', 'demelo.constance@outlook.net', 'Caixa', 'R$11.354,3', '1964-07-09', '195-7379 Morbi Ave', 560, 'Pará'),
(35, 'Imani', 'Messias', '827', 'messiasimani@aol.net', 'RH(recursos humanos)', 'R$1.460,51', '1976-01-28', '645 Integer Ave', 344, 'Pernambuco'),
(36, 'Keegan', 'Carvalho', '921', 'carvalho.keegan@icloud.edu', 'desenvolvedor sênior', 'R$13.250,4', '1953-06-04', 'Ap #492-5673 Facilisis, St.', 892, 'Ceará'),
(37, 'Maile', 'da Costa', '123', 'm-dacosta@outlook.edu', 'desenvolvedor junior', 'R$7.343,43', '1988-08-26', 'Ap #541-731 Nascetur Street', 117, 'Santa Catarina'),
(38, 'Christian', 'Nascimento', '701', 'nascimento-christian@outlook.com', 'RH(recursos humanos)', 'R$12.130,0', '1987-02-10', 'P.O. Box 122, 2728 Amet, St.', 959, 'Ceará'),
(39, 'Quinn', 'Neves', '758', 'q_neves@icloud.net', 'Vendedor', 'R$6.525,95', '1994-05-22', 'P.O. Box 316, 9291 Nunc Street', 707, 'Santa Catarina'),
(40, 'Leo', 'Gomes', '715', 'gomes.leo@hotmail.com', 'Vendedor', 'R$9.509,26', '1960-10-16', 'P.O. Box 577, 4146 Aliquam Ave', 416, 'Ceará'),
(41, 'Gavin', 'Sousa', '422', 'sousa.gavin4305@hotmail.org', 'Vendedor', 'R$1.804,96', '1964-10-12', 'Ap #516-942 A, Rd.', 846, 'Maranhão'),
(42, 'Virginia', 'Sampaio', '937', 'sampaio_virginia5343@google.net', 'desenvolvedor junior', 'R$19.686,7', '1959-03-31', '8890 Nec, Rd.', 710, 'Minas Gerais'),
(43, 'Abbot', 'da Conceiçao', '683', 'daconceiao.abbot8995@icloud.com', 'desenvolvedor junior', 'R$1.406,08', '1950-02-10', '302-442 Dictum Ave', 231, 'Minas Gerais'),
(44, 'Lilah', 'Vieira', '269', 'lilahvieira@hotmail.edu', 'Gerenciador financei', 'R$8.411,68', '1942-10-31', '5365 Mi Rd.', 363, 'Paraná'),
(45, 'Cyrus', 'Siqueira', '802', 'siqueiracyrus4176@yahoo.org', 'desenvolvedor sênior', 'R$19.404,7', '1952-04-26', '1438 Et Ave', 117, 'Rio de Janeiro'),
(46, 'Nevada', 'Moraes', '393', 'moraes_nevada8776@yahoo.edu', 'Vendedor', 'R$10.675,4', '1953-12-21', '179-8559 Auctor, Road', 561, 'Paraíba'),
(47, 'Shad', 'da Silveira', '715', 'dasilveira_shad@icloud.com', 'Caixa', 'R$3.942,33', '1943-09-27', 'Ap #520-6966 Vivamus Street', 251, 'Rio de Janeiro'),
(48, 'Marny', 'Evangelista', '533', 'm.evangelista2653@yahoo.org', 'Vendedor', 'R$7.353,75', '1985-03-01', '907-6312 Cursus Ave', 695, 'Paraná'),
(49, 'Daniel', 'Souza', '144', 'daniel_souza7407@hotmail.edu', 'desenvolvedor pleno', 'R$6.459,43', '1958-11-22', '8516 Lorem, Rd.', 189, 'Santa Catarina'),
(50, 'Camilla', 'Pires', '474', 'pires_camilla@yahoo.net', 'Gerenciador financei', 'R$7.158,59', '1964-06-08', '877 Nonummy Av.', 601, 'Rio Grande do Sul'),
(51, 'Buckminster', 'Maia', '847', 'bmaia@outlook.net', 'Caixa', 'R$4.160,58', '1970-04-24', '879-4061 Nunc Rd.', 972, 'Pará'),
(52, 'Orli', 'Batista', '287', 'o-batista@google.org', 'RH(recursos humanos)', 'R$17.486,6', '1946-07-01', '365-155 Iaculis Avenue', 985, 'Pernambuco'),
(53, 'Zahir', 'Rezende', '628', 'z.rezende@hotmail.net', 'Vendedor', 'R$4.228,50', '1954-06-24', '2321 Nunc Ave', 908, 'Maranhão'),
(54, 'Ursula', 'Amorim', '368', 'aursula@hotmail.org', 'desenvolvedor sênior', 'R$17.683,2', '1948-12-22', '3561 Ut St.', 513, 'Bahia'),
(55, 'Josiah', 'de Paula', '686', 'd-josiah@yahoo.edu', 'Secretario', 'R$13.118,6', '1971-09-11', '456-8293 Vitae Road', 200, 'Bahia'),
(56, 'Olivia', 'Matos', '308', 'matosolivia9698@google.net', 'desenvolvedor junior', 'R$2.152,43', '1948-01-04', '2112 Faucibus. St.', 476, 'Bahia'),
(57, 'Kermit', 'Aparecido', '772', 'aparecidokermit9386@outlook.edu', 'Caixa', 'R$9.020,31', '1968-07-06', '121-5250 Nam St.', 126, 'Paraíba'),
(58, 'George', 'Vasconcelos', '185', 'vasconcelos-george@yahoo.edu', 'desenvolvedor pleno', 'R$15.298,5', '1995-09-20', 'Ap #965-721 Accumsan Avenue', 223, 'Santa Catarina'),
(59, 'Garrett', 'Leite', '154', 'g_leite@google.org', 'Secretario', 'R$19.469,3', '1940-11-05', '237-7655 Molestie Ave', 926, 'Paraná'),
(60, 'Derek', 'Fernandes', '980', 'fernandesderek@yahoo.org', 'Secretario', 'R$5.822,61', '1942-07-28', '7330 In Rd.', 210, 'Ceará'),
(61, 'Jael', 'Castro', '273', 'c.jael7134@google.edu', 'Vendedor', 'R$1.681,98', '1988-04-12', '451-4980 Nulla Rd.', 755, 'Maranhão'),
(62, 'Derek', 'Carvalho', '307', 'c_derek@google.com', 'Vendedor', 'R$19.022,7', '1952-05-15', 'P.O. Box 981, 9629 Molestie St.', 886, 'Pará'),
(63, 'Damon', 'Fonseca', '116', 'f_damon9541@yahoo.edu', 'Caixa', 'R$19.576,2', '1991-02-28', 'Ap #492-4420 Vivamus St.', 473, 'Bahia'),
(64, 'Patrick', 'Freitas', '629', 'f.patrick@icloud.com', 'Secretario', 'R$2.170,37', '1952-09-21', '2747 Massa. Road', 792, 'Maranhão'),
(65, 'Yoshi', 'Amaral', '292', 'amaralyoshi@outlook.net', 'desenvolvedor pleno', 'R$15.900,1', '1956-11-01', '448-3453 A, Av.', 234, 'Maranhão'),
(66, 'Calvin', 'Henrique', '638', 'chenrique@outlook.com', 'desenvolvedor pleno', 'R$19.528,2', '1971-12-04', 'Ap #590-4988 Vulputate Rd.', 700, 'Santa Catarina'),
(67, 'Abra', 'Pacheco', '416', 'pacheco_abra@outlook.org', 'Vendedor', 'R$14.518,4', '1946-07-05', 'Ap #363-4878 Ipsum Street', 539, 'Ceará'),
(68, 'Ivana', 'de Freitas', '521', 'i-defreitas5742@aol.org', 'RH(recursos humanos)', 'R$10.446,4', '1942-10-06', 'P.O. Box 933, 1408 Gravida Avenue', 830, 'Pará'),
(69, 'Stephen', 'Mendonca', '153', 'mstephen@aol.edu', 'desenvolvedor sênior', 'R$18.696,4', '1984-10-16', '424-5729 At Av.', 203, 'Paraíba'),
(70, 'Price', 'Carneiro', '344', 'carneiro-price8110@yahoo.edu', 'Caixa', 'R$12.322,5', '1942-01-10', 'Ap #435-7251 Mus. Rd.', 952, 'Minas Gerais'),
(71, 'Knox', 'Amorim', '581', 'amorim_knox7241@hotmail.edu', 'desenvolvedor pleno', 'R$14.798,5', '1987-10-19', 'P.O. Box 973, 3376 Suspendisse Road', 839, 'Goiás'),
(72, 'Iris', 'Dantas', '331', 'iris.dantas4225@outlook.org', 'desenvolvedor junior', 'R$1.921,26', '1985-05-31', 'P.O. Box 660, 3941 Duis Avenue', 671, 'Pará'),
(73, 'Chanda', 'Sales', '890', 'sales.chanda@hotmail.edu', 'Vendedor', 'R$5.968,84', '1966-04-16', '4027 Nulla Av.', 865, 'Minas Gerais'),
(74, 'Rhona', 'Almeida', '973', 'almeida_rhona2366@yahoo.net', 'Vendedor', 'R$9.004,69', '1962-08-14', '500-8901 Dictum. St.', 668, 'Rio Grande do Sul'),
(75, 'Ima', 'Dutra', '885', 'i-dutra961@google.edu', 'RH(recursos humanos)', 'R$3.328,74', '1945-08-02', 'P.O. Box 804, 1262 Quis St.', 363, 'Ceará'),
(76, 'Vladimir', 'Queiroz', '560', 'v_queiroz@google.org', 'Caixa', 'R$2.242,06', '1941-05-17', '321-6291 Lectus St.', 682, 'Paraíba'),
(77, 'Emily', 'Rocha', '818', 'emily_rocha@icloud.edu', 'desenvolvedor sênior', 'R$7.467,50', '1982-03-03', '354-2978 Nullam Road', 809, 'Paraíba'),
(78, 'Demetrius', 'Amaral', '985', 'amaral.demetrius4604@outlook.net', 'desenvolvedor junior', 'R$15.820,3', '1964-04-09', '169-2049 Pede. St.', 435, 'Paraná'),
(79, 'Scarlet', 'de Paula', '483', 'depaulascarlet4907@yahoo.com', 'desenvolvedor junior', 'R$8.005,59', '1980-04-14', 'Ap #371-7859 Per Avenue', 284, 'Paraíba'),
(80, 'Portia', 'de Lourdes', '491', 'p-delourdes@google.org', 'Secretario', 'R$5.979,12', '1993-03-02', '474-6761 Malesuada Road', 214, 'Paraíba'),
(81, 'Chava', 'Freitas', '770', 'cfreitas2775@aol.edu', 'desenvolvedor junior', 'R$5.340,79', '1974-11-27', 'P.O. Box 344, 4133 Accumsan Rd.', 364, 'Goiás'),
(82, 'Phyllis', 'Gonçalves', '468', 'gonalves.phyllis1720@google.org', 'Vendedor', 'R$9.890,75', '1943-02-07', 'Ap #157-7483 Primis Street', 950, 'Paraíba'),
(83, 'Myles', 'Nascimento', '217', 'nascimento_myles8433@outlook.org', 'desenvolvedor junior', 'R$15.513,3', '1963-03-25', '598-4883 Congue Rd.', 727, 'São Paulo'),
(84, 'Karyn', 'de Barros', '806', 'karyn_debarros9246@yahoo.net', 'desenvolvedor sênior', 'R$14.705,2', '1965-09-27', '572-7400 Tortor. St.', 811, 'Paraíba'),
(85, 'Jermaine', 'Almeida', '386', 'jermaine-almeida@hotmail.net', 'Caixa', 'R$17.544,0', '1988-08-15', '7559 Sem Ave', 305, 'Maranhão'),
(86, 'Lacota', 'Batista', '784', 'batistalacota860@google.org', 'RH(recursos humanos)', 'R$18.213,7', '1963-09-23', 'Ap #274-6365 Sollicitudin Road', 613, 'Minas Gerais'),
(87, 'Hashim', 'Alves', '211', 'hashim-alves@aol.com', 'Gerenciador financei', 'R$4.394,29', '1975-03-19', '6170 Consequat, Street', 290, 'Minas Gerais'),
(88, 'Bell', 'Franca', '885', 'b.franca7168@hotmail.net', 'desenvolvedor pleno', 'R$1.706,40', '1996-10-11', '267-8904 A St.', 843, 'Minas Gerais'),
(89, 'Beatrice', 'Abreu', '555', 'abreu_beatrice@yahoo.com', 'desenvolvedor junior', 'R$17.300,8', '1965-04-14', '401-4731 Amet Rd.', 375, 'Ceará'),
(90, 'Lynn', 'Barros', '530', 'b.lynn5984@yahoo.net', 'Vendedor', 'R$11.779,4', '1978-10-18', '1644 Vivamus Av.', 783, 'Pará'),
(91, 'Sheila', 'Chaves', '115', 'chaves_sheila@aol.org', 'Vendedor', 'R$13.221,6', '1961-09-08', '395-6561 Suspendisse St.', 182, 'Rio de Janeiro'),
(92, 'Kasper', 'Dantas', '185', 'd.kasper@google.org', 'Vendedor', 'R$17.032,2', '1949-02-09', 'Ap #101-3940 Egestas. Av.', 828, 'São Paulo'),
(93, 'Zia', 'Siqueira', '447', 'siqueira.zia7501@outlook.org', 'Caixa', 'R$7.741,49', '1957-08-10', '475-3617 Fusce Ave', 573, 'Pernambuco'),
(94, 'Alec', 'da Rocha', '794', 'adarocha@outlook.edu', 'desenvolvedor pleno', 'R$8.105,66', '1986-10-18', '210-6160 Turpis. Street', 781, 'Paraíba'),
(95, 'Len', 'dos Reis', '972', 'd-len@google.org', 'desenvolvedor junior', 'R$4.851,10', '1954-09-04', '355-6348 Nulla Rd.', 979, 'Rio Grande do Sul'),
(96, 'Kellie', 'Almeida', '129', 'almeida-kellie@hotmail.net', 'desenvolvedor junior', 'R$12.444,5', '1996-06-21', 'Ap #268-2137 Consequat Rd.', 670, 'Maranhão'),
(97, 'Blaze', 'de Campos', '491', 'decampos.blaze2592@outlook.org', 'Vendedor', 'R$17.809,6', '1961-10-14', '228-9730 Dis Ave', 689, 'Minas Gerais'),
(98, 'Coby', 'Custodio', '558', 'custodio-coby9384@google.edu', 'Caixa', 'R$6.631,86', '1978-02-22', '858-9645 Vivamus Avenue', 701, 'Bahia'),
(99, 'Kathleen', 'Sampaio', '150', 'ksampaio9976@hotmail.org', 'Caixa', 'R$10.239,9', '1965-09-26', '471-5251 Pharetra Avenue', 723, 'Santa Catarina'),
(100, 'Aquila', 'Leal', '699', 'laquila@icloud.com', 'RH(recursos humanos)', 'R$8.966,94', '1991-10-26', '698-8478 Arcu Rd.', 935, 'Ceará'),
(101, 'Willa', 'Nascimento', '382', 'nascimento_willa6853@outlook.net', 'Caixa', 'R$10.811,6', '1966-09-08', 'Ap #962-7714 Massa. Street', 383, 'Santa Catarina'),
(102, 'Honorato', 'Furtado', '874', 'f.honorato@google.edu', 'Secretario', 'R$4.032,11', '1985-06-02', '6161 Mi Av.', 348, 'Paraná'),
(103, 'Darrel', 'Rosa', '894', 'rosadarrel917@yahoo.com', 'Secretario', 'R$9.884,09', '1992-11-08', '2882 Magna. Rd.', 434, 'Minas Gerais'),
(104, 'Nayda', 'da Rosa', '758', 'nayda.darosa@google.edu', 'Secretario', 'R$7.431,05', '1982-12-13', '814-489 Nascetur Ave', 789, 'Pernambuco'),
(105, 'Wyatt', 'Viana', '711', 'v.wyatt1775@google.org', 'desenvolvedor pleno', 'R$9.366,81', '1963-09-01', 'P.O. Box 314, 9100 Lorem Avenue', 710, 'Goiás'),
(106, 'Raja', 'Nascimento', '677', 'nascimento_raja1353@outlook.com', 'Caixa', 'R$14.587,6', '1950-04-30', '249-2920 Volutpat Avenue', 441, 'Maranhão'),
(107, 'Meredith', 'Candido', '278', 'candido.meredith4056@outlook.edu', 'desenvolvedor pleno', 'R$19.854,3', '1980-01-13', '1439 Justo. Rd.', 924, 'São Paulo'),
(108, 'Nasim', 'de Lourdes', '471', 'ndelourdes@icloud.org', 'desenvolvedor sênior', 'R$5.799,61', '1963-02-28', 'Ap #556-6367 Ut St.', 244, 'São Paulo'),
(109, 'Lacy', 'Maia', '751', 'maialacy5695@yahoo.edu', 'RH(recursos humanos)', 'R$10.435,5', '1971-02-10', 'Ap #589-1109 Euismod Ave', 652, 'Ceará'),
(110, 'Julian', 'Henrique', '316', 'henriquejulian4212@icloud.org', 'desenvolvedor pleno', 'R$11.222,7', '1973-02-24', 'Ap #684-7842 Dui, St.', 998, 'Minas Gerais'),
(111, 'Bertha', 'Reis', '598', 'b_reis@outlook.org', 'desenvolvedor sênior', 'R$12.525,9', '1956-10-21', 'P.O. Box 346, 8884 Sed Ave', 114, 'Goiás'),
(112, 'Ulric', 'Almeida', '924', 'ulric.almeida1389@yahoo.org', 'Gerenciador financei', 'R$5.953,07', '1955-12-31', '7768 Sociis Ave', 631, 'Paraíba'),
(113, 'Shad', 'Moraes', '587', 'shad-moraes9849@aol.net', 'desenvolvedor junior', 'R$19.216,9', '1945-08-25', '255-9690 Egestas St.', 903, 'Rio de Janeiro'),
(114, 'Leroy', 'Carvalho', '719', 'l_carvalho@aol.edu', 'Caixa', 'R$16.069,2', '1965-06-14', '7268 Natoque Street', 874, 'Goiás'),
(115, 'Bernard', 'Camargo', '817', 'bernardcamargo@outlook.edu', 'desenvolvedor junior', 'R$4.458,64', '1955-11-04', '766-1103 At, Avenue', 311, 'Minas Gerais'),
(116, 'Rigel', 'Barbosa', '210', 'rbarbosa@hotmail.org', 'Caixa', 'R$15.183,4', '1960-06-11', '6985 Eu Av.', 583, 'São Paulo'),
(117, 'Byron', 'Medeiros', '806', 'm_byron1081@icloud.org', 'Vendedor', 'R$13.049,6', '1985-05-05', 'P.O. Box 306, 8959 Vestibulum Av.', 452, 'Pará'),
(118, 'Damon', 'de Moraes', '940', 'damon-demoraes@yahoo.edu', 'desenvolvedor sênior', 'R$15.135,0', '1969-10-08', '552-6445 Sed St.', 670, 'Ceará'),
(119, 'Roary', 'de Paula', '903', 'd-roary3708@hotmail.net', 'desenvolvedor sênior', 'R$19.268,2', '1962-05-23', 'Ap #604-3945 Faucibus Road', 410, 'Pará');

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
(16, 'Lapisera', 'R$ 5,00', 200),
(17, 'Banana', '1.99', 50),
(18, 'Feijão', '3.99', 30),
(19, 'Iogurte', '2.49', 20),
(20, 'Manteiga', '4.99', 100),
(21, 'Alface', '0.99', 10),
(22, 'Presunto', '5.99', 75),
(23, 'Batata', '1.49', 40),
(24, 'Suco', '3.99', 60),
(25, 'Frango', '7.99', 25),
(26, 'Brócolis', '2.99', 80),
(27, 'Shampoo', '6.99', 50),
(28, 'Sabão em pó', '8.99', 30),
(29, 'Biscoito', '2.49', 20),
(30, 'Café', '5.99', 100),
(31, 'Milho', '0.99', 10),
(32, 'Queijo ralado', '4.99', 75),
(33, 'Alho', '1.49', 40),
(34, 'Água mineral', '1.99', 60),
(35, 'Salsicha', '3.99', 25),
(36, 'Couve-flor', '2.99', 80),
(37, 'Condicionador', '6.99', 50),
(38, 'Amaciante', '8.99', 30),
(39, 'Chocolate', '2.49', 20),
(40, 'Chá', '3.99', 100),
(41, 'Abobrinha', '0.99', 10),
(42, 'Presunto fatiado', '5.99', 75),
(43, 'Cebolinha', '1.49', 40),
(44, 'Água de coco', '2.99', 60),
(45, 'Peito de peru', '7.99', 25),
(46, 'Berinjela', '2.99', 80),
(47, 'Gel de banho', '6.99', 50),
(48, 'Detergente', '8.99', 30),
(49, 'Bolacha', '2.49', 20),
(50, 'Azeite', '4.99', 100),
(51, 'Pimentão', '0.99', 10),
(52, 'Salame', '5.99', 75),
(53, 'Alho-poró', '1.49', 40),
(54, 'Champagne', '9.99', 60),
(55, 'Linguiça', '3.99', 25),
(56, 'Abacaxi', '2.99', 80),
(57, 'Desodorante', '6.99', 50),
(58, 'Limpador multiuso', '8.99', 30),
(59, 'Bolinho', '2.49', 20),
(60, 'Vinagre', '3.99', 100),
(61, 'Espinafre', '0.99', 10),
(62, 'Salame fatiado', '5.99', 75),
(63, 'Salsa', '1.49', 40),
(64, 'Vinho', '12.99', 60),
(65, 'Sorvete', '4.99', 25),
(66, 'Abacate', '2.99', 80),
(67, 'Pasta de dente', '6.99', 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(11) NOT NULL,
  `id_sales` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qtd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `product_sales`
--

INSERT INTO `product_sales` (`id`, `id_sales`, `id_product`, `qtd`) VALUES
(48, 38, 2, 2),
(49, 38, 1, 3),
(50, 39, 11, 5),
(51, 39, 2, 1),
(52, 40, 2, 2),
(53, 40, 15, 3),
(54, 40, 16, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `valor` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sales`
--

INSERT INTO `sales` (`id`, `id_cliente`, `date`, `valor`) VALUES
(38, 2, '2023-06-27', 'R$ 345,00'),
(39, 3, '2023-06-27', 'R$ 240,00'),
(40, 3, '2023-06-27', 'R$ 385,00');

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
(50, 48, 2147483647),
(51, 48, 0),
(52, 48, 0), 
(53, 48, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
