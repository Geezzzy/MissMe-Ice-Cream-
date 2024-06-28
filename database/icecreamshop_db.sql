-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 05:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icecreamshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `price`, `qty`) VALUES
('4b1CDOdrPRt0JoKC5lNm', 'TAl1Ck3GFt1Bilg2sS64', 'JPrztZw0rmxzfr89iGpg', '20', '2');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `subject`, `message`) VALUES
('PREeAX4TsZUfsgTpoz1i', 'TAl1Ck3GFt1Bilg2sS64', 'john doe', 'johndoe@gmail.com', 'selling purpose', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `seller_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress',
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `seller_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`, `payment_status`) VALUES
('n05mWqpp2KkktFDMx2GU', 'TAl1Ck3GFt1Bilg2sS64', 'AR7ktiueFqxTtsnzVuY1', 'john doe', '1234567890', 'johndoe@gmail.com', '504, tkd, delhi, india, 110019', 'home', 'cash on delivery', 'KvMLZsUPFDABjd9b6LZY', '60', '1', '2023-08-12', 'in progress', 'pending'),
('rGwsnt3JktltkT9DLfpD', 'TAl1Ck3GFt1Bilg2sS64', 'AR7ktiueFqxTtsnzVuY1', 'john doe', '1234567890', 'johndoe@gmail.com', '504, tkd, delhi, india, 110019', 'home', 'cash on delivery', 'JPrztZw0rmxzfr89iGpg', '20', '1', '2023-08-12', 'in progress', 'pending'),
('KoiAstakbSuWwpxfqVnX', 'TAl1Ck3GFt1Bilg2sS64', 'vHzPzEr2CoB3GLU4fZIK', 'john doe', '6677889900', 'johndoe@gmail.com', '504, tkd, delhi, india, 110019', 'office', 'net banking', 'irTt2KT6TxF8fpdxYbtk', '50', '1', '2023-08-12', 'in progress', 'pending'),
('Xg31gq3b84muqgUOjj1U', 'TAl1Ck3GFt1Bilg2sS64', 'vHzPzEr2CoB3GLU4fZIK', 'john doe', '6677889900', 'johndoe@gmail.com', '504, tkd, delhi, india, 110019', 'home', 'paytm', 'K5XFwTZGTV0p7emZgfm5', '25', '1', '2023-08-12', 'in progress', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(255) NOT NULL,
  `seller_id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `stock` int(100) NOT NULL,
  `product_detail` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seller_id`, `name`, `price`, `image`, `stock`, `product_detail`, `status`) VALUES
('JPrztZw0rmxzfr89iGpg', 'AR7ktiueFqxTtsnzVuY1', 'chocolate ice-cream', '20', 'product12.jpg', 20, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, c', 'active'),
('Rp6ZMjRulaWhpR16cuZw', 'AR7ktiueFqxTtsnzVuY1', 'venilla', '20', 'bbanner.jpg', 60, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, c', 'active'),
('irTt2KT6TxF8fpdxYbtk', 'AR7ktiueFqxTtsnzVuY1', 'choco-bar', '50', 'product1.jpg', 8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, c', 'active'),
('KvMLZsUPFDABjd9b6LZY', 'AR7ktiueFqxTtsnzVuY1', 'vannila', '60', 'product2.jpg', 20, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, c', 'active'),
('K5XFwTZGTV0p7emZgfm5', 'vHzPzEr2CoB3GLU4fZIK', 'kulfy', '25', 'product6.jpg', 8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, c', 'active'),
('bC6j8CoYxnTiOd1EtZLC', 'vHzPzEr2CoB3GLU4fZIK', 'pineapple', '40', 'product3.jpg', 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, c', 'active'),
('vXxxpVJ94yJDVsOuURa6', 'vHzPzEr2CoB3GLU4fZIK', 'choco-bar', '50', 'product4.jpg', 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, c', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `email`, `password`) VALUES
('AR7ktiueFqxTtsnzVuY1', 'dipak ', 'dpk13@gmail.com', '$2y$10$PSbg8g4qvJ0deRQ3W.yJDuIV1fcwxXotgPQjPSI6h08Pno.I8FsiS'),
('vHzPzEr2CoB3GLU4fZIK', 'Dipak dahiwal', 'dpk15@gmail.com', '$2y$10$Fk6.NphT.9khsh.b/T.3YOg8Wx.XoUnb0bfLptuOiZncsH6iUtYu6');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
('TAl1Ck3GFt1Bilg2sS64', 'john doe', 'johndoe@gmail.com', '$2y$10$OCyzYZOUU5ZcMxwKmAPrfOWZIzMUK0AyGfZg8BY4DAzS9exiXFlCW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
