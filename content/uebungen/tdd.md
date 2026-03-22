+++
date = '2026-03-21T21:21:01+01:00'
title = 'Test-Driven Development'
weight = 2
+++

Dies Übung basiert auf dem bereits bekannten Repository
[m426-2026/math](https://github.com/m426-2026/math) bzw. auf deinem Fork davon.

Nachdem du in der [letzten Übung](/uebungen/unittesting) Testfälle für den bestehenden Code geschrieben hast, soll die Funktionalität in dieser Übung erweitert werden.

Halte dich dabei an das [TDD-Vorgehen](/texte/test-driven-development) und **verwende keine KI-Werkzeuge zum Generieren von Code**! Hier geht es um das Einüben der Arbeitstechnik.

## Teil 1: Brüche kürzen

Brüche können _gekürzt_ werden, indem man Zähler und Nenner durch den gleichen Faktor teilt:

```math
$$
\frac{18}{27} = \frac{2 \cdot 9}{3 \cdot 9} = \frac{2}{3}
$$
```

Den kleinstmöglichen Zähler und Nenner erhält man durch deren Division mit ihrem _grössten gemeinsamen Teiler_ (ggT). Zum Kürzen eines Bruches muss also zunächst der ggT von Zähler und Nenner ermittelt werden.

Erstelle für die folgenden beiden Aufgaben zwei neue Dateien `gcd.ts` und `gcd_test.ts`.

### Aufgabe 1: Grösster Gemeinsamer Teiler (Brute Force)

Schreibe eine Funktion `gcdBruteForce(a: number, b: number): number`. Diese soll den ggT von `a` und `b` durch systematisches Auspropieren ermitteln.

Prüfe dabei für den Zahlenbereich von $min(\frac{a}{2},\frac{b}{2}) \geq i \geq 1$, ob $i$ $a$ _und_ $b% restlos teilt (`a % i == 0 && b % 1 == 0`). Das erste gefundene Ergebnis ist der ggT.

**Hinweis**: Schreibe zuerst triviale Tests, z.B. für `ggT(1, 1)`, bevor du die eigentliche Logik implementierst.

### Aufgabe 2: Bruch kürzen

Schreibe eine Methode `Fraction.cancel()`, welche den Bruch kürzt. Wenn du die [Zusatzaufgabe](/uebungen/unittesting/#zusatzaufgabe-anpassung-der-fraction-api) von letzter Woche gelöst hast, soll diese Methode einen gekürzten Bruch zurückgeben. Andernfalls soll sie den bestehenden Bruch bzw. die Eigenschaften `numerator` und `denominator` anpassen.

**Hinweis**: Schreibe wiederum zuerst triviale Tests, z.B. für den Bruch $\frac{1}{1}$ mit $ggT(1,1)=1$. Verwende für die Implementierung die vorher geschriebene Funktion `gcdBruteForce`.

### Aufgabe 3: Grösster Gemeinsamer Teiler (Euklid-Algorithmus)

Der Brute-Force-Algorithmus aus Aufgabe 1 ist weder effizient noch elegant. Ergänze `gcd.ts` um eine Funktion `gcdEuclid(a: number, b: number): number`, welche den _Algorithmus von Euklid_ umsetzt:

- Gegeben sind die Zahlen $a$ und $b$.
- Berechne $c$ als Ergebnis der Subtraktion der kleineren von der grösseren der beiden Zahlen $a$ und $b$: $c = max(a,b) - min(a,b)$
- Wiederhole den Algorithmus mit $a=min(a,b)$ und $b=c$, solange $a \neq b$.
- Sind die beiden Zahlen $a$ und $b$ gleich, ist der ggT gefunden.

**Hinweis**: Dieser Algorithmus lässt sich sehr elegant rekursiv implementieren.

Stelle sicher, dass die Funktion `gcdEuclid` die Testfälle für `gcdBruteForce` erfüllt. Anschliessend kannst du die Implementierung von `Fraction.cancel()` entsprechend umstellen. (Die Tests müssen weiterhin funktionieren!)

#### Variante: Table-Driven Tests

Du kannst die Testfälle in eine Datenstruktur im Testmodul `gcd_test.ts` auslagern, beispielsweise folgendermassen:

```typescript
const gcdTests = [
  { a: 1, b: 1, gcd: 1 },
  { a: 1, b: 2, gcd: 1 },
  { a: 2, b: 2, gcd: 2 },
  { a: 3, b: 4, gcd: 1 },
  { a: 6, b: 9, gcd: 3 },
  { a: 81, b: 36, gcd: 9 },
];
```

Diese arbeitest du dann in der Testfunktion folgendermassen ab:

```typescript
for (const { a, b, gcd } of gcdTests) {
  const actual = gcdEuclid(a, b);
  assertEquals(actual, gcd)
}
```

Dieses Muster bezeichnet man als _Table-Driven Tests_ (tabellengetriebene Tests). Es ist eine Alternative zum Muster _Arrange, Act, Assert_ bzw. _Given, When, Then_, das vor allem dann sinnvoll ist, wenn es sehr viele Testfälle mit der gleichen Struktur gibt. (Verschiedene Testframeworks unterstützen diese Art des Testens mit spezialisierten APIs.)

Der Vorteil von _Table-Driven Test_ ist, dass ein zusätzlicher Testfall nur einen weiteren Eintrag in die Testtabelle benötigt. Der Nachteil ist, dass der Testcode etwas komplizierter wird.

### Aufgabe 4: Automatische Kürzung

Die Kürzung des Bruches kann bereits nach jeder Rechenoperation erfolgen oder auch im Konstruktor bzw. beim Parsen (`Fraction.parse`) erfolgen.

Implementiere die automatische Kürzung von Brüchen. Halte dich dabei ans TDD-Vorgehen, indem du zuerst scheiternde Testfälle schreibst, welche ein gekürztes Ergebnis erwarten. Passe anschliessend die Implementierung von `Fraction` an, damit die Testfälle (wieder) durchlaufen.

## Teil 2: Umschliessende Objekte

Die Schnittstelle `Shape` soll um eine Operation namens `encompasses` erweitert werden. Diese soll überprüfen, ob ein geometrisches Objekt ein anderes komplett enthält bzw. umschliesst.

Die folgende Abbildung zeigt ein Rechteck und einen Kreis, die sich nicht einmal berühren und darum auch nicht umschliessen:

![Rechteck und Kreis überlappen sich nicht](/images/geometry/rect-circ-dist.svg)

In der nächsten Abbildung liegt zwar der Kreismittelpunkt innerhalb des Rechtecks, der Radius des Kreises reicht aber über das Rechteck hinaus:

![Rechteck und Kreis sind konzentrisch und schneiden sich](/images/geometry/rect-circ-conc.svg)

Ist der Radius kleiner, umfasst das Rechteck den Kreis komplett:

![Das Rechteck beinhaltet den Kreis komplett](/images/geometry/rect-circ-with.svg)

In der folgenden Abbildung ist die Situation umgedreht: Der Kreis enthält das Rechteck vollständig:

![Der Kreis beinhaltet das Rechteck komplett](/images/geometry/circ-rect-with.svg)

Erweitere in `geometry.ts` die Schnittstelle `Shape` um folgende Deklaration: `Shape.encompasses(other: Shape): boolean`. Diese Methode soll `true` zurückgeben, wenn das jeweilige Objekt das andere komplett umschliesst. Andernfalls soll `false` zurückgegeben werden.

Implementiere eine entsprechende Dummy-Methode für die Klassen `Rectangle` und `Circle`, damit es keine Kompilierfehler gibt.

### Aufgabe 5: Rechteck beinhaltet Kreis

Implementiere die Methode `Rectangle.encompasses(other: Shape): boolean` gemäss TDD-Vorgehen für Kreise (`other instanceof Circle`).

Betrachte hierzu noch einmal die folgende Abbildung:

![Das Rechteck beinhaltet den Kreis komplett](/images/geometry/rect-circ-with.svg)

Das Rechteck umschliesst den Kreis komplett, wenn sowohl dessen Mittelpunkt als auch die _Extrempunkte_ $N$, $E$, $S$ und $W$ (für _North_, _East_, _South_, _West_) innerhalb des Rechtecks legen. Betrachte hierzu die x- und y-Achsen separat:

- die x-Koordinate vom _Kreispunkt_ $K$ muss zwischen den x-Koordinaten der Punkte $A$ und $B$ liegen: $x_A < x_K < x_B$
- die y-Koordinate vom _Kreispunkt_ $K$ muss zwischen den y-Koordinaten der Punkte $A$ und $D$ liegen: $y_A < y_K < y_D$

Als _Kreispunkte_ $K$ müssen die konkreten Punkte $M$, $N$, $E$, $S$ und $W$ geprüft werden.
.
### Aufgabe 6: Kreis beinhaltet Rechteck

Implenentiere die Methode `Circle.encompasses(other: Shape): boolean` gemäss TDD-Vorgehen für Rechtecke (`other instanceof Rectangle`).

Betrachte hierzu noch einmal die folgende Abbildung:

![Der Kreis beinhaltet das Rechteck komplett](/images/geometry/circ-rect-with.svg)

Der Kreis umschliesst das Rechteck komplett, wenn die Punkte $A$, $B$, $C$, $D$ alle innerhalb des Kreises liegen. Dies ist der Fall, wenn die Distanz zwischen $M$ und dem jeweiligen Punkt kleiner ist als der Radius.

Die Distanz zwischen zwei Punkten kann über die Methode `Point2D.distanceTo(other: Point2D)` ermittelt werden.