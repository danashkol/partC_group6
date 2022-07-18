create table status
(
    status varchar(50) not null
        primary key
)
    engine = InnoDB;

INSERT INTO project_db.status (status) VALUES ('delivered');
INSERT INTO project_db.status (status) VALUES ('in process');
INSERT INTO project_db.status (status) VALUES ('payed');
