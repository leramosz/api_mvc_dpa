-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-08-2017 a las 22:10:23
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dpa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commune`
--

CREATE TABLE `commune` (
  `commune_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `province_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `commune`
--

INSERT INTO `commune` (`commune_id`, `type`, `name`, `latitude`, `longitude`, `url`, `province_id`) VALUES
(1101, 'comuna', 'Iquique', -20.2232, -70.1463, '', 11),
(1107, 'comuna', 'Alto Hospicio', -20.2677, -70.1007, '', 11),
(1401, 'comuna', 'Pozo Almonte', -20.2532, -69.7848, '', 14),
(1402, 'comuna', 'Camiña', -19.3118, -69.4264, '', 14),
(1403, 'comuna', 'Colchane', -19.2787, -68.6343, '', 14),
(1404, 'comuna', 'Huara', -19.9963, -69.7718, '', 14),
(1405, 'comuna', 'Pica', -20.4889, -69.3289, '', 14),
(2101, 'comuna', 'Antofagasta', -23.6499, -70.4069, '', 21),
(2102, 'comuna', 'Mejillones', -23.0962, -70.4498, '', 21),
(2103, 'comuna', 'Sierra Gorda', -22.8921, -69.3203, '', 21),
(2104, 'comuna', 'Taltal', -25.4054, -70.4826, '', 21),
(2201, 'comuna', 'Calama', -22.4542, -68.9337, '', 22),
(2202, 'comuna', 'Ollagüe', -21.2238, -68.2529, '', 22),
(2203, 'comuna', 'San Pedro de Atacama', -22.9157, -68.2004, '', 22),
(2301, 'comuna', 'Tocopilla', -22.0858, -70.193, '', 23),
(2302, 'comuna', 'María Elena', -22.1639, -69.4171, '', 23),
(3101, 'comuna', 'Copiapó', -27.3654, -70.3314, '', 31),
(3102, 'comuna', 'Caldera', -27.0668, -70.817, '', 31),
(3103, 'comuna', 'Tierra Amarilla', -27.4877, -70.2696, '', 31),
(3201, 'comuna', 'Chañaral', -26.3425, -70.6107, '', 32),
(3202, 'comuna', 'Diego de Almagro', -26.3771, -70.0488, '', 32),
(3301, 'comuna', 'Vallenar', -28.5777, -70.7566, '', 33),
(3302, 'comuna', 'Alto del Carmen', -28.7508, -70.4883, '', 33),
(3303, 'comuna', 'Freirina', -28.5001, -71.076, '', 33),
(3304, 'comuna', 'Huasco', -28.4518, -71.2244, '', 33),
(4101, 'comuna', 'La Serena', -29.8966, -71.2422, '', 41),
(4102, 'comuna', 'Coquimbo', -29.968, -71.337, '', 41),
(4103, 'comuna', 'Andacollo', -30.2357, -71.0828, '', 41),
(4104, 'comuna', 'La Higuera', -29.497, -71.2656, '', 41),
(4105, 'comuna', 'Paiguano', -30.2496, -70.3832, '', 41),
(4106, 'comuna', 'Vicuña', -30.0287, -70.7108, '', 41),
(4201, 'comuna', 'Illapel', -31.6242, -71.1626, '', 42),
(4202, 'comuna', 'Canela', -31.3935, -71.4578, '', 42),
(4203, 'comuna', 'Los Vilos', -31.9157, -71.5107, '', 42),
(4204, 'comuna', 'Salamanca', -31.7737, -70.9717, '', 42),
(4301, 'comuna', 'Ovalle', -30.5942, -71.1983, '', 43),
(4302, 'comuna', 'Combarbalá', -31.1764, -70.9978, '', 43),
(4303, 'comuna', 'Monte Patria', -30.8291, -70.6984, '', 43),
(4304, 'comuna', 'Punitaqui', -30.8256, -71.2585, '', 43),
(4305, 'comuna', 'Río Hurtado', -30.2603, -70.6668, '', 43),
(5101, 'comuna', 'Valparaíso', -33.0436, -71.6231, '', 51),
(5102, 'comuna', 'Casablanca', -33.3262, -71.3983, '', 51),
(5103, 'comuna', 'Concón', -32.9305, -71.5191, '', 51),
(5104, 'comuna', 'Juan Fernández', -33.6167, -78.8667, '', 51),
(5105, 'comuna', 'Puchuncaví', -32.7499, -71.396, '', 51),
(5107, 'comuna', 'Quintero', -32.7872, -71.5274, '', 51),
(5109, 'comuna', 'Viña del Mar', -33.0445, -71.5224, '', 51),
(5201, 'comuna', 'Isla de Pascua', -27.1504, -109.423, '', 52),
(5301, 'comuna', 'Los Andes', -32.8347, -70.5971, '', 53),
(5302, 'comuna', 'Calle Larga', -32.9514, -70.5524, '', 53),
(5303, 'comuna', 'Rinconada', -32.8765, -70.7085, '', 53),
(5304, 'comuna', 'San Esteban', -32.693, -70.3703, '', 53),
(5401, 'comuna', 'La Ligua', -32.449, -71.2309, '', 54),
(5402, 'comuna', 'Cabildo', -32.4095, -71.0798, '', 54),
(5403, 'comuna', 'Papudo', -32.4699, -71.3842, '', 54),
(5404, 'comuna', 'Petorca', -32.1965, -70.8318, '', 54),
(5405, 'comuna', 'Zapallar', -32.5933, -71.3686, '', 54),
(5501, 'comuna', 'Quillota', -32.8793, -71.2508, '', 55),
(5502, 'comuna', 'Calera', -32.7837, -71.1586, '', 55),
(5503, 'comuna', 'Hijuelas', -32.8671, -71.0929, '', 55),
(5504, 'comuna', 'La Cruz', -32.8258, -71.2592, '', 55),
(5506, 'comuna', 'Nogales', -32.6923, -71.1894, '', 55),
(5601, 'comuna', 'San Antonio', -33.5812, -71.613, '', 56),
(5602, 'comuna', 'Algarrobo', -33.3332, -71.6023, '', 56),
(5603, 'comuna', 'Cartagena', -33.5341, -71.4628, '', 56),
(5604, 'comuna', 'El Quisco', -33.4156, -71.6556, '', 56),
(5605, 'comuna', 'El Tabo', -33.4847, -71.5862, '', 56),
(5606, 'comuna', 'Santo Domingo', -33.7076, -71.6301, '', 56),
(5701, 'comuna', 'San Felipe', -32.7464, -70.7489, '', 57),
(5702, 'comuna', 'Catemu', -32.6981, -70.956, '', 57),
(5703, 'comuna', 'Llaillay', -32.8899, -70.8942, '', 57),
(5704, 'comuna', 'Panquehue', -32.8079, -70.8428, '', 57),
(5705, 'comuna', 'Putaendo', -32.6279, -70.7165, '', 57),
(5706, 'comuna', 'Santa María', -32.7446, -70.654, '', 57),
(5801, 'comuna', 'Quilpué', -33.0492, -71.4435, '', 58),
(5802, 'comuna', 'Limache', -33.0035, -71.2613, '', 58),
(5803, 'comuna', 'Olmué', -33.0132, -71.1525, '', 58),
(5804, 'comuna', 'Villa Alemana', -33.0429, -71.3724, '', 58),
(6101, 'comuna', 'Rancagua', -34.162, -70.741, '', 61),
(6102, 'comuna', 'Codegua', -34.0442, -70.5131, '', 61),
(6103, 'comuna', 'Coinco', -34.2918, -70.9706, '', 61),
(6104, 'comuna', 'Coltauco', -34.2498, -71.0791, '', 61),
(6105, 'comuna', 'Doñihue', -34.2024, -70.9325, '', 61),
(6106, 'comuna', 'Graneros', -34.0709, -70.7501, '', 61),
(6107, 'comuna', 'Las Cabras', -34.2945, -71.3066, '', 61),
(6108, 'comuna', 'Machalí', -34.2938, -70.3371, '', 61),
(6109, 'comuna', 'Malloa', -34.4455, -70.9449, '', 61),
(6110, 'comuna', 'Mostazal', -33.9772, -70.7092, '', 61),
(6111, 'comuna', 'Olivar', -34.2186, -70.8355, '', 61),
(6112, 'comuna', 'Peumo', -34.3798, -71.1687, '', 61),
(6113, 'comuna', 'Pichidegua', -34.3758, -71.3469, '', 61),
(6114, 'comuna', 'Quinta de Tilcoco', -34.367, -71.0096, '', 61),
(6115, 'comuna', 'Rengo', -34.4017, -70.8561, '', 61),
(6116, 'comuna', 'Requínoa', -34.3533, -70.6797, '', 61),
(6117, 'comuna', 'San Vicente', -34.4381, -71.0792, '', 61),
(6201, 'comuna', 'Pichilemu', -34.3869, -72.0032, '', 62),
(6202, 'comuna', 'La Estrella', -34.2037, -71.6073, '', 62),
(6203, 'comuna', 'Litueche', -34.1069, -71.7204, '', 62),
(6204, 'comuna', 'Marchihue', -34.3979, -71.6144, '', 62),
(6205, 'comuna', 'Navidad', -34.0068, -71.8101, '', 62),
(6206, 'comuna', 'Paredones', -34.6972, -71.8978, '', 62),
(6301, 'comuna', 'San Fernando', -34.584, -70.9874, '', 63),
(6302, 'comuna', 'Chépica', -34.7303, -71.2688, '', 63),
(6303, 'comuna', 'Chimbarongo', -34.7552, -70.9753, '', 63),
(6304, 'comuna', 'Lolol', -34.7689, -71.6453, '', 63),
(6305, 'comuna', 'Nancagua', -34.6615, -71.1749, '', 63),
(6306, 'comuna', 'Palmilla', -34.6042, -71.3583, '', 63),
(6307, 'comuna', 'Peralillo', -34.4593, -71.5, '', 63),
(6308, 'comuna', 'Placilla', -34.6135, -71.0951, '', 63),
(6309, 'comuna', 'Pumanque', -34.6052, -71.6443, '', 63),
(6310, 'comuna', 'Santa Cruz', -34.6383, -71.367, '', 63),
(7101, 'comuna', 'Talca', -35.4288, -71.6607, '', 71),
(7102, 'comuna', 'Constitución', -35.3309, -72.4139, '', 71),
(7103, 'comuna', 'Curepto', -35.091, -72.0216, '', 71),
(7104, 'comuna', 'Empedrado', -35.6213, -72.2473, '', 71),
(7105, 'comuna', 'Maule', -35.5057, -71.7069, '', 71),
(7106, 'comuna', 'Pelarco', -35.3723, -71.3278, '', 71),
(7107, 'comuna', 'Pencahue', -35.3051, -71.8284, '', 71),
(7108, 'comuna', 'Río Claro', -35.2827, -71.2665, '', 71),
(7109, 'comuna', 'San Clemente', -35.534, -71.4865, '', 71),
(7110, 'comuna', 'San Rafael', -35.2942, -71.5254, '', 71),
(7201, 'comuna', 'Cauquenes', -35.9738, -72.3142, '', 72),
(7202, 'comuna', 'Chanco', -35.7337, -72.5333, '', 72),
(7203, 'comuna', 'Pelluhue', -35.8145, -72.5736, '', 72),
(7301, 'comuna', 'Curicó', -34.9756, -71.2235, '', 73),
(7302, 'comuna', 'Hualañé', -34.9762, -71.8043, '', 73),
(7303, 'comuna', 'Licantén', -34.9591, -72.0269, '', 73),
(7304, 'comuna', 'Molina', -35.0896, -71.2788, '', 73),
(7305, 'comuna', 'Rauco', -34.9295, -71.3111, '', 73),
(7306, 'comuna', 'Romeral', -34.9634, -71.1205, '', 73),
(7307, 'comuna', 'Sagrada Familia', -34.9949, -71.3798, '', 73),
(7308, 'comuna', 'Teno', -34.8701, -71.0895, '', 73),
(7309, 'comuna', 'Vichuquén', -34.8594, -72.0074, '', 73),
(7401, 'comuna', 'Linares', -35.8495, -71.585, '', 74),
(7402, 'comuna', 'Colbún', -35.6927, -71.4067, '', 74),
(7403, 'comuna', 'Longaví', -35.9657, -71.6816, '', 74),
(7404, 'comuna', 'Parral', -36.14, -71.8244, '', 74),
(7405, 'comuna', 'Retiro', -36.0458, -71.7591, '', 74),
(7406, 'comuna', 'San Javier', -35.6035, -71.7362, '', 74),
(7407, 'comuna', 'Villa Alegre', -35.6868, -71.6704, '', 74),
(7408, 'comuna', 'Yerbas Buenas', -35.6882, -71.5636, '', 74),
(8101, 'comuna', 'Concepción', -36.8148, -73.0293, '', 81),
(8102, 'comuna', 'Coronel', -37.0265, -73.1498, '', 81),
(8103, 'comuna', 'Chiguayante', -36.9046, -73.0164, '', 81),
(8104, 'comuna', 'Florida', -36.8209, -72.6621, '', 81),
(8105, 'comuna', 'Hualqui', -37.0145, -72.8662, '', 81),
(8106, 'comuna', 'Lota', -37.0906, -73.1547, '', 81),
(8107, 'comuna', 'Penco', -36.7423, -72.998, '', 81),
(8108, 'comuna', 'San Pedro de la Paz', -36.8635, -73.1085, '', 81),
(8109, 'comuna', 'Santa Juana', -37.1726, -72.9352, '', 81),
(8110, 'comuna', 'Talcahuano', -36.7364, -73.1047, '', 81),
(8111, 'comuna', 'Tomé', -36.6177, -72.9579, '', 81),
(8112, 'comuna', 'Hualpén', -36.7827, -73.1454, '', 81),
(8201, 'comuna', 'Lebu', -37.6079, -73.6508, '', 82),
(8202, 'comuna', 'Arauco', -37.257, -73.2839, '', 82),
(8203, 'comuna', 'Cañete', -37.8039, -73.4016, '', 82),
(8204, 'comuna', 'Contulmo', -38.026, -73.2581, '', 82),
(8205, 'comuna', 'Curanilahue', -37.4759, -73.353, '', 82),
(8206, 'comuna', 'Los Álamos', -37.6747, -73.3896, '', 82),
(8207, 'comuna', 'Tirúa', -38.3315, -73.3794, '', 82),
(8301, 'comuna', 'Los Ángeles', -37.473, -72.3507, '', 83),
(8302, 'comuna', 'Antuco', -37.3273, -71.6775, '', 83),
(8303, 'comuna', 'Cabrero', -37.0374, -72.4057, '', 83),
(8304, 'comuna', 'Laja', -37.2768, -72.7171, '', 83),
(8305, 'comuna', 'Mulchén', -37.7147, -72.2394, '', 83),
(8306, 'comuna', 'Nacimiento', -37.5011, -72.6763, '', 83),
(8307, 'comuna', 'Negrete', -37.5974, -72.5646, '', 83),
(8308, 'comuna', 'Quilaco', -37.6799, -72.0074, '', 83),
(8309, 'comuna', 'Quilleco', -37.4335, -71.8761, '', 83),
(8310, 'comuna', 'San Rosendo', -37.2021, -72.748, '', 83),
(8311, 'comuna', 'Santa Bárbara', -37.6627, -72.0184, '', 83),
(8312, 'comuna', 'Tucapel', -37.2901, -71.9491, '', 83),
(8313, 'comuna', 'Yumbel', -37.0964, -72.5562, '', 83),
(8314, 'comuna', 'Alto Biobío', -37.8708, -71.6106, '', 83),
(8401, 'comuna', 'Chillán', -36.6013, -72.1093, '', 84),
(8402, 'comuna', 'Bulnes', -36.7422, -72.3018, '', 84),
(8403, 'comuna', 'Cobquecura', -36.1318, -72.7911, '', 84),
(8404, 'comuna', 'Coelemu', -36.4877, -72.7022, '', 84),
(8405, 'comuna', 'Coihueco', -36.6166, -71.8344, '', 84),
(8406, 'comuna', 'Chillán Viejo', -36.6333, -72.1404, '', 84),
(8407, 'comuna', 'El Carmen', -36.8964, -72.0218, '', 84),
(8408, 'comuna', 'Ninhue', -36.4011, -72.397, '', 84),
(8409, 'comuna', 'Ñiquén', -36.2848, -71.8994, '', 84),
(8410, 'comuna', 'Pemuco', -36.9865, -72.0191, '', 84),
(8411, 'comuna', 'Pinto', -36.6978, -71.8934, '', 84),
(8412, 'comuna', 'Portezuelo', -36.529, -72.433, '', 84),
(8413, 'comuna', 'Quillón', -36.7383, -72.469, '', 84),
(8414, 'comuna', 'Quirihue', -36.2839, -72.5414, '', 84),
(8415, 'comuna', 'Ránquil', -36.6485, -72.6064, '', 84),
(8416, 'comuna', 'San Carlos', -36.4221, -71.9594, '', 84),
(8417, 'comuna', 'San Fabián', -36.5538, -71.5487, '', 84),
(8418, 'comuna', 'San Ignacio', -36.8186, -71.9883, '', 84),
(8419, 'comuna', 'San Nicolás', -36.4996, -72.2126, '', 84),
(8420, 'comuna', 'Treguaco', -36.4095, -72.6603, '', 84),
(8421, 'comuna', 'Yungay', -37.122, -72.0132, '', 84),
(9101, 'comuna', 'Temuco', -38.7362, -72.5989, '', 91),
(9102, 'comuna', 'Carahue', -38.7116, -73.1651, '', 91),
(9103, 'comuna', 'Cunco', -38.9307, -72.0264, '', 91),
(9104, 'comuna', 'Curarrehue', -39.3592, -71.5881, '', 91),
(9105, 'comuna', 'Freire', -38.9538, -72.6219, '', 91),
(9106, 'comuna', 'Galvarino', -38.4085, -72.7804, '', 91),
(9107, 'comuna', 'Gorbea', -39.0948, -72.6722, '', 91),
(9108, 'comuna', 'Lautaro', -38.5286, -72.427, '', 91),
(9109, 'comuna', 'Loncoche', -39.3681, -72.6315, '', 91),
(9110, 'comuna', 'Melipeuco', -38.8429, -71.6871, '', 91),
(9111, 'comuna', 'Nueva Imperial', -38.7445, -72.9482, '', 91),
(9112, 'comuna', 'Padre las Casas', -38.7658, -72.5929, '', 91),
(9113, 'comuna', 'Perquenco', -38.4154, -72.3725, '', 91),
(9114, 'comuna', 'Pitrufquén', -38.9829, -72.6429, '', 91),
(9115, 'comuna', 'Pucón', -39.2824, -71.9545, '', 91),
(9116, 'comuna', 'Saavedra', -38.7803, -73.3897, '', 91),
(9117, 'comuna', 'Teodoro Schmidt', -38.9989, -73.093, '', 91),
(9118, 'comuna', 'Toltén', -39.2022, -73.2004, '', 91),
(9119, 'comuna', 'Vilcún', -38.6701, -72.2238, '', 91),
(9120, 'comuna', 'Villarrica', -39.2803, -72.2182, '', 91),
(9121, 'comuna', 'Cholchol', -38.596, -72.8445, '', 91),
(9201, 'comuna', 'Angol', -37.803, -72.7017, '', 92),
(9202, 'comuna', 'Collipulli', -37.9528, -72.4323, '', 92),
(9203, 'comuna', 'Curacautín', -38.4317, -71.8898, '', 92),
(9204, 'comuna', 'Ercilla', -38.0587, -72.358, '', 92),
(9205, 'comuna', 'Lonquimay', -38.4501, -71.374, '', 92),
(9206, 'comuna', 'Los Sauces', -37.9754, -72.8288, '', 92),
(9207, 'comuna', 'Lumaco', -38.1636, -72.8918, '', 92),
(9208, 'comuna', 'Purén', -38.0326, -73.0728, '', 92),
(9209, 'comuna', 'Renaico', -37.6654, -72.5687, '', 92),
(9210, 'comuna', 'Traiguén', -38.2509, -72.6647, '', 92),
(9211, 'comuna', 'Victoria', -38.2336, -72.3329, '', 92),
(10101, 'comuna', 'Puerto Montt', -41.4633, -72.9314, '', 101),
(10102, 'comuna', 'Calbuco', -41.7775, -73.1415, '', 101),
(10103, 'comuna', 'Cochamó', -41.488, -72.3038, '', 101),
(10104, 'comuna', 'Fresia', -41.1542, -73.4224, '', 101),
(10105, 'comuna', 'Frutillar', -41.1167, -73.05, '', 101),
(10106, 'comuna', 'Los Muermos', -41.3997, -73.4651, '', 101),
(10107, 'comuna', 'Llanquihue', -41.2574, -73.0054, '', 101),
(10108, 'comuna', 'Maullín', -41.6172, -73.5956, '', 101),
(10109, 'comuna', 'Puerto Varas', -41.316, -72.9836, '', 101),
(10201, 'comuna', 'Castro', -42.48, -73.7625, '', 102),
(10202, 'comuna', 'Ancud', -41.8657, -73.8336, '', 102),
(10203, 'comuna', 'Chonchi', -42.6232, -73.7739, '', 102),
(10204, 'comuna', 'Curaco de Vélez', -42.4404, -73.6037, '', 102),
(10205, 'comuna', 'Dalcahue', -42.3776, -73.6521, '', 102),
(10206, 'comuna', 'Puqueldón', -42.6015, -73.6714, '', 102),
(10207, 'comuna', 'Queilén', -42.9001, -73.4827, '', 102),
(10208, 'comuna', 'Quellón', -43.1156, -73.6172, '', 102),
(10209, 'comuna', 'Quemchi', -42.1426, -73.475, '', 102),
(10210, 'comuna', 'Quinchao', -42.472, -73.4898, '', 102),
(10301, 'comuna', 'Osorno', -40.5747, -73.1319, '', 103),
(10302, 'comuna', 'Puerto Octay', -40.9755, -72.8833, '', 103),
(10303, 'comuna', 'Purranque', -40.9085, -73.1653, '', 103),
(10304, 'comuna', 'Puyehue', -40.6806, -72.599, '', 103),
(10305, 'comuna', 'Río Negro', -40.7829, -73.2319, '', 103),
(10306, 'comuna', 'San Juan de la Costa', -40.5156, -73.3997, '', 103),
(10307, 'comuna', 'San Pablo', -40.4118, -73.0102, '', 103),
(10401, 'comuna', 'Chaitén', -42.9168, -72.7164, '', 104),
(10402, 'comuna', 'Futaleufú', -43.1859, -71.8666, '', 104),
(10403, 'comuna', 'Hualaihué', -42.0967, -72.4044, '', 104),
(10404, 'comuna', 'Palena', -43.6162, -71.8176, '', 104),
(11101, 'comuna', 'Coihaique', -45.5758, -72.0621, '', 111),
(11102, 'comuna', 'Lago Verde', -44.2236, -71.8396, '', 111),
(11201, 'comuna', 'Aysén', -45.3975, -72.6993, '', 112),
(11202, 'comuna', 'Cisnes', -44.728, -72.6828, '', 112),
(11203, 'comuna', 'Guaitecas', -43.8781, -73.7485, '', 112),
(11301, 'comuna', 'Cochrane', -47.2494, -72.5784, '', 113),
(11302, 'comuna', 'O’Higgins', -48.4643, -72.5613, '', 113),
(11303, 'comuna', 'Tortel', -47.8242, -73.5645, '', 113),
(11401, 'comuna', 'Chile Chico', -46.5401, -71.7218, '', 114),
(11402, 'comuna', 'Río Ibáñez', -46.2938, -71.9357, '', 114),
(12101, 'comuna', 'Punta Arenas', -53.1641, -70.9305, '', 121),
(12102, 'comuna', 'Laguna Blanca', -52.3001, -71.1612, '', 121),
(12103, 'comuna', 'Río Verde', -52.5814, -71.5128, '', 121),
(12104, 'comuna', 'San Gregorio', -52.3135, -69.6842, '', 121),
(12201, 'comuna', 'Cabo de Hornos', -54.9352, -67.6041, '', 122),
(12202, 'comuna', 'Antártica', -64.3589, -60.8203, '', 122),
(12301, 'comuna', 'Porvenir', -53.2898, -70.3633, '', 123),
(12302, 'comuna', 'Primavera', -52.7122, -69.2496, '', 123),
(12303, 'comuna', 'Timaukel', -54.2877, -69.1644, '', 123),
(12401, 'comuna', 'Natales', -51.7219, -72.5208, '', 124),
(12402, 'comuna', 'Torres del Paine', -50.9896, -73.0893, '', 124),
(13101, 'comuna', 'Santiago Centro', -33.4417, -70.6541, '', 131),
(13102, 'comuna', 'Cerrillos', -33.497, -70.7112, '', 131),
(13103, 'comuna', 'Cerro Navia', -33.4267, -70.7434, '', 131),
(13104, 'comuna', 'Conchalí', -33.3862, -70.6727, '', 131),
(13105, 'comuna', 'El Bosque', -33.5638, -70.6714, '', 131),
(13106, 'comuna', 'Estación Central', -33.4503, -70.6751, '', 131),
(13107, 'comuna', 'Huechuraba', -33.3665, -70.6315, '', 131),
(13108, 'comuna', 'Independencia', -33.4196, -70.6627, '', 131),
(13109, 'comuna', 'La Cisterna', -33.538, -70.6612, '', 131),
(13110, 'comuna', 'La Florida', -33.5225, -70.5952, '', 131),
(13111, 'comuna', 'La Granja', -33.5373, -70.6188, '', 131),
(13112, 'comuna', 'La Pintana', -33.5902, -70.6322, '', 131),
(13113, 'comuna', 'La Reina', -33.4565, -70.5349, '', 131),
(13114, 'comuna', 'Las Condes', -33.4154, -70.5837, '', 131),
(13115, 'comuna', 'Lo Barnechea', -33.2993, -70.3748, '', 131),
(13116, 'comuna', 'Lo Espejo', -33.5247, -70.6916, '', 131),
(13117, 'comuna', 'Lo Prado', -33.4489, -70.721, '', 131),
(13118, 'comuna', 'Macul', -33.492, -70.5968, '', 131),
(13119, 'comuna', 'Maipú', -33.5213, -70.7572, '', 131),
(13120, 'comuna', 'Ñuñoa', -33.4607, -70.5927, '', 131),
(13121, 'comuna', 'Pedro Aguirre Cerda', -33.4891, -70.6729, '', 131),
(13122, 'comuna', 'Peñalolén', -33.4904, -70.5105, '', 131),
(13123, 'comuna', 'Providencia', -33.4214, -70.6033, '', 131),
(13124, 'comuna', 'Pudahuel', -33.4184, -70.8324, '', 131),
(13125, 'comuna', 'Quilicura', -33.3551, -70.7278, '', 131),
(13126, 'comuna', 'Quinta Normal', -33.428, -70.6964, '', 131),
(13127, 'comuna', 'Recoleta', -33.4173, -70.6303, '', 131),
(13128, 'comuna', 'Renca', -33.4141, -70.7129, '', 131),
(13129, 'comuna', 'San Joaquín', -33.4961, -70.6245, '', 131),
(13130, 'comuna', 'San Miguel', -33.5017, -70.6489, '', 131),
(13131, 'comuna', 'San Ramón', -33.5349, -70.6392, '', 131),
(13132, 'comuna', 'Vitacura', -33.3863, -70.5698, '', 131),
(13201, 'comuna', 'Puente Alto', -33.6079, -70.5778, '', 132),
(13202, 'comuna', 'Pirque', -33.7384, -70.4914, '', 132),
(13203, 'comuna', 'San José de Maipo', -33.6921, -70.1325, '', 132),
(13301, 'comuna', 'Colina', -33.1996, -70.6702, '', 133),
(13302, 'comuna', 'Lampa', -33.2863, -70.8789, '', 133),
(13303, 'comuna', 'Tiltil', -33.0655, -70.8465, '', 133),
(13401, 'comuna', 'San Bernardo', -33.5913, -70.702, '', 134),
(13402, 'comuna', 'Buin', -33.754, -70.7163, '', 134),
(13403, 'comuna', 'Calera de Tango', -33.6326, -70.7821, '', 134),
(13404, 'comuna', 'Paine', -33.8673, -70.7303, '', 134),
(13501, 'comuna', 'Melipilla', -33.6866, -71.2139, '', 135),
(13502, 'comuna', 'Alhué', -34.0355, -71.028, '', 135),
(13503, 'comuna', 'Curacaví', -33.4063, -71.1333, '', 135),
(13504, 'comuna', 'María Pinto', -33.5154, -71.1191, '', 135),
(13505, 'comuna', 'San Pedro', -33.8779, -71.4609, '', 135),
(13601, 'comuna', 'Talagante', -33.6643, -70.9296, '', 136),
(13602, 'comuna', 'El Monte', -33.6662, -71.0294, '', 136),
(13603, 'comuna', 'Isla de Maipo', -33.7536, -70.8862, '', 136),
(13604, 'comuna', 'Padre Hurtado', -33.5761, -70.8003, '', 136),
(13605, 'comuna', 'Peñaflor', -33.6141, -70.8876, '', 136),
(14101, 'comuna', 'Valdivia', -39.8201, -73.2457, '', 141),
(14102, 'comuna', 'Corral', -39.8892, -73.433, '', 141),
(14103, 'comuna', 'Lanco', -39.4522, -72.7747, '', 141),
(14104, 'comuna', 'Los Lagos', -39.8636, -72.8124, '', 141),
(14105, 'comuna', 'Máfil', -39.6654, -72.9575, '', 141),
(14106, 'comuna', 'Mariquina', -39.5399, -72.9621, '', 141),
(14107, 'comuna', 'Paillaco', -40.0707, -72.8708, '', 141),
(14108, 'comuna', 'Panguipulli', -39.6436, -72.3365, '', 141),
(14201, 'comuna', 'La Unión', -40.2951, -73.0829, '', 142),
(14202, 'comuna', 'Futrono', -40.1243, -72.393, '', 142),
(14203, 'comuna', 'Lago Ranco', -40.312, -72.5002, '', 142),
(14204, 'comuna', 'Río Bueno', -40.333, -72.9513, '', 142),
(15101, 'comuna', 'Arica', -18.477, -70.3221, '', 151),
(15102, 'comuna', 'Camarones', -19.0089, -69.9074, '', 151),
(15201, 'comuna', 'Putre', -18.1798, -69.5544, '', 152),
(15202, 'comuna', 'General Lagos', -17.8324, -69.6094, '', 152);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `country_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `url` varchar(500) CHARACTER SET utf16 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`country_id`, `type`, `name`, `latitude`, `longitude`, `url`) VALUES
(1, 'country', 'Chile', -30, -71, 'http://www.gob.cl/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `province`
--

CREATE TABLE `province` (
  `province_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `province`
--

INSERT INTO `province` (`province_id`, `type`, `name`, `latitude`, `longitude`, `url`, `region_id`) VALUES
(11, 'provincia', 'Iquique', -20.8011, -70.0963, '', 1),
(14, 'provincia', 'Tamarugal', -39.8567, -72.6089, '', 1),
(21, 'provincia', 'Antofagasta', -24.5646, -69.2877, '', 2),
(22, 'provincia', 'El Loa', -22.3196, -68.5107, '', 2),
(23, 'provincia', 'Tocopilla', -22.2306, -69.4666, '', 2),
(31, 'provincia', 'Copiapó', -27.5765, -70.0269, '', 3),
(32, 'provincia', 'Chañaral', -26.3599, -70.5981, '', 3),
(33, 'provincia', 'Huasco', -28.5604, -70.6146, '', 3),
(41, 'provincia', 'Elqui', -29.8335, -70.8014, '', 4),
(42, 'provincia', 'Choapa', -31.8006, -70.9827, '', 4),
(43, 'provincia', 'Limarí', -30.7342, -70.9957, '', 4),
(51, 'provincia', 'Valparaíso', -33.1381, -71.5617, '', 5),
(52, 'provincia', 'Isla de Pascua', -27.1212, -109.366, '', 5),
(53, 'provincia', 'Los Andes', -32.9544, -70.3163, '', 5),
(54, 'provincia', 'Petorca', -32.1965, -70.8318, '', 5),
(55, 'provincia', 'Quillota', -32.9009, -71.2947, '', 5),
(56, 'provincia', 'San Antonio', -33.6648, -71.4597, '', 5),
(57, 'provincia', 'San Felipe de Aconcagua', -32.7464, -70.7489, '', 5),
(58, 'provincia', 'Marga Marga', -33.065, -71.3711, '', 5),
(61, 'provincia', 'Cachapoal', -36.45, -71.7333, '', 6),
(62, 'provincia', 'Cardenal Caro', -34.2812, -71.8571, '', 6),
(63, 'provincia', 'Colchagua', -34.6761, -71.0973, '', 6),
(71, 'provincia', 'Talca', -35.3921, -71.6125, '', 7),
(72, 'provincia', 'Cauquenes', -35.9738, -72.3142, '', 7),
(73, 'provincia', 'Curicó', -35.1704, -70.8954, '', 7),
(74, 'provincia', 'Linares', -35.8495, -71.585, '', 7),
(81, 'provincia', 'Concepción', -36.8148, -73.0293, '', 8),
(82, 'provincia', 'Arauco', -37.7277, -73.3075, '', 8),
(83, 'provincia', 'Biobío', -37.4739, -72.1572, '', 8),
(84, 'provincia', 'Ñuble', -36.6191, -72.0182, '', 8),
(91, 'provincia', 'Cautín', -38.727, -72.5989, '', 9),
(92, 'provincia', 'Malleco', -37.803, -72.7017, '', 9),
(101, 'provincia', 'Llanquihue', -41.453, -72.6135, '', 10),
(102, 'provincia', 'Chiloé', -43.117, -73.9984, '', 10),
(103, 'provincia', 'Osorno', -40.7369, -72.9849, '', 10),
(104, 'provincia', 'Palena', -43.4449, -72.0923, '', 10),
(111, 'provincia', 'Coihaique', -45.2865, -71.7792, '', 11),
(112, 'provincia', 'Aysén', -46.3848, -72.2955, '', 11),
(113, 'provincia', 'Capitán Prat', -47.9232, -72.9245, '', 11),
(114, 'provincia', 'General Carrera', -46.557, -72.4123, '', 11),
(121, 'provincia', 'Magallanes', -53.6316, -71.5924, '', 12),
(122, 'provincia', 'Antártica Chilena', -55.028, -67.6318, '', 12),
(123, 'provincia', 'Tierra del Fuego', -53.7422, -69.2249, '', 12),
(124, 'provincia', 'Última Esperanza', -51.0163, -73.4285, '', 12),
(131, 'provincia', 'Santiago', -33.4417, -70.6541, '', 13),
(132, 'provincia', 'Cordillera', -33.6984, -70.1682, '', 13),
(133, 'provincia', 'Chacabuco', -33.1503, -70.7132, '', 13),
(134, 'provincia', 'Maipo', -33.7963, -70.7353, '', 13),
(135, 'provincia', 'Melipilla', -33.7369, -71.1743, '', 13),
(136, 'provincia', 'Talagante', -33.6665, -70.9331, '', 13),
(141, 'provincia', 'Valdivia', -39.7811, -72.5098, '', 14),
(142, 'provincia', 'Ranco', -40.4114, -72.4988, '', 14),
(151, 'provincia', 'Arica', -18.7139, -69.7522, '', 15),
(152, 'provincia', 'Parinacota', -18.3135, -69.3788, '', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `region_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`region_id`, `type`, `name`, `latitude`, `longitude`, `url`, `country_id`) VALUES
(1, 'region', 'Tarapacá', -20.164, -69.5541, '', 1),
(2, 'region', 'Antofagasta', -23.7503, -69.6, '', 1),
(3, 'region', 'Atacama', -27.5276, -70.2494, '', 1),
(4, 'region', 'Coquimbo', -30.8301, -70.9816, '', 1),
(5, 'region', 'Valparaíso', -32.9039, -71.0262, '', 1),
(6, 'region', 'Del Libertador Gral. Bernardo O’Higgins', -34.4294, -71.0393, '', 1),
(7, 'region', 'Del Maule', -35.5892, -71.5007, '', 1),
(8, 'region', 'Del Biobío', -37.2442, -72.4661, '', 1),
(9, 'region', 'De la Araucanía', -38.5505, -72.4382, '', 1),
(10, 'region', 'De los Lagos', -42.1071, -72.6425, '', 1),
(11, 'region', 'Aysén del Gral. Carlos Ibáñez del Campo', -46.2772, -73.6628, '', 1),
(12, 'region', 'Magallanes y de la Antártica Chilena', -54.3551, -70.5284, '', 1),
(13, 'region', 'Metropolitana de Santiago', -33.4417, -70.6541, '', 1),
(14, 'region', 'De los Ríos', -39.9086, -72.7034, '', 1),
(15, 'region', 'Arica y Parinacota', -18.5075, -69.6451, '', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `commune`
--
ALTER TABLE `commune`
  ADD PRIMARY KEY (`commune_id`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indices de la tabla `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
