import sqlite3
import pomozne_fun
conn = sqlite3.connect("kosarka_turnir")

        

def najboljsi_na_turnirju():
    '''vrne igralca z največ doseženimi točkami na turnirju,
    v primeru ko je takšnih igralcev več vrne prvega po abecedi.'''
    sql = '''
    SELECT 
               ime,
               priimek
            FROM (
                   SELECT igralec,
                         sum(točke) AS točke,
                          sum(skoki) AS skoki,
                           sum(podaje) AS podaje
                      FROM statistika
                      GROUP BY igralec
              )
                JOIN
                igralec ON igralec = igralec.id
         ORDER BY točke DESC;
     '''
    ime_prii = conn.execute(sql).fetchone()
    ime = ime_prii[0]
    priimek = ime_prii[1]
    return '{0} {1}'.format(ime, priimek)
    
def najboljsi_podajalec():
     '''vrne igralca z največ doseženimi točkami na turnirju,
     v primeru ko je takšnih igralcev več vrne prvega po abecedi.'''
     sql = '''
         SELECT ime,
                priimek
          FROM (
                    SELECT igralec,
                           sum(točke) AS točke,
                           sum(skoki) AS skoki,
                           sum(podaje) AS podaje
                      FROM statistika
                     GROUP BY igralec
                )
                JOIN
                igralec ON igralec = igralec.id
         ORDER BY podaje DESC;
     '''
     ime_prii = conn.execute(sql).fetchone()
     ime = ime_prii[0]
     priimek = ime_prii[1]
     return '{0} {1}'.format(ime, priimek)
 
def najboljsi_skakalec():
    '''vrne igralca z največ doseženimi točkami na turnirju,
    v primeru ko je takšnih igralcev več vrne prvega po abecedi.'''
    sql = '''
        SELECT ime,
               priimek
          FROM (
                   SELECT igralec,
                          sum(točke) AS točke,
                           sum(skoki) AS skoki,
                           sum(podaje) AS podaje
                     FROM statistika
                     GROUP BY igralec
                )
                JOIN
                igralec ON igralec = igralec.id
         ORDER BY skoki DESC;
     '''
    ime_prii = conn.execute(sql).fetchone()
    ime = ime_prii[0]
    priimek = ime_prii[1]
    return '{0} {1}'.format(ime, priimek)

def rezultati_tekem():
    '''vrne slovar, katerega ključi so id-ji tekem, njihove vrednosti pa tabele z dvema elemntoma, prvi je število
        točk domače ekipe, drugi pa gostujoče'''
    slovar_rez = dict()
    for i in range(28): #za vsako tekmo pogledamo kateri ekipi sta tekmovali na njej
        j = i+1
        slovar_rez[j] = list()
        sql = '''
            SELECT domači,
              gosti
              FROM tekma
              WHERE tekma.id = ?;
         '''
        for domači, gosti in conn.execute(sql, [j]): #pogledamo katera ekipa je dosegla koliko točk
              sql = '''
                  SELECT SUM(statistika.točke) 
                  FROM tekma
                  JOIN
                  statistika ON tekma.id = statistika.tekma
                  JOIN
                  igralec ON statistika.igralec = igralec.id
                  WHERE tekma.id = ? AND 
                  igralec.ekipa = ?;
              '''
              for točke in conn.execute(sql, [j, domači]): #pogledamo točke prve ekipe
                  slovar_rez[j].append(točke[0])
                  
              sql = '''
                SELECT SUM(statistika.točke) 
                  FROM tekma
                  JOIN
                  statistika ON tekma.id = statistika.tekma
                  JOIN
                  igralec ON statistika.igralec = igralec.id
                  WHERE tekma.id = ? AND 
                  igralec.ekipa = ?;
              '''
              for točke in conn.execute(sql, [j, gosti]): #pogledamo točke druge ekipe
                  slovar_rez[j].append(točke[0])
    koncani_sl = dict() #slovar kateremu priredim ključe              
    for kl in slovar_rez.keys(): #ključe spremenim v tuple imen ekip
        koncani_sl[pomozne_fun.ekipi_from_tekma(kl)] = slovar_rez[kl]
    
    return koncani_sl #vrnemo slovar kakršnega smo želeli
 
