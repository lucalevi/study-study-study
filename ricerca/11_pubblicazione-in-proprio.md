---
titolo: "Pubblicare in proprio «Studiare per la vita» — Amazon KDP, ISBN, obblighi di legge, licenza ed email"
progetto: study-study-study
documento: ricerca/11 — pubblicazione in proprio
versione: 1.1
data: 2026-10-08
lingua: italiano
collegato a: ricerca/06 (§6.1 colophon, §10.2 punti aperti, §11 riga 5), ricerca/00 (sezione G, P-01…P-06; nuovi P-09…P-15); tex/libro.tex (colophon, `\isbn`, `\editore`), tex/studiolibro.cls (geometria della pagina), tex/appendici/appA-indagine.tex (A.8)
---

# Pubblicare in proprio

**Che cosa chiedono Amazon KDP, l'Agenzia ISBN e la legge italiana a un libro autopubblicato, che cosa costa stampare, come stanno insieme la licenza Creative Commons e la vendita del paperback, che cosa serve per raccogliere indirizzi email in regola**

---

> **Aggiornamento 08/10/2026 (v. 1.1).** (1) **Correzione del numero di pagine**: la prima versione di questo documento si basava su una compilazione di prova senza bibliografia (mancava il passaggio di biber) e contava **514 pagine**; la compilazione completa ne ha **556** (554 senza `\nocite{*}`). Tutti i valori che dipendono dalle pagine (costo, prezzo minimo, dorso, copertina) sono ricalcolati; la conclusione sul margine non cambia, perché 556 sta nella stessa fascia KDP (501–700 pagine). (2) **Decisioni dell'autore**: opzione A per i margini; ISBN gratuito di KDP; carta bianca (provvisoria); sede a Cormons (Gorizia), quindi norme italiane ed europee. Vedi §9.

---

## Indice

