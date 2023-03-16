CREATE DATABASE blog;

CREATE TABLE Posts (
    id int,
    titel varchar(255),
    body longtext,
    auteur varchar(255),
    category_id int,
    published_at varchar(255)
);

CREATE TABLE categories (
    id int,
    naam varchar(255)
);

