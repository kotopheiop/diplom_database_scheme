SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- База данных: `onelinesoft_db`
--
CREATE DATABASE IF NOT EXISTS `onelinesoft_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onelinesoft_db`;

-- --------------------------------------------------------

--
-- Структура таблицы `action`
--

CREATE TABLE IF NOT EXISTS `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `date` date DEFAULT NULL,
  `type_action_id` int(11) DEFAULT NULL,
  `level_event_id` int(11) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_action_id_index_action` (`type_action_id`) USING BTREE,
  KEY `level_event_id_index_action` (`level_event_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `action`
--

INSERT INTO `action` (`id`, `name`, `date`, `type_action_id`, `level_event_id`, `place`) VALUES
(1, 'XI Международная научно-практическая Интернет конфе-ренция ', '2015-02-25', 2, 2, 'г. Москва'),
(3, 'XII-я международная научно-техническая конференция. Современные инструментальные системы, информацио', '2016-01-01', 2, 2, 'г. Томск'),
(4, 'I Международная научно-практическая конференция «Со-временные тенденции развития науки и технологий» Оценка эффективности реализации Интернет-проекта в сфере образования методом TCO', '2015-02-01', 2, 2, 'г.Белгород'),
(5, '73-я Международная научно-техническая конференция «Актуальные проблемы современной науки, техники и об-разования» Моделирование бизнес-процессов по организации и прове-дении онлайн конкурсов с использованием Business Process Model and Notatio', '2015-01-01', 2, 2, NULL),
(6, 'Очень интересное мероприятие', '2016-01-01', 1, 1, 'г. Магнитогорск, МГТУ им. Г.И. Носова'),
(7, 'Какое-то мероприятие', '2016-01-01', 3, 2, 'Магнитогорск');

-- --------------------------------------------------------

--
-- Структура таблицы `degree`
--

CREATE TABLE IF NOT EXISTS `degree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `degree`
--

INSERT INTO `degree` (`id`, `name`) VALUES
(1, 'Тест');

-- --------------------------------------------------------

--
-- Структура таблицы `education`
--

CREATE TABLE IF NOT EXISTS `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `touwn` varchar(100) DEFAULT NULL,
  `university_name` varchar(100) DEFAULT NULL,
  `study_orm` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `start_year` varchar(4) DEFAULT NULL,
  `finish_year` varchar(4) DEFAULT NULL,
  `speciality_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `speciality_id_index_education` (`speciality_id`),
  KEY `faculty_id_index_education` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `education`
--

INSERT INTO `education` (`id`, `country`, `touwn`, `university_name`, `study_orm`, `status`, `start_year`, `finish_year`, `speciality_id`, `faculty_id`) VALUES
(1, 'Россия', 'Магнитогорск', 'Магнитогорский государственный технический университет имени Г. И. Носова', 'Очная', 'Завершено', '2011', '2015', 1, 1),
(2, 'Россия', 'Магнитогорск', 'Магнитогорский государственный университет', 'Очная', 'Завершено', NULL, '2006', 1, 1),
(3, 'Россия', 'Магнитогорск', 'Магнитогорский государственный университет', 'Очная', 'Завершено', NULL, '2007', 1, 1),
(4, 'Россия', 'Магнитогорск', 'Магнитогорский государственный университет', 'Очная', 'Завершено', NULL, '2008', 1, 1),
(5, 'Россия', 'Челябинск', 'Челябинский государственный педагогический университет', 'Очная', 'В процессе', '2000', '2005', NULL, NULL),
(6, '', '', '', 'Очная', 'В процессе', '2000', '2005', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `faculty`
--

INSERT INTO `faculty` (`id`, `name`) VALUES
(1, 'ИЭиАС'),
(2, 'Информатики'),
(3, 'ИнформатикиИМХОhg');

-- --------------------------------------------------------

--
-- Структура таблицы `graduate`
--

CREATE TABLE IF NOT EXISTS `graduate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `date_records` date DEFAULT NULL,
  `education_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `group_id_index_graduate` (`group_id`),
  KEY `education_id_index_graduate` (`education_id`),
  KEY `teacher_id_index_graduate` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `graduate`
--

INSERT INTO `graduate` (`id`, `surname`, `name`, `father_name`, `phone`, `email`, `password`, `date_records`, `education_id`, `teacher_id`, `group_id`) VALUES
(1, 'Передельский', 'Андрей', 'Алексеевич  ', '+79999999999  ', 'andrew@gmail.com', '70873e8580c9900986939611618d7b1e', NULL, 1, NULL, 2),
(2, 'Пушкин', 'Александр', 'Сергеевич', NULL, 'push@mail.ru', '70873e8580c9900986939611618d7b1e', NULL, NULL, NULL, NULL),
(3, 'Аврахова', 'Анна', 'Геннадьевна', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(4, 'Адувалина', 'Татьяна', 'Викторовна', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(5, 'Акимов', 'Сергей', 'Вячеславович', '', '', NULL, '2016-04-28', 5, NULL, NULL),
(6, 'Анисимова', 'Марина', 'Николаевна', '', '', NULL, '2016-04-28', 6, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `group`
--

INSERT INTO `group` (`id`, `name`) VALUES
(1, 'ФИПИб-12'),
(2, 'ФИПИб-11'),
(3, 'ФИПИб-13');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `graduate_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `graduate_id_index_jobs` (`graduate_id`),
  KEY `organization_id_index_jobs` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `graduate_id`, `organization_id`) VALUES
(2, 1, 1),
(3, 1, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `level_event`
--

CREATE TABLE IF NOT EXISTS `level_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `level_event`
--

INSERT INTO `level_event` (`id`, `name`) VALUES
(1, 'Региональный'),
(2, 'Международный'),
(3, 'Всероссийский');

-- --------------------------------------------------------

--
-- Структура таблицы `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `positions` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `willingness_to_cooperate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `organization`
--

INSERT INTO `organization` (`id`, `name`, `positions`, `city`, `willingness_to_cooperate`) VALUES
(1, 'Компас+', 'Программист', 'Магнитогорск', 'Да'),
(2, 'Майкрософт', 'Системный аналитик', 'Москва', 'Нет'),
(3, 'Какая-то организация', 'Крутая должность', 'Казань', 'Да');

-- --------------------------------------------------------

--
-- Структура таблицы `participation`
--

CREATE TABLE IF NOT EXISTS `participation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participant_type` varchar(100) DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL,
  `file_1` longblob,
  `file_2` longblob,
  `teacher_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `teacher_id_index_participation` (`teacher_id`),
  KEY `student_id_index_participation` (`student_id`),
  KEY `action_id_index_participation` (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `participation`
--

INSERT INTO `participation` (`id`, `participant_type`, `result`, `file_1`, `file_2`, `teacher_id`, `student_id`, `action_id`) VALUES
(1, 'Участник', 'Сертификат участника', NULL, NULL, 1, 1, 1),
(2, NULL, 'Сертификат участника', NULL, NULL, NULL, 1, 3),
(3, NULL, 'Сертификат участника', NULL, NULL, NULL, 1, 4),
(4, NULL, 'Сертификат участника', NULL, NULL, NULL, 1, 5),
(5, NULL, 'Сертификат участника', NULL, NULL, NULL, 3, 3),
(6, NULL, 'Сертификат участника', NULL, NULL, NULL, 3, 5),
(7, NULL, 'Сертификат участника', NULL, NULL, NULL, 3, 1),
(8, NULL, 'Сертификат участника', NULL, NULL, NULL, 3, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `kch` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code_category` varchar(100) DEFAULT NULL,
  `code_okz` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `code`, `kch`, `name`, `code_category`, `code_okz`) VALUES
(1, '25812', '6', 'Преподаватель (в колледжах, университетах и других вузах)', '2', '2310'),
(2, '20199', '9', 'Доцент', '2', '2310'),
(3, '20199', '9', 'Ассистент', '2', '2310');

-- --------------------------------------------------------

--
-- Структура таблицы `publication`
--

CREATE TABLE IF NOT EXISTS `publication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `edition` varchar(100) DEFAULT NULL,
  `edition_place` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `authors` varchar(100) DEFAULT NULL,
  `participation_rate` varchar(100) DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  `type_publication_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `teacher_id_index_publication` (`teacher_id`),
  KEY `type_publication_id_index_publication` (`type_publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `qualification`
--

CREATE TABLE IF NOT EXISTS `qualification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL,
  `doc_num` varchar(100) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `teacher_id_index_qualification` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `scientific_work`
--

CREATE TABLE IF NOT EXISTS `scientific_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_participant` varchar(100) DEFAULT NULL,
  `name` text,
  `edition` text,
  `edition_place` text,
  `year` text,
  `file` mediumblob,
  `coauthor_student` varchar(100) DEFAULT NULL,
  `coauthor_teacher` varchar(100) DEFAULT NULL,
  `grnti` varchar(100) DEFAULT NULL,
  `udk` varchar(100) DEFAULT NULL,
  `sums` varchar(100) DEFAULT NULL,
  `participation_rate` varchar(100) DEFAULT NULL,
  `rinc` varchar(100) DEFAULT NULL,
  `vak` varchar(100) DEFAULT NULL,
  `name_dis_coucil` varchar(100) DEFAULT NULL,
  `typesw_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `speciality_id` int(11) DEFAULT NULL,
  `graduate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `typesw_id_index_scientific_work` (`typesw_id`),
  KEY `graduate_id_index_scientific_work` (`graduate_id`),
  KEY `student_id_index_scientific_work` (`student_id`),
  KEY `teacher_id_index_scientific_work` (`teacher_id`),
  KEY `speciality_id_index_scientific_work` (`speciality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `speciality`
--

CREATE TABLE IF NOT EXISTS `speciality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chiper` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `speciality`
--

INSERT INTO `speciality` (`id`, `chiper`, `name`) VALUES
(1, NULL, 'Прикладная информатика'),
(2, '09.03.03', 'Прикладная информатика'),
(3, '08.05.00', 'Бизнес Информатика'),
(4, '38.03.05', 'Бизнес Информатика');

-- --------------------------------------------------------

--
-- Структура таблицы `sport_qualification`
--

CREATE TABLE IF NOT EXISTS `sport_qualification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sport_qualification`
--

INSERT INTO `sport_qualification` (`id`, `name`) VALUES
(1, 'Мастер спорта');

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `capitan` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `speciality_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `sport` text,
  `sport_qualification_id` int(11) DEFAULT NULL,
  `date_records` date DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `group_id_index_student` (`group_id`),
  KEY `speciality_id_index_student` (`speciality_id`),
  KEY `faculty_id_index_student` (`faculty_id`),
  KEY `sport_qualification_id_index_student` (`sport_qualification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`id`, `surname`, `name`, `father_name`, `class`, `email`, `phone`, `capitan`, `password`, `speciality_id`, `faculty_id`, `sport`, `sport_qualification_id`, `date_records`, `group_id`) VALUES
(1, 'Борисов', 'Семён', 'Андреевич', '4', 'kotop****@gmail.com', '+79999999999', '', '9f999dde9f140df82986ffa76fa74d85', 2, 2, '', 1, NULL, 1),
(2, '  ', '', ' ', ' ', ' ', ' ', ' ', '70873e8580c9900986939611618d7b1e', NULL, 2, ' ', NULL, NULL, 2),
(3, 'Кириллов', 'Дмитрий', 'Викторович                 ', '4 ', 'kir*****@mail.ru', '+79999999999                 ', 'Да', '70873e8580c9900986939611618d7b1e', 2, 2, 'Настольный теннис', 1, '2016-04-28', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(100) DEFAULT NULL,
  `fathername` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `date_of_birth` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `education_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `education_id_index_teacher` (`education_id`),
  KEY `degree_id_index_teacher` (`degree_id`),
  KEY `post_id_index_teacher` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teacher`
--

INSERT INTO `teacher` (`id`, `surname`, `fathername`, `name`, `date_of_birth`, `phone`, `email`, `password`, `degree_id`, `post_id`, `education_id`) VALUES
(1, 'Иванов', 'Алексеевич  ', 'Андрей', NULL, '+79514892365 ', 'ivanov@mail.ru', '70873e8580c9900986939611618d7b1e', 1, 2, 5),
(2, 'Котовский', 'Петрович', 'Андрей', NULL, NULL, 'petrovich74@mail.ru', '70873e8580c9900986939611618d7b1e', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `typesw`
--

CREATE TABLE IF NOT EXISTS `typesw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `type_action`
--

CREATE TABLE IF NOT EXISTS `type_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `type_action`
--

INSERT INTO `type_action` (`id`, `name`) VALUES
(1, 'Конкурс'),
(2, 'Конференция'),
(3, 'Выставка'),
(4, 'Олимпиада'),
(5, 'Грант');

-- --------------------------------------------------------

--
-- Структура таблицы `type_publication`
--

CREATE TABLE IF NOT EXISTS `type_publication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `action`
--
ALTER TABLE `action`
  ADD CONSTRAINT `action_to_level_event` FOREIGN KEY (`level_event_id`) REFERENCES `level_event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `action_to_type_action` FOREIGN KEY (`type_action_id`) REFERENCES `type_action` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_to_faculty` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `education_to_speciality` FOREIGN KEY (`speciality_id`) REFERENCES `speciality` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `graduate`
--
ALTER TABLE `graduate`
  ADD CONSTRAINT `graduate_to_education` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `graduate_to_group` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `graduate_to_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_to_graduate` FOREIGN KEY (`graduate_id`) REFERENCES `graduate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_to_organization` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `participation`
--
ALTER TABLE `participation`
  ADD CONSTRAINT `participation_to_action` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participation_to_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participation_to_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `publication_to_publication_type` FOREIGN KEY (`type_publication_id`) REFERENCES `type_publication` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `publication_to_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `qualification`
--
ALTER TABLE `qualification`
  ADD CONSTRAINT `qualification_to_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `scientific_work`
--
ALTER TABLE `scientific_work`
  ADD CONSTRAINT `scientific_work_to_graduate` FOREIGN KEY (`graduate_id`) REFERENCES `graduate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scientific_work_to_speciality` FOREIGN KEY (`speciality_id`) REFERENCES `speciality` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scientific_work_to_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scientific_work_to_typesw` FOREIGN KEY (`typesw_id`) REFERENCES `typesw` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_to_faculty` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_to_group` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_to_speciality` FOREIGN KEY (`speciality_id`) REFERENCES `speciality` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_to_sport_qualification` FOREIGN KEY (`sport_qualification_id`) REFERENCES `sport_qualification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_to_degree` FOREIGN KEY (`degree_id`) REFERENCES `degree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_to_education` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_to_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
