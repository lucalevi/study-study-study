---
titolo: "Registro unico delle verifiche"
progetto: study-study-study
documento: ricerca/00 — elenco di tutto ciò che va controllato prima della stampa
versione: 1.1
data: 2026-09-21
modifiche: "1.1 — aggiunti i punti per il pubblico universitario (D-19, N-07, N-08) e per la pubblicazione in proprio (sezione G)"
lingua: italiano
collegato a: ricerca/01–05; tex/bibliografia.bib; tex/capitoli (epigrafi)
---

# Registro unico delle verifiche

**Tutto ciò che, nei documenti di ricerca e nel template del libro, va ancora controllato su una fonte primaria prima di finire nel testo stampato.**

---

## Come usare questo registro

1. **Una riga = un punto da controllare.** Ogni punto ha un codice (es. `D-03`), il documento e il paragrafo in cui compare, che cosa va verificato e su quale fonte.
2. **Priorità**:
   - **A** — il dato o la citazione è già previsto nel libro (epigrafi, cifre chiave nei capitoli): da verificare **prima di scrivere** quel capitolo;
   - **B** — dato di contesto, probabilmente usato;
   - **C** — dato marginale o di approfondimento.
3. **Stato**: `aperto` → `verificato` (con data e fonte) oppure `corretto` (indicare la correzione e aggiornare il documento di ricerca) oppure `eliminato` (se non si userà).
4. **Regola**: nessun dato con stato `aperto` e priorità A entra nella versione finale del libro. Nel template, un dato non verificato va scritto dentro un `\segnaposto{…}`, così la compilazione con l'opzione `stampa` lo segnala.
5. **Quando si aggiunge un nuovo dato** durante la scrittura, se non è già verificato si aggiunge qui una riga.

**Riepilogo (versione 1.1)**: 108 punti aperti — 19 dati italiani, 30 studi e cifre scientifiche, 30 citazioni classiche, 10 voci bibliografiche, 8 punti normativi ed etici, 5 discrepanze tra fonti, 6 punti sulla pubblicazione in proprio.

*Nota 1.1*: con l'indice ragionato 1.1 (pubblico universitario) i capp. 19–21 hanno cambiato titolo, ma **non numero né epigrafe**: i rimandi «Epigrafe cap. N» restano validi. Il nuovo cap. 26 ha un'epigrafe già verificata (Comenio, frontespizio della *Didactica magna* ✔).

---

## A. Dati italiani (ricerca 02 e 04; ricerca 01 §1.2, §15.1)

