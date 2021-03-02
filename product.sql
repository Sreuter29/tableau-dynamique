-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2021 at 08:12 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tableau_dynamique`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(3) DEFAULT NULL,
  `name` varchar(24) DEFAULT NULL,
  `price` decimal(7,1) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `city` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `address`, `city`) VALUES
(1, 'Bourdon', '163893.0', '76, avenue Geneviève Antoine\r\n04 197 Martinez', 'Traore-sur-Thibault'),
(2, 'Prevost SAS', '553504.0', 'place Amélie Navarro\r\n93 809 Adam-la-Forêt', 'Vaillant'),
(3, 'Pascal', '407563.0', '56, rue Anouk Etienne\r\n48799 Ramos', 'Baillyboeuf'),
(4, 'Laroche Bonneau S.A.S.', '328957.0', '7, place Michel Louis\r\n21294 Tanguy-sur-Giraud', 'Ribeiro-sur-Pons'),
(5, 'Julien S.A.R.L.', '789402.0', '4, chemin de Techer\r\n73 960 Perrier', 'Guillon'),
(6, 'Chevallier', '330611.0', '17, chemin Thibaut Courtois\r\n59 205 Fontaine', 'Courtois'),
(7, 'Seguin S.A.R.L.', '714005.0', '65, place Pinto\r\n15 456 Dupuy', 'Marie-sur-Camus'),
(8, 'Gaudin', '425785.0', 'impasse Baron\r\n70795 Roger', 'Da Costa'),
(9, 'Gerard Pires S.A.S.', '725094.0', '900, rue Jacob\r\n00958 Grosdan', 'Da CostaVille'),
(10, 'Neveu', '382029.0', '18, boulevard Philippe Delmas\r\n97979 Buisson', 'Hernandezdan'),
(11, 'Descamps S.A.', '429124.0', 'place Roger Delorme\r\n94621 Martins', 'Muller-sur-Leclerc'),
(12, 'Nguyen SARL', '308354.0', '484, impasse Jean Lebreton\r\n45 802 Dos SantosBourg', 'Joseph'),
(13, 'Philippe', '496874.0', '3, rue Baudry\r\n25115 Pineau-sur-Roy', 'Lecoq'),
(14, 'Humbert SAS', '745166.0', 'avenue Charles Godard\r\n79247 HamonVille', 'Joseph'),
(15, 'Gros S.A.S.', '409523.0', '2, boulevard de Roussel\r\n74 014 Levy', 'Samson-les-Bains'),
(16, 'Lombard Bodin S.A.R.L.', '583590.0', 'avenue Victoire Munoz\r\n42 903 Auger', 'Lopes-sur-Hamel'),
(17, 'Valentin SA', '252650.0', '78, rue Aubert\r\n06 241 Guillot-sur-Parent', 'Bailly'),
(18, 'Duval', '680351.0', 'rue de Marchal\r\n13 988 Morelnec', 'Becker-la-Forêt'),
(19, 'Pinto', '655650.0', '40, avenue Étienne Moreau\r\n25260 Marin-sur-Marechal', 'Blancnec'),
(20, 'Maurice Laine SARL', '462923.0', '34, chemin de Rossi\r\n59410 Couturierdan', 'Tessiernec'),
(21, 'Descamps', '785082.0', '187, place de Mace\r\n96 406 Robin', 'De Oliveira-les-Bains'),
(22, 'Daniel SARL', '377372.0', '1, rue Tristan Hubert\r\n18288 Herve-sur-Daniel', 'Lemoine'),
(23, 'Ribeiro et Fils', '119435.0', 'avenue de Pottier\r\n08 772 Guyon-sur-Collin', 'Simonboeuf'),
(24, 'Leblanc S.A.', '916892.0', '48, rue Henry\r\n35 474 Meunier', 'Bourdon-sur-Mer'),
(25, 'Moreno S.A.', '913234.0', '193, rue Hamon\r\n62397 Robert', 'Dos Santos'),
(26, 'Vallee', '759720.0', 'impasse de Jean\r\n93863 Aubert-sur-Mary', 'Delahaye'),
(27, 'Briand', '399792.0', '776, impasse de Dupuis\r\n99075 Regnier', 'Jeannec'),
(28, 'Alexandre', '705033.0', '89, rue de Leconte\r\n26 791 Rey', 'Duvalnec'),
(29, 'Bouvet Lucas et Fils', '511295.0', '869, chemin Nath Rousset\r\n25117 Bonneau', 'De OliveiraVille'),
(30, 'Rey Bouvier SAS', '856081.0', '20, boulevard de Bertin\r\n45193 Dufour-la-Forêt', 'Jacquet'),
(31, 'Laporte', '592952.0', '947, rue Moreau\r\n43 354 Cousinnec', 'Delmas-sur-Blin'),
(32, 'De Oliveira', '774156.0', '415, rue Berthelot\r\n68318 Collin', 'Brun'),
(33, 'Garcia', '346285.0', '155, place de Guillaume\r\n67461 Leger', 'Diaz'),
(34, 'Hardy Roy SARL', '968917.0', '256, rue Martinez\r\n94250 Tessier', 'Lucas'),
(35, 'Giraud', '961752.0', '1, chemin Lombard\r\n73542 PiresBourg', 'Jolynec'),
(36, 'Berger Meunier S.A.R.L.', '518779.0', '18, boulevard Pottier\r\n46911 Barbierboeuf', 'Pruvost'),
(37, 'Munoz et Fils', '179138.0', '54, boulevard de Lopes\r\n53303 Delahaye', 'Aubert-la-Forêt'),
(38, 'Albert', '833213.0', 'boulevard Anaïs Fischer\r\n22648 DupuisVille', 'Guillaume'),
(39, 'Lambert', '551996.0', '97, boulevard Anaïs Dias\r\n40643 Moreau', 'Benard-sur-Adam'),
(40, 'Bailly SAS', '837375.0', '62, place Chartier\r\n32886 GimenezBourg', 'Francois'),
(41, 'Dubois', '894866.0', '91, chemin Jacob\r\n60 044 Ferreira-les-Bains', 'Techer-sur-Mer'),
(42, 'Jacob', '308962.0', '80, rue de Brunet\r\n76760 Guillotboeuf', 'Mercier'),
(43, 'Martineau', '171986.0', '22, rue de Pineau\r\n78 929 LemaitreVille', 'Mahe'),
(44, 'Cordier S.A.S.', '854753.0', 'rue de Bousquet\r\n78090 Lenoir', 'Barbierboeuf'),
(45, 'Delannoy', '751148.0', '8, avenue Susan Marty\r\n34 768 Maury-sur-Mer', 'MenardVille'),
(46, 'Marin', '836769.0', '33, rue Alves\r\n35 036 LamyBourg', 'Ferreira-sur-Simon'),
(47, 'Riou Wagner S.A.R.L.', '184544.0', '79, rue Roger Verdier\r\n47 067 Baudrydan', 'FaureBourg'),
(48, 'Besnard', '510510.0', '34, boulevard Mathilde Dupuis\r\n71 017 Richard', 'MilletVille'),
(49, 'Riou Barbier SAS', '401959.0', '9, rue Dijoux\r\n23588 Perret-la-Forêt', 'Hebert-sur-Remy'),
(50, 'Martins Pineau SARL', '987872.0', '40, rue de Goncalves\r\n03075 Leroux', 'Carlier'),
(51, 'Gilbert Renard et Fils', '165794.0', '92, rue Rolland\r\n78 121 David', 'Perrot'),
(52, 'Lopez S.A.S.', '266576.0', '8, impasse Victoire Blanchet\r\n45 232 Barthelemy-sur-Descamps', 'Herve'),
(53, 'Camus', '870797.0', '355, place Valentine Rousset\r\n36 446 Gomez-les-Bains', 'Paul-sur-Mer'),
(54, 'Paris', '251680.0', '4, impasse Richard\r\n31 788 Leleu-sur-Arnaud', 'Hoarau'),
(55, 'Camus S.A.', '614514.0', '47, boulevard de Boucher\r\n29725 ColinVille', 'De Sousa'),
(56, 'Barbe', '241532.0', '423, boulevard de Petitjean\r\n32 783 Louisboeuf', 'Juliendan'),
(57, 'Philippe', '802165.0', 'rue Patrick Delahaye\r\n99 260 Laroche', 'Delaunay'),
(58, 'Chauveau', '111019.0', '2, impasse Schmitt\r\n46071 Faure-les-Bains', 'PerrierVille'),
(59, 'Loiseau Louis SA', '950346.0', '36, place Augustin Bousquet\r\n48531 Renaultdan', 'Boyer-la-Forêt'),
(60, 'Francois S.A.R.L.', '595876.0', '96, avenue Vincent Chauvin\r\n42142 Auger', 'Meyer'),
(61, 'Vaillant Charles SAS', '368438.0', '2, impasse de Bouvet\r\n15 413 Joly', 'Perez'),
(62, 'Legendre', '669799.0', '5, boulevard Wagner\r\n20217 Ramos', 'Gaudin'),
(63, 'Da Costa', '330019.0', '20, rue de Rolland\r\n99 820 Perret', 'Lejeunenec'),
(64, 'Chartier', '248603.0', 'rue de Besnard\r\n54312 Gautierboeuf', 'Martinez'),
(65, 'Lopez Michaud S.A.', '723055.0', '3, chemin de Thierry\r\n72 083 Hebert', 'MarchandVille'),
(66, 'Maillet', '579403.0', '7, rue Étienne Lefebvre\r\n73 219 Etienne', 'SchmittBourg'),
(67, 'Dias Riou S.A.', '540190.0', '63, avenue Traore\r\n43274 Chevalier', 'GauthierVille'),
(68, 'Voisin Huet S.A.S.', '271355.0', 'rue Suzanne Vaillant\r\n08697 Gonzalezboeuf', 'Gautierdan'),
(69, 'Vaillant Pineau S.A.S.', '981884.0', 'rue Susanne Le Gall\r\n51 998 Delorme-les-Bains', 'Lefebvre'),
(70, 'Brunel Masse S.A.R.L.', '189002.0', '814, impasse Théophile Valentin\r\n42 223 Bazin', 'Legrand-sur-Martinez'),
(71, 'Rocher', '835189.0', '43, impasse de Fouquet\r\n64723 FleuryVille', 'Gillet-sur-Guyon'),
(72, 'Jean', '212199.0', '59, boulevard Collin\r\n52 792 Robert-sur-Mer', 'Baron'),
(73, 'Moreau S.A.S.', '532760.0', '57, boulevard Carpentier\r\n83 192 Moreno', 'Torres'),
(74, 'Masson S.A.', '983295.0', '69, impasse Thierry Fleury\r\n13 477 Meunier', 'Gilbert'),
(75, 'Hardy Le Goff SARL', '554250.0', '28, boulevard de Lemonnier\r\n95478 Leclercq', 'Bousquet-sur-Mer'),
(76, 'Maury', '425303.0', '5, avenue Arnaud\r\n89393 Bouchetnec', 'Lemonnier'),
(77, 'Adam SARL', '850168.0', 'rue Théophile Bruneau\r\n49847 Bourgeois', 'Marion-sur-Mer'),
(78, 'Gay', '281242.0', '82, avenue de Perez\r\n05 927 Payet', 'Berger'),
(79, 'Voisin Boutin S.A.', '941556.0', 'boulevard de Guillot\r\n64476 Merlenec', 'Delorme'),
(80, 'Mathieu Collet SAS', '176054.0', '31, chemin Pages\r\n54 497 MorelVille', 'Toussaintboeuf'),
(81, 'Breton', '399399.0', '402, place Zacharie Samson\r\n82 821 Alexandrenec', 'Bousquet-sur-Foucher'),
(82, 'Blondel', '127995.0', '7, impasse Marcelle Michaud\r\n93 815 Mallet', 'BourdonBourg'),
(83, 'Delannoy', '626977.0', '76, rue Alexandre\r\n68 219 Evrard', 'Nguyen'),
(84, 'Chevalier', '250235.0', '2, place Denis\r\n55 878 Lambert', 'Normand'),
(85, 'Hardy Munoz S.A.S.', '731050.0', 'boulevard Gomes\r\n48060 Grenier', 'Albert-sur-Bouvier'),
(86, 'Thibault SA', '285668.0', '814, impasse de De Sousa\r\n84 732 Rossi', 'Jourdan-les-Bains'),
(87, 'Guilbert', '905712.0', '896, impasse de Bazin\r\n88 452 Thibault-les-Bains', 'Wagner'),
(88, 'Chauvin Gomez S.A.', '301541.0', '35, chemin de Thierry\r\n22969 Giraud', 'Rodrigues-sur-Mer'),
(89, 'Picard S.A.', '826338.0', 'avenue Camille Garcia\r\n02 127 Meunier', 'Guyotnec'),
(90, 'Morvan', '101232.0', '27, place de Martinez\r\n90 565 Cousin', 'Bourgeois-sur-Joly'),
(91, 'Faure et Fils', '195249.0', '8, chemin de Leleu\r\n62116 Lombard', 'Guyon'),
(92, 'Bernard', '374492.0', 'rue Eugène Traore\r\n65770 Poulain', 'Bouvier'),
(93, 'Martel', '193257.0', '580, impasse de Lombard\r\n85 002 Henry-la-Forêt', 'Duhamel'),
(94, 'Delannoy Morvan et Fils', '613845.0', '27, rue de Le Goff\r\n37 432 Pasquier', 'Hardyboeuf'),
(95, 'Didier Loiseau S.A.', '201986.0', '4, impasse de Joubert\r\n91883 Camus', 'Martin'),
(96, 'Perrin Levy S.A.S.', '379654.0', '183, avenue de Guilbert\r\n10542 Lefort', 'Blanchard-sur-Delmas'),
(97, 'Marechal', '546104.0', '8, avenue Lucie Mercier\r\n78 165 Fischer', 'Rochernec'),
(98, 'Delmas Klein S.A.', '363852.0', 'rue de Dubois\r\n83246 DelormeVille', 'Roche'),
(99, 'Bousquet SARL', '177738.0', '40, boulevard Susanne Henry\r\n61 079 Gerard', 'Bertin'),
(100, 'Buisson Gonzalez et Fils', '503822.0', '81, rue de Michel\r\n98074 Laroche-les-Bains', 'Julien');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
