import sqlite3

conn = sqlite3.connect("kosarka_turnir")

class Igralec:
    def __init__(self, id, ime, priimek, st_dresa, ekipa):
        self.id = id
        self.ime =  ime
        self.priimek = priimek
        self.st_dresa = st_dresa
        self.ekipa = ekipa
        
    def __str__(self):
        return self.ime + " " + self.priimek
    
    @staticmethod
    def najboljsi_na_turnirju():
        '''vrne igralca z največ doseženimi točkami na turnirju,
        v primeru ko je takšnih igralcev več vrne prvega po abecedi.'''
        sql = '''
            SELECT id,
                   ime,
                   priimek,
                   st_dresa,
                   ekipa
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
            ORDER BY točke DESC
            LIMIT 1;
        '''
        for id, ime, priimek, st_dresa, ekipa in conn.execute(sql):
            najboljši = Igralec(id, ime, priimek, st_dresa, ekipa)
        return najboljši
    
    def najboljsi_podajalec():
        '''vrne igralca z največ doseženimi točkami na turnirju,
        v primeru ko je takšnih igralcev več vrne prvega po abecedi.'''
        sql = '''
            SELECT id,
                   ime,
                   priimek,
                   st_dresa,
                   ekipa
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
            ORDER BY podaje DESC
            LIMIT 1;
        '''
        for id, ime, priimek, st_dresa, ekipa in conn.execute(sql):
            najboljši = Igralec(id, ime, priimek, st_dresa, ekipa)
        return najboljši
    
    def najboljsi_skakalec():
        '''vrne igralca z največ doseženimi točkami na turnirju,
        v primeru ko je takšnih igralcev več vrne prvega po abecedi.'''
        sql = '''
            SELECT id,
                   ime,
                   priimek,
                   st_dresa,
                   ekipa
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
            ORDER BY skoki DESC
            LIMIT 1;
        '''
        for id, ime, priimek, st_dresa, ekipa in conn.execute(sql):
            najboljši = Igralec(id, ime, priimek, st_dresa, ekipa)
        return najboljši
    
    def lestvica_rezultatov():
        '''Vrne tabelo ekip, urejenih po rezultatih (prva
        ekipa v tabeli je zmagovalna) '''
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
            j = i + 1
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
                if domači_rez == gosti_rez:
                    slovar_rez[domači] = slovar_rez[domači] + 1
                    slovar_rez[gosti] = slovar_rez[gosti] + 1
                if domači_rez < gosti_rez:
                    slovar_rez[gosti] = slovar_rez[gosti] + 3
                
                
        tab_ekip = [] #tabela ekip urejenih po vrstnem redu (prva je zmagovalna)
        for ključ in slovar_rez:
            maks = max(slovar_rez.values())
            for ključ2 in slovar_rez:
                if slovar_rez[ključ2] == maks:
                    tab_ekip.append(ključ2)
                    slovar_rez[ključ2] = 0 #nastavimo vrednost na 0
                    break
        
        return tab_ekip #uredimo slovar in vrnemo urejeno tabelo ključev (urejeno po vrednostih)
    
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
        return list(conn.execute(sql))
        
                
                
print(Igralec.najboljsi_skakalec()) #najboljsi po kat. vrnejo samo imena in priimke
print(Igralec.povprečja()) #vrne tabelo tuple-ov kjer so elementi imena, priimki, pripadajoča ekipa in povprečja po kat.
            