| Codice | Doc § | Affermazione | Che cosa verificare | Fonte da usare | Priorità | Stato |
|---|---|---|---|---|---|---|
| D-01 | 02 §2.1 | PISA 2025 Italia: lettura 474, matematica 468, scienze 483, problem solving computazionale 490; medie OCSE 461, 463, 482, 500 | Punteggi, medie, significatività delle differenze | OCSE, *PISA 2025 Results (Volume I)* e scheda Paese Italia (PDF) | A | aperto |
| D-02 | 02 §2.1 | Tendenza: Italia «stabile» 2022→2025; OCSE −14 lettura, −9 matematica | Tabelle di tendenza OCSE (valori collegati tra cicli) | OCSE, PISA 2025, tabelle di trend | A | aperto |
| D-03 | 02 §2.1 | Eccellenze Italia: lettura 4%, scienze 4%, matematica 7% (OCSE 6%, 7%, 8%); basso rendimento in scienze 22% (OCSE 25%) | Percentuali per livello; aggiungere basso rendimento in lettura e matematica | OCSE, scheda Paese Italia | A | aperto |
| D-04 | 02 §2.1 | IA: 47% la usa ogni settimana; 39% ricerche, 36% riassunti, 30% bozze; 9% mai | Percentuali e formulazione esatta delle domande | OCSE, PISA 2025, questionario studenti / Volume dedicato | A | aperto |
| D-05 | 02 §2.1 | Distrazione digitale 37% (OCSE 28%), −13 punti; 63% delle scuole vieta il telefono (OCSE 49%); senso di appartenenza 64% (OCSE 76%) | Percentuali e definizioni | OCSE, PISA 2025 | B | aperto |
| D-06 | 02 §2.1 | 50% degli studenti svantaggiati sotto il livello minimo in matematica; 12,5% resilienti (OCSE 11,9%) | Cifre esatte | OCSE, PISA 2025 | B | aperto |
| D-07 | 02 §2.2 | PISA 2022 Italia: matematica 471, lettura 482, scienze 477; OCSE 472, 476, 485 | Valori | OCSE, *PISA 2022 Results*, scheda Italia | B | aperto |
| D-08 | 02 §3.1 | INVALSI 2026: grado 13 italiano 54%, matematica 52%; grado 10 54% e 55%; grado 8 61% e 55% | Percentuali sul Rapporto completo (non solo slide) | INVALSI, *Rapporto nazionale 2026* | A | aperto |
| D-09 | 02 §3.4 | Coorte pandemica: matematica grado 5 di 8–10 punti sotto il 2019 | Cifra esatta e grado | INVALSI 2026, Rapporto | B | aperto |
| D-10 | 02 §4.2 | Dispersione implicita 6,3% (2026) da 8,7% (2025); per indirizzo ~4% licei, ~11% tecnici, ~23% professionali; >20% in alcune regioni | Valori, anno, definizione | INVALSI, Rapporti 2025 e 2026 | A | aperto |
| D-11 | 02 §4.1 | ELET 8,2% nel 2025 (UE ~9,1%); nel 2008 circa 19–20% | Valore 2025 Istat/Eurostat; valore storico 2008 | Istat, *Noi Italia*; Eurostat edat_lfse_14 | B | aperto |
| D-12 | 02 §5; 01 §1.2, §15.1 | PIAAC 2023: literacy 245 (260), numeracy 244 (263), problem solving 231 (251) | Punteggi e posizioni | OCSE, *Survey of Adult Skills 2023*, scheda Italia | A | aperto |
| D-13 | 02 §6.2 | Compiti a casa, PISA 2012: 8,7 ore/settimana (OCSE 4,9) | Valori; esiste un dato più recente? | OCSE, *PISA in Focus* n. 46 (2014); PISA 2022 questionario | B | aperto |
| D-14 | 02 §6.3 | Ripetizioni private: 1 su 4 (2023), 1 su 5 (2024), 400–450 euro | Metodo delle indagini (non probabilistiche) | Skuola.net / Ripetizioni.it, osservatori | C | aperto |
| D-15 | 02 §9.1 | Laureati 25–34 anni: Italia 31,1%, UE 44,8% (2025); «penultima davanti all'Ungheria 32,6%» | Posizione dell'Italia (Ungheria o Romania ultima?) — incoerenza nel resoconto | Eurostat, tabella edat_lfse_03 | A | aperto |
| D-16 | 02 §9.2 | ANVUR 2026: 13,3% abbandona tra 1° e 2° anno; 26,4% entro sei anni; 62,7% si laurea | Cifre e definizioni | ANVUR, *Rapporto 2026* | A | aperto |
| D-17 | 02 §8.1 | TALIS 2024: età 48 (OCSE 45), 50% >50 anni, 3% <30, mentoring 16% (26%), IA 25% (36%), 14% apprezzati, 6% decisori, stipendio 23% (39%), soddisfazione 96%; data di pubblicazione | Cifre e data esatta | OCSE, *Results from TALIS 2024*, scheda Italia; INVALSI, nota Paese | A | aperto |
| D-18 | 04 §8.1, §10.6 | DSA ~6% (a.s. 2022/23), per area e per disturbo; crescita nel decennio; studenti con cittadinanza non italiana >900.000, >11%, 2/3 nati in Italia | Cifre, anni, trend | MIM, *Focus alunni con DSA 2021/22–2022/23*; MIM, notiziario alunni con cittadinanza non italiana (ultimo) | A | aperto |
| D-19 | 06 cap. 2, 19 | Abbandono dopo il primo anno di università e tempi di laurea (valori più recenti) | Dati aggiornati | ANVUR, Rapporto sul sistema universitario; AlmaLaurea, Profilo dei laureati | A | aperto |

