create table payments
(
    cardHolder varchar(255) not null,
    expiredM   int          not null,
    expiredY   int          not null,
    cardNumber varchar(20)  not null,
    cvc        int          not null
);

INSERT INTO project_db.payments (cardHolder, expiredM, expiredY, cardNumber, cvc) VALUES ('dasda', 12, 2022, '1232234252435325', 121);
