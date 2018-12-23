-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 20 2018 г., 12:23
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `forproject`
--
CREATE DATABASE IF NOT EXISTS `forproject` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `forproject`;

-- --------------------------------------------------------

--
-- Структура таблицы `forclothes`
--

DROP TABLE IF EXISTS `forclothes`;
CREATE TABLE `forclothes` (
  `ID` int(11) NOT NULL,
  `Photo` varchar(255) COLLATE utf8_bin NOT NULL,
  `Price` int(11) NOT NULL,
  `Opisanie` varchar(255) COLLATE utf8_bin NOT NULL,
  `Type` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `forclothes`
--

INSERT INTO `forclothes` (`ID`, `Photo`, `Price`, `Opisanie`, `Type`) VALUES
(1, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwb3559aa7/images/zoom/F6A7PZGD76S_G1012_0.jpg?sw=650&sh=830&sm=fit', 110000, 'CADY DRESS', 'DRESS'),
(2, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwd2facbe5/images/zoom/F6C6SZHS1Z0_HKIRS_0.jpg?sw=650&sh=830&sm=fit', 490000, 'SILK CHIFFON LONG DRESS', 'DRESS'),
(3, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw36e3c4a7/images/zoom/F6C7NTHS104_HNX46_0.jpg?sw=650&sh=830&sm=fit', 490000, 'PRINTED SILK DRESS', 'DRESS'),
(4, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw75be144a/images/zoom/F71W9TGDL71_HAW86_0.jpg?sw=650&sh=830&sm=fit', 31000, 'PRINTED COTTON TOP', 'TOP'),
(5, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw2a4e3069/images/zoom/F7ZZFTFSAX3_HAW86_0.jpg?sw=650&sh=830&sm=fit', 65000, 'PRINTED SILK TOP', 'TOP'),
(6, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwdc30b7e4/images/zoom/F9E10TG7RGZ_N0000_0.jpg?sw=650&sh=830&sm=fit', 37000, 'PRINTED COTTON SWEATSHIRT', 'SWEATSHIRT'),
(7, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw78a69796/images/zoom/F9C55ZG7OMP_W0111_0.jpg?sw=650&sh=830&sm=fit', 110000, 'CADY SWEATSHIRT', 'SWEATSHIRT'),
(8, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw2c343b19/images/zoom/F9D31ZG7QKU_F0660_0.jpg?sw=650&sh=830&sm=fit', 65000, 'COTTON SWEATSHIRT WITH EMBROIDERY', 'SWEATSHIRT'),
(9, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw779fca67/images/zoom/F4BI2ZFP6L1_HIW97_0.jpg?sw=650&sh=830&sm=fit', 240000, 'PATCHWORK SKIRT', 'SKIRT'),
(10, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwdd0e3af6/images/zoom/F4BHYZFGMFH_W0111_0.jpg?sw=650&sh=830&sm=fit', 162500, 'COTTON SKIRT', 'SKIRT'),
(11, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwc4f25409/images/zoom/GK0TMTFJ1EZ_S8352_0.jpg?sw=650&sh=830&sm=fit', 217500, 'JACQUARD SILK MARTINI SUIT', 'SUIT'),
(12, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwd2d8129a/images/zoom/GK0RMTFJRC8_N0000_0.jpg?sw=650&sh=830&sm=fit', 172500, 'JACQUARD WOOL MARTINI SUIT', 'SUIT'),
(13, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw27d0e525/images/zoom/F8K74ZG7RYQ_N0000_0.jpg?sw=650&sh=830&sm=fit', 33000, 'PRINTED COTTON T-SHIRT', 'T-SHIRT'),
(14, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw35fd0e88/images/zoom/G2LY6TFUVG7_B0324_0.jpg?sw=650&sh=830&sm=fit', 125000, 'VELVET TUXEDO JACKET', 'JACKET'),
(15, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw507b28f0/images/zoom/G8IV0ZG7RJO_N0000_0.jpg?sw=650&sh=830&sm=fit', 110000, 'COTTON T-SHIRT WITH PATCHES', 'T-SHIRT'),
(16, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwb8218d00/images/zoom/G8IU0TFS74C_HNV93_0.jpg?sw=650&sh=830&sm=fit', 29000, 'POLO IN PRINTED COTTON PIQUÃ‰', 'POLO'),
(17, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw22f5270a/images/zoom/G8IV0TFU7EQ_W0800_0.jpg?sw=650&sh=830&sm=fit', 15000, 'COTTONCOTTON T-SHIRT WITH D&G PRINT ', 'T-SHIRT'),
(18, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw858c7f3e/images/zoom/G9MX7ZG7QYR_N0000_0.jpg?sw=650&sh=830&sm=fit', 110000, 'SWEATSHIRT WITH HOOD AND PATCH', 'SWEATSHIRT'),
(19, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwb279c61d/images/zoom/G9NC5ZFU7DU_N0000_0.jpg?sw=650&sh=830&sm=fit', 240000, 'COTTON SWEATSHIRT WITH EMBROIDERY', 'SWEATSHIRT');

-- --------------------------------------------------------

--
-- Структура таблицы `forinfo`
--

DROP TABLE IF EXISTS `forinfo`;
CREATE TABLE `forinfo` (
  `ID` int(11) NOT NULL,
  `Size` int(11) NOT NULL,
  `Image2` varchar(4505) COLLATE utf8_bin NOT NULL,
  `Image3` varchar(4505) COLLATE utf8_bin NOT NULL,
  `Information` mediumtext COLLATE utf8_bin NOT NULL,
  `Sostav` varchar(255) COLLATE utf8_bin NOT NULL,
  `Country` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `forinfo`
--

INSERT INTO `forinfo` (`ID`, `Size`, `Image2`, `Image3`, `Information`, `Sostav`, `Country`) VALUES
(1, 40, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw3fd1f4d7/images/zoom/F6A7PZGD76S_G1012_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwcaa03fab/images/zoom/F6A7PZGD76S_G1012_2.jpg?sw=650&sh=830&sm=fit', 'Sequined details and crystals brighten up dreamy garments and accessories. Dare to be stylish.\r\n\r\nCady sheath dress with hearts made from Swarovski crystals:\r\nâ€¢ Square neckline with shoulder straps\r\nâ€¢ Sleeveless\r\nâ€¢ Boned bodice\r\nâ€¢ Form fitting\r\nâ€¢ Lined\r\nâ€¢ Rear zipper and hook-and-eye fastening down the middle\r\nâ€¢ The piece measures 75 cm - 29.5 inches from the waist down on a size IT 40\r\nâ€¢ The model is 175 cm - 68.9 inches tall and wears a size IT 40 \r\nâ€¢ Made in Italy\r\nCode: F6A7PZGD76SG1012', 'External composition: 46% Acetate 51% Viscose 3% Spandex Internal composition: 94% Silk 6% Spandex', 'Italy'),
(2, 40, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwb2dc2b37/images/zoom/F6C6SZHS1Z0_HKIRS_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw6c39c020/images/zoom/F6C6SZHS1Z0_HKIRS_2.jpg?sw=650&sh=830&sm=fit', 'The unmistakable leopard print is refreshed in daring new versions and playful layering.\r\n\r\nLong dress in Leopard and Rose print silk chiffon embellished with roses embroidered in sequins and small cape:\r\nâ€¢ V-neck\r\nâ€¢ Sleeveless \r\nâ€¢ Basque\r\nâ€¢ With underskirt\r\nâ€¢ Back closure with zipper and small hook\r\nâ€¢ The garment measures 120 cm â€“ 47.2 inches from the waist in size 40 IT\r\nâ€¢ Model is 175 cm â€“ 68.9 inches tall and wears a size 40 IT \r\nâ€¢ Made in Italy\r\nCode: F6C6SZHS1Z0HKIRS', 'Composition: 100% Silk', 'Italy'),
(3, 44, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw91bb0504/images/zoom/F6C7NTHS104_HNX46_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwb15b1210/images/zoom/F6C7NTHS104_HNX46_2.jpg?sw=650&sh=830&sm=fit', 'A myriad of colored petals decorate the collectionâ€™s garments, the love story with floral prints continues.\r\n\r\nLong dress in silk organza with Rose print on a black background, embellished with asymmetrical ruffles:\r\nâ€¢ V-neck with small ruche\r\nâ€¢ Sleeveless\r\nâ€¢ With lingerie slip\r\nâ€¢ Back closure with zipper and small hook\r\nâ€¢ The garment measures 118 cm â€“ 46.4 inches from the waist in size 40 IT\r\nâ€¢ Model is 175 cm â€“ 68.9 inches tall and wears a size 40 IT \r\nâ€¢ Made in Italy\r\nCode: F6C7NTHS104HNX46', 'External composition: 100% Silk Internal composition: 96% Silk 4% Elastane', 'France'),
(4, 44, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw816c0b34/images/zoom/F71W9TGDL71_HAW86_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwda65c658/images/zoom/F71W9TGDL71_HAW86_2.jpg?sw=650&sh=830&sm=fit', 'A myriad of colored petals decorate the collectionâ€™s garments, the love story with floral prints continues.\r\n\r\nCotton poplin top with Hydrangeas and Flowers print on a white background:\r\nâ€¢ Round neckline with elastic\r\nâ€¢ Short sleeves with elastic and small ruffle\r\nâ€¢ No internal lining\r\nâ€¢ The garment measures 25 cm â€“ 9.4 inches from the collar topstitching in size 40 IT\r\nâ€¢ Model is 175 cm â€“ 68.9 inches tall and wears a size 40 IT \r\nâ€¢ Made in Italy\r\nCode: F71W9TGDL71HAW86\r\n', '100% Cotton', 'France'),
(5, 40, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw2d0431b1/images/zoom/F7ZZFTFSAX3_HAW86_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw4a8f4e59/images/zoom/F7ZZFTFSAX3_HAW86_2.jpg?sw=650&sh=830&sm=fit', 'A myriad of colored petals decorate the collectionâ€™s garments, the love story with floral prints continues.\r\n\r\nTop in stretch silk charmeuse with Hydrangea and Flowers print on a white background:\r\nâ€¢ Round neckline \r\nâ€¢ Sleeveless\r\nâ€¢ No internal lining\r\nâ€¢ Back closure with zipper and small hook\r\nâ€¢ The garment measures 65 cm â€“ 25.6 inches from the back-collar topstitching in size 40 IT\r\nâ€¢ Model is 175 cm â€“ 68.9 inches tall and wears a size 40 IT \r\nâ€¢ Made in Italy\r\nCode: F7ZZFTFSAX3HAW86', 'Composition: 100% Silk', 'France'),
(6, 44, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw6e2f3699/images/zoom/F9E10TG7RGZ_N0000_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw356a1572/images/zoom/F9E10TG7RGZ_N0000_2.jpg?sw=650&sh=830&sm=fit', 'Sportswear is reinvented and embellished with exquisite details, for a comfortable and modern look.\r\n\r\nCotton jersey short sweatshirt with hood and metallic Heart print:\r\nâ€¢ Long sleeves\r\nâ€¢ Oversized fit \r\nâ€¢ Model is 175 cm â€“ 68.9 inches tall and wears a size 40 IT \r\nâ€¢ Made in Italy\r\nCode: F9E10TG7RGZN0000', '100% Cotton', 'England'),
(7, 44, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw5a96c92e/images/zoom/F9C55ZG7OMP_W0111_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwf49fe5a4/images/zoom/F9C55ZG7OMP_W0111_2.jpg?sw=650&sh=830&sm=fit', 'The Dolce&Gabbana daywear collection offers everything you need for any occasion.\r\n\r\nCady zip-up sweatshirt with floral embroidery and a Dolce&Gabbana branded band:\r\nâ€¢ High neck and fine-rib trims\r\nâ€¢ 3/4 sleeves\r\nâ€¢ Embroidered rose on front\r\nâ€¢ Branded plate on the back with small resin roses\r\nâ€¢ Zipped pockets with branded sliders\r\nâ€¢ Unlined\r\nâ€¢ Front zipper fastening\r\nâ€¢ The model is 175 cm/ 5ft7\" tall and wears a size IT 40\r\nâ€¢ Made in Italy\r\nCode: F9C55ZG7OMPW0111', '100% Cotton', 'Italy'),
(8, 44, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwb4a30878/images/zoom/F9D31ZG7QKU_F0660_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw206bc60e/images/zoom/F9D31ZG7QKU_F0660_2.jpg?sw=650&sh=830&sm=fit', 'Hot off the runway; the Fashion Devotion collection.\r\n\r\nCrew neck sweatshirt in cotton velvet embellished with angel patch:\r\nâ€¢ Oversized fit\r\nâ€¢ Long sleeves\r\nâ€¢ Ribbed edging \r\nâ€¢ Internal lining in stretch silk satin\r\nâ€¢ Model is 175 cm â€“ 68.9 inches tall and wears a size IT 40 \r\nâ€¢ Made in Italy', '100% Cotton', 'Italy'),
(9, 44, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwf76fa77f/images/zoom/F4BI2ZFP6L1_HIW97_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwd67803ab/images/zoom/F4BI2ZFP6L1_HIW97_3.jpg?sw=650&sh=830&sm=fit', 'Military style, streetwear and sensual black lace: the Street Sicily collection promises to be the must-have of the season. \r\n\r\nShort patchwork skirt embellished with Swarovski crystal embroideries:\r\nâ€¢ High-waisted\r\nâ€¢ Front closure with zipper and metal button\r\nâ€¢ Internal lining in Leopard print stretch satin\r\nâ€¢ The garment measures 45 cm â€“ 18 inches from the waist in size 40 IT\r\nâ€¢ Model is 175 cm â€“ 68.9 inches tall and wears a size 40 IT\r\nâ€¢ Made in Italy\r\nCode: F4BI2ZFP6L1HIW97', 'External composition: 100% Cotton Internal composition: 87% Polyester 13% Cotton', 'Japan'),
(10, 44, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwc9386462/images/zoom/F4BHYZFGMFH_W0111_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw3b5f3839/images/zoom/F4BHYZFGMFH_W0111_2.jpg?sw=650&sh=830&sm=fit', 'Inspired by the trousseau of young Sicilian brides in the 1900s, the collection expresses the elegance and the artistry of precious handmade embroideries and strictly white seductive laces.\r\n\r\nLong flared skirt in cotton poplin embellished with intaglio embroidery:\r\nâ€¢ High-waisted\r\nâ€¢ No internal lining\r\nâ€¢ Back closure with zipper and snap buttons \r\nâ€¢ The garment measures 85 cm â€“ 33.4 inches from the waist in size 40 IT\r\nâ€¢ Model is 175 cm â€“ 68.9 inches tall and wears a size 40 IT \r\nâ€¢ Made in Italy\r\nCode: F4BHYZFGMFHW0111\r\n', '100% Cotton', 'Germany'),
(11, 44, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwc5f17d37/images/zoom/GK0TMTFJ1EZ_S8352_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwdbee2af7/images/zoom/GK0TMTFJ1EZ_S8352_2.jpg?sw=650&sh=830&sm=fit', 'Luxury with refined craftsmanship takes shape in the Dolce&Gabbana Menâ€™s collections with impeccable fit and elegant aesthetics, perfect for a man who wants to stand out at every occasion.\r\n\r\nThree-piece suit in rose jacquard silk:\r\nâ€¢ Martini fit in regular fit\r\nâ€¢ Blazer with shawl lapel, pockets with flap and small pocket\r\nâ€¢ Single breasted with single button closure and internal lining\r\nâ€¢ Round neckline vest with five buttons\r\nâ€¢ Pants with front slant pockets and back welt pockets with button\r\nâ€¢ The blazer measures 73.5 cm â€“ 29 inches from the back-collar top-stitching in size 48 IT \r\nâ€¢ The inseam measures 17.5 cm â€“ 6.9 inches from the center back waistband and the hem is 18 cm â€“7.1 inches long in size 48 IT\r\nâ€¢ Model is 188 cm â€“ 6,2 inches tall and is wearing size 48 IT\r\nâ€¢ Made in Italy\r\nCode: GK0TMTFJ1EZS8352', 'External composition: 100% Silk Internal composition: 90% Silk 10% Viscose', 'England'),
(12, 0, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwbacad442/images/zoom/GK0RMTFJRC8_N0000_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwaa8a3594/images/zoom/GK0RMTFJRC8_N0000_2.jpg?sw=650&sh=830&sm=fit', 'Luxury with refined craftsmanship takes shape in the Dolce&Gabbana Menâ€™s collections with impeccable fit and elegant aesthetics, perfect for a man who wants to stand out at every occasion.\r\n\r\nStretch jacquard wool two-piece suit:\r\nâ€¢ Martini fit in regular fit\r\nâ€¢ Blazer with shawl lapel, pockets with flap and small pocket\r\nâ€¢ Single breasted with double-button closure and internal lining\r\nâ€¢ Pants with french front pockets and back welt pockets with button\r\nâ€¢ The blazer measures 73.5 cm â€“ 29 inches from the back-collar top-stitching in size 48 IT \r\nâ€¢ The inseam measures 17.5 cm â€“ 6.9 inches from the center back waistband and the hem is 18 cm â€“7.1 inches long in size 48 IT\r\nâ€¢ Made in Italy\r\nCode: GK0RMTFJRC8N0000', '100% Cotton', 'England'),
(13, 44, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwcce42b5c/images/zoom/F8K74ZG7RYQ_N0000_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw3db20951/images/zoom/F8K74ZG7RYQ_N0000_2.jpg?sw=650&sh=830&sm=fit', 'Military style, streetwear and sensual black lace: the Street Sicily collection promises to be the must-have of the season. \r\n\r\nFASHION EXPLOSION cotton jersey T-shirt with colorful label patches:\r\nâ€¢ Round neckline\r\nâ€¢ Short sleeves\r\nâ€¢ Oversized fit \r\nâ€¢ Model is 175 cm â€“ 68.9 inches tall and wears a size 40 IT \r\nâ€¢ Made in Italy\r\nCode: F8K74ZG7RYQN0000', '100% Cotton', 'Italy'),
(14, 48, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw9e48834d/images/zoom/G2LY6TFUVG7_B0324_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw26530abf/images/zoom/G2LY6TFUVG7_B0324_2.jpg?sw=650&sh=830&sm=fit', 'Luxury with refined craftsmanship takes shape in the Dolce&Gabbana Menâ€™s collections with impeccable fit and elegant aesthetics, perfect for a man who wants to stand out at every occasion.\r\n\r\nSingle-breasted Martini tuxedo blazer in velvet:\r\nâ€¢ Regular fit\r\nâ€¢ Peak lapels in satin\r\nâ€¢ Front single-button closure\r\nâ€¢ Two front pockets with flap and pocket\r\nâ€¢ Buttons on the cuff\r\nâ€¢ Internal lining\r\nâ€¢ The garment measures 73.5 cm â€“ 28.9 inches from the back-collar top-stitching in size 48 IT\r\nâ€¢ Model is 188 cm â€“ 6,2 inches tall and is wearing size 48 IT\r\nâ€¢ Made in Italy\r\nCode: G2LY6TFUVG7B0324', 'External composition: 77% Cotton 18% Silk 5% Polyester Internal composition: 100% Silk', 'France'),
(15, 49000, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwcb7488ea/images/zoom/G8IV0ZG7RJO_N0000_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwa7930849/images/zoom/G8IV0ZG7RJO_N0000_2.jpg?sw=650&sh=830&sm=fit', 'Luxury with a leisure aesthetic takes shape in Dolce&Gabbana collections, perfect for the man who wants to stand out on any occasion.\r\n\r\nCotton jersey T-shirt with patches:\r\nâ€¢ Regular fit\r\nâ€¢ Short sleeves\r\nâ€¢ Round neckline with logo on the label\r\nâ€¢ The garment measures 72 cm â€“ 28.3 inches from the back-collar top-stitching in size 48 IT\r\nâ€¢ Made in Italy\r\nCode: G8IV0ZG7RJON000', '100% Cotton', 'Italy'),
(16, 48, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw91b849be/images/zoom/G8IU0TFS74C_HNV93_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwb8001dac/images/zoom/G8IU0TFS74C_HNV93_2.jpg?sw=650&sh=830&sm=fit', 'Regal crowns decorate the seasonâ€™s new uniforms.\r\n\r\nPolo in printed cotton piquÃ©:\r\nâ€¢ Regular fit\r\nâ€¢ Short sleeves\r\nâ€¢ Button closure\r\nâ€¢ The garment measures 72 cm â€“ 28.3 inches from the back-collar top-stitching in size 48 IT\r\nâ€¢ Made in Italy\r\nCode: G8IU0TFS74CHNV93', '100% Cotton', 'Italy'),
(17, 48, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwd745867e/images/zoom/G8IV0TFU7EQ_W0800_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw5718a76a/images/zoom/G8IV0TFU7EQ_W0800_2.jpg?sw=650&sh=830&sm=fit', 'Sportswear is reinvented and embellished with exquisite details, for a comfortable and modern look. T-shirt in cotton jersey with D&G print: â€¢ Regular fit â€¢ Short sleeves â€¢ Round neckline with logo on the label â€¢ The garment measures 72 cm â€“ 28.3 inches from the back-collar top-stitching in size 48 IT â€¢ Made in Italy Code: G8IV0TFU7EQW0800 ', '100% Cotton ', 'Italy'),
(18, 48, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw247ade86/images/zoom/G9MX7ZG7QYR_N0000_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw2d296bbc/images/zoom/G9MX7ZG7QYR_N0000_2.jpg?sw=650&sh=830&sm=fit', 'Reinvented sportswear enriched with precious details for a comfortable and contemporary look.\r\n\r\nSweatshirt with hood and patch:\r\nâ€¢ Oversized fit\r\nâ€¢ Hood with branded drawstring and ties\r\nâ€¢ Hem and cuffs in elastic knit\r\nâ€¢ Lined\r\nâ€¢ Item measures 84 cm - 33 inches from the back of the neck in a size 48 IT\r\nâ€¢ Made in Italy\r\nCode: G9MX7ZG7QYRN0000', '100% Cotton', 'Italy'),
(19, 50, 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwb25c2c78/images/zoom/G9NC5ZFU7DU_N0000_1.jpg?sw=650&sh=830&sm=fit', 'https://store.dolcegabbana.com/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw4cf4a3ab/images/zoom/G9NC5ZFU7DU_N0000_2.jpg?sw=650&sh=830&sm=fit', 'Sportswear is reinvented and embellished with exquisite details, for a comfortable and modern look.\r\n\r\nCrew neck sweatshirt in cotton with Dolce&Gabbana embroidery:\r\nâ€¢ Regular fit\r\nâ€¢ Collar, hem and cuffs in stretch knit\r\nâ€¢ The garment measures 69 cm â€“ 27.2 inches from the back-collar top-stitching in size 48 IT\r\nâ€¢ Made in Italy', '100% Cotton', 'England');

-- --------------------------------------------------------

--
-- Структура таблицы `genderid`
--

DROP TABLE IF EXISTS `genderid`;
CREATE TABLE `genderid` (
  `ID` int(11) NOT NULL,
  `Gender` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `genderid`
--

INSERT INTO `genderid` (`ID`, `Gender`) VALUES
(1, 'Woman'),
(2, 'Woman'),
(3, 'Woman'),
(4, 'Woman'),
(5, 'Woman'),
(6, 'Woman'),
(7, 'Woman'),
(8, 'Woman'),
(9, 'Woman'),
(10, 'Woman'),
(11, 'Man'),
(12, 'Man'),
(13, 'Woman'),
(14, 'Man'),
(15, 'Man'),
(16, 'Man'),
(17, 'Man'),
(18, 'Man'),
(19, 'Man');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) COLLATE utf8_bin NOT NULL,
  `Password` varchar(255) COLLATE utf8_bin NOT NULL,
  `Email` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Email`) VALUES
(1, 'admin', 'admin', 'admin@mail.com'),
(2, 'Elnur', 'Elnur', 'elnur@mail.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `forclothes`
--
ALTER TABLE `forclothes`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Индексы таблицы `forinfo`
--
ALTER TABLE `forinfo`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `genderid`
--
ALTER TABLE `genderid`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `forclothes`
--
ALTER TABLE `forclothes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `forinfo`
--
ALTER TABLE `forinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `genderid`
--
ALTER TABLE `genderid`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
