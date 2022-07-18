create table orders
(
    orderId            int auto_increment
        primary key,
    username           varchar(255)                     not null,
    cake               varchar(200)                     not null,
    price              float                            not null,
    date               datetime                         not null,
    size               int                              null,
    flavor             varchar(50)                      null,
    age                varchar(20)                      null,
    ageColor           varchar(50)                      null,
    greeting           varchar(300)                     null,
    greetingColor      varchar(50)                      null,
    glutenFree         tinyint(1)  default 0            null,
    dairyFree          tinyint(1)  default 0            null,
    sugarFree          tinyint(1)  default 0            null,
    requests           varchar(500)                     null,
    amountOfNumLetters int                              null,
    numLetter          varchar(20)                      null,
    status             varchar(50) default 'in process' not null,
    constraint fk_cake
        foreign key (cake) references cakes (name),
    constraint fk_status
        foreign key (status) references status (status),
    constraint fk_username
        foreign key (username) references costumers (username)
)
    engine = InnoDB;

INSERT INTO project_db.orders (orderId, username, cake, price, date, size, flavor, age, ageColor, greeting, greetingColor, glutenFree, dairyFree, sugarFree, requests, amountOfNumLetters, numLetter, status) VALUES (2, 'dana', 'barbie bachlorette cake', 200, '2022-07-17 19:15:59', 24, 'vanilla', '', 'white', '', 'white', 0, 0, 0, '', null, null, 'in process');
INSERT INTO project_db.orders (orderId, username, cake, price, date, size, flavor, age, ageColor, greeting, greetingColor, glutenFree, dairyFree, sugarFree, requests, amountOfNumLetters, numLetter, status) VALUES (3, 'dana', 'barbie bachlorette cake', 200, '2022-07-18 09:46:02', 24, 'vanilla', '', 'white', '', 'white', 0, 0, 0, '', null, null, 'in process');
INSERT INTO project_db.orders (orderId, username, cake, price, date, size, flavor, age, ageColor, greeting, greetingColor, glutenFree, dairyFree, sugarFree, requests, amountOfNumLetters, numLetter, status) VALUES (4, 'Dana', 'barbie bachlorette cake', 200, '2022-07-18 10:05:26', 24, 'vanilla', '', 'white', '', 'white', 0, 0, 0, '', null, null, 'in process');
