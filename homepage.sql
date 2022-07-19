create table homepage
(
    id       int auto_increment
        primary key,
    category varchar(200) null,
    link     varchar(200) null,
    pic      varchar(200) null,
    name     varchar(200) null
);

INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (1, 'Adult Cakes', '/adultCakes', '../static/adult cakes/shavuot.jpeg', 'Adult Cakes');
INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (2, 'Bachellorete Party Cakes', '/bachPartyCakes', '../static/bachlorette cakes/bride to be cake.jfif', 'Bachellorete Party Cakes');
INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (3, 'Boy Cakes', '/boyCakes', '../static/boy cakes/boys teddy bear.jpg', 'Boy Cake');
INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (4, 'Girl Cakes', '/girlCakes', '../static/girlcakes/girl ice cream cake.jpg', 'Girl Cake');
INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (5, 'num _ letter cakes', '/numLetterCakes', '../static/Num&Letter cakes/chocolate letter cake.jpeg', 'num _ letter cakes');
INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (6, 'Pies', '/pies', '../static/pies/nutella pie cake.jpeg', 'Pies');
INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (7, 'Ring Cakes', '/ringCakes', '../static/ring cakes/ring cake.jpeg', 'Ring Cakes');
INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (8, 'Special Cakes', '/specialCakes', '../static/ourSpecials/Popcorn Mousse Cake.jpeg', 'Special Cakes');
INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (9, 'Wedding Cakes', '/weddingCakes', '../static/wedding cakes/love wedding cake.jpeg', 'Wedding Cakes');
INSERT INTO project_db.homepage (id, category, link, pic, name) VALUES (10, 'yeast cakes', '/yeastCakes', '../static/yeast cakes/cheese _ chocolate yeast cake.jfif', 'yeast cakes');