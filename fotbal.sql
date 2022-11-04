-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Mai 2015 la 19:33
-- Versiune server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fotbal`
--
CREATE DATABASE IF NOT EXISTS `fotbal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fotbal`;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `antrenori`
--

DROP TABLE IF EXISTS `antrenori`;
CREATE TABLE IF NOT EXISTS `antrenori` (
  `ID_antrenor` int(11) NOT NULL,
  `ID_echipa` int(11) NOT NULL,
  `Nume` varchar(30) NOT NULL,
  `Prenume` varchar(30) NOT NULL,
  `Nationalitate` varchar(30) NOT NULL,
  `Varsta` int(3) NOT NULL,
  `Functie` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `antrenori`
--

INSERT INTO `antrenori` (`ID_antrenor`, `ID_echipa`, `Nume`, `Prenume`, `Nationalitate`, `Varsta`, `Functie`) VALUES
(3000, 1, 'Mandorlini', 'Andrea', 'italian', 49, 'antrenor principal'),
(3001, 1, 'Nicolini', 'Enrico', 'italian', 54, 'antrenor secund'),
(3002, 1, 'Carlan', 'Horia', 'roman', 38, 'antrenor cu portarii'),
(3003, 2, 'Petrescu', 'Dan', 'roman', 42, 'antrenor principal'),
(3004, 2, 'Pojar', 'Cristian', 'roman', 45, 'antrenor secund'),
(3005, 3, 'Stoichita', 'Mihai', 'roman', 49, 'antrenor principal'),
(3006, 4, 'Sabau', 'Ovidiu', 'roman', 43, 'antrenor principal'),
(3007, 5, 'Manea', 'Nicolae', 'roman', 47, 'antrenor principal'),
(3008, 6, 'Lacatus', 'Marius', 'roman', 44, 'antrenor principal'),
(3009, 7, 'Moldovan', 'Viorel', 'roman', 41, 'antrenor principal'),
(3010, 8, 'Talnar', 'Cornel', 'roman', 52, 'antrenor principal'),
(3011, 10, 'Pustai', 'Cristian', 'roman', 49, 'antrenor principal'),
(3012, 13, 'Petre', 'Grigoras', 'roman', 48, 'antrenor principal'),
(3013, 12, 'Napoli', 'Nicolo', 'italian', 47, 'antrenor principal'),
(3014, 16, 'Falub', 'Adrian', 'roman', 39, 'antrenor principal'),
(3015, 14, 'Wotte', 'Mark', 'olandez', 52, 'antrenor principal'),
(3016, 18, 'Multescu', 'Gigi', 'roman', 54, 'antrenor principal'),
(3017, 17, 'Halagian', 'Florin', 'roman', 64, 'antrenor principal'),
(3018, 15, 'Stoica', 'Stefan', 'roman', 51, 'antrenor principal'),
(3019, 9, 'Munteanu', 'Dorinel', 'roman', 43, 'antrenor principal'),
(3020, 11, 'Ciobotariu', 'Liviu', 'roman', 42, 'antrenor principal');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `arbitri`
--

DROP TABLE IF EXISTS `arbitri`;
CREATE TABLE IF NOT EXISTS `arbitri` (
  `ID_arbitru` int(11) NOT NULL,
  `Nume` varchar(30) NOT NULL,
  `Prenume` varchar(30) NOT NULL,
  `Functie` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `arbitri`
--

INSERT INTO `arbitri` (`ID_arbitru`, `Nume`, `Prenume`, `Functie`) VALUES
(2000, 'Craciunescu', 'Teodor', 'central'),
(2001, 'Kovacs', 'Istvan', 'central'),
(2002, 'Balaj', 'Cristian', 'central'),
(2003, 'Coltescu', 'Sebastian', 'central'),
(2004, 'Tudor', 'Alexandru', 'central'),
(2005, 'Avram', 'Marius', 'central'),
(2006, 'Hategan', 'Ovidiu', 'central'),
(2007, 'Vidan', 'Adrian', 'tusier'),
(2008, 'Popa', 'Ionel', 'tusier'),
(2009, 'Nagy', 'Miklos', 'tusier'),
(2010, 'Gheorghe', 'Sebastian', 'tusier'),
(2011, 'Onita', 'Aurel', 'tusier'),
(2012, 'Nica', 'Cristian', 'tusier'),
(2013, 'Szekely', 'Zoltan', 'tusier'),
(2014, 'Sovre', 'Octavian', 'tusier'),
(2015, 'Ungureanu', 'Eduard', 'tusier');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `echipe`
--

DROP TABLE IF EXISTS `echipe`;
CREATE TABLE IF NOT EXISTS `echipe` (
  `ID_echipa` int(11) NOT NULL,
  `ID_sponsor` int(11) NOT NULL,
  `Nume_echipa` varchar(30) NOT NULL,
  `Oras` varchar(30) NOT NULL,
  `Meciuri_jucate` int(3) NOT NULL,
  `Victorii` int(3) NOT NULL,
  `Egaluri` int(3) NOT NULL,
  `Infrangeri` int(3) NOT NULL,
  `Nr_puncte` int(4) NOT NULL,
  `Golaveraj` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `echipe`
--

INSERT INTO `echipe` (`ID_echipa`, `ID_sponsor`, `Nume_echipa`, `Oras`, `Meciuri_jucate`, `Victorii`, `Egaluri`, `Infrangeri`, `Nr_puncte`, `Golaveraj`) VALUES
(1, 51, 'CFR', 'Cluj', 17, 10, 4, 3, 34, 13),
(2, 53, 'Unirea', 'Urziceni', 17, 10, 4, 3, 34, 12),
(3, 55, 'Steaua', 'Bucuresti', 17, 10, 4, 3, 34, 11),
(4, 62, 'Timisoara', 'Timisoara', 17, 8, 7, 2, 31, 17),
(5, 63, 'Rapid', 'Bucuresti', 17, 9, 4, 4, 31, 15),
(6, 58, 'Vaslui', 'Vaslui', 17, 9, 3, 5, 30, 16),
(7, 59, 'Brasov', 'Brasov', 17, 7, 6, 4, 27, 8),
(8, 60, 'Dinamo', 'Bucuresti', 17, 7, 6, 4, 27, 7),
(9, 61, 'Otelul', 'Galati', 17, 6, 4, 7, 22, -3),
(10, 64, 'Gaz_Metan', 'Medias', 17, 5, 6, 6, 21, -8),
(11, 56, 'Pandurii', 'Tg.Jiu', 17, 5, 5, 7, 20, -3),
(12, 65, 'Astra', 'Ploiesti', 17, 4, 6, 7, 18, -4),
(13, 66, 'Poli', 'Iasi', 17, 5, 3, 9, 18, -10),
(14, 67, 'Universitatea', 'Craiova', 17, 5, 2, 10, 17, -3),
(15, 68, 'International', 'Curtea_de_Arges', 17, 5, 1, 11, 16, -15),
(16, 69, 'Alba_Iulia', 'Alba_Iulia', 17, 3, 5, 9, 14, -10),
(17, 70, 'Gloria', 'Bistrita', 17, 2, 8, 7, 14, -11),
(18, 71, 'Ceahlaul', 'Piatra_Neamt', 17, 2, 4, 11, 10, -22);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `jucatori`
--

DROP TABLE IF EXISTS `jucatori`;
CREATE TABLE IF NOT EXISTS `jucatori` (
`ID_jucator` int(11) NOT NULL,
  `ID_echipa` int(11) NOT NULL,
  `Nume` varchar(30) NOT NULL,
  `Prenume` varchar(30) NOT NULL,
  `Data_nasterii` date NOT NULL,
  `Nationalitate` varchar(30) NOT NULL,
  `Pozitie` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1179 DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `jucatori`
--

INSERT INTO `jucatori` (`ID_jucator`, `ID_echipa`, `Nume`, `Prenume`, `Data_nasterii`, `Nationalitate`, `Pozitie`) VALUES
(1000, 1, 'Stancioiu', 'Eduard', '1981-03-03', 'roman', 'portar'),
(1001, 1, 'Nuno', 'Claro', '1977-01-07', 'portughez', 'portar'),
(1002, 1, 'Cadu', 'Ricardo', '1981-12-21', 'portughez', 'fundas'),
(1003, 1, 'Alcantara', 'Hugo', '1979-07-29', 'brazilian', 'fundas'),
(1004, 1, 'Da Silva', 'Antony', '1980-12-20', 'portughez', 'fundas'),
(1005, 1, 'Panin', 'Cristian', '1978-06-09', 'roman', 'fundas'),
(1006, 1, 'Muresan', 'Gabriel', '1982-03-18', 'roman', 'fundas'),
(1007, 1, 'Culio', 'Emmanuel', '1983-08-30', 'argentinian', 'mijlocas'),
(1008, 1, 'Da Silva', 'Danny', '1982-01-30', 'portughez', 'mijlocas'),
(1009, 1, 'Peralta', 'Sixto', '1979-04-16', 'argentinian', 'mijlocas'),
(1011, 1, 'Mara', 'Bogdan', '1977-09-29', 'roman', 'mijlocas'),
(1012, 1, 'Deac', 'Ciprian', '1986-02-16', 'roman', 'mijlocas'),
(1013, 1, 'Kone', 'Yssouf', '1982-02-19', 'ivorian', 'atacant'),
(1014, 1, 'Traore', 'Lacina', '1990-08-19', 'ivorian', 'atacant'),
(1015, 1, 'Dubarbier', 'Sebastian', '1986-02-19', 'argentinian', 'atacant'),
(1016, 2, 'Arlauskis', 'Giedrius', '1987-12-03', 'lituanian', 'portar'),
(1017, 2, 'Bruno', 'Fernandes', '1978-11-06', 'portughez', 'fundas'),
(1019, 2, 'Galamaz', 'George', '1981-05-05', 'roman', 'fundas'),
(1020, 2, 'Bordeanu', 'Valeriu', '1977-02-02', 'roman', 'fundas'),
(1021, 2, 'Maftei', 'Vasile', '1978-07-21', 'roman', 'fundas'),
(1022, 2, 'Frunza', 'Sorin', '1978-03-29', 'roman', 'mijlocas'),
(1023, 2, 'Brandan', 'Pablo', '1983-03-05', 'argentinian', 'mijlocas'),
(1024, 2, 'Gomez', 'Ricardo', '1981-07-18', 'brazilian', 'mijlocas'),
(1025, 2, 'Apostol', 'Iulian', '1978-12-13', 'roman', 'mijlocas'),
(1026, 2, 'Paduretu', 'Razvan', '1981-02-19', 'roman', 'mijlocas'),
(1027, 2, 'Onofras', 'Marius', '1980-08-17', 'roman', 'atacant'),
(1028, 2, 'Rusescu', 'Raul', '1988-08-09', 'roman', 'atacant'),
(1029, 2, 'Bilasco', 'Marius', '1981-07-13', 'roman', 'atacant'),
(1030, 3, 'Zapata', 'Robinson', '1978-09-30', 'columbian', 'portar'),
(1031, 3, 'Tatarusanu', 'Ciprian', '1986-02-09', 'roman', 'portar'),
(1032, 3, 'Ghionea', 'Sorin', '1979-05-11', 'roman', 'fundas'),
(1033, 3, 'Baciu', 'Eugen', '1980-05-25', 'roman', 'fundas'),
(1034, 3, 'Zhelev', 'Zhivko', '1979-06-23', 'bulgar', 'fundas'),
(1035, 3, 'Emeghara', 'Ifeanyi', '1984-03-24', 'nigerian', 'fundas'),
(1036, 3, 'Marin', 'Petre', '1973-09-08', 'roman', 'fundas'),
(1037, 3, 'Tanase', 'Cristian', '1987-02-18', 'roman', 'mijlocas'),
(1038, 3, 'Szekely', 'Ianos', '1983-04-13', 'roman', 'mijlocas'),
(1039, 3, 'Petre', 'Ovidiu', '1982-03-22', 'roman', 'mijlocas'),
(1040, 3, 'Nicolita', 'Banel', '1985-01-07', 'roman', 'mijlocas'),
(1041, 3, 'Toja', 'Carlos', '1985-05-24', 'columbian', 'mijlocas'),
(1042, 3, 'Kapetanos', 'Pantelis', '1983-06-08', 'grec', 'atacant'),
(1043, 3, 'Surdu', 'Romeo', '1984-01-12', 'roman', 'atacant'),
(1044, 3, 'Stancu', 'Bogdan', '1987-06-28', 'roman', 'atacant'),
(1045, 4, 'Pantilimon', 'Costel', '1987-02-01', 'roman', 'portar'),
(1046, 4, 'Sepsi', 'Laszlo', '1986-07-07', 'roman', 'fundas'),
(1047, 4, 'Nibombe', 'Dare', '1980-07-16', 'togolez', 'fundas'),
(1048, 4, 'Cisovsky', 'Marian', '1979-11-02', 'slovac', 'fundas'),
(1049, 4, 'Alexa', 'Dan', '1979-11-28', 'roman', 'mijlocas'),
(1050, 4, 'Bourceanu', 'Alexandru', '1984-08-21', 'roman', 'mijlocas'),
(1051, 4, 'Goga', 'Dorin', '1984-08-02', 'roman', 'mijlocas'),
(1052, 4, 'Curtean', 'Alexandru', '1987-03-27', 'roman', 'mijlocas'),
(1053, 4, 'Karamyan', 'Artiom', '1979-11-14', 'armean', 'mijlocas'),
(1054, 4, 'Bucur', 'Gigel', '1980-04-08', 'roman', 'atacant'),
(1055, 4, 'Parks', 'Winston', '1981-11-12', 'costarican', 'atacant'),
(1056, 5, 'Bornescu', 'Mircea', '1980-05-03', 'roman', 'portar'),
(1057, 5, 'Constantin', 'Marius', '1984-10-25', 'roman', 'fundas'),
(1058, 5, 'Iencsi', 'Adrian', '1975-03-15', 'roman', 'fundas'),
(1059, 5, 'Bozovic', 'Vladimir', '1981-11-13', 'muntenegrean', 'fundas'),
(1060, 5, 'Da Silva', 'Helder', '1988-04-13', 'brazilian', 'fundas'),
(1061, 5, 'Spadacio', 'Juliano', '1980-09-11', 'brazilian', 'mijlocas'),
(1062, 5, 'Cesinha', 'Carlos', '1980-03-12', 'brazilian', 'mijlocas'),
(1063, 5, 'Lazar', 'Costin', '1981-04-24', 'roman', 'mijlocas'),
(1064, 5, 'Herea', 'Ovidiu', '1985-03-26', 'roman', 'mijlocas'),
(1065, 5, 'Buga', 'Mugurel', '1977-12-16', 'roman', 'atacant'),
(1066, 5, 'Ionita', 'Alexandru', '1989-08-16', 'roman', 'atacant'),
(1067, 6, 'Haisan', 'Cristian', '1981-03-13', 'roman', 'portar'),
(1068, 6, 'Luz', 'Hugo', '1982-02-24', 'portughez', 'fundas'),
(1069, 6, 'Buhus', 'Bogdan', '1979-10-29', 'proman', 'fundas'),
(1070, 6, 'Canu', 'Gabriel', '1981-01-19', 'roman', 'fundas'),
(1071, 6, 'Andronic', 'Dorian', '1989-10-12', 'roman', 'fundas'),
(1072, 6, 'Gheorghiu', 'Adrian', '1981-11-20', 'roman', 'mijlocas'),
(1073, 6, 'Balace', 'Silviu', '1978-11-13', 'roman', 'mijlocas'),
(1074, 6, 'Genchev', 'Stanislav', '1981-03-20', 'bulgar', 'mijlocas'),
(1075, 6, 'Wesley', 'Lopez', '1984-07-22', 'brazilian', 'atacant'),
(1076, 6, 'Temwanjira', 'Mike', '1983-05-21', 'Zimbabwe', 'atacant'),
(1077, 6, 'Burdujan', 'Lucian', '1984-02-18', 'roman', 'atacant'),
(1078, 7, 'Coman', 'Danut', '1979-03-28', 'roman', 'portar'),
(1079, 7, 'Abrudan', 'Octavian', '1984-03-16', 'roman', 'fundas'),
(1080, 7, 'Diogo', 'Nuno', '1981-06-13', 'portughez', 'fundas'),
(1081, 7, 'Duarte', 'Rui', '1980-10-11', 'portughez', 'fundas'),
(1082, 7, 'Ilyes', 'Robert', '1974-02-08', 'roman', 'mijlocas'),
(1083, 7, 'Munteanu', 'Catalin', '1979-01-26', 'roman', 'mijlocas'),
(1084, 7, 'Roman', 'Mihai', '1984-11-16', 'roman', 'mijlocas'),
(1085, 7, 'Maldarasanu', 'Marius', '1975-08-03', 'roman', 'mijlocas'),
(1086, 7, 'Zaharia', 'Dorel', '1978-02-21', 'roman', 'atacant'),
(1087, 7, 'Sburlea', 'Sabrin', '1989-05-12', 'roman', 'atacant'),
(1088, 8, 'Dolha', 'Emilian', '1978-01-18', 'roman', 'portar'),
(1089, 8, 'Moti', 'Cosmin', '1984-03-12', 'roman', 'fundas'),
(1091, 8, 'Pulhac', 'Cristian', '1984-08-17', 'roman', 'fundas'),
(1092, 8, 'Cristea', 'Adrian', '1983-11-30', 'roman', 'mijlocas'),
(1093, 8, 'Margaritescu', 'Andrei', '1980-01-01', 'roman', 'mijlocas'),
(1094, 8, 'Zicu', 'Ianis', '1983-10-23', 'roman', 'mijlocas'),
(1095, 8, 'NDoye', 'Ousmane', '1981-11-08', 'senegalez', 'mijlocas'),
(1096, 8, 'Bratu', 'Florin', '1980-02-01', 'roman', 'atacant'),
(1097, 8, 'Niculescu', 'Claudiu', '1976-06-23', 'roman', 'atacant'),
(1098, 8, 'Niculae', 'Marius', '1981-04-16', 'roman', 'atacant'),
(1099, 9, 'Baotici', 'Zdenko', '1985-03-09', 'bosniac', 'portar'),
(1100, 9, 'Rapa', 'Emilian', '1990-01-16', 'roman', 'fundas'),
(1101, 9, 'Sarghi', 'Cristian', '1983-11-26', 'roman', 'fundas'),
(1102, 9, 'Costin', 'Sergiu', '1978-11-21', 'roman', 'fundas'),
(1103, 9, 'Cojoc', 'Samoel', '1989-07-08', 'roman', 'fundas'),
(1104, 9, 'Antal', 'Liviu', '1989-06-02', 'roman', 'mijlocas'),
(1105, 9, 'Paraschiv', 'Gabriel', '1978-03-27', 'roman', 'mijlocas'),
(1106, 9, 'Giurgiu', 'Gabriel', '1982-09-03', 'roman', 'mijlocas'),
(1107, 9, 'Viglianti', 'Gabriel', '1979-06-12', 'argentinian', 'mijlocas'),
(1108, 9, 'Pena', 'Marian', '1985-05-02', 'roman', 'atacant'),
(1109, 9, 'Axente', 'Mircea', '1987-03-12', 'roman', 'atacant'),
(1110, 10, 'Vatca', 'Cosmin', '1981-03-07', 'roman', 'portar'),
(1111, 10, 'Lazar', 'Florin', '1980-01-15', 'roman', 'fundas'),
(1112, 10, 'Nohai', 'Florin', '1981-04-13', 'roman', 'fundas'),
(1113, 10, 'Hoban', 'Ovidiu', '1982-12-27', 'roman', 'fundas'),
(1114, 10, 'Markovic', 'Zarko', '1987-01-28', 'slovac', 'fundas'),
(1115, 10, 'Parvulescu', 'Paul', '1988-08-11', 'roman', 'mijlocas'),
(1116, 10, 'Dudita', 'Doru', '1977-09-07', 'roman', 'mijlocas'),
(1117, 10, 'Sabou', 'Florin', '1980-01-17', 'roman', 'mijlocas'),
(1118, 10, 'Oliveira', 'Eric', '1985-12-07', 'brazilian', 'mijlocas'),
(1119, 10, 'Bud', 'Cristian', '1982-04-03', 'roman', 'atacant'),
(1120, 10, 'Silvasan', 'Cristian', '1982-02-25', 'roman', 'atacant'),
(1121, 11, 'Stanca', 'Razvan', '1979-08-21', 'roman', 'portar'),
(1122, 11, 'Chibulcutean', 'Alin', '1978-11-20', 'roman', 'fundas'),
(1123, 11, 'Rusu', 'Adrian', '1984-07-28', 'roman', 'fundas'),
(1124, 11, 'Cardoso', 'Carlos', '1984-09-11', 'brazilian', 'fundas'),
(1125, 11, 'Popete', 'Florin', '1977-12-27', 'roman', 'fundas'),
(1126, 11, 'Stanga', 'Florin', '1978-05-22', 'roman', 'mijlocas'),
(1127, 11, 'Pacurar', 'Alexandru', '1982-01-20', 'roman', 'mijlocas'),
(1128, 11, 'Stancu', 'Ionut', '1979-06-24', 'roman', 'mijlocas'),
(1129, 11, 'Hidisan', 'Florin', '1980-03-14', 'roman', 'mijlocas'),
(1130, 11, 'Tilinca', 'Cosmin', '1985-08-02', 'roman', 'atacant'),
(1131, 11, 'Raskovic', 'Milanco', '1982-11-09', 'sarb', 'atacant'),
(1132, 12, 'Miron', 'Bogdan', '1982-01-02', 'roman', 'portar'),
(1133, 12, 'Rohat', 'George', '1975-01-23', 'roman', 'fundas'),
(1134, 12, 'Oprsal', 'Radek', '1978-05-09', 'sarb', 'fundas'),
(1136, 12, 'Craciun', 'Florin', '1986-03-22', 'roman', 'fundas'),
(1137, 12, 'Mihalache', 'Ovidiu', '1984-12-14', 'roman', 'fundas'),
(1138, 12, 'Stan', 'Alexandru', '1989-02-01', 'roman', 'mijlocas'),
(1139, 12, 'Seto', 'Takayuki', '1985-02-05', 'japonez', 'mijlocas'),
(1140, 12, 'Gheorghe', 'Vasile', '1985-09-05', 'roman', 'mijlocas'),
(1141, 12, 'Paun', 'Georgian', '1985-10-25', 'roman', 'atacant'),
(1142, 12, 'Ganea', 'Liviu', '1988-02-23', 'roman', 'atacant'),
(1143, 13, 'Branet', 'Cristian', '1981-07-14', 'roman', 'portar'),
(1144, 13, 'Buta', 'Cornel', '1980-03-24', 'roman', 'fundas'),
(1145, 13, 'Pecnik', 'Andrej', '1981-09-27', 'slovac', 'fundas'),
(1146, 13, 'Bratu', 'Cristian', '1977-12-24', 'roman', 'mijlocas'),
(1147, 13, 'Miclea', 'Romulus', '1984-02-20', 'roman', 'mijlocas'),
(1148, 13, 'Bujor', 'Vlad', '1988-09-08', 'roman', 'atacant'),
(1149, 13, 'Balba', 'Ionut', '1982-04-12', 'roman', 'atacant'),
(1150, 14, 'Lung', 'Silviu', '1989-06-04', 'roman', 'portar'),
(1151, 14, 'Gaman', 'Valerica', '1989-05-02', 'roman', 'fundas'),
(1152, 14, 'Barboianu', 'Stefan', '1988-01-24', 'roman', 'fundas'),
(1153, 14, 'Trica', 'Eugen', '1976-08-04', 'roman', 'mijlocas'),
(1154, 14, 'Prepelita', 'Andrei', '1985-08-25', 'roman', 'mijlocas'),
(1155, 14, 'Costea', 'Florin', '1985-05-16', 'roman', 'atacant'),
(1156, 14, 'Costea', 'Mihai', '1988-05-29', 'roman', 'atacant'),
(1157, 15, 'Popa', 'Marius', '1979-07-21', 'roman', 'portar'),
(1158, 15, 'Bacila', 'Cosmin', '1978-01-11', 'roman', 'fundas'),
(1159, 15, 'Radut', 'Mihai', '1986-11-30', 'roman', 'mijlocas'),
(1160, 15, 'Lazar', 'Catalin', '1984-12-01', 'roman', 'mijlocas'),
(1161, 15, 'Stoianof', 'Ovidiu', '1982-05-15', 'roman', 'atacant'),
(1162, 16, 'Cernea', 'Cornel', '1976-04-22', 'roman', 'portar'),
(1163, 16, 'Radoi', 'Sorin', '1985-06-30', 'roman', 'fundas'),
(1164, 16, 'Olah', 'Adrian', '1981-04-20', 'roman', 'fundas'),
(1165, 16, 'Cristea', 'Calin', '1988-05-06', 'roman', 'mijlocas'),
(1166, 16, 'Dan', 'Florin', '1979-04-01', 'roman', 'mijlocas'),
(1167, 16, 'Verdes', 'Bobi', '1980-04-09', 'roman', 'atacant'),
(1168, 16, 'Veljovic', 'Rade', '1986-08-09', 'sarb', 'atacant'),
(1169, 17, 'Albut', 'Calin', '1981-05-23', 'roman', 'portar'),
(1170, 17, 'Frasinescu', 'Vali', '1985-02-13', 'roman', 'fundas'),
(1171, 17, 'Sanmartean', 'Lucian', '1980-01-23', 'roman', 'mijlocas'),
(1172, 17, 'Hora', 'Ioan', '1988-08-25', 'roman', 'atacant'),
(1173, 18, 'Lipitor', 'Cosmin', '1987-03-15', 'roman', 'portar'),
(1174, 18, 'Forminte', 'Alexandru', '1983-09-15', 'roman', 'fundas'),
(1175, 18, 'Barna', 'Daniel', '1987-08-15', 'roman', 'mijlocas'),
(1176, 18, 'Doicaru', 'Radu', '1979-04-09', 'roman', 'atacant'),
(1178, 4, 'Raducanu', 'Marius', '1992-12-12', 'Romana', 'mijlocas');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `meci`
--

DROP TABLE IF EXISTS `meci`;
CREATE TABLE IF NOT EXISTS `meci` (
  `ID_meci` int(11) NOT NULL,
  `ID_echipa_gazda` int(11) NOT NULL,
  `ID_echipa_oaspete` int(11) NOT NULL,
  `ID_arbitru` int(11) NOT NULL,
  `Stadion` varchar(30) NOT NULL,
  `Rezultat` varchar(4) NOT NULL,
  `Nr. spectatori` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `meci`
--

INSERT INTO `meci` (`ID_meci`, `ID_echipa_gazda`, `ID_echipa_oaspete`, `ID_arbitru`, `Stadion`, `Rezultat`, `Nr. spectatori`) VALUES
(11111, 1, 2, 2000, 'Gruia', '2-0', 17000),
(11112, 18, 3, 2001, 'Ceahlaul', '0-2', 15000),
(11113, 8, 6, 2003, 'Dinamo', '1-1', 1000),
(11114, 10, 4, 2006, 'Medias', '1-6', 9000),
(11115, 11, 12, 2009, 'Pandurii', '2-1', 1800),
(11116, 9, 4, 2005, 'Otelul', '3-3', 5000),
(11117, 7, 17, 2008, 'Brasov', '2-0', 10000),
(11118, 6, 12, 2006, 'Vaslui', '2-0', 9000);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `sponsori`
--

DROP TABLE IF EXISTS `sponsori`;
CREATE TABLE IF NOT EXISTS `sponsori` (
  `ID_sponsor` int(11) NOT NULL,
  `ID_echipa` int(11) NOT NULL,
  `Nume_sponsor` varchar(30) NOT NULL,
  `Capital` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `sponsori`
--

INSERT INTO `sponsori` (`ID_sponsor`, `ID_echipa`, `Nume_sponsor`, `Capital`) VALUES
(50, 1, 'Ecomax', 23000000),
(51, 1, 'Orange', 43000000),
(52, 3, 'Rafo', 22300000),
(53, 2, 'Alexandrion', 1000000),
(54, 5, 'Cosmote', 120000),
(55, 3, 'Sportingbet', 12300000),
(56, 11, 'Vodafone', 3200000),
(57, 5, 'Astra', 1000000),
(58, 6, 'Dacia', 3440000),
(59, 7, 'BCR', 34000000),
(60, 8, 'BRD', 3000000),
(61, 9, 'Stanleybet', 2300000),
(62, 4, 'BKP', 1000000),
(63, 5, 'Holsten', 2230000),
(64, 10, 'Pepsi', 900000),
(65, 12, 'Arctic', 30000),
(66, 13, 'Rompetrol', 230000),
(67, 14, 'Lukoil', 324000),
(68, 15, 'Bwin', 2000000),
(69, 16, 'Tarom', 340000),
(70, 17, 'Darimex', 234000),
(71, 18, 'Zapp', 2130000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antrenori`
--
ALTER TABLE `antrenori`
 ADD PRIMARY KEY (`ID_antrenor`);

--
-- Indexes for table `arbitri`
--
ALTER TABLE `arbitri`
 ADD PRIMARY KEY (`ID_arbitru`);

--
-- Indexes for table `echipe`
--
ALTER TABLE `echipe`
 ADD PRIMARY KEY (`ID_echipa`);

--
-- Indexes for table `jucatori`
--
ALTER TABLE `jucatori`
 ADD PRIMARY KEY (`ID_jucator`);

--
-- Indexes for table `meci`
--
ALTER TABLE `meci`
 ADD PRIMARY KEY (`ID_meci`);

--
-- Indexes for table `sponsori`
--
ALTER TABLE `sponsori`
 ADD PRIMARY KEY (`ID_sponsor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jucatori`
--
ALTER TABLE `jucatori`
MODIFY `ID_jucator` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1179;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
