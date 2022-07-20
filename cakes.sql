create table cakes
(
    name      varchar(200) not null,
    category  varchar(200) not null,
    pic       varchar(200) null,
    price     int          null,
    ordersNum int          null,
    primary key (name, category),
    constraint fk_category
        foreign key (category) references category (category)
);

INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('2 Layer Lotus Cake', 'Adult Cakes', '../static/adult cakes/2 layer lotus cake.jpeg', 170, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('2 level ring cake', 'Ring cakes', '../static/ring cakes/2 level ring cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('2021Dana', 'Num&Letter cakes', '../static/Num&Letter cakes/2021Dana.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('3 level wedding cake', 'Wedding cakes', '../static/wedding cakes/3 level wedding cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Animal cake', 'Boy cakes', '../static/boy cakes/Animal cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Animal cake', 'Girl cakes', '../static/girlcakes/Animal cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('barbie bachlorette cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/barbie bachlorette cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('barbie marshmellow cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/barbie marshmellow cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('batman cake', 'Boy cakes', '../static/boy cakes/batman cake.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('berry number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/berry number cake.jpeg', 200, 0);
