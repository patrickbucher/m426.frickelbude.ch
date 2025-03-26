+++
date = '2025-03-25T07:36:42+01:00'
title = 'Test-Driven Development'
weight = 3
+++

## Kent Beck: Extreme Programming

_Freie, auszugsweise Übersetzung von **Test-First Programming** auf S. 50-51_

Schreibe einen scheiternden automatischen Test bevor du Code veränderst.
Test-First Programming geht gleich mehrere Probleme auf einmal an:

- _Scope Creep_: Beim Programmieren kann man schnell das eigentliche Ziel aus
  den Augen verlieren und baut dann Code "für alle Fälle" ein. Den Fokus beim
  Programmieren erhält man, indem man ausdrücklich und objektiv festlegt, was
  das Programm machen soll. Wenn man den anderen Code dann doch noch einbauen
  will, schreibt man einen weiteren Test, nachdem man den gegenwärtigen zum
  Laufen gebracht hat.
- _Kopplung_ und _Kohäsion_: Fällt einem das Schreiben eines Tests schwer, ist
  dies eher ein Hinweis auf ein Design-Problem denn auf ein Test-Problem. Lose
  gekoppelter Code mit hoher Kohäsion ist einfach zu testen.
- _Rhythmus_: Beim Programmieren kann man sich schnell für Stunden verlieren.
  Beim Test-First Programming ist es klarer, was man als nächstes macht:
  entweder schreibt man einen weiteren Test oder bringt den scheiternden Test
  zum Laufen. Dies führt bald zu einem natürlichen und effizienten Rhythmus:
  testen, Code schreiben, Code verbessern; testen, Code schreiben, Code
  verbessern.

Beim kontinuierlichen Testen führt man die Tests nach jeder Änderung am
Programm aus, so wie ein inkrementeller Compiler bei jeder Code-Anpassung läuft.
Testfehler werden im gleichen Format wie Kompilierfehler gemeldet.
Kontinuierliches Testen reduziert die Dauer der Fehlerbehebung, indem es die
Dauer der Fehlererkennung verkürzt. Die Tests müssen hierzu jedoch schnell
durchlaufen.

Die Tests, die man beim Test-First Programming schreibt, haben die
Einschränkung, dass sie das Programm aus einer Mikroperspektive betrachten:
arbeiten die Objekte gut zusammen? Mit steigender Erfahrung wird es einem
möglich, mehr und mehr Vergewisserung mit diesen Tests zum Ausdruck zu bringen.
Aufgrund ihres begrenzten Umfangs laufen diese Tests tendenziell sehr schnell
durch. In wenigen Minuten lassen sich tausende davon ausführen.

### Fragen

1. Was bedeutet _Scope Creep_?
1. Was bedeuten _Kopplung_ und _Kohäsion_?
1. Warum erleichtern geringe Kopplung und starke Kohäsion das Schreiben
   automatischer Testfälle?

## Robert C. Martin: Clean Agile

_Eigene Zusammenfassung zu **Test-Driven Development** auf S. 114-117_

Programmieren ist der Buchhaltung sehr ähnlich: ein kleiner Fehler kann
gewaltige negative Konsequenzen nach sich ziehen. Darum haben die Buchhalter
die _doppelte Buchhaltung_ entwickelt, bei welcher jede Transaktion zweimal
vermerkt wird: einmal aufseiten der Kreditoren, und einmal aufseiten der
Debitoren. Die Summen der Konti auf beiden Seiten werden in der Bilanz
gesammelt. Dort müssen die Differenzen der Kreditoren- und Debitorenkonti
zusammengerechnet null ergeben, sonst wurde irgendwo ein Fehler gemacht. Solche
Fehler lassen sich schnell erkennen, wenn man jede Transaktion einzeln eingibt,
und die Differenzen der beiden Seiten nach jeder Transaktion überprüft, ob sie
null ergeben.

Test-Driven Development (TDD) ist die dazu entsprechende Technik beim
Programmieren. Jedes verlangte Verhalten des Programms wird zweimal eingegeben:
einmal als Testcode, einmal als produktiver Code. Die Verhalten werden
nacheinander eingegeben: zuerst als (vorerst scheiternden) Test, danach
als funktionierenden Produktivcode, der den Test zum Durchlaufen bringt. Wie in
der Buchhaltung soll ein Ergebnis von null erreicht werden: null scheiternde
Tests. Bei diesem Vorgehen können Fehler entdeckt werden, wie sie sich gerade
in den Code einschleichen ‒ und dadurch rechtzeitig vermieden werden. Im
Gegensatz zur doppelten Buchhaltung ist TDD (noch?) nicht von Gesetzeswegen
verlangt.

