+++
date = '2025-04-02T21:18:03+02:00'
title = 'Pair Programming'
weight = 4
+++

## Kent Beck: Extreme Programming (1999/2004)

_Freie Übersetzung von **Pair Programming** auf S. 42-44_

Schreibe alle produktiven Programme zu zweit an einem Computer sitzend. Richte
den Computer so ein, dass die Partner bequem nebeneinander sitzen können.
Schiebe die Tastatur und die Maus hin und her, damit es dir bequem ist beim
Tippen. _Pair Programming_ ist ein Dialog zwischen zwei Personen, die
gleichzeitig programmieren (und analysieren und entwerfen und testen) und
versuchen besser zu programmieren. _Pair Programmer_:

- Halten einander gegenseitig bei der Arbeit.
- Machen Brainstorming über die Verfeinerung des Systems.
- Klären Ideen.
- Ergreifen die Initiative, wenn der Partner festhängt, und vermeiden so
  Frustration.
- Ziehen einander zur Rechenschaft über die Teampraktiken.

_Pairing_ heisst nicht, dass man nicht alleine denken darf. Leute brauchen
beides: Begleitung und Privatsphäre. Wenn du alleine an einer Idee zu arbeiten
brauchst, dann mache das. Komme anschliessend zurück und melde dich bei deinem
Team. Du kannst auch alleine einen Prototyp schreiben und dich dabei trotzdem
ans _Pairing_ halten. Dies soll jedoch keine Ausrede sein, ausserhalb des Teams
zu agieren.  Wenn du fertig bist mit dem Entdecken, bringe deine resultierende
Idee und nicht den resultierenden Code zurück ins Team. Mit einem Partner kannst
du es dann schnell neu umsetzten. Das Ergebnis wird so von einem grösseren
Personenkreis verstanden, was dem Projekt als Ganzes hilft.

_Pair Programming_ ist ermüdend aber befriedigend. Die meisten Programmierer
können nicht mehr als fünf oder sechs Stunden pro Tag _Pair Programming_
betreiben. Nach einer solchen Woche ist man bereit für ein entspanntes
Wochenende weg von der Arbeit. Ich habe beim _Pairing_ eine Flasche Wasser neben
mir. Das ist gut für meine Gesundheit und erinnert mich schliesslich daran, eine
Pause zu machen. Dank dieser Pausen bleibe ich den ganzen Tag frisch.

Rotiere die Paare häufig. Einige Teams berichten von guten Ergebnissen wenn sie
auf einen Timer achten, der sie daran erinnert, die Partner jede Stunde (bzw.
jede halbe Stunde bei schwierigen Problemen) auszutauschen. Ich glaube nicht,
dass ich das mögen würde, aber ich habe es nie ausprobiert. Ich programmiere
gerne nach ein paar Stunden oder nach natürlichen Pausen mit jemand anderem.

### _Pairing_ und Diskretionsabstand

Eine Angelegenheit, die auftritt und eines Kommentars bedarf, ist der enge
Kontakt beim _Pair Programming_. Verschiedene Personen und Kulturen fühlen sich
mit einem unterschiedlichen Mass an persönlichem Raum wohl. _Pairing_ mit einem
Italiener, der am besten kommuniziert, wenn er sehr nahe ist, ist komplett
anders als _Pairing_ mit einem Dänen, der gerne etwas mehr [_"a few feet"_]
persönlichen Raum benötigt. Wenn du dir dieser Unterschiede nicht bewusst bist,
kann es äusserst unbequem werden. Ein Diskretionsabstand muss von beiden
Parteien respektiert werden, damit es gut funktioniert.

Persönliche Hygiene und Gesundheit sind wichtige Themen beim _Pairing_.
Verdecke deinen Mund, wenn du hustest. Erscheine nicht zur Arbeit, wenn du krank
bist. Vermeide starke Parfums, welche deinen Partner stören könnten.