0. [Nota di metodo](#0-nota-di-metodo)
1. [Sintesi in dieci punti](#1-sintesi-in-dieci-punti)
2. [Formato, margini e numero di pagine su KDP](#2-formato-margini-e-numero-di-pagine-su-kdp)
3. [Costi di stampa, prezzo minimo e royalty](#3-costi-di-stampa-prezzo-minimo-e-royalty)
4. [File di stampa, carta, dorso e copertina](#4-file-di-stampa-carta-dorso-e-copertina)
5. [ISBN: quello gratuito di KDP o uno proprio](#5-isbn-quello-gratuito-di-kdp-o-uno-proprio)
6. [Obblighi di legge italiani: indicazioni sullo stampato e deposito legale](#6-obblighi-di-legge-italiani-indicazioni-sullo-stampato-e-deposito-legale)
7. [La licenza CC BY-NC-SA 4.0 e la vendita del paperback](#7-la-licenza-cc-by-nc-sa-40-e-la-vendita-del-paperback)
8. [Email, privacy e GDPR](#8-email-privacy-e-gdpr)
9. [Decisioni che spettano all'autore](#9-decisioni-che-spettano-allautore)
10. [Implicazioni per il libro e per il sito](#10-implicazioni-per-il-libro-e-per-il-sito)
11. [Limiti e punti aperti](#11-limiti-e-punti-aperti)
12. [Fonti](#12-fonti)

---

## 0. Nota di metodo

- **Data di consultazione: 08/10/2026.** Le pagine di aiuto di KDP, le tariffe dell'Agenzia ISBN e le prassi sulla privacy cambiano spesso: **tutto ciò che è un prezzo, un margine o un requisito tecnico va ricontrollato nell'interfaccia KDP il giorno della pubblicazione**.
- **Segni**: **✔** letto sulla pagina ufficiale (KDP, Agenzia ISBN, Creative Commons, BNCF); **◐** letto su una copia non ufficiale o su una sintesi, oppure ricavato da un calcolo mio; **(da leggere)** individuato ma non letto.
- **Non è un parere legale né fiscale.** Servono a decidere e a preparare la pubblicazione; per dubbi su privacy, diritto d'autore o imposte sulle royalty servono un professionista o l'ente competente.
- **Il numero di pagine usato è quello della compilazione completa del 08/10/2026: 556 pagine** (LuaLaTeX + biber, EB Garamond di Debian, senza l'opzione `monocromo`, con la bibliografia completa di `\nocite{*}`; **554** senza `\nocite{*}`). Con i font e la distribuzione TeX del tuo Mac può differire di qualche pagina: va rifatto il conto sulla compilazione definitiva. *(La versione 1.0 di questo documento riportava 514 pagine: era una compilazione senza bibliografia.)*

---

## 1. Sintesi in dieci punti

1. **Il formato 13 × 21 cm è ammesso.** KDP accetta per i paperback un formato personalizzato con larghezza tra 4 e 8,5 pollici (10,16–21,59 cm) e altezza tra 6 e 11,69 pollici (15,24–29,69 cm). ✔ Non è un «formato grande» (oltre 155,5 × 228,6 mm), quindi si applicano i costi normali. ✔ **(P-01 chiuso.)**
2. **Il margine interno di 16 mm non bastava: il libro ha 556 pagine.** Il registro assumeva 360–400 pagine; KDP chiede un margine interno minimo di 0,625 pollici (15,9 mm) fino a 500 pagine e di **0,75 pollici (19,1 mm) da 501 a 700 pagine**. ✔ **Risolto (P-09 chiuso):** opzione A, margine interno **20,5 mm** ed esterno 21,5 mm, gabbia invariata (§2.3).
3. **Stampare in bianco e nero costa poco.** Su Amazon.it e nei mercati UE: **0,75 € fissi + 0,012 € a pagina** ✔ → con 556 pagine circa **7,42 €** a copia. Il **prezzo minimo** di listino è costo ÷ 0,60 ≈ **12,37 €**, prezzo al quale le royalty sono zero. ✔ (formula) / ◐ (calcolo)
4. **Il dorso sarà largo circa 31,8 mm (carta bianca) o 35,3 mm (carta crema)** e la copertina intera circa **298 × 216 mm** (bianca) o **302 × 216 mm** (crema), con 3,2 mm di abbondanza. ✔ (dati di KDP) / ◐ (calcolo): verificare con il calcolatore di copertine KDP.
5. **ISBN.** Con l'ISBN gratuito di KDP il libro compare con editore «Independently published» e si può vendere solo su KDP. ✔ Un ISBN proprio, dall'Agenzia ISBN italiana (AIE, tramite Ediser), costa **60 € + IVA per un singolo codice** (più una quota di adesione di 45 € + IVA, una tantum, sul primo ordine) e permette di comparire con il nome che si sceglie. ✔
6. **Per la legge italiana lo stampato deve indicare** luogo e anno di pubblicazione, nome e domicilio dello stampatore e, se esiste, dell'editore (L. 47/1948, art. 2). ◐ **Il deposito legale** è un obbligo anche per i libri autopubblicati: due copie (una alla Biblioteca nazionale centrale di Firenze, una alla biblioteca regionale della provincia dell'autore) **entro 60 giorni** dalla prima distribuzione; sanzione fino a 1.500 €. ✔
7. **La licenza CC BY-NC-SA 4.0 non impedisce all'autore di vendere il paperback.** Il titolare «può sempre vendere la propria opera»; la clausola NC limita i terzi. ✔ Le regole di KDP su ciò che è già disponibile gratis riguardano i testi di pubblico dominio, non le opere proprie. ✔ Resta da leggere il contratto KDP (P-14).
8. **L'email non deve condizionare il download.** Il PDF si può scaricare senza dare dati; chi vuole ricevere aggiornamenti o lasciare commenti può farlo con un modulo separato, con consenso specifico e informativa. ✔ (GDPR art. 6, 7, 13) / ◐ (copia non ufficiale)
9. **L'Appendice A.8 invita a scrivere a luca@lucalevi.com.** Chi scrive consegna un dato personale: basta una informativa breve sul sito, con rinvio a quella completa. ◐
10. **Decisi dall'autore il 08/10/2026** (§9): margini (opzione A), ISBN gratuito di KDP, carta bianca, sede in Italia, **solo Amazon a un prezzo vicino al minimo**, **PDF scaricabile liberamente da www.lucalevi.com senza email**. **Ancora aperti**: condizioni KDP (P-14), copia di prova e indicazioni di stampa (P-12), art. 130 del Codice privacy (P-15, ora quasi irrilevante: nessuna email raccolta).

---

## 2. Formato, margini e numero di pagine su KDP

### 2.1 Formato personalizzato

- KDP offre una lista di formati standard (il più vicino al nostro è **5,25 × 8 pollici = 13,34 × 20,32 cm**; c'è anche il 5,5 × 8,5 = 13,97 × 21,59 cm). ✔
- Per i paperback si può anche inserire un **formato personalizzato**: «larghezza tra 4 e 8,5 pollici (10,16–21,59 cm), altezza tra 6 e 11,69 pollici (15,24–29,69 cm)». ✔ **13 × 21 cm = 5,12 × 8,27 pollici**: rientra.
- **Costi normali**: i formati con larghezza oltre 6,12 pollici (155,5 mm) o altezza oltre 9 pollici (228,6 mm) sono «grandi» e costano di più. ✔ Il nostro no.
- **Pagine**: da 24 a 828 per l'inchiostro nero su carta bianca nei formati correnti. ✔ KDP arrotonda per eccesso a un numero pari. ✔

### 2.2 Margini minimi per numero di pagine

| Pagine | Margine interno (verso il dorso) | Margine esterno, alto e basso (senza abbondanza) |
|---|---|---|
| 24–150 | 0,375 in (9,6 mm) | almeno 0,25 in (6,4 mm) |
| 151–300 | 0,5 in (12,7 mm) | idem |
| 301–500 | 0,625 in (15,9 mm) | idem |
| **501–700** | **0,75 in (19,1 mm)** | idem |
| 701–828 | 0,875 in (22,3 mm) | idem |

✔ (pagina *Set Trim Size, Bleed, and Margins*). Questi sono i **minimi richiesti da KDP**.

### 2.3 Il problema: 556 pagine contro 16 mm, e la soluzione

- Il template aveva `inner=16mm` e `textwidth=88mm` su una pagina larga 130 mm: il margine esterno risultava 26 mm (rapporto interno : esterno = 1 : φ). Il valore 16 mm era giusto per 301–500 pagine; il registro (P-02) e l'indice (§10.2, punto 4) lo davano per «già conforme» in base a 360–400 pagine stimate.
- Con **556 pagine** (e comunque con qualunque numero tra 501 e 700) il minimo è **19,1 mm**: 3,1 mm in più.
- **Non conviene scendere sotto le 500 pagine** tagliando: servirebbero oltre 50 pagine in meno.

**Decisione dell'autore (08/10/2026): opzione A**, cioè cambiare solo il margine e lasciare invariata la gabbia di 88 mm, così righe e salti di pagina restano identici e i controlli già fatti restano validi. Si perde la proporzione aurea nei margini laterali; restano quelle del formato, della gabbia e del margine di testa/piede. Le alternative scartate erano una gabbia più stretta (84 mm, per tenere un margine esterno di 26,5 mm) o una gabbia aurea di 79 mm (margini 19,5 / 31,5): più pagine, più costi, tutta l'impaginazione da rivedere.

**Valore scelto: 20,5 mm interno, 21,5 mm esterno** (non i 19,5 / 22,5 proposti). Il motivo, verificato sul PDF: il pacchetto *microtype* sporge con virgolette, trattini a inizio riga e punteggiatura a fine riga fino a circa 1 mm **dentro il margine**. Misurando tutte le 556 pagine, con 20 mm l'inchiostro più vicino al dorso arrivava a 19,03 mm (p. 401 stampata, la tabella dei miti: virgoletta «Falso» a inizio riga), sotto il minimo di 19,05 mm; con 19,5 mm sarebbe arrivato a circa 18,5 mm. Con **20,5 mm l'inchiostro più vicino al dorso resta a 19,53 mm**; l'inchiostro più vicino al bordo esterno a 16,54 mm (minimo KDP 6,4 mm). ✔ (misura sul PDF compilato)

Applicato in `tex/studiolibro.cls` (`inner=20.5mm`; commento aggiornato), nel `README.md` e nel colophon («gabbia in sezione aurea» al posto di «gabbia e margini in sezione aurea»). In più ho fatto stare la didascalia delle tabelle lunghe entro la gabbia (`\LTcapwidth`), che di norma è 101,6 mm. Il numero di pagine non cambia (556).

Un'altra strada, più radicale, che non consiglio: passare al formato standard 5,5 × 8,5 pollici (13,97 × 21,59 cm), con gabbia più larga e meno pagine, perdendo la proporzione 21/13 ≈ φ della pagina.

---

## 3. Costi di stampa, prezzo minimo e royalty

### 3.1 Formula

KDP: **costo di stampa = costo fisso + (numero di pagine × costo per pagina)**. ✔

Per l'**inchiostro nero** (bianco e nero), formato regolare, **Amazon.it e gli altri mercati UE (Amazon.de, .es, .fr, .nl, .ie, .com.be)**: da 110 a 828 pagine, **0,75 € fisso + 0,012 € a pagina**. ✔ (Amazon.com: 1,00 $ + 0,012 $ a pagina.) A colori, «Standard color» (da 72 a 600 pagine): 0,75 € + 0,024 € a pagina; «Premium color»: 0,75 € + 0,0525 € a pagina. ✔

### 3.2 Il nostro libro

| Pagine | Costo di stampa Amazon.it | Prezzo minimo (costo ÷ 0,60) | Royalty a 12,90 € |
|---|---|---|---|
| 500 | 6,75 € | 11,25 € | 0,99 € |
| 554 (senza `\nocite{*}`) | 7,40 € | 12,33 € | 0,34 € |
| **556 (compilazione attuale)** | **7,42 €** | **12,37 €** | **0,32 €** |

◐ (calcoli miei sulle cifre ✔ di KDP; il prezzo minimo vero lo mostra l'interfaccia di KDP al momento di fissare il prezzo).

### 3.3 Royalty

- Le royalty sono il **60% del prezzo di listino meno il costo di stampa** quando il prezzo è almeno 9,99 € (Amazon.it e altri mercati UE); sotto, il 50%. ✔ Formula: «(aliquota × prezzo di listino) − costo di stampa». ✔
- **«Senza guadagni»**: se fissi il prezzo al minimo (≈ 12,37 €) le royalty sono zero e il libro costa quanto costa stamparlo. Ogni euro in più sul prezzo è un guadagno, di 0,60 € per euro.
- **IVA**: KDP dice che in alcuni mercati aggiunge l'IVA locale al prezzo che fissi; non spiega qui come incida sulle royalty. ✔ (pagina letta) / **non verificato** come funzioni per l'Italia (P-11).
- **Imposte sulle royalty**: KDP chiede dati fiscali; non rientra in questa ricerca.

### 3.4 Expanded Distribution

- Permette di vendere il paperback anche a librerie, rivenditori online, biblioteche e istituzioni accademiche; per i paperback c'è, per gli hardcover no. ✔ Italia inclusa nella distribuzione. ✔
- **Royalty del 40%**: «40% del prezzo di listino meno il costo di stampa». ✔ Con 556 pagine il prezzo minimo per attivare l'Expanded Distribution sarebbe quindi circa **7,42 € ÷ 0,40 ≈ 18,55 €**. ◐ (calcolo mio: l'interfaccia KDP indica la cifra esatta.)
- **Alternativa**: vendere solo su Amazon al prezzo minimo oppure vicino. **Scelta dell'autore (08/10/2026, sera): solo Amazon, prezzo vicino al minimo** (P-11 chiuso).

---

## 4. File di stampa, carta, dorso e copertina

### 4.1 Interno

- **PDF** per le versioni con abbondanza; senza abbondanza anche DOC, DOCX, RTF, HTML, TXT. ✔ Il nostro sarà un **PDF** compilato da LuaLaTeX.
- **Font incorporati** e immagini incorporate; **corpo minimo 7 pt**; niente segni di taglio, segnalibri, commenti; pagine singole, non doppie. ✔ (Il corpo è 11 pt.)
- **Immagini a 300 dpi** minimo (600 dpi consigliati al massimo). ✔ La cartella `tex/immagini/` è vuota e il testo non include file raster: le figure sono disegnate in LaTeX, quindi il requisito non si pone (da ricontrollare se si aggiungono immagini).
- **Abbondanza** nell'interno: facoltativa; se una pagina ne ha, ne servono su tutte. ✔ Il template non la usa.
- **Opzione `monocromo`**: stampa a un solo colore. Il rosso «rubrica» diventa nero o grigio. Da ricompilare e riguardare le figure.

### 4.2 Carta e dorso

| Carta | Spessore per pagina | Dorso a 556 pagine |
|---|---|---|
| Bianca | 0,002252 in (0,0572 mm) | 31,80 mm |
| Crema | 0,0025 in (0,0635 mm) | 35,31 mm |

✔ (spessori KDP) / ◐ (dorso calcolato). Il testo sul dorso è consentito oltre le 79 pagine, con almeno 1,6 mm di distanza dal bordo. ✔

La carta crema è più adatta a un libro lungo in EB Garamond; la tabella dei costi di KDP dà lo stesso costo per pagina per carta bianca e crema. ✔ **Scelta dell'autore (08/10/2026, sera): carta bianca**, definitiva (**P-10** chiuso); la copia di prova (§6.1) servirà comunque a vederla.

### 4.3 Copertina

- **PDF**, abbondanza di **0,125 pollici (3,2 mm)** su tutti i lati, margine di sicurezza di almeno **6,4 mm** dal bordo esterno, risoluzione di **almeno 300 dpi**. ✔
- **Misura totale** = 2 × 130 mm (quarta e prima di copertina) + dorso + 2 × 3,2 mm di abbondanza; altezza 210 mm + 6,4 mm: **≈ 298,2 × 216,3 mm** (carta bianca, 556 pagine) o **≈ 301,7 × 216,3 mm** (crema). ◐ **Verificare con il calcolatore di copertine KDP** quando il numero di pagine è definitivo.
- **Codice a barre**: si può caricare la copertina senza codice; KDP lo aggiunge sulla quarta. ✔ (L'area esatta non è nella pagina letta.)
- **Cover Creator** di KDP accetta JPG, PNG, GIF; è uno strumento a modelli. ✔ La copertina fa parte del piano? **No: non c'è ancora nell'indice ragionato** (§11, punto 5).

---

## 5. ISBN: quello gratuito di KDP o uno proprio

### 5.1 Che cosa dice KDP

- Ogni formato a stampa ha bisogno del proprio ISBN; **solo gli eBook e i libri «a basso contenuto» ne sono dispensati**. ✔
- **ISBN gratuito di KDP** (solo paperback e hardcover): l'editore (imprint) risulta **«Independently published»**, e **non può essere usato fuori da KDP**. ✔
- **ISBN proprio**: puoi indicare un tuo marchio editoriale; **i dati inseriti in KDP devono coincidere con quelli registrati presso l'agenzia ISBN**, maiuscole e spazi compresi, altrimenti non si può pubblicare. Il campo accetta fino a 100 caratteri. ✔

### 5.2 Agenzia ISBN italiana

- È gestita dall'**Associazione Italiana Editori (AIE)** tramite Ediser srl. ✔ Ci si registra e si compra dall'area riservata. Il servizio è aperto anche agli **autori-editori e ai richiedenti occasionali**. ✔
- **Tariffe consultate il 08/10/2026**, **IVA esclusa**: ✔
  - **Quota di adesione: 45 €**, una tantum, aggiunta al primo ordine. (La pagina non dice se si ripete.)
  - **Autori e richiedenti occasionali**, massimo 5 codici singoli: **1 codice 60 €**; 2 codici 110 €; 3 codici 150 €; 4 codici 180 €; 5 codici 200 €.
  - **Prefisso per editori** (6 cifre, 10 codici): **70 €**.
  - **Codice a barre** (opzionale, KDP lo genera): 5 € a titolo.
- Serve un ISBN per l'edizione a stampa; KDP lo richiede per ogni formato a stampa ✔. Per il PDF gratuito KDP non dice nulla e non l'ho verificato (nessun obbligo di ISBN per il PDF risulta dalle fonti lette).

### 5.3 Conseguenze per il colophon

- **Con l'ISBN KDP**: nel libro non puoi comparire come «editore»; l'editore ufficiale è «Independently published». Il colophon può dire «pubblicazione in proprio» e il sito, ma l'ISBN risulterà intestato a KDP.
- **Con l'ISBN proprio**: l'editore è il nome con cui ti registri (il tuo nome o un marchio); `\editore{lucalevi.com}` va allineato a ciò che risulta all'Agenzia e su KDP.
- **Il costo** è piccolo (circa 105 € + IVA la prima volta, se la quota di adesione si applica anche ai richiedenti occasionali: da confermare nell'area riservata), ma c'è il vantaggio di restare intestatario del codice, di poter stampare altrove senza cambiare ISBN, e di comparire come editore. **Raccomandavo** l'ISBN proprio se si vogliono tenere aperti altri canali o una seconda edizione, e quello di KDP se Amazon resta l'unico canale. **Decisione dell'autore (08/10/2026): ISBN gratuito di KDP (P-04 chiuso).** Conseguenze: (a) l'ISBN lo assegna KDP quando si crea il titolo, quindi **si compila `\isbn{…}` solo allora** e si ricompila il PDF prima del caricamento definitivo; (b) l'ISBN non vale fuori da KDP: per un altro canale o stampatore serve un ISBN nuovo; (c) su Amazon l'editore risulterà «Independently published»; il nome che compare sul frontespizio (`\editore{lucalevi.com}`) è una scelta di colophon da tenere coerente con il testo del colophon (P-12).

---

## 6. Obblighi di legge italiani: indicazioni sullo stampato e deposito legale

### 6.1 Indicazioni obbligatorie

- **L. 8 febbraio 1948, n. 47, art. 2**: «Ogni stampato deve indicare il luogo e l'anno della pubblicazione, nonché il nome e il domicilio dello stampatore e, se esiste, dell'editore». Omissioni o inesattezze: sanzione amministrativa (art. 17, «sino a lire 100.000»). ◐ (testo letto su una copia non ufficiale, non su Normattiva)
- **Per un libro stampato da KDP**: «stampatore» è chi stampa. **Non verificato** (le pagine KDP lette non lo dicono): dove stampa KDP e se aggiunge da sé una nota di stampa. Si controlla ordinando una **copia di prova** (proof copy). L'editore e il luogo li indichi tu nel colophon (il `\luogo{Cormons}` attuale va confermato) (**P-12**).

### 6.2 Deposito legale

- **Chi**: l'editore, o chi è responsabile della pubblicazione; per le opere autopubblicate **il responsabile è l'autore**. ✔ Le piattaforme possono depositare per conto dell'autore. ✔
- **Che cosa e dove**: per i libri a stampa, una copia alla Biblioteca nazionale centrale di **Firenze**, una a quella di **Roma** e due all'archivio regionale; **se la tiratura è di 200 copie o meno** (le opere autopubblicate rientrano sempre) **bastano due copie: una a Firenze, una alla biblioteca regionale** della provincia in cui ha sede l'editore, o in cui vive l'autore. ✔
- **Quando**: **entro 60 giorni** dalla prima distribuzione al pubblico. ✔
- **Sanzione**: tre volte il valore commerciale, fino a **1.500 € per documento non depositato** (D.P.R. 252/2006). ✔
- **Riferimenti**: L. 106/2004; D.P.R. 252/2006; D.M. 28/12/2007 (biblioteche regionali). ✔
- **Digitale**: la pagina della BNCF dice che l'obbligo è esteso alle pubblicazioni online (servizio «Magazzini Digitali»). **Non è chiaro se un PDF scaricabile dal sito rientri**: da chiedere alla BNCF o alla biblioteca regionale (**P-13**).
- **Per l'autore (residente a Cormons, provincia di Gorizia)**: la pagina della Regione Friuli Venezia Giulia indica come istituto regionale per l'ex provincia di Gorizia la **Biblioteca Statale Isontina e Biblioteca Civica di Gorizia**, e come indirizzo per Firenze «Biblioteca Nazionale Centrale di Firenze – Ufficio Deposito Legale – Via Tripoli 36 – 50122 Firenze». ✔ (La pagina regionale non dà l'indirizzo né la procedura per Gorizia.) **Discrepanza tra le fonti**: la pagina regionale elenca tre copie (Firenze, Roma, istituto regionale); la pagina della BNCF dice che per le opere autopubblicate bastano due (Firenze e istituto regionale). Da confermare con la BNCF prima di spedire (**P-13**).

---

## 7. La licenza CC BY-NC-SA 4.0 e la vendita del paperback

- **Il titolare può vendere**: la FAQ di Creative Commons dice che chi ha i diritti «può sempre vendere la propria opera» e che una licenza NC permette di «riservarsi il diritto di commercializzare». ✔ La clausola **NonCommercial** («non principalmente destinato o diretto a un vantaggio commerciale o a un compenso monetario», Sezione 1 del testo legale, definizione di *NonCommercial*) **limita i terzi, non te**. ✔ Se qualcuno vuole usare il libro commercialmente, deve chiederti il permesso. ✔
- **Il paperback a prezzo minimo** non è in alcun modo in conflitto.
- **ShareAlike (3(b))**: chi adatta o traduce il libro deve ridistribuire l'adattamento con la stessa licenza (o una compatibile) e non può aggiungere condizioni. ✔ **Attribuzione (3(a)(1))**: chi riutilizza deve mantenere il tuo nome, l'avviso di copyright, il rimando alla licenza e indicare le modifiche. ✔
- **Revoca**: le licenze CC **non sono revocabili**; puoi smettere di distribuire, ma le copie già in giro restano sotto licenza. ✔ Quindi la decisione di pubblicare con CC va presa con la consapevolezza che è definitiva.
- **KDP**: nella dichiarazione dei diritti scegli «Possiedo il copyright e i diritti di pubblicazione necessari». ✔ Le regole di KDP sui contenuti già disponibili gratis valgono per le opere di **pubblico dominio** (serve una versione «differenziata»: tradotta, annotata, illustrata); **non si applicano a un'opera protetta di cui si è autori**, e la pagina **non menziona** le licenze Creative Commons. ✔ **Non ho letto** le condizioni contrattuali di KDP (Terms and Conditions): vanno controllate per le clausole sulla licenza data ad Amazon (**P-14**).
- **Il colophon** attuale (CC BY-NC-SA 4.0 «per quest'opera», PDF gratuito su lucalevi.com) vale per entrambe le edizioni. Meglio una frase che dica che il paperback è la stessa opera, stessa licenza.

---

## 8. Email, privacy e GDPR

### 8.1 Il quadro

- **Ambito**: il GDPR si applica anche a chi sta fuori dall'UE se offre servizi a persone nell'Unione, a pagamento o no (art. 3, par. 2). ◐ (gdpr-info.eu; il testo ufficiale di EUR-Lex non ha caricato gli articoli) Un sito in italiano rivolto a un pubblico italiano ricade.
- **Basi giuridiche**: consenso «per una o più finalità specifiche» (art. 6, par. 1, lett. a) oppure legittimo interesse (lett. f) oppure esecuzione di ciò che l'interessato ha chiesto (lett. b). ◐
- **Consenso valido** (art. 7): dimostrabile; presentato in modo distinguibile; **revocabile in ogni momento con la stessa facilità con cui si dà**; e, per valutare se è libero, «si tiene conto del fatto che l'esecuzione di un servizio sia condizionata a un consenso non necessario». ◐ I considerando 32 e 43 aggiungono: niente caselle preselezionate; un consenso non è libero se condiziona un servizio che non lo richiede. ✔ (EUR-Lex)
- **Marketing**: il Garante chiede un consenso **specifico per ogni finalità** e libero (provv. 15/05/2013). ✔ Per le email promozionali vale anche l'art. 130 del Codice privacy (non letto). **(da leggere)**
- **Informativa** (art. 13): identità e contatti del titolare; finalità e base giuridica; destinatari; periodo di conservazione; diritti (accesso, rettifica, cancellazione, limitazione, opposizione, revoca del consenso); diritto di reclamo al Garante; se il conferimento è obbligatorio. ◐ Il Garante pubblica la propria per la newsletter con le stesse voci (titolare, finalità, base giuridica, conservazione, diritti, destinatari). ✔

### 8.2 Tre strade per il PDF gratuito

| Strada | Come funziona | Dati personali | Conseguenze |
|---|---|---|---|
| **1. Download libero** (raccomandata) | Un pulsante, nessun dato. | Nessuno (salvo i log del server). | Nessuna informativa dedicata; diffusione massima. |
| **2. Email per ricevere il link** | Si inserisce l'email, arriva il PDF. | Email. | Base giuridica: richiesta dell'interessato; **solo per inviare il file**. Non si può usare per altro senza un consenso separato. |
| **3. Download libero + modulo facoltativo** | Un modulo a parte per «ricevere aggiornamenti e inviare commenti». | Email (e il testo). | Consenso specifico e **non preselezionato**, informativa breve con rinvio all'informativa completa, modo semplice per cancellarsi. |

**Raccomandazione**: la strada 3, che coincide con la scelta già indicata nella ricerca 06 («download libero + modulo per chi vuole lasciare un commento»).

### 8.3 Recapito dell'Appendice A.8

L'invito a scrivere a **luca@lucalevi.com** (gruppi di ricerca interessati) comporta il trattamento dell'indirizzo e del messaggio di chi scrive. Basta, nella pagina di contatto del sito, una **informativa breve**: titolare, finalità (rispondere), conservazione (il tempo necessario), diritti, a chi rivolgersi. ◐ Il libro non deve riportare l'informativa.

### 8.4 Svizzera

L'autore ha sede a Cormons (Italia): si applicano il GDPR e il Codice privacy italiano; la legge federale svizzera sulla protezione dei dati non si applica per la sede del titolare. (Resta da leggere solo l'art. 130 del Codice privacy sulle email promozionali: **P-15**.)

---

## 9. Decisioni dell'autore

| # | Decisione | Esito (08/10/2026) | Codice |
|---|---|---|---|
| 1 | Margini del template per 556 pagine | **Opzione A**, gabbia invariata; interno **20,5 mm** ed esterno 21,5 mm (19,5 / 22,5 proposti; vedi §2.3) | P-09 **chiuso** |
| 2 | ISBN proprio o gratuito di KDP | **ISBN gratuito di KDP** | P-04 **chiuso** |
| 3 | Carta bianca o crema | **Bianca** (08/10/2026, sera) | P-10 chiuso |
| 4 | Sede dell'autore | **Cormons (Gorizia), Italia**: norme italiane ed europee; biblioteca regionale: Gorizia | P-13, P-15 (in parte chiusi) |
| 5 | Prezzo; Expanded Distribution sì/no | **Solo Amazon, prezzo vicino al minimo** (≈ 12,37 € a 556 pagine, da fissare nell'interfaccia KDP) (08/10/2026, sera) | P-11 chiuso |
| 6 | Email per il PDF | **Download libero dal sito, senza email** (strada 1; 08/10/2026, sera): nessun dato personale raccolto, nessuna informativa necessaria per il download | P-06 chiuso |

---

## 10. Implicazioni per il libro e per il sito

- **`tex/studiolibro.cls`**: fatto l'08/10/2026: `inner=20.5mm`, commenti sulle proporzioni aggiornati, colophon («gabbia in sezione aurea»), didascalie delle tabelle lunghe entro la gabbia; `README.md` aggiornato.
- **`tex/libro.tex`**:
  - `\isbn{…}`: da compilare con il numero assegnato da KDP al momento della creazione del titolo;
  - `\editore{…}`: oggi `lucalevi.com` (frontespizio); su Amazon l'editore sarà «Independently published», da tenere coerente con il colophon;
  - il colophon può dichiarare che il paperback è la stessa opera con la stessa licenza (§7);
  - luogo e anno di pubblicazione (art. 2 L. 47/1948): `\luogo` e `\anno{2027}` da confermare.
- **Compilazione per la stampa**: opzioni `[stampa,monocromo]`; PDF con font incorporati; ricontrollare le figure in bianco e nero; **ricontare le pagine e rimisurare il margine interno** sulla compilazione definitiva; **compilare sempre con biber**: nella cartella `tex/` c'è un `libro.bbl` vuoto (0 byte) e, con quel file presente, `latexmk` ha saltato biber nella mia prova (PDF senza bibliografia e con citazioni «??»); prima della compilazione definitiva cancellare `libro.bbl`, `libro.blg` e la cartella `build/`.
- **Sito (lucalevi.com)**: pagina di download senza email obbligatoria; modulo facoltativo con informativa; informativa breve per il recapito dell'Appendice A.8.
- **Copertina**: non è ancora in nessun lavoro dell'indice ragionato; serve prima del caricamento su KDP. Dimensioni in §4.3.
- **Adempimenti dopo la pubblicazione**: deposito legale entro 60 giorni (§6.2).

---

## 11. Limiti e punti aperti

1. **Pagine**: il conto (556; 554 senza `\nocite{*}`) vale per la compilazione del 08/10/2026 in questo ambiente; da rifare sul tuo Mac e sulla compilazione definitiva. Qualunque valore tra 501 e 700 lascia valida la decisione sul margine (P-09).
2. **Margine interno**: misurato sul PDF compilato (19,53 mm di inchiostro minimo); da rimisurare se cambiano il testo o le opzioni di microtype.
3. **Calcoli di prezzi, dorso e copertina**: miei, sulle cifre di KDP; da confermare con il calcolatore dei costi e quello delle copertine di KDP al momento della pubblicazione.
4. **IVA su Amazon.it e fiscalità delle royalty**: non verificate (P-11).
5. **Copertina**: non pianificata; scelta di chi la progetta (tu, un grafico, Cover Creator).
6. **Condizioni contrattuali di KDP**: non lette (P-14).
7. **Art. 130 del Codice privacy e normativa svizzera**: non lette (P-15).
8. **GDPR**: gli articoli sono stati letti su una copia non ufficiale (gdpr-info.eu); i considerando sul sito ufficiale EUR-Lex.
9. **L. 47/1948**: letta su una trascrizione non ufficiale; la sanzione citata è quella originaria in lire.
10. **Copia di prova**: da ordinare con il PDF definitivo per controllare margini, dorso e indicazioni di stampa (P-12).
11. **Deposito legale per un PDF scaricabile** e per le copie su richiesta: non chiarito dalla fonte (P-13).

---

## 12. Fonti

Tutte consultate l'08/10/2026.

**Amazon KDP**
- [Set Trim Size, Bleed, and Margins](https://kdp.amazon.com/en_US/help/topic/GVBQ3CMEQW3W2VL6) ✔ — formati standard, abbondanza, margini minimi per numero di pagine.
- [Paperback Submission Guidelines](https://kdp.amazon.com/en_US/help/topic/G201857950) ✔ — file, font, immagini, carta, dorso, copertina.
- [Paperback Printing Cost](https://kdp.amazon.com/en_US/help/topic/G201834340) ✔ — costo fisso e per pagina, Amazon.com e mercati UE.
- [Paperback Royalty](https://kdp.amazon.com/en_US/help/topic/G201834330) ✔ — aliquote 60/50%, soglie, Expanded Distribution al 40%.
- [What is an ISBN and Imprint?](https://kdp.amazon.com/en_US/help/topic/G201834170) ✔ — ISBN gratuito e proprio.
- [Paperback and Hardcover Distribution Rights](https://kdp.amazon.com/en_US/help/topic/G201834280) ✔ — territori, Expanded Distribution.
- [Publishing Public Domain Content](https://kdp.amazon.com/en_US/help/topic/G200743940) ✔ — contenuti disponibili gratis, dichiarazione dei diritti.
- [Formato personalizzato](https://kdp.amazon.com/help/topic/A2BXOVPUCZ09J8) ✔ — larghezza 4–8,5 in, altezza 6–11,69 in.

**ISBN e legge**
- [Regione Friuli Venezia Giulia, deposito legale](https://www.regione.fvg.it/rafvg/cms/RAFVG/cultura-sport/patrimonio-culturale/FOGLIA30/) ✔ — istituto regionale per Gorizia; indirizzo di Firenze.
- [Agenzia ISBN, tariffe](https://www.isbn.it/TARIFFE.aspx) e [home](https://www.isbn.it) ✔
- [Biblioteca nazionale centrale di Firenze, Legal deposit](https://bncf.cultura.gov.it/en/services/legal-deposit/) ✔
- [L. 8 febbraio 1948, n. 47 (testo)](https://www.francoabruzzo.it/public/docs/47LEX.rtf) ◐ — art. 2 e art. 17.

**Creative Commons**
- [FAQ](https://creativecommons.org/faq/) ✔ (letta fino ai primi 100.000 caratteri)
- [Legal code CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode.en) ✔

**Privacy**
- [Regolamento (UE) 2016/679, considerando 23, 32, 40, 43, 60](https://eur-lex.europa.eu/legal-content/IT/TXT/HTML/?uri=CELEX:32016R0679) ✔ (gli articoli non sono caricati nella pagina)
- GDPR, articoli [3](https://gdpr-info.eu/art-3-gdpr/), [6](https://gdpr-info.eu/art-6-gdpr/), [7](https://gdpr-info.eu/art-7-gdpr/), [13](https://gdpr-info.eu/art-13-gdpr/) ◐
- [Garante, consenso per il marketing diretto, 15/05/2013](https://www.garanteprivacy.it/home/docweb/-/docweb-display/docweb/2543820) ✔
- [Garante, informativa della newsletter (esempio di struttura)](https://www.garanteprivacy.it/home/docweb/-/docweb-display/docweb/2008331) ✔

---

*Fine della ricerca 11 (versione 1.0).*
