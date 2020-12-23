--
-- File generated with SQLiteStudio v3.2.1 on pet. dec. 18 13:30:41 2020
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

INSERT INTO ekipa (
                      id,
                      ime
                  )
                  VALUES (
                      1,
                      'Outsiders'
                  );

INSERT INTO ekipa (
                      id,
                      ime
                  )
                  VALUES (
                      2,
                      'Lakers'
                  );

INSERT INTO ekipa (
                      id,
                      ime
                  )
                  VALUES (
                      3,
                      'Janezi'
                  );

INSERT INTO ekipa (
                      id,
                      ime
                  )
                  VALUES (
                      4,
                      'Juventus'
                  );

INSERT INTO ekipa (
                      id,
                      ime
                  )
                  VALUES (
                      5,
                      'Pink panther'
                  );

INSERT INTO ekipa (
                      id,
                      ime
                  )
                  VALUES (
                      6,
                      'Leseni'
                  );

INSERT INTO ekipa (
                      id,
                      ime
                  )
                  VALUES (
                      7,
                      'Selecao'
                  );

INSERT INTO ekipa (
                      id,
                      ime
                  )
                  VALUES (
                      8,
                      'Heat'
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

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        1,
                        'Hammad',
                        'Moncreif',
                        '76',
                        1
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        2,
                        'Wyndham',
                        'Abramovici',
                        '44',
                        1
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        3,
                        'Julio',
                        'Scorey',
                        '2',
                        1
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        4,
                        'Mikey',
                        'Vice',
                        '1',
                        1
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        5,
                        'Swen',
                        'Jecks',
                        '27',
                        1
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        6,
                        'Andris',
                        'Corbie',
                        '78',
                        1
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        7,
                        'Neal',
                        'McDougald',
                        '52',
                        1
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        8,
                        'Brose',
                        'Clougher',
                        '81',
                        1
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        9,
                        'Cortie',
                        'Sandercock',
                        '95',
                        1
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        10,
                        'Field',
                        'Panks',
                        '72',
                        1
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        11,
                        'Reinald',
                        'Boxe',
                        '12',
                        2
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        12,
                        'Vito',
                        'Ashwell',
                        '76',
                        2
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        13,
                        'Nikolos',
                        'Kevane',
                        '63',
                        2
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        14,
                        'Des',
                        'Roostan',
                        '51',
                        2
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        15,
                        'Wolfy',
                        'Jellybrand',
                        '83',
                        2
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        16,
                        'Nikolaos',
                        'Craddock',
                        '37',
                        2
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        17,
                        'Constantino',
                        'Manchester',
                        '94',
                        2
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        18,
                        'Mohandis',
                        'Sibthorpe',
                        '4',
                        2
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        19,
                        'Waylon',
                        'Karlolczak',
                        '97',
                        2
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        20,
                        'Taylor',
                        'Assiter',
                        '78',
                        2
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        21,
                        'Dewitt',
                        'Stembridge',
                        '42',
                        3
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        22,
                        'Tirrell',
                        'Laister',
                        '56',
                        3
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        23,
                        'Hubey',
                        'Howe',
                        '39',
                        3
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        24,
                        'Rowland',
                        'Pauncefort',
                        '48',
                        3
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        25,
                        'Farley',
                        'Derby',
                        '12',
                        3
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        26,
                        'Humphrey',
                        'Middlemist',
                        '66',
                        3
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        27,
                        'Barris',
                        'Sends',
                        '22',
                        3
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        28,
                        'Nev',
                        'Grimmolby',
                        '43',
                        3
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        29,
                        'Kimball',
                        'Peirson',
                        '34',
                        3
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        30,
                        'Donn',
                        'Hudson',
                        '6',
                        3
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        31,
                        'Valle',
                        'Chatto',
                        '8',
                        4
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        32,
                        'Salomon',
                        'Struttman',
                        '96',
                        4
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        33,
                        'Brod',
                        'Earley',
                        '42',
                        4
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        34,
                        'Donal',
                        'Saffin',
                        '62',
                        4
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        35,
                        'Clayborne',
                        'Shewsmith',
                        '61',
                        4
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        36,
                        'Clemens',
                        'Shurman',
                        '83',
                        4
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        37,
                        'Worthington',
                        'Doughty',
                        '2',
                        4
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        38,
                        'Dave',
                        'Pickup',
                        '91',
                        4
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        39,
                        'Addison',
                        'Zelake',
                        '56',
                        4
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        40,
                        'Ferrell',
                        'Latch',
                        '5',
                        4
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        41,
                        'Aubrey',
                        'Basten',
                        '66',
                        5
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        42,
                        'Calvin',
                        'Debrett',
                        '40',
                        5
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        43,
                        'Correy',
                        'Arnison',
                        '26',
                        5
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        44,
                        'Christoffer',
                        'Figura',
                        '79',
                        5
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        45,
                        'Zane',
                        'Foskin',
                        '95',
                        5
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        46,
                        'Panchito',
                        'Hardy',
                        '11',
                        5
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        47,
                        'Sutherland',
                        'Penhearow',
                        '38',
                        5
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        48,
                        'Quintus',
                        'Ebbin',
                        '75',
                        5
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        49,
                        'Pattie',
                        'Fontaine',
                        '34',
                        5
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        50,
                        'Lucais',
                        'Esley',
                        '77',
                        5
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        51,
                        'Robbie',
                        'Shawyers',
                        '78',
                        6
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        52,
                        'Clemmie',
                        'Purton',
                        '82',
                        6
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        53,
                        'Frasquito',
                        'Pairpoint',
                        '31',
                        6
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        54,
                        'Humbert',
                        'Itzhaiek',
                        '11',
                        6
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        55,
                        'Erv',
                        'Lowen',
                        '61',
                        6
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        56,
                        'Gearard',
                        'Shirrell',
                        '60',
                        6
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        57,
                        'Marshall',
                        'Dusting',
                        '84',
                        6
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        58,
                        'Galvan',
                        'Collymore',
                        '45',
                        6
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        59,
                        'Arnuad',
                        'Turbefield',
                        '57',
                        6
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        60,
                        'Munmro',
                        'Trattles',
                        '25',
                        6
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        61,
                        'Glenn',
                        'Elcy',
                        '6',
                        7
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        62,
                        'Arney',
                        'Doreward',
                        '91',
                        7
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        63,
                        'Cross',
                        'Botten',
                        '52',
                        7
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        64,
                        'Archy',
                        'Mingey',
                        '61',
                        7
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        65,
                        'Cosimo',
                        'Courage',
                        '30',
                        7
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        66,
                        'Temp',
                        'Babbs',
                        '44',
                        7
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        67,
                        'Boycie',
                        'Heigho',
                        '56',
                        7
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        68,
                        'Freeland',
                        'Thies',
                        '70',
                        7
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        69,
                        'Sammie',
                        'Mitskevich',
                        '20',
                        7
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        70,
                        'Berkeley',
                        'Denford',
                        '67',
                        7
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        71,
                        'Nikita',
                        'Corrigan',
                        '89',
                        8
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        72,
                        'Vic',
                        'Norledge',
                        '25',
                        8
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        73,
                        'Ravid',
                        'Brockman',
                        '66',
                        8
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        74,
                        'Orren',
                        'Kardos',
                        '48',
                        8
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        75,
                        'Edik',
                        'Pesselt',
                        '74',
                        8
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        76,
                        'Archy',
                        'Bampfield',
                        '85',
                        8
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        77,
                        'Ham',
                        'Wegenen',
                        '41',
                        8
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        78,
                        'Thurstan',
                        'Jeannel',
                        '26',
                        8
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        79,
                        'Lay',
                        'Iianon',
                        '33',
                        8
                    );