def lestvica_rezultatov():
    '''Vrne urejen slovar ekip, kjer so ključi idji ekip in vrednosti število točk, ki so jih dosegle '''
    slovar_rez = dict() #slovar rezultatov: ključ je id ekipe, vrednost je dosežene točke (3 za zmago 1 za remi 0 za poraz)
    sql = '''
        SELECT id
        FROM ekipa;
      '''
    i = 1
    for _ in conn.execute(sql): #začetne točke posamezne ekipe nastavimo na 0
        slovar_rez[i] = 0
        i += 1
    
    for i in range(28): #za vsako tekmo pogledamo kateri ekipi sta tekmovali na njej
        j = i+1
        sql = '''
            SELECT domači,
              gosti
              FROM tekma
              WHERE tekma.id = ?;
         '''
        for domači, gosti in conn.execute(sql, [j]): #pogledamo katera ekipa je dosegla koliko točk (katera je zmagala)
              sql = '''
                  SELECT SUM(statistika.točke) 
                  FROM tekma
                  JOIN
                  statistika ON tekma.id = statistika.tekma
                  JOIN
                  igralec ON statistika.igralec = igralec.id
                  WHERE tekma.id = ? AND 
                  igralec.ekipa = ?;
              '''
              for točke in conn.execute(sql, [j, domači]): #pogledamo točke prve ekipe
                  domači_rez = točke
              sql = '''
                SELECT SUM(statistika.točke) 
                  FROM tekma
                  JOIN
                  statistika ON tekma.id = statistika.tekma
                  JOIN
                  igralec ON statistika.igralec = igralec.id
                  WHERE tekma.id = ? AND 
                  igralec.ekipa = ?;
              '''
              for točke in conn.execute(sql, [j, gosti]): #pogledamo točke druge ekipe
                  gosti_rez = točke
              
              if domači_rez > gosti_rez: #dodamo ustrezne točke v slovar rezultatov
                  slovar_rez[domači] = slovar_rez[domači] + 3
              elif domači_rez == gosti_rez:
                  slovar_rez[domači] = slovar_rez[domači] + 1
                  slovar_rez[gosti] = slovar_rez[gosti] + 1
              elif domači_rez < gosti_rez:
                  slovar_rez[gosti] = slovar_rez[gosti] + 3          

    urejen_sl = {}
    for ključ in slovar_rez:
        maks = max(slovar_rez.values())
        for ključ2 in slovar_rez:
            if slovar_rez[ključ2] == maks:
                urejen_sl[pomozne_fun.ekipa(ključ2)] = maks
                slovar_rez[ključ2] = 0 #nastavimo vrednost na 0
                break
    
    return urejen_sl #uredimo slovar in vrnemo urejen slovar, kjer so ključi id ekip in vrednosti končno število točk

def povprečja():
    '''vrne povprečno število doseženih točk, podaj, skokov ter pripadajočo ekipo vseh igralcev.'''
    sql = '''
        SELECT igralec.ime,
               priimek,
               ekipa.ime,
                round(avg(točke), 0),
                round(avg(skoki), 0),
               round(avg(podaje), 0)
           FROM (
                   statistika
                    JOIN
                    igralec ON igralec.id = statistika.igralec
                )
                JOIN
                ekipa ON igralec.ekipa = ekipa.id
          GROUP BY igralec;
     '''
    return conn.execute(sql).fetchall()

def seznam_ekip():
    '''vrne seznam imen ekip'''
    sql = '''
        SELECT ime
          FROM ekipa;
    '''
    tab_ekip = []
    for ime in conn.execute(sql):
        tab_ekip.append(ime[0])
    return tab_ekip

