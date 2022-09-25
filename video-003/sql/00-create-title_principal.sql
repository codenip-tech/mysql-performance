create table title_principal
(
    tconst            varchar(100) not null
        primary key,
    ordering       int not null,
    nconst         varchar(100) not null,
    category       varchar(100) not null,
    job varchar(100) null,
    characters varchar(200) null
);
