import sqlite3

def naredi_bazo():
    '''funkcija bazo ponastavi (obstoječe tabele izbriše in uvozi začetne podatke)'''
    ime_datoteke_z_bazo = 'Kosarka_turnir'
    conn = sqlite3.connect(ime_datoteke_z_bazo)
    # Ustvarimo tabele in uvozimo podatke iz DDL datoteke
    with open('Kosarka_turnir.sql') as datoteka_z_sql_ukazi:
        ddl = datoteka_z_sql_ukazi.read()
        conn.executescript(ddl)
    conn.execute('VACUUM')
    
naredi_bazo()