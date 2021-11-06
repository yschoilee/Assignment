CREATE TABLE `students` (
    `name` VARCHAR(10) NOT NULL,
    `addmission_year` INT NOT NULL,
    `major` VARCHAR(20) NOT NULL,
    `individual_number` INT NOT NULL,
    `phone_number` VARCHAR(20) NOT NULL,
    `adress` VARCHAR(30) NOT NULL,
    `total_credit` INT DEFAULT 0 NOT NULL,
    `mean_score` INT NOT NULL,
    `is_attending` TINYINT(1) NOT NULL DEFAULT 1


) ENGINE=InnoDB DEFAULT CHARSET=utf8;