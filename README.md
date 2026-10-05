# Studiare per la vita

> **Work in progress.** Il libro è in fase di scrittura: molti capitoli sono già in prima stesura e in revisione, altri sono ancora da scrivere. Testi, dati e struttura possono cambiare fino alla pubblicazione.

## Che cos'è

*Studiare per la vita* è un libro in lingua italiana su **come si studia e perché**. Vuole essere un testo di riferimento, fondato sulle prove, per chiunque studi o insegni: spiega come funziona la memoria, quali strategie di studio funzionano davvero (e quali no), e come portarle nella vita universitaria di tutti i giorni.

Il titolo riprende il motto *non scholae sed vitae discimus*: non si studia per la scuola o per l'esame, ma per la vita. Eppure molto di ciò che si studia viene dimenticato poco dopo la prova. Questo libro nasce da una domanda semplice: **che senso ha studiare, se poi si dimentica tutto?** La risposta è che si può studiare in modo da ricordare e capire a lungo, e la scienza dell'apprendimento sa già, in gran parte, come.

## A chi si rivolge

Il libro è scritto per il **pubblico italofono** e, in questa prima fase, per il mondo **universitario**:

- **studentesse e studenti universitari**, dalla matricola al laureando, e chi si prepara all'università o a un concorso;
- **docenti universitari** (professori, ricercatori, docenti a contratto), a cui è dedicata un'intera parte del libro;
- chi **forma i futuri insegnanti** e chi si occupa di didattica negli atenei.

All'università si formano anche gli insegnanti di domani: è da lì che il libro vuole arrivare, in una seconda fase, alle scuole superiori e medie.

## Punti di forza

- **Fondato sulle prove.** Ogni affermazione si appoggia a studi controllati e meta-analisi, citati con precisione. Il testo distingue apertamente ciò che è solido, ciò che è promettente e ciò che è falso, e ogni dato è tracciato in un registro delle verifiche.
- **Un metodo, non dei trucchi.** Al centro ci sono pochi principi con prove robuste: richiamare a memoria (pratica del recupero), distribuire lo studio nel tempo, alternare gli argomenti, spiegare e collegare, controllare ciò che si sa davvero.
- **Contro i miti.** Stili di apprendimento, «dieci per cento del cervello», piramide dell'apprendimento, lettura veloce: il libro spiega perché sono falsi e come riconoscere un metodo da quattro soldi.
- **Pensato per l'università italiana.** Lezioni, sessioni, appelli, esami orali, prove in itinere, discipline diverse, studenti con DSA: esempi e proposte partono dalla realtà dei nostri atenei, con dati italiani.
- **Due lettori, un solo libro.** Parla agli studenti e, nella Parte VI, ai docenti, con indicazioni concrete per lezioni, valutazione e formazione didattica.
- **Tradizione classica e scienza moderna.** Ogni capitolo si apre con un'epigrafe in lingua originale (Platone, Aristotele, Cicerone, Seneca, Quintiliano, Agostino, Ugo di San Vittore…), verificata sulle fonti.
- **Un libro che applica il proprio metodo.** Domande di ripasso a libro chiuso, riprese dei capitoli precedenti, riquadri pratici ed esercizi: il lettore studia il metodo usandolo.
- **Aperto e senza scopo di lucro.** È un progetto di impegno sociale: il PDF sarà gratuito e il testo è distribuito con licenza Creative Commons.

## A che cosa serve

- **A chi studia**: a smettere di sprecare ore in strategie inefficaci, a ricordare a lungo ciò che studia, a organizzare semestre ed esami, e a ritrovare il senso dello studio.
- **A chi insegna**: a sapere che cosa dice la ricerca su lezioni, apprendimento attivo, quiz, esami e feedback, e a insegnare il metodo di studio dentro la propria disciplina.
- **A chi forma gli insegnanti e agli atenei**: a disporre di una base comune, in italiano, sulla scienza dell'apprendimento.

## Struttura del libro

Sei parti, 26 capitoli, un congedo e tre appendici:

1. **Perché si studia**: il senso dello studio e la situazione dell'università italiana.
2. **Come funziona la memoria**: da Simonide a Ebbinghaus, il cervello che impara, le illusioni di competenza.
3. **Il metodo**: recupero, distribuzione, alternanza, comprensione, immagini, insegnare per imparare.
4. **Le condizioni dell'apprendimento**: sonno e corpo, attenzione, intelligenza artificiale, motivazione.
5. **Studiare all'università**: il passaggio dalla scuola, il semestre e gli esami, le discipline, DSA e altri bisogni.
6. **Per chi insegna all'università**: insegnare e valutare con la scienza dell'apprendimento, contro i miti, la formazione degli insegnanti.

Appendici: una proposta di indagine su come studiano gli studenti italiani, schede pratiche, glossario.

## Stato dei lavori

Il progetto è un **work in progress**. In sintesi:

- i capitoli 1–25 sono in **prima stesura**, in corso di revisione da parte dell'autore;
- restano da scrivere il capitolo 26, il congedo, le appendici, la prefazione e le pagine introduttive;
- dati e citazioni vengono verificati man mano (vedi `ricerca/00_registro-verifiche.md`); alcuni punti saranno ricontrollati a ridosso della pubblicazione.

A lavoro concluso il libro sarà disponibile come **PDF gratuito** su [www.lucalevi.com](https://www.lucalevi.com) e in edizione cartacea a prezzo contenuto.

## Contenuto della repository

```
study-study-study/
├── ricerca/   documenti di ricerca: scienza dell'apprendimento, dati italiani, fonti classiche,
│              indice ragionato del libro, registro delle verifiche
└── tex/       sorgenti LuaLaTeX del libro (classe, capitoli, appendici, bibliografia)
```

Il libro si compila con LuaLaTeX e biber (TeX Live o MacTeX 2023 o successivi):

```sh
cd tex
latexmk        # produce build/libro.pdf
```

Dettagli sul template e sulle convenzioni di scrittura in `tex/README.md`.

## Licenza
Quest'opera è distribuita con licenza [Creative Commons Attribuzione - Non commerciale - Condividi allo stesso modo 4.0 Internazionale](http://creativecommons.org/licenses/by-nc-sa/4.0/) (CC BY-NC-SA 4.0).
