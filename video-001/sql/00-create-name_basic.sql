create table name_basic
(
    nconst            varchar(100) not null
        primary key,
    primaryName       varchar(100) null,
    birthYear         smallint     null,
    deathYear         smallint     null,
    primaryProfession varchar(200) null,
    knownForTitles    varchar(200) null
);
