+++
date = '2026-01-25T10:43:17+01:00'
title = 'Das Wasserfall-Modell'
weight = 1
+++

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

TODO: Lösungsansatz von Royce in drei Schritten beschreiben

## Hintergrund: Die (ewige) Software-Krise

[Die Software-Krise (NATO-Konferenz 1969)](/videos/software-crisis.mp4) (Quelle: [Edsger W. Dijkstra Archive](https://www.cs.utexas.edu/~EWD/video-audio/video-audio.html))

Ken Schwaber und Jeff Sutherland, die Autoren des _Scrum Guide_, schreiben im Einleitungskapitel ihres Buches _Software in 30 Days_:

> You have been ill served by the software industry for 40 years—not purposefully, but inextricably. [...] In this part of the book, we investigate why software development has been so bad.

In seinem Vortrag [Preventing the Collapse of Civilization](https://www.youtube.com/watch?v=ZSRHeXYDLko) zeigt der Spieleentwickler Jonathan Blow auf, dass Wissen auch verlorengehen kann, und die Produktivität beim Programmieren rückläufig ist; trotz – oder wegen? – moderner Sprachen und Entwicklungswerkzeugen.