INSERT INTO igralec (
                        id,
                        ime,
                        priimek,
                        st_dresa,
                        ekipa
                    )
                    VALUES (
                        80,
                        'Ulrick',
                        'Dy',
                        '57',
                        8
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

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           1,
                           1,
                           14,
                           4,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           1,
                           2,
                           14,
                           3,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           1,
                           3,
                           14,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           1,
                           4,
                           1,
                           0,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           1,
                           5,
                           0,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           1,
                           6,
                           11,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           1,
                           7,
                           10,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           2,
                           1,
                           24,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           2,
                           2,
                           1,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           2,
                           3,
                           8,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           2,
                           4,
                           2,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           2,
                           5,
                           11,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           2,
                           6,
                           12,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           2,
                           7,
                           4,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           3,
                           1,
                           20,
                           6,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           3,
                           2,
                           2,
                           0,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           3,
                           3,
                           10,
                           6,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           3,
                           4,
                           5,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           3,
                           5,
                           4,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           3,
                           6,
                           9,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           3,
                           7,
                           12,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           4,
                           1,
                           4,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           4,
                           2,
                           11,
                           6,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           4,
                           3,
                           1,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           4,
                           4,
                           12,
                           1,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           4,
                           5,
                           12,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           4,
                           6,
                           13,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           4,
                           7,
                           11,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           5,
                           1,
                           6,
                           3,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           5,
                           2,
                           14,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           5,
                           3,
                           12,
                           1,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           5,
                           4,
                           3,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           5,
                           5,
                           4,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           5,
                           6,
                           10,
                           3,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           5,
                           7,
                           11,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           6,
                           1,
                           2,
                           3,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           6,
                           2,
                           9,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           6,
                           3,
                           6,
                           1,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           6,
                           4,
                           14,
                           4,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           6,
                           5,
                           11,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           6,
                           6,
                           8,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           6,
                           7,
                           8,
                           6,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           7,
                           1,
                           2,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           7,
                           2,
                           4,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           7,
                           3,
                           13,
                           4,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           7,
                           4,
                           12,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           7,
                           5,
                           7,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           7,
                           6,
                           4,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           7,
                           7,
                           13,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           8,
                           1,
                           28,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           8,
                           2,
                           7,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           8,
                           3,
                           15,
                           0,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           8,
                           4,
                           8,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           8,
                           5,
                           15,
                           0,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           8,
                           6,
                           4,
                           4,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           8,
                           7,
                           11,
                           0,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           9,
                           1,
                           8,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           9,
                           2,
                           3,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           9,
                           3,
                           12,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           9,
                           4,
                           4,
                           0,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           9,
                           5,
                           2,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           9,
                           6,
                           7,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           9,
                           7,
                           4,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           10,
                           1,
                           8,
                           4,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           10,
                           2,
                           14,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           10,
                           3,
                           3,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           10,
                           4,
                           1,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           10,
                           5,
                           9,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           10,
                           6,
                           9,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           10,
                           7,
                           14,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           11,
                           1,
                           2,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           11,
                           8,
                           15,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           11,
                           9,
                           13,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           11,
                           10,
                           1,
                           6,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           11,
                           11,
                           12,
                           3,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           11,
                           12,
                           4,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           11,
                           13,
                           2,
                           0,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           12,
                           1,
                           2,
                           4,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           12,
                           8,
                           0,
                           6,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           12,
                           9,
                           9,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           12,
                           10,
                           9,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           12,
                           11,
                           6,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           12,
                           12,
                           22,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           12,
                           13,
                           12,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           13,
                           1,
                           8,
                           3,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           13,
                           8,
                           7,
                           0,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           13,
                           9,
                           9,
                           1,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           13,
                           10,
                           7,
                           1,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           13,
                           11,
                           0,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           13,
                           12,
                           24,
                           2,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           13,
                           13,
                           10,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           14,
                           1,
                           12,
                           4,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           14,
                           8,
                           2,
                           2,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           14,
                           9,
                           11,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           14,
                           10,
                           5,
                           4,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           14,
                           11,
                           13,
                           0,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           14,
                           12,
                           30,
                           0,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           14,
                           13,
                           1,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           15,
                           1,
                           14,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           15,
                           8,
                           10,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           15,
                           9,
                           13,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           15,
                           10,
                           4,
                           0,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           15,
                           11,
                           9,
                           4,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           15,
                           12,
                           18,
                           6,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           15,
                           13,
                           6,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           16,
                           1,
                           22,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           16,
                           8,
                           7,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           16,
                           9,
                           10,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           16,
                           10,
                           4,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           16,
                           11,
                           5,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           16,
                           12,
                           10,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           16,
                           13,
                           1,
                           3,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           17,
                           1,
                           10,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           17,
                           8,
                           6,
                           2,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           17,
                           9,
                           11,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           17,
                           10,
                           14,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           17,
                           11,
                           6,
                           0,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           17,
                           12,
                           10,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           17,
                           13,
                           5,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           18,
                           1,
                           18,
                           2,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           18,
                           8,
                           7,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           18,
                           9,
                           12,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           18,
                           10,
                           6,
                           1,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           18,
                           11,
                           12,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           18,
                           12,
                           8,
                           6,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           18,
                           13,
                           8,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           19,
                           1,
                           10,
                           2,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           19,
                           8,
                           15,
                           4,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           19,
                           9,
                           10,
                           3,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           19,
                           10,
                           5,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           19,
                           11,
                           1,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           19,
                           12,
                           2,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           19,
                           13,
                           4,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           20,
                           1,
                           22,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           20,
                           8,
                           1,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           20,
                           9,
                           14,
                           0,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           20,
                           10,
                           10,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           20,
                           11,
                           3,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           20,
                           12,
                           6,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           20,
                           13,
                           1,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           21,
                           2,
                           15,
                           2,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           21,
                           8,
                           0,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           21,
                           14,
                           9,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           21,
                           15,
                           24,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           21,
                           16,
                           13,
                           3,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           21,
                           17,
                           0,
                           6,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           21,
                           18,
                           13,
                           0,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           22,
                           2,
                           8,
                           6,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           22,
                           8,
                           3,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           22,
                           14,
                           4,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           22,
                           15,
                           14,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           22,
                           16,
                           10,
                           4,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           22,
                           17,
                           14,
                           1,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           22,
                           18,
                           2,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           23,
                           2,
                           14,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           23,
                           8,
                           0,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           23,
                           14,
                           11,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           23,
                           15,
                           24,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           23,
                           16,
                           5,
                           6,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           23,
                           17,
                           18,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           23,
                           18,
                           3,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           24,
                           2,
                           8,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           24,
                           8,
                           9,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           24,
                           14,
                           4,
                           0,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           24,
                           15,
                           26,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           24,
                           16,
                           3,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           24,
                           17,
                           4,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           24,
                           18,
                           15,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           25,
                           2,
                           2,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           25,
                           8,
                           15,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           25,
                           14,
                           9,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           25,
                           15,
                           8,
                           6,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           25,
                           16,
                           13,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           25,
                           17,
                           2,
                           4,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           25,
                           18,
                           11,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           26,
                           2,
                           3,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           26,
                           8,
                           13,
                           4,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           26,
                           14,
                           11,
                           3,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           26,
                           15,
                           6,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           26,
                           16,
                           14,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           26,
                           17,
                           30,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           26,
                           18,
                           10,
                           3,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           27,
                           2,
                           14,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           27,
                           8,
                           9,
                           1,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           27,
                           14,
                           14,
                           0,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           27,
                           15,
                           16,
                           3,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           27,
                           16,
                           2,
                           4,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           27,
                           17,
                           24,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           27,
                           18,
                           3,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           28,
                           2,
                           2,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           28,
                           8,
                           0,
                           0,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           28,
                           14,
                           5,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           28,
                           15,
                           2,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           28,
                           16,
                           10,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           28,
                           17,
                           30,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           28,
                           18,
                           6,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           29,
                           2,
                           1,
                           0,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           29,
                           8,
                           2,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           29,
                           14,
                           13,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           29,
                           15,
                           20,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           29,
                           16,
                           3,
                           1,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           29,
                           17,
                           2,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           29,
                           18,
                           13,
                           0,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           30,
                           2,
                           1,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           30,
                           8,
                           8,
                           1,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           30,
                           14,
                           14,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           30,
                           15,
                           6,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           30,
                           16,
                           5,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           30,
                           17,
                           4,
                           2,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           30,
                           18,
                           2,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           31,
                           3,
                           3,
                           6,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           31,
                           9,
                           1,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           31,
                           14,
                           12,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           31,
                           19,
                           8,
                           3,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           31,
                           20,
                           3,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           31,
                           21,
                           5,
                           2,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           31,
                           22,
                           2,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           32,
                           3,
                           4,
                           4,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           32,
                           9,
                           3,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           32,
                           14,
                           10,
                           4,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           32,
                           19,
                           11,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           32,
                           20,
                           4,
                           1,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           32,
                           21,
                           1,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           32,
                           22,
                           2,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           33,
                           3,
                           7,
                           1,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           33,
                           9,
                           11,
                           4,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           33,
                           14,
                           7,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           33,
                           19,
                           3,
                           4,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           33,
                           20,
                           3,
                           6,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           33,
                           21,
                           8,
                           0,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           33,
                           22,
                           4,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           34,
                           3,
                           4,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           34,
                           9,
                           9,
                           0,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           34,
                           14,
                           5,
                           6,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           34,
                           19,
                           10,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           34,
                           20,
                           11,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           34,
                           21,
                           2,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           34,
                           22,
                           14,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           35,
                           3,
                           9,
                           2,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           35,
                           9,
                           3,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           35,
                           14,
                           6,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           35,
                           19,
                           12,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           35,
                           20,
                           8,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           35,
                           21,
                           10,
                           0,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           35,
                           22,
                           7,
                           0,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           36,
                           3,
                           7,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           36,
                           9,
                           10,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           36,
                           14,
                           2,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           36,
                           19,
                           14,
                           2,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           36,
                           20,
                           14,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           36,
                           21,
                           14,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           36,
                           22,
                           2,
                           2,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           37,
                           3,
                           2,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           37,
                           9,
                           5,
                           6,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           37,
                           14,
                           6,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           37,
                           19,
                           13,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           37,
                           20,
                           8,
                           1,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           37,
                           21,
                           15,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           37,
                           22,
                           9,
                           6,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           38,
                           3,
                           9,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           38,
                           9,
                           2,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           38,
                           14,
                           9,
                           0,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           38,
                           19,
                           12,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           38,
                           20,
                           5,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           38,
                           21,
                           5,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           38,
                           22,
                           4,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           39,
                           3,
                           14,
                           1,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           39,
                           9,
                           12,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           39,
                           14,
                           15,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           39,
                           19,
                           10,
                           1,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           39,
                           20,
                           9,
                           4,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           39,
                           21,
                           6,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           39,
                           22,
                           8,
                           0,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           40,
                           3,
                           15,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           40,
                           9,
                           0,
                           3,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           40,
                           14,
                           12,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           40,
                           19,
                           2,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           40,
                           20,
                           14,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           40,
                           21,
                           11,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           40,
                           22,
                           13,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           41,
                           4,
                           6,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           41,
                           10,
                           6,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           41,
                           15,
                           14,
                           3,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           41,
                           19,
                           2,
                           6,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           41,
                           23,
                           2,
                           3,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           41,
                           24,
                           8,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           41,
                           25,
                           12,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           42,
                           4,
                           13,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           42,
                           10,
                           11,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           42,
                           15,
                           4,
                           6,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           42,
                           19,
                           13,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           42,
                           23,
                           12,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           42,
                           24,
                           2,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           42,
                           25,
                           8,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           43,
                           4,
                           4,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           43,
                           10,
                           12,
                           3,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           43,
                           15,
                           10,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           43,
                           19,
                           3,
                           0,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           43,
                           23,
                           0,
                           0,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           43,
                           24,
                           12,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           43,
                           25,
                           14,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           44,
                           4,
                           1,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           44,
                           10,
                           3,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           44,
                           15,
                           1,
                           4,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           44,
                           19,
                           14,
                           3,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           44,
                           23,
                           14,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           44,
                           24,
                           1,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           44,
                           25,
                           30,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           45,
                           4,
                           12,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           45,
                           10,
                           10,
                           6,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           45,
                           15,
                           3,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           45,
                           19,
                           6,
                           4,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           45,
                           23,
                           2,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           45,
                           24,
                           0,
                           1,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           45,
                           25,
                           20,
                           3,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           46,
                           4,
                           13,
                           1,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           46,
                           10,
                           8,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           46,
                           15,
                           1,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           46,
                           19,
                           2,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           46,
                           23,
                           14,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           46,
                           24,
                           11,
                           4,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           46,
                           25,
                           8,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           47,
                           4,
                           9,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           47,
                           10,
                           13,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           47,
                           15,
                           15,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           47,
                           19,
                           14,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           47,
                           23,
                           0,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           47,
                           24,
                           14,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           47,
                           25,
                           0,
                           2,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           48,
                           4,
                           15,
                           1,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           48,
                           10,
                           6,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           48,
                           15,
                           1,
                           4,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           48,
                           19,
                           12,
                           2,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           48,
                           23,
                           12,
                           6,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           48,
                           24,
                           6,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           48,
                           25,
                           26,
                           3,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           49,
                           4,
                           1,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           49,
                           10,
                           3,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           49,
                           15,
                           8,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           49,
                           19,
                           6,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           49,
                           23,
                           30,
                           4,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           49,
                           24,
                           0,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           49,
                           25,
                           8,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           50,
                           4,
                           13,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           50,
                           10,
                           14,
                           1,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           50,
                           15,
                           10,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           50,
                           19,
                           5,
                           1,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           50,
                           23,
                           18,
                           6,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           50,
                           24,
                           15,
                           1,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           50,
                           25,
                           0,
                           4,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           51,
                           5,
                           8,
                           2,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           51,
                           11,
                           1,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           51,
                           16,
                           12,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           51,
                           20,
                           14,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           51,
                           23,
                           10,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           51,
                           26,
                           7,
                           0,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           51,
                           27,
                           13,
                           3,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           52,
                           5,
                           6,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           52,
                           11,
                           11,
                           1,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           52,
                           16,
                           16,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           52,
                           20,
                           2,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           52,
                           23,
                           14,
                           6,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           52,
                           26,
                           14,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           52,
                           27,
                           1,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           53,
                           5,
                           12,
                           0,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           53,
                           11,
                           5,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           53,
                           16,
                           0,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           53,
                           20,
                           11,
                           6,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           53,
                           23,
                           8,
                           6,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           53,
                           26,
                           10,
                           6,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           53,
                           27,
                           13,
                           4,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           54,
                           5,
                           0,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           54,
                           11,
                           1,
                           3,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           54,
                           16,
                           14,
                           0,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           54,
                           20,
                           12,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           54,
                           23,
                           3,
                           3,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           54,
                           26,
                           10,
                           6,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           54,
                           27,
                           10,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           55,
                           5,
                           14,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           55,
                           11,
                           7,
                           2,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           55,
                           16,
                           2,
                           4,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           55,
                           20,
                           6,
                           4,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           55,
                           23,
                           3,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           55,
                           26,
                           4,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           55,
                           27,
                           12,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           56,
                           5,
                           9,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           56,
                           11,
                           5,
                           3,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           56,
                           16,
                           2,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           56,
                           20,
                           10,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           56,
                           23,
                           11,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           56,
                           26,
                           6,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           56,
                           27,
                           15,
                           2,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           57,
                           5,
                           5,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           57,
                           11,
                           13,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           57,
                           16,
                           2,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           57,
                           20,
                           13,
                           3,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           57,
                           23,
                           13,
                           5,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           57,
                           26,
                           4,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           57,
                           27,
                           14,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           58,
                           5,
                           14,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           58,
                           11,
                           1,
                           0,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           58,
                           16,
                           22,
                           2,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           58,
                           20,
                           10,
                           4,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           58,
                           23,
                           8,
                           1,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           58,
                           26,
                           3,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           58,
                           27,
                           9,
                           2,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           59,
                           5,
                           7,
                           1,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           59,
                           11,
                           14,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           59,
                           16,
                           18,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           59,
                           20,
                           9,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           59,
                           23,
                           1,
                           4,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           59,
                           26,
                           9,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           59,
                           27,
                           8,
                           4,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           60,
                           5,
                           5,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           60,
                           11,
                           10,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           60,
                           16,
                           8,
                           4,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           60,
                           20,
                           12,
                           4,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           60,
                           23,
                           6,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           60,
                           26,
                           11,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           60,
                           27,
                           15,
                           0,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           61,
                           6,
                           14,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           61,
                           12,
                           2,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           61,
                           17,
                           8,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           61,
                           21,
                           12,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           61,
                           24,
                           4,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           61,
                           26,
                           4,
                           3,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           61,
                           28,
                           14,
                           1,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           62,
                           6,
                           6,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           62,
                           12,
                           9,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           62,
                           17,
                           10,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           62,
                           21,
                           9,
                           6,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           62,
                           24,
                           12,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           62,
                           26,
                           14,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           62,
                           28,
                           3,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           63,
                           6,
                           0,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           63,
                           12,
                           12,
                           0,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           63,
                           17,
                           2,
                           6,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           63,
                           21,
                           7,
                           4,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           63,
                           24,
                           8,
                           3,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           63,
                           26,
                           12,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           63,
                           28,
                           15,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           64,
                           6,
                           6,
                           6,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           64,
                           12,
                           8,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           64,
                           17,
                           10,
                           2,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           64,
                           21,
                           10,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           64,
                           24,
                           2,
                           3,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           64,
                           26,
                           14,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           64,
                           28,
                           10,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           65,
                           6,
                           20,
                           3,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           65,
                           12,
                           8,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           65,
                           17,
                           14,
                           3,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           65,
                           21,
                           5,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           65,
                           24,
                           13,
                           1,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           65,
                           26,
                           4,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           65,
                           28,
                           2,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           66,
                           6,
                           2,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           66,
                           12,
                           7,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           66,
                           17,
                           26,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           66,
                           21,
                           14,
                           4,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           66,
                           24,
                           12,
                           0,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           66,
                           26,
                           0,
                           3,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           66,
                           28,
                           6,
                           0,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           67,
                           6,
                           2,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           67,
                           12,
                           7,
                           6,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           67,
                           17,
                           0,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           67,
                           21,
                           12,
                           0,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           67,
                           24,
                           11,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           67,
                           26,
                           18,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           67,
                           28,
                           13,
                           1,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           68,
                           6,
                           0,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           68,
                           12,
                           15,
                           6,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           68,
                           17,
                           4,
                           4,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           68,
                           21,
                           2,
                           3,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           68,
                           24,
                           11,
                           0,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           68,
                           26,
                           20,
                           1,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           68,
                           28,
                           0,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           69,
                           6,
                           4,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           69,
                           12,
                           4,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           69,
                           17,
                           22,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           69,
                           21,
                           9,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           69,
                           24,
                           14,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           69,
                           26,
                           16,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           69,
                           28,
                           3,
                           4,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           70,
                           6,
                           28,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           70,
                           12,
                           15,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           70,
                           17,
                           8,
                           1,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           70,
                           21,
                           13,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           70,
                           24,
                           8,
                           0,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           70,
                           26,
                           8,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           70,
                           28,
                           8,
                           5,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           71,
                           7,
                           0,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           71,
                           13,
                           2,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           71,
                           18,
                           5,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           71,
                           22,
                           0,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           71,
                           25,
                           6,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           71,
                           27,
                           5,
                           4,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           71,
                           28,
                           30,
                           5,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           72,
                           7,
                           8,
                           6,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           72,
                           13,
                           2,
                           0,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           72,
                           18,
                           11,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           72,
                           22,
                           9,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           72,
                           25,
                           7,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           72,
                           27,
                           3,
                           3,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           72,
                           28,
                           10,
                           4,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           73,
                           7,
                           11,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           73,
                           13,
                           12,
                           3,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           73,
                           18,
                           14,
                           1,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           73,
                           22,
                           13,
                           6,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           73,
                           25,
                           4,
                           4,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           73,
                           27,
                           10,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           73,
                           28,
                           20,
                           6,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           74,
                           7,
                           4,
                           2,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           74,
                           13,
                           30,
                           2,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           74,
                           18,
                           14,
                           0,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           74,
                           22,
                           5,
                           4,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           74,
                           25,
                           5,
                           0,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           74,
                           27,
                           14,
                           2,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           74,
                           28,
                           20,
                           4,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           75,
                           7,
                           10,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           75,
                           13,
                           4,
                           0,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           75,
                           18,
                           7,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           75,
                           22,
                           5,
                           2,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           75,
                           25,
                           0,
                           4,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           75,
                           27,
                           13,
                           0,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           75,
                           28,
                           0,
                           1,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           76,
                           7,
                           10,
                           3,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           76,
                           13,
                           28,
                           3,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           76,
                           18,
                           5,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           76,
                           22,
                           10,
                           4,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           76,
                           25,
                           2,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           76,
                           27,
                           15,
                           0,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           76,
                           28,
                           4,
                           2,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           77,
                           7,
                           14,
                           2,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           77,
                           13,
                           8,
                           6,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           77,
                           18,
                           13,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           77,
                           22,
                           11,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           77,
                           25,
                           6,
                           3,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           77,
                           27,
                           15,
                           1,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           77,
                           28,
                           14,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           78,
                           7,
                           6,
                           6,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           78,
                           13,
                           2,
                           5,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           78,
                           18,
                           0,
                           0,
                           4
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           78,
                           22,
                           8,
                           4,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           78,
                           25,
                           11,
                           6,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           78,
                           27,
                           2,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           78,
                           28,
                           18,
                           4,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           79,
                           7,
                           14,
                           4,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           79,
                           13,
                           24,
                           5,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           79,
                           18,
                           10,
                           4,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           79,
                           22,
                           14,
                           3,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           79,
                           25,
                           14,
                           6,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           79,
                           27,
                           14,
                           1,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           79,
                           28,
                           24,
                           6,
                           6
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           80,
                           7,
                           5,
                           4,
                           3
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           80,
                           13,
                           12,
                           5,
                           5
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           80,
                           18,
                           6,
                           5,
                           2
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           80,
                           22,
                           13,
                           1,
                           0
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           80,
                           25,
                           15,
                           1,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           80,
                           27,
                           1,
                           3,
                           1
                       );

