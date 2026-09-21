# Template LuaLaTeX — *Studiare per la vita* (study-study-study)

Versione 1.1 (21 settembre 2026). Il template è stato ricostruito sulla struttura del libro definita
nell'**indice ragionato** (`../ricerca/06_indice-ragionato.md`, v1.1): 6 parti, 26 capitoli, un congedo,
3 appendici. Pubblico della prima fase: l'università (studenti e docenti). La versione precedente (3 capitoli di prova) è in `_archivio-v1.0/` e nella storia di Git.

Si compila con **LuaLaTeX + biber**:

```sh
latexmk                       # compila libro.tex → libro.pdf (più passaggi)
latexmk -c                    # pulisce i file ausiliari
latexmk modelli/modello.tex   # documento di prova con tutti gli elementi grafici
```

Requisiti: TeX Live / MacTeX 2023 o successivo (contiene EB Garamond, `pgfornament`, `lettrine`,
`biblatex`, `biber`). Nessun font da installare. Il greco antico si scrive direttamente in Unicode
(EB Garamond ha il greco politonico).

## Struttura

```
tex/
├── libro.tex               file principale: dati del libro, parti, ordine dei capitoli
├── studiolibro.cls         la classe (layout, font, titoli, ornamenti, riquadri)
├── bibliografia.bib        voci bibliografiche (biblatex), ricavate dalle ricerche 01–05
├── latexmkrc               configurazione di latexmk
├── frontmatter/            prefazione.tex, come-usare.tex
├── capitoli/               cap01-vita.tex … cap26-formatori.tex, congedo.tex
├── appendici/              appA-indagine.tex, appB-schede.tex, appC-glossario.tex
├── modelli/                capitolo-modello.tex (tutti gli elementi) e modello.tex (per compilarlo)
└── immagini/               figure (PDF, PNG, JPG)
```

Ogni file di capitolo comincia con un'intestazione di commento che indica: parte, **paragrafi della
ricerca** da cui attingere, **voci bibliografiche** principali, **stato di verifica dell'epigrafe**
(✔ verificata sul testo, ◐ verificata indirettamente, ○ da verificare) e il rimando alla scheda del
capitolo nell'indice ragionato.

## Convenzioni di scrittura

- **Testo provvisorio**: `\segnaposto{…}` — compare in grigio tra parentesi quadre. Con l'opzione
  `stampa` della classe ogni segnaposto rimasto produce un errore: nessun testo provvisorio finisce
  nel libro stampato.
- **Epigrafi**: `\epigrafe[traduzione]{testo originale}{fonte}`. Il testo originale (latino, greco)
  in corsivo; la traduzione, facoltativa, in tondo tra virgolette basse. Solo citazioni verificate:
  vedi `../ricerca/03_fonti-classiche_citazioni.md` e il registro `../ricerca/00_registro-verifiche.md`.
- **Fonti classiche**: in nota, con il riferimento al passo (es. *Seneca, Ep. 106, 12*), non con
  `\parencite`.
- **Fonti moderne**: `\parencite{chiave}` / `\textcite{chiave}` (autore-anno). Chiave = cognome del
  primo autore + anno (es. `roediger2006`).
- **Durante la stesura** `libro.tex` contiene `\nocite{*}`, così la bibliografia mostra tutte le voci
  del file `.bib` (utile per controllarle). Toglierlo per la versione finale.
- **Fine capitolo**: riquadro `daricordare`, `domande` (almeno una domanda su un capitolo precedente:
  il libro applica a sé la ripetizione distanziata), `sintesi`, `\finecapitolo`.

## Proporzioni (sezione aurea)

| Elemento | Misura | Rapporto |
|---|---|---|
| Pagina | 13 × 21 cm | 21/13 ≈ 1,615 ≈ φ (numeri di Fibonacci) |
| Gabbia del testo | 88 × 142 mm, 29 righe | altezza = larghezza × φ |
| Margine interno : esterno | 16 : 26 mm | 1 : φ |
| Margine di testa : piede | ≈ 26 : 42 mm | 1 : φ |
| Discesa del titolo di capitolo | 0,236 × gabbia | 1/φ³ |
| Epigrafe, dedica, sottotitolo | 0,618 × larghezza | 1/φ |
| Frontespizio | titolo a 0,382 H, emblema a 0,618 H | φ |

Corpo 11 pt su interlinea 14 pt; gli spazi verticali sono multipli dell'interlinea. L'emblema del
frontespizio è una **spirale aurea** costruita sui quadrati di Fibonacci: la stessa proporzione della
pagina, e un'immagine del ripasso che torna sugli argomenti allargandosi.

## Comandi principali

| Comando | Effetto |
|---|---|
| `\iniziale{L}{a prima parola}` | capolettera (Q e J gestiti in automatico) |
| `\epigrafe[traduzione]{testo}{fonte}` | epigrafe sotto il titolo del capitolo |
| `\segnaposto{testo}` | testo provvisorio (errore con l'opzione `stampa`) |
| `\capitolosenzanumero{Titolo}` | capitolo non numerato che compare nell'indice (es. Congedo) |
| `\fleurone`, `\asterismo` | pausa/separazione nel testo |
| `\finecapitolo` | chiude il capitolo; se resta molto bianco, lo completa con un fregio |
| `\begin{daricordare}` `inpratica` `esercizio` | riquadri didattici |
| `\begin{domande} \item … \end{domande}` | domande per il ripasso |
| `\begin{sintesi} \item … \end{sintesi}` | sintesi di fine capitolo |
| `\figura[larghezza]{file}{didascalia}{etichetta}` | figura da `immagini/` |
| `\ornamento[larghezza]{n}` | uno dei 196 ornamenti di `pgfornament` |
| `\spiraleaurea[larghezza]` | l'emblema |
| `\parencite{chiave}`, `\textcite{chiave}` | citazioni (autore-anno) |

Pagine di apertura: `\occhietto`, `\frontespizio`, `\colophon[testo]`, `\dedica{…}`,
`\epigrafelibro{…}{…}`; dopo `\appendix` i capitoli si intitolano «appendice A, B…»; in chiusura
`\finis`.

## Opzioni della classe

```latex
\documentclass[monocromo]{studiolibro}  % stampa a un solo colore (nessun rosso)
\documentclass[bozza]{studiolibro}      % mostra i margini e la gabbia
\documentclass[stampa]{studiolibro}     % versione finale: errore se restano \segnaposto
```

Il rosso «rubrica» (`#8E1B1B`) è usato con parsimonia: capilettera, numeri, filetti e ornamenti.

## Novità della versione 1.1

- struttura completa del libro (6 parti, 26 capitoli, congedo, 3 appendici) con intestazioni che
  rimandano alla ricerca; pubblico universitario (capp. 2, 14, 19–24 riorientati, nuovo cap. 26);
- pubblicazione in proprio: `\editore{lucalevi.com}`, colophon con licenza da decidere (niente
  «Tutti i diritti riservati»); per la stampa Amazon KDP usare `[monocromo]` e verificare il margine interno;
- epigrafi corrette e verificate (eliminato «Repetita iuvant», che non è una citazione classica);
  epigrafe del libro con l'attribuzione corretta (rovesciamento di Seneca, *Ep.* 106, 12);
- `\epigrafe` con traduzione facoltativa; `\segnaposto` e opzione `stampa`; `\capitolosenzanumero`;
  titoli delle appendici; numeri ordinali dei capitoli fino al trentesimo;
- `bibliografia.bib` ampliata a circa 150 voci dalle ricerche 01–05;
- capitolo di esempio spostato in `modelli/`.
