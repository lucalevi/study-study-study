---
titolo: "Indice ragionato di «Studiare per la vita»"
progetto: study-study-study
documento: ricerca/06 — indice ragionato del libro
versione: 1.6
data: 2026-09-23
modifiche: "1.6 — revisione dei capp. 9–10 (23/09/2026): aggiunto riquadro «Per chi insegna» al cap. 9; annotate le dipendenze dei capp. 9–10 dai capp. 6–7 e del cap. 9 dal cap. 24 (note delle schede, §8, §11; registro 00 v. 1.9, sezione H, Y-01…Y-04). 1.5 — scritta la prima stesura dei capitoli 9–14 (Parte III, 23/09/2026; circa 17.800 parole in tutto): note delle schede aggiornate con lunghezze, riquadri e fonti effettivamente usati; §9.1 punto 2 e §11 aggiornati; registro portato alla v. 1.8. 1.4 — 1.4 — decisione dell'autore (23/09/2026): niente attesa di revisori esterni per nessun capitolo, l'autore rivede e valida ogni capitolo man mano che esce (§10.1, decisione 12; §9.1 punto 1 e §11 punto 10 aggiornati di conseguenza). Confermato che i capp. 9–14 (Parte III) possono partire subito: il registro (ricerca 00, v. 1.7) non ha più punti aperti di priorità A o B per questa parte. 1.3 — scritti i capitoli di prova 1 e 8 (prima stesura, 22/09/2026); decise la voce dell'autore («io» discreto) e il riquadro «Per chi insegna» (solo dove serve) (§10.1, decisioni 10–11; §10.2, punto 6). 1.2 — decisa la licenza del PDF gratuito: Creative Commons BY-NC-SA 4.0 (§10.2, decisione 9; colophon aggiornato). 1.1 — integrate le decisioni dell'autore del 21/09/2026: pubblico universitario nella prima fase, pubblicazione in proprio, 26 capitoli"
lingua: italiano
collegato a: ricerca/00–05; tex/ (template 1.1, stessa struttura)
---

# Indice ragionato

**«Studiare per la vita. Come si impara davvero, e perché» — struttura, tesi, contenuti, fonti ed epigrafi di ogni capitolo**

> *«Discipulus est prioris posterior dies.»* — «Il giorno che segue è allievo del giorno che precede.» (Publilio Siro)

---

## Indice

0. [Che cos'è questo documento](#0-che-cosè-questo-documento)
1. [Il libro in sintesi](#1-il-libro-in-sintesi)
2. [Convenzioni del libro](#2-convenzioni-del-libro)
3. [Architettura: parti, capitoli, lunghezze](#3-architettura-parti-capitoli-lunghezze)
4. [Percorsi di lettura](#4-percorsi-di-lettura)
5. [Schede dei capitoli](#5-schede-dei-capitoli)
6. [Pagine iniziali, congedo e appendici](#6-pagine-iniziali-congedo-e-appendici)
7. [La rete delle riprese](#7-la-rete-delle-riprese)
8. [Dipendenze, lacune e revisioni esterne](#8-dipendenze-lacune-e-revisioni-esterne)
9. [Piano di scrittura](#9-piano-di-scrittura)
10. [Decisioni prese e punti ancora aperti](#10-decisioni-prese-e-punti-ancora-aperti)
11. [Lavori ancora da fare](#11-lavori-ancora-da-fare)

---

## 0. Che cos'è questo documento

- È il **progetto del libro**: per ogni capitolo indica la tesi, la domanda a cui risponde, il racconto d'apertura, i contenuti paragrafo per paragrafo, l'epigrafe, le fonti (paragrafi dei documenti di ricerca e voci bibliografiche), i riquadri, le domande di ripasso e la lunghezza prevista.
- La **stessa struttura** è già impostata nel template LuaLaTeX (`tex/`, versione 1.1): ogni file `capitoli/capNN-….tex` ha titolo, epigrafe, paragrafi e segnaposto corrispondenti alle schede di questo documento.
- **Versione 1.1**: integra le otto decisioni dell'autore del 21 settembre 2026 (§10). Il cambiamento principale è il **pubblico della prima fase: l'università** — di conseguenza cambiano i capp. 2, 14, 19–24, si aggiunge il cap. 26 e l'Appendice A diventa una proposta di indagine.
- È un documento **vivo**: se durante la scrittura un capitolo cambia, si aggiornano insieme questa scheda e il file `.tex`.
- I **simboli delle epigrafi** sono quelli della ricerca 03: ✔ verificata sul testo, ◐ verificata indirettamente, ○ da verificare (vedi registro, ricerca 00).
- **Abbreviazioni**: «01 §5.1» = ricerca 01, paragrafo 5.1; le chiavi bibliografiche (es. `roediger2006`) sono quelle di `tex/bibliografia.bib`.

---

## 1. Il libro in sintesi

| Voce | Proposta |
|---|---|
| **Titolo** | *Studiare per la vita* — **deciso**. (Considerato anche *Vitae discimus*, scartato perché il latino in copertina potrebbe scoraggiare; il motto latino resta nell'epigrafe del libro e nel cap. 1.) |
| **Sottotitolo** *(proposta)* | *Come si impara davvero, e perché* |
| **Tesi** | Studiare bene non è questione di talento o di trucchi, ma di metodo; il metodo è noto — richiamare, distanziare, alternare, spiegare, collegare — e funziona se si sa perché lo si fa. Ciò che si studia così non si dimentica dopo l'esame: si impara *per la vita*. |
| **Promessa al lettore** | Capire come funziona la memoria, smettere di sprecare ore in strategie inutili, ricordare a lungo ciò che si studia, e ritrovare il senso dello studio; per chi insegna, sapere come aiutare gli studenti a farlo. |
| **Pubblico della prima fase** | **L'università**: **studenti universitari** (lettori principali, dalla matricola al laureando) e **docenti universitari** (professori, ricercatori, docenti a contratto). Ragioni: all'università il divario tra ciò che la ricerca sa e ciò che si fa è massimo; lo studente universitario studia da solo e ha il massimo bisogno di un metodo; all'università si formano i **futuri insegnanti**, quindi il libro arriva alla scuola attraverso di loro; gran parte degli esperimenti della scienza dell'apprendimento è stata condotta proprio su studenti universitari. |
| **Pubblici di passaggio** | Maturandi (cap. 19), futuri insegnanti e loro formatori (cap. 26), responsabili della didattica e centri di *teaching and learning* degli atenei (Parte VI). |
| **Seconda fase** | Un'edizione o un volume per **superiori e medie** (e per insegnanti e genitori), che riuserà il materiale della ricerca 04 §3–5 già raccolto. Non rientra in questo libro. |
| **Tono** | Chiaro, concreto, rigoroso; fonti citate con precisione (il pubblico è accademico e verificherà), ma senza gergo; rispettoso di studenti e docenti; nessun trucco, nessun catastrofismo. |
| **Voce** | **Seconda persona singolare («tu») rivolta al lettore** — **deciso**. Nelle Parti I–V il «tu» è lo studente; nella Parte VI il «tu» è il docente, con tono da collega a collega. |
| **Lunghezza** | **Deciso: libro fondativo completo, 90–100.000 parole in tutto.** Capitoli: circa 90.000–92.500 parole (26 capitoli); pagine iniziali, congedo e appendici: circa 10.000. Si è al limite superiore: in scrittura i capitoli più lunghi (20, 21, 23) vanno contenuti. Nel formato 13 × 21 del template, circa 360–400 pagine. |
| **Pubblicazione** | **Deciso: in proprio, senza editore.** PDF **gratuito** su [www.lucalevi.com](https://www.lucalevi.com) (al massimo con un indirizzo email facoltativo, per ricevere commenti) ed edizione **paperback su Amazon** a prezzo contenuto. È un libro di **impegno sociale**, non a scopo di lucro. **Licenza: Creative Commons BY-NC-SA 4.0** (deciso 22/09/2026). Aspetti tecnici KDP ancora da definire: §10.2. |
| **Formato** | 13 × 21 cm, EB Garamond, template `studiolibro` (tex/); la stessa sorgente produce il PDF per il sito e il PDF per la stampa. |
| **Tratto distintivo** | Un libro che **applica a se stesso** il metodo che insegna (domande di recupero e riprese dei capitoli precedenti), che unisce la **tradizione classica** (epigrafi originali verificate) e la **scienza contemporanea**, con **dati italiani** sull'università e una **proposta di indagine** (Appendice A). |

---

## 2. Convenzioni del libro

### 2.1 Struttura di ogni capitolo

1. **Titolo** breve e concreto.
2. **Epigrafe** classica in lingua originale, con traduzione (solo citazioni verificate; ricerca 03).
3. **Apertura narrativa** (una scena, un esperimento, un personaggio) che pone la domanda del capitolo.
4. **Paragrafi** (4–6), ciascuno con un'idea principale.
5. **Riquadri**: *Da ricordare* (il principio in due righe), *In pratica* (istruzioni operative), *Esercizio* (da fare subito).
6. **Domande per il ripasso**: almeno tre, di cui **una di ripresa di un capitolo precedente** (§7).
7. **In sintesi**: 3–5 punti.

### 2.2 Il libro applica il proprio metodo

- **Recupero**: le domande di fine capitolo invitano a rispondere a libro chiuso.
- **Distribuzione**: ogni capitolo riprende almeno un concetto di un capitolo precedente (domande di ripresa, rimandi).
- **Alternanza**: le domande di ripresa mescolano argomenti di parti diverse.
- **Spirale**: i principi centrali (recupero, distribuzione, metacognizione) tornano più volte a livelli crescenti — come la spirale aurea del frontespizio.
- **Congedo**: un breve test finale sui 12 principi (ricerca 01, §17.1).

### 2.3 Fonti e citazioni

- **Fonti moderne**: citazione autore-anno (`\parencite`), bibliografia finale; pochi studi per capitolo, raccontati bene, piuttosto che molti elencati.
- **Numeri**: solo dati verificati (registro, ricerca 00); ogni cifra con la sua fonte; dimensioni dell'effetto spiegate a parole («gli studenti ricordavano circa il 50% in più»), non in formule.
- **Fonti classiche**: in nota, con il passo; testo originale solo nelle epigrafi e in poche citazioni brevi.
- **Livelli di prova**: nel testo si distingue ciò che è solido, ciò che è promettente e ciò che è falso (senza le sigle A/B/C/D della ricerca, ma con parole chiare).

### 2.4 Lessico

Termini italiani, con l'inglese tra parentesi alla prima occorrenza: *pratica del recupero* (*retrieval practice*), *pratica distribuita* (*spacing*), *alternanza* (*interleaving*), *difficoltà desiderabili* (*desirable difficulties*), *ripasso a successive riprese* (*successive relearning*), *metacognizione*. Glossario in Appendice C.

### 2.5 Due lettori, un solo libro

- Il libro parla a **studenti** e **docenti** insieme: le Parti I–IV servono a entrambi (i docenti devono conoscere il metodo prima di insegnarlo), la Parte V è per gli studenti, la Parte VI per i docenti.
- Nei capitoli per gli studenti, un breve riquadro facoltativo **«Per chi insegna»** può indicare che cosa ne deriva per la didattica, con rimando alla Parte VI; nei capitoli per i docenti, i rimandi vanno ai capitoli del metodo.
- Esempi e aperture narrative sono presi soprattutto dalla **vita universitaria** (lezioni, sessioni, esami orali, tesi); gli esempi scolastici restano dove servono (il ricordo della scuola, il cap. 19).

---

## 3. Architettura: parti, capitoli, lunghezze

| Parte | Cap. | Titolo | Parole | Epigrafe |
|---|---|---|---|---|
| I — Perché si studia | 1 | Non per la scuola, ma per la vita | 3.000–3.500 | ✔ Seneca, Epistulae ad Lucilium 106, 12 |
| I — Perché si studia | 2 | Come si studia all'università, oggi | 3.500 | ✔ Quintiliano, Institutio oratoria XI, 2, 41 |
| I — Perché si studia | 3 | Il desiderio di sapere | 3.000–3.500 | ◐ Aristotele, Metafisica A 1, 980a21 |
| II — Come funziona la memoria | 4 | Da Simonide a Ebbinghaus | 3.500–4.000 | ✔ Cicerone, De oratore II, 353 |
| II — Come funziona la memoria | 5 | Il cervello che impara | 3.500 | ✔ Agostino, Confessiones X, 8, 15 |
| II — Come funziona la memoria | 6 | Le due forze della memoria | 3.000 | ✔ Quintiliano, Institutio oratoria XI, 2, 43 |
| II — Come funziona la memoria | 7 | Perché ci inganniamo | 3.000 | ✔ Platone, Apologia di Socrate 21d |
| III — Il metodo | 8 | Ricordare per ricordare | 4.000–4.500 | ✔ Aristotele, De memoria et reminiscentia 451a12 |
| III — Il metodo | 9 | Il tempo alleato | 3.500–4.000 | ✔ Quintiliano, Institutio oratoria XI, 2, 40 |
| III — Il metodo | 10 | Mescolare le carte | 2.500 | ✔ Seneca, Epistulae ad Lucilium 84, 3 |
| III — Il metodo | 11 | Capire | 4.000 | ✔ Seneca, Epistulae ad Lucilium 33, 8 |
| III — Il metodo | 12 | Immagini, parole e palazzi della memoria | 3.000 | ✔ Rhetorica ad Herennium III, 16, 29 |
| III — Il metodo | 13 | Insegnare per imparare | 2.500 | ✔ Seneca, Epistulae ad Lucilium 7, 8 |
| III — Il metodo | 14 | Il metodo in una settimana | 3.500 | ✔ Tommaso d'Aquino, Summa theologiae II-II, q. 49, a. 1, ad 2 |
| IV — Le condizioni dell'apprendimento | 15 | Il corpo che impara | 3.000 | ✔ Quintiliano, Institutio oratoria XI, 2, 43 |
| IV — Le condizioni dell'apprendimento | 16 | L'attenzione | 3.000 | ✔ Seneca, Epistulae ad Lucilium 2, 2 |
| IV — Le condizioni dell'apprendimento | 17 | L'intelligenza artificiale: stampella o tutor? | 3.500 | ◐ Platone, Fedro 275a |
| IV — Le condizioni dell'apprendimento | 18 | Motivazione e scopo | 3.000 | ✔ Cicerone, Cato maior de senectute 21 |
| V — Studiare all'università | 19 | Dalla scuola all'università | 3.500 | ✔ Publilio Siro, Sententiae |
| V — Studiare all'università | 20 | Il semestre, le lezioni, gli esami | 4.000 | ✔ Cicerone, Cato maior de senectute 26 |
| V — Studiare all'università | 21 | Ogni disciplina ha il suo studio | 5.000 | ◐ Aristotele, Etica Nicomachea II 1, 1103a32 |
| V — Studiare all'università | 22 | Studenti con DSA e altri bisogni speciali | 4.000 | ✔ Ugo di San Vittore, Didascalicon III, 6 |
| VI — Per chi insegna all'università | 23 | Insegnare con la scienza dell'apprendimento | 4.500 | ◐ Plutarco, Come si deve ascoltare 48c |
| VI — Per chi insegna all'università | 24 | Valutare per far imparare | 4.000 | ✔ Platone, Menone 82e |
| VI — Per chi insegna all'università | 25 | Contro i miti | 3.500 | ✔ Rhetorica ad Herennium III, 24, 40 |
| VI — Per chi insegna all'università | 26 | Formare chi insegnerà | 3.500 | ✔ Comenio, Didactica magna (1657), frontespizio |
| — | — | *Congedo*: Sulle spalle dei giganti | 1.500 | ✔ Ugo di San Vittore, Didascalicon VI, 3 |
| Appendici | A–C | Una proposta di indagine: come studiano gli studenti italiani · Schede pratiche · Glossario | 6.000–9.000 | — |

**Totale capitoli**: 90.000–92.500 parole.

**Equilibrio tra le parti** (proposta): Parte III (il metodo) è il cuore del libro e la più lunga; Parti I e II preparano il terreno e danno le ragioni; Parte IV tratta le condizioni; Parte V porta il metodo nella vita universitaria (passaggio dalla scuola, semestre ed esami, discipline, DSA); Parte VI è rivolta ai docenti universitari e a chi forma gli insegnanti, e può essere letta anche separatamente.

---

## 4. Percorsi di lettura

| Lettore | Percorso consigliato |
|---|---|
| **Matricola** (o maturando) | 1 → 19 → 7 → 8 → 9 → 11 → 14 → 20 → 16 → 18 |
| **Studente universitario** | 1 → 2 → 6 → 7 → 8 → 9 → 10 → 11 → 13 → 14 → 20 → 21 → 17 |
| **Studente con DSA** | 1 → 7 → 8 → 9 → 22 → 14 → 20 |
| **Laureando, dottorando, chi studia per un concorso** | 7 → 8 → 9 → 10 → 11 → 14 → 17 → 20 (§5) |
| **Docente universitario** | 2 → 6 → 7 → 8 → 9 → 10 → 23 → 24 → 25 → 22 |
| **Formatore di insegnanti, futuro insegnante** | 1 → 6 → 7 → 8 → 9 → 11 → 25 → 26 → 23 |
| **Responsabile della didattica, centro di *teaching and learning*** | 2 → 19 → 23 → 24 → 26 → Appendice A |
| **Lettore curioso** | dall'inizio alla fine |

Il percorso consigliato va presentato in «Come usare questo libro» (pagine iniziali).

---

## 5. Schede dei capitoli

### Parte I — Perché si studia

#### Capitolo 1 — Non per la scuola, ma per la vita

> *Non vitae sed scholae discimus.*  
> «Impariamo non per la vita, ma per la scuola.»  
> — Seneca, Epistulae ad Lucilium 106, 12 ✔

- **Tesi**: Dimentichiamo quasi tutto ciò che studiamo non per mancanza di talento, ma perché studiamo nel modo sbagliato e per lo scopo sbagliato. Il problema è antico (Seneca lo denunciava) e oggi sappiamo come risolverlo.
- **Domanda guida**: A che cosa serve studiare, se poi si dimentica tutto?
- **Apertura**: La frase che tutti citano come motto della scuola — *non scholae sed vitae discimus* — nell'originale di Seneca dice il contrario ed è un rimprovero. Si parte da questa scoperta: la massima che dovrebbe ispirare la scuola era, in origine, la diagnosi del suo fallimento.
- **Contenuti**:
  - **La frase rovesciata** — Seneca, *Ep.* 106, 11–12: il contesto (i «giochi da scacchiera» delle dispute filosofiche), la *litterarum intemperantia*, il rovesciamento ottocentesco del motto.
  - **Che cosa resta dopo la scuola** — la curva dell'oblio (Ebbinghaus 1885; replica di Murre & Dros 2015) raccontata in modo semplice; l'esperienza universale dell'esame superato e dimenticato; il dato italiano: gli adulti tra gli ultimi dell'OCSE (PIAAC 2023) nonostante buoni risultati alla primaria.
  - **Tre errori che si possono correggere** — (1) un errore di metacognizione: le strategie che *sembrano* funzionare non funzionano; (2) un errore di progettazione: si studia per la prova di domani, non per ricordare; (3) un vuoto di senso: non si sa perché si studia.
  - **Che cosa promette questo libro, e che cosa no** — niente trucchi, niente «impara in 7 giorni»; un metodo noto, fondato su prove, che richiede fatica ma funziona. Presentazione del percorso del libro.
- **Riquadri**: *Da ricordare*: dimenticare è normale; dimenticare tutto dopo l'esame è il segno di un metodo sbagliato, non di una testa sbagliata. *Esercizio*: scrivi, senza guardare, che cosa ricordi di un argomento studiato un anno fa per una verifica.
- **Domande per il ripasso** (esempi):
  1. Che cosa diceva davvero Seneca, e perché la frase è stata rovesciata?
  2. Quali sono i tre errori che fanno dimenticare ciò che si studia?
  3. Pensa all'ultimo esame che hai superato: quanto ne ricordi oggi? Perché?
- **Fonti**: ricerca 01 §1, §2.5, §3.4; 02 §5; 03 §3.4 · bibliografia: `ebbinghaus1885`, `murre2015`, `oecd2024piaac`
- **Lunghezza**: 3.000–3.500 parole · **File**: `tex/capitoli/cap01-vita.tex`
- **Note**: Capitolo di apertura: tono personale, concreto; esempi tratti soprattutto dall'università (l'esame preparato in tre settimane e dimenticato dopo l'appello). **Capitolo di prova: prima stesura scritta il 22/09/2026** (circa 3.200 parole; resta un segnaposto per un ricordo personale dell'autore, vedi decisione 10). Aggiunti Bahrick (1984) sul *permastore* e Karpicke et al. (2009); nessun riquadro «Per chi insegna».

#### Capitolo 2 — Come si studia all'università, oggi

> *devoret initio taedium illud et scripta et lecta saepius revolvendi*  
> «sopporti all'inizio la noia di rileggere più volte ciò che ha scritto e letto»  
> — Quintiliano, Institutio oratoria XI, 2, 41 ✔

- **Tesi**: All'università si studia molto ma con le strategie meno efficaci, senza che nessuno — né la scuola né l'università — abbia mai insegnato come si studia; i dati italiani lo mostrano: abbandoni al primo anno, ritardi, pochi laureati.
- **Domanda guida**: Come studiano davvero gli studenti universitari, e con quali risultati?
- **Apertura**: Il ritratto di uno studente la terza settimana di sessione: evidenziatore, rilettura del manuale, riassunti copiati, notti corte, l'appello. Poi i numeri: l'84% degli universitari americani rilegge come strategia principale (Karpicke et al., 2009); e in Italia il 13,3% delle matricole abbandona dopo il primo anno (ANVUR 2026).
- **Contenuti**:
  - **Rileggere, sottolineare, ripetere** — le strategie più usate dagli universitari (Karpicke et al., 2009; Kornell & Bjork, 2007; Hartwig & Dunlosky, 2012); perché sono le preferite.
  - **Che cosa ci si porta dalla scuola** — sintesi dei dati sulla scuola italiana (PISA 2025, INVALSI 2026: metà dei diplomati sotto i traguardi; molte ore di compiti; ripetizioni private): chi arriva all'università non ha mai imparato un metodo.
  - **I numeri dell'università italiana** — pochi laureati (31,1% dei 25–34enni, penultimi in UE), abbandoni al primo anno, laureati in corso (60,4%), età alla laurea (AlmaLaurea 2026); adulti tra gli ultimi dell'OCSE (PIAAC).
  - **Nessuno ci ha insegnato a studiare** — né la scuola né l'università; docenti universitari senza formazione didattica; l'IA già usata per studiare.
- **Riquadri**: *Da ricordare*: il problema non è studiare poco, è studiare male. *Esercizio*: elenca le strategie che usi, in ordine di frequenza (la stessa domanda della proposta di indagine, Appendice A).
- **Domande per il ripasso** (esempi):
  1. Quali sono le strategie di studio più diffuse tra gli universitari?
  2. Perché tanti studenti abbandonano l'università dopo il primo anno?
  3. (Ripresa, cap. 1) Quali sono i tre errori che fanno dimenticare?
- **Fonti**: ricerca 02 §2–6, §9; 01 §1.2 · bibliografia: `karpicke2009`, `hartwig2012`, `kornell2007`, `almalaurea2026`, `oecd2026pisa`, `invalsi2026`
- **Lunghezza**: 3.500 parole · **File**: `tex/capitoli/cap02-oggi.tex`
- **Note**: Non dipende più dall'indagine (rinviata a dopo la pubblicazione): usa dati internazionali e ufficiali italiani (ricerca 02). Dati da verificare: D-01…D-18 del registro, in particolare D-15 e D-16.

#### Capitolo 3 — Il desiderio di sapere

> *Πάντες ἄνθρωποι τοῦ εἰδέναι ὀρέγονται φύσει.*  
> «Tutti gli uomini per natura desiderano sapere.»  
> — Aristotele, Metafisica A 1, 980a21 ◐

- **Tesi**: Studiare ha senso perché la conoscenza è la base del pensiero, del giudizio critico e della libertà; e sapere perché si studia aiuta davvero a studiare meglio.
- **Domanda guida**: Perché vale la pena studiare, oggi che tutto si trova su Internet e un'IA risponde a tutto?
- **Apertura**: Aristotele: «Tutti gli uomini per natura desiderano sapere». Poi la domanda provocatoria di uno studente: «Perché devo imparare le date, se posso cercarle sul telefono?». Il capitolo risponde con la scienza cognitiva, non con la retorica.
- **Contenuti**:
  - **Tutti gli uomini desiderano sapere** — la curiosità come tratto umano (Aristotele; Gruber et al., 2014 sulla curiosità e la memoria).
  - **Si pensa con ciò che si sa** — la memoria di lavoro è piccola, la conoscenza la espande (Chase & Simon; Recht & Leslie: la comprensione dipende dalla conoscenza del contenuto); il pensiero critico non esiste senza conoscenze (Willingham, 2007); il falso dilemma «nozioni o competenze».
  - **Sapere per essere liberi** — per cercare, valutare le fonti, riconoscere un errore dell'IA, bisogna già sapere; Seneca: «ci sia qualche differenza tra te e un libro» (*Ep.* 33).
  - **Dare un senso a ciò che si studia** — il valore di utilità (Hulleman & Harackiewicz, 2009) e lo scopo che trascende il sé (Yeager et al., 2014): scrivere perché un argomento conta per sé e per gli altri migliora davvero perseveranza e voti.
- **Riquadri**: *Esercizio*: scrivi in cinque righe perché la materia che ti piace meno potrebbe servirti nella vita, o servire a qualcun altro attraverso di te. *Da ricordare*: la conoscenza non è un archivio da consultare: è ciò con cui pensi.
- **Domande per il ripasso** (esempi):
  1. Perché cercare su Internet non sostituisce il sapere?
  2. Che cosa hanno mostrato Hulleman e Harackiewicz?
  3. (Ripresa, cap. 2) Qual è la strategia di studio più diffusa?
- **Fonti**: ricerca 01 §8, §10; 03 §2.5 · bibliografia: `recht1988`, `willingham2007`, `hulleman2009`, `yeager2014`
- **Lunghezza**: 3.000–3.500 parole · **File**: `tex/capitoli/cap03-sapere.tex`
- **Note**: Capitolo «filosofico» ma sostenuto da prove. Collegamento naturale con il tema della vocazione e dello scopo personale (possibile ponte con altri progetti dell'autore, se opportuno).

### Parte II — Come funziona la memoria

#### Capitolo 4 — Da Simonide a Ebbinghaus

> *ordinem esse maxime, qui memoriae lumen adferret*  
> «è soprattutto l'ordine a dare luce alla memoria»  
> — Cicerone, De oratore II, 353 ✔

- **Tesi**: Le intuizioni fondamentali sulla memoria sono antiche: da Simonide a Tommaso d'Aquino gli antichi avevano capito l'importanza di ordine, immagini, emozione ed esercizio. La scienza moderna, da Ebbinghaus in poi, le ha messe alla prova.
- **Domanda guida**: Che cosa sapevano gli antichi sulla memoria, e che cosa ha aggiunto la scienza?
- **Apertura**: Il racconto di Simonide di Ceo e del banchetto di Scopas (Cicerone, *De or.* II, 351–354): il tetto crolla, Simonide riconosce i morti ricordando dove sedevano. Nasce l'arte della memoria.
- **Contenuti**:
  - **Il banchetto di Scopas** — Simonide, il metodo dei luoghi, la *Rhetorica ad Herennium* (luoghi e immagini).
  - **Aristotele e l'arte di ricordare** — memoria e reminiscenza; gli esercizi di rievocazione conservano la memoria (*De memoria* 451a); l'ordine aiuta (452a).
  - **Retori, monaci e teologi** — Quintiliano (esercizio, il sonno, la noia del ripasso), Agostino (i palazzi della memoria), Ugo di San Vittore (il primo manuale dello studente), Tommaso d'Aquino (quattro regole), Matteo Ricci (il palazzo della memoria in Cina). Cultura della *ruminatio*.
  - **La nascita di una scienza** — Bacone (recitare invece di rileggere), William James (ricordare «dall'interno»), Ebbinghaus (curva dell'oblio, distribuzione), Spitzer (1939: il test in classe), Bartlett (ricordare è ricostruire).
- **Riquadri**: *Da ricordare*: ordine, immagini, emozione ed esercizio frequente — le quattro regole di Tommaso — sono ancora valide. Riquadro con una cronologia essenziale (da Simonide al 2026).
- **Domande per il ripasso** (esempi):
  1. Che cosa scoprì Simonide secondo il racconto di Cicerone?
  2. Quali sono le quattro regole di Tommaso d'Aquino per ricordare?
  3. (Ripresa, cap. 1) Che cosa mostra la curva dell'oblio?
- **Fonti**: ricerca 01 §2; 03 (intero) · bibliografia: `ebbinghaus1885`, `james1890`, `spitzer1939`, `carruthers1990`, `yates1966`, `rossi1960`, `bolzoni1995`
- **Lunghezza**: 3.500–4.000 parole · **File**: `tex/capitoli/cap04-storia.tex`
- **Note**: Attenzione all'anacronismo (ricerca 03, §8): presentare gli antichi come intuizioni poi verificate, non come autorità. Citazioni da ricerca 03; verifiche K-17, K-18, K-29.

#### Capitolo 5 — Il cervello che impara

> *Magna ista vis est memoriae, magna nimis, deus meus.*  
> «Grande è questa potenza della memoria, troppo grande, Dio mio.»  
> — Agostino, Confessiones X, 8, 15 ✔

- **Tesi**: Imparare significa modificare la memoria a lungo termine attraverso attenzione, memoria di lavoro, codifica, consolidamento e recupero. Dimenticare fa parte del sistema.
- **Domanda guida**: Che cosa succede nel cervello quando impariamo?
- **Apertura**: Agostino si stupisce della memoria: «Grande è questa potenza, troppo grande». Poi il paziente H.M.: senza ippocampo non poteva più formare nuovi ricordi, ma imparava ancora nuove abilità.
- **Contenuti**:
  - **L'attenzione, porta d'ingresso** — ciò a cui non si presta attenzione non si impara.
  - **La memoria di lavoro, piccola e preziosa** — circa quattro elementi (Cowan, 2001); il collo di bottiglia di ogni apprendimento; il *chunking*.
  - **La memoria a lungo termine** — dichiarativa e procedurale; praticamente illimitata; «la memoria è il residuo del pensiero» (Willingham).
  - **Codificare, consolidare, ritrovare** — livelli di elaborazione (Craik & Lockhart), consolidamento notturno, recupero che modifica il ricordo (riconsolidamento). Neuroscienza quanto basta (Hebb, LTP, Kandel) e cautela contro il «neuro-marketing».
  - **Dimenticare non è un difetto** — interferenza, perdita di accessibilità, specificità della codifica; l'oblio come funzione.
- **Riquadri**: Figura: schema semplice attenzione → memoria di lavoro → memoria a lungo termine, con le frecce di codifica e recupero. *Da ricordare*: se nella memoria a lungo termine non è cambiato nulla, non si è imparato nulla — anche se «si è capito».
- **Domande per il ripasso** (esempi):
  1. Perché la memoria di lavoro è il collo di bottiglia dell'apprendimento?
  2. Che cosa significa che «la memoria è il residuo del pensiero»?
  3. (Ripresa, cap. 4) Che cosa aveva osservato Quintiliano sul giorno dopo?
- **Fonti**: ricerca 01 §3 · bibliografia: `cowan2001`, `baddeley1974`, `craik1972`, `tulving1973`, `kandel2001`, `nader2000`
- **Lunghezza**: 3.500 parole · **File**: `tex/capitoli/cap05-cervello.tex`
- **Note**: Linguaggio semplice; una sola figura. Ricerca 01 §3.

#### Capitolo 6 — Le due forze della memoria

> *confirmatque memoriam idem illud tempus quod esse in causa solet oblivionis*  
> «e lo stesso tempo che di solito fa dimenticare rafforza la memoria»  
> — Quintiliano, Institutio oratoria XI, 2, 43 ✔

- **Tesi**: Ogni ricordo ha una forza di immagazzinamento e una forza di recupero. Recuperare con fatica ciò che si stava dimenticando rafforza la memoria più di tutto: per questo le difficoltà desiderabili funzionano, e la prestazione immediata inganna.
- **Domanda guida**: Perché ciò che sembra facile insegna poco, e ciò che è faticoso insegna molto?
- **Apertura**: Il numero di telefono della casa dell'infanzia e il numero della camera d'albergo di ieri: due ricordi con forze opposte (esempio dei Bjork).
- **Contenuti**:
  - **Immagazzinare e ritrovare** — la nuova teoria del disuso (Bjork & Bjork, 1992) in parole semplici.
  - **Il paradosso: dimenticare aiuta a ricordare** — più un ricordo è difficile da recuperare, più il recupero riuscito lo rafforza; Quintiliano: il tempo che fa dimenticare rafforza la memoria.
  - **Le difficoltà desiderabili** — recuperare, distanziare, alternare, generare, variare (Bjork, 1994; Bjork & Bjork, 2011); la condizione: devono essere superabili.
  - **Prestazione non è apprendimento** — Soderstrom & Bjork (2015): ciò che vediamo durante lo studio non è ciò che resta.
- **Riquadri**: Tabella delle difficoltà desiderabili e del loro contrario «facile» (da ricerca 01, §4.3). *Da ricordare*: la fatica giusta è un buon segno — purché tu riesca, almeno in parte.
- **Domande per il ripasso** (esempi):
  1. Qual è la differenza tra forza di immagazzinamento e forza di recupero?
  2. Perché una difficoltà deve essere «superabile» per essere desiderabile?
  3. (Ripresa, cap. 5) Quanto è grande la memoria di lavoro?
- **Fonti**: ricerca 01 §4 · bibliografia: `bjork1992`, `bjork1994`, `bjork2011`, `soderstrom2015`
- **Lunghezza**: 3.000 parole · **File**: `tex/capitoli/cap06-dueforze.tex`
- **Note**: Capitolo teorico centrale: tutto il metodo (Parte III) si appoggia qui. Ricerca 01 §4.
- **Da coordinare (23/09/2026, registro Y-01)**: i capp. 8 e 9 (già scritti) richiamano *forza di immagazzinamento*, *forza di recupero*, *difficoltà desiderabili* (Bjork & Bjork 2011) e il paradosso «un po' di oblio rende più efficace la ripresa» come già spiegati qui: usare lo stesso lessico. Quintiliano XI, 2, 43 è qui epigrafe, nel cap. 9 in nota e nel cap. 15: decidere dove sta il commento esteso.

#### Capitolo 7 — Perché ci inganniamo

> *οὗτος μὲν οἴεταί τι εἰδέναι οὐκ εἰδώς*  
> «lui crede di sapere qualcosa pur non sapendolo»  
> — Platone, Apologia di Socrate 21d ✔

- **Tesi**: Le nostre intuizioni su come impariamo sono sistematicamente sbagliate: familiarità e fluidità ci fanno credere di sapere. Bisogna imparare a giudicare onestamente ciò che si sa.
- **Domanda guida**: Perché gli studenti scelgono le strategie peggiori, e come evitarlo?
- **Apertura**: Socrate e il politico ateniese (*Apologia* 21d): «lui crede di sapere, io non credo di sapere ciò che non so». Poi l'esperimento di Harvard: gli studenti imparavano di più con l'apprendimento attivo ma credevano il contrario (Deslauriers et al., 2019).
- **Contenuti**:
  - **La sensazione di sapere** — fluidità, familiarità, riconoscere invece di ricordare (Koriat & Bjork, 2005).
  - **L'esperimento di Harvard** — lezione brillante contro apprendimento attivo; la fatica interpretata come fallimento.
  - **Le illusioni dello studente** — rileggere, evidenziare, studiare tutto la sera prima: perché sembrano funzionare (Kornell, 2009; Kornell & Bjork, 2008); l'illusione di spiegazione (Rozenblit & Keil).
  - **Come giudicare onestamente ciò che si sa** — il test ritardato (Nelson & Dunlosky, 1991): interrogarsi dopo un po' di tempo, a libro chiuso; spiegare ad alta voce come diagnosi.
- **Riquadri**: *Esercizio*: prima di chiudere il capitolo, prevedi quante delle domande di ripasso saprai fare tra una settimana; poi controlla. *Da ricordare*: non fidarti della sensazione di sapere; fidati di ciò che sai richiamare a libro chiuso, a distanza di tempo.
- **Domande per il ripasso** (esempi):
  1. Che cosa ha mostrato l'esperimento di Deslauriers?
  2. Perché la rilettura dà l'illusione di sapere?
  3. (Ripresa, cap. 6) Che cos'è una difficoltà desiderabile?
- **Fonti**: ricerca 01 §7; 03 §2.3 · bibliografia: `koriat2005`, `bjork2013`, `deslauriers2019`, `nelson1991`, `kornell2009`, `rozenblit2002`
- **Lunghezza**: 3.000 parole · **File**: `tex/capitoli/cap07-inganni.tex`
- **Note**: Per il libro è forse il capitolo più importante: senza di esso i lettori abbandonano il metodo alla prima fatica. Ricerca 01 §7.
- **Da coordinare (23/09/2026, registro Y-02)**: i capp. 9 e 10 (già scritti) rimandano qui per l'inganno della fluidità («la spiegazione che conosci dal capitolo sugli inganni») e per la rilettura; la domanda di ripasso 6 del cap. 10 presuppone che qui si parli di Kornell & Bjork (2008). Kornell (2009) e Kornell & Bjork (2008) sono raccontati per esteso nei capp. 9 e 10: qui basta richiamarli, senza ripetere l'esperimento.

### Parte III — Il metodo

#### Capitolo 8 — Ricordare per ricordare

> *αἱ μελέται τὴν μνήμην σῴζουσι τῷ ἐπαναμιμνήσκειν*  
> «gli esercizi conservano la memoria facendo ricordare di nuovo»  
> — Aristotele, De memoria et reminiscentia 451a12 ✔

- **Tesi**: Richiamare attivamente dalla memoria è il modo più potente di studiare: il test non è solo misura, ma strumento di apprendimento.
- **Domanda guida**: Perché interrogarsi vale più che rileggere, e come si fa?
- **Apertura**: Aristotele: «gli esercizi conservano la memoria facendo ricordare di nuovo». Poi l'esperimento di Roediger & Karpicke (2006) — oppure, se disponibile, l'esperimento condotto in una classe italiana (ricerca 05, §7).
- **Contenuti**:
  - **Da Aristotele a Roediger** — Aristotele, Tommaso, Bacone, James, Gates, Spitzer: la stessa intuizione per 2.300 anni.
  - **Gli esperimenti** — Roediger & Karpicke (2006), Karpicke & Roediger (2008), Karpicke & Blunt (2011: meglio delle mappe concettuali); in classe (Roediger et al., 2011); meta-analisi (Rowland; Adesope; Yang et al., 2021, 222 studi in classi reali).
  - **Perché funziona** — rafforza il percorso di recupero, rende i ricordi più accessibili, rivela ciò che non si sa, riduce l'ansia (Agarwal et al., 2014) e protegge dallo stress (Smith et al., 2016).
  - **Come si fa** — *brain dump* a libro chiuso; domande trasformate dagli appunti; flashcard usate bene; spiegare a voce senza guardare; domande di applicazione (Agarwal, 2019); sempre con controllo e correzione.
  - **Gli errori più comuni** — girare subito la flashcard; eliminare la domanda dopo una sola risposta giusta; usare il test solo per controllare e non per imparare; test troppo difficili senza feedback.
- **Riquadri**: *In pratica*: il ciclo in tre passi (leggi — chiudi e scrivi ciò che ricordi — controlla e correggi). *Da ricordare*: ricordare fa ricordare. Tabella delle meta-analisi (versione semplificata).
- **Domande per il ripasso** (esempi):
  1. Che cosa hanno mostrato Roediger e Karpicke nel 2006?
  2. Perché il recupero riduce l'ansia da esame?
  3. (Ripresa, cap. 7) Perché gli studenti preferiscono rileggere?
- **Fonti**: ricerca 01 §5.1; 03 §2.5, §4.4; 05 §7 · bibliografia: `roediger2006`, `karpicke2008`, `karpicke2011`, `rowland2014`, `adesope2017`, `yang2021`, `butler2010`, `agarwal2019`
- **Lunghezza**: 4.000–4.500 parole · **File**: `tex/capitoli/cap08-recupero.tex`
- **Note**: Capitolo cardine. **Capitolo di prova: prima stesura scritta il 22/09/2026** (circa 4.000 parole), con figura 8.1 (dati completi di Roediger & Karpicke, 2006, esp. 2), tabella 8.1 delle meta-analisi, sottoparagrafo «E in Italia?» (interrogazione orale ed esame orale; rimando all'Appendice A per l'esperimento in classe della ricerca 05 §7) e riquadro «Per chi insegna». Bacone resta in nota con segnaposto (K-29). Verifiche S-01…S-04, K-10. Per la matematica, precisare che il «test» coincide con il problem solving (Murray et al., 2025).

#### Capitolo 9 — Il tempo alleato

> *et si fieri potest cotidie, potentissimum est*  
> «e, se possibile ogni giorno, è la cosa più efficace»  
> — Quintiliano, Institutio oratoria XI, 2, 40 ✔

- **Tesi**: Distribuire lo studio nel tempo produce ricordi molto più duraturi che concentrarlo; l'intervallo giusto dipende da quanto a lungo si vuole ricordare. Il ripasso a successive riprese combina tempo e recupero.
- **Domanda guida**: Quando ripassare, e quante volte, per ricordare a lungo?
- **Apertura**: Ovidio: «la goccia scava la pietra». Poi Ebbinghaus: 68 ripetizioni in un giorno contro 38 distribuite su tre giorni.
- **Contenuti**:
  - **La goccia che scava la pietra** — l'effetto della distribuzione, il fenomeno più replicato della psicologia (Cepeda et al., 2006).
  - **La cresta dell'oblio** — Cepeda et al. (2008): l'intervallo ottimale è una frazione del tempo per cui si vuole ricordare; intervalli troppo lunghi costano poco, troppo brevi molto; intervalli crescenti o uniformi quasi equivalenti (Latimier et al., 2021).
  - **Il ripasso a successive riprese** — Rawson & Dunlosky: recupero fino al criterio, ripreso in 3–5 sessioni; sessioni successive brevissime.
  - **Costruire un calendario di ripasso** — esempi concreti per una prova in itinere tra una settimana, un esame tra tre mesi, un concorso tra un anno; app e flashcard.
  - **Contro la notte prima dell'esame** — perché il *cramming* sembra funzionare e non funziona (Kornell, 2009); somma di studio concentrato e perdita di sonno.
- **Riquadri**: Tabella: intervallo tra ripassi in base alla data dell'esame. *In pratica*: il calendario di ripasso (rimando alla scheda in Appendice B). *Da ricordare*: il tempo è un alleato, non un nemico.
- **Domande per il ripasso** (esempi):
  1. Perché studiare tre ore il giorno prima rende meno che un'ora per tre giorni?
  2. Che cos'è il ripasso a successive riprese?
  3. (Ripresa, cap. 8) Qual è l'errore più comune con le flashcard?
- **Fonti**: ricerca 01 §5.2; 03 §3.5, §3.8 · bibliografia: `cepeda2006`, `cepeda2008`, `latimier2021`, `rawson2013`, `rawson2022`, `kornell2009`, `murray2025`
- **Lunghezza**: 3.500–4.000 parole · **File**: `tex/capitoli/cap09-tempo.tex`
- **Note**: Verifiche S-05, S-08, S-09, S-10. Collegare al curricolo italiano per unità chiuse (ricerca 01 §5.2; ricerca 02 §10). **Prima stesura scritta il 23/09/2026** (circa 3.850 parole): apertura con Ovidio e con una domanda di recupero su Ebbinghaus (cap. 1); tabella 9.1 degli intervalli (regola «20% → 5%» di Cepeda et al. 2008); tre calendari tipo (prova in itinere, esame di fine semestre, concorso); aggiunti Donoghue & Hattie 2021, Jenkins & Dallenbach 1924, Yoo et al. 2007. Rimando all'Appendice B per il modello di calendario (Appendice B da scrivere in una prossima sessione, registro Y-04). **Revisione del 23/09/2026**: aggiunto riquadro «Per chi insegna» (prove cumulative; da sostanziare nel cap. 24, Y-03); intervallo per un anno uniformato a 2–4 settimane; Quintiliano XI, 2, 43 tradotto «sul momento»; S-41 chiuso. Dipende dai capp. 6 e 7 (Y-01, Y-02).

#### Capitolo 10 — Mescolare le carte

> *Apes, ut aiunt, debemus imitari, quae vagantur et flores ad mel faciendum idoneos carpunt.*  
> «Dobbiamo imitare le api, come si dice, che vagano e colgono i fiori adatti a fare il miele.»  
> — Seneca, Epistulae ad Lucilium 84, 3 ✔

- **Tesi**: Alternare tipi diversi di problemi o esempi aiuta a distinguerli e a scegliere la strategia giusta; funziona soprattutto in matematica e per categorie simili, non per tutto.
- **Domanda guida**: È meglio fare esercizi tutti dello stesso tipo o mescolarli?
- **Apertura**: Le api di Seneca che volano di fiore in fiore; poi l'esperimento dei quadri dei pittori paesaggisti (Kornell & Bjork, 2008).
- **Contenuti**:
  - **Blocchi e mescolanze** — che cosa si intende; perché i libri di esercizi sono quasi sempre a blocchi.
  - **Gli esperimenti** — Rohrer & Taylor (2007); lo studio randomizzato in classe di Rohrer et al. (2020): 61% contro 38%.
  - **Quando funziona e quando no** — Brunmair & Richter (2019): forte per categorie visive simili, moderato in matematica, nullo per testi, negativo per liste di parole.
  - **Come mescolare** — prima introdurre (blocco), poi mescolare con i tipi già visti; combinare con la distribuzione.
- **Riquadri**: *In pratica*: come trasformare una pagina di esercizi a blocchi in una sessione mista. *Da ricordare*: all'esame i problemi arrivano mescolati: allenati così.
- **Domande per il ripasso** (esempi):
  1. Perché l'alternanza aiuta a scegliere la strategia giusta?
  2. In quali casi l'alternanza non conviene?
  3. (Ripresa, cap. 9) Come si sceglie l'intervallo tra due ripassi?
- **Fonti**: ricerca 01 §5.3 · bibliografia: `kornell2008`, `rohrer2007`, `rohrer2020`, `brunmair2019`
- **Lunghezza**: 2.500 parole · **File**: `tex/capitoli/cap10-alternanza.tex`
- **Note**: Capitolo breve. Verifica S-11. **Prima stesura scritta il 23/09/2026** (circa 2.450 parole), con riquadro «Per chi insegna» e distinzione tra alternanza vera e semplice alternarsi delle materie nella giornata. Verifiche S-33 (autori corretti, X-06), S-35, S-36. **Revisione del 23/09/2026**: nota su Seneca corretta a 84, 7 (K-23 chiuso); aggiunto il limite di Rohrer et al. (2020: ragazzi di 12–13 anni, una sola materia); matematica in Brunmair & Richter = effetto «piccolo». Dipende dai capp. 7 (Kornell & Bjork) e 23–24 (Y-02, Y-03).

#### Capitolo 11 — Capire

> *Aliud autem est meminisse, aliud scire.*  
> «Altro è ricordare, altro è sapere.»  
> — Seneca, Epistulae ad Lucilium 33, 8 ✔

- **Tesi**: Ricordare e capire non sono in contrasto: si capisce collegando ciò che si studia a ciò che si sa, spiegandoselo, generando risposte e correggendo gli errori; e per capire bisogna anche ricordare.
- **Domanda guida**: Che cosa significa capire, e come si studia per capire?
- **Apertura**: Seneca, *Ep.* 33: «Altro è ricordare, altro è sapere… ci sia qualche differenza tra te e un libro». Poi il testo di Bransford & Johnson sul bucato, incomprensibile senza titolo.
- **Contenuti**:
  - **Ricordare e sapere** — schemi e conoscenza pregressa (Ausubel; Bransford & Johnson; Chi et al., 1981 esperti e principianti).
  - **Chiedersi perché** — l'interrogazione elaborativa.
  - **Spiegarsi gli esempi** — l'auto-spiegazione (Chi et al., 1989; Bisra et al., 2018).
  - **Generare prima di ricevere** — effetto di generazione, pre-domande (Pan & Carpenter, 2023; King-Shepard et al., 2025), fallimento produttivo con cautela.
  - **Sbagliare per imparare** — errori a basso rischio con feedback; effetto di ipercorrezione (Metcalfe, 2017).
  - **Imparare a memoria non è una colpa** — la falsa contrapposizione tra studio mnemonico e studio ragionato; memorizzare con recupero e distribuzione; in dialogo con le Nuove Indicazioni 2025.
- **Riquadri**: *In pratica*: le tre domande da farsi a fine paragrafo (Che cosa ho letto? Perché è vero? Come si collega a ciò che so?). *Esercizio*: la «tecnica Feynman» presentata con onestà (combina recupero, auto-spiegazione e individuazione delle lacune).
- **Domande per il ripasso** (esempi):
  1. Che cosa intende Seneca distinguendo ricordare e sapere?
  2. Perché rispondere a domande prima della lezione aiuta?
  3. (Ripresa, cap. 10) Quando l'alternanza è più utile?
- **Fonti**: ricerca 01 §5.4–5.5, §8; 03 §3.4 · bibliografia: `chi1989`, `bisra2018`, `slamecka1978`, `bertsch2007`, `pan2023`, `kingshepard2025`, `metcalfe2017`, `bransford1972`, `chase1973`
- **Lunghezza**: 4.000 parole · **File**: `tex/capitoli/cap11-capire.tex`
- **Note**: Capitolo di sintesi tra memoria e comprensione; tocca un tema sensibile nel dibattito italiano. Ricerca 01 §5.4–5.5, §8. **Prima stesura scritta il 23/09/2026** (circa 3.500 parole): testo «sul bucato» riscritto (non tradotto) sul modello di Bransford & Johnson; aggiunti Recht & Leslie 1988, Gick & Holyoak 1983 (trasferimento), Willingham 2007, il quaderno degli errori; Nuove Indicazioni citate con gli estremi del D.M. 221/2025 (N-09). Resta K-23 (numerazione di Seneca, *Ep.* 84).

#### Capitolo 12 — Immagini, parole e palazzi della memoria

> *Constat igitur artificiosa memoria ex locis et imaginibus.*  
> «La memoria artificiale consiste dunque di luoghi e di immagini.»  
> — Rhetorica ad Herennium III, 16, 29 ✔

- **Tesi**: Parole e immagini insieme si ricordano meglio; disegnare aiuta; le mnemotecniche sono strumenti potenti ma di nicchia, utili per liste e associazioni arbitrarie, non per capire.
- **Domanda guida**: Servono le immagini e le tecniche di memoria?
- **Apertura**: La *Rhetorica ad Herennium*: le cose quotidiane non si ricordano, quelle straordinarie sì. Poi i campioni di memoria e l'esperimento di Dresler et al. (2017).
- **Contenuti**:
  - **Parole e immagini** — doppia codifica (Paivio); principi dell'apprendimento multimediale (Mayer): immagini pertinenti, vicine al testo, senza decorazioni.
  - **Disegnare per ricordare** — l'effetto del disegno (Wammes et al., 2016).
  - **Il metodo dei luoghi** — come si costruisce un palazzo della memoria; Matteo Ricci; quando serve.
  - **Mnemotecniche: quando servono e quando no** — acronimi, parole chiave, rime; aiutano a ritrovare, non a capire (Dunlosky et al., 2013). Nessun rapporto con gli «stili visivi» (rimando al cap. 25).
- **Riquadri**: *Esercizio*: costruisci un palazzo della memoria per un elenco che devi imparare (es. i re di Roma, le tappe della mitosi). *Da ricordare*: le immagini aiutano tutti quando il contenuto è visivo — non esistono «persone visive».
- **Domande per il ripasso** (esempi):
  1. Che cosa dice la teoria della doppia codifica?
  2. Perché le mnemotecniche non bastano per studiare?
  3. (Ripresa, cap. 11) Che cos'è l'auto-spiegazione?
- **Fonti**: ricerca 01 §5.6–5.7; 03 §3.2–3.3 · bibliografia: `paivio1986`, `mayer2020`, `wammes2016`, `dresler2017`
- **Lunghezza**: 3.000 parole · **File**: `tex/capitoli/cap12-immagini.tex`
- **Note**: Ricerca 01 §5.6–5.7; ricerca 03 §3.2–3.3. Verifiche S-13, K-17. **Prima stesura scritta il 23/09/2026** (circa 2.700 parole): apertura con *Rhetorica ad Herennium* III, 22, 35 e Dresler et al. 2017; Tommaso (regole 1–2); mappe concettuali costruite a memoria; palazzo della memoria per le fasi della mitosi; chiusura con *Rhetorica ad Herennium* III, 24, 40 (epigrafe del cap. 25). Verifica S-40 (Wammes, fonte secondaria).

#### Capitolo 13 — Insegnare per imparare

> *homines dum docent discunt*  
> «gli uomini, mentre insegnano, imparano»  
> — Seneca, Epistulae ad Lucilium 7, 8 ✔

- **Tesi**: Insegnare ad altri aiuta chi insegna, soprattutto perché obbliga a recuperare senza appunti e a organizzare il sapere.
- **Domanda guida**: Perché spiegare a qualcuno fa imparare chi spiega?
- **Apertura**: Seneca: «gli uomini, mentre insegnano, imparano». Poi uno studente che prepara una spiegazione per il compagno assente.
- **Contenuti**:
  - **Docendo discimus** — l'origine del motto (Seneca, *Ep.* 7, 8).
  - **Che cosa dicono le prove** — aspettarsi di insegnare (Nestojko et al., 2014); insegnare davvero (Fiorella & Mayer); il ruolo del recupero (Koh et al., 2018); tutoraggio tra pari.
  - **Spiegare senza appunti** — perché insegnare leggendo dagli appunti rende poco.
  - **Studiare in gruppo, bene** — interrogarsi a vicenda e spiegarsi, non rileggere insieme; ruoli e regole.
- **Riquadri**: *In pratica*: una sessione di studio a coppie in 30 minuti. *Da ricordare*: insegnare è recuperare ad alta voce.
- **Domande per il ripasso** (esempi):
  1. Da dove viene il motto «docendo discimus»?
  2. Perché insegnare leggendo gli appunti rende poco?
  3. (Ripresa, cap. 12) Quando conviene il metodo dei luoghi?
- **Fonti**: ricerca 01 §5.8; 03 §3.4 · bibliografia: `nestojko2014`, `fiorella2013`, `koh2018`
- **Lunghezza**: 2.500 parole · **File**: `tex/capitoli/cap13-insegnare.tex`
- **Note**: Capitolo breve. Ricerca 01 §5.8. **Prima stesura scritta il 23/09/2026** (circa 2.200 parole): scena d'apertura tipica (Chiara e Marco); aggiunta l'illusione della profondità esplicativa (Rozenblit & Keil 2002); riquadro «Per chi insegna»; il tutoraggio tra pari resta senza fonte specifica (B-11) ed è rinviato ai capp. 20 e 23.

#### Capitolo 14 — Il metodo in una settimana

> *memoria non solum a natura proficiscitur, sed etiam habet plurimum artis et industriae*  
> «la memoria non deriva soltanto dalla natura, ma dipende moltissimo dall'arte e dall'impegno»  
> — Tommaso d'Aquino, Summa theologiae II-II, q. 49, a. 1, ad 2 ✔

- **Tesi**: Tutti i principi si combinano in un metodo semplice e ripetibile: prima, durante e dopo lo studio; il giorno dopo; le settimane successive; prima della prova.
- **Domanda guida**: Come si mette insieme tutto, in una settimana di studio reale?
- **Apertura**: Tommaso d'Aquino: la memoria «dipende moltissimo dall'arte e dall'impegno». Poi la settimana-tipo di una studentessa del secondo anno durante il semestre, giorno per giorno.
- **Contenuti**:
  - **Prima, durante e subito dopo** — pre-domande; seguire la lezione o leggere il manuale per capire; *brain dump*; preparare le domande.
  - **Il giorno dopo** — primo recupero dopo il sonno; ristudiare solo gli errori.
  - **Le settimane successive** — riprese distanziate e mescolate di tutti i corsi del semestre; calendario.
  - **Prima dell'esame** — simulazioni dello scritto e dell'orale; niente materiale nuovo; niente notti in bianco.
  - **Una settimana tipo all'università** — con lezioni, studio individuale, ripassi, studio di gruppo (rimandi ai capp. 19–20).
- **Riquadri**: Scheda riassuntiva del metodo (una pagina, da fotocopiare; ripresa in Appendice B). Tabella delle dieci tecniche con il loro grado di efficacia (Dunlosky et al., 2013; Donoghue & Hattie, 2021).
- **Domande per il ripasso** (esempi):
  1. Quali sono i passi del metodo subito dopo aver studiato?
  2. Che cosa si fa nelle ultime due settimane prima di un esame?
  3. (Ripresa, capp. 8–9) Perché recupero e distribuzione funzionano meglio insieme?
- **Fonti**: ricerca 01 §17.2; 04 §6; 03 §4.4 · bibliografia: `dunlosky2013`, `donoghue2021`, `carpenter2022`
- **Lunghezza**: 3.500 parole · **File**: `tex/capitoli/cap14-metodo.tex`
- **Note**: Capitolo operativo che chiude la Parte III; deve essere praticissimo. Ricerca 01 §6, §17.2; ricerca 04. **Prima stesura scritta il 23/09/2026** (circa 3.100 parole): premessa sui crediti (D.M. 270/2004, N-10); riquadro «Il metodo in una pagina» (da riprendere in Appendice B); tabella 14.1 (settimana di Sara, II anno di Economia) e tabella 14.2 (dieci tecniche: Dunlosky 2013 + Donoghue & Hattie 2021, S-37); paragrafi «E se sei già in ritardo?» e «Come far diventare il metodo un'abitudine» (modello KBCP, McDaniel & Einstein 2020).

### Parte IV — Le condizioni dell'apprendimento

#### Capitolo 15 — Il corpo che impara

> *Mirum dictu est, nec in promptu ratio, quantum nox interposita adferat firmitatis.*  
> «È straordinario a dirsi, e la ragione non è evidente, quanta solidità aggiunga una notte interposta.»  
> — Quintiliano, Institutio oratoria XI, 2, 43 ✔

- **Tesi**: Il corpo partecipa all'apprendimento: il sonno consolida i ricordi, il movimento aiuta, lo stress cronico danneggia, le pause vere servono; gli integratori non servono.
- **Domanda guida**: Che cosa c'entrano sonno, movimento e stress con lo studio?
- **Apertura**: Quintiliano: «quanta solidità aggiunga una notte interposta». Poi Jenkins & Dallenbach (1924) e il «salto» a 24 ore nella replica della curva di Ebbinghaus.
- **Contenuti**:
  - **Il sonno che consolida** — Rasch & Born (2013); privazione di sonno e nuovi ricordi (Yoo et al., 2007); adolescenti e orari.
  - **Il movimento** — attività fisica e funzioni esecutive (Hillman et al., 2008); prove più deboli per l'effetto immediato.
  - **Stress e ansia** — lo stress al momento del recupero; il recupero come protezione (Smith et al., 2016); ansia matematica.
  - **Pause vere** — riposo senza stimoli (Dewar et al., 2012); la pausa sul telefono non è una pausa.
  - **Cibi e integratori: poche prove** — contro il marketing del «cibo per il cervello»; *mens sana in corpore sano* nel suo senso originale (Giovenale).
- **Riquadri**: *Da ricordare*: la notte prima dell'esame si dorme. *In pratica*: la sequenza «studia la sera, dormi, recupera la mattina».
- **Domande per il ripasso** (esempi):
  1. Perché il sonno aiuta a ricordare?
  2. Che cosa significava davvero «mens sana in corpore sano»?
  3. (Ripresa, cap. 14) Che cosa si fa il giorno dopo aver studiato?
- **Fonti**: ricerca 01 §11; 03 §3.5, §3.7 · bibliografia: `jenkins1924`, `rasch2013`, `yoo2007`, `hillman2008`, `dewar2012`, `smith2016`
- **Lunghezza**: 3.000 parole · **File**: `tex/capitoli/cap15-corpo.tex`
- **Note**: Ricerca 01 §11. Verifica K-25.

#### Capitolo 16 — L'attenzione

> *Nusquam est qui ubique est.*  
> «Non è da nessuna parte chi è dappertutto.»  
> — Seneca, Epistulae ad Lucilium 2, 2 ✔

- **Tesi**: L'attenzione è la condizione di ogni apprendimento: il multitasking non esiste, il telefono ruba attenzione; su appunti a mano e carta le prove sono più sfumate di quanto si dica.
- **Domanda guida**: Come proteggere l'attenzione mentre si studia?
- **Apertura**: Seneca: «non è da nessuna parte chi è dappertutto». Poi l'esperimento di Sana et al. (2013): anche chi vede lo schermo del vicino impara meno.
- **Contenuti**:
  - **Una cosa alla volta** — il costo dell'alternanza tra compiti.
  - **Il telefono** — distrazione attiva; divieti a scuola e prove miste (Beland & Murphy; Goodyear et al., 2025); il divieto italiano del 2025; la vera competenza: gestire il telefono a casa.
  - **Appunti a mano o al computer?** — Mueller & Oppenheimer (2014) e la replica di Urry et al. (2021); ciò che conta è elaborare e riusare gli appunti.
  - **Carta o schermo?** — Delgado et al. (2018): piccolo vantaggio della carta per testi espositivi.
  - **Musica e silenzio** — musica con testo e compiti impegnativi; il mito Mozart.
- **Riquadri**: *In pratica*: il telefono in un'altra stanza; sessioni da 25–45 minuti; notifiche spente. *Da ricordare*: ciò a cui non presti attenzione, non lo impari.
- **Domande per il ripasso** (esempi):
  1. Perché il multitasking peggiora l'apprendimento?
  2. Che cosa ha mostrato la replica di Urry sugli appunti?
  3. (Ripresa, cap. 15) Che cos'è una pausa vera?
- **Fonti**: ricerca 01 §12; 02 §6.4 · bibliografia: `sana2013`, `mueller2014`, `urry2021`, `delgado2018`, `beland2016`, `goodyear2025`
- **Lunghezza**: 3.000 parole · **File**: `tex/capitoli/cap16-attenzione.tex`
- **Note**: Ricerca 01 §12; ricerca 02 §6.4. Verifiche S-21, S-22.

#### Capitolo 17 — L'intelligenza artificiale: stampella o tutor?

> *οὔκουν μνήμης ἀλλὰ ὑπομνήσεως φάρμακον ηὗρες*  
> «non hai trovato un farmaco per la memoria, ma per il richiamo»  
> — Platone, Fedro 275a ◐

- **Tesi**: L'IA generativa può essere un tutor straordinario o una stampella che toglie l'apprendimento: tutto dipende da chi fa il lavoro cognitivo.
- **Domanda guida**: Come usare l'intelligenza artificiale senza smettere di imparare?
- **Apertura**: Il mito di Theuth e Thamus nel *Fedro*: la scrittura come «farmaco non per la memoria ma per il richiamo». Sostituendo «scrittura» con «IA», il testo sembra scritto oggi.
- **Contenuti**:
  - **Il mito di Theuth** — Platone e la delega cognitiva; onestà: la scrittura non ha distrutto la memoria, l'ha trasformata.
  - **Che cosa dicono i primi esperimenti** — Bastani et al. (2025): senza guardrail l'IA peggiora l'apprendimento (−17% all'esame senza IA); Kestin et al. (2025): un tutor progettato con la scienza dell'apprendimento raddoppia i guadagni; Kosmyna et al. (2025, preprint, con cautela).
  - **Stampella o tutor** — delega cognitiva (Risko & Gilbert, 2016); gli studenti italiani la usano soprattutto per riassunti e bozze (PISA 2025).
  - **Regole per usare l'IA senza perdere l'apprendimento** — prima provare da soli; farsi interrogare; chiedere feedback su una propria risposta; generare quiz; verificare sempre (si verifica solo ciò che si sa).
- **Riquadri**: *In pratica*: cinque richieste utili da fare a un'IA per studiare (esempi di prompt) e tre da non fare. *Da ricordare*: se l'IA pensa al posto tuo, sei tu a non imparare.
- **Domande per il ripasso** (esempi):
  1. Che cosa hanno mostrato Bastani e colleghi?
  2. Qual è la differenza tra usare l'IA come tutor e come stampella?
  3. (Ripresa, cap. 8) Perché il recupero fa ricordare?
- **Fonti**: ricerca 01 §13; 02 §2.1, §6.4; 03 §2.3 · bibliografia: `bastani2025`, `kestin2025`, `kosmyna2025`, `risko2016`
- **Lunghezza**: 3.500 parole · **File**: `tex/capitoli/cap17-ia.tex`
- **Note**: Capitolo che invecchia in fretta: scriverlo per ultimo tra quelli della Parte IV e aggiornarlo prima della stampa. Verifica K-06.

#### Capitolo 18 — Motivazione e scopo

> *omnia, quae curant, meminerunt*  
> «ricordano tutto ciò che sta loro a cuore»  
> — Cicerone, Cato maior de senectute 21 ✔

- **Tesi**: Si ricorda ciò che sta a cuore: autonomia, competenza, relazione e valore percepito sostengono la fatica dello studio; mentalità di crescita e «grinta» contano meno di quanto si dica.
- **Domanda guida**: Come trovare la motivazione per studiare in modo faticoso?
- **Apertura**: Cicerone: nessun vecchio dimentica dove ha nascosto il suo tesoro; «ricordano tutto ciò che sta loro a cuore».
- **Contenuti**:
  - **Si ricorda ciò che sta a cuore** — emozione, interesse e memoria; Tommaso: *sollicitudine et affectu*.
  - **Autonomia, competenza, relazione** — teoria dell'autodeterminazione (Ryan & Deci); il senso di appartenenza alla scuola (64% in Italia, PISA 2025).
  - **Il valore di ciò che si studia** — aspettativa × valore (Wigfield & Eccles); interventi sul valore di utilità e sullo scopo (rimando al cap. 3).
  - **Mentalità e grinta: meno di quanto si dice** — Sisk et al. (2018), Macnamara & Burgoyne (2023), Credé et al. (2017); le 10.000 ore (Macnamara et al., 2014). Meglio esperienze reali di miglioramento prodotte da un buon metodo.
  - **La curiosità** — Gruber et al. (2014); aprire con una domanda vera.
- **Riquadri**: *Esercizio*: il diario del «perché» — una frase a settimana su che cosa hai imparato e perché ti è servito. *Da ricordare*: la motivazione più solida nasce dal vedere che stai migliorando.
- **Domande per il ripasso** (esempi):
  1. Quali sono i tre bisogni della teoria dell'autodeterminazione?
  2. Perché la mentalità di crescita da sola non basta?
  3. (Ripresa, cap. 3) Che cosa hanno scoperto Yeager e colleghi sullo scopo?
- **Fonti**: ricerca 01 §10; 03 §2.3, §3.3 · bibliografia: `ryan2000`, `wigfield2000`, `hulleman2009`, `yeager2014`, `sisk2018`, `macnamara2023`, `crede2017`, `gruber2014`
- **Lunghezza**: 3.000 parole · **File**: `tex/capitoli/cap18-motivazione.tex`
- **Note**: Ricerca 01 §10. Verifiche S-19, S-20.

### Parte V — Studiare all'università

#### Capitolo 19 — Dalla scuola all'università

> *Discipulus est prioris posterior dies.*  
> «Il giorno che segue è allievo del giorno che precede.»  
> — Publilio Siro, Sententiae ✔

- **Tesi**: Il passaggio dalla scuola all'università è il punto critico: finisce la struttura esterna e comincia l'autoregolazione. Chi non ha mai imparato un metodo inciampa al primo anno; un corso di «imparare a imparare» per le matricole può cambiare le cose.
- **Domanda guida**: Perché il primo anno di università è così difficile, e come affrontarlo?
- **Apertura**: Publilio Siro: «il giorno che segue è allievo del giorno che precede». Poi una matricola: niente interrogazioni, niente compiti controllati, sei mesi fino al primo appello — e la sensazione di avere «tempo».
- **Contenuti**:
  - **Il salto dell'autonomia** — dalla struttura della scuola all'autoregolazione; perché la procrastinazione esplode al primo anno (ricerca 01, §7.6).
  - **Che cosa la scuola non ha insegnato** — strategie di studio, pianificazione, giudizio su ciò che si sa; il metodo ereditato (rileggere, riassumere, studiare alla vigilia).
  - **Il primo anno: perché si abbandona** — dati ANVUR e AlmaLaurea; la relazione tra autoverifica, pianificazione e risultati (Hartwig & Dunlosky, 2012).
  - **Imparare a imparare: un corso per le matricole** — il modello KBCP (McDaniel & Einstein, 2020); il programma Study Smart (Biwer et al., 2020, 2023); proposta di un modulo per gli atenei italiani.
  - **Ai maturandi, e ai loro insegnanti** — preparare l'Esame di Stato con recupero e distribuzione come allenamento per l'università (ricerca 04, §5.2); primo ponte verso la «seconda fase» del progetto (la scuola).
- **Riquadri**: *In pratica*: le prime quattro settimane da matricola (calendario, domande dopo ogni lezione, primo ripasso cumulativo). *Da ricordare*: all'università nessuno ti interroga: devi farlo tu.
- **Domande per il ripasso** (esempi):
  1. Perché il primo anno è il momento degli abbandoni?
  2. Quali sono le quattro componenti del modello KBCP?
  3. (Ripresa, cap. 7) Perché la sensazione di sapere inganna?
- **Fonti**: ricerca 04 §5–6; 02 §9 · bibliografia: `mcdaniel2020`, `biwer2020`, `biwer2023`, `hartwig2012`, `dignath2008`, `yang2021`
- **Lunghezza**: 3.500 parole · **File**: `tex/capitoli/cap19-transizione.tex`
- **Note**: Ricerca 04 §5–6; ricerca 02 §9. Verifiche D-16, S-29. Capitolo che interessa anche i docenti delle superiori (ponte verso la seconda fase).

#### Capitolo 20 — Il semestre, le lezioni, gli esami

> *senescere se multa in dies addiscentem*  
> «invecchiare imparando ogni giorno molte cose nuove»  
> — Cicerone, Cato maior de senectute 26 ✔

- **Tesi**: All'università si studia bene pianificando il semestre invece della sessione, trasformando lezioni e appunti in domande, preparando scritti e orali con recupero e simulazioni; e si continua a imparare dopo la laurea.
- **Domanda guida**: Come si organizza lo studio di un semestre, dalla prima lezione all'appello?
- **Apertura**: Cicerone: Solone si vantava di «invecchiare imparando ogni giorno molte cose». Poi il contrasto: la sessione «tutto in tre settimane» contro il semestre distribuito.
- **Contenuti**:
  - **Pianificare il semestre, non la sessione** — calendario per esame; ripasso a successive riprese (Rawson et al., 2013); quanti esami per sessione.
  - **Dalla lezione agli appunti, dagli appunti alle domande** — *brain dump* dopo la lezione; colonna delle domande; appunti a mano o al computer (rimando al cap. 16).
  - **Prepararsi agli esami scritti e orali** — esercizi misti e cumulativi per gli scritti; per l'orale, spiegare ad alta voce senza appunti, registrarsi, simulare con un compagno.
  - **Studiare in gruppo, e con l'intelligenza artificiale** — interrogarsi a vicenda; l'IA come interrogatore, non come riassuntore (rimando al cap. 17).
  - **Dopo la laurea: imparare per tutta la vita** — recupero e distribuzione anche negli adulti (Meyer & Logan, 2013); dottorandi, professionisti, formazione continua.
- **Riquadri**: Scheda: il semestre in 14 settimane (Appendice B). *Da ricordare*: la sessione d'esame comincia il primo giorno di lezione.
- **Domande per il ripasso** (esempi):
  1. Come si prepara un esame orale senza rileggere?
  2. Perché conviene pianificare il semestre invece della sessione?
  3. (Ripresa, cap. 9) Che cos'è il ripasso a successive riprese?
- **Fonti**: ricerca 04 §6–7; 01 §5.2; 02 §9 · bibliografia: `rawson2013`, `rawson2022`, `kornell2009`, `freeman2014`, `meyer2013`, `bastani2025`
- **Lunghezza**: 4.000 parole · **File**: `tex/capitoli/cap20-semestre.tex`
- **Note**: Capitolo operativo centrale per il pubblico universitario. Ricerca 04 §6–7; ricerca 01 §5.2.

#### Capitolo 21 — Ogni disciplina ha il suo studio

> *ἃ γὰρ δεῖ μαθόντας ποιεῖν, ταῦτα ποιοῦντες μανθάνομεν*  
> «le cose che bisogna aver imparato per farle, le impariamo facendole»  
> — Aristotele, Etica Nicomachea II 1, 1103a32 ◐

- **Tesi**: I principi generali valgono per tutte le discipline, ma si applicano in modi diversi: in matematica e ingegneria recuperare significa risolvere problemi; in medicina e nelle scienze della vita memorizzare grandi quantità di concetti collegati; in giurisprudenza ed economia ragionare su casi; nelle discipline umanistiche costruire conoscenze e argomentare.
- **Domanda guida**: E per il mio corso di laurea, come si studia?
- **Apertura**: Aristotele: «le cose che bisogna aver imparato per farle, le impariamo facendole». Una studentessa di ingegneria, uno di medicina, una di giurisprudenza e uno di lettere rispondono alla stessa domanda.
- **Contenuti**:
  - **Matematica, fisica e ingegneria** — esempi svolti, pratica alternata e cumulativa, spaziatura (Rohrer; Murray et al., 2025); il test come problem solving.
  - **Scienze della vita, medicina e professioni sanitarie** — grandi volumi di concetti: flashcard e ripasso a successive riprese; casi clinici e alternanza per categorie simili.
  - **Giurisprudenza ed economia** — casi, schemi, domande di applicazione; preparare l'orale.
  - **Discipline umanistiche** — conoscenze, cronologie, schemi costruiti a memoria, domande «perché», scrittura argomentativa.
  - **Lingue straniere e classiche** — lessico con flashcard distribuite (Bahrick et al., 1993); morfologia; traduzione come esercizio generativo (Plinio il Giovane, *Ep.* VII, 9).
- **Riquadri**: Una scheda per ogni area disciplinare (Appendice B). *Da ricordare*: cambia la forma, non il principio: richiamare, distanziare, alternare, spiegare.
- **Domande per il ripasso** (esempi):
  1. Che cosa significa «recuperare» in matematica?
  2. Come si ripassano grandi volumi di concetti, per esempio in medicina?
  3. (Ripresa, cap. 10) Perché mescolare gli esercizi?
- **Fonti**: ricerca DA RICERCARE (ricerca 07, discipline universitarie); 01 §5.3, §16 · bibliografia: `murray2025`, `rohrer2007`, `bahrick1993`
- **Lunghezza**: 5.000 parole · **File**: `tex/capitoli/cap21-discipline.tex`
- **Note**: **Richiede la ricerca 07** (come si studiano le singole discipline universitarie): è il capitolo con la base di prove meno sviluppata nei documenti attuali.

#### Capitolo 22 — Studenti con DSA e altri bisogni speciali

> *Tria sunt studentibus necessaria: natura, exercitium, disciplina.*  
> «Tre cose sono necessarie a chi studia: l'indole, l'esercizio, la disciplina.»  
> — Ugo di San Vittore, Didascalicon III, 6 ✔

- **Tesi**: Gli studenti universitari con DSA e altri bisogni speciali beneficiano degli stessi principi, con adattamenti: recupero orale, sessioni brevi, strumenti compensativi usati per accedere ai contenuti senza rinunciare al pensiero, e i servizi di ateneo.
- **Domanda guida**: Come si studia all'università con un DSA, un ADHD o un altro bisogno speciale?
- **Apertura**: Ugo di San Vittore: «tre cose sono necessarie a chi studia: l'indole, l'esercizio, la disciplina». Poi il racconto di uno studente dislessico che legge lentamente ma ricorda benissimo ciò che spiega a voce.
- **Contenuti**:
  - **Che cosa sono i DSA, e chi li scopre all'università** — Legge 170/2010 (anche per l'università); Linea guida ISS 2022 (diagnosi negli adulti); circa il 6% degli studenti certificati a scuola; diagnosi tardive.
  - **Leggere lentamente in una lingua trasparente** — la dislessia in italiano come lentezza (Tressoldi et al., 2001) e il peso dei manuali universitari.
  - **Che cosa funziona e che cosa no** — istruzione esplicita e strategie; sintesi vocale (Wood et al., 2018); no a training della memoria di lavoro, caratteri speciali, filtri colorati.
  - **Compensare l'accesso, non il pensiero** — mappe costruite e usate per interrogarsi; sintesi vocale seguita da recupero orale; tempo aggiuntivo agli esami.
  - **Servizi di ateneo, ADHD e altri bisogni** — servizi per disabilità e DSA degli atenei (ricerca 10, da fare); Knouse et al. (2016) sull'ADHD; ansia; studenti con italiano L2.
- **Riquadri**: Protocollo di studio per uno studente con dislessia (ricerca 04, §8.6). *Da ricordare*: il metodo di studio basato sulle prove aiuta di più chi fa più fatica.
- **Domande per il ripasso** (esempi):
  1. Perché in italiano la dislessia si manifesta soprattutto come lentezza?
  2. Che cosa significa «compensare l'accesso, non il pensiero»?
  3. (Ripresa, cap. 8) Come si può fare pratica del recupero a voce?
- **Fonti**: ricerca 04 §8–11; ricerca 10 (da fare) · bibliografia: `iss2022`, `tressoldi2001`, `wood2018`, `gersten2009`, `swanson1999`, `melbylervag2016`, `kuster2018`, `knouse2016`, `dupaul2012`
- **Lunghezza**: 4.000 parole · **File**: `tex/capitoli/cap22-dsa.tex`
- **Note**: **Richiede la ricerca 10** (DSA e BES all'università) e una **revisione esterna** (esperto clinico, servizio disabilità/DSA di un ateneo, eventualmente AID). Il criterio «compensare l'accesso, non il pensiero» è un'ipotesi da discutere con esperti.

### Parte VI — Per chi insegna all'università

#### Capitolo 23 — Insegnare con la scienza dell'apprendimento

> *οὐ γὰρ ὡς ἀγγεῖον ὁ νοῦς ἀποπληρώσεως ἀλλ᾽ ὑπεκκαύματος μόνον ὥσπερ ὕλη δεῖται*  
> «la mente non ha bisogno di essere riempita come un vaso, ma di essere accesa come legna»  
> — Plutarco, Come si deve ascoltare 48c ◐

- **Tesi**: I docenti universitari possono usare la scienza dell'apprendimento in ogni corso: lezioni chiare e a piccoli passi, domande a tutta l'aula, apprendimento attivo, ripresa cumulativa, e il metodo di studio insegnato dentro la propria disciplina. Per farlo, devono poterlo imparare.
- **Domanda guida**: Che cosa cambia nei corsi universitari se si prende sul serio la scienza dell'apprendimento?
- **Apertura**: Plutarco: la mente non è un vaso da riempire ma legna da accendere. Poi un fatto: in Italia si diventa docenti universitari per meriti di ricerca, senza alcuna formazione obbligatoria all'insegnamento (ricerca 02, §9.4).
- **Contenuti**:
  - **Che cosa sanno i docenti universitari** — nessun obbligo di formazione didattica; i requisiti AVA3 dell'ANVUR; neuromiti diffusi anche nell'accademia.
  - **La lezione: istruzione esplicita e carico cognitivo** — Sweller; esempi svolti; inversione dell'expertise; Kirschner, Sweller & Clark (2006); i principi di Rosenshine adattati all'aula universitaria.
  - **Apprendimento attivo in aula** — Freeman et al. (2014); Theobald et al. (2020); *peer instruction*; Deslauriers et al. (2019): spiegare agli studenti perché la fatica è un buon segno.
  - **Il metodo di studio si insegna nei corsi** — dieci minuti alla prima lezione; materiali con domande di recupero; modellare ad alta voce (EEF).
  - **Imparare a insegnare: il faculty development** — Teaching and Learning Centres ed esperienze italiane (Padova, Genova, Milano, Torino, Foggia…); che cosa potrebbe fare un ateneo (ricerca 08, da fare).
- **Riquadri**: *In pratica*: la lezione universitaria in cinque momenti (ripasso iniziale — spiegazione a blocchi brevi — domanda a tutta l'aula — problema a coppie — domande di uscita). *Da ricordare*: l'attività che conta è quella mentale, non quella fisica.
- **Domande per il ripasso** (esempi):
  1. Perché la lezione frontale da sola rende poco?
  2. Che cosa ha mostrato la meta-analisi di Freeman e colleghi?
  3. (Ripresa, cap. 7) Che cosa ha mostrato l'esperimento di Harvard?
- **Fonti**: ricerca 01 §9; 02 §9.3–9.4; ricerca 08 (da fare) · bibliografia: `sweller1988`, `kirschner2006`, `kalyuga2003`, `rosenshine2012`, `freeman2014`, `theobald2020`, `deslauriers2019`, `eef2025`
- **Lunghezza**: 4.500 parole · **File**: `tex/capitoli/cap23-docenti.tex`
- **Note**: Parte VI rivolta ai docenti universitari (il «tu» diventa un dialogo da collega a collega). **Richiede la ricerca 08** (didattica universitaria e faculty development in Italia). Verifiche S-16, S-18.

#### Capitolo 24 — Valutare per far imparare

> *ἐγὼ τοῦτον οὐδὲν διδάσκω, ἀλλ᾽ ἐρωτῶ πάντα*  
> «io non gli insegno nulla, ma gli domando tutto»  
> — Platone, Menone 82e ✔

- **Tesi**: All'università l'esame può diventare uno strumento di apprendimento: quiz frequenti a basso peso, prove in itinere cumulative, esami che riprendono l'intero corso, un orale ripensato e un feedback centrato sul compito.
- **Domanda guida**: Come valutare in modo che gli studenti imparino di più e dimentichino di meno?
- **Apertura**: Socrate nel *Menone*: «non gli insegno nulla, gli domando tutto». Poi la domanda: l'esame orale italiano è una pratica del recupero potentissima — perché allora arriva una volta sola, alla fine?
- **Contenuti**:
  - **L'esame come strumento di apprendimento** — Yang et al. (2021); Roediger et al. (2011); Spitzer (1939).
  - **Quiz frequenti e prove in itinere** — quiz online a basso peso con feedback; prove intermedie; meno ansia (Agarwal et al., 2014).
  - **Esami cumulativi e sessioni** — la struttura «lezioni → sessione → oblio»; prove cumulative; calendario degli appelli e studio concentrato.
  - **Ripensare l'esame orale** — potenzialità (recupero, feedback, elaborazione) e limiti (unico, ad alto rischio, alla fine); proposte concrete.
  - **Un feedback che aiuta** — Hattie & Timperley (2007); Kluger & DeNisi (1996); valutazione formativa (Black & Wiliam, 1998).
- **Riquadri**: *In pratica*: come trasformare un corso con esame unico in un corso con quattro momenti di recupero. *Da ricordare*: valutare spesso, pesare poco, correggere subito.
- **Domande per il ripasso** (esempi):
  1. Perché i quiz a basso peso riducono l'ansia?
  2. Quali sono i limiti dell'esame orale unico a fine corso?
  3. (Ripresa, cap. 9) Perché gli esami cumulativi sfruttano la distribuzione?
- **Fonti**: ricerca 01 §5.1, §9.5; 02 §9.3, §10; ricerca 08 (da fare) · bibliografia: `yang2021`, `agarwal2014`, `roediger2011`, `hattie2007`, `kluger1996`, `wisniewski2020`, `black1998`
- **Lunghezza**: 4.000 parole · **File**: `tex/capitoli/cap24-valutare.tex`
- **Note**: Capitolo originale per il contesto universitario italiano (esami orali, sessioni, appelli). Ricerca 01 §5.1, §9.5; ricerca 02 §9.3; ricerca 08 (da fare).
- **Da coordinare (23/09/2026, registro Y-03)**: il cap. 9 ha un riquadro «Per chi insegna» che presenta la prova cumulativa come ripasso a successive riprese imposto dal calendario e rimanda a questo capitolo; l'affermazione, lì senza fonte, va qui sostanziata con le prove (ricerca 01 §5.1, §9.5; ricerca 08). La domanda di ripasso 3 presuppone quel riquadro. Non ripetere la descrizione «lezioni → sessione → oblio» del cap. 9; spiegare (con il cap. 23) perché gli esercizi alternati del cap. 10 sembrano più difficili. **Il capitolo non si scrive ancora** (decisione dell'autore, 23/09/2026).

#### Capitolo 25 — Contro i miti

> *in omni disciplina infirma est artis praeceptio sine summa adsiduitate exercitationis*  
> «in ogni disciplina l'insegnamento della tecnica è debole senza la massima assiduità dell'esercizio»  
> — Rhetorica ad Herennium III, 24, 40 ✔

- **Tesi**: Molte idee popolari sull'apprendimento sono false: stili di apprendimento, 10% del cervello, piramide dell'apprendimento, lettura veloce, brain training. Imparare a riconoscerle protegge tempo, soldi e fiducia.
- **Domanda guida**: Quali idee sull'apprendimento sono miti, e come riconoscerli?
- **Apertura**: La *Rhetorica ad Herennium*: «in ogni disciplina l'insegnamento della tecnica è debole senza la massima assiduità dell'esercizio» — la più antica smentita dei metodi miracolosi.
- **Contenuti**:
  - **Gli stili di apprendimento** — Pashler et al. (2008); diffusione tra gli insegnanti (Dekker et al., 2012); presenza nella modulistica italiana; che cosa conta davvero (la modalità adatta al contenuto).
  - **Il dieci per cento del cervello e altre leggende** — cervello destro/sinistro, Brain Gym, Mozart, nativi digitali, zuccheri, 10.000 ore.
  - **La piramide dell'apprendimento** — percentuali inventate (Letrud & Hernes, 2018).
  - **Lettura veloce e allenamento del cervello** — Rayner et al. (2016); Simons et al. (2016); training della memoria di lavoro.
  - **Come riconoscere un metodo da quattro soldi** — sei criteri (promesse rapide, prefisso «neuro», percentuali tonde, testimonianze, prodotti in vendita, misura con la sensazione). E i falsi classici: *repetita iuvant*, «so di non sapere».
- **Riquadri**: Tabella dei miti con la realtà e il livello di prova (da ricerca 01, §14.2). *Esercizio*: analizza con i sei criteri una pubblicità di un corso di «memoria prodigiosa».
- **Domande per il ripasso** (esempi):
  1. Che cosa dice la ricerca sugli stili di apprendimento?
  2. Da dove vengono le percentuali della piramide dell'apprendimento?
  3. (Ripresa, cap. 12) Perché non esistono «persone visive»?
- **Fonti**: ricerca 01 §14; 03 §6; 04 §8.4 · bibliografia: `pashler2008`, `dekker2012`, `bei2023`, `rayner2016`, `simons2016`, `letrud2018`
- **Lunghezza**: 3.500 parole · **File**: `tex/capitoli/cap25-miti.tex`
- **Note**: Tono rispettoso verso docenti e studenti che hanno creduto ai miti. I miti vanno trattati anche nella formazione degli insegnanti (rimando al cap. 26). Ricerca 01 §14; ricerca 03 §6.

#### Capitolo 26 — Formare chi insegnerà

> *Didactica magna, universale omnes omnia docendi artificium exhibens*  
> «Grande didattica, che presenta l'arte universale di insegnare tutto a tutti»  
> — Comenio, Didactica magna (1657), frontespizio ✔

- **Tesi**: Gli insegnanti di domani si formano oggi all'università: se la scienza dell'apprendimento non entra nella loro formazione, la scuola continuerà a insegnare senza insegnare a studiare. È da qui che il cambiamento può scendere alle superiori e alle medie.
- **Domanda guida**: Perché la scienza dell'apprendimento deve entrare nella formazione degli insegnanti, e come?
- **Apertura**: Comenio e la sua «arte universale di insegnare tutto a tutti» (1657). Poi i dati: i neuromiti tra gli insegnanti italiani (Bei et al., 2023) e trent'anni di riforme della formazione iniziale.
- **Contenuti**:
  - **Chi forma gli insegnanti** — Scienze della formazione primaria, percorsi abilitanti da 60 CFU, formazione in servizio; il ruolo dei docenti universitari (ricerca 02, §8).
  - **Che cosa imparano i futuri insegnanti, e che cosa manca** — la psicologia cognitiva dell'apprendimento non è un contenuto obbligatorio esplicito (ipotesi da verificare: ricerca 09); il confronto con gli Stati Uniti (NCTQ, 2016).
  - **I neuromiti nella formazione** — stili di apprendimento e altri miti nei corsi e nella modulistica (Dekker et al., 2012; Bei et al., 2023).
  - **Un curricolo minimo di scienza dell'apprendimento** — proposta concreta: i 12 principi, i riquadri pratici, le prove; per corsi di laurea, percorsi 60 CFU e formazione in servizio.
  - **Dall'università alla scuola: la seconda fase** — perché il libro comincia dall'università e dove andrà dopo (medie e superiori).
- **Riquadri**: Tabella: il curricolo minimo in dieci unità, con i capitoli del libro corrispondenti. *Da ricordare*: chi non ha imparato a studiare non può insegnarlo.
- **Domande per il ripasso** (esempi):
  1. Perché il cambiamento deve cominciare dalla formazione degli insegnanti?
  2. Quali neuromiti sono più diffusi tra gli insegnanti?
  3. (Ripresa, cap. 25) Che cosa dice la ricerca sugli stili di apprendimento?
- **Fonti**: ricerca 02 §8; 04; 01 §9.7, §14; ricerca 09 (da fare) · bibliografia: `dekker2012`, `bei2023`, `oecd2025talis`, `pashler2008`, `kirschner2006`
- **Lunghezza**: 3.500 parole · **File**: `tex/capitoli/cap26-formatori.tex`
- **Note**: Nuovo capitolo (versione 1.1), coerente con la scelta del pubblico universitario: chiude la Parte VI e prepara la «seconda fase» del progetto. **Richiede la ricerca 09** (contenuti della formazione degli insegnanti).

---

## 6. Pagine iniziali, congedo e appendici

### 6.1 Pagine iniziali (`tex/frontmatter/`)

- **Occhietto, frontespizio, colophon, dedica** («Alla mia maestra di italiano» — confermata dall'autore il 22/09/2026; già nel template).
- **Epigrafe del libro**: *«Non scholae sed vitae discimus»* — con l'attribuzione corretta: motto scolastico, rovesciamento di Seneca, *Ep.* 106, 12 (il cap. 1 racconterà il rovesciamento).
- **Prefazione** (1.000–1.500 parole): perché questo libro, da quale domanda nasce, perché comincia dall'università, perché è gratuito. Da scrivere per ultima.
- **Colophon**: pubblicazione in proprio; licenza del PDF gratuito (proposta: Creative Commons BY-NC-ND 4.0, da decidere, §10.2); indirizzo del sito www.lucalevi.com; ISBN dell'edizione a stampa (se richiesto).
- **Come usare questo libro** (1.000 parole): struttura, percorsi di lettura (§4), come usare domande e riquadri, perché il libro fa ripassare i capitoli precedenti.

### 6.2 Congedo — «Sulle spalle dei giganti»

> *Omnia disce, videbis postea nihil esse superfluum.*  
> «Impara tutto: vedrai poi che nulla è superfluo.»  
> — Ugo di San Vittore, Didascalicon VI, 3 ✔

- **Tesi**: studiare è salire sulle spalle dei giganti — da Simonide a Ebbinghaus, dai maestri di ieri agli insegnanti di oggi — per vedere più lontano; e ciò che si impara bene diventa parte di sé, per la vita.
- **Contenuti**: Bernardo di Chartres (Giovanni di Salisbury, *Metalogicon* III, 4; ricerca 03 §4.3); ritorno a Seneca (dal lamento all'ideale); i **12 principi** in una pagina (ricerca 01 §17.1); un **test finale** di recupero sull'intero libro.
- **Lunghezza**: 1.500 parole · **File**: `tex/capitoli/congedo.tex`.

### 6.3 Appendici (`tex/appendici/`)

| Appendice | Contenuto | Fonti | Lunghezza |
|---|---|---|---|
| **A — Una proposta di indagine: come studiano gli studenti italiani** | Perché serve un'indagine italiana; domande, questionario in sintesi, campione, metodo, etica; invito ad atenei e ricercatori a realizzarla. Nessun risultato: l'indagine si farà, con partner, **dopo** la pubblicazione (decisione 6) | ricerca 05 | 2.000–3.000 |
| **B — Schede pratiche** | Il metodo in una pagina; calendario di ripasso; semestre universitario in 14 settimane; preparazione di uno scritto e di un orale; schede per disciplina; protocollo per studenti con dislessia; lezione-tipo e prova in itinere per docenti | ricerca 01 §17.2; ricerca 04 §3–8 | 3.000–4.000 |
| **C — Glossario** | 40–60 termini (pratica del recupero, distribuzione, alternanza, metacognizione, carico cognitivo, dimensione dell'effetto, meta-analisi…) | ricerca 01 | 1.500–2.000 |

---

## 7. La rete delle riprese

Ogni capitolo contiene almeno una domanda di **ripresa** su un capitolo precedente (distribuzione e alternanza applicate al libro). Schema proposto (da arricchire in scrittura: idealmente ogni capitolo riprende sia un capitolo vicino sia uno lontano). La tabella è generata dalle schede del §5.

| Capitolo | Riprende |
|---|---|
| 1. Non per la scuola, ma per la vita | — (primo capitolo) |
| 2. Come si studia all'università, oggi | cap. 1 |
| 3. Il desiderio di sapere | cap. 2 |
| 4. Da Simonide a Ebbinghaus | cap. 1 |
| 5. Il cervello che impara | cap. 4 |
| 6. Le due forze della memoria | cap. 5 |
| 7. Perché ci inganniamo | cap. 6 |
| 8. Ricordare per ricordare | cap. 7 |
| 9. Il tempo alleato | cap. 8 |
| 10. Mescolare le carte | cap. 9 |
| 11. Capire | cap. 10 |
| 12. Immagini, parole e palazzi della memoria | cap. 11 |
| 13. Insegnare per imparare | cap. 12 |
| 14. Il metodo in una settimana | cap. 8–9 |
| 15. Il corpo che impara | cap. 14 |
| 16. L'attenzione | cap. 15 |
| 17. L'intelligenza artificiale: stampella o tutor? | cap. 8 |
| 18. Motivazione e scopo | cap. 3 |
| 19. Dalla scuola all'università | cap. 7 |
| 20. Il semestre, le lezioni, gli esami | cap. 9 |
| 21. Ogni disciplina ha il suo studio | cap. 10 |
| 22. Studenti con DSA e altri bisogni speciali | cap. 8 |
| 23. Insegnare con la scienza dell'apprendimento | cap. 7 |
| 24. Valutare per far imparare | cap. 9 |
| 25. Contro i miti | cap. 12 |
| 26. Formare chi insegnerà | cap. 25 |

**Concetti che attraversano il libro** (la «spirale»):

| Concetto | Introdotto | Ripreso |
|---|---|---|
| Oblio e curva dell'oblio | 1 | 4, 5, 9, 15 |
| Pratica del recupero | 4 (storia), 8 | 11, 13, 14, 17, 19–24, 26 |
| Distribuzione | 4, 9 | 10, 14, 19–21, 24 |
| Metacognizione e illusioni | 7 | 8, 9, 10, 14, 19, 23, 25 |
| Difficoltà desiderabili | 6 | 7–11, 18 |
| Conoscenza di base | 3 | 5, 11, 17, 21 |
| Scopo e motivazione | 3 | 18, 19, 20 |
| Intelligenza artificiale | 2, 3 | 17, 20, 23 |
| Neuromiti | 5, 7 | 25, 26 |

---

## 8. Dipendenze, lacune e revisioni esterne

| Capitolo | Dipende da | Azione |
|---|---|---|
| **2** | Dati italiani sull'università (ricerca 02; AlmaLaurea, ANVUR, MUR) | Aggiornare i dati prima della scrittura; nessun dato originale (l'indagine è solo proposta) |
| **8** (apertura) | — | Apertura con un esperimento classico (Roediger & Karpicke, 2006) o una scena d'esame |
| **17** | Rapida evoluzione delle prove sull'IA | Scrivere tardi; aggiornare prima della pubblicazione |
| **21** | **Ricerca 07 — come si studiano le discipline universitarie** | Da fare: STEM, medicina e professioni sanitarie, giurisprudenza ed economia, discipline umanistiche, lingue |
| **22** | **Ricerca 10 — DSA e BES all'università** + revisione esterna | Da fare: L. 170/2010 art. 5, linee guida CNUDD, servizi di ateneo, dati; revisione di un esperto di DSA e di un servizio di ateneo |
| **23–24** | **Ricerca 08 — didattica universitaria in Italia** | Da fare: formazione didattica dei docenti (faculty development, centri TLC, indicazioni ANVUR), prove sull'apprendimento attivo e sulla valutazione |
| **26** | **Ricerca 09 — formazione degli insegnanti** | Da fare: percorsi abilitanti da 60 CFU, Scienze della formazione primaria, presenza della scienza dell'apprendimento e dei neuromiti |
| **Appendice A** | Ricerca 05 | Riscrivere come proposta (senza risultati); partner dopo la pubblicazione |
| **Colophon, stampa** | **Ricerca 11 — pubblicazione in proprio** | Da fare: requisiti Amazon KDP (formato, margini, colore), ISBN, licenza, email e GDPR (§10.2) |
| **6, 7** (← capp. 8, 9, 10) | Lessico e contenuti già richiamati dai capp. 8–10 (registro Y-01, Y-02) | Scrivendo i capp. 6–7, rileggere prima i capp. 8–10 e allineare termini, esempi ed esperimenti; niente doppie narrazioni |
| **24** (← cap. 9; cap. 10) | Riquadro «Per chi insegna» del cap. 9, rimando del cap. 10 (registro Y-03) | Quando si scriverà il cap. 24 (dopo ricerca 08): dare le prove sulle prove cumulative; non ripetere il cap. 9 |
| **Tutti** | Registro delle verifiche (ricerca 00) | Verificare i dati con priorità A prima di scrivere il capitolo corrispondente |
| **Posizionamento** | Ricerca 12 — libri esistenti sul metodo di studio (facoltativa) | Utile per la prefazione e per differenziare il libro |

---

## 9. Piano di scrittura

### 9.0 Prima di scrivere

La scrittura **comincia solo quando l'autore dà il via** (decisione 8). **Via dato il 22/09/2026 per i capitoli di prova 1 e 8, scritti lo stesso giorno.** Prima si chiudono i punti aperti (§10.2) e le ricerche che condizionano i primi capitoli (§11).

### 9.1 Ordine consigliato

1. **Due capitoli di prova**: cap. 1 (*Non per la scuola, ma per la vita*) e cap. 8 (*Ricordare per ricordare*) — per fissare voce, tono, lunghezza, uso delle fonti e dei riquadri. **Revisione**: l'autore rivede e valida ogni capitolo man mano che esce, senza attendere lettori esterni (decisione 12, 23/09/2026) — non è previsto un passaggio bloccante di revisione da parte di terzi prima di proseguire.
2. **Parte III** (capp. 9–14): il cuore del metodo, subito dopo il cap. 8. **Via libera dal 23/09/2026**: il registro (ricerca 00, v. 1.7) non ha più punti aperti di priorità A o B per questa parte. **Prima stesura dei capp. 9–14 scritta il 23/09/2026** (circa 17.800 parole); in attesa della revisione dell'autore.
3. **Parte II** (capp. 4–7): le basi teoriche, scritte sapendo già che cosa devono preparare.
4. **Parte I** (capp. 2–3): con i dati italiani aggiornati.
5. **Parte IV** (capp. 15–18; il 17 per ultimo).
6. **Parte V** (capp. 19–22; il 21 dopo la ricerca 07; il 22 dopo la ricerca 10 e con revisione esterna).
7. **Parte VI** (capp. 23–26; dopo le ricerche 08 e 09).
8. **Congedo, appendici, prefazione, «Come usare questo libro»**.
9. **Revisione generale**: coerenza delle riprese (§7), verifica di tutti i dati (registro), compilazione con l'opzione `stampa` (nessun segnaposto rimasto).
10. **Pubblicazione**: PDF per il sito, PDF per la stampa KDP (monocromo), pagina di download su www.lucalevi.com.

### 9.2 Calendario indicativo *(da adattare: la data di inizio la decide l'autore)*

| Fase | Obiettivo | Durata indicativa |
|---|---|---|
| 0 | Punti aperti (§10.2); ricerche 07–11; verifiche di priorità A | 1–2 mesi |
| 1 | Capitoli di prova 1 e 8, revisione | 1 mese |
| 2 | Parte III (capp. 9–14) | 2 mesi |
| 3 | Parti II e I (capp. 2–7) | 2 mesi |
| 4 | Parti IV e V (capp. 15–22) | 2–3 mesi |
| 5 | Parte VI (capp. 23–26), congedo, appendici, pagine iniziali | 1–2 mesi |
| 6 | Revisione, verifiche finali, letture esterne, impaginazione per KDP, pubblicazione | 2 mesi |

Con circa 95.000 parole in 9–10 mesi di scrittura, il ritmo è di circa 2.000–2.500 parole a settimana.

---

## 10. Decisioni prese e punti ancora aperti

### 10.1 Decisioni dell'autore (21 settembre 2026)

| # | Tema | Decisione | Conseguenze in questo documento e nel template |
|---|---|---|---|
| 1 | **Pubblico** | Prima fase: **università** (studenti, professori e docenti universitari); superiori e medie in una seconda fase | Capp. 2, 14, 19–24 riorientati; nuovo cap. 26 *Formare chi insegnerà*; Parti V e VI rinominate; percorsi di lettura (§4) |
| 2 | **Voce** | «Tu» rivolto al lettore | §1; nella Parte VI il «tu» è il docente |
| 3 | **Lunghezza** | Libro completo, 90–100.000 parole | §1, §3 |
| 4 | **Titolo** | *Studiare per la vita* | Nessuna modifica; il sottotitolo resta una proposta |
| 5 | **Pubblicazione** | In proprio: PDF gratuito su www.lucalevi.com + paperback Amazon a prezzo contenuto; impegno sociale, senza guadagni; licenza CC BY-NC-SA 4.0 (decisione 9) | §1, §6.1 (colophon), §10.2, ricerca 11 |
| 6 | **Indagine** | Non ancora decisa; va bene come proposta in appendice; partner solo dopo la pubblicazione | Appendice A = proposta; cap. 2 senza dati originali |
| 7 | **Ricerche aggiuntive** | Tenere traccia di ciò che resta da fare | §11 |
| 8 | **Capitoli di prova** | 1 e 8, ma **non ora**: si scrive quando lo dice l'autore | §9.0 |
| 9 | **Licenza** | Creative Commons BY-NC-SA 4.0 (Attribuzione – Non commerciale – Condividi allo stesso modo) | §1 (Pubblicazione), §6.1 (colophon), §10.2, registro P-05 |
| 10 | **Voce dell'autore** (22/09/2026) | «Io» discreto: l'autore compare ogni tanto in prima persona, senza aneddoti inventati; le scene restano tipiche, non autobiografiche. I ricordi personali veri li inserisce l'autore (segnaposto nel cap. 1) | §1 (Voce); capp. 1 e 8 |
| 11 | **Riquadro «Per chi insegna»** (22/09/2026) | Sì, ma solo dove serve (nel cap. 8 sì, nel cap. 1 no); si usa l'ambiente `riquadro` della classe con il titolo «Per chi insegna» | §2.5, §10.2 punto 6 |
| 12 | **Revisione dei capitoli** (23/09/2026) | Nessuna attesa di revisori esterni (lettori del pubblico) per nessun capitolo: è l'autore stesso a rivedere e validare ogni capitolo man mano che esce. Il punto 10 del §11 (revisione di 2–3 lettori dopo i capp. 1 e 8) non è più un passaggio bloccante: resta solo come possibilità futura, a discrezione dell'autore | §9.1 punto 1; §11 punto 10 |

### 10.2 Punti ancora aperti (piccoli, da chiudere prima della stampa)

1. **Sottotitolo**: *Come si impara davvero, e perché* va bene? (Alternative: *La scienza dello studio, dall'antichità a oggi*; *Come si impara, e perché si ricorda*.)
2. **Licenza del PDF gratuito**: **deciso (22 settembre 2026) — Creative Commons BY-NC-SA 4.0** (attribuzione, niente usi commerciali, condivisione allo stesso modo: chi adatta o traduce l'opera — per esempio una versione per le superiori — deve ridistribuirla con la stessa licenza). Colophon di `tex/libro.tex` aggiornato; registro P-05 chiuso.
3. **Email per il PDF**: obbligatoria o facoltativa? La proposta è **facoltativa** (download libero + modulo per chi vuole lasciare un commento o ricevere aggiornamenti): massima diffusione e meno obblighi GDPR (informativa, consenso esplicito, conservazione dei dati).
4. **Edizione Amazon — risolto (22 settembre 2026)**: formato **13 × 21 cm confermato**, rientra nel formato personalizzato di KDP (larghezza ammessa 10,16–21,59 cm, altezza 15,24–29,69 cm: nessun cambio di formato necessario, si scarta l'alternativa 5,25 × 8 in). **Margine interno**: il minimo KDP per 301–500 pagine è 15,9 mm; il template ne ha 16 mm, quindi è già conforme. **Interni in bianco e nero**: confermato l'uso dell'opzione `monocromo` della classe, coerente con l'edizione a prezzo contenuto e senza scopo di lucro. Resta aperto solo l'**ISBN**: gratuito di Amazon o proprio (registro P-04).
5. **Dedica** — **confermata (22/09/2026)**: «Alla mia maestra di italiano».
6. **Riquadro «Per chi insegna» — deciso (22/09/2026)**: sì, solo nei capitoli in cui ne deriva qualcosa di concreto per la didattica (decisione 11).

---

## 11. Lavori ancora da fare

Elenco sintetico, allineato con la memoria del progetto (per rispondere a «cosa dobbiamo fare ancora?»).

| # | Lavoro | Serve a | Stato |
|---|---|---|---|
| 1 | **Ricerca 07** — come si studiano le singole discipline universitarie | cap. 21 | da fare |
| 2 | **Ricerca 08** — didattica universitaria e formazione didattica dei docenti universitari in Italia | capp. 23–24 | da fare |
| 3 | **Ricerca 09** — formazione degli insegnanti (percorsi da 60 CFU, Scienze della formazione primaria) | cap. 26 | da fare |
| 4 | **Ricerca 10** — studenti con DSA e altri BES all'università: normativa, servizi di ateneo, dati | cap. 22 | da fare |
| 5 | **Ricerca 11** — pubblicazione in proprio: Amazon KDP, ISBN, licenza, email e GDPR | colophon, stampa | da fare |
| 6 | **Ricerca 12** (facoltativa) — libri esistenti sul metodo di studio | prefazione, posizionamento | facoltativa |
| 7 | **Registro delle verifiche** (ricerca 00): smaltire i punti aperti, prima quelli di priorità A | tutti i capitoli | in corso |
| 8 | **Punti aperti piccoli** (§10.2) | colophon, stampa | da decidere |
| 9 | **Revisione esterna** del cap. 22 (DSA) | cap. 22 | quando il capitolo sarà scritto |
| 10 | **Capitoli di prova 1 e 8** | voce e tono del libro | **prima stesura scritta (22/09/2026)**. **Aggiornamento (23/09/2026, decisione 12)**: nessuna attesa di revisori esterni — l'autore rivede da solo, man mano che i capitoli escono. Via libera immediato alla Parte III (capp. 9–14) |
| 11 | **Parte III, capp. 9–14** | il metodo | **prima stesura scritta (23/09/2026)**, circa 17.800 parole; revisione dell'autore. Da fare in seguito: Appendice B (modello di calendario di ripasso e scheda «Il metodo in una pagina», richiamati nei capp. 9 e 14) |
| 12 | **Prossimo blocco di scrittura** | §9.1 punto 3 | Parte II (capp. 4–7), quando l'autore dà il via |
| 13 | **Coerenza capp. 9–10 ↔ capp. 6–7** | capp. 6, 7 | da fare quando si scrivono i capp. 6–7 (registro Y-01, Y-02) |
| 14 | **Coerenza cap. 9 ↔ cap. 24** | cap. 24 | da fare quando si scriverà il cap. 24, non ancora (registro Y-03) |
| 15 | **Appendice B** (calendario di ripasso, «Il metodo in una pagina») | capp. 9, 14 | rinviata a una prossima sessione (registro Y-04) |

---

*Fine dell'indice ragionato (versione 1.5). Da aggiornare insieme al template `tex/` a ogni modifica della struttura.*
