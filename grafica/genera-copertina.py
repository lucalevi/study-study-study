#!/usr/bin/env python3
"""Copertina KDP «Studiare per la vita» — fronte, dorso, quarta, con spirale aurea.

Uso:  FONTS_DIR=/percorso/ai/woff2 python3 genera_copertina.py [cartella_output]
Richiede: python3, playwright (chromium), pypdf. Cambia PAGES se il libro cambia numero di pagine:
il dorso (e la larghezza totale) si ricalcolano da soli.
"""
import itertools, math, sys, pathlib, asyncio

OUT = pathlib.Path(sys.argv[1]) if len(sys.argv) > 1 else pathlib.Path("cover")
OUT.mkdir(parents=True, exist_ok=True)
import os
# cartella con i file .woff2 di EB Garamond (npm i @fontsource/eb-garamond -> node_modules/@fontsource/eb-garamond/files)
FONTS = pathlib.Path(os.environ.get("FONTS_DIR", "node_modules/@fontsource/eb-garamond/files")).resolve()

# ---------------- misure KDP (carta bianca, 558 pagine, 13 x 21 cm) ----------------
IN = 25.4
PAGES = 558
TRIM_W, TRIM_H = 130.0, 210.0
BLEED = 0.125 * IN                      # 3,175 mm
SPINE = PAGES * 0.002252 * IN           # carta bianca: 31,92 mm
W = 2 * TRIM_W + SPINE + 2 * BLEED
H = TRIM_H + 2 * BLEED
BACK_X = BLEED                          # inizio quarta (trim)
SPINE_X = BLEED + TRIM_W
FRONT_X = SPINE_X + SPINE
print(f"dorso {SPINE:.3f} mm  larghezza {W:.3f} mm ({W/IN:.4f} in)  altezza {H:.3f} mm ({H/IN:.4f} in)")

# ---------------- palette bordeaux ----------------
BASE = "#591425"
CREAM = "#EFE4CC"
GOLD = "#CDA866"
GOLD_DIM = "#A8854A"
SHADES = {"13": "#591425", "8": "#6A1B2E", "5": "#521122", "3": "#7A2539", "2": "#661A2C",
          "1a": "#8A2D43", "1b": "#4A0F1E"}

# ---------------- rettangolo aureo 13 x 21 (unità = cm) ----------------
SQ = [  # (nome, x, y, lato)
    ("13", 0, 0, 13), ("8", 0, 13, 8), ("5", 8, 16, 5), ("3", 10, 13, 3),
    ("2", 8, 13, 2), ("1a", 8, 15, 1), ("1b", 9, 15, 1)]
CHAIN = ["1b", "1a", "2", "3", "5", "8", "13"]   # dall'occhio verso l'esterno
sqd = {n: (x, y, s) for n, x, y, s in SQ}


def corners(x, y, s):
    return [(x, y), (x + s, y), (x + s, y + s), (x, y + s)]


def arcs(n):
    x, y, s = sqd[n]
    res = []
    for c in corners(x, y, s):
        adj = [p for p in corners(x, y, s)
               if abs(math.dist(p, c) - s) < 1e-9]
        res.append((c, adj[0], adj[1]))
    return res


def find_chain():
    for combo in itertools.product(*[arcs(n) for n in CHAIN]):
        ok = True
        joins = []
        for a, b in zip(combo, combo[1:]):
            common = {a[1], a[2]} & {b[1], b[2]}
            if len(common) != 1:
                ok = False
                break
            j = next(iter(common))
            # continuità della tangente: centri e punto di giunzione allineati
            cr = ((a[0][0] - j[0]) * (b[0][1] - j[1]) - (a[0][1] - j[1]) * (b[0][0] - j[0]))
            if abs(cr) > 1e-9:
                ok = False
                break
            joins.append(j)
        if ok:
            return combo, joins
    raise SystemExit("nessuna catena")


combo, joins = find_chain()
# percorso orientato: dall'occhio verso l'esterno
path_pts = []
for i, (c, p, q) in enumerate(combo):
    if i < len(joins):
        start = p if q == joins[i] else q
        end = joins[i]
        # l'inizio dell'arco i deve coincidere con la giunzione i-1
        if i > 0:
            start = joins[i - 1]
            end = q if p == start else p
    else:
        start = joins[i - 1]
        end = q if p == start else p
    path_pts.append((c, start, end))


