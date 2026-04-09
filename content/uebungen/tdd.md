+++
date = '2026-03-21T21:21:01+01:00'
title = 'Test-Driven Development'
weight = 2
+++

Diese Übung basiert auf dem bereits bekannten Repository
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

Prüfe dabei für den Zahlenbereich von $min(\frac{a}{2},\frac{b}{2}) \geq i \geq 1$, ob $i$ die Zahlen $a$ _und_ $b$ restlos teilt (`a % i == 0` bzw. `b % i == 0`). Das erste gefundene Ergebnis ist der ggT.

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

Der Vorteil von _Table-Driven Test_ ist, dass ein zusätzlicher Testfall nur einen weiteren Eintrag in der Testtabelle benötigt. Der Nachteil ist, dass der Testcode etwas komplizierter wird.

### Aufgabe 4: Automatische Kürzung

Die Kürzung des Bruchs kann bereits nach jeder Rechenoperation erfolgen oder auch im Konstruktor bzw. beim Parsen (`Fraction.parse`) erfolgen.

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

**Hinweis**: Implementiere eine entsprechende Dummy-Methode für die Klassen `Rectangle` und `Circle`, damit es keine Kompilierfehler gibt.

Bearbeite anschliessend die folgenden Aufgaben zur Implementierung dieser Methode, wobei du dich ans TDD-Vorgehen hältst.

### Aufgabe 5: Hilfsmethoden für Kreispunkte

Betrachte die folgende Abbildung eines Kreises mit dem Mittelpunkt $M$ auf den Koordinaten $(5,5)$ und dem Radius $r=5$:

![Der Kreis mit dem Mittelpunkt, dem Radius und den Punkten für die Himmelsrichtungen](/images/geometry/circ-only.svg)

Vom Kreis (`Circle`) ist zunächst nur dessen Mittelpunkt $M$ (`center: Point2D`) und Radius $r$ (`radius: number`) bekannt. Erweitere die Klasse `Circle` um die folgenden Methoden:

- `north(): Point2D`
- `east(): Point2D`
- `south(): Point2D`
- `west(): Point2D`

Diese sollen anhand des Mittelpunkts und Radius die entsprechenden Punkte $N$, $E$, $S$ und $W$ ermitteln und zurückgeben.

**Hinweis**: Die Punkte $N$ und $S$ haben die gleiche x-Koordinate wie $M$, die Punkte $E$ und $W$ die gleiche y-Koordinate wie $M$. Die y-Koordinaten von $N$ und $S$ sind entsprechen der y-Koordinate von $M$ um den Kreisradius $r$ erhöht oder verringert: $N_y = M_y + r$ bzw. $S_y = M_y - r$. Für die x-Koordinaten von $W$ und $E$ erfolgt die Rechnung analog dazu.

### Aufgabe 6: Hilfsmethoden für Punkteinschluss

Erweitere die Klasse `Point2D` um folgende Methoden:

- `isBetweenX(p: Point2D, q: Point2D): boolean`: prüft, ob die Punkte $p$ und $q$ den Punkt auf der x-Achse einschlissen, sodass gilt $p.x < x < q.x$
- `isBetweenY(p: Point2D, q: Point2D): boolean`: prüft, ob die Punkte $p$ und $q$ den Punkt auf der y-Achse einschlissen, sodass gilt $p.y < y < q.y$

**Hinweis**: Als Testfälle kannst du die Methode auf dem Kreismittelpunkt $M$ mit den Punkten $N$, $E$, $S$ und $W$ verwenden, wobei $M$ auf der x-Achse zwischen $W$ und $E$ bzw. auf der y-Achse zwischen $N$ und $S$ liegt. Schreibe auch Negativtests dazu.

### Aufgabe 7: Rechteck beinhaltet Kreis

Implementiere die Methode `Rectangle.encompasses(other: Shape): boolean` gemäss TDD-Vorgehen für Kreise (`other instanceof Circle`).

Betrachte hierzu noch einmal die folgende Abbildung:

![Das Rechteck beinhaltet den Kreis komplett](/images/geometry/rect-circ-with.svg)

Das Rechteck umschliesst den Kreis komplett, wenn sowohl dessen Mittelpunkt als auch die _Extrempunkte_ $N$, $E$, $S$ und $W$ (für _North_, _East_, _South_, _West_) innerhalb des Rechtecks legen. Betrachte hierzu die x- und y-Achsen separat:

- die x-Koordinate vom _Kreispunkt_ $K$ muss zwischen den x-Koordinaten der Punkte $A$ und $B$ liegen: $A_x < K_x < B_x$
- die y-Koordinate vom _Kreispunkt_ $K$ muss zwischen den y-Koordinaten der Punkte $A$ und $D$ liegen: $A_y < K_y < D_y$

Als _Kreispunkte_ $K$ müssen die konkreten Punkte $M$, $N$, $E$, $S$ und $W$ geprüft werden.

**Hinweis**: Verwende hierzu die Hilfsmethoden der vorherigen beiden Aufgaben.

### Aufgabe 8: Kreis beinhaltet Rechteck

Implementiere die Methode `Circle.encompasses(other: Shape): boolean` gemäss TDD-Vorgehen für Rechtecke (`other instanceof Rectangle`).

Betrachte hierzu noch einmal die folgende Abbildung:

![Der Kreis beinhaltet das Rechteck komplett](/images/geometry/circ-rect-with.svg)

Der Kreis umschliesst das Rechteck komplett, wenn die Punkte $A$, $B$, $C$, $D$ alle innerhalb des Kreises liegen. Dies ist der Fall, wenn die Distanz zwischen $M$ und dem jeweiligen Punkt kleiner ist als der Radius.

**Hinweis**: Die Distanz zwischen zwei Punkten kann über die Methode `Point2D.distanceTo(other: Point2D)` ermittelt werden.
