CREATE TABLE `users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `user_id` VARCHAR(30) NOT NULL,
    `password` VARCHAR(60) NOT NULL,
    `nickname`  VARCHAR(30) NOT NULL,
    `profile_image_link` VARCHAR(100) NOT NULL,
    `profile_message` VARCHAR(100) NOT NULL,
    `is_withdrawed` TINYINT(1) DEFAULT 0 NOT NULL,
    `date` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `channels` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    `user` INT NOT NULL,
    `channel_link` VARCHAR(40) NOT NULL,
    `capacity` INT NOT NULL,
    `is_withdrawed` TINYINT(1) DEFAULT 0 NOT NULL,
    `date` DATETIME NOT NULL,

    PRIMARY KEY (`id`)
    FOREIGN KEY (`user`) REFERENCES `users`(`id`) ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `chats` (
     `id` INT NOT NULL AUTO_INCREMENT,
     `content` TEXT NOT NULL,
     `writer` INT NOT NULL,
     `channel` INT NOT NULL,
     `date` DATETIME NOT NULL,
     PRIMARY KEY (`id`),
     FOREIGN KEY (`writer`) REFERENCES `users`(`id`) ON DELETE CASCADE,
     FOREIGN KEY (`channel`) REFERENCES 'channels'(`id`) ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `follows` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `follower` INT NOT NULL,
    `followee` INT NOT NULL,
    `date` DATETIME NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`follower`) REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`followee`) REFERENCES `users`(`id`) ON DELETE CASCADE,
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `blocks` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `blocked_by` INT NOT NULL,
    `blocked_user` INT NOT NULL,
    `blocked_date` DATETIME,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`blocked_by`) REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`blocked_user`) REFERENCES `users`(`id`) ON DELETE CASCADE,

)   ENGINE=InnoDB DEFAULT CHARSET=utf8;