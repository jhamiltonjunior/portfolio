-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 09/07/2024 às 22:35
-- Versão do servidor: 11.4.2-MariaDB-2
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `client_feedback`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cpf` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `cpf`, `password`, `created_at`) VALUES
(1, 'Jose Hamilton Santos Junior', '97459422002', '827ccb0eea8a706c4c34a16891f84e7b', '2024-07-01 22:38:24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `punctuality` int(11) NOT NULL,
  `frontDesk` int(11) NOT NULL,
  `infrastructure` int(11) NOT NULL,
  `average` int(11) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `professional_id` int(11) NOT NULL,
  `specialty_id` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `grade`
--

INSERT INTO `grade` (`grade_id`, `service`, `punctuality`, `frontDesk`, `infrastructure`, `average`, `feedback`, `patient_id`, `professional_id`, `specialty_id`, `created_at`) VALUES
(1, 4, 5, 3, 4, 4, 'O atendimento foi bom, mas a recepção pode melhorar.', 1, 1, 1, '2023-05-14'),
(2, 3, 4, 2, 3, 3, 'O serviço foi mediano, a pontualidade foi ótima, mas a recepção precisa melhorar.', 2, 2, 2, '2023-03-18'),
(3, 5, 5, 5, 5, 5, 'Serviço excelente e infraestrutura ótima. Muito satisfeito.', 3, 3, 3, '2023-07-22'),
(4, 2, 3, 1, 2, 2, 'Atendimento ruim e recepção fraca. Precisa melhorar.', 4, 1, 1, '2023-08-11'),
(5, 3, 3, 3, 3, 3, 'Serviço mediano em geral.', 5, 2, 2, '2023-09-09'),
(6, 4, 4, 4, 4, 4, 'Bom atendimento e pontualidade.', 6, 3, 3, '2023-10-05'),
(7, 5, 5, 4, 5, 5, 'Atendimento excelente e pontualidade, recepção poderia ser um pouco melhor.', 7, 1, 1, '2023-01-27'),
(8, 1, 2, 1, 2, 2, 'Atendimento e infraestrutura muito ruins.', 8, 2, 2, '2023-11-23'),
(9, 3, 3, 2, 3, 3, 'Serviço mediano, recepção precisa melhorar.', 9, 3, 3, '2023-04-14'),
(10, 4, 4, 3, 4, 4, 'Bom serviço e infraestrutura.', 10, 1, 1, '2023-06-19'),
(11, 2, 2, 2, 2, 2, 'Atendimento e infraestrutura abaixo do esperado.', 11, 2, 2, '2023-02-24'),
(12, 5, 4, 5, 4, 5, 'Serviço excelente, mas a infraestrutura poderia ser um pouco melhor.', 12, 3, 3, '2023-05-30'),
(13, 3, 3, 3, 3, 3, 'Serviço mediano.', 13, 1, 1, '2023-07-17'),
(14, 4, 5, 4, 5, 5, 'Bom serviço e ótima pontualidade.', 14, 2, 2, '2023-09-08'),
(15, 5, 5, 5, 5, 5, 'Excelente em todos os aspectos.', 15, 3, 3, '2023-11-27'),
(16, 1, 1, 1, 1, 1, 'Muito insatisfeito com todos os aspectos.', 16, 1, 1, '2023-03-13'),
(17, 2, 3, 2, 3, 3, 'Serviço abaixo da média.', 17, 2, 2, '2023-04-10'),
(18, 3, 4, 3, 4, 4, 'Serviço bom, mas a recepção pode melhorar.', 18, 3, 3, '2023-06-01'),
(19, 4, 4, 4, 4, 4, 'Bom serviço e infraestrutura.', 19, 1, 1, '2023-08-22'),
(20, 5, 5, 5, 5, 5, 'Excelente em todos os aspectos.', 20, 2, 2, '2023-10-29'),
(21, 2, 1, 2, 1, 2, 'Muito insatisfeito com a pontualidade e a infraestrutura.', 21, 3, 3, '2023-01-16'),
(22, 4, 5, 4, 5, 5, 'Ótimo serviço e pontualidade.', 22, 1, 1, '2023-03-11'),
(23, 3, 3, 3, 3, 3, 'Serviço mediano.', 23, 2, 2, '2023-05-07'),
(24, 1, 2, 1, 2, 2, 'Muito insatisfeito com o atendimento e a infraestrutura.', 24, 3, 3, '2023-06-15'),
(25, 5, 5, 4, 5, 5, 'Serviço excelente, mas a recepção poderia ser melhor.', 25, 1, 1, '2023-08-30'),
(26, 2, 2, 2, 2, 2, 'Atendimento e infraestrutura abaixo do esperado.', 26, 2, 2, '2023-10-25'),
(27, 3, 4, 3, 4, 4, 'Bom serviço, mas a recepção pode melhorar.', 27, 3, 3, '2023-12-11'),
(28, 4, 5, 4, 5, 5, 'Ótimo serviço e infraestrutura.', 28, 1, 1, '2023-11-08'),
(29, 5, 5, 5, 5, 5, 'Excelente em todos os aspectos.', 29, 2, 2, '2023-01-20'),
(30, 1, 1, 1, 1, 1, 'Muito insatisfeito com todos os aspectos.', 30, 3, 3, '2023-04-02'),
(31, 2, 3, 2, 3, 3, 'Serviço abaixo da média.', 31, 1, 1, '2023-07-19'),
(32, 3, 4, 3, 4, 4, 'Serviço bom, mas a recepção pode melhorar.', 32, 2, 2, '2023-09-22'),
(33, 4, 4, 4, 4, 4, 'Bom serviço e infraestrutura.', 33, 3, 3, '2023-10-15'),
(34, 5, 5, 5, 5, 5, 'Excelente em todos os aspectos.', 34, 1, 1, '2023-11-03'),
(35, 1, 2, 1, 2, 2, 'Muito insatisfeito com o atendimento e a infraestrutura.', 35, 2, 2, '2023-03-27'),
(36, 4, 5, 4, 5, 5, 'Ótimo serviço e pontualidade.', 36, 3, 3, '2023-07-04'),
(37, 3, 3, 3, 3, 3, 'Serviço mediano.', 37, 1, 1, '2023-09-16'),
(38, 2, 1, 2, 1, 2, 'Muito insatisfeito com a pontualidade e a infraestrutura.', 38, 2, 2, '2023-10-28'),
(39, 5, 5, 4, 5, 5, 'Serviço excelente, mas a recepção poderia ser melhor.', 39, 3, 3, '2023-12-05'),
(40, 3, 4, 3, 4, 4, 'Bom serviço, mas a recepção pode melhorar.', 40, 1, 1, '2023-02-14'),
(41, 2, 2, 2, 2, 2, 'Atendimento e infraestrutura abaixo do esperado.', 41, 2, 2, '2023-05-10'),
(42, 5, 5, 5, 5, 5, 'Excelente em todos os aspectos.', 42, 3, 3, '2023-08-06'),
(43, 3, 3, 3, 3, 3, 'Serviço mediano.', 43, 1, 1, '2023-11-12'),
(44, 4, 5, 4, 5, 5, 'Ótimo serviço e infraestrutura.', 44, 2, 2, '2023-01-03'),
(45, 1, 1, 1, 1, 1, 'Muito insatisfeito com todos os aspectos.', 45, 3, 3, '2023-03-22'),
(46, 5, 5, 5, 5, 5, 'Excelente em todos os aspectos.', 46, 1, 1, '2023-06-13'),
(47, 2, 2, 2, 2, 2, 'Atendimento e infraestrutura abaixo do esperado.', 47, 2, 2, '2023-09-01'),
(48, 3, 4, 3, 4, 4, 'Bom serviço, mas a recepção pode melhorar.', 48, 3, 3, '2023-12-09'),
(49, 4, 5, 4, 5, 5, 'Ótimo serviço e pontualidade.', 49, 1, 1, '2023-01-29'),
(50, 5, 5, 4, 5, 5, 'Serviço excelente, mas a recepção poderia ser um pouco melhor.', 50, 2, 2, '2023-05-03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `patient`
--

INSERT INTO `patient` (`patient_id`, `name`, `cpf`, `created_date`) VALUES
(1, 'Jose Hamilton Santos Junior', '97459422002', '2024-07-01 22:38:24'),
(2, 'Maria Oliveira', '987.654.321-00', '2023-01-02 00:00:00'),
(3, 'Pedro Santos', '456.789.123-00', '2023-01-03 00:00:00'),
(4, 'Ana Souza', '789.123.456-00', '2023-01-04 00:00:00'),
(5, 'José Pereira', '321.654.987-00', '2023-01-05 00:00:00'),
(6, 'Carla Lima', '654.321.987-00', '2023-01-06 00:00:00'),
(7, 'Luiz Costa', '234.567.890-00', '2023-01-07 00:00:00'),
(8, 'Márcia Fernandes', '567.890.234-00', '2023-01-08 00:00:00'),
(9, 'Rafael Gonçalves', '890.234.567-00', '2023-01-09 00:00:00'),
(10, 'Fernanda Almeida', '012.345.678-00', '2023-01-10 00:00:00'),
(11, 'Roberto Machado', '345.678.901-00', '2023-01-11 00:00:00'),
(12, 'Aline Castro', '678.901.234-00', '2023-01-12 00:00:00'),
(13, 'Carlos Oliveira', '901.234.567-00', '2023-01-13 00:00:00'),
(14, 'Juliana Silva', '345.678.901-50', '2023-01-14 00:00:00'),
(15, 'Felipe Souza', '678.01.234-00', '2023-01-15 00:00:00'),
(16, 'Patrícia Santos', '901.234.56700', '2023-01-16 00:00:00'),
(17, 'Gustavo Pereira', '234.567.89000', '2023-01-17 00:00:00'),
(18, 'Laura Lima', '567.890.23400', '2023-01-18 00:00:00'),
(19, 'Eduardo Costa', '890.234.56700', '2023-01-19 00:00:00'),
(20, 'Sandra Fernandes', '012.345.67800', '2023-01-20 00:00:00'),
(21, 'Marcelo Gonçalves', '345.678.90100', '2023-01-21 00:00:00'),
(22, 'Camila Almeida', '678.901.23400', '2023-01-22 00:00:00'),
(23, 'Renato Machado', '90123.56700', '2023-01-23 00:00:00'),
(24, 'Vanessa Castro', '234.567.8900', '2023-01-24 00:00:00'),
(25, 'Rodrigo Oliveira', '567.90.23400', '2023-01-25 00:00:00'),
(26, 'Bruna Silva', '890.234.5700', '2023-01-26 00:00:00'),
(27, 'Marcos Souza', '012.345700', '2023-01-27 00:00:00'),
(28, 'Ana Lima', '345.68.9010', '2023-01-28 00:00:00'),
(29, 'Lucas Costa', '678.901.24-0', '2023-01-29 00:00:00'),
(30, 'Carolina Fernandes', '901.34.567-00', '2023-01-30 00:00:00'),
(31, 'Thiago Gonçalves', '234.56.890-00', '2023-01-31 00:00:00'),
(32, 'Mariana Almeida', '567.890.34-00', '2023-02-01 00:00:00'),
(33, 'Guilherme Machado', '890.234567-00', '2023-02-02 00:00:00'),
(34, 'Isabela Castro', '012.345678-00', '2023-02-03 00:00:00'),
(35, 'Vinícius Oliveira', '345..901-00', '2023-02-04 00:00:00'),
(36, 'Tatiana Silva', '678.901.3400', '2023-02-05 00:00:00'),
(37, 'Gabriel Souza', '901.234.67-00', '2023-02-06 00:00:00'),
(39, 'Ricardo Lima', '567.890.24-00', '2023-02-08 00:00:00'),
(40, 'Natália Costa', '890.234.56-00', '2023-02-09 00:00:00'),
(41, 'Alexandre Fernandes', '02.345.678-00', '2023-02-10 00:00:00'),
(42, 'Larissa Gonçalves', '345.67901-00', '2023-02-11 00:00:00'),
(43, 'Diego Almeida', '678.90234-00', '2023-02-12 00:00:00'),
(44, 'Amanda Machado', '901.234567-00', '2023-02-13 00:00:00'),
(45, 'Felipe Castro', '23567.8900', '2023-02-14 00:00:00'),
(46, 'Mariana Oliveira', '567.0.234-00', '2023-02-15 00:00:00'),
(47, 'Pedro Silva', '890.234.-00', '2023-02-16 00:00:00'),
(48, 'Jéssica Souza', '012.3678-00', '2023-02-17 00:00:00'),
(49, 'Lucas Lima', '345.678.900', '2023-02-18 00:00:00'),
(50, 'Carolina Oliveira', '67801.234-00', '2023-02-19 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `professional`
--

CREATE TABLE `professional` (
  `professional_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `professional`