Es fühlt sich gut an, effektiv zusammenzuarbeiten. Es kann für einige eine neue
Erfahrung am Arbeitsplatz sein. Wenn Programmierer emotional nicht reif genug
sind, um Zuspruch von Zuneigung zu unterscheiden, kann die Arbeit mit einer
Person des anderen Geschlechts sexuelle Gefühle hervorbringen, die nicht im
besten Interesse des Teams liegen. Wenn solche Gefühle beim _Pairing_ entstehen
sollten, unterlasse das _Pairing_ mit dieser Person bis du den Umgang damit
geklärt hast. Auch wenn diese Gefühle gegenseitig sein sollten, dürften
entsprechende Handlungen dem Team schaden. Wenn ihr eine intime Beziehung
eingehen wollt, sollte jemand der beiden das Team verlassen um eine persönliche
Beziehung im Privaten zu unterhalten, ohne die Kommunikation im Team mit
sexuellen Untertönen zu verwirren. Idealerweise sollten sich Gefühle am
Arbeitsplatz auf die Arbeit beziehen.

Es ist wichtig, individuelle Unterschiede beim Pair Programming zu
respektieren. Auf der Abbildung sieht man, dass der Mann näher zu der Frau
gerückt ist, als es für sie angenehm ist. Keine der beiden involvierten
Personen trifft in dieser Situation die besten technischen Entscheidungen,
obwohl beiden nicht bewusst sein dürfte, was die Ursache für ihr Unwohlsein
gerade sein könnte.

Wenn du dich unwohl dabei fühlst mit einem anderen Teammitglied _Pair
Programming_ zu betreiben, dann sprich mit einer Person deines Vertrauens
darüber – mit einem respektierten Teammitglied, mit einem Vorgesetzten oder mit
jemandem aus der Personalabteilung. Wenn es dir dabei unwohl ist, dann
funktioniert das Team nicht optimal. Es ist gut möglich, dass sich auch andere
dabei unwohl fühlen.

![Pair Programming ohne Diskretionsabstand](/img/personal-space.jpg)

### Verständnisfragen

1. Wann, wie lange und mit wem sollte _Pairing_ stattfinden?
2. Unter welchen Umständen soll man auch alleine programmieren?
3. Welche Probleme können auf menschlicher Ebene auftreten?

## Robert C. Martin: Clean Agile (2019)

_Freie Übersetzung von **Technical Practices** auf S. 127-131_

Die [technische] Praxis des _Pair Programmings_ sah sich über die Jahre einer
Menge an Kontroversen und Fehlinformation ausgesetzt. Viele Leute reagieren
negativ auf die Idee, dass zwei (oder mehrere) Personen produktiv am selben
Problem arbeiten können.

Zunächst einmal ist _Pairing_ optional. Niemand sollte dazu gezwungen werden.
Weiter findet _Pairing_ nur periodisch statt. Es gibt viele gute Gründe dafür,
von Zeit zu Zeit alleine zu programmieren. Ein Team sollte ungefähr 50% der Zeit
_Pair Programming_ betreiben. Die genaue Zahl ist nicht so wichtig. Es kann auch
nur 30% oder aber gleich 80% der Zeit sein. Grundsätzlich ist das eine
Entscheidung jedes Einzelnen und des Teams.

### Was ist _Pairing_?

Von _Pairing_ spricht man, wenn zwei Personen gemeinsam an einem einzelnen
Programmier-Problem arbeiten. Das Paar kann zusammen am gleichen Computer
arbeiten und dabei den Bildschirm, die Tastatur und die Maus teilen. Sie können
aber auch an zwei [übers Netzwerk] miteinander verbundenen Computern arbeiten,
solange sie den gleichen Code sehen und bearbeiten. Letzteres funktioniert sehr
gut mit bekannter _Screen-Sharing_-Software. Diese Software erlaubt es den
Partnern auch, sich an entfernten Orten aufzuhalten, solange sie eine gute
Daten- und Audio-Verbindung haben.

