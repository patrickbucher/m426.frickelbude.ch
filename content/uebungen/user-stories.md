+++
date = '2025-06-01T17:50:40+02:00'
title = 'User Stories'
weight = 2
+++

## Theorie

In der agilen Softwareentwicklung werden Anforderungen oftmals in sogenannten _User Stories_ festgehalten. Diese sind aus der Perspektive eines Anwenders gemäss folgender Form geschrieben:

> [**Titel**]: Ich als [Rolle] möchte [eine Funktionalität] damit [ein Nutzen entsteht].

Beispiel:

> **Speichernachfrage**: Als Benutzer möchte ich beim Schliessen der Anwendung
> ohne vorheriges Speichern gefragt werden, ob ich das Dokument speichern möchte,
> damit kein Datenverlust entsteht.

### INVEST-Kriterien

Gute User Stories genügen den sogenannten _INVEST_-Kriterien (benannt anhand ihrer Anfangsbuchstaben):

- **I**ndependent (unabhängig): Die Abhängigkeiten zwischen einzelnen User Stories sollten auf ein Minimum reduziert werden. Idealerweise sind User Stories unabhängig von anderen User Stories. Abhängigkeiten sollten dokumentiert werden, damit man die Stories nicht in der falschen Reihenfolge angeht.
- **N**egotiable (verhandelbar): Die Stories sollten einen gewissen Verhandlungsspielraum zwischen Entwicklung und Business bieten, sodass beispielsweise eine etwas vereinfachte Variante davon umgesetzt wird, wenn dadurch sehr viel Entwicklungsaufwand eingespart werden kann.
- **V**aluable (wertvoll): User Stories müssen einen klaren Nutzen für den Anwender des Systems schaffen. Aufgaben wie Refactoring, die für den Endnutzer nicht wahrnehmbar sind, sind also keine User Stories. In der Regel betrifft eine User Story alle Schichten des Systems: von Frontend über Backend bis zur Datenbank.
- **E**stimable (schätzbar): Die User Story muss genügend detailliert beschrieben sein, dass man ihren Aufwand ungefähr abschätzen kann.
- **S**mall (klein): Eine User Story sollte so klein sein, dass sie innerhalb einer Iteration (eines Sprints) von einem oder zwei Enwicklern umgesetzt werden kann. Grössere Stories sollten in kleinere Stories heruntergebrochen oder vereinfacht werden.
- **T**estable (testbar): Eine User Story sollte Umsetzungskriterien umreissen, anhand welcher die Entwickler automatisierte bzw. die Qualitätssicherung manuelle Testfälle ableiten können.

### Akzeptanzkriterien

Oftmals werden solche User Stories um sogenannte _Akzeptanzkriterien_ ergänzt. Diese müssen unbedingt erfüllt sein, damit eine User Story als umgesetzt bzw. abgeschlossen gilt. Diese Akzeptanzkriterien können als Vorlagen für automatische und manuelle Testfälle dienen.

Beispiel (zur obigen User Story):

- Die Speichernachfrage soll als modaler Dialog erscheinen. Der Benutzer muss eine Entscheidung treffen, damit er die Anwendung weiterverwenden kann.
- Wurde die Datei bisher noch nicht abgespeichert, soll der "Speichern Unter"-Dialog angezeigt werden, damit der Benutzer einen Dateinamen auswählen kann.
- Der Speicherdialog muss in den Sprachen Englisch, Deutsch und Französisch zur Verfügung stehen.

### Story Points

User Stories werden anhand ihres geschätzten Umsetzungsaufwands in verschiedene Grössenkategorien eingeordnet. Gebräuchlich sind sogenannte _Story Points_ oder _Story-Punkte_, die meistens einer Fibonacci-Reihe folgen: 1, 2, 3, 5, 8, 13. Weniger gebräuchlich sind sogenannte "T-Shirt-Grössen" zur Bezeichnung des Umsetzungsaufwands: XS, S, M, L, XL.

Story Points haben den Vorteil, dass man mit ihnen rechnen kann. So kann eine sehr grosse Story mit 13 Punkten in zwei Stories mit 5 bzw. 8 aufgeteilt werden.

Dieser Vorteil kann aber auch zu einem Nachteil werden, denn durch die Zahl gerät man in Versuchung, Story-Punkte direkt in Aufwandsstunden umzurechnen. Dieser direkte Zusammenhang lässt sich jedoch nicht herstellen, zumindest nicht in der Startphase eines Projekts, aber evtl. im späteren Projektverlauf empirisch, d.h. aufgrund von Erfahrungswerten.

T-Shirt-Grössen haben den Vorteil, dass sie den Unsicherheitsfaktor wahrheitsgetreu wiedergeben und man (bzw. Manager) nicht in Versuchung geraten, damit zu rechnen.

#### Planning Poker

TODO: beschreiben

Für Übung: [Planning Poker Online](https://planningpokeronline.com/)

### Nutzen

User Stories haben nicht nur eine Grösse, die sich anhand ihres Aufwands bemisst, sondern auch einen Nutzen. Dieser wird meist in den Stufen _hoch_, _mittel_ und _tief_ angegeben. Der Nutzen wird aus der Perspektive des Product Owners beschrieben: Wie wichtig ist es dieser Person, dass eine Funktionalität umgesetzt wird?

### Priorisierung von User Stories

Die User Stories werden in einem sogenannten _Backlog_ gesammelt. Dieses kann beispielsweise folgendermassen aussehen:

| Story Points | Nutzen | Titel                     |
|-------------:|:------:|---------------------------|
|            3 |  hoch  | Speichernachfrage         |
|            5 |  tief  | Markdown-Unterstützung    |
|            5 | mittel | Bildvorschau              |
|            5 |  tief  | Dark Mode                 |
|            1 |  hoch  | Übersetzung Fehlermeldung |
|            8 |  tief  | AsciiDoc-Unterstützung    |

Für jede Iteration (bei Scrum ein sogenannter _Sprint_) werden eine Reihe von User Stories zur Umsetzung ausgewählt. Dies geschieht anhand der Grösse und Priorität der User Stories, die mithilfe der _Eisenhower-Matrix_ in vier Kategorien eingeteilt werden können:

![Das Vier-Quadranten-Spiel (Eisenhower-Matrix)](/img/vier-quadranten-spiel.png)

Man bezeichnet dieses Vorgehen auch als das "Vier-Quadranten-Spiel".

Am Ende dieses "Spiels" verbleibt ein Sprint-Backlog, das dann beispielsweise so aussieht:

| Story Points | Nutzen | Titel                     |
|-------------:|:------:|---------------------------|
|            1 |  hoch  | Übersetzung Fehlermeldung |
|            3 |  hoch  | Speichernachfrage         |
|            5 | mittel | Bildvorschau              |

## Aufgabe

Hören Sie sich die Aufzeichnung ([MP3](/audio/warenkorb.mp3), [Opus](/audio/warenkorb.opus)) über die geforderten Erweiterungen eines Warenkorbsystems für einen Online-Shop an.

Formulieren Sie für die darin geäusserten Anforderungen User Stories inkl. Akzeptanzkriterien. Die Anforderungen sollen möglichst vollständig in ca. 5 User Stories festgehalten werden. Beachten Sie hierzu auch die Einhaltung der Invest-Kriterien.

Unklarheiten sollen als Fragen zu den jeweiligen User Stories festgehalten werden.