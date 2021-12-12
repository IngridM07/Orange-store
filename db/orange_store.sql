SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `fruits` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `containers` int(11) NOT NULL,
  `quantity_var` int(11) NOT NULL DEFAULT 6
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(5, 'apple', 600, 5, 2);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(7, 'apple', 600, 5, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(8, 'apple', 600, 5, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(9, 'orange', 70, 70, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(10, 'orange', 50, 9, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(11, 'apple', 30, 3, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(13, 'orange', 4, 3, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(14, 'apple', 50, 1, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(15, 'orange', 130, 3, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(16, 'orange', 2, 2, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(17, 'orange', 3, 3, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(18, 'orange', 100, 2, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(19, 'orange', 70, 3, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(20, 'orange', 6, 6, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(21, 'apple', 50, 8, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(22, 'orange', 59, 47, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(23, 'orange', 700, 1, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(24, 'orange', 650, 2, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(25, 'orange', 200, 49, 2);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(26, 'orange', 40, 2, -4);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(27, 'orange', 4, 4, 2);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(28, 'orange', 30, 49, 0);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(29, 'apple', 40, 49, 0);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(30, 'orange', 34, 36, 1);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(31, 'orange', 32, 13, 0);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(32, 'orange', 20, 20, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(33, 'orange', 19, 19, 6);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(34, 'orange', 18, 18, 1);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(35, 'orange', 18, 18, 1);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(36, 'orange', 40, 40, 0);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(37, 'orange', 2, 2, 0);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(38, 'orange', 22, 3, 197);
INSERT INTO `fruits` (`id`, `name`, `price`, `containers`, `quantity_var`) VALUES(39, 'orange', 33, 2, 3);

CREATE TABLE `sale` (
  `id_sale` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(2, 7, 7);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(3, 12, 12);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(4, 12, 3);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(5, 12, 2);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(6, 12, 2);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(7, 12, 1);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(8, 12, 2);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(9, 11, 2);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(10, 11, 12);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(11, 11, 2);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(12, 11, 1);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(13, 11, 1);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(14, 11, 1);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(15, 11, 1);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(16, 11, 1);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(17, 11, 2);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(18, 11, 3);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(19, 11, 1);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(20, 11, 1);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(21, 11, 2);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(22, 11, 1);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(23, 11, 3);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(24, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(25, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(26, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(27, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(28, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(29, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(30, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(31, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(32, 11, 3);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(33, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(34, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(40, 9, 3);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(41, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(42, 11, 5);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(43, 11, 5);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(44, 11, 5);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(45, 11, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(46, 10, 5);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(47, 9, 5);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(48, 8, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(49, 7, 5);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(50, 6, 3);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(51, 11, 2);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(52, 6, 3);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(53, 5, 3);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(54, 4, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(55, 5, 3);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(56, 2, 4);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(57, 8, 2);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(58, 15, 3);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(59, 14, 36);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(60, 15, 6);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(61, 14, 3300);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(62, 14, 30000);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(63, 14, 290000);
INSERT INTO `sale` (`id_sale`, `id`, `quantity`) VALUES(64, 14, 9800);

CREATE TABLE `shelves` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `shelves` (`id`) VALUES(9);
INSERT INTO `shelves` (`id`) VALUES(10);
INSERT INTO `shelves` (`id`) VALUES(11);
INSERT INTO `shelves` (`id`) VALUES(12);
INSERT INTO `shelves` (`id`) VALUES(13);
INSERT INTO `shelves` (`id`) VALUES(14);
INSERT INTO `shelves` (`id`) VALUES(15);
INSERT INTO `shelves` (`id`) VALUES(16);

CREATE TABLE `shelves_fruits` (
  `id` int(11) NOT NULL,
  `id_fruit` int(11) NOT NULL,
  `id_shelve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(1, 24, 9);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(2, 25, 10);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(3, 26, 11);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(4, 27, 12);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(5, 28, 13);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(6, 29, 14);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(7, 30, 14);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(8, 31, 14);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(9, 34, 15);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(10, 35, 15);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(11, 36, 15);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(12, 37, 16);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(13, 37, 16);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(14, 38, 16);
INSERT INTO `shelves_fruits` (`id`, `id_fruit`, `id_shelve`) VALUES(15, 39, 16);


ALTER TABLE `fruits`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sale`
  ADD PRIMARY KEY (`id_sale`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

ALTER TABLE `shelves`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `shelves_fruits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fruit` (`id_fruit`),
  ADD KEY `id_shelve` (`id_shelve`);


ALTER TABLE `fruits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

ALTER TABLE `sale`
  MODIFY `id_sale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

ALTER TABLE `shelves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `shelves_fruits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;


ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`id`) REFERENCES `shelves_fruits` (`id`) ON UPDATE CASCADE;

ALTER TABLE `shelves_fruits`
  ADD CONSTRAINT `shelves_fruits_ibfk_1` FOREIGN KEY (`id_shelve`) REFERENCES `shelves` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shelves_fruits_ibfk_2` FOREIGN KEY (`id_fruit`) REFERENCES `fruits` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
