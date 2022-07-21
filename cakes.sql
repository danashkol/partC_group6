create table cakes
(
    name     varchar(200),
    category varchar(200),
    pic      varchar(200) null,
    price    int          null,
    primary key (name, category),
    constraint fk_category
        foreign key (category) references web_project_g6.category (category)
);


INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('2 Layer Lotus Cake', 'Adult Cakes', '../static/adult cakes/2 layer lotus cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('2 level ring cake', 'Ring cakes', '../static/ring cakes/2 level ring cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('2021Dana', 'Num&Letter cakes', '../static/Num&Letter cakes/2021Dana.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('3 level wedding cake', 'Wedding cakes', '../static/wedding cakes/3 level wedding cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('Animal cake', 'Boy cakes', '../static/boy cakes/Animal cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('Animal cake', 'Girl cakes', '../static/girlcakes/Animal cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('barbie bachlorette cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/barbie bachlorette cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('barbie marshmellow cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/barbie marshmellow cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('batman cake', 'Boy cakes', '../static/boy cakes/batman cake.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('berry number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/berry number cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('berry ring cake', 'Ring cakes', '../static/ring cakes/berry ring cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('black _ white number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/black _ white number cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('blueberry pie', 'Pies', '../static/pies/blueberry pie.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('boys first birthday', 'Boy cakes', '../static/boy cakes/boys first birthday.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('boys ice cream cake', 'Boy cakes', '../static/boy cakes/boys ice cream cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('boys teddy bear', 'Boy cakes', '../static/boy cakes/boys teddy bear.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('bride to be cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/bride to be cake.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('brown _ white birthday cake', 'Adult Cakes', '../static/adult cakes/brown _ white birthday cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('brown _ white wedding cake', 'Wedding cakes', '../static/wedding cakes/brown _ white wedding cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('castle cake', 'Girl cakes', '../static/girlcakes/castle cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('cheese _ chocolate yeast cake', 'Yeast cakes', '../static/yeast cakes/cheese _ chocolate yeast cake.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('cheese _ rasberry teast cake', 'Yeast cakes', '../static/yeast cakes/cheese _ rasberry teast cake.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('chocolate cake', 'Adult Cakes', '../static/adult cakes/chocolate cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('chocolate letter cake', 'Num&Letter cakes', '../static/Num&Letter cakes/chocolate letter cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('chocolate number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/chocolate number cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('chocolate pie', 'Pies', '../static/pies/chocolate pie.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('chocolate yeast cale', 'Yeast cakes', '../static/yeast cakes/chocolate yeast cale.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('cinammon yeat cake', 'Yeast cakes', '../static/yeast cakes/cinammon yeat cake.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('classic flower wedding cake', 'Wedding cakes', '../static/wedding cakes/classic flower wedding cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('colorfull number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/colorfull number cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('ferero cake', 'Adult Cakes', '../static/adult cakes/ferero cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('fruit letter cake', 'Num&Letter cakes', '../static/Num&Letter cakes/fruit letter cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('fruit weddind cake', 'Wedding cakes', '../static/wedding cakes/fruit weddind cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('girl cloud cake', 'Girl cakes', '../static/girlcakes/girl cloud cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('girl ice cream cake', 'Girl cakes', '../static/girlcakes/girl ice cream cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('girl pop it cake', 'Girl cakes', '../static/girlcakes/girl pop it cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('girl teddy bear cake', 'Girl cakes', '../static/girlcakes/girl teddy bear cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('Golden Ring Cake', 'Ring cakes', '../static/ring cakes/Golden Ring Cake.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('Half Birthday Cake', 'Special cakes', '../static/ourSpecials/Half Birthday Cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('Halva Chocolate Mousse', 'Special cakes', '../static/ourSpecials/Halva Chocolate Mousse.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('Knafe Cake', 'Special cakes', '../static/ourSpecials/Knafe Cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('last night out cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/last night out cake.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('lemonPie', 'Pies', '../static/pies/lemonPie.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('lotus cake', 'Adult Cakes', '../static/adult cakes/lotus cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('love wedding cake', 'Wedding cakes', '../static/wedding cakes/love wedding cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('Mcdonalds cake', 'Adult Cakes', '../static/adult cakes/Mcdonalds cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('nutella pie cake', 'Pies', '../static/pies/nutella pie cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('pecan pie', 'Pies', '../static/pies/pecan pie.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('pink flower number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/pink flower number cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('pink pastel cake', 'Girl cakes', '../static/girlcakes/pink pastel cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('Pistachio Chocolate Mousse Cake', 'Special cakes', '../static/ourSpecials/Pistachio Chocolate Mousse Cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('pistachio pie', 'Pies', '../static/pies/pistachio pie.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('poopy seed yeast cake', 'Yeast cakes', '../static/yeast cakes/poopy seed yeast cake.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('popcorn cake', 'Adult Cakes', '../static/adult cakes/popcorn cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('Popcorn Mousse Cake', 'Special cakes', '../static/ourSpecials/Popcorn Mousse Cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('pretzelPie', 'Pies', '../static/pies/pretzelPie.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('princess cake', 'Girl cakes', '../static/girlcakes/princess cake.png', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('pumpkin pie', 'Pies', '../static/pies/pumpkin pie.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('purple letter cake', 'Num&Letter cakes', '../static/Num&Letter cakes/purple letter cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('rainbow cake', 'Girl cakes', '../static/girlcakes/rainbow cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('ring box cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/ring box cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('ring cake', 'Ring cakes', '../static/ring cakes/ring cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('ring decoration cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/ring decoration cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('ring flower cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/ring flower cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('rose shaped yeast cake', 'Yeast cakes', '../static/yeast cakes/rose shaped yeast cake.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('shavuot', 'Adult Cakes', '../static/adult cakes/shavuot.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('social media cake', 'Girl cakes', '../static/girlcakes/social media cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('spiderman cake', 'Boy cakes', '../static/boy cakes/spiderman cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('strawberry macaroon number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/strawberry macaroon number cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('the hunts over bachlorette cake', 'Bachellorete Party Cakes', '../static/bachlorette cakes/the hunts over bachlorette cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('tractor cake', 'Boy cakes', '../static/boy cakes/tractor cake.jfif', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('train cake', 'Boy cakes', '../static/boy cakes/train cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('tricolad cake', 'Adult Cakes', '../static/adult cakes/tricolad cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('unikorn cake', 'Girl cakes', '../static/girlcakes/unikorn cake.jpg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('white flower wedding cake', 'Wedding cakes', '../static/wedding cakes/white flower wedding cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('white number cake', 'Num&Letter cakes', '../static/Num&Letter cakes/white number cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('white wedding cake', 'Wedding cakes', '../static/wedding cakes/white wedding cake.jpeg', 200);
INSERT INTO web_project_g6.cakes (name, category, pic, price) VALUES ('Will You Marry Me', 'Ring cakes', '../static/ring cakes/Will You Marry Me.jpg', 200);
