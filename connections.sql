create table project_db.connections
(
    id      int auto_increment
        primary key,
    name    varchar(255) null,
    email   text         null,
    phone   varchar(10)  null,
    message varchar(500) not null
);


INSERT INTO project_db.connections (id, name, email, phone, message) VALUES (1, 'Noam Arbesfeld', 'noamarbes1@gmail.com', '0545434412', 'snasdsaas');
