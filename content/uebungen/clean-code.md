+++
date = '2026-04-17T11:14:22+02:00'
title = 'Clean Code'
weight = 4
+++

Erstelle für die folgenden Aufgaben einen Fork vom Repository [m426-2026/red-rigged-raffle](https://github.com/m426-2026/red-rigged-raffle) und klone diesen.

## Aufgabe 1: Bezeichner verbessern

Der Insolvenzverwalter möchte das Vermögen von ApoRed verwerten. Hierzu gehört u.a. die Gewinnspiel-Software _Red Rigged Raffle_ der Software-Firma _Code Red_, deren Daten auf MiiMiis Festplatte gefunden worden sind. Da Apo (das heisst Red!) beim Programmieren selber Hand angelegt hat, ist der Code für Aussenstehende etwas schwer verständlich.

Hilf dem Insolvenzverwalter den Code zu verstehen, indem du die Bezeichner sinnvoll umbenennst.

Du kannst den Code über das Programm (`main.ts`) folgendermassen testen:

    deno run main.ts

![Willenskrauft, ich sag's euch, Freunde!](/images/clean-code/red1.png)

## Aufgabe 2: Code aufteilen

Die Gewinnspiel-Logik in `absneakender_hase.ts` besteht praktisch nur aus einer grossen Methode – die nun hoffentlich nicht mehr `absneaken` heisst. Versuche die verschiedenen Teile dieser Methode zu verstehen – und die einzelnen Aspekte des Problems zu unterscheiden. (Stelle dir die Frage, aus welchen Teilproblemen das gesamte Problem besteht.)

Teile den Code auf, indem du die verschiedenen Aspekte der Methode in Untermethoden auslagerst, welche du dann von der Hauptmethode aus aufrufst.

Führe das Programm anschliessend testhalber erneut aus.

![Mehr Nikes als Likes!](/images/clean-code/red2.png)

## Aufgabe 3: Fehlerkorrektur

Der Untersuchungsrichter hat Interesse für die Funktionsweise der Gewinnspiel-Software _Red Rigged Raffle_ geäussert. Es steht der Verdacht im Raum, dass diese Software nicht richtig funktioniere.

Schreibe einen Unittest (siehe Beispielcode in `reisender_hase_test.ts`), um den
Verdacht des Untersuchungsrichter zu prüfen. (Tipp: Da das Ergebnis der
Verlosung zufällig ist, kannst du nicht auf exakte Werte prüfen, aber auf die
Anzahl verloster Preise.) Wichtig: Der Test sollte einen Fehler ergeben!

Führe den Testfall folgendermassen aus:

    deno test

Versuche den Fehler durch eine Analyse des Programmcodes nachzuvollziehen.  Korrigiere anschliessend den Fehler, bis der Unittest erfolgreich durchläuft.

![Das Warten hat sich gelohnt!](/images/clean-code/red3.png)

## Zusatzaufgabe: Pull Request

Erstelle einen Pull Request, falls du eine Rückmeldung zu deiner Arbeit wünschst.

**Herzliche Gratulation!** Dank dir kann der Insolvenzverwalter nun die verbleibenden Sachwerte von ApoRed an dessen Gläubiger verlosen; und der Untersuchungsrichter kann dem _Main Character_ den Prozess machen.

![You don't need to be perfect when you look good.](/images/clean-code/red4.png)

## Zusatzaufgabe: Glossar

Vergleiche beim Pull Request die ursprünglichen mit den von dir gewählten Bezeichnern. Erstelle ein kleines Glossar _Red – Deutsch_ bzw. _Red – Englisch_ aus den "übersetzten" Bezeichnern. (Du kannst diese Tabelle bzw.  Liste mit dem Pull Request einreichen oder nachträglich ins Repository aufnehmen.)