def spiral_path(scale, ox, oy, start=0, stop=None):
    d = ""
    for i, (c, a, b) in enumerate(path_pts):
        if i < start or (stop is not None and i >= stop):
            continue
        r = math.dist(c, a) * scale
        ax, ay = ox + a[0] * scale, oy + a[1] * scale
        bx, by = ox + b[0] * scale, oy + b[1] * scale
        cr = (a[0] - c[0]) * (b[1] - c[1]) - (a[1] - c[1]) * (b[0] - c[0])
        sweep = 1 if cr > 0 else 0
        if i == start:
            d += f"M{ax:.3f},{ay:.3f} "
        d += f"A{r:.3f},{r:.3f} 0 0 {sweep} {bx:.3f},{by:.3f} "
    return d


# ---------------- elementi della fronte (coordinate locali in mm, origine = angolo del trim) ----------------
U = 10.0  # 1 cm = 10 mm
front = []
for n, x, y, s in SQ:
    x0, y0, x1, y1 = x*U, y*U, (x+s)*U, (y+s)*U
    if y == 0: y0 -= BLEED
    if y + s == 21: y1 += BLEED
    if x + s == 13: x1 += BLEED
    front.append(f'<rect x="{x0}" y="{y0}" width="{x1-x0}" height="{y1-y0}" fill="{SHADES[n]}"/>')
for n, x, y, s in SQ:
    x0, y0, x1, y1 = x*U, y*U, (x+s)*U, (y+s)*U
    edges = [((x0, y0), (x1, y0)), ((x1, y0), (x1, y1)), ((x1, y1), (x0, y1)), ((x0, y1), (x0, y0))]
    for (ax_, ay_), (bx_, by_) in edges:
        outer = (ax_ == bx_ and ax_ in (0, TRIM_W)) or (ay_ == by_ and ay_ in (0, TRIM_H))
        if not outer:
            front.append(f'<line x1="{ax_}" y1="{ay_}" x2="{bx_}" y2="{by_}" stroke="{GOLD_DIM}" stroke-width="0.25"/>')
# spirale: dorata dall'occhio fino al quadrato da 8; nel quadrato grande svanisce in un tono su tono
front.append(f'<path d="{spiral_path(U, 0, 0, 0, 6)}" fill="none" stroke="{GOLD}" stroke-width="0.9" stroke-linecap="round"/>')
front.append(f'<path d="{spiral_path(U, 0, 0, 6, 7)}" fill="none" stroke="url(#fade)" stroke-width="0.7" stroke-linecap="round"/>')

# testi fronte
cx = TRIM_W / 2
front.append(f'<text x="{cx}" y="25" class="au">lucalevi</text>')
front.append(f'<line x1="{cx-9}" x2="{cx+9}" y1="32" y2="32" stroke="{GOLD}" stroke-width="0.35"/>')
front.append(f'<text x="{cx}" y="62" class="ti1">Studiare</text>')
front.append(f'<text x="{cx}" y="84" class="ti2">per la vita</text>')
front.append(f'<line x1="{cx-14}" x2="{cx-3}" y1="96" y2="96" stroke="{GOLD}" stroke-width="0.35"/>')
front.append(f'<line x1="{cx+3}" x2="{cx+14}" y1="96" y2="96" stroke="{GOLD}" stroke-width="0.35"/>')
front.append(f'<path d="M{cx} 93.4 L{cx+1.6} 96 L{cx} 98.6 L{cx-1.6} 96 Z" fill="{GOLD}"/>')
front.append(f'<text x="{cx}" y="109" class="sub">Come si impara davvero, e perché</text>')
front.append(f'<text x="{cx}" y="122" class="url">www.lucalevi.com</text>')

# ---------------- dorso ----------------
sp_cx = SPINE_X + SPINE / 2
spine = []
spine.append(f'<g transform="translate({sp_cx:.3f},0) rotate(90)">'
             f'<text x="86" y="3.6" class="sp1">Studiare <tspan class="sp2">per la vita</tspan></text>'
             f'<text x="{H - BLEED - 37:.3f}" y="2.3" class="spa">lucalevi</text></g>')
spine.append(f'<line x1="{SPINE_X+7}" x2="{SPINE_X+SPINE-7}" y1="{BLEED+16}" y2="{BLEED+16}" stroke="{GOLD}" stroke-width="0.35"/>')
spine.append(f'<line x1="{SPINE_X+7}" x2="{SPINE_X+SPINE-7}" y1="{H-BLEED-16}" y2="{H-BLEED-16}" stroke="{GOLD}" stroke-width="0.35"/>')

