%% ===================================================================
%%  studiolibro.cls — classe LuaLaTeX per il libro «study-study-study»
%% -------------------------------------------------------------------
%%  Formato 13 × 21 cm: un rettangolo di Fibonacci (21/13 ≈ 1,615 ≈ φ).
%%  Gabbia del testo proporzionata alla sezione aurea, margini in
%%  rapporto aureo, EB Garamond, capilettera, ornamenti vettoriali.
%%
%%  Opzioni della classe:
%%    monocromo  -> stampa a un solo colore (niente rosso «rubrica»)
%%    bozza      -> mostra la gabbia del testo (per controllare il layout)
%%    stampa     -> versione definitiva: errore se restano \segnaposto
%% ===================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{studiolibro}[2026/09/21 v1.1 Classe per il libro study-study-study]

\RequirePackage{iftex}
\RequireLuaTeX

% ---------------------------------------------------------------- opzioni
\newif\ifsl@monocromo \sl@monocromofalse
\newif\ifsl@bozza     \sl@bozzafalse
\newif\ifsl@stampa    \sl@stampafalse
\DeclareOption{monocromo}{\sl@monocromotrue}
\DeclareOption{bozza}{\sl@bozzatrue}
\DeclareOption{stampa}{\sl@stampatrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass[11pt,twoside,openright]{book}

% ==================================================================
% 1. PROPORZIONI: pagina, gabbia, margini
% ==================================================================
%  Pagina       130 × 210 mm   (13:21, numeri di Fibonacci ≈ φ)
%  Gabbia        88 × 142 mm   (altezza = larghezza × φ; 29 righe)
%  Interno : esterno = 1 : φ   (16 mm : 26 mm)
%  Testa   : piede   = 1 : φ   (≈ 26 mm : 42 mm)
%  Corpo 11 pt su interlinea 14 pt: ogni spazio verticale è un
%  multiplo di 14 pt, così le righe dei due lati del foglio coincidono.
\def\sl@phi{1.618034}
\linespread{1.02941}  % 13,6 pt (book, 11pt) × 1,02941 = 14 pt esatti
\RequirePackage[
  paperwidth=130mm, paperheight=210mm,
  textwidth=88mm,
  textheight=403pt,        % = 28 × 14 pt + \topskip (11 pt) = 29 righe
  inner=16mm,
  top=26mm,
  headheight=14pt, headsep=16pt,
  footskip=30pt,
]{geometry}
\ifsl@bozza \geometry{showframe} \fi

\setlength{\parindent}{1.2em}
\setlength{\parskip}{0pt}
\flushbottom
\widowpenalty=10000 \clubpenalty=10000 \displaywidowpenalty=10000
\brokenpenalty=5000

% ==================================================================
% 2. CARATTERI
% ==================================================================
\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}
% I font sono richiamati per nome di file: funzionano con qualunque
% TeX Live / MacTeX recente (pacchetto «ebgaramond»), senza installarli.
\setmainfont{EBGaramond}[
  Extension      = .otf,
  UprightFont    = *-Regular,
  ItalicFont     = *-Italic,
  BoldFont       = *-SemiBold,
  BoldItalicFont = *-SemiBoldItalic,
  Numbers        = {OldStyle,Proportional},
  Ligatures      = {TeX,Common,Historic},
]
\newfontfamily\sl@lining{EBGaramond}[
  Extension=.otf, UprightFont=*-Regular, ItalicFont=*-Italic,
  BoldFont=*-SemiBold, Numbers={Lining,Monospaced}]
\newcommand{\cifremaiuscole}{\sl@lining}   % cifre allineate (tabelle, date)

% ==================================================================
% 3. LINGUA, CITAZIONI, MICROTIPOGRAFIA
% ==================================================================
\RequirePackage[italian]{babel}
\RequirePackage[autostyle, italian=guillemets]{csquotes}
\RequirePackage[protrusion=true, expansion=true, tracking=true,
                final, babel=true]{microtype}
\SetTracking{encoding=*, shape=sc}{40}  % maiuscoletto leggermente spaziato

% ==================================================================
% 4. COLORI
% ==================================================================
\RequirePackage[dvipsnames]{xcolor}
\definecolor{inchiostro}{HTML}{1C1A17}   % nero caldo, di stampa
\ifsl@monocromo
  \definecolor{rubrica}{HTML}{1C1A17}
  \definecolor{filetto}{gray}{0.35}
\else
  \definecolor{rubrica}{HTML}{8E1B1B}    % rosso delle rubriche medievali
  \definecolor{filetto}{HTML}{8E1B1B}
\fi
\AtBeginDocument{\color{inchiostro}}

% ==================================================================
% 5. PACCHETTI DI SERVIZIO
% ==================================================================
\RequirePackage{graphicx}
\graphicspath{{immagini/}}
\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage{pgfornament}
\RequirePackage{lettrine}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{booktabs}
\RequirePackage{array}      % colonne con >{\raggedright\arraybackslash} nelle tabelle
\RequirePackage[font={small}, labelfont={sc}, labelsep=period,
                justification=centering, skip=7pt]{caption}
\RequirePackage[hang, bottom]{footmisc}
\RequirePackage[breakable, skins]{tcolorbox}
\RequirePackage{etoolbox}

% ==================================================================
% 6. DATI DEL LIBRO
% ==================================================================
\newcommand{\titolo}[1]{\gdef\sl@titolo{#1}\title{#1}}
\newcommand{\sottotitolo}[1]{\gdef\sl@sottotitolo{#1}}
\newcommand{\autore}[1]{\gdef\sl@autore{#1}\author{#1}}
\newcommand{\editore}[1]{\gdef\sl@editore{#1}}
\newcommand{\luogo}[1]{\gdef\sl@luogo{#1}}
\newcommand{\anno}[1]{\gdef\sl@anno{#1}}
\newcommand{\edizione}[1]{\gdef\sl@edizione{#1}}
\newcommand{\isbn}[1]{\gdef\sl@isbn{#1}}
\titolo{Titolo}\sottotitolo{}\autore{Autore}\editore{}\luogo{}
\anno{\the\year}\edizione{Prima edizione}\isbn{}

% ==================================================================
% 7. ORNAMENTI
% ==================================================================
% Ornamento generico:  \ornamento[larghezza]{numero pgfornament}
\newcommand{\ornamento}[2][1.2cm]{%
  {\color{filetto}\pgfornament[width=#1]{#2}}}
% Filetto sotto il titolo del capitolo (larghezza = gabbia / φ²)
\newcommand{\filettocapitolo}{%
  \ornamento[0.382\textwidth]{88}}
% Fleurone di separazione (cambio di scena, pausa nel discorso)
\newcommand{\fleurone}{%
  \par\filbreak\vspace{\baselineskip}%
  {\centering\ornamento[0.9cm]{15}\par}%
  \vspace{\baselineskip}\noindent\ignorespaces}
% Asterismo tipografico, più discreto
\newcommand{\asterismo}{%
  \par\vspace{\baselineskip}%
  {\centering\color{rubrica}*\hspace{1.2em}*\hspace{1.2em}*\par}%
  \vspace{\baselineskip}\noindent\ignorespaces}

% Fine capitolo: se resta molto spazio bianco, lo «completa» con un
% ornamento centrato otticamente (sulla sezione aurea dello spazio
% residuo); se lo spazio è poco, mette un piccolo fregio discreto.
\newcommand{\finecapitolo}{%
  \par
  \dimen0=\dimexpr\pagegoal-\pagetotal\relax
  \ifdim\dimen0>0.40\textheight
    \vspace*{\stretch{0.382}}%
    {\centering\ornamento[0.14\textwidth]{67}\par}%
    \vspace*{\stretch{0.618}}%
  \else\ifdim\dimen0>4\baselineskip
    \vspace{2\baselineskip}%
    {\centering\ornamento[0.9cm]{11}\par}%
  \fi\fi}

% ==================================================================
% 8. SPIRALE AUREA (emblema del libro)
% ==================================================================
% Sei quadrati di Fibonacci (1,1,2,3,5,8) e i relativi quarti di
% cerchio. Il rettangolo che li contiene, 13 × 8, è lo stesso rapporto
% della pagina (21 × 13): la spirale è l'immagine del libro — e del
% ripasso che torna ciclicamente sugli argomenti, allargandosi.
\newcommand{\spiraleaurea}[1][3.2cm]{%
  \begin{tikzpicture}[x=#1/13, y=#1/13, line cap=round]
    \begin{scope}[draw=filetto!60, line width=0.25pt]
      \draw (0,0) rectangle (1,1);   \draw (1,1) rectangle (2,0);
      \draw (2,0) rectangle (0,-2);  \draw (0,-2) rectangle (-3,1);
      \draw (-3,1) rectangle (2,6);  \draw (2,6) rectangle (10,-2);
    \end{scope}
    \draw[rubrica, line width=0.7pt]
      (0,0) arc (180:90:1) arc (90:0:1) arc (0:-90:2)
      arc (-90:-180:3) arc (180:90:5) arc (90:0:8);
  \end{tikzpicture}}

% ==================================================================
% 9. TITOLI
% ==================================================================
\newcommand{\sl@ordinale}[1]{%
  \ifcase#1\or primo\or secondo\or terzo\or quarto\or quinto\or sesto%
  \or settimo\or ottavo\or nono\or decimo\or undicesimo\or dodicesimo%
  \or tredicesimo\or quattordicesimo\or quindicesimo\or sedicesimo%
  \or diciassettesimo\or diciottesimo\or diciannovesimo\or ventesimo%
  \or ventunesimo\or ventiduesimo\or ventitreesimo\or ventiquattresimo%
  \or venticinquesimo\or ventiseiesimo\or ventisettesimo\or ventottesimo%
  \or ventinovesimo\or trentesimo%
  \else\number#1\fi}
\newcommand{\sl@ordinalef}[1]{%
  \ifcase#1\or prima\or seconda\or terza\or quarta\or quinta\or sesta%
  \or settima\or ottava\or nona\or decima\else\number#1\fi}
\newcommand{\spaziato}[2][100]{\textls[#1]{#2}}

% --- Parte --------------------------------------------------------
\titleformat{\part}[display]
  {\centering\normalfont}
  {\ornamento[1.6cm]{65}\\[2\baselineskip]
   {\large\scshape\spaziato[150]{parte \sl@ordinalef{\value{part}}}}}
  {\baselineskip}
  {\Huge\itshape}
  [\vspace{\baselineskip}\filettocapitolo]
\assignpagestyle{\part}{empty}
\titleformat{name=\part,numberless}[display]
  {\centering\normalfont}{}{0pt}{\Huge\itshape}

% --- Capitolo -----------------------------------------------------
% Il titolo scende di 1/φ³ della gabbia: la pagina d'apertura respira.
\titleformat{\chapter}[display]
  {\centering\normalfont}
  {{\color{rubrica}\scshape\spaziato[180]{capitolo
     \sl@ordinale{\value{chapter}}}}}
  {\baselineskip}
  {\LARGE\itshape}
  [\vspace{0.6\baselineskip}\filettocapitolo]
\titleformat{name=\chapter,numberless}[display]
  {\centering\normalfont}{}{0pt}{\LARGE\itshape}
  [\vspace{0.6\baselineskip}\filettocapitolo]
\titlespacing*{\chapter}{0pt}{0.236\textheight}{3\baselineskip}

% --- Paragrafi ----------------------------------------------------
\titleformat{\section}[block]
  {\centering\normalfont}
  {{\color{rubrica}\thesection}\enspace}{0pt}
  {\scshape}
\titlespacing*{\section}{0pt}{2\baselineskip plus 4pt}{1\baselineskip}

\titleformat{\subsection}[block]
  {\raggedright\normalfont\itshape}
  {}{0pt}{}
\titlespacing*{\subsection}{0pt}{1\baselineskip plus 2pt}{0pt}

\titleformat{\subsubsection}[runin]
  {\normalfont\scshape}{}{0pt}{}[.\enspace]
\titlespacing*{\subsubsection}{0pt}{0.5\baselineskip}{0pt}

\setcounter{secnumdepth}{1}   % numerati capitoli e paragrafi
\setcounter{tocdepth}{1}

% --- Indice (sommario) --------------------------------------------
\titlecontents{part}[0pt]
  {\addvspace{2\baselineskip}\centering\scshape}
  {\spaziato[120]{parte \thecontentslabel}\\*\itshape}
  {\itshape}{}[\addvspace{0.5\baselineskip}]
\titlecontents{chapter}[1.8em]
  {\addvspace{0.8\baselineskip}}
  {\contentslabel[{\color{rubrica}\thecontentslabel}]{1.8em}}
  {\hspace*{-1.8em}}
  {\hfill\contentspage}
\titlecontents{section}[1.8em]
  {\small\itshape}
  {}{}{\hfill\contentspage}

% --- Epigrafe all'inizio del capitolo --------------------------------
% \epigrafe[traduzione]{testo}{fonte} — larghezza = gabbia / φ
% Il testo originale (latino, greco…) va in corsivo; la traduzione,
% facoltativa, è composta in tondo tra virgolette basse, più piccola.
\newcommand{\epigrafe}[3][]{%
  \vspace*{-\baselineskip}%
  {\hfill\begin{minipage}{0.618\textwidth}
     \small\itshape\raggedleft #2\par
     \ifblank{#1}{}{%
       \vspace{0.2\baselineskip}%
       {\normalfont\footnotesize «#1»}\par}%
     \vspace{0.3\baselineskip}
     {\normalfont\footnotesize\scshape — #3}\par
   \end{minipage}\par}%
  \vspace{2\baselineskip}}

% --- Appendici --------------------------------------------------------
% Dopo \appendix i capitoli si intitolano «appendice A, B…».
\g@addto@macro\appendix{%
  \titleformat{\chapter}[display]
    {\centering\normalfont}
    {{\color{rubrica}\scshape\spaziato[180]{appendice \Alph{chapter}}}}
    {\baselineskip}
    {\LARGE\itshape}
    [\vspace{0.6\baselineskip}\filettocapitolo]}

% --- Capitolo non numerato che compare nell'indice (es. Congedo) -----
% \capitolosenzanumero{Titolo}
\newcommand{\capitolosenzanumero}[1]{%
  \chapter*{#1}\addcontentsline{toc}{chapter}{#1}\markboth{#1}{#1}}

% --- Segnaposto per le bozze -----------------------------------------
% \segnaposto{testo} — testo provvisorio, in grigio e tra parentesi
% quadre; con l'opzione «stampa» della classe produce un errore, così
% nessun segnaposto finisce per sbaglio nel libro stampato.
\newcommand{\segnaposto}[1]{%
  \ifsl@stampa
    \ClassError{studiolibro}{Segnaposto rimasto nel testo: #1}{}%
  \else
    {\color{gray}\itshape[#1]}%
  \fi}

% ==================================================================
% 10. CAPILETTERA
% ==================================================================
% Uso: \iniziale{L}{a prima parola} resto del paragrafo…
%      \iniziale{L}{'apprendimento} … (con l'apostrofo)
\setcounter{DefaultLines}{3}
\renewcommand{\LettrineTextFont}{\scshape}
\setlength{\DefaultFindent}{0.25em}
\setlength{\DefaultNindent}{0em}
\renewcommand{\LettrineFontHook}{\color{rubrica}}
% Le lettere con coda (Q, J) scendono sotto la riga: si aggiunge
% automaticamente una riga di rientro in più.
\newcommand{\iniziale}[3][]{%
  \ifboolexpr{test {\ifstrequal{#2}{Q}} or test {\ifstrequal{#2}{J}}}
    {\lettrine[depth=1,#1]{#2}{#3}}
    {\lettrine[#1]{#2}{#3}}}

% ==================================================================
% 11. TESTATINE E PIEDINI
% ==================================================================
% Pari (verso): titolo del libro · Dispari (recto): titolo del capitolo.
% Folio all'esterno, in cifre «antiche»; nessun filetto.
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[LE,RO]{\thepage}
\fancyhead[CE]{\footnotesize\scshape\spaziato[120]{\MakeLowercase{\sl@titolo}}}
\fancyhead[CO]{\footnotesize\itshape\nouppercase{\rightmark}}
\renewcommand{\chaptermark}[1]{\markboth{#1}{#1}}
\renewcommand{\sectionmark}[1]{}
% Le pagine bianche lasciate per aprire a destra restano davvero bianche
\renewcommand{\cleardoublepage}{%
  \clearpage
  \if@twoside\ifodd\c@page\else
    \hbox{}\thispagestyle{empty}\newpage
  \fi\fi}
\fancypagestyle{plain}{%
  \fancyhf{}\renewcommand{\headrulewidth}{0pt}%
  \fancyfoot[C]{\footnotesize\thepage}}

% ==================================================================
% 12. NOTE, ELENCHI, CITAZIONI
% ==================================================================
\renewcommand{\footnoterule}{%
  \vspace*{-3pt}\noindent{\color{filetto}\rule{0.236\textwidth}{0.3pt}}%
  \vspace*{2.6pt}}
\setlength{\footnotemargin}{1.2em}
\setlength{\footnotesep}{\baselineskip}
\setlist{nosep, leftmargin=1.8em}
\setlist[itemize]{label={\color{rubrica}\textperiodcentered}}
\setlist[enumerate]{label={\color{rubrica}\arabic*.}}

\renewenvironment{quote}
  {\par\vspace{0.5\baselineskip}\small
   \list{}{\leftmargin=1.8em\rightmargin=1.8em}\item\relax}
  {\endlist\vspace{0.5\baselineskip}}
\renewenvironment{quotation}
  {\par\vspace{0.5\baselineskip}\small
   \list{}{\leftmargin=1.8em\rightmargin=1.8em
           \listparindent=1.2em\parsep=0pt}\item\relax}
  {\endlist\vspace{0.5\baselineskip}}

% ==================================================================
% 13. RIQUADRI DIDATTICI
% ==================================================================
% Riquadro classico: filetto sopra e sotto, titolo in maiuscoletto
% che «interrompe» il filetto superiore. Niente fondi colorati.
%   \begin{riquadro}{Titolo} … \end{riquadro}
%   scorciatoie: daricordare, inpratica, esercizio, domande
\newtcolorbox{riquadro}[1]{%
  enhanced, breakable, sharp corners,
  colback=white, colframe=white, boxrule=0pt,
  left=0.4em, right=0.4em, top=\baselineskip, bottom=0.6\baselineskip,
  before skip=1.5\baselineskip plus 0.5\baselineskip,
  after skip=1.5\baselineskip plus 0.5\baselineskip,
  fontupper=\small,
  borderline north={0.4pt}{0pt}{filetto},
  borderline south={0.4pt}{0pt}{filetto},
  attach boxed title to top center={yshift=-0.55\baselineskip},
  boxed title style={colback=white, colframe=white, boxrule=0pt,
                     left=0.6em, right=0.6em, top=0pt, bottom=0pt},
  coltitle=rubrica,
  fonttitle=\normalfont\small\scshape,
  title={\spaziato[120]{\MakeLowercase{#1}}},
}
\newenvironment{daricordare}{\begin{riquadro}{Da ricordare}}{\end{riquadro}}
\newenvironment{inpratica}{\begin{riquadro}{In pratica}}{\end{riquadro}}
\newenvironment{esercizio}{\begin{riquadro}{Esercizio}}{\end{riquadro}}
\newenvironment{domande}
  {\begin{riquadro}{Domande per il ripasso}\begin{enumerate}}
  {\end{enumerate}\end{riquadro}}

% Sintesi di fine capitolo
\newenvironment{sintesi}
  {\par\vspace{2\baselineskip}%
   {\centering\ornamento[0.7cm]{11}\par
    \vspace{0.5\baselineskip}
    {\color{rubrica}\scshape\spaziato[150]{in sintesi}}\par}%
   \vspace{\baselineskip}\small
   \begin{itemize}[leftmargin=1.2em]}
  {\end{itemize}\par}

% ==================================================================
% 14. FIGURE
% ==================================================================
% \figura[larghezza]{file}{didascalia}{etichetta}
\newcommand{\figura}[4][\textwidth]{%
  \begin{figure}[tbp]\centering
    \includegraphics[width=#1]{#2}%
    \caption{#3}\label{#4}%
  \end{figure}}
\setlength{\textfloatsep}{21pt plus 7pt minus 2pt}  % 1,5 righe
\setlength{\floatsep}{14pt plus 2pt minus 2pt}
\setlength{\intextsep}{14pt plus 2pt minus 2pt}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}

% ==================================================================
% 15. PAGINE DI APERTURA (occhietto, frontespizio, colophon, dedica)
% ==================================================================
% Tutte le posizioni verticali derivano dalla sezione aurea
% dell'altezza della pagina: 0,382 · H e 0,618 · H.
\newcommand{\sl@pagina}[1]{%
  \thispagestyle{empty}%
  \begin{tikzpicture}[remember picture, overlay]#1\end{tikzpicture}%
  \null\newpage}

\newcommand{\occhietto}{%
  \cleardoublepage
  \sl@pagina{%
    \node[anchor=base, align=center, font=\Large\itshape]
      at ($(current page.north)!0.382!(current page.south)$)
      {\sl@titolo};}}

\newcommand{\frontespizio}{%
  \cleardoublepage
  \sl@pagina{%
    \node[anchor=base, font=\normalsize\scshape]
      at ($(current page.north)!0.16!(current page.south)$)
      {\spaziato[150]{\MakeLowercase{\sl@autore}}};
    \node[anchor=base, align=center, font=\Huge\itshape,
          text width=0.8\paperwidth]
      at ($(current page.north)!0.382!(current page.south)$)
      {\sl@titolo};
    \node[anchor=north, align=center, font=\normalsize\itshape,
          text width=0.618\paperwidth]
      at ($(current page.north)!0.382!(current page.south)+(0,-1.6em)$)
      {\sl@sottotitolo};
    \node[anchor=center]
      at ($(current page.north)!0.618!(current page.south)$)
      {\spiraleaurea[2.6cm]};
    \node[anchor=base, align=center, font=\small\scshape]
      at ($(current page.north)!0.88!(current page.south)$)
      {\spaziato[150]{\MakeLowercase{\sl@editore}}\\[2pt]
       {\footnotesize\normalfont\sl@luogo\ \sl@anno}};}}

\newcommand{\colophon}[1][]{%
  \thispagestyle{empty}%
  \null\vfill
  {\footnotesize\raggedright\setlength{\parskip}{0.5\baselineskip}
   #1\par
   \textcopyright\ \sl@anno\ \sl@autore\par
   \ifx\sl@isbn\@empty\else ISBN \sl@isbn\par\fi
   \sl@edizione\par
   \vspace{\baselineskip}
   {\itshape Composto in EB Garamond con Lua\LaTeX.
    Formato 13 × 21 cm, gabbia e margini in sezione aurea.}\par}
  \newpage}

\newcommand{\dedica}[1]{%
  \cleardoublepage
  \sl@pagina{%
    \node[anchor=base, align=center, font=\itshape,
          text width=0.618\paperwidth]
      at ($(current page.north)!0.382!(current page.south)$) {#1};}}

% Epigrafe del libro su pagina a sé: \epigrafelibro{testo}{fonte}
\newcommand{\epigrafelibro}[2]{%
  \cleardoublepage
  \sl@pagina{%
    \node[anchor=north, align=center, text width=0.618\paperwidth]
      at ($(current page.north)!0.382!(current page.south)$)
      {{\large\itshape #1}\\[\baselineskip]
       {\small\scshape — #2}};}}

% Pagina finale con emblema
\newcommand{\finis}{%
  \clearpage
  \sl@pagina{%
    \node[anchor=center]
      at ($(current page.north)!0.382!(current page.south)$)
      {\ornamento[1.2cm]{94}};}}

\endinput
