+++
date = '2026-03-21T21:21:01+01:00'
title = 'Test-Driven Development'
weight = 2
draft = true
+++

## Teil 1: Brüche kürzen

```math
$$
\frac{18}{27} = \frac{2 \cdot 9}{3 \cdot 9} = \frac{2}{3}
$$
```

### Aufgabe A: Grösster Gemeinsamer Teiler (Brute-Force-Verfahren)

`gcdBruteForce(a: number, b: number)`

### Aufgabe B: Bruch kürzen

`Fraction.cancel()`

### Aufgabe C: Grösster Gemeinsamer Teiler (Euklid-Algorithmus)

`gcdEuclid(a: number, b: number)`

Idee: Table-Driven Test (Testdaten wiederverwenden)

Refactoring, Tests müssen immer noch funktionieren

### Aufgabe D: Automatische Kürzung

Idee: nach jeder Operation bzw. im Konstruktor wird eine Kürzung durchgeführt

## Teil 2: Umschliessende Objekte

`Shape.encompasses(other: Shape): bool`

![Rechteck und Kreis überlappen sich nicht](/images/geometry/rect-circ-dist.svg)

![Rechteck und Kreis sind konzentrisch und schneiden sich](/images/geometry/rect-circ-conc.svg)

### Aufgabe X: Rechteck beinhaltet Kreis

`Rectangle.encompasses(circle: Circle): bool`

![Das Rechteck beinhaltet den Kreis komplett](/images/geometry/rect-circ-with.svg)

### Aufgabe Y: Kreis beinhaltet Rechteck

`Circle.encompasses(rect: Rectangle): bool`

![Der Kreis beinhaltet das Rechteck komplett](/images/geometry/circ-rect-with.svg)