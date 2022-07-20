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
)
    engine = InnoDB;

INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('2 Layer Lotus Cake', 'Adult Cakes', '../static/adult cakes/2 layer lotus cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('2 level ring cake', 'Ring cakes', '../static/ring cakes/2 level ring cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('2021Dana', 'Num&Letter cakes', '../static/Num&Letter cakes/2021Dana.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('3 level wedding cake', 'Wedding cakes', '../static/wedding cakes/3 level wedding cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Animal cake', 'Boy cakes', '../static/boy cakes/Animal cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Animal cake', 'Girl cakes', '../static/girlcakes/Animal cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('barbie bachlorette cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/barbie bachlorette cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('barbie marshmellow cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/barbie marshmellow cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('batman cake', 'Boy cakes', '../static/boy cakes/batman cake.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('berry number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/berry number cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('berry ring cake', 'Ring cakes', '../static/ring cakes/berry ring cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('black _ white number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/black _ white number cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('blueberry pie', 'Pies', '../static/pies/blueberry pie.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('boys first birthday', 'Boy cakes', '../static/boy cakes/boys first birthday.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('boys ice cream cake', 'Boy cakes', '../static/boy cakes/boys ice cream cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('boys teddy bear', 'Boy cakes', '../static/boy cakes/boys teddy bear.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('bride to be cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/bride to be cake.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('brown _ white birthday cake', 'Adult Cakes', '../static/adult cakes/brown _ white birthday cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('brown _ white wedding cake', 'Wedding cakes', '../static/wedding cakes/brown _ white wedding cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('castle cake', 'Girl cakes', '../static/girlcakes/castle cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('cheese _ chocolate yeast cake', 'Yeast cakes', '../static/yeast cakes/cheese _ chocolate yeast cake.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('cheese _ rasberry teast cake', 'Yeast cakes', '../static/yeast cakes/cheese _ rasberry teast cake.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('chocolate cake', 'Adult Cakes', '../static/adult cakes/chocolate cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('chocolate letter cake', 'Num&Letter cakes', '../static/Num&Letter cakes/chocolate letter cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('chocolate number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/chocolate number cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('chocolate pie', 'Pies', '../static/pies/chocolate pie.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('chocolate yeast cale', 'Yeast cakes', '../static/yeast cakes/chocolate yeast cale.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('cinammon yeat cake', 'Yeast cakes', '../static/yeast cakes/cinammon yeat cake.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('classic flower wedding cake', 'Wedding cakes', '../static/wedding cakes/classic flower wedding cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('colorfull number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/colorfull number cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('ferero cake', 'Adult Cakes', '../static/adult cakes/ferero cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('fruit letter cake', 'Num&Letter cakes', '../static/Num&Letter cakes/fruit letter cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('fruit weddind cake', 'Wedding cakes', '../static/wedding cakes/fruit weddind cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('girl cloud cake', 'Girl cakes', '../static/girlcakes/girl cloud cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('girl ice cream cake', 'Girl cakes', '../static/girlcakes/girl ice cream cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('girl pop it cake', 'Girl cakes', '../static/girlcakes/girl pop it cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('girl teddy bear cake', 'Girl cakes', '../static/girlcakes/girl teddy bear cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Golden Ring Cake', 'Ring cakes', '../static/ring cakes/Golden Ring Cake.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Half Birthday Cake', 'Special cakes', '../static/ourSpecials/Half Birthday Cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Halva Chocolate Mousse', 'Special cakes', '../static/ourSpecials/Halva Chocolate Mousse.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Knafe Cake', 'Special cakes', '../static/ourSpecials/Knafe Cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('last night out cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/last night out cake.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('lemonPie', 'Pies', '../static/pies/lemonPie.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('lotus cake', 'Adult Cakes', '../static/adult cakes/lotus cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('love wedding cake', 'Wedding cakes', '../static/wedding cakes/love wedding cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Mcdonalds cake', 'Adult Cakes', '../static/adult cakes/Mcdonalds cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('nutella pie cake', 'Pies', '../static/pies/nutella pie cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('pecan pie', 'Pies', '../static/pies/pecan pie.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('pink flower number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/pink flower number cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('pink pastel cake', 'Girl cakes', '../static/girlcakes/pink pastel cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Pistachio Chocolate Mousse Cake', 'Special cakes', '../static/ourSpecials/Pistachio Chocolate Mousse Cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('pistachio pie', 'Pies', '../static/pies/pistachio pie.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('poopy seed yeast cake', 'Yeast cakes', '../static/yeast cakes/poopy seed yeast cake.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('popcorn cake', 'Adult Cakes', '../static/adult cakes/popcorn cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Popcorn Mousse Cake', 'Special cakes', '../static/ourSpecials/Popcorn Mousse Cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('pretzelPie', 'Pies', '../static/pies/pretzelPie.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('princess cake', 'Girl cakes', '../static/girlcakes/princess cake.png', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('pumpkin pie', 'Pies', '../static/pies/pumpkin pie.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('purple letter cake', 'Num&Letter cakes', '../static/Num&Letter cakes/purple letter cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('rainbow cake', 'Girl cakes', '../static/girlcakes/rainbow cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('ring box cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/ring box cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('ring cake', 'Ring cakes', '../static/ring cakes/ring cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('ring decoration cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/ring decoration cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('ring flower cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/ring flower cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('rose shaped yeast cake', 'Yeast cakes', '../static/yeast cakes/rose shaped yeast cake.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('shavuot', 'Adult Cakes', '../static/adult cakes/shavuot.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('social media cake', 'Girl cakes', '../static/girlcakes/social media cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('spiderman cake', 'Boy cakes', '../static/boy cakes/spiderman cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('strawberry macaroon number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/strawberry macaroon number cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('the hunts over bachlorette cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/the hunts over bachlorette cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('tractor cake', 'Boy cakes', '../static/boy cakes/tractor cake.jfif', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('train cake', 'Boy cakes', '../static/boy cakes/train cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('tricolad cake', 'Adult Cakes', '../static/adult cakes/tricolad cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('unikorn cake', 'Girl cakes', '../static/girlcakes/unikorn cake.jpg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('white flower wedding cake', 'Wedding cakes', '../static/wedding cakes/white flower wedding cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('white number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/white number cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('white wedding cake', 'Wedding cakes', '../static/wedding cakes/white wedding cake.jpeg', 200, 0);
INSERT INTO project_db.cakes (name, category, pic, price, ordersNum) VALUES ('Will You Marry Me', 'Ring cakes', '../static/ring cakes/Will You Marry Me.jpg', 200, 0);