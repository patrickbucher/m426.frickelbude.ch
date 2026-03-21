+++
date = '2026-03-14T22:01:35+01:00'
title = 'Unittesting'
weight = 1
+++

## Aufgabe 0: Vorbereitung

Erstelle einen Fork das Repositories [m426-2026/math](https://github.com/m426-2026/math) und klone diesen:

    git clone git@github.com:DEIN-BENUTZERNAME/math.git

Wechsle in das geklonte Verzeichnis:

    cd math

Führe das Beispielprogramm aus:

    deno demo.ts

Führe die bestehenden Unittests aus:

    deno test

Erstelle einen Bericht zur Testabdeckung:

    deno test --coverage

Dadurch wurde ein HTML-Bericht unter `coverage/html/index.html` erstellt. Öffne die Datei im Browser und verschaffe dir einen Überblick über die bestehende Testabdeckung pro Datei.

Lies dir den Code in den folgenden Dateien durch:

- `fraction.ts`: Implementierung von arithmetischen Operationen für die Bruchrechnung
- `fraction_test.ts`: Testfälle für die Bruchrechnung (unvollständig)
- `geometry.ts`: Implementierung von geometrischen Operationen von Punkten, Rechtecken und Kreisen
- `geometry_test.ts`: Testfälle für die geometrischen Figuren (unvollständig)

## Aufgabe 1: Testabdeckung erhöhen

Schreibe zusätzliche Testfälle für die Klassen in `fraction.ts` und `geometry.ts`.

Verwende hierzu **keine KI-Werkzeuge**, sondern erarbeite dir selber sinnvolle Testfälle!

Führe die Testfällen nach jeder Erweiterung aus und überprüfe die veränderte Testabdeckung. Es sollte möglich sein, auf 100% zu kommen!

## Aufgabe 2: Ausnahmebehandlung

Es ist möglich, Brüche mit einem Nenner von 0 zu definieren: `new Fraction(3, 0)` oder `Fraction.parse("3 / 0")`. Verhindere dies an passender Stelle, indem du eine entsprechende Exception bzw. einen `Error` wirfst. Ergänze die Testfälle entsprechend.

## Zusatzaufgabe: Anpassung der Fraction-API

Die Grundrechenarten (`add`, `subtract`, `multiply` und `divide`) funktionieren _destruktiv_, d.h. sie verändern das bestehende Objekt, wonach der vorherige Status verschwunden ist.

Sinnvoller wäre es, wenn diese Operationen jeweils einen neuen Bruch zurückgeben ohne denjenigen zu verändern, auf den die Operation angewendet worden ist.

Passe die Klasse `Fraction` entsprechend an. Korrigiere anschliessend die Unittests und das Demo-Programm `demo.ts` entsprechend.