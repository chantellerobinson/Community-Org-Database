CREATE TABLE community_orgs (
    id INT PRIMARY KEY,
    community_org_name VARCHAR(40) UNIQUE NOT NULL,
    telephone VARCHAR(15),
    email VARCHAR(50) UNIQUE,
    address VARCHAR(70),
    longitude DECIMAL,
    latitude DECIMAL
);

CREATE TABLE categories (
    id INT PRIMARY KEY,
    category_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE community_org_categories (
    community_org_id INT,
    categories_id INT
);