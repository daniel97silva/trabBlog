-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Nov-2018 às 14:26
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complete-blog-php`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(3, 1, 'As Linguagens mais Utilizadas em ProgramaÃ§Ã£o', 'as-linguagens-mais-utilizadas-em-programa-o', 0, 'tela.jpg', '&lt;h3&gt;1. Java&lt;/h3&gt;\r\n\r\n&lt;p&gt;A linguagem de programa&amp;ccedil;&amp;atilde;o mais solicitada de longe &amp;eacute; o Java. No topo da maioria dos &amp;iacute;ndices especializados na medi&amp;ccedil;&amp;atilde;o da popularidade, o Java se caracteriza por ser port&amp;aacute;vel, ou seja, &amp;eacute; poss&amp;iacute;vel compilar um programa em Java de maneira f&amp;aacute;cil para todo tipo de aparelho. Vale lembrar tamb&amp;eacute;m que o Java &amp;eacute; a linguagem mais usada para a cria&amp;ccedil;&amp;atilde;o de aplicativos Android.&lt;/p&gt;\r\n\r\n&lt;h3&gt;2. JavaScript&lt;/h3&gt;\r\n\r\n&lt;p&gt;O JavaScript ainda &amp;eacute; amplamente utilizado em aplica&amp;ccedil;&amp;otilde;es web e tem ganhado espa&amp;ccedil;o no desktop/mobile, sendo bastante usado para criar interatividade. Apesar de ser uma linguagem mais antiga em compara&amp;ccedil;&amp;atilde;o &amp;agrave; maioria das que ser&amp;atilde;o listadas aqui, o JavaScript &amp;eacute; bastante requisitado e parte desse sucesso se deve a sua simplicidade.&lt;/p&gt;\r\n\r\n&lt;h3&gt;3. Python&lt;/h3&gt;\r\n\r\n&lt;p&gt;Considerada a linguagem de mais f&amp;aacute;cil aprendizado, a Python continua a ser uma das mais populares no mercado, mesmo que tenha sido lan&amp;ccedil;ada h&amp;aacute; quase 30 anos atr&amp;aacute;s (em 1989). &amp;Eacute; um dos c&amp;oacute;digos de mais f&amp;aacute;cil leitura e &amp;eacute; bastante utilizado para desenvolvimento web e&amp;nbsp;&lt;em&gt;machine learning&lt;/em&gt;.&lt;/p&gt;\r\n\r\n&lt;h3&gt;4. C&lt;/h3&gt;\r\n\r\n&lt;p&gt;Talvez a mais conhecida entre as linguagens de programa&amp;ccedil;&amp;atilde;o - principalmente pelas suas variantes C++ e C# -, a linguagem C tamb&amp;eacute;m &amp;eacute; uma das mais antigas j&amp;aacute; lan&amp;ccedil;adas. Sua principal vantagem est&amp;aacute; tamb&amp;eacute;m na facilidade de&amp;nbsp;&lt;em&gt;portar&amp;nbsp;&lt;/em&gt;um programa para outro tipo de dispositivo. Vale notar tamb&amp;eacute;m que a linguagem C, desde cedo, foi adotada por gigantes como Microsoft e Linux, entre outros.&lt;/p&gt;\r\n\r\n&lt;p&gt;Apesar de antigo, aprender C traz boas vantagens ao desenvolvedor, j&amp;aacute; que funciona em quase todo tipo de sistema e n&amp;atilde;o exige muito das m&amp;aacute;quinas. Por conta dessa pouca exig&amp;ecirc;ncia de performance, a linguagem C &amp;eacute; bastante usada para criar softwares para aparelhos pequenos e dispositivos que contam com a Internet das Coisas (IoT).&lt;/p&gt;\r\n\r\n&lt;h3&gt;5. C++&lt;/h3&gt;\r\n\r\n&lt;p&gt;Um dos principais motivos pelo qual o C &amp;eacute; uma das linguagens mais populares tamb&amp;eacute;m se d&amp;aacute; pela pr&amp;oacute;pria popularidade de suas variantes. O C++ &amp;eacute; uma vers&amp;atilde;o mais atual do C - embora tamb&amp;eacute;m j&amp;aacute; tenha certa idade - e &amp;eacute; bastante utilizado no desenvolvimento de softwares mais pesados, como sistemas integrados (CRM), aplica&amp;ccedil;&amp;otilde;es que promovem intera&amp;ccedil;&amp;atilde;o entre cliente e servidor ou jogos para computador, entre outros.&lt;/p&gt;\r\n', 1, '2018-10-25 22:22:04', '2018-10-25 22:22:04'),
(4, 1, 'Como Criar Tabelas no HTML?', 'como-criar-tabelas-no-html-', 0, 'artigo02.jpg', '&lt;p&gt;Segue abaixo alguns&amp;nbsp;Link para auxilio de como criar&amp;nbsp; Tabelas dentro do seu c&amp;oacute;digo HTML:&lt;/p&gt;\r\n\r\n&lt;p&gt;http://www.clem.ufba.br/tuts/html/c09.htm&lt;/p&gt;\r\n\r\n&lt;p&gt;http://www.ancibe.com.br/html/tabelas.html&lt;/p&gt;\r\n\r\n&lt;p&gt;https://www.youtube.com/watch?v=jAzL4SE5-QM&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Espero ter ajudado..&lt;/p&gt;\r\n', 1, '2018-10-25 22:27:55', '2018-10-25 22:27:55'),
(5, 1, 'Contato para Duvidas \\ SugestÃµes ', 'contato-para-duvidas-sugest-es-', 0, 'artigo03.jpg', '&lt;p&gt;Caso queira entrar em contato para Sugest&amp;otilde;es , Duvidas , Ideias, contactar atraves de:&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Email:&amp;nbsp;&lt;/strong&gt;danielsilvad777@gmail.com&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Tel:&lt;/strong&gt; (34) 99268-8484&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Instagram:&amp;nbsp;&lt;/strong&gt;@danielsd97_&lt;/p&gt;\r\n', 1, '2018-10-25 22:39:13', '2018-10-25 22:39:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(0, 3, 1),
(0, 4, 2),
(0, 5, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Historia', 'historia'),
(2, 'Ajuda', 'ajuda'),
(3, 'Fale Comigo', 'fale-comigo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'info@codewithawa.com', 'Admin', '21232f297a57a5a743894a0e4a801fc3', '2018-01-08 14:52:58', '2018-01-08 14:52:58'),
(2, 'Daniel', 'danielsilvad777@gmail.com', 'Author', '81dc9bdb52d04dc20036dbd8313ed055', '2018-10-25 21:39:08', '2018-10-25 21:39:08'),
(3, 'Fernanda', 'fer@hotmail.com', 'Author', '81dc9bdb52d04dc20036dbd8313ed055', '2018-10-25 22:17:31', '2018-10-25 22:17:31'),
(4, 'StevÃ£o', 'lol@hotmail.com', 'Author', '81dc9bdb52d04dc20036dbd8313ed055', '2018-10-25 22:42:13', '2018-10-25 22:42:13'),
(6, 'Lazaro', 'lazaro@hotmail.com', 'Author', '81dc9bdb52d04dc20036dbd8313ed055', '2018-10-26 00:01:51', '2018-10-26 00:01:51'),
(7, 'Delma', 'delma@gmail.com', 'Author', '81dc9bdb52d04dc20036dbd8313ed055', '2018-10-27 18:36:20', '2018-10-27 18:36:20'),
(8, 'Leandro', 'leandro@gmail.com', 'Author', '81dc9bdb52d04dc20036dbd8313ed055', '2018-10-27 19:07:11', '2018-10-27 19:07:11'),
(9, 'Rock', 'rock@rock.com', 'Author', '81dc9bdb52d04dc20036dbd8313ed055', '2018-11-02 14:34:02', '2018-11-02 14:34:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD KEY `post_id` (`post_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
