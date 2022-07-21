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
    amountOfNumLetters varchar(100)                     null,
    status             varchar(50) default 'in process' not null,
    constraint fk_cake
        foreign key (cake) references cakes (name),
    constraint fk_status
        foreign key (status) references status (status),
    constraint fk_username
        foreign key (username) references costumers (username)
)
    engine = InnoDB;