Die Personen, die sich zum _Pairing_ treffen, nehmen manchmal verschiedene
Rollen ein. Jemand kann der _Driver_ und die andere Person der _Navigator_ sein.
Der _Driver_ hat die Tastatur und die Maus; der _Navigator_ hat eine längere
Perspektive und gibt Empfehlungen ab. Eine andere Rollenverteilung ist, dass der
eine Programmierer einen Test schreibt, und der andere Programmierer diesen zum
Laufen bringt und dann den nächsten Test schreibt, den der erste Programmierer
dann zum Laufen bringen soll. Dies wird manchmal als _Ping-Pong_ bezeichnet.

Meistens gibt es aber gar keine Rollen. Die Programmierer sind einfach
gleichgestellte Autoren, welche sich Maus und Tastatur in [enger] Zusammenarbeit
teilen.

_Pairing_ wird nicht geplant. Paare bilden und trennen sich nach den Präferenzen
der Programmierer. Manager sollten nicht versuchen _Pairing_-Pläne oder
Paar-Einteilungen zu erstellen.

Paare sind grundsätzlich kurzlebig. Eine _Pairing_-Session kann einen ganzen Tag
einnehmen, dauert aber meistens nicht länger als eine Stunde oder vielleicht
zwei. Nur schon _Pairing_ von 15 bis 30 Minuten kann hilfreich sein.

[User] Stories werden nicht einem Paar zugeordnet. Einzelne Programmierer (und
nicht Paare) sind verantwortlich für das Abschliessen von Stories. Eine Story
dauert meistens wesentlich länger als eine _Pairing_-Session.

Im Verlauf einer Woche wird jeder Programmierer etwa die Hälfte seiner
_Pairing_-Zeit auf eigene Aufgaben verwenden, wobei er andere zur Hilfe
beizieht. Die andere Hälfte der _Pairing_-Zeit wird er darauf verwenden, anderen
bei ihren Aufgaben zu helfen.

Senior-Programmierer sollten öfters Paare mit Junior-Programmierer statt mit
anderen Senior-Programmierern bilden. Junior-Programmierer sollten öfters
Senior-Programmierer als andere Junior-Programmierer um Hilfe bitten.
Programmierer mit Spezialgebieten sollten einen bedeutenden Anteil ihrer
_Pairing_-Zeit mit Programmierern ausserhalb ihres Spezialgebiets verbringen.
Das Ziel ist die Verbreitung und nicht die Konzentration von Wissen.

### Warum _Pairing_?

_Pairing_ wird betrieben, um dabei als Team zu wirken. Die Mitglieder eines
Teams arbeiten nicht isoliert voneinander, sondern arbeiten im Sekundentakt
zusammen. Wenn ein Teammitglied ausfällt, schliessen die anderen Teammitglieder
diese Lücke und machen weiterhin Fortschritte in Richtung des Ziels.

_Pairing_ ist bei weitem die beste Möglichkeit um Wissen unter Teammitgliedern
auszutauschen und um die Bildung von "Wissenssilos" zu verhindern. Es ist der
beste Weg um sicherzustellen, dass niemand im Team unersetzlich ist.

Viele Teams haben berichtet, dass _Pairing_ die Fehlermenge reduziert und die
Qualität des Designs verbessert. Das dürfte in den meisten Fällen wahr sein. Es
ist grundsätzlich besser, mehr als ein Augenpaar auf ein bestimmtes Problem zu
richten. Tatsächlich haben viele Teams Code-Reviews durch _Pairing_ ersetzt.

### _Pairing_ als Code-Review

_Pairing_ ist eine Form des Code-Reviews mit einem bedeutenden Vorteil. Die
Programmierer eines Paares sind gemeinsame Autoren während des _Pairings_. Sie
betrachten alten Code und prüfen ihn, doch geschieht dies mit der Absicht, neuen
Code zu schreiben. Dadurch ist das Review nicht nur eine statische Prüfung um
sicherzustellen, dass die Programmierrichtlinien des Teams eingehalten werden,
sondern ein _dynamisches Review_ des aktuellen Zustand des Codes aus der
Perspektive, wie der Code in naher Zukunft aussehen sollte.