## B. Studi e cifre scientifiche (ricerca 01, 04, 05)

| Codice | Doc § | Affermazione | Che cosa verificare | Fonte da usare | Priorità | Stato |
|---|---|---|---|---|---|---|
| S-01 | 01 §5.1 | Roediger & Karpicke (2006), esp. 2: dopo una settimana ~61% (recupero) vs ~40% (rilettura) | Percentuali per condizione | Articolo originale, *Psychological Science* 17 | A | aperto |
| S-02 | 01 §5.1 | Karpicke & Roediger (2008): ~80% vs ~35% a una settimana; previsioni uguali | Percentuali | Articolo originale, *Science* 319 | A | aperto |
| S-03 | 01 §5.1 | Rowland (2014) *g* ≈ 0,50; Adesope et al. (2017) *g* ≈ 0,61; Pan & Rickard (2018) *d* ≈ 0,40 | Effetti medi | Articoli originali | B | aperto |
| S-04 | 01 §5.1 | Agarwal et al. (2014): 72% meno nervosi | Percentuale e campione | Articolo originale | B | aperto |
| S-05 | 01 §2.5 | Ebbinghaus: 68 ripetizioni in un giorno vs 38 in tre giorni | Cifre nel testo del 1885 (o traduzione inglese 1913) | Ebbinghaus, *Über das Gedächtnis* | A | aperto |
| S-06 | 01 §2.5 | Spitzer (1939): oltre 3.600 alunni dello Iowa | Numero esatto | Articolo originale | B | aperto |
| S-07 | 01 §2.5 | Gates (1917): percentuale ottimale di tempo dedicato alla recitazione | Cifre per sillabe e biografie | Articolo originale | C | aperto |
| S-08 | 01 §5.2 | Cepeda et al. (2006): 839 confronti, 317 esperimenti | Numeri | Articolo originale | B | aperto |
| S-09 | 01 §5.2 | Cepeda et al. (2008): >1.300 partecipanti; intervallo ottimale 20–40% (1 settimana) → 5–10% (1 anno) | Percentuali esatte del «ridgeline» | Articolo originale | A | aperto |
| S-10 | 01 §5.2 | Kornell (2009): spacing migliore per ~90%; ~72% credeva il contrario | Percentuali | Articolo originale | A | aperto |
| S-11 | 01 §5.3 | Rohrer & Taylor (2007): 63% vs 20% | Percentuali | Articolo originale | A | aperto |
| S-12 | 01 §5.4 | Bisra et al. (2018) *g* ≈ 0,55; Bertsch et al. (2007) *d* ≈ 0,40 | Effetti | Articoli originali | B | aperto |
| S-13 | 01 §5.7 | Dresler et al. (2017): 40 giorni di allenamento, ricordo «più che raddoppiato», effetti a 4 mesi | Cifre (parole ricordate prima/dopo), durata | Articolo originale, *Neuron* 93 | B | aperto |
| S-14 | 01 §5.8 | Koh et al. (2018): il beneficio dell'insegnare deriva dal recupero | Disegno e risultato | Articolo originale | B | aperto |
| S-15 | 01 §7.6 | Steel (2007): procrastinazione 80–95%; Gollwitzer & Sheeran (2006) *d* ≈ 0,65 | Cifre | Articoli originali | C | aperto |
| S-16 | 01 §9.4 | Freeman et al. (2014): +0,47 DS; insuccesso 21,8% vs 33,8% | Cifre | Articolo originale | A | aperto |
| S-17 | 01 §9.5 | Kluger & DeNisi (1996) *d* ≈ 0,41, >1/3 negativi; Wisniewski et al. (2020) *d* ≈ 0,48; Kingston & Nash (2011) ~0,2 | Cifre | Articoli originali | B | aperto |
| S-18 | 01 §9.6 | VanLehn (2011) 0,79 e 0,76; Nickow et al. (2020) 0,37 su 96 RCT | Cifre | Articoli originali | B | aperto |
| S-19 | 01 §10.3 | Hulleman & Harackiewicz (2009): effetto su interesse e voti negli studenti con basse aspettative | Entità dell'effetto | Articolo originale | B | aperto |
| S-20 | 01 §10.4 | Sisk et al. (2018) r ≈ 0,10, *d* ≈ 0,08; Macnamara et al. (2014) 26/21/18/4/<1% | Cifre | Articoli originali | A | aperto |
| S-21 | 01 §12.1 | Sana et al. (2013): −11% chi usa il portatile, −17% i vicini | Cifre | Articolo originale | A | aperto |
| S-22 | 01 §12.4 | Delgado et al. (2018): 54 studi, ~170.000 partecipanti, *g* ≈ −0,21 | Cifre | Articolo originale | B | aperto |
| S-23 | 01 §12.5 | Kämpfe et al. (2011) musica; Pietschnig et al. (2010) effetto Mozart | Risultati | Articoli originali | C | aperto |
| S-24 | 01 §16 | Bahrick (1984): «permastore» dopo 3–6 anni, ricordo fino a 50 anni | Formulazione | Articolo originale | A | aperto |
| S-25 | 04 §3.1 | Karpicke et al. (2014): bambini e recupero guidato; Vlach & Sandhofer (2012): età dei bambini e disegno | Età, compiti, risultati | Articoli originali | B | aperto |
| S-26 | 04 §8.3 | Swanson (1999): modello combinato con effetti maggiori (valori) | Effetti | Articolo originale | B | aperto |
| S-27 | 04 §8.3 | SRSD: entità degli effetti per studenti con disturbi dell'apprendimento | Meta-analisi specifica (es. Graham & Harris) | Graham, Harris & McKeown (2013) e meta-analisi recenti | B | aperto |
| S-28 | 04 §8.2 | Dislessia in italiano come lentezza (Tressoldi et al., 2001; gruppo Zoccolotti) | Dati longitudinali | Articoli originali | A | aperto |
| S-29 | 05 §2 | Kornell & Bjork (2007): N = 472; Hartwig & Dunlosky (2012): N = 324; McCabe (2011): 255 e accuratezza ~23% / ~71% | Numeri | Articoli originali | A | aperto |
| S-30 | 05 §7.2 | Potenza dell'esperimento: 40–55 studenti per *d* 0,4–0,5 | Calcolo con G*Power sul disegno definitivo | G*Power | B | aperto |

