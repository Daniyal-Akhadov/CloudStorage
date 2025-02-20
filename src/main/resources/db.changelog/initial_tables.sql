create table Users
(
    id       SERIAL PRIMARY KEY,
    username varchar(128) not null unique,
    password varchar(128) not null
);

insert into Users(username, password)
VALUES ('daniyal', '123'),
       ('eva', '123');