INSERT INTO statistika (
                           igralec,
                           tekma,
                           toèke,
                           skoki,
                           podaje
                       )
                       VALUES (
                           80,
                           28,
                           0,
                           5,
                           4
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

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      1,
                      '6/11/2020',
                      1,
                      2
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      2,
                      '2/11/2020',
                      1,
                      3
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      3,
                      '6/11/2020',
                      4,
                      1
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      4,
                      '2/11/2020',
                      1,
                      5
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      5,
                      '6/11/2020',
                      1,
                      6
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      6,
                      '2/11/2020',
                      7,
                      1
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      7,
                      '6/11/2020',
                      8,
                      1
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      8,
                      '2/11/2020',
                      3,
                      2
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      9,
                      '6/11/2020',
                      4,
                      2
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      10,
                      '2/11/2020',
                      2,
                      5
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      11,
                      '6/11/2020',
                      6,
                      2
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      12,
                      '2/11/2020',
                      2,
                      7
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      13,
                      '6/11/2020',
                      8,
                      2
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      14,
                      '2/11/2020',
                      3,
                      4
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      15,
                      '6/11/2020',
                      5,
                      3
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      16,
                      '2/11/2020',
                      6,
                      3
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      17,
                      '6/11/2020',
                      7,
                      3
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      18,
                      '2/11/2020',
                      3,
                      8
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      19,
                      '6/11/2020',
                      4,
                      5
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      20,
                      '2/11/2020',
                      4,
                      6
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      21,
                      '6/11/2020',
                      7,
                      4
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      22,
                      '2/11/2020',
                      8,
                      4
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      23,
                      '6/11/2020',
                      5,
                      6
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      24,
                      '2/11/2020',
                      7,
                      5
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      25,
                      '6/11/2020',
                      8,
                      5
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      26,
                      '2/11/2020',
                      6,
                      7
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      27,
                      '6/11/2020',
                      6,
                      8
                  );

INSERT INTO tekma (
                      id,
                      datum,
                      domaèi,
                      gosti
                  )
                  VALUES (
                      28,
                      '2/11/2020',
                      8,
                      7
                  );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
