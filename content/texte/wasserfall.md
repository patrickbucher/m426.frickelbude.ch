+++
date = '2026-01-25T10:43:17+01:00'
title = 'Das Wasserfallmodell'
weight = 1
+++

## Hintergrund: Die (ewige) Software-Krise

Die Informatik ist eine noch recht junge Wissenschaft. Der produktive Einsatz von _elektronischen_ Rechanmaschinen geht auf die Zeit des Zweiten Weltkriegs zurück, als Alan Turing mit seinem Team die Enigma-Verschlüsselung der Achsenmächte mithilfe von einem Computer knackte. In der Nachkriegszeit wurden Computer dann vermehrt für friedliche Zwecke eingesetzt, beispielsweise bei Banken und Versicherungen, aber auch in der Raumfahrt.

Die Projekte wurden immer ambitionierter, die Werkzeuge (Programmiersprachen wie COBOL und Fortran) und Methoden waren aber noch nicht sehr ausgereift. Man wähnte sich Ende der 1960er-Jahre in der _Software-Krise_. Edsger W. Dijkstra, der die Software-Krise mithilfe der strukturierten Programmierung bewältigen wollte, berichtet ein anschauliches Beispiel von der NATO-Konferenz 1969: Ein [Software-Fehler im Apollo-Programm](/videos/software-crisis.mp4) (Quelle: [Edsger W. Dijkstra Archive](https://www.cs.utexas.edu/~EWD/video-audio/video-audio.html)), der nur zufälligerweise entdeckt worden ist, und sonst drei Astronauten das Leben gekostet hätte.

Trotz strukturierter (und später: objektorientierter) Programmierung und planmässigerem Vorgehen beim Programmieren scheiterten weiterhin viele Software-Projekte. Ca. 40 Jahre nach dieser NATO-Konferenz schreiben Ken Schwaber und Jeff Sutherland, die Autoren des _Scrum Guide_, im Einleitungskapitel ihres Buches _Software in 30 Days_ folgendes:

> You have been ill served by the software industry for 40 years—not purposefully, but inextricably. [...] In this part of the book, we investigate why software development has been so bad.

Als Ursache für den schlechten Zustand der Software-Industrie machen die Autoren planmässiges, lineares, dokumentlastiges Vorgehen aus: das _Wasserfallmodell_.

{{% expand title="Wurde die Software-Krise mittlerweile gelöst?" %}}
Agile Vorgehensweisen wie _Scrum_ haben sich im letzten Vierteljahrhundert immer stärker durchgesetzt. Ist die Software-Krise dadurch gelöst worden?

In seinem Vortrag [Preventing the Collapse of Civilization](https://www.youtube.com/watch?v=ZSRHeXYDLko) von 2019 zeigt der Spieleentwickler Jonathan Blow auf, dass Wissen auch verlorengehen kann, und die Produktivität beim Programmieren rückläufig ist; trotz – oder wegen? – moderner Sprachen, Entwicklungswerkzeugen und Vorgehensmethoden.

Software Engineering als Disziplin scheint in einer permanenten Krise zu sein.
{{% /expand %}}

## Winston Royce und sein Wasserfall-Artikel

1970 veröffentliche Winston Royce einen Beitrag mit dem Titel _Managing the Development of Large Software Systems_ ([Quelle](https://dl.acm.org/doi/10.5555/41765.41801)). Darin beschrieb er seine Meinung darüber, wie grosse Software-Projekte durchgeführt werden sollten. Diese Meinung basiert auf seinen persönlichen Erfahrungen, die er in Software-Projekten im Bereich Raumfahrt sammeln konnte.

Die folgenden Abschnitte fassen einige wichtigen Aussagen daraus zusammen.

### Kleine Projekte, wenige Schritte

Kleine Software-Projekte zeichnen sich dadurch aus, dass ihr Ergebnis oft nur intern oder vom Autor selber verwendet wird. Das Vorgehen ist informell und umfasst zwei Schritte: Analyse (_Analysis_) und Umsetzung (_Coding_):

![Der kleine Wasserfall in zwei Schritten](/images/waterfall/wasserfall-2step.svg)

Beide Schritte tragen direkt Ergebnis bei und werden darum auch gerne vom Kunden bezahlt.

### Grosse Projekte, viele Schritte

Für grössere Projekte funktioniert dieses Vorgehen leider nicht. Es sind weitere Arbeitsschritte nötig, die der Kunde lieber nicht bezahlen möchte. Die Aufgabe des Managements ist es, dem Kunden diese Arbeitsschritte zu verkaufen und das Team dazu zu bringen, diese auch gewissenhaft auszuführen.

- Vor der Analyse müssen Anforderungen (_System Requirements_ und _Software Requirements_) aufgenommen werden.
- Zwischen Analyse und Umsetzung muss ein Design (_Program Design_) erarbeitet werden.
- Nach der Umsetzung muss die Software getestet und betrieben werden (_Testing_ und _Operations_).

![Der grosse Wasserfall in sieben Schritten](/images/waterfall/wasserfall.svg)

Dieses Modell geht davon aus, dass Arbeiten in abgeschlossenen Phasen keine Probleme in Folgephasen verursachen. In der Praxis ist dies oft nicht der Fall.

{{% notice title="Ironie der Geschichte" icon="face-rolling-eyes" color="green" %}}
Kurze Aufmerksamkeitsspannen waren offenbar schon 1970 ein Problem: Viele Manager haben obige Grafik auf Seite zwei im Artikel von Royce gesehen und glaubten, dies sei bereits die fertige Lösung. Auf den weiteren Seiten beschreibt Royce das Problem mit diesem Ansatz. Ironischerweise hat die Software-Industrie _wegen_ dem Artikel von Royce jahrzehntelang genau das gemacht, was Royce darin kritisierte.
{{% /notice %}}

**Frage**: Welche Fehler in einer Phase können welche Fehler in der Folgephase erzeugen?

{{% expand title="Antworten" %}}
- Eine fehlerhafte Anforderung führt dazu, dass das falsche Problem analysiert wird.
- Eine fehlerahfte Analyse führt zu einem Design, das dem Problem nicht gerecht wird.
- Ein fehlerhaftes Design führt zu Code, der das Problem nicht löst.
- Fehlerhafter Code führt dazu, dass Tests scheitern.
- Scheiternde Tests verhindern die Einführung und den Betrieb der Software.
{{% /expand %}}

### Rückmeldungen aus Folgephasen

Ein rein lineares/sequenzielles Modell funktioniert nur, wenn in keiner Phase Fehler gemacht werden, was mit zunehmender Grösse eines Projekts immer unwahrscheinlicher wird.

Somit ist es nötig, dass in jeder Phase Arbeitsschritte der vorgelagerten Phase erneut ausgeführt werden können, wenn deren Ergebnisse sich als unzulänglich erweisen. Das lineare/sequenzielle Modell wird zu einem _iterativen_ Modell:

![Das Wasserfallmodell mit iterativen Phasen](/images/waterfall/wasserfall-feedback.svg)

Die Fehlerursache und -wirkung liegt aber oftmals weiter auseinander. So kann eine falsch verstandene Anforderung (_Software Requirements_) im schlimmsten Fall erst beim Abnahmetest durch den Kunden (_Testing_) erkannt werden. Oder das System erweist sich im Betrieb (_Operations_) als unterdimensioniert und kann nicht mit der Last umgehen, da die Systemanforderungen (_System Requirements_) falsch eingeschätzt worden sind. (Dies ist heutzutage weniger ein Problem, da man Hardware-Ressourcen einfacher skalieren kann. 1970 war eine Software noch wesentlich stärker an ihre konkrete Hardware gebunden.)

Angenommen, beim Testen (_Testing_) wird erkannt, dass die Software falsch entworfen worden ist (Fehler beim _Program Design_). Der Fehler kann entweder beim Design gemacht worden – oder einer fehlerhaften Anforderung (_Software Requirements_) geschuldet sein:

![Fehler werden oft erst nach vielen Phasen erkannt](/images/waterfall/wasserfall-fallback.svg)

In diesem Fall müssen verschiedenste Phasen erneut durchlaufen werden, wodurch die Projektkosten je nach Ausmass des Fehlers sich bereits verdoppeln können.

### Lösungsansatz in fünf Schritten

Im Rest seines Artikels beschreibt Royce seinen Lösungsansatz in fünf Schritten:

1. Schritt: **ein vorläufiges Design**
    - Zwischen Anforderungsaufnahme und Analyse soll eine weitere Phase eingefügt werden: ein _vorläufiges_ Design (_Preliminary Design_). Auf Basis der Anforderungen soll ein Design ohne vorherige Analyse erarbeitet werden. Dadurch kann der Ressourcenbedarf bereits vor der Analyse grob abgeschätzt werden.
    - Ziel dieser Phase ist es nicht, ein korrektes Design für die tatsächliche Implementierung zu erreichen, sondern die Machbarkeit und den Ressourcenbedarf des Projekts zu prüfen. Die Erkenntnisse aus dieser Phase sollen in einem Übersichtsdokument zusammengefasst werden, damit alle im Projekt ein gemeinsames Verständnis erhalten.
1. Schritt: **das Design dokumentieren**
    - Wie viel soll in einem Software-Projekt dokumentiert werden? _Ziemlich viel_, beantwortet Royce diese Frage und begründet dies folgendermassen:
        1. Die Kommunikation zwischen Designer, Kunden und Management muss dokumentiert werden, damit man ein gemeinsames Verständnis davon sichern kann. Verbale Kommunikation kann dies nicht leisten.
        1. In den frühen Phasen _ist_ die Dokumentation das einzige Zwischenprodukt: in Form von Anforderungen, Analyse und Design.
        1. Der Nutzen einer guten Dokumentation zahlt sich erst in den späteren Phasen: sie erleichtert die Fehleranalyse beim Testen, ermöglicht einen reibungsfreien Betrieb und stellt eine solide Basis für die Weiterentwicklung der Software dar.
1. Schritt: **alles zweimal machen**
    - Für ein neuartiges Projekt lohnt es sich, den ersten Viertel bis Drittel der Projektzeit in einen Prototyp zu investieren. Hierbei wird das ganze Vorgehensmodell einmal _im Kleinen_ durchgespielt.
    - Ein erfahrenes Team mit guter Intuition kann in dieser Pilotphase mögliche Fehlerquellen aufspüren, wertvolle Erfahrungen machen und diese mithilfe einer guten Dokumentation dem Rest des Teams zur Verfügung stellen.
1. Schritt: **planen, kontrollieren und auswerten**
    - Die Testphase ist oft die aufwändigste und risikoreichste – und durch Verzögerungen oft zeitlich kritischste. Durch die drei vorherigen Schritte wird das Risiko der Testphase minimiert.
    - Viele Fehler können in den vorherigen Phasen bereits mithilfe eines Reviews durch eine andere Person entdeckt werden. So können die Fehler bereits vor dem Testen erkannt und korrigiert werden.
1. Schritt: **den Kunden miteinbeziehen**
    - Der Kunde soll bereits zu einem frühen Zeitpunkt erneut in das Projekt miteinbezogen werden. Dies soll nicht erst beim Ausliefern der Software erfolgen, sondern bereits nach Abschluss der Design-Phase, um mögliche Missverständnisse vor der Implementierung zu klären. Der Auftragnehmer soll zwischen Anforderungs- und Betriebsphase nicht einfach sich selber überlassen werden.

Diese Massnahmen sind zwar aufwändig und kosten Geld, erhöhen aber die Wahrscheinlichkeit für die erfolgreiche Umsetzung des Projekts.

## Kritik am Wasserfallmodell

Die Befürworter agiler Methoden kritisieren das Wasserfallmodell oft aus folgenden Gründen:

Das Wasserfallmodell...

1. bietet keinen Feedback-Mechanismus; der Kunde ist nicht involviert.
    - agile Lösung: kurze, iterative Entwicklungsphasen
2. ist zu dokumentlastig; der Kunde will Software und keine Dokumente.
    - agile Lösung: dem Kunden laufende Software zeigen
3. basiert auf Anforderungen; der Kunde weiss gar nicht, was er will.
    - agile Lösung: ständiger Austausch mit dem Kunden
4. erfordert viel Design-Arbeit; dies führt zu _Over-Engineering_.
    - agile Lösung: Anforderungen möglichst einfach umsetzen und durch Refactoring verbessern
5. hat einen katastrophalen Leistungsausweis; wir haben eine _Software-Krise_.
    - agile Lösung: wir werfen alles über Board und fangen _agil_ an zu entwickeln.

{{% expand title="Ist diese Kritik gerechtfertigt?" %}}
1. Royce bespricht das Feedback-Problem in seinem Artikel ausführlich. Der Kunde soll explizit im Projektverlauf eingebunden sein.
2. Das Wasserfallmodell ist sehr dokumentlastig. Royce argumentiert, dass der Kunde von diesen Dokumenten indirekt profitiert.
3. Der Kunde kann nach erfolgter Design-Phase überprüfen, ob seine Anforderungen richtig umgesetzt werden sollen.
4. Ein gutes Design kann viele andere Probleme ersparen. Das nachträgliche Ändern von Software war 1970 wesentlich komplizierter.
5. Das Wasserfallmodell wurde oft falsch verstanden und eingesetzt. Wir haben trotz agiler Softwareentwicklung immer noch eine Software-Krise.
{{% /expand %}}