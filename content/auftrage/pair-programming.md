+++
date = '2026-04-17T11:44:11+02:00'
title = 'Pair Programming'
weight = 1
+++

## Auftrag

Implementiert das Spiel _Knobelscheit_ gemäss untenstehender Erklärung basierend auf dem Repository [m426-2026/knobelscheit](TODO).

- Vereinbart einen Termin für eine gemeinsame Videokonferenz deinen Partnern von ca. einer Stunde.
    - Stellt sicher, dass alle Beteiligten Zugriff auf den gleichen Fork vom Originalrepository haben.
- Bearbeitet [TODO](TODO) gemeinsam gemäss TDD- und Pair-Programming-Vorgehen.
    - Zeichnet die Videobesprechung auf (Audio und Video).
    - Alle Beteiligten sollen mindestens einmal die Rolle des _Drivers_ und des _Navigators_ einnehmen. Der _Driver_ teilt dabei seinen Bildschirm.
    - Für jedes Gruppenmitglied soll eine _Driver_-Sequenz von ca. 2-3 Minuten herausgesucht und dazu die entsprechende Zeitangabe notiert werden, z.B. `15:13-17:54`.
    - Erstellt regelmässige Commits, etwa dann, wenn ein Test zum Durchlaufen gebracht worden ist.
- Reicht das Ergebnis als Pull Request ein.
- Reflektiere die _Pair Programming Session_ selbständig auf ca. einer halben A4-Seite (ca. 200-250 Wörter). Orientiere dich dabei an den folgenden Leitfragen:
    1. Was ist mir in der Rolle als Driver und Navigator gut gelungen; was hat mir Mühe bereitet?
    2. Was würde ich das nächste mal wieder gleich; und was anders machen?
    3. Inwiefern werde ich Pair Programming in Zukunft betreiben?

### Bedingungen

- Es werden keine KI-Tools eingesetzt; weder für die Programmierung noch für die Reflexion.
    - Zuwiderhandlung: 0 Punkte für die jeweilige Kategorie _Ergebnis (Code)_ oder _Reflexion_
- Es wird erst API-Dokumentation durch den Navigator konsultiert, wenn keine der Beteiligten mehr weiterhelfen können.
- Es wird kein Code eins zu eins aus externen Quellen übernommen, sondern nachgeschrieben.

### Abgabe

- Im Abgabeordner mit dem Gruppennamen werden folgende Dateien abgelegt:
    1. `Aufzeichnung.mp4`: Das Video der Aufzeichnung
    2. `Zeitangaben.txt`: Die Zeitangaben der ausgewählten Sequenzen nach folgendem Format:
        - `[Vorname1] [Nachname1]: mm:ss-mm:ss`
        - `[Vorname2] [Nachname2]: mm:ss-mm:ss`
    3. `Reflexion-[Vorname]-[Nachname].docx`: Die Reflexion jedes Gruppenmitglieds
    4. `Pull-Request.txt`: Link auf Pull Request

**Wichtig**: Es geht nicht darum, die Aufgabe komplett zu lösen, sondern darum, das Vorgehen auszuprobieren und den Versuch zu dokumentieren! ("Der Weg ist das Ziel.")

### Bewertung (Rubrik)

- Ergebnis (Code)
    1. nicht vorhanden
    2. Code vorhanden, aber unbrauchbar
    3. funktionierender Test oder funktionierender Produktivcode vorhanden
    4. funktionierender Test und funktionierender Produktivcode vorhanden
- Aufzeichnung
    1. nicht vorhanden
    2. unzureichendes Vorgehen
    3. ansatzweise verlangtes Vorgehen
    4. Vorgehen gemäss Erwartung
- Reflexion
    1. nicht vorhanden
    2. oberflächlich, allgemein
    3. Reflexionsfragen teilweise behandelt
    4. Reflexionsfragen vollständig behandelt

_Ergebnis_ und _Aufzeichnung_ werden grundsätzlich gemeinsam; die _Reflexion_ einzeln bewertet. Bei groben Leistungsunterschieden werden alle Kategorien einzeln bewertet.

## Aufgabenstellung: Knobelscheit

Implementiert das Spiel _Knobelscheit_ als Kommandozeilenanwendung. Dieses ist im Folgenden beispielhaft erklärt: 

### Spielverlauf

Die Ausgangslage: die Zahlen von eins bis neun sind in der Ursprungsposition.

![1](/images/knobelscheit/1.jpeg)

Die erste Zahl kann umgeklappt werden.

![2](/images/knobelscheit/2.jpeg)

Da die Zahl, welche der Augensumme entspricht, bereits umgedreht worden ist, werden zwei Zahlen umgedreht, die ebenfalls die Augensumme ergeben.

![3](/images/knobelscheit/3.jpeg)

Eine weitere Zahl kann umgeklappt werden.

![4](/images/knobelscheit/4.jpeg)

Die Augenzahlen der beiden Würfeln entsprechen den beiden umgeklappten Zahlen.

![5](/images/knobelscheit/5.jpeg)

Abermals wird die gleiche Zahl gewürfelt. Sie lässt sich erneut durch eine andere Kombination abbilden.

![6](/images/knobelscheit/6.jpeg)

Leider geht es dieses Mal nicht auf.

![7](/images/knobelscheit/7.jpeg)

Im zweiten Versuch klappt es doch.

![8](/images/knobelscheit/8.jpeg)

Das Spiel ist nach sieben Würfen beendet.

### Umsetzung

- Benutzerinteraktion
    - Der Benutzer sieht bei jedem Spielzug, welche Zahlen bereits umgeklappt worden sind, und welche noch nicht.
    - Bei jeder Runde wird mit zwei Würfeln mit den Zahlenwerten von 1-6 gewürfelt. Der Benutzer gibt an, welche Zahl(en) er umdrehen möchte. Die Zahlen werden nur umgedreht, wenn ihre Summe der erwürfelten Augensumme entspricht.
    - Das Spiel endet, wenn alle Zahlen umgedreht worden sind.
    - Am Schluss des Spiels soll der Benutzer erfahren, wie oft er würfeln musste.
- Technisch
    - Das Spiel soll auf der Kommandozeile gespielt werden.
    - Es dürfen ausser der vorkonfigurierten `assert`-Library für Unittests keinerlei Dependencies aufgenommen werden.
    - Die interaktive Spiellogik soll von der Implementierung des Spielmodells (das Knobelscheit mit den 9 Zahlen) auf Quellcode-Ebene getrennt sein.
- Vorgehen
    1. Würfel: Schreibt Unittests und Logik für das Würfeln gemäss TDD-Vorgehen.
    2. Knobelscheit: Schreibt Unittests und Logik für das Knobelscheit gemäss TDD-Vorgehen.
    3. Spiellogik: Schreibt die Spiellogik und testet sie dazu manuell.