## C. Citazioni classiche (ricerca 03; epigrafi del template)

*Legenda di ricerca 03: ✔ verificata sul testo; ◐ verificata indirettamente; ○ da verificare. Le citazioni ✔ non sono elencate, salvo raccordi incompleti. Edizioni critiche consigliate: ricerca 03, §9.1.*

| Codice | Doc § | Citazione | Che cosa verificare | Edizione | Uso nel template | Priorità | Stato |
|---|---|---|---|---|---|---|---|
| K-01 | 03 §2.1 | Esiodo, *Opere* 289 (τῆς δ᾽ ἀρετῆς ἱδρῶτα…) ○ | Testo e numerazione | West (1978) | — | B | aperto |
| K-02 | 03 §2.1 | Solone, fr. 18 West (γηράσκω δ᾽ αἰεὶ…) ◐ | Testo e numerazione del frammento | West, *Iambi et Elegi* | — | C | aperto |
| K-03 | 03 §2.1 | Eschilo, *Agamennone* 176–178 (πάθει μάθος) ◐ | Testo | Page (OCT) | — | C | aperto |
| K-04 | 03 §2.2 | Delfi, γνῶθι σεαυτόν ◐ | Fonti antiche citate | Platone, *Carmide* 164d–165a; Pausania X, 24, 1 | — | C | aperto |
| K-05 | 03 §2.2 | Eraclito B40 (πολυμαθίη…) ◐ | Testo; fonte Diogene Laerzio IX, 1 | Diels–Kranz; Dorandi | — | B | aperto |
| K-06 | 03 §2.3 | Platone, *Fedro* 275a, seconda parte (οὔκουν μνήμης ἀλλὰ ὑπομνήσεως…) ◐ | Testo | Burnet (OCT) | **Epigrafe cap. 17** | A | aperto |
| K-07 | 03 §2.3 | Platone, *Teeteto* 191c–e ○ | Testo e passo | Burnet / Duke et al. (OCT) | — | B | aperto |
| K-08 | 03 §2.3 | Platone, *Repubblica* 536d–e (ψυχῇ δὲ βίαιον οὐδὲν ἔμμονον μάθημα) ○ | Testo e ordine delle parole | Slings (OCT) | — (alternativa cap. 18) | B | aperto |
| K-09 | 03 §2.5 | Aristotele, *Metafisica* 980a21 ◐ | Testo | Ross / Jaeger (OCT) | **Epigrafe cap. 3** | A | aperto |
| K-10 | 03 §2.5 | Aristotele, *De memoria* 451a12: chiusa καὶ μὴ ὡς καθ᾽ αὑτό | Raccordo | Ross (1955); Bloch (2007) | Epigrafe cap. 8 (prima parte ✔) | B | aperto |
| K-11 | 03 §2.5 | Aristotele, *Etica Nicomachea* 1103a32–33 ◐ | Testo | Bywater (OCT) | **Epigrafe cap. 21** | A | aperto |
| K-12 | 03 §2.5 | Diogene Laerzio V, 18 (radici amare, frutto dolce) ○ | Testo e passo | Dorandi (2013) | — | B | aperto |
| K-13 | 03 §2.6 | Suetonio, *Aug.* 25, 4 (σπεῦδε βραδέως) ◐ | Testo | Kaster (OCT) | — | C | aperto |
| K-14 | 03 §2.7 | Plutarco, *De audiendo* 18, 48c ◐ | Testo (ὕλη) e capitolo | Teubner / Loeb (Babbitt) | **Epigrafe cap. 23** | A | aperto |
| K-15 | 03 §2.8 | Basilio, *Ai giovani* 4 (le api) ○ | Testo greco | Boulenger (Belles Lettres); Naldini | — | C | aperto |
| K-16 | 03 §3.1 | *Rem tene, verba sequentur* (Giulio Vittore) ◐ | Passo esatto | Giulio Vittore, *Ars rhetorica* (ed. Giomini–Celentano) | — | C | aperto |
| K-17 | 03 §3.2 | *Rhetorica ad Herennium* III: numerazione dei paragrafi; variante *mutas/multas* | Numeri e variante | Marx (Teubner); Achard; Caplan (Loeb) | Epigrafi capp. 12 e 25 | A | aperto |
| K-18 | 03 §3.3 | Cicerone, *De or.* II, 353: raccordo «hac tum re admonitus invenisse fertur» | Raccordo | Kumaniecki (Teubner) | Epigrafe cap. 4 (segmento ✔) | B | aperto |
| K-19 | 03 §3.3 | Cicerone, *De or.* II, 357 ◐ | Testo completo | Kumaniecki | — | B | aperto |
| K-20 | 03 §3.3 | Cicerone, *De or.* I, 150 (stilus optimus…) ○ | Testo | Kumaniecki | — | B | aperto |
| K-21 | 03 §3.3 | Cicerone, *De sen.* 21: raccordo «Nec vero» | Raccordo | Powell (1988) | Epigrafe cap. 18 (segmento ✔) | C | aperto |
| K-22 | 03 §3.3 | Cicerone, *De or.* II, 36 (*historia magistra vitae*) ○ | Testo | Kumaniecki | — | C | aperto |
| K-23 | 03 §3.4 | Seneca, *Ep.* 84: numerazione del passo *concoquamus* (84, 6 o 84, 7) | Paragrafo | Reynolds (OCT) | — | B | aperto |
| K-24 | 03 §3.5 | Quintiliano I, 3, 8–11 (pause) e I, 3, 14–17 (punizioni) ○ | Testo e paragrafi | Winterbottom (OCT) | — | C | aperto |
| K-25 | 03 §3.7 | Giovenale X, 356 (*mens sana in corpore sano*) ○ | Testo e verso | Clausen (OCT) | — | B | aperto |
| K-26 | 03 §3.9 | Plinio, *N.H.* XXXV, 84 (Apelle) ◐ | Testo completo | Mayhoff (Teubner) | — | C | aperto |
| K-27 | 03 §3.10 | Publilio Siro, numerazione della sentenza *Discipulus est prioris posterior dies* | Numero nell'edizione | Meyer (Teubner) | **Epigrafe cap. 19** | A | aperto |
| K-28 | 03 §4.3 | Giovanni di Salisbury, *Metalogicon* III, 4 ◐ | Testo | Hall (CCCM 98) | Congedo (testo) | B | aperto |
| K-29 | 03 §5.1, §5.3, §5.4 | Bacone, *Novum Organum* II, 26 (latino) ○; William James, *Principles* cap. XVI ○; motto di Ebbinghaus (1885) ○ | Testo originale, pagina, esistenza del motto | Spedding–Ellis–Heath; James 1890; Ebbinghaus 1885 | — | A | aperto |
| K-30 | 03 §6 | Falsi e attribuzioni: *repetitio mater studiorum*, *nulla dies sine linea*, *verba volant*, *tantum scimus…*, frase su Yeats | Origine documentata di ciascun detto | Repertori: Tosi, *Dizionario delle sentenze latine e greche*; Walther, *Proverbia* | — | B | aperto |

