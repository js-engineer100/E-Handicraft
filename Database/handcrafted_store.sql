-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2022 at 09:49 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handcrafted_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'adm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `fname`, `lname`, `email`, `password`, `image`, `type`) VALUES
(1, 'super', 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', NULL, 'adm');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `idBrand` int(11) NOT NULL,
  `brandname` varchar(45) DEFAULT NULL,
  `discription` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`idBrand`, `brandname`, `discription`) VALUES
(1, 'Nike', 'Nike is USA brand'),
(2, 'Puma', 'T Shirt is main'),
(3, 'Tiger', 'Tiger'),
(4, 'Polo', 'Denim'),
(5, 'Lacoste', 'croc'),
(6, 'Reborn', 'Local Brand'),
(7, 'Emerald', 'Local premium');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idCustomer` int(11) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'cus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idCustomer`, `fname`, `lname`, `email`, `password`, `contact`, `address`, `type`) VALUES
(9, 'YUGESH', 'VERMA', 'yugesh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9165063741', 'D8/23 GREEN VALLEY SMRITI NAGAR BHILAI', 'cus');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `imgid` int(11) NOT NULL,
  `path` varchar(950) DEFAULT NULL,
  `Product_idProduct` int(11) NOT NULL,
  `Product_Brand_idBrand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`imgid`, `path`, `Product_idProduct`, `Product_Brand_idBrand`) VALUES
(2, 'el-002-019_a_5_1800x1800.jpg', 35, 1),
(3, 'el-002-012_a_4_1024x1024_2x_1_1800x1800.jpg', 36, 1),
(4, 'el-002-073_a_1_1800x1800.jpg', 37, 1),
(5, 'el-002-055_a_1800x1800.jpg', 38, 1),
(7, 'EL-002-151_A_1800x1800.jpg', 39, 1),
(12, 'el-002-045_a_6_1800x1800.jpg', 40, 1),
(15, 'EL-002-101_A_14f0d8ef-6649-4b06-9c31-388d7dd28e69_1800x1800.jpg', 41, 1),
(16, 'EL-002-158_A_1800x1800.jpg', 42, 1),
(17, 'el-002-092_a_1800x1800.jpg', 43, 1),
(18, 'EL-002-125_A_1800x1800.jpg', 44, 1),
(19, 'el-005-490_a_3_1800x1800.jpg', 45, 1),
(20, 'EL-005-620_A_1800x1800.jpg', 46, 1),
(21, 'EL-007-001_A_1800x1800.jpg', 47, 1),
(22, 'el-025-006_a_2_720x.jpg', 48, 1),
(23, '48_1800x1800.png', 49, 1),
(24, 'el-005-471_a_1800x1800.jpg', 50, 1),
(25, 'el-003-076_a_3_1800x1800.jpg', 51, 1),
(26, 'el-008-024_a_1800x1800.jpg', 52, 1),
(27, 'el-005-462_a_1800x1800.jpg', 53, 1),
(28, 'el-008-002_a_3_1800x1800.jpg', 54, 1),
(29, 'EL-031-039_A_1800x1800.jpg', 55, 1),
(30, 'EL-031-011_A_1800x1800.jpg', 56, 1),
(31, 'EL-031-025_A_1800x1800.jpg', 57, 1),
(32, 'EL-031-014_A_1800x1800.jpg', 58, 1),
(33, 'morning-dew-silver-handmade-iolite-stone-necklace_1_a770ba82-f56f-4f99-8c34-003ff795eb47_1800x1800.jpg', 59, 1),
(34, 'EL-030-001_A_1800x1800.jpg', 60, 1),
(35, 'EL-030-046_A_1800x1800.jpg', 61, 1),
(36, 'EL-030-038_A_1800x1800.jpg', 62, 1),
(37, 'EL-030-030_A_1800x1800.jpg', 63, 1),
(38, 'EL-030-005_A_1800x1800.jpg', 64, 1);

-- --------------------------------------------------------

--
-- Table structure for table `massage`
--

CREATE TABLE `massage` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderid` varchar(100) NOT NULL,
  `deladdress` varchar(500) NOT NULL,
  `deladdress2` varchar(250) NOT NULL,
  `town` varchar(100) NOT NULL,
  `zip` int(25) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `cid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'In Progress',
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`orderid`, `deladdress`, `deladdress2`, `town`, `zip`, `contact`, `payment`, `cid`, `status`, `odate`) VALUES
('OD8811TX21365220220930', 'D8/23 GREEN VALLEY SMRITI NAGAR BHILAI', 'dada', 'BHILAI', 490020, '+916263056779', 'Cash On Delivery', 9, 'Shipped', '2022-09-30 19:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idProduct` int(11) NOT NULL,
  `title` text,
  `category` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `description` longtext,
  `price` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `Brand_idBrand` int(11) NOT NULL,
  `ava` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idProduct`, `title`, `category`, `color`, `description`, `price`, `size`, `Brand_idBrand`, `ava`) VALUES
(34, '8 Terracotta Warli Handpainted Pots With Shee', 'Wall', 'White', '<ul>\r\n	<li>COLOUR: SHELF: Brown, POTS: Multicoloured</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: SHELF: Sheesham Wood, POTS: Terracotta</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Warli Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The multicolured handpainted warli assorted set of 8 pots have been uniquely placed on a sheesham wooden frame to add color and life to your wall. The unique shapes of the pots have also been kept into consideration while placing them in the frame.</p>', ' 2,949.00', '', 1, 1),
(35, 'Gayatri Mantra Terracotta Wall Hanging', 'Wall', 'White', '<ul>\r\n	<li>COLOUR: Maroon &amp; White</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Terracotta</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Handcrafted and Hand-painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>Hang this ethnic and beautiful wall hanging with Gayatri mantra written on it at your entrance. This will bring posititve vibes to your home or in the room wherever it is hung. Ghunghroo has been put at the bottom to enhance the look of this masterpiece. The piece has maroon base with gayatri mantra written in white.</p>', '849.00', '', 1, 1),
(36, 'Dhokra Work And Warli Hanpainted Wall Decor I', 'Wall', 'White', '<ul>\r\n	<li>COLOUR: BORDER: Red, DHOKRA FIGURINES: Golden</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: BASE: Mango Wood, DHOKRA FIGURINES: Brass</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Dhokra &amp; Warli Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>This beautiful set of wall d&eacute;cor has been crafted in Dhokra art. The wall d&eacute;cor has been framed in sheesham which is handpainted with warli motives giving it a complete ethnic look.</p>', '2,799.00', '', 1, 1),
(37, 'Sunset Orange & Ocean Blue Handpainted Warli ', 'Wall', 'White', '<ul>\r\n	<li>COLOUR: Sunset Orange &amp; Ocean Blue</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: BORDER: Acrylic, BASE: MDF, DHOKRA FIGURINES: Brass</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>This Sunset Orange &amp; Ocean Blue Tray from our Sunset Orange &amp; Ocean Blue Collection is adorned with a fusion of two artforms, Dhokra Art from West Bengal &amp; Warli Art from Maharashtra. The Tray is elegant &amp; square in shape along with the Dhokra Figurine &amp; dolphin handles carefully handcrafted in Brass with Warli Artwork. It is beautifully sculpted in Mango Wood &amp; handpainted in contrasting colours of Soothing Sunset Orange &amp; Calming Ocean Blue.</p>', '', '', 1, 1),
(38, 'Wooden Wall Shelves With Handpainted Terracot', 'Wall', 'White', '<ul>\r\n	<li>MATERIAL:</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Warli Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>This classy wall shelf has been made to add life to your wall. Similarly has 3 handpainted terracotta pots on this rack. Alongside the Warli Art, ghungroos have been added at the base of the rack. The wooden shelf adds a class and sheen to the wall or the divider.</p>\r\n\r\n<p><strong>FEATURES:</strong><br />\r\n<br />\r\na) Can be hung on the wall to display any range of d&eacut', '', '', 1, 1),
(39, 'Flowery Owl" Handmade & Hand-painted Garden D', 'Wall', 'White', '<ul>\r\n	<li>COLOUR: WALL HANGING: Multicoloured, BELL: Red</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Terracotta</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>Amidst the wheat, amidst the soft golden crops, moves the unseen wind and rises the hot red sun. The rooster crows starting the day at dawn and torch-bearing the daily chores at the farmyard for other creatures of the farm. The early birds come out of their nests to get their share in th', '799.00', '', 1, 1),
(40, 'Gayatri Mantra Terracotta Wall Hanging', 'Wall', 'White', '<ul>\r\n	<li>COLOUR: Golden &amp; White</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Terracotta</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Handcrafted and Hand-painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>Hang this ethnic and beautiful wall hanging with Gayatri mantra written on it at your entrance. This will bring posititve vibes to your home or in the room wherever it is hung. Ghunghroo has been put at the bottom to enhance the look of this masterpiece. The piece has white base with gayatri mantra written in golden.</p>', '230', '', 1, 1),
(41, 'Rustic Hexagons Antique Finish Nested Wall Shelves In Mango Wood (Set of 3)', 'Wall', 'White', '<ul>\r\n	<li>COLOUR: Teal Blue</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Mango Wood</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Handmade and Hand-painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>When the journey becomes more monumental than the destination, you know you have been embraced by the land where noble glory and cultures meet on a canvas of colours against the backdrop of the warm sand and the welcoming hearts; the land of the kings, Rajasthan.</p>', '230', '', 1, 1),
(42, 'Madhubani Bride Hand Carved Block Wall DÃ©cor In Sheesham Wood', 'Wall', 'White', '<ul>\r\n	<li>COLOUR: Medallion Yellow &amp; Brown</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Sheesham Wood</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Carved</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The ancient art of using wooden blocks to create imprints on textile, originated in Japan and China, further coming to the the exotic and culturally rich land of India. Motifs are carefully engraved onto flat and smooth blocks of wood by skilful hands, and these blocks, once ready for Printing, are dipped in colourful hues of pigments and then pressed upon cloth to create an imprint.</p>', '230', '', 1, 1),
(43, 'Terracotta Twin Owl Pot-Faces With Wooden Wall Shelves', 'Wall', 'White', '<ul>\r\n	<li>COLOUR: SHELF: Brown &amp; Yellow, POT: Black &amp; Yellow</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Terracotta</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Handmade &amp; Hand-Painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>Thinking back about the state of West Bengal, one reminisces of a place full of wild flora and fauna, the most peculiar of animal-bird diversity and the much affable culture that lights the streets of the cities. My first memories of the owls are really dim. The only way to realise their exuberance is by stroking them on a piece of paper. Manohar Babu,&nbsp;an artisan in the city of West Bengal, by the means of the new collection wants to takes us through his daring times in the forest of Sunderbans, times that were perplexed, yet mystique, and superfluous with the calamity of the constant rains.</p>', '250', '', 1, 1),
(44, 'Chirping Songbir Handmade & Hand-Painted Garden Decorative Wall Hanging In Terracotta', 'Wall', 'White', '<ul>\r\n	<li>COLOUR: Multicoloured</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Terracotta</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>A cheerful cow treads across a meadow, consuming dewy grass for breakfast as the delicate crimson sun dances over the horizon. The wise owls head back to their nests, as their nocturnal routine comes to an end. A rooster crows at the top of his voice, waking up everyone on the farm with an alarm-like voice. A hen walks out, followed by a trail of her chicks, ready to find grains to peck on.&nbsp;</p>', '250', '', 1, 1),
(45, 'The Flowy Flora Mughal Hand-Painted Ink Blue Decorative Ceramic Oil Bottle (1000 ML)', 'Gift', 'White', '<ul>\r\n	<li>COLOUR: Ink Blue &amp; White</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Ceramic</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>Imagine the royal Mughal setup, the big tombs, the great celebrations and the enigmatic crowd. Imagine the rivers, the royal emperors and the flowers.<br />\r\nThe Mughal Gardens&nbsp;is a collection of homeware products, detailed with intricate blue ink that is hand painted on the smooth ceramic surface. Although rectilinear in nature, the tranquil and placid architecture of the Mughal Gardens makes for the inspiration behind the Artist&#39;s work, and the artist himself has traveled to the historically rich cities of the Mughals. From New Delhi in India to Lahore in Pakistan, Shahnawaz likes to call himself a complete cosmopolitan and an art visionary.</p>', '678', '', 1, 1),
(46, 'Leaf Sips Hand-Painted & Handglazed Studio Pottery Coffee & Tea Mugs In Ceramic (Set of 2)', 'Gift', 'White', '<ul>\r\n	<li>COLOUR: Sage Green &amp; Cocoa Brown</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Ceramic</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Glazed</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The Leaf Sips&nbsp;is a set of tableware comprising of 2 mugs made in ceramic with a volume of 400 ML each. Handmade in dual hand-glazed studio pottery with so much of love by our artisans, this tableware comes with matte finish on the outside along with beautiful hand-painted patterns of leaves and glazed finish on the inside and edges. Made available in Sage-Green and Cocoa-Brown colour, The Leaf Sips &nbsp;is an ideal set of home product for having tea and coffee with your loved ones which can also be used as a milk mug and can help in enhancing the vibes of your abode by introducing rich feels of traditional beauty and flavour.</p>', ' 699.00', '', 1, 1),
(47, 'Terracotta Warli Handpainted Pen Stand Knitted Red', 'Gift', 'White', '<ul>\r\n	<li>MATERIAL: Terracotta</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Warli Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>A very elegantly handcrafted terracotta earthen pen stand in red, has been beautifully handpainted with WARLI art motifs and the yellow border completes the ethinic look. Jute has been used across the pen stand to enhance it&#39;s looks. It can be kept in your study or writing table with a beautiful pen to enhance the look.</p>', '525.00', '', 1, 1),
(48, 'Meenakari Royal Blue Swan Set Handenamelled In Metal SKU: EL-025-006', 'Gift', 'White', '<ul>\r\n	<li>COLOUR: Royal Blue</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Terracotta</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Meenakari Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>These beautiful Traditional combo of Swan from our Meenakari Collection&nbsp;has been deligently designed with excellent details and is decorated with finely polished jewellery clothing by fusing brilliant and rich colours over it. The masterpiece has been uniquely adorned with rich Meenakari work which makes it Elegant and the Royal Blue colour brings a gorgeous touch to it. It has been handcrafted in the shape of a Swan with a thin long neck which makes it look real. It is an appealing addition and will be greatly appreciated by your guests.</p>', '799.00', '', 1, 1),
(49, 'Ceramic Gas Stove Brewing Aroma Diffuser (Studio Pottery)', 'Gift', 'White', '<ul>\r\n	<li>MATERIAL: Ceramic</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Studio Pottery</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The fresh lukewarm sunlight peeps through the cracks in the curtains and the sound of waves lashing across the shore rocks flows in like a melody; the start to a cosy comfortable Sunday morning at the coast. The first curtains pulled open, the first window unlatched, the first cool-salty breeze caressing the suddenly over lit sea house. A thriving green cover, unending spans of the blue sea touching the blue skies at the horizon; the red sails of a boat specked in the distance. A sea facing patio with a warm little table signalling some morning chai and breakfast.</p>', ' 1,349.00', '', 1, 1),
(50, 'Two Dips Of Hut Hand-Painted Ceramic Chutney & Pickle Bowls (Set Of 2)', 'Gift', 'White', '<ul>\r\n	<li>COLOUR: Multicolored</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Ceramic</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The hut collection is a representation of an old and rustic village in South India, hand-painted by Victor &amp; his team residing in Puducherry. The spread of huts, with its picturesque triangular shapes and equally symmetrical windows, captures the many views of a serene Puducherry village. The constant chitter-chatter of the crowded market, with cacophonies of shouting vendors, and the primitive tree near the tranquil house are both embellished with birds in the sky and green fields on the land. The Bright red strokes of yellow and green sun drops and makes an abrasive patter on the surface of clay. The paintings on these designs remind us of the simplicity of village life and the placid vibes of the dreamy moon.</p>', '799.00', '', 1, 1),
(51, '10 Inch Modern Frosted Glass Lamp In Sheesham Wood', 'Gift', 'White', '<ul>\r\n	<li>COLOUR: Brown</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Sheesham Wood &amp; Frosted Glass</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Handcrafted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The golden rays of the summer sun falling softly through the gaps in the leaves, never fails to fill us with a sense of belonging to this beautiful season. Capturing the simplicity of this season, this table lamp has been handcrafted in a minimalistic steam-beech wood frame with frosted glass to add a mellow aura of golden summers to your favourite spaces. The compact design, simple utility and the classic wood finish reminds us that the beauty of summer is rooted in nature and with this nostalgic connect, it brings a rooted ethnic glow to your homes.</p>', '678', '', 1, 1),
(52, 'Ceramic Oil Burner In White', 'Gift', 'White', '<ul>\r\n	<li>MATERIAL: Ceramic</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Glazed</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>This fantastic ceramic oil burner is crafted in the shape of Shankh. It comes with a small ceramic cavity to put Oil for burning. The tea light is placed below it.</p>', '799.00', '', 1, 1),
(53, 'The Hut Family Hand-Painted Ceramic Quarter Plates (7 Inch, Set Of 6)', 'Gift', 'White', '<ul>\r\n	<li>COLOUR: Multicolored</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Ceramic</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The hut collection is a representation of an old and rustic village in South India, hand-painted by Victor &amp; his team residing in Puducherry. The spread of huts, with its picturesque triangular shapes and equally symmetrical windows, captures the many views of a serene Puducherry village. The constant chitter-chatter of the crowded market, with cacophonies of shouting vendors, and the primitive tree near the tranquil house are both embellished with birds in the sky and green fields on the land. The Bright red strokes of yellow and green sun drops and makes an abrasive patter on the surface of clay. The paintings on these designs remind us of the simplicity of village life and the placid vibes of the dreamy moon.</p>', '799.00', '', 1, 1),
(54, 'Terracotta Handpainted Aroma Diffusor In Red', 'Gift', 'White', '<ul>\r\n	<li>COLOUR: Red</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Terracotta</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>This bright red hand painted terracotta aroma oil diffusor is the latest trend of every household for a long lasting scented effect. The light emission from this tea light comes out in a floral design due to its cutwork. Beautiful handpainting has been done on the diffuser to accentuate it&#39;s beauty.</p>', '230', '', 1, 1),
(55, 'Tribal Dhokra Lady Bohemian Brass Necklace Handmade In Dhokra Art (Brass, Wood, Matinee)', 'Jewellery', 'White', '<ul>\r\n	<li>COLOUR: Multicoloured</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: PENDANT: Brass &amp; Teak Wood, BEADS: Resin &amp; Wood</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Dhokra Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The Indus Valley Civilization has left the country with great contributions in the area of both ethnic and cultural aspects. One such influence in the field of stonework and artwork is the skill of the Dhokra casting. Reigning from the Harappan culture, this art dates back 5000 years by the stunning metalsmiths work and has survived the test of time. Dusting the soils of West Bengal, Bihar and Orissa, the indigenous production methods of the tribals&#39; and the nomadic craftsmen reflects the inherent expression of their simplicity. As intricate and detailed as the art form is, its place of production is usually quite humble, and it is the inherited talent, dedicated efforts and the sheer simplicity of the artisans that have kept the rustic art alive so far.</p>', '1,125.00', '', 1, 1),
(56, 'Tribal Lady Strands Bohemian Brass Necklace Handcrafted In Dhokra Art (Matinee)', 'Jewellery', 'White', '<ul>\r\n	<li>COLOUR: DHOKRA FIGURINES: Golden, BEADS: Multicoloured</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: DHOKRA PENDANT: Brass, BEADS: Wood &amp; Ceramic</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Dh</li>\r\n</ul>\r\n\r\n<p>The Indus Valley Civilization has left the country with great contributions in the area of both ethnic and cultural aspects. One such influence in the field of stonework and artwork is the skill of the Dhokra casting. Reigning from the Harappan culture, this art dates back 5000 years by the stunning metalsmiths work and has survived the test of time. Dusting the soils of West Bengal, Bihar and Orissa, the indigenous production methods of the tribals&#39; and the nomadic craftsmen reflects the inherent expression of their simplicity. As intricate and detailed as the art form is, its place of production is usually quite humble, and it is the inherited talent, dedicated efforts and the sheer simplicity of the artisans that have kept the rustic art alive so far.</p>', '1,175.00', '', 1, 1),
(57, 'Tribal Lady Faces Bohemian Brass Necklace Handcrafted In Dhokra Art (Bib)', 'Jewellery', 'White', '<ul>\r\n	<li>COLOUR: DHOKRA FIGURINES: Golden, BEADS: Multicoloured&quot;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: DHOKRA FIGURINES: Brass, BEADS: Resin</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Dhokra Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The Indus Valley Civilization has left the country with great contributions in the area of both ethnic and cultural aspects. One such influence in the field of stonework and artwork is the skill of the Dhokra casting. Reigning from the Harappan culture, this art dates back 5000 years by the stunning metalsmiths work and has survived the test of time. Dusting the soils of West Bengal, Bihar and Orissa, the indigenous production methods of the tribals&#39; and the nomadic craftsmen reflects the inherent expression of their simplicity. As intricate and detailed as the art form is, its place of production is usually quite humble, and it is the inherited talent, dedicated efforts and the sheer simplicity of the artisans that have kept the rustic art alive so far.</p>', '1,249.00', '', 1, 1),
(58, 'Tribal Woman Beaded Bohemian Brass Necklace Handcrafted In Dhokra Art (Bib)', 'Jewellery', 'White', '<ul>\r\n	<li>COLOUR: DHOKRA PENDANT: Golden, BEADS: Maroon</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: DHOKRA PENDANT: Brass, BEADS: Resin, THREAD: Cotton</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Dhokra Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The Indus Valley Civilization has left the country with great contributions in the area of both ethnic and cultural aspects. One such influence in the field of stonework and artwork is the skill of the Dhokra casting. Reigning from the Harappan culture, this art dates back 5000 years by the stunning metalsmiths work and has survived the test of time. Dusting the soils of West Bengal, Bihar and Orissa, the indigenous production methods of the tribals&#39; and the nomadic craftsmen reflects the inherent expression of their simplicity. As intricate and detailed as the art form is, its place of production is usually quite humble, and it is the inherited talent, dedicated efforts and the sheer simplicity of the artisans that have kept the rustic art alive so far.</p>', '799.00', '', 1, 1),
(59, 'Morning Dew Silver Handmade Iolite Stone Necklace', 'Jewellery', 'White', '<ul>\r\n	<li>COLOUR: Silver and Blue</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: 92.5 Sterling Silver and Iolite</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Carved</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The exquisite Morning Dew silver necklace has been handmade by skilled Indian artisans from 92.5 Sterling Silver and iolite stone. The one-of-a-kind square-shaped pendant adorns a beautiful and dainty oval iolite stone, strung elegantly on a thin silver chain. The pendant base has stripes etched onto it around the oval stone, giving it the appearance of an eye and eyelashes. The beautiful hue of the Peridot stone adds to its elegance. It is the perfect minimalistic daily wear option for both Indian and Western outfits and can easily elevate any look. This piece of jewellery is a modern take on the traditional jewellery designs for a contemporary appeal that is elegant in its simplicity. It exudes a simple charm that makes it a stunning addition to any jewellery collection.</p>', '799.00', '', 1, 1),
(60, 'Tribal Dancing Pair Bohemian Brass Earrings Handcrafted In Dhokra Art', 'Jewellery', 'White', '<ul>\r\n	<li>COLOUR: Golden</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Brass</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Dhokra Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The Indus Valley Civilization has left the country with great contributions in the area of both ethnic and cultural aspects. One such influence in the field of stonework and artwork is the skill of the Dhokra casting. Reigning from the Harappan culture, this art dates back 5000 years by the stunning metalsmiths work and has survived the test of time. Dusting the soils of West Bengal, Bihar and Orissa, the indigenous production methods of the tribals&#39; and the nomadic craftsmen reflects the inherent expression of their simplicity. As intricate and detailed as the art form is, its place of production is usually quite humble, and it is the inherited talent, dedicated efforts and the sheer simplicity of the artisans that have kept the rustic art alive so far.</p>', '250', '', 1, 1),
(61, 'Earrings Handmade In Dhokra Art (Brass, 1.4 Inch)', 'Jewellery', 'White', '<ul>\r\n	<li>COLOUR: Golden</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Brass</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Dhokra Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The Indus Valley Civilization has left the country with great contributions in the area of both ethnic and cultural aspects. One such influence in the field of stonework and artwork is the skill of the Dhokra casting. Reigning from the Harappan culture, this art dates back 5000 years by the stunning metalsmiths work and has survived the test of time. Dusting the soils of West Bengal, Bihar and Orissa, the indigenous production methods of the tribals&#39; and the nomadic craftsmen reflects the inherent expression of their simplicity. As intricate and detailed as the art form is, its place of production is usually quite humble, and it is the inherited talent, dedicated efforts and the sheer simplicity of the artisans that have kept the rustic art alive so far.</p>', '250', '', 1, 1),
(62, 'ribal Dhokra Leafy Bohemian Earrings Handmade In Dhokra Art (Brass, Wood, 3 Inch)', 'Jewellery', 'White', '<ul>\r\n	<li>COLOUR: Multicoloured</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: DHOKRA FIGURINE: Brass, BASE: Sheesham Wood</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Dhokra Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The Indus Valley Civilization has left the country with great contributions in the area of both ethnic and cultural aspects. One such influence in the field of stonework and artwork is the skill of the Dhokra casting. Reigning from the Harappan culture, this art dates back 5000 years by the stunning metalsmiths work and has survived the test of time. Dusting the soils of West Bengal, Bihar and Orissa, the indigenous production methods of the tribals&#39; and the nomadic craftsmen reflects the inherent expression of their simplicity. As intricate and detailed as the art form is, its place of production is usually quite humble, and it is the inherited talent, dedicated efforts and the sheer simplicity of the artisans that have kept the rustic art alive so far.</p>', '230', '', 1, 1),
(63, 'Mosaic Pair Bohemian Earrings Hand-painted In Mosaic Pattern (Sheesham Wood)', 'Jewellery', 'White', '<ul>\r\n	<li>COLOUR: Dark Brown</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Sheesham Wood</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Hand-Painted</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>Even in the times when paintbrushes were not invented, the skill of the painters never died because of lack of resources. Not just an art form, but the paintings depict a way of life for the Warli tribes of the mountains and coastal regions in and around the borders of Maharashtra and Gujarat. At this juncture in pre-history, the early man came out of an animal-like existence and gradually learned the art of self-expression in the form of art, that survived till today. Different species of animals, birds, wipers, frogs, spiders, scorpions, and even man, not seeking to distinguish himself, populated this tribe.</p>', '678', '', 1, 1),
(64, 'Tribal Women Faces Bohemain Brass Earrings Handcrafted In Dhokra Art', 'Jewellery', 'White', '<ul>\r\n	<li>COLOUR: Golden</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>MATERIAL: Brass</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>ART FORM: Dhokra Art</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Made in India</li>\r\n</ul>\r\n\r\n<p>The Indus Valley Civilization has left the country with great contributions in the area of both ethnic and cultural aspects. One such influence in the field of stonework and artwork is the skill of the Dhokra casting. Reigning from the Harappan culture, this art dates back 5000 years by the stunning metalsmiths work and has survived the test of time. Dusting the soils of West Bengal, Bihar and Orissa, the indigenous production methods of the tribals&#39; and the nomadic craftsmen reflects the inherent expression of their simplicity. As intricate and detailed as the art form is, its place of production is usually quite humble, and it is the inherited talent, dedicated efforts and the sheer simplicity of the artisans that have kept the rustic art alive so far.</p>', '250', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `cartid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `size` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`idBrand`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idCustomer`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`imgid`,`Product_idProduct`,`Product_Brand_idBrand`),
  ADD KEY `fk_Image_Product1_idx` (`Product_idProduct`,`Product_Brand_idBrand`);

--
-- Indexes for table `massage`
--
ALTER TABLE `massage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idProduct`,`Brand_idBrand`),
  ADD KEY `fk_Product_Brand_idx` (`Brand_idBrand`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`cartid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `idBrand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `idCustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `imgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `massage`
--
ALTER TABLE `massage`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `fk_Image_Product1` FOREIGN KEY (`Product_idProduct`,`Product_Brand_idBrand`) REFERENCES `product` (`idProduct`, `Brand_idBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_Product_Brand` FOREIGN KEY (`Brand_idBrand`) REFERENCES `brand` (`idBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
