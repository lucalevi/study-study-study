# Template LuaLaTeX — *study-study-study*

Classe `studiolibro.cls` per il libro sullo studio. Si compila con **LuaLaTeX + biber**.

```sh
latexmk            # compila libro.tex → libro.pdf (lualatex + biber, più passaggi)
latexmk -c         # pulisce i file ausiliari
```

Requisiti: TeX Live / MacTeX 2023 o successivo (contiene già EB Garamond,
`pgfornament`, `lettrine`, `biblatex`, `biber`). Nessun font da installare.

## Struttura

```
tex/
├── libro.tex               file principale: dati del libro, ordine dei capitoli
├── studiolibro.cls         la classe (layout, font, titoli, ornamenti, riquadri)
├── bibliografia.bib        voci bibliografiche (biblatex)
├── latexmkrc               configurazione di latexmk
├── frontmatter/            prefazione, introduzione…
├── capitoli/               un file per capitolo
└── immagini/               figure (PDF, PNG, JPG)
```

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

Corpo 11 pt su interlinea 14 pt; gli spazi verticali sono multipli dell'interlinea.
Un formato intermedio: più grande della Piccola Biblioteca Adelphi (11 × 18),
più piccolo di un 15 × 23.

L'emblema del frontespizio è una **spirale aurea** costruita sui quadrati di
Fibonacci: la stessa proporzione della pagina, e un'immagine del ripasso che
torna sugli argomenti allargandosi.

## Comandi principali

| Comando | Effetto |
|---|---|
| `\iniziale{L}{a prima parola}` | capolettera (Q e J gestiti in automatico) |
| `\epigrafe{testo}{fonte}` | epigrafe sotto il titolo del capitolo |
| `\fleurone`, `\asterismo` | pausa/separazione nel testo |
| `\finecapitolo` | chiude il capitolo; se resta molto bianco, lo completa con un fregio |
| `\begin{daricordare}` `inpratica` `esercizio` | riquadri didattici |
| `\begin{domande} \item … \end{domande}` | domande per il ripasso |
| `\begin{sintesi} \item … \end{sintesi}` | sintesi di fine capitolo |
| `\figura[larghezza]{file}{didascalia}{etichetta}` | figura da `immagini/` |
| `\ornamento[larghezza]{n}` | uno dei 196 ornamenti di `pgfornament` |
| `\spiraleaurea[larghezza]` | l'emblema |
| `\parencite{chiave}`, `\textcite{chiave}` | citazioni (autore-anno) |

Pagine di apertura: `\occhietto`, `\frontespizio`, `\colophon[testo]`,
`\dedica{…}`, `\epigrafelibro{…}{…}`; in chiusura `\finis`.

## Opzioni della classe

```latex
\documentclass[monocromo]{studiolibro}  % stampa a un solo colore (nessun rosso)
\documentclass[bozza]{studiolibro}      % mostra i margini e la gabbia
```

Il rosso «rubrica» (`#8E1B1B`) è usato con parsimonia: capilettera, numeri,
filetti e ornamenti. Per la stampa economica usa `monocromo`.