### Und was ist mit den Kosten?

Es ist schwierig, die Kosten vom _Pairing_ zu messen. Die direkten Kosten liegen
darin, dass zwei Leute am gleichen Problem arbeiten. Es sollte offensichtlich
sein, dass dies den Aufwand zum Lösen des Problems _nicht_ verdoppelt; dennoch
führt es zu Mehrkosten. Verschiedene Studien sind zum Schluss gekommen, dass die
direkten Kosten ungefähr 15% betragen. Anders gesagt: Es würde 115 Programmierer
im _Pairing_ benötigen um die Arbeit von 100 einzelnen Programmierern zu leisten
(ohne Code-Review).

Unter der naiven Annahme, dass ein Team ca. 50% der Zeit paarweise arbeitet,
würde die Einbusse etwas weniger als 8% betragen. Da aber andererseits
_Pairings_ Code-Reviews ersetzen, ergibt sich daraus wahrscheinlich gar keine
Produktivitätseinbusse.

Weiter muss der Nutzen des gegenseitigen Wissensaustauschs und der intensiven
Zusammenarbeit beachtet werden. Diese Vorteile sind nicht einfach zu
quantifizieren, fallen aber wahrscheinlich bedeutend aus.

Gemäss meiner Erfahrung und der Erfahrung vieler anderer, die _Pairing_
betreiben, sofern es informell und von den Programmierern gesteuert stattfindet,
ist _Pairing_ für das gesamte Team sehr hilfreich.

### Nur zwei?

Das Wort "Paar" impliziert, dass nur zwei Programmierer in einer
_Pairing_-Session involviert sein können. Auch wenn das normalerweise zutrifft,
soll das keine Regel sein. Manchmal entscheiden sich drei, vier oder mehr
Programmierer zur Zusammenarbeit an einem bestimmten Problem. (Wie gesagt liegt
das im Ermessen der Programmierer.) Dieser Vorgang wird manchmal als _"Mob
Programming"_ bezeichnet.

### Management

Programmierer fürchten oft, dass die Manager _Pairing_ missbilligen und sogar
verlangen, Paare aufzubrechen um keine [weitere] Zeit zu verschwenden. Ich habe
das noch nie beobachtet. In dem halben Jahrhundert, in dem ich Code schreibe,
habe ich nie die Intervention eines Managers auf einer solchen tiefen Ebene
gesehen. Nach meiner Erfahrung freuen sich Manager darüber, Programmierer beim
Zusammenarbeiten zu sehen. Es erweckt den Eindruck, dass Arbeit erledigt wird.

Falls du aber selber ein Manager bist, der dazu neigt, beim _Pairing_
einzugreifen, weil du glaubst, dass es ineffizient sei, dann vergiss diese Sorge
und lasse die Programmierer damit umgehen. Denn sie sind schlussendlich die
Experten. Und falls du ein Programmierer bist, dem der Manager das _Pairing_
untersagt hat, erinnere den Manager daran, dass du der Experte [auf diesem
Gebiet] bist, und darum du (und nicht der Manager) für die Arbeitsweise
verantwortlich bist.

Schlussendlich sollte man niemals um Erlaubnis fürs _Pairing_ fragen. Oder fürs
Testen [mit automatischen Tests]. Oder fürs Refactoring. Oder… Du bist der
Experte. Du entscheidest.

### Verständnisfragen

1. Welche mögliche Rollenverteilungen gibt es beim _Pairing_?
2. Welche Vorteile hat das _Pairing_ gegenüber dem Programmieren als Einzelperson?
3. Wie soll das _Pairing_ im Team organisiert werden?

## Weiterführende Fragen

1. Welche Unterschiede und Gemeinsamkeiten gibt es in den Ansichten von Kent
   Beck und Robert C. Martin zum Pair Programming?
2. Welche der beiden Haltungen – die von Kent Beck oder die von Robert C.
   Martin – sagt Ihnen mehr zu?
