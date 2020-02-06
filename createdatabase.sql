CREATE DATABASE IF NOT EXISTS `community_org_finder`;
USE `community_org_finder`;

DROP TABLE IF EXISTS `community_orgs`;
CREATE TABLE `community_orgs` (
    community_orgs_id INT PRIMARY KEY AUTO_INCREMENT,
    community_org_name VARCHAR(40) UNIQUE NOT NULL,
    telephone VARCHAR(15),
    email VARCHAR(50) UNIQUE,
    address VARCHAR(70),
    longitude DECIMAL,
    latitude DECIMAL
);

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
    categories_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) UNIQUE NOT NULL
);

DROP TABLE IF EXISTS `community_org_categories`;
CREATE TABLE `community_org_categories` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    community_orgs_id  INT NOT NULL,
    categories_id INT NOT NULL,
        FOREIGN KEY(community_orgs_id) REFERENCES community_orgs(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,  
        FOREIGN KEY(categories_id) REFERENCES categories(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);