TDD kann mit den drei folgenden, einfachen Regeln beschrieben werden:

1. Schreibe keinen Produktivcode, bis es einen Test gibt, der aufgrund dieses
   fehlenden Produktivcodes scheitert.
2. Schreibe nicht mehr Testcode, als nötig ist, um den Test zum Scheitern zu
   bringen ‒ und ein Kompilierfehler gilt als Scheitern.
3. Schreibe nicht mehr Produktivcode, als nötig ist, um den Test zum Durchlaufen
   zu bringen.

Wenn sich Programmierer an diese Regeln halten, wechseln sie in einer Frequenz
von nur wenigen Sekunden zwischen Produktiv- und Testcode hin und her. Was zu
Beginn wie eine Ablenkung wirken mag, stellt sicher, dass alles funktioniert ‒
oder zumindest gerade eben noch funktioniert hat. Der fehlerhafte Code ist
einfach zu finden: er muss in den Zeilen sein, die gerade erst geschrieben
worden sind.

Einige Programmierer können sehr gut mit Debuggern arbeiten, weil sie sehr viel
Zeit damit verbringen. Man braucht nur viel zu debuggen, wenn man viele Bugs
hat. Mit TDD werden weniger Bugs eingeführt, weshalb es für Programmierer,
welche sich an die Disziplin von TDD halten, in Ordnung ist, wenn sie schlecht
mit einem Debugger umgehen können. (Debugging ist immer noch ab und zu nötig,
aber wesentlich seltener.)

Eine umfassende Reihe von Tests (_Test Suite_) ist die beste Art von
Dokumentation für Programmierer: funktionierende, eigenständige, kleine
Codebeispiele.

Tests nachträglich für manuell getesteten Code zu schreiben fühlt sich wie
langweilige Beschäftigungstherapie an. Es macht mehr Freude, nach den drei
Regeln von TDD zu testen und zu programmieren. Code, der unter den Regeln von
TDD entsteht, ist immer für gute Testbarkeit entworfen. Tests für Produktivcode
zu schreiben, der nicht für Testbarkeit entworfen worden ist, ist schwierig ‒
weswegen solche Tests oft weggelassen werden. Dies hinterlässt Lücken in der
Testreihe, und einer lückenhaften durchlaufenden Testreihe kann nicht länger
vertraut werden. Eine gute Testreihe, die durchläuft, sollte hingegen der
Erlaubnis zum Ausliefern der Software gleichkommen.

Eine hohe Testabdeckung von beispielsweise 90% und mehr ist zwar wünschenswert,
jedoch keine Metrik für das Management, sondern für das Entwicklungsteam. Es
erfordert ein gutes Verständnis der Codebasis, um die Testabdeckung sinnvoll
einordnen zu können. Eine hohe Testabdeckung dadurch zu forcieren, indem bei
einer für zu tief empfundenen Testabdeckung der Buildvorgang zum Scheitern
gebracht wird, ist nicht sinnvoll, weil es für Programmierer einen Anreiz
schafft, fingierte Tests zu schreiben, bei denen gar nichts überprüft wird.

Das höchste Ziel von TDD ist Mut, nicht Testabdeckung (_Courage, not
Coverage_): Programmierer mit Vertrauen in ihre Testreihe verändern und
verbessern bestehenden Code ohne Furcht. Entwickler ohne dieses Vertrauen
schrecken hingegen davor zurück, unordentlichen Code aufzuräumen. Dadurch fängt
die Codebasis an zu "verfaulen" (_code rot_). Wird der Code unwartbar, wird die
Weiterentwicklung schwieriger und kommt schlussendlich vollends zum Stillstand.
TDD hingegen hält den Code in Ordnung und gibt dem Programmierer Zuversicht für
dessen Weiterentwicklung.

### Verständnisfragen

1. Welcher Zusammenhang besteht zwischen TDD und der Buchhaltung?
1. Warum soll sich der Einsatz von Debuggern durch TDD verringern?
1. Was bezeichnet man mit dem Begriff _Testabdeckung_?
1. Was ist das Problem, wenn automatische Tests nachträglich geschrieben werden?
1. Was bedeutet _code rot_ und wie wirkt TDD dem entgegen?

## Weiterführende Fragen

1. Welcher Begriff ‒ _Test-First Programming_ oder _Test-Driven Development_ ‒
   bringt das beschriebene Vorgehen besser zum Ausdruck, und warum?
1. Ist es sinnvoll, wenn das Management den Entwicklern eine
   Mindesttestabdeckung (von beispielsweise 90%) vorgibt?
1. Was haben automatische Testfälle mit Mut und Vertrauen zu tun?
