+++
date = '2026-04-26T14:03:18+02:00'
title = 'Refactoring'
weight = 5
+++

## Option 1: Tanzverbot-Diät

Erstelle für diese Übung einen Fork vom Repository [m426-2026/tanzverbot-diet](https://github.com/m426-2026/tanzverbot-diet) und klone diesen.

Die [Tanzverbot-Diät](https://www.youtube.com/watch?v=2LvdqYB0E74) zielt auf das schnelle Erreichen eines höheren Kampfgewichts ab und erfordert neben der Vermeidung jeglicher körperlicher Aktivität folgende tägliche Kalorienaufnahme:

| Nahrungsmittel                  | Kalorien pro Portion | Anzahl Portionen |
| ------------------------------- | -------------------: | ---------------: |
| Kellogg's Tresor                |                  137 |                4 |
| Weihenstephan Haltbare Milch    |                   64 |                8 |
| Mühle Frikadellen               |                  271 |                4 |
| Volvic Tee                      |                   40 |               12 |
| Neuburger lockerer Sahnepudding |                  297 |                1 |
| Lagnese Viennetta               |                  125 |                6 |
| Schöller 10ForTwo               |                  482 |                2 |
| Ristorante Pizza Salame         |                  835 |                2 |
| Schweppes Ginger Ale            |                   37 |               25 |
| Mini Babybel                    |                   59 |               20 |

![Von nichts kommt nichts!](/images/refactoring/tanzverbot.png)

### Berechnungen

Im vorliegenden Beispiel geht es um die folgenden Berechnungen:

1. Berechnung der Gesamtzahl der täglich aufgenommenen Kalorien anhand obenstehender Tabelle (Summe des Produkts aus _Kalorien pro Portion_ und _Anzahl Portionen_).
1. Berechnung des täglichen Kalorienbedarfs (Grundumsatz) anhand von Körpergewicht, Körpergrösse und Alter gemäss der _Harris-Benedict_-Formel:
   - **Mann**: 66.47 + (13.7 - Körpergewicht in kg) + (5.003 - Körpergrösse in cm) - (6.75 \* Alter in Jahren)
   - **Frau**: 655.1 + (9.563 - Körpergewicht in kg) + (1.85 - Körpergrose in cm) - (4.676 \* Alter in Jahren)
1. Berechnung der überschüssigen Kalorien pro Tag (Differenz aus _aufgenommenen Kalorien_ und _Grundumsatz_) und der Anzahl Tage, die man sich an die Tanzverbot-Diät halten muss, um auf ein gewünschtes Kampfgewicht zu kommen.
   - Für ein Kilo Fettzunahme sind 9000 überschüssig aufgenommene Kalorien notwendig.

### Aufgabe

Nimm ein selbständiges Refactoring des Codes in der Datei `src/tanzverbot-diet.ts` vor. Gehe dazu folgendermassen vor:

1. Lies den Code in der Datei `src/tanzverbot_diet.ts` komplett durch und halte dabei Ausschau nach _Code Smells_, welche du dir zwischenzeitlich als `// TODO`-Kommentare direkt im Code notieren kannst.
1. Schreibe in der Datei `src/tanzverbot_diet_test.ts` einen Testfall mithilfe der Testdaten, die du selber erarbeitest. Führe diesen Testfall aus und erstelle einen Commit, sobald dieser erfolgreich durchläuft.
1. Arbeite nun die einzelnen _Code Smells_ gemäss Refactoring-Vorgehen ab. Führe den Testfall – bzw. alle Testfälle, denn evtl. möchtest du im Zuge des Refactorings weitere Testfälle schreiben – nach jeder Änderung aus.
1. Machen nach jeder erfolgreichen Anpassung einen Commit. Wenn du das Gefühl hast, dass eine angefangene Änderung in eine Sackgasse führt, dann mache deine Änderungen mit `git checkout` wieder rückgängig.

#### Erweiterung 1: Grundumsatz auf Durchschnittsgewicht bezogen

Für den täglichen Kalorienbedarf (Grundumsatz) wird vom Anfangsgewicht ausgegangen. Sinnvoller wäre die Annahme eines Durchschnittsgewichts bei linearer Gewichtszunahme. Passe den Unittest und die Logik so an, dass der durchschnittliche tägliche Kalorienbedarf von Ausgangs- und Zielgewicht verwendet wird.

Dies ist kein Refactoring im strengen Sinn, da das von aussen wahrnehmbare Verhalten der Software dabei angepasst wird. Durch das Refactoring aus der Hauptaufgabe wurde jedoch die Anpassbarkeit und Erweiterbarkeit der Software erleichtert, was das eigentliche Ziel des Refactorings ist.

#### Erweiterung 2: Mehr Flexibilität für verbesserte Diät

Wie müsste der Code angepasst werden, damit auch die [verbesserte Version der Tanzverbot-Diät](https://www.youtube.com/watch?v=7xDmgGV3gS0) unterstützt werden könnte? (Die Tabelle mit den Kalorien und Portionen müsste austauschbar gemacht werden.)

Schreiben die Informationen aus dem Video heraus und erweiter die Software, damit man die Gewichtszunahme auch nach der 2018er-Version der Tanzverbot-Diät berechnen kann!

## Option 2: Einheitsrechner

Erstelle für diese Übung einen Fork vom Repository [m426-2026/unit-converter](https://github.com/m426-2026/unit-converter) und klone diesen.

Das bei uns gebräuchliche [metrische System](https://de.wikipedia.org/wiki/Metrisches_Einheitensystem) verwendet Masseinheiten, die sich jeweils um den Faktor zehn voneinander unterscheiden. (Beispiel: ein Meter sind zehn Dezimeter; ein Dezimenter sind zehn Zentimeter; ein Zentimeter sind zehn Millimeter.)

Das [imperiale System](https://de.wikipedia.org/wiki/Imperiales_Einheitensystem) hingegen, das noch in den USA gebräuchlich ist, verwendet jedoch andere Umrechnungsregeln. Die Umrechnung von einer Einheit (z.B. Meile) in eine andere (z.B. Yard) ist daher nicht trivial und erfordert eine Umrechentabelle für diese Einheiten.

### Aufgabe

In der Datei `src/conversion.ts` ist die Umrechnung von verschiedenen imperialen Längenmassen in Meter implementiert (Funktion `convertToMeters`). Hierzu kommt die `conversionTable` zum Einsatz.

Der Code ist aber recht repetitiv. Möchte man eine weitere Einheit, z.B. _Furlong_ (entspricht 22 Yards) unterstützen, muss sehr viel Code dupliziert werden. Das ginge sicherlich einfacher.

Nehme ein Refactoring vor, um die Implementierung der Funktion `convertToMeters` besser erweiterbar zu machen. Kriterium: Kann eine weitere Längeneinheit unterstützt werden, ohne den Code der Funktion `convertToMeters` anzupassen, ist das Refactoring geglückt!

Schreibe hierzu Testfälle in `src/conversion_test.ts`. Ein Test ist bereits vorgegeben.

Um das Refactoring zu überprüfen, füge einen neuen Testfall für das Längenmass _Furlong_ (entspricht 22 Yards) ein. Gehe dabei gemäss TDD vor.

