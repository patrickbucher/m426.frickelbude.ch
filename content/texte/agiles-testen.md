+++
date = '2026-03-14T20:53:18+01:00'
title = 'Agiles Testen'
weight = 3
+++

In der Softwareindustrie gilt Testen als eines der wichtigsten Mittel zum Erreichen und Aufrechterhalten von Softwarequalität. Auch in der agilen Softwareentwicklung hat Testen einen sehr hohen Stellenwert, wobei die Automatisierung von Testaktivitäten eine besondere Rolle spielt. Doch ist Testen überhaupt ein geeignetes Mittel zur Sicherstellung von Softwarequalität? Dijkstra äusserte bereits 1969 seine Zweifel daran:

> Program testing can be used to show the presence of bugs, but never to show their absence!
>
> — Edsger W. Dijkstra, [EWD268 (Structured Programming)](https://www.cs.utexas.edu/~EWD/transcriptions/EWD02xx/EWD268.html)

Testen kann nur die Anwesenheit von Fehlern belegen, aber nicht die Korrektheit eines Programms. Dies hat damit zu tun, dass Tests _stichprobenartig_ funktionieren.

## Tests sind Stichproben

Ein Programm wird mit einer Reihe von Eingabedatensätzen ausgeführt, und das Ergebnis wird gegen einen zuvor bestimmten Erwartungswert geprüft. Beispiel: Bei der Addition besteht der Eingabedatensatz aus zwei Summanden, der Erwartungswert ist deren Summe.

Ein erschöpfendes Testen, das alle möglichen Eingaben prüft, ist inpraktikabel bis unmöglich. Der vollständige Test der Addition zweier 32-Bit-Ganzzahlen erfordert bereits $2^{32} \cdot 2^{32} = 2^{64}$ (d.h. ca. 18 Trillionen) Testfälle.

Meist ist aber ein erschöpfendes Testen mit allen möglichen Eingabewerten gar nicht sinnvoll, da sich das Programm bei gleichartigen Eingaben gleichartig verhält. Ist die Addition $2+3$ erfolgreich getestet, muss die Addition $3+2$ oder $1003+1002$ nicht separat getestet werden. (Man sagt: Die Werte befinden sich in der gleichen _Äquivalenzklasse_.) Hingegen ist es sinnvoll, separate Tests mit negativen und ungültigen Werten sowie mit Grenzwerten durchzuführen.

## Programmieren und Software Engineering

Tests können uns nicht sagen, ob ein Programm wirklich korrekt ist. Mithilfe von Tests kann man aber überprüfen, ob immer noch alles funktioniert, was früher schon einmal funktioniert hat.

> Software engineering is what happens to programming when you add time and other programmers.
>
> — Russ Cox, [What is Software Engineering?](https://research.swtch.com/vgo-eng)

Um den Nutzen von Tests besser verstehen zu können, ist es sinnvoll, zwischen zwei Aktivitäten zu unterscheiden:

- _Programmieren_: Das Schreiben von Programmcode, um ein bestimmtes Problem zu lösen.
- _Software Engineering_: Mit anderen Leuten über eine längere Zeit hinweg programmieren.

Das Testen hilft also nicht beim initialen Erstellen des (korrekten) Programms – beim Programmieren – sondern bei der Anpassung und Erweiterung bestehender Software durch ein ganzes Team – beim Software Engineering. Oder zynisch gesprochen: Mit dem Testen kann man sicherstellen, dass andere Programmierer nicht unbemerkt Fehler in funktionierenden Programmcode einbauen.

Durch Testen kann man Fehler finden und gewinnt dadurch die Möglichkeit, diese Fehler zu beheben, bevor sie zum Kunden gelangen. Das ist schon sehr hilfreich!

## Regressionstests

Die agile Softwareentwicklung legt hohes Gewicht aufs Testen. Die sogenannte _Regressionstestreihe_ (_regression test suite_) ist das zentrale Mittel dazu: eine Reihe automatisch ausführbarer Testfälle, die bis zum aktuellen Zeitpunkt durchgeführt worden sind. Jeder neue Testfall wird der Regressionstestreihe hinzugefügt, was dem iterativ-inkrementellen agilen Vorgehen entspricht.

Mithilfe der Regressionstestreihe lassen sich sogenannte _Regressionen_ (d.h. ein Rückfall auf eine tiefere Stufe) feststellen: Fehler, die bereits einmal korrigiert worden sind, aber nun wieder auftauchen. Das klingt zunächst enttäuschend; in der Praxis machen solche Regressionsfehler einen überraschend grossen Teil aller Fehler aus.

Regressionsfehler haben verschiedene Ursachen: Eine Fehlerkorrektur…

- … behebt bloss ein Symptom und nicht dessen Ursache,
- … basiert auf fehlerhaftem Verständnis, wodurch neue Fehler entstehen, oder
- … wurde wegen unzulänglicher Abhängigkeitsverwaltung gar nicht ausgeliefert.

Jeder Regressionstest wird als ein ausführbares Testskript implementiert. Jeder Testfall stellt eine Eigenschaft des getesteten Produktivcodes sicher, wozu handverlesene Beispiele verwendet werden. Die komplette Regressionstestreihe soll automatisch ausgeführt werden können. Deren Ausführung soll höchstens wenige Sekunden dauern.

Schlägt ein Regressionstest fehl, muss der zugrundeliegende Fehler zuerst behoben werden, bevor mit der Neuentwicklung weitergefahren werden kann. Nur so kann die Qualität eines Projekts langfristig aufrecht erhalten werden.

Wird ein Fehler gemeldet, zu dem kein bestehender scheiternder Testfall existiert, soll zuerst ein solcher Testfall umgesetzt werden, der diesen Fehler zuverlässig reproduziert und somit scheitert. Erst dann soll der Produktivcode korrigiert werden. Laufen neue und alte Tests durch, ist man mit der Fehlerkorrektur fertig.

---

Das Schreiben automatisch ausführbarer Testfälle kann auch mit dem Schreiben neuen Programmcodes verbunden werden, wobei man von _Test-First Programming_ bzw. von _Test-Driven Development_ spricht. Doch davon das nächste Mal…

## Fragen

1. Welche Funktionen lassen sich praktisch nicht erschöpfend testen? Nenne konkrete Beispiele!
1. Warum sollte man Testen als Aktivität des Software Engineerings und nicht des Programmierens verstehen? Erkläre den Unterschied!
1. Welche Ähnlichkeit besteht zwischen Regressionstests und dem Mechanismus einer [Sperrklinke](https://de.wikipedia.org/wiki/Sperrklinke)? Erkläre den Zusammenhang!
1. Hast du schon einmal Regressionsfehler im eigenen Code festgestellt? Erkläre die Ursache!