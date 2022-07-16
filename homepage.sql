create table homepage
(
    id       int auto_increment
        primary key,
    category varchar(200) null,
    link     varchar(200) null,
    pic      varchar(200) null,
    name     varchar(200) null
);

INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (1, ''girlCakes'', ''/girlCakes'', ''../static/girlcakes/girl ice cream cake.jpg'', ''Girl Cake'');
INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (2, ''BoysCakes'', ''/boycakes'', ''../static/boy cakes/boys teddy bear.jpg'', ''Boy Cakes'');
