create table costumers
(
    username varchar(255) not null
        primary key,
    fullName varchar(255) null,
    email    text         null,
    password varchar(120) null
);

INSERT INTO project_db.costumers (username, fullName, email, password) VALUES ('Dana', 'sds', 'ccsd@dsf.zcs', '1');
INSERT INTO project_db.costumers (username, fullName, email, password) VALUES ('Dana1', 'dana shkol', 'sdcfsn@sdcs.xqw', '1');
INSERT INTO project_db.costumers (username, fullName, email, password) VALUES ('Noam1', 'noam a', 'no@sdf.com', '111');
INSERT INTO project_db.costumers (username, fullName, email, password) VALUES ('Noam2', 'as s', 'ca@cdv.ds', '12');
INSERT INTO project_db.costumers (username, fullName, email, password) VALUES ('Noam3', 'noas sdc', 'dms@f.zc', '3');
