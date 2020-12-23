#iz številke v pripadajočo ekipo
import sqlite3
conn = sqlite3.connect("kosarka_turnir")
def ekipa(id):
    '''kot argument dobi id ekipe ter poišče ime ekipe'''
    sql = '''SELECT ime
               FROM ekipa
              WHERE id = ?;'''
    return conn.execute(sql, [id]).fetchone()[0]

def ekipi_from_tekma(id):
    '''kot argument prejme id tekme, ter vrne tuple dveh elementov, prvi je ime prve ekipe, drugi pa ime druge ekipe'''
    sql = '''SELECT domači,
               gosti
              FROM tekma
             WHERE id = ?;'''
    return (ekipa(conn.execute(sql, [id]).fetchone()[0]), ekipa(conn.execute(sql, [id]).fetchone()[1]))

def id_ekipe(ekipa):
    '''kot argument dobi ime ekipe ter poišče id ekipe'''
    sql = '''SELECT id
               FROM ekipa
              WHERE ime = ?;'''
    return conn.execute(sql, [ekipa]).fetchone()[0]