*Nota*: la numerazione dei capitoli indicata («Epigrafe cap. N») è quella del template 1.1 e dell'indice ragionato (ricerca 06).

## D. Bibliografia (`tex/bibliografia.bib`)

Tutte le 156 voci vanno controllate (autori, anno, rivista, volume, pagine, DOI) prima della stampa, idealmente con un gestore bibliografico (es. Zotero, importando i DOI). Voci con campi **mancanti o incerti**:

| Codice | Chiave | Che cosa manca o è incerto | Priorità | Stato |
|---|---|---|---|---|
| B-01 | `murray2025` | Volume e numero di articolo | B | aperto |
| B-02 | `kestin2025` | Numero di articolo; elenco autori | B | aperto |
| B-03 | `goodyear2025` | Volume; elenco completo degli autori | B | aperto |
| B-04 | `bei2023` | Volume, numero di articolo, elenco completo degli autori | B | aperto |
| B-05 | `boysen2024` | Volume, numero, pagine | C | aperto |
| B-06 | `theobald2020`, `urry2021`, `yeager2019`, `dresler2017`, `kosmyna2025` | Elenco completo degli autori (ora «and others») | C | aperto |
| B-07 | `rawson2022` | Pagine | C | aperto |
| B-08 | `fiorella2013` | Titolo, rivista e pagine (distinguere dagli articoli 2014) | B | aperto |
| B-09 | `gates1917` | Volume della rivista | C | aperto |
| B-10 | — | Voci da aggiungere: Cornoldi & De Beni, *Imparare a studiare* (edizione e anno); Dehaene, *Imparare* (edizione italiana); Willingham, edizione italiana; Legge 170/2010 e altre norme (se citate in bibliografia) | B | aperto |

## E. Normativa, etica e privacy (ricerca 02, 04, 05)

| Codice | Doc § | Punto | Che cosa verificare | Fonte | Priorità | Stato |
|---|---|---|---|---|---|---|
| N-01 | 02 §7.2 | Nuove Indicazioni nazionali per i licei | Data, stato (bozza/definitive), contenuti | MIM | B | aperto |
| N-02 | 02 §7.3–7.4 | Legge 150/2024; D.M. 328/2022; D.M. 63/2023 | Contenuti riportati | Gazzetta Ufficiale; MIM | B | aperto |
| N-03 | 02 §8.2 | Percorsi 60 CFU: struttura (tirocinio ≥ 20 CFU?), costi (fino a ~2.500 euro), critiche | Allegati del DPCM 4 agosto 2023; fonti sulle critiche | DPCM 4/8/2023; MUR | B | aperto |
| N-04 | 04 §10.1 | Direttiva 27/12/2012, C.M. 8/2013, D.I. 182/2020, D.I. 153/2023 | Riferimenti e contenuti | MIM | B | aperto |
| N-05 | 05 §8 | Consenso dei minori, dati sanitari (DSA), titolarità del trattamento | Parere di un esperto privacy / DPO; eventuale comitato etico | GDPR; Codice privacy; Garante | A (prima dell'indagine) | aperto |
| N-06 | 02 §11.1 | Ordini di grandezza del pubblico: ~7 milioni di studenti, ~1,9 milioni di universitari, 800–900.000 docenti, 60–70.000 docenti universitari | Dati aggiornati | MIM, Portale Unico dei dati della scuola; USTAT (MUR) | B | aperto |
| N-07 | 06 cap. 22 | L. 170/2010, art. 5 c. 4 (misure per gli studenti universitari con DSA); D.M. 5669/2011 e Linee guida allegate (paragrafo sull'università) | Testo e contenuti | Gazzetta Ufficiale; MUR | A | aperto |
| N-08 | 06 cap. 22 | Linee guida CNUDD (2014) per i servizi di ateneo; L. 17/1999 | Testo, data, contenuti | CNUDD; Gazzetta Ufficiale | A | aperto |

## F. Discrepanze tra fonti già note

| Codice | Doc § | Discrepanza | Da risolvere con | Stato |
|---|---|---|---|---|
| X-01 | 02 §3.1 | INVALSI 2026, italiano grado 8: 61% (slide ufficiali) vs 59% (resoconto giornalistico) | Rapporto INVALSI 2026 | aperto |
| X-02 | 02 §9.1 | Ultimo Paese UE per laureati 25–34: Ungheria (Eunews) o Romania (altre fonti)? | Eurostat | aperto |
| X-03 | 02 §2.1 | Italia «stabile» ma lettura 474 (2025) vs 482 (2022): differenza non significativa o collegamento tra cicli? | OCSE, tabelle di trend | aperto |
| X-04 | 02 §2.1 | Perdita in matematica dal 2015: «−24 punti» (stampa) vs 490→468 = −22 | OCSE, tabelle di trend | aperto |
| X-05 | 02 §8.1 | Data di pubblicazione di TALIS 2024 (ottobre 2025: giorno esatto) | OCSE | aperto |

## G. Pubblicazione in proprio (indice ragionato §10.2; ricerca 11)

| Codice | Punto | Che cosa verificare | Fonte | Priorità | Stato |
|---|---|---|---|---|---|
| P-01 | Formato 13 × 21 cm su Amazon KDP | Se è accettato come formato personalizzato o se conviene 5,25 × 8 in (13,34 × 20,32 cm) | KDP Help, *Trim size* | A | aperto |
| P-02 | Margine interno (16 mm nel template) | Minimo KDP per il numero di pagine previsto (≈ 360–400) | KDP Help, *Margins* | A | aperto |
| P-03 | Interni in bianco e nero | Costo di stampa e prezzo minimo in b/n e a colori; uso dell'opzione `monocromo` | KDP, calcolatore dei costi | A | aperto |
| P-04 | ISBN | ISBN gratuito di Amazon oppure proprio (agenzia ISBN italiana); conseguenze sul colophon | KDP; Agenzia ISBN per l'area di lingua italiana | B | aperto |
| P-05 | Licenza del PDF gratuito | Scelta della licenza Creative Commons e compatibilità con la vendita su KDP (contenuti disponibili gratis altrove) | Creative Commons; condizioni KDP | A | aperto |
| P-06 | Email per il download | Informativa privacy, consenso, conservazione dei dati; strumento del sito | GDPR; Garante privacy | B | aperto |

---

## Registro delle verifiche completate

| Codice | Data | Esito | Fonte consultata | Note |
|---|---|---|---|---|
| — | — | — | — | *(da compilare man mano)* |

---

*Fine del registro. Da aggiornare a ogni verifica e a ogni nuovo dato inserito nei capitoli.*
