-- create database if not exists
CREATE DATABASE IF NOT EXISTS `dreaming_flowers`;

-- use the database
USE `dreaming_flowers`;

-- drop tables if they exist
DROP TABLE IF EXISTS `florerias`;
DROP TABLE IF EXISTS `usuarios`;
DROP TABLE IF EXISTS `ciudades`;

-- create usuarios table
CREATE TABLE `dreaming_flowers`.`usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `rol` enum('admin','user') DEFAULT 'user',
  `status` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- create ciudades table
CREATE TABLE `dreaming_flowers`.`ciudades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- create florerias table
CREATE TABLE `dreaming_flowers`.`florerias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
