--
-- File generated with SQLiteStudio v3.2.1 on sre. okt. 21 11:13:56 2020
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: ekipa
DROP TABLE IF EXISTS ekipa;

CREATE TABLE ekipa (
    id  INTEGER PRIMARY KEY,
    ime TEXT    NOT NULL
                UNIQUE
);


-- Table: igralec
DROP TABLE IF EXISTS igralec;

CREATE TABLE igralec (
    id       INTEGER PRIMARY KEY,
    ime      TEXT    NOT NULL,
    priimek  TEXT    NOT NULL,
    st_dresa         NOT NULL,
    ekipa    INTEGER REFERENCES ekipa (id) 
                     NOT NULL,
    UNIQUE (
        st_dresa,
        ekipa
    )
);


-- Table: statistika
DROP TABLE IF EXISTS statistika;

CREATE TABLE statistika (
    igralec INTEGER REFERENCES igralec (id) 
                    NOT NULL,
    tekma   INTEGER REFERENCES tekma (id) 
                    NOT NULL,
    toèke   INTEGER,
    skoki   INTEGER,
    podaje  INTEGER
);


-- Table: tekma
DROP TABLE IF EXISTS tekma;

CREATE TABLE tekma (
    id     INTEGER PRIMARY KEY,
    datum  DATE    NOT NULL,
    domaèi INTEGER REFERENCES ekipa (id) 
                   NOT NULL,
    gosti  INTEGER REFERENCES ekipa (id) 
                   NOT NULL
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