def seznam_igralcev(ekipa1, ekipa2):
    '''vrne seznam igralcev ki so igrali na tekmi med ekipa1 in ekipa2'''
    sql1 = '''
        SELECT id
          FROM ekipa
         WHERE ime = ?;
    '''
    sql2 = '''
        SELECT igralec.ime,
               igralec.priimek,
               tekma.gosti,
               tekma.domači
          FROM tekma
               JOIN
               statistika ON tekma.id = statistika.tekma
               JOIN
               igralec ON statistika.igralec = igralec.id
         WHERE (domači = ? AND 
               gosti = ?) OR 
               (domači = ? AND 
               gosti = ?);
    '''
    prva = conn.execute(sql1, [ekipa1]).fetchone() #pridobimo id-je ekip
    id1 = prva[0]
    druga = conn.execute(sql1, [ekipa2]).fetchone()
    id2 = druga[0]
    tab_igralcev = []
    for ime, priimek, gosti, domači in conn.execute(sql2, [id1, id2, id2, id1]): #poiščemo igralce ki, so igrali na tekmi med ekipa1 in ekipa2
        tab_igralcev.append(ime + '_' + priimek + '_' + str(gosti) + '_' + str(domači))
    return tab_igralcev

def spremeni_ime_ekipe(ime, novo_ime):
    '''spremeni ime ekipe v novo ime'''
    sql1 ='''
        BEGIN TRANSACTION;
    '''
    sql2 = '''
        UPDATE ekipa
           SET ime = ?
         WHERE ime = ?
    '''
    sql3 ='''
        COMMIT TRANSACTION;
    '''
    conn.execute(sql1)
    conn.execute(sql2, [novo_ime, ime])
    conn.execute(sql3)
    return None

def spremeni_statistiko_igralca(ime, priimek, id1, id2, tocke, podaje, skoki):
    '''funkcija spremeni statistiko igralca na tekmi med ekipama z id-ji id1 in id2,
    določi mu "nove" točke, podaje in skoke'''
    sql1 = '''
        SELECT id
          FROM tekma
         WHERE (domači = ? AND 
                gosti = ?) OR 
               (domači = ? AND 
                gosti = ?);
    '''
    id_tekme = conn.execute(sql1, [id1, id2, id2, id1]).fetchone()
    id_tekme = id_tekme[0]
    sql2 = '''
        SELECT id
          FROM igralec
         WHERE ime = ? AND
               priimek = ?;
    '''
    id_igralca = conn.execute(sql2, [ime, priimek]).fetchone()
    id_igralca = id_igralca[0]
    sql3 ='''
        BEGIN TRANSACTION;
    '''
    sql4 = '''
        UPDATE statistika
           SET točke = ?,
               podaje = ?,
               skoki = ?
         WHERE igralec = ? AND 
               tekma = ?;
    '''
    sql5 ='''
        COMMIT TRANSACTION;
    '''
    conn.execute(sql3)
    conn.execute(sql4, [tocke, podaje, skoki, id_igralca, id_tekme])
    conn.execute(sql5)
    return None

def rezultat_igralca_na_tekmi(ime, priimek, id1, id2):
    '''vrne tabelo v kateri so: ime, priimek, št. točk, št. podaj, št. skokov, prva ekipa, druga ekipa.
    Te točke, podaje in skoke je igralec dosegel na tekmi med ekipama z id-ji id1 in id2'''
    sql = '''
        SELECT igralec.ime,
               igralec.priimek,
               statistika.točke,
               statistika.podaje,
               statistika.skoki
          FROM tekma
               JOIN
               statistika ON tekma.id = statistika.tekma
               JOIN
               igralec ON statistika.igralec = igralec.id
         WHERE igralec.ime = ? AND 
               igralec.priimek = ? AND 
               ( (tekma.domači = ? AND 
                  tekma.gosti = ?) OR 
                 (tekma.domači = ? AND 
                  tekma.gosti = ?) );
               '''
    podatki = [] # elementi v tabeli si sledijo: ime, priimek, št skokov, pt podaj, ekipa1, ekipa2
    for ime, priimek, točke, podaje, skoki in conn.execute(sql, [ime, priimek, id1, id2, id2, id1]): #poiščemo statistiko igralca na tekmi
        ekipa1 = pomozne_fun.ekipa(id1)
        ekipa2 = pomozne_fun.ekipa(id2)
        podatki = [ime, priimek, točke, podaje, skoki, ekipa1, ekipa2]
    return podatki


conn.execute('VACUUM')
                