--

INSERT INTO `professional` (`professional_id`, `name`, `cpf`, `image`, `created_date`) VALUES
(1, 'Melissa Goncalves Silva', '72438512075', 'fashion-gf3eef880e_640.jpg', '2024-07-01 22:38:24'),
(2, 'Vitória Cavalcanti Carvalho', '92485428085', 'hijab-g29ce69b70_640.jpg', '2024-07-01 22:38:24'),
(3, 'Aline Melo Almeida', '38697540011', 'portrait-gd50060fea_640.jpg', '2024-07-01 22:38:24'),
(4, 'Douglas Correia Sousa', '77171107094', 'beanie-g6a8e1501c_640.jpg', '2024-07-01 22:38:24'),
(5, 'Mateus Correia Souza', '89257217086', 'beard-gd86ddd68b_640.jpg', '2024-07-01 22:38:24'),
(6, 'Beatriz Sousa Cunha', '14246808083', 'woman-gb74b3a7db_640.jpg', '2024-07-01 22:38:24'),
(7, 'Letícia Alves Cavalcanti', '07023309063', 'woman-g004b1a3ce_640.jpg', '2024-07-01 22:38:24'),
(8, 'Gabriela Costa Ribeiro', '12343982066', 'woman-gd0a928835_640.jpg', '2024-07-01 22:38:24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_specialty`
--

CREATE TABLE `role_specialty` (
  `role_specialty_id` int(11) NOT NULL,
  `specialty_id` int(11) NOT NULL,
  `professional_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `role_specialty`
--

INSERT INTO `role_specialty` (`role_specialty_id`, `specialty_id`, `professional_id`, `created_date`) VALUES
(1, 1, 7, '2024-07-01 22:38:24'),
(2, 2, 6, '2024-07-01 22:38:24'),
(3, 3, 5, '2024-07-01 22:38:24'),
(4, 4, 6, '2024-07-01 22:38:24'),
(5, 5, 3, '2024-07-01 22:38:24'),
(6, 6, 2, '2024-07-01 22:38:24'),
(7, 7, 1, '2024-07-01 22:38:24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `specialty`
--

CREATE TABLE `specialty` (
  `specialty_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `specialty`
--

INSERT INTO `specialty` (`specialty_id`, `name`, `created_date`) VALUES
(1, 'Ortopedia', '2024-07-01 22:38:24'),
(2, 'Dermatologia', '2024-07-01 22:38:24'),
(3, 'Psiquiatria', '2024-07-01 22:38:24'),
(4, 'Cardiologia', '2024-07-01 22:38:24'),
(5, 'Odontologia', '2024-07-01 22:38:24'),
(6, 'Pediatria', '2024-07-01 22:38:24'),
(7, 'Urologia', '2024-07-01 22:38:24');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Índices de tabela `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `professional_id` (`professional_id`),
  ADD KEY `specialty_id` (`specialty_id`);

--
-- Índices de tabela `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `professional`
--
ALTER TABLE `professional`
  ADD PRIMARY KEY (`professional_id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `image` (`image`);

--
-- Índices de tabela `role_specialty`
--
ALTER TABLE `role_specialty`
  ADD PRIMARY KEY (`role_specialty_id`),
  ADD KEY `specialty_id` (`specialty_id`),
  ADD KEY `professional_id` (`professional_id`);

--
-- Índices de tabela `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`specialty_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `professional`
--
ALTER TABLE `professional`
  MODIFY `professional_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `role_specialty`
--
ALTER TABLE `role_specialty`
  MODIFY `role_specialty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `specialty`
--
ALTER TABLE `specialty`
  MODIFY `specialty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`professional_id`) REFERENCES `professional` (`professional_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grade_ibfk_3` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`specialty_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `role_specialty`
--
ALTER TABLE `role_specialty`
  ADD CONSTRAINT `role_specialty_ibfk_1` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`specialty_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_specialty_ibfk_2` FOREIGN KEY (`professional_id`) REFERENCES `professional` (`professional_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
