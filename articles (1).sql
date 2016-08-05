-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2016 at 10:46 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `articles`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `category` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `writerName` text NOT NULL,
  `ArticleName` mediumtext NOT NULL,
  `date` timestamp NOT NULL,
  `Article` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `category`, `category_id`, `writerName`, `ArticleName`, `date`, `Article`) VALUES
(1, 'consulting room', 2, 'Dr Peter Kabunga', 'My cholesterol is high. Should I be worried?', '2016-07-16 05:21:00', 'Complex plaques are deposits that can form in the walls of arteries. Cholesterol is a key component of these plaques. Over time, they can get bigger and cause narrowing of the arteries. In the heart arteries this can restrict blood supply to the heart muscle leading to angina or a heart attack.\r\n'),
(2, 'ask the expert', 1, 'Dr Anjali Mahto', 'Moles and skin cancer', '2016-06-27 05:28:00', 'Everywhere you look these days, skin cancer is in the news.  This comes as no great surprise to most dermatologists, as the number of melanomas we see each week continues to increase.  Data shows that over the last thirty years, rates of malignant melanoma in Great Britain have risen faster than any of the current ten most common cancers.\r\n\r\nRisk Factors for Skin Cancer\r\n\r\n1. Skin Type\r\nBefore you look at moles consider what skin type you are, as this makes a big difference to your risk of skin cancer. The Fitzpatrick Skin Type classification is a scale for human skin colour and it’s response to ultraviolet radiation.Type 1: white skin, blond or red hair, freckles – always burns, never tans\r\nType 2: white skin – usually burns, tans minimally\r\nType 3: white skin, fair with any hair or eye colour – sometimes mild burn but tans uniformly\r\nType 4: moderate brown skin, Mediterranean skin tone – rarely burns, tans well\r\nType 5: dark brown, Middle-Eastern or Asian skin – very rarely burns, tans easily\r\nType 6: deeply pigmented or Black skin – never burns, tans very easily\r\n\r\nThe risk of developing skin cancer is much higher in type 1 skin compared to type 6 skin. However, skin cancer can occur in any skin type.\r\n\r\n2. Sunburn\r\nA person’s risk of melanoma doubles if he or she has had more than 5 sunburns'),
(3, 'healthy living', 3, 'Doctify Team', '5 symptoms you should never ignore', '2016-06-14 05:50:00', 'British men are paying the price for neglecting their health: more than 100,000 men a year die prematurely. Don’t suffer in silence when there’s help at hand.\r\n\r\nHere are five common health issues for men and the symptoms you should look our for.\r\n\r\n.\r\n\r\nMan Down\r\n\r\nWe can all go through a time of feeling unhappy or fed up, however when you’re depressed you feel persistently sad for weeks or even months. \r\n\r\nDepression is an illness with real effects on your work, social and family life. Men are less likely to have depression but because men are more reluctant to speak to someone and seek help suicide rates in men are higher.\r\n\r\nWhat to look out for: \r\n\r\nlasting feeling of sadness and hopelessness\r\nlosing interest in the things you used to enjoy\r\nfeeling constantly tired\r\nbad sleeping pattern\r\nno appetite\r\nIf you experience any of the symptoms above, see your GP.\r\nLearn more about depression on the NHS website\r\n\r\n.\r\n\r\nBlocked pipes\r\n\r\nIf you’ve ever had limescale building up in your pipes you’ll know what can happen if your prostate gets too big. When you try to open the tap it might come out slowly, take a while to get going or drip. Urine symptoms can occur with infections and bladder problems, so see your GP for advice.\r\n\r\n.\r\n\r\nA testicular lump \r\n\r\nIf you notice a lump or any other abnormalities in your testicles it is important to see your GP. Most testicular lumps are not cancerous, however it is important to have any lumps checked.\r\n\r\nCancer of the testicles usually affects younger men between the ages of 15 to 49. \r\n\r\nThe most common symptoms are: \r\n\r\nA painless lump or swelling\r\nAn ache in the scrotum\r\nA feeling of heaviness\r\nIf you experience any of the symptoms above, see your GP. \r\n\r\nNHS: Find out what your testicles should look and feel like\r\n\r\n.\r\n\r\nImpotence\r\n\r\nImpotence is a common problem that affects men of all ages. Erectile dysfunction is the preferred medical term for impotence, meaning problems getting or keeping an erection. If you experience erection problems for several weeks you are advised to see your GP.\r\n\r\nLoss of confidence or psychological reasons are really common but physical conditions such as heart disease, diabetes or high blood pressure can be to blame.  \r\n\r\nLifestyle changes, such as cutting down on alcohol, exercising and losing weight can correct erectile dysfunction. \r\n\r\nFind out more about impotence on the NHS website\r\n\r\n.\r\n\r\nMoles\r\n\r\nIf you notice a mole, it is important to check it regularly and be aware of any changes in colour or size. Check these against a mole assessment tool like the one on NHS Choices. Take a photo if you’re not sure so you can spot any changes over time, but always get a rapidly changing mole checked by your GP.\r\n\r\nUse the NHS mole assessment to check your mole.\r\n\r\nIf you would like to speak to a GP about any of the issues covered, find a GP near you today.'),
(4, 'news and opinion', 4, 'Tom Nolan', 'Health tech innovators changing the world in 2015', '2016-08-05 10:00:25', 'Here at the Doctify Journal it’s our new year’s resolution to bring you the most interesting and relevant health news and features directly from the experts. You might have already seen our 2015 healthcare round-up and experts’ 2016 predictions, or our editor’s first monthly health news review. As Doctify gets in gear for 2016 after its first Christmas we thought we’d look around at who the other new or trending healthcare innovators are.\r\n\r\nSkin Analytics\r\n\r\nSkin analytics\r\n\r\nHave you ever been told to “get that mole checked”? For £29 you can now do just that using the Skin analytics iphone app. Dermatologists use a special lens called a dermatoscope to view moles in more detail than you can see with the naked eye or a camera lens. Skin analytics turns your iphone into a dermatoscope with a special lens that they send you in the post. The image gets sent across to a dermatologist who either gives you the all clear or tells you to go and see a specialist. In December they crowdfunded over their £450,000 target, so expect to hear more from them in 2016.\r\n\r\nhttp://bleepbleeps.com/\r\n\r\nBleep bleeps\r\n\r\nThere’s a big market of thirty something professionals going through the planning to have, struggling to have, and then finally thank goodness we’ve managed to have a baby phase of their lives. They want children almost as much as they used to want the latest iphone. Now there’s a new set of gadgets for them: bleep bleeps, the most self-confident health start-up of the year. bleep bleeps are “cute, connected devices that help you get pregnant, give birth, look after your baby and raise your child.” Their products range from the sublime David Camera baby monitor to the…well, a semen analyser called master bates.\r\n\r\nhttps://www.headspace.com/how-it-works\r\n\r\nHeadspace\r\n\r\nIf you were fortunate enough not to get a mindfulness colouring book for Christmas you might still be interested in mindfulness as a way to de-stress and improve your mood. Headspace is a slick celebrity endorsed “gym membership for the mind” with a free 10 minute daily meditation and more extensive subscription service.\r\n\r\nhttp://oviva.com/uk/\r\nOviva\r\n\r\nGoogle any symptom and you’ll soon find some dietary advice about how to resolve it. Cut carbs, go gluten free, switch to paleo, take a supplement. How about getting some expert advice from a dietician instead? Oviva will be your dietician in your pocket from £75 a month. This include access to your own named dietician and personalised feedback on your progress 3-5 times a week (depending on your subscription).\r\n\r\nhttps://www.elbi.com/\r\nElbi\r\n\r\n“Noble deeds and hot baths are the best cures for depression” said the author Dodie Smith. Charitable acts app Ebli makes doing a good deed as easy as running a bath. The app wants to help you contribute to a charitable project in those minutes you currently spend scrolling through Twitter on the train, bus or toilet. Examples of “good on the go”, as they put it, include creating digital doodles to decorate dorms in orphanages, naming newborn puppies, and drawing funny faces to cheer up sick kids.\r\n\r\nwww.doctify.co.uk\r\n\r\nDoctify\r\n\r\nSeeing a specialist privately is still an oddly old fashioned experience. You mostly sort it out over the phone, often without really knowing much about the doctor you’re going to see. The whole process was crying out to be Uber-fied, and finally has been by Doctify. Go online, see who’s available, which insurers cover them, check their reviews and book your appointment.'),
(5, 'on the pulse', 5, 'Tom Nolan', 'May Health News', '2016-08-05 10:02:39', 'After the positive mood I had last month, I’m feeling a little down. All the latest research is making me a little bit sad: if only we could help the lonely and get the Chinese to eat more fruit. If only Stoke had more parks.\r\n\r\nThe secret to being more active\r\n\r\nAre you looking for someone else to blame for the fact that you don’t walk as much as you’d like to? Blame your town planner, then move to Wellington in New Zealand. A study in the Lancet shows that the walkability of your local neighbourhood (i.e. how easy it is to get from one place to another) and having more parks nearby are associated with people being more active. People in more densely populated areas and close to more public transport are also more active. The people of Wellington were found to be the most active of the 14 cities studied, getting 50 minutes of moderate to vigorous physical activity a day, compared to just 37 minutes a day for the good people of Stoke-on-Trent.\r\n\r\nAn apple a day…\r\n\r\nI didn’t know until now that the Chinese eat very little fruit. Perhaps I hadn’t given it enough thought. Researchers in Oxford have. They went to China and found half a million people to take part in a study to examine the link between eating fruit and having a heart attack and stroke. Only 18% of participants ate any fruit on a daily basis. They were 40% less likely to die from a heart attack or stroke than those in the study who never ate fruit. So, it’s true: an apple a day keeps the (heart) doctor away (by 40% (if you live in China)).\r\n\r\nThe difference between a hug and a stroke\r\n\r\nHaving a stroke can be devastating. Feeling lonely and being socially isolated isn’t much fun either. It seems that the two are linked. Researchers looked through data from 23 studies and found that poor social relationships were associated with a 30% increase in the risk of stroke. The authors call for money to be spent to reduce social isolation and loneliness as a way of reducing the number of strokes. It’s strange that we live in a society that needs to find other reasons to help people who are lonely, rather than just wanting to help them because they’re lonely.\r\n\r\nAntibiotics and meningitis\r\n\r\nPeople who have had four or more courses of antibiotics in the previous year are twice as likely to get meningitis. So does taking too many antibiotics put you at risk of meningitis? Not necessarily. Research in the British Journal of General Practice this month looked back at over 7000 cases of meningitis on GP records to see how many times antibiotics had been prescribed before they got meningitis. This type of research can find connections between things (like taking antibiotics before getting meningitis) but can’t tell you whether one thing causes another. So, whilst it’s possible that too many antibiotics can make you susceptible to meningitis, it might just be that people who get lots of other infections also get meningitis.');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `categoryName` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `categoryName`) VALUES
(1, 'ask the expert'),
(2, 'consulting room'),
(3, 'healthy living'),
(4, 'news and opinion'),
(5, 'on the pulse');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
