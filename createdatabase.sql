CREATE TABLE community_orgs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    community_org_name VARCHAR(40) UNIQUE NOT NULL,
    telephone VARCHAR(15),
    email VARCHAR(50) UNIQUE,
    address VARCHAR(70),
    longitude DECIMAL,
    latitude DECIMAL
);

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE community_org_categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    CONSTRAINT `community_org_constraint` 
        FOREIGN KEY(community_orgs_id) REFERENCES community_orgs(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE, 
    CONSTRAINT `categories_constraint` 
        FOREIGN KEY(categories_id) REFERENCES categories(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);