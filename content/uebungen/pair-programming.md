+++
date = '2026-03-29T14:39:46+02:00'
title = 'Pair Programming'
weight = 3
+++

Organisiert euch in 2er-Teams und in maximal ein 3er-Team. Bearbeitet diesen Auftrag in diesem Team.

Ein Teammitglied erstellt einen Fork vom Repository [m426-2026/cards](https://github.com/m426-2026/cards) und stellt sicher, dass alle Partner Vollzugrif auf den Fork haben.

Bearbeitet die folgenden Aufgaben im Modus des [Pair Programmings](/texte/pair-programming) und des [Test-Driven Developments](/texte/test-driven-development). **Verwendet hierzu keine KI-Werkzeuge**, sondern arbeitet konsequent zusammen. Dabei sollen sich die Rollen des Drivers und Navigators häufig abwechseln – nach oder bereits während einer Aufgabe. Verwendet jeweils nur einen Laptop.

In dieser Übung soll ein einfaches Tippspiel mit Jasskarten umgesetzt werden.

## Aufgabe 1: Spielkarten

Die Quellcode-Dateien `cards.ts` und `cards_test.ts` sind bereits vorgegeben, enthalten aber nur Beispielcode als zu ersetzende Vorlage.

Im ersten Schritt sollen die Spielkarten des Schweizer Jasskartensets abgebildet werden. 

Es gibt vier _Farben_ (in absteigender Reihenfolge):

- Rosen
- Schellen
- Schilten
- Eicheln

Von jeder Farbe gibt es neun _Werte_ (in absteigender Reihenfolge):

- Ass
- König
- Ober
- Under
- Banner
- 9
- 8
- 7
- 6

Erstelle eine Klasse namens `Card`, welche eine solche Spielkarte abbildet.

**Hinweis**: Farben und Werte können mit einer [Enumeration](https://www.typescriptlang.org/docs/handbook/enums.html) abgebildet werden.

Neben einem Konstruktor soll die Klasse über eine Methode `beats(other: Card): boolean` verfügen. Diese gibt `true` zurück, wenn die Karte, auf der die Methode aufgerufen ist, einen höheren Wert als die Karte hat, die als Argument übergeben worden ist.

Haben beide Karten den gleichen Wert, sollen die Farben verglichen werden (Rosen > Schellen = Schilten > Eicheln). Da Schellen und Schilten gleich stark sind, soll `false` zurückgegeben werden, wenn zwei Karten dieser beiden Farben den gleichen Wert haben. Stimmen Wert _und_ Farbe überein, ist das Ergebnis `false`.

## Aufgabe 2: Kartendeck

Erstelle in `deck.ts` und `deck_test.ts` eine Klasse `Deck`, die ein Kartendeck repräsentiert. Diese soll alle 36 möglichen Spielkarten enthalten und in zufälliger Reihenfolge zurückgeben. Dabei muss unterschieden werden, ob eine Karte bereits gespielt worden ist oder nicht.

**Hinweis**: Das Problem kann sehr elegant mit einem [Iterator](https://eloquentjavascript.net/06_object.html#h-z2tOOXM8qO) gelöst werden. Eine andere Lösung ist es, zwei Arrays oder Sets `played` und `unplayed` zu verwalten. Eine Methode `play(): Card` würde eine zufällige Karte zurückgeben und diese von `unplayed` entfernen und `played` hinzufügen.

## Aufgabe 3: Spiellogik

Erstelle in `game.ts` und `game_test.ts` eine Klasse `Game`, welche die Spiellogik abbildet. Das Spiel soll folgendermassen funktionieren:

1. Ein neues Deck wird erstellt.
2. Eine erste Karte wird abgehoben und ausgegeben.
3. Der Spieler soll einen Tipp abgeben können, ob die nächste Karte einen höheren oder tieferen Wert verglichen mit der letzten Karte hat.
4. Die nächste Karte wird aufgedeckt. Ist der Tipp richtig, erhält der Spieler einen Punkt.

Die Schritte 3 und 4 werden wiederholt, bis das ganze Kartendeck aufgedeckt ist. Am Schluss sollen die erreichten Punkte angezeigt werden.

Die Spiellogik muss komplett über automatisch ausführbare Testfälle getestet werden.

## Aufgabe 4: Wettspiel

Erweitere die Spiellogik, sodass der Spieler mit einem Kontostand von CHF 1.00 beginnt. Der Spieler gibt zu jedem Tipp einen Einsatz ab (Minimum: CHF 0.05, Maximum: sein aktueller Kontostand).

Ist der Tipp korrekt, erhält der Spieler keine Punkte, sondern den Wetteinsatz auf seinem Konto gutgeschrieben. Ist der Tipp falsch, wird ihm der Betrag vom Konto abgezogen. Das Spiel endet, wenn alle Karten gespielt oder ein Kontostand CHF 0.00 erreicht worden ist.

Die Spiellogik muss komplett über automatisch ausführbare Testfälle getestet werden.

## Aufgabe 5: Interaktive Spiellogik

Implementiere in `main.ts` den Code um das Spiel interaktiv ausführen (d.h. wirklich spielen) zu können. Interaktive Eingaben kannst du mit der eingebauten Funktion `prompt(message: string): string` bewerkstelligen:

```typescript
const name = prompt("What's your name?");
console.log(`Hello, ${name}!`);

const rawWorth = prompt("What's your networth?");
const netWorth = Number.parseFloat(rawWorth);
console.log(`Your net worth is ${netWorth.toFixed(2)}.`);
```