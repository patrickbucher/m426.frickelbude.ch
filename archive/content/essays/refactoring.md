+++
date = '2025-05-14T14:17:22+02:00'
title = 'Refactoring'
weight = 5
+++

## Definition

> **Refactoring** (noun): a change made to the internal structure of software to
> make it easier to understand and cheaper to modify without changing its
> observable behavior.

> **Refactoring** (verb): to restructure software by applying a series of
> refactorings without changing its observable behavior.

Quelle: [_Refactoring. Improving the Design of Existing
Code_](https://www.informit.com/store/refactoring-improving-the-design-of-existing-code-9780134757599),
p. 45 (Martin Fowler, Kent Beck)

> **Refactoring** (Substantiv): eine Änderung der internen Struktur von
> Software, um diese einfacher verständlich und modifizierbar zu machen, ohne
> dabei ihr wahrnehmbares Verhalten zu verändern.

> **Refactoring** (Verb): Software restrukturieren, indem man eine Reihe von
> Refactorings vornimmt, ohne deren wahrnehmbares Verhalten zu verändern.

(Eigene Übersetzung davon)

## Clean Agile: Refactoring

Refactoring ist eine Praktik, bei welcher die Struktur des Codes angepasst wird,
ohne dabei dessen Verhalten zu verändern. Dieses Verhalten ist durch Testfälle
definiert, welche nach dem Refactoring des Codes immer noch durchlaufen müssen.

Die Praktik des Refactorings ist eng verknüpft mit der Praktik von TDD. Es
benötigt eine gute Testreihe, damit der Code furchtlos verändert werden kann.
Die dritte TDD-Regel besagt, dass man nicht mehr Produktivcode schreiben darf,
als benötigt wird, um den Test zum Durchlaufen zu bringen. Diesen Code jedoch zu
verbessern ist nicht bloss erlaubt, sondern wärmstens empfohlen.

Der Ablauf des Refactorings ist im _Rot/Grün/Refactor_-Zyklus beschrieben:

![Der Rot/Grün/Refactor-Zyklus](/img/refactoring.png)

- _Rot_: Schreibe einen scheiternden Test.
- _Grün_: Schreibe so viel Produktivcode, wie nötig ist, damit der Test
  durchläuft.
- _Refactor_: Räume den Code auf, ohne dabei Testfälle kaputt zu machen.

Das Schreiben von funktionierendem Code alleine ist schon schwer genug, und so
ist auch das Schreiben von sauberem Code. Darum können diese beiden Ziele ‒
_funktionierender_ Code, _sauberer_ Code ‒ am besten in zwei getrennten
Schritten erreicht werden.

Die Änderungen, die beim Refactoring vorgenommen werden, können von trivialen,
kosmetischen Verbesserungen bis zu tiefen Umstrukturierungen reichen, z.B.:

- die Namen von Variablen, Funktionen, Klassen usw. ändern
- eine `switch`-Anweisung mit mehreren Klassen und Polymorphie umschreiben
- grosse Funktionen oder Klassen in mehrere kleinere aufteilen
- Code verschieben, z.B. in andere Funktionen, Klassen oder Komponenten

Martin Fowler beschreibt solche Techniken und den gesamten Vorgang in seinem
Buch _Refactoring: Improving the Design of Existing Code_ (zweite Ausgabe 2018,
erste Ausgabe 2000) wesentlich detaillierter.

Refactoring ist ein andauernder Prozess, und nicht etwas, das man einplant, wenn
das Chaos im Code untragbar geworden ist. Mit beständigem Refactoring wird nie
ein Chaos entstehen.

Es gibt Anforderungen, welche grössere Änderungen im Design und in der Struktur
des Codes erfordern. In diesem Fall müssen grössere Refactorings vorgenommen
werden. Obwohl solche grossen Refactorings sich über eine lange Zeit erstrecken
können, sollten sie dennoch mit einem kontinuierlichen Ansatz angegangen werden,
indem man alle Tests während des Vorgangs am Durchlaufen hält.

Quelle: _Clean Agile_ (Robert C. Martin), p. 123-125

## Gründe für das Refactoring

1. **Refactoring verbessert das Design von Software.** Die Struktur von
   Software, die laufend erweitert wird, verschlechtert sich mit der Zeit.
   Oftmals schleicht sich duplizierter Code ein. Dadurch wird die Software
   grösser, schwerer verständlich und aufwändiger anzupassen. Das Design der
   Software wird besser, wenn man duplizierten Code reduzieren kann.
2. **Refactoring macht die Software einfacher verständlich.** Der Compiler kann
   auch mit schwer verständlichem Code umgehen ‒ der Programmierer, der die
   Software warten muss, hat damit jedoch Mühe. Mit Refactoring kann man das
   Leben des nächsten Programmierers, der sich mit dem Code befassen muss,
   einfacher machen: Nach dem Refactoring ist der Code besser lesbar und dessen
   Absicht einfacher erkennbar.
3. **Refactoring hilft bei der Suche nach Fehlern.** In schlecht strukturiertem
   Code lassen sich Fehler nur schwer erkennen. Verbessert man die Struktur des
   Codes, kann man dabei Fehler erkennen: Einerseits im verbesserten Code,
   andererseits auch während des Refactoring-Vorgangs, da man sich hier
   gründlich mit dem Code befasst.
4. **Refactoring macht das Programmieren schneller.** Das Refactoring kostet
   zunächst Zeit. Diese Investition lohnt sich aber langfristig, da man Code
   anschliessend einfacher erweitern und anpassen kann. Qualität hat ihren
   Preis, lohnt sich aber langfristig immer.

Quelle: _Refactoring_-Buch (siehe oben), p. 47-50

## Vorgehen

Wie soll man beim Refactoring vorgehen?

1. **Ein Problem erkennen.** Sogenannte _Code Smells_ (siehe unten) sind ein
   Hinweis darauf, dass etwas mit dem Code nicht stimmt.
2. **Tests schreiben.** Bevor man sich an die Verbesserung des Codes macht,
   schreibt man Unittests, die das Verhalten des zu überarbeitenden Codes
   prüfen. Bestehen bereits Testfälle, macht man sich mit ihnen vertraut und
   führt sie aus.
3. **Refactoring anwenden.** Zu den verschiedenen _Code Smells_ gibt es
   verschiedene Lösungsansätze, sog. _Refactorings_. Diese können auf den Code
   angewendet werden.

Nach dem Refactoring hat man einerseits verbesserten Produktivcode, andererseits
eine aktuelle Testreihe, welche das korrekte Verhalten des verbesserten Codes
sicherstellt.

## Code Smells und Refactorings

**Achtung:** Es gibt nicht für jedes Problem ein Patentrezept. Sammeln Sie
Erfahrung durch Ausprobieren! Dank Unittesting und Versionskontrolle kann dabei
nicht viel schief gehen.

Die Webseite [Refactoring Guru](https://refactoring.guru/) bietet einen guten,
englischsprachigen Überblick zum Thema:

- [Code Smells](https://refactoring.guru/refactoring/smells)
- [Refactorings](https://refactoring.guru/refactoring/techniques)

Wikipedia bietet eine gute Übersicht über verschiedene _Code Smells_:

- [Code Smell (en)](https://en.wikipedia.org/wiki/Code_smell)
- [Code Smell (de)](https://de.wikipedia.org/wiki/Code-Smell)

Die
[Web-Version](https://memberservices.informit.com/my_account/webedition/9780135425664/html/refact-list.html)
des _Refactoring_-Buches (siehe oben) enthält einen umfassenden Katalog von
Refactorings. Der Zugang ist jedoch kostenpflichtig, bzw. muss man im Besitz des
Buches sein, um Zugang zu erhalten.
