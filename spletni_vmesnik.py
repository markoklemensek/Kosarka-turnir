import bottle
import model
import pomozne_fun

@bottle.get('/')
def zacetna_stran():
    return bottle.template('zacetna_stran.html')

@bottle.get('/najboljsi/')
def najboljsi_posamezniki():
        return bottle.template('naj_posameznik.html', najboljsi = model.najboljsi_na_turnirju(), najboljsi_pod = model.najboljsi_podajalec(), najboljsi_sk = model.najboljsi_skakalec())
    
@bottle.get('/povprečja/')
def povprecja_vseh_igralcev():
    return bottle.template('povp.html', povp_igr = model.povprečja())
        
@bottle.get('/lestvica/')
def final_standings():
    return bottle.template('standings.html', slovar_lestvice = model.lestvica_rezultatov())

@bottle.get('/rezultati/')
def rezultati():
    return bottle.template('rezultati.html', slovar_rezultatov = model.rezultati_tekem())

@bottle.get('/ekipe/')
def ekipe():
    return bottle.template('ekipe.html', seznam_ekip = model.seznam_ekip())

@bottle.get('/spremembe/')
def spremembe():
    ime = bottle.request.query['ime'] # ime je staro ime ekipe
    novo_ime = bottle.request.query['novo_ime'] #novo_ime je novo ime ekipe (uporabnik želi, da to postane novo ime ekipe)
    if novo_ime=="": #če so podatki napačni to sporočimo uporabniku
        return bottle.template('napaka.html', napaka = 'Polje za novo ime ekipe ne sme biti prazno.')
    if not novo_ime[0].isupper():
        return bottle.template('napaka.html', napaka = 'Ime se mora začeti z veliko začetnico.')
    if novo_ime in model.seznam_ekip():
        return bottle.template('napaka.html', napaka = 'Ime ne sme biti enako imenu neke druge ekipe.')
    else: #podatki so pravilni, spremenimo ime ekipe
        model.spremeni_ime_ekipe(ime, novo_ime)
        return bottle.template('spremembe.html', ime = ime, novo_ime = novo_ime)

@bottle.get('/tekme/')
def temke():
    return bottle.template('tekme.html',  seznam_ekip = model.seznam_ekip(), napaka = False)

@bottle.get('/spremembe_tekme/')
def spremembe_tekme():
    ime1 = bottle.request.query['ime1'] #ime1 in ime2 sta imeni ekip
    ime2 = bottle.request.query['ime2']
    if ime1 == ime2: #če so podatki napačni to sporočimo uporabniku
        return bottle.template('tekme.html', seznam_ekip = model.seznam_ekip(), napaka = True)
    return bottle.template('spremembe_tekme.html', seznam_igralcev = model.seznam_igralcev(ime1, ime2))

@bottle.get('/spremembe_tekme/igralec/')
def spremembe_stat():
    ime_priimek = bottle.request.query['ime_igralca'] #v ime_igralca je shranjeno: ime_priimek_id1_id2, kjer sta id1 in id2 id-ja ekip, ki se soočata na tekmi
    ime, priimek, id1, id2 = ime_priimek.split('_')
    return bottle.template('spremembe_tekme_igralec.html', podatki = model.rezultat_igralca_na_tekmi(ime, priimek, id1, id2), napaka = None, spremembe = None)

@bottle.get('/spremembe_statistika/')
def posodabljanje_statistike():
    try:
        #novi podatki o statistiki igralca na tekmi
        nove_točke = int(bottle.request.query['tocke'])
        nove_podaje = int(bottle.request.query['podaje'])
        novi_skoki = int(bottle.request.query['skoki'])
        #podatki o igralcu in ekipah, ki sta igrali na tekmi
        ime = bottle.request.query['ime']
        priimek = bottle.request.query['priimek']
        ekipa1 = bottle.request.query['ekipa1']
        ekipa2 = bottle.request.query['ekipa2']
        id1 = pomozne_fun.id_ekipe(ekipa1)
        id2 = pomozne_fun.id_ekipe(ekipa2)
        if (nove_točke < 0 or nove_podaje < 0 or novi_skoki < 0 or nove_točke > 99 or nove_podaje > 99 or novi_skoki > 99): # če so števila manjša od 0 ali večja od 99
            return bottle.template('spremembe_tekme_igralec.html', podatki = model.rezultat_igralca_na_tekmi(ime, priimek, id1, id2), napaka = 1, spremembe = None)
        model.spremeni_statistiko_igralca(ime, priimek, id1, id2, nove_točke, nove_podaje, novi_skoki)
        return bottle.template('spremembe_tekme_igralec.html', podatki = model.rezultat_igralca_na_tekmi(ime, priimek, id1, id2), napaka = None, spremembe = 1)
    except: #vnešeni podatki niso bili cela števila, še enkrat preberemo ostale podatke in uporabniko sporočimo kaj je bilo narobe
        ime = bottle.request.query['ime']
        priimek = bottle.request.query['priimek']
        ekipa1 = bottle.request.query['ekipa1']
        ekipa2 = bottle.request.query['ekipa2']
        id1 = pomozne_fun.id_ekipe(ekipa1)
        id2 = pomozne_fun.id_ekipe(ekipa2)
        return bottle.template('spremembe_tekme_igralec.html', podatki = model.rezultat_igralca_na_tekmi(ime, priimek, id1, id2), napaka = 2, spremembe = None)
        
bottle.run(debugger = True, reloader=True)