# ---------------- quarta di copertina ----------------
back = []
bx0 = 17.0
bw = TRIM_W - 2 * bx0
cx = TRIM_W / 2
# emblema: piccola spirale aurea in cima
em_sc = 0.9
em_ox, em_oy = cx - 13 * em_sc / 2, 11.0
for n_, x_, y_, s_ in SQ:
    back.append(f'<rect x="{em_ox + x_*em_sc:.3f}" y="{em_oy + y_*em_sc:.3f}" width="{s_*em_sc:.3f}" height="{s_*em_sc:.3f}" fill="none" stroke="{GOLD_DIM}" stroke-width="0.2"/>')
back.append(f'<path d="{spiral_path(em_sc, em_ox, em_oy)}" fill="none" stroke="{GOLD}" stroke-width="0.5" stroke-linecap="round"/>')
back.append(f'<text x="{cx}" y="42" class="motto">Non scholae sed vitae discimus</text>')
back.append(f'<line x1="{cx-9}" x2="{cx+9}" y1="48" y2="48" stroke="{GOLD}" stroke-width="0.35"/>')
back.append(f'<line x1="{bx0}" x2="{bx0+30}" y1="149" y2="149" stroke="{GOLD}" stroke-width="0.35"/>')
back.append(f'<text x="{bx0}" y="195.5" class="small">Edizione digitale gratuita su</text>')
back.append(f'<text x="{bx0}" y="200.5" class="small">www.lucalevi.com</text>')

html_back = f'''
<div class="bk" style="left:{BACK_X+bx0:.3f}mm; top:{BLEED+54:.3f}mm; width:{bw:.3f}mm;">
  <p class="lead">Che senso ha studiare, se poi si dimentica tutto?</p>
  <p>Si studia per la vita, non per l’esame: eppure gran parte di ciò che si studia svanisce poco dopo la prova.
  Questo libro spiega perché, e che cosa fare. Racconta come funziona la memoria e mostra quali strategie di studio
  hanno davvero prove solide &mdash; richiamare a memoria, distribuire lo studio nel tempo, alternare gli argomenti,
  spiegare e collegare &mdash; e quali sono invece miti da lasciar cadere, dagli stili di apprendimento alla lettura veloce.</p>
  <p>Pensato per l’università italiana, parla a chi studia e a chi insegna: esami, sessioni, studenti con DSA,
  intelligenza artificiale. Ogni capitolo si apre con un’epigrafe dei classici, da Platone a Seneca, e ogni
  affermazione poggia su studi citati con precisione. Sei parti, ventisei capitoli, tre appendici:
  un metodo, non dei trucchi.</p>
</div>
<div class="bk cred" style="left:{BACK_X+bx0:.3f}mm; top:{BLEED+153:.3f}mm; width:{bw:.3f}mm;">
  <p>Quest’opera è stata ideata da <b>lucalevi</b> ed eseguita con intelligenza artificiale da
  <b>Claude Opus 5/5.5</b> di Anthropic. Ogni errore è imputabile al curatore, e ogni merito va al modello di AI.</p>
</div>
'''

svg = f'''<svg xmlns="http://www.w3.org/2000/svg" width="{W:.3f}mm" height="{H:.3f}mm" viewBox="0 0 {W:.3f} {H:.3f}">
<rect width="{W:.3f}" height="{H:.3f}" fill="{BASE}"/>
<g transform="translate({FRONT_X:.3f},{BLEED})">
  {''.join(front)}
</g>
<g transform="translate({BACK_X:.3f},{BLEED})">{''.join(back)}</g>
{''.join(spine)}
<defs><linearGradient id="fade" gradientUnits="userSpaceOnUse" x1="0" y1="{13*U:.1f}" x2="0" y2="{13*U-38:.1f}"><stop offset="0" stop-color="{GOLD}"/><stop offset="1" stop-color="#7C3043"/></linearGradient></defs>
</svg>'''

# estensione di sfondo oltre il trim a destra / sopra / sotto per la fronte (abbondanza)
bleed_fix = f'''
<rect x="{FRONT_X+TRIM_W:.3f}" y="0" width="{BLEED:.3f}" height="{H:.3f}" fill="{SHADES['13']}"/>
'''

css = f'''
@font-face {{ font-family:"EB Garamond"; font-weight:400; font-style:normal; src:url("file://{FONTS}/eb-garamond-latin-400-normal.woff2"); }}
@font-face {{ font-family:"EB Garamond"; font-weight:400; font-style:italic; src:url("file://{FONTS}/eb-garamond-latin-400-italic.woff2"); }}
@font-face {{ font-family:"EB Garamond"; font-weight:500; font-style:normal; src:url("file://{FONTS}/eb-garamond-latin-500-normal.woff2"); }}
@font-face {{ font-family:"EB Garamond"; font-weight:500; font-style:italic; src:url("file://{FONTS}/eb-garamond-latin-500-italic.woff2"); }}
@font-face {{ font-family:"EB Garamond"; font-weight:600; font-style:normal; src:url("file://{FONTS}/eb-garamond-latin-600-normal.woff2"); }}
@page {{ size:{W:.3f}mm {H:.3f}mm; margin:0; }}
html,body {{ margin:0; padding:0; background:{BASE}; }}
svg {{ display:block; position:absolute; left:0; top:0; }}
.pg {{ position:relative; width:{W:.3f}mm; height:{H:.3f}mm; overflow:hidden; }}
.bk {{ position:absolute; }}
text {{ font-family:"EB Garamond",serif; fill:{CREAM}; text-anchor:middle; }}
.au {{ font-size:7.2px; letter-spacing:1.6px; fill:{GOLD}; font-weight:500; }}
.ti1 {{ font-size:25px; font-weight:500; letter-spacing:0.6px; }}
.ti2 {{ font-size:19px; font-style:italic; font-weight:400; letter-spacing:0.3px; }}
.sub {{ font-size:5.6px; font-style:italic; fill:{GOLD}; letter-spacing:0.2px; }}
.url {{ font-size:4.4px; letter-spacing:1px; fill:{GOLD}; }}
.motto {{ font-size:5.2px; font-style:italic; fill:{GOLD}; letter-spacing:0.3px; }}
.small {{ font-size:3.5px; fill:{CREAM}; text-anchor:start; letter-spacing:0.15px; }}
.sp1 {{ font-size:10.4px; font-weight:500; text-anchor:middle; letter-spacing:0.5px; }}
.sp2 {{ font-style:italic; font-weight:400; }}
.spa {{ font-size:6.4px; fill:{GOLD}; text-anchor:middle; letter-spacing:1.3px; font-weight:500; }}
.bk {{ font-family:"EB Garamond",serif; color:{CREAM}; font-size:11pt; line-height:1.34; text-align:left; }}
.bk p {{ margin:0 0 3.4mm 0; }}
.bk .lead {{ font-style:italic; font-size:15pt; line-height:1.25; color:{GOLD}; margin-bottom:5mm; }}
.bk.cred {{ font-size:10pt; }}
.bk b {{ font-weight:600; color:#FFF6E0; }}
'''

html = f'<!doctype html><html lang="it"><head><meta charset="utf-8"><style>{css}</style></head><body><div class="pg">{svg}{html_back}</div></body></html>'
(OUT / "cover.html").write_text(html, encoding="utf-8")

from playwright.sync_api import sync_playwright
with sync_playwright() as p:
    b = p.chromium.launch(args=["--allow-file-access-from-files"])
    pg = b.new_page()
    pg.goto(f"file://{(OUT/'cover.html').resolve()}")
    pg.wait_for_timeout(600)
    pg.pdf(path=str(OUT / "copertina.pdf"), width=f"{W:.3f}mm", height=f"{H:.3f}mm",
           print_background=True, margin=dict(top="0", right="0", bottom="0", left="0"),
           prefer_css_page_size=True)
    b.close()

from pypdf import PdfReader, PdfWriter
from pypdf.generic import RectangleObject
r = PdfReader(str(OUT / "copertina.pdf"))
w = PdfWriter()
pg_ = r.pages[0]
tw, th = W / IN * 72, H / IN * 72
pg_.scale_to(tw, th)
w.add_page(pg_)
w.add_metadata({"/Title": "Studiare per la vita — copertina KDP (558 pagine, carta bianca, 13 x 21 cm)",
                "/Author": "lucalevi", "/Subject": "Copertina completa: quarta, dorso, prima"})
with open(OUT / "copertina_kdp.pdf", "wb") as f:
    w.write(f)
print("ok", tw, th)
