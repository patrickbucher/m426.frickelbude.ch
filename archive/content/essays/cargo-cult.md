+++
date = '2025-01-30T16:03:27+01:00'
title = 'Cargo Cult'
weight = 1
+++

Im zweiten Weltkrieg benutzten die amerikanischen Streitkräfte die Inseln der
Melanesier als Stützpunkt. Sie bauten einen Turm am Rande einer grossen Ebene.
Jemand kletterte auf diesen Turm und hörte zu, wie eine Holzkiste eigenartige
Geräusche von sich gab, worauf er Beschwörungen in eine muschelartige
Vorrichtung sprach.

Kurze Zeit später landete ein riesiger, lärmender Vogel auf der Ebene neben dem
Turm und liess Holzkisten liegen. Diese Kisten enthielten verschiedenste
Gegenstände, unter anderem auch essbare. Man gab den Melanesiern von den
Nahrungsmitteln, welche zwar ungewohnt schmeckten, aber dennoch sättigten und
die Strapazen des Jagens, Fischens und Sammels unnötig machten. Es musste sich
um _Manna_ halten: Brot vom Himmel.

Nach dem Ende des Krieges zogen sich die amerikanischen Streitkräfte von den
Inseln zurück und bauten ihre Vorrichtigungen ab. Es landeten keine riesigen
Vögel mehr auf den Inseln, und auch keine Kisten mit Lebensmitteln mehr. Doch
nach jahrelanger Versorgung mit Manna wollten die Melanesier nicht mehr jagen,
fischen oder sammeln.

So baute man sich eigene Türme aus Holz und Stroh, kletterte selber herauf, um
auf Geräusche aus Holzkisten zu lauschen und selber Beschwörungen in Muscheln zu
sprechen. Doch wollten keine riesigen Vögel landen. Nun baute man sich Modelle
der riesigen Vögel aus Holz und Stroh, um die echten Riesenvögel anzulocken,
doch sie kamen nicht. Schnell vergass man gänzlich um das Jagen, Fischen und
Sammeln und widmete sich nur noch dem _Cargo Cult_. Doch es landeten keine
reich gefüllten Holzkisten mehr auf den melanesischen Inseln.

Das Jagen, Fischen und Sammeln hatte man mittlerweile verlernt, sodass es bald
knapp wurde mit der Nahrung auf den Inseln, und die Melanesier hungers sterben
mussten. Schon blöd, diese Melanesier.

Melanie war eine sehr fleissige Studentin. Da sie berufsbegleitend Informatik
studierte, konnte sie das im Studium Gelernte immer sofort im Betrieb anwenden.
Zum Glück setzte die Hochschule voll auf Java, so wie man das in ihrem Betrieb
auch tat.

Heute arbeitet Melanie am Datenbankzugriff. Doch irgend etwas gefällt ihr an
dieser Methode nicht:

```java
public static void insertCustomer(Customer customer) {
    CustomerDBAccessor dbAccessor = new CustomerDBAccessor();
    dbAccessor.insert(customer);
}
```

Hatte nicht der Professor neulich etwas vom _dynamischen Nachladen von Klassen_
und dem _Class Loader_ gesprochen? Der hatte doch irgend etwas mit `forName`
gemacht. Etwa so?

```java
public static void insertCustomer(Customer customer) {
    Class dbAccessorClass = Class.forName("CustomerDBAccessor");
    CustomerDBAccessor dbAccessor = dbAccessorClass.newInstance();
    dbAccessor.insert(customer);
}
```

Ja, das wirkt viel professioneller! So programmieren die Profis Java. Jetzt muss
Melanie nur noch den ganzen bestehenden Code so anpassen, um die Anwendung auf
ein neues Level zu bringen.

Nur doof, dass ihre ignoranten Mitarbeiter keinen Sinn für Qualität haben und
nur blöde Fragen stellen, was denn jetzt besser sein soll als vorher. Die
studieren halt auch nicht Informatik. Sollen sie mal die gleichen Vorlesungen
besuchen wie Melanie, dann _könnte_ man im Team auf Augenhöhe reden. Aber so…

Doch Melanie ist selbstsicher und gibt das jetzt einfach mal als Standard vor!

## Fragen

1. Gibt es Gemeinsamkeiten im Verhalten der Melanesier und von Melanie?
2. Warum folgen Leute einem _Cargo Cult_?
3. Wo begegnet man sonst noch einem _Cargo Cult_ (Informatik, Alltag)?
4. Wie erkennt man, ob man selber einem _Cargo Cult_ folgt?
5. Wie kann man eine Organisation vom _Cargo Cult_ heilen?

{{% expand title="Antworten aus dem Unterricht" %}}
1. Gibt es Gemeinsamkeiten im Verhalten der Melanesier und von Melanie?
    - Beide ahmen etwas nach, was sie nicht verstehen.
    - Beide folgen einer offensichtlich erfolgreichen Autorität.
    - Ein gewohntes Verhaltensmuster wird durch ein neues, aber nicht
      funktionierendes ersetzt ‒ und stur durchgesetzt.
2. Warum folgen Leute einem _Cargo Cult_?
    - Weil sie den Zusammenhang zwischen einer Ursache und (erwünschten) Wirkung
      nicht verstehen.
    - Es ist bequemer, einem Beispiel zu folgen als selber zu denken.
    - Das Neue wird positiver bewertet als das Alte.
    - Man möchte sich verbessern, etwas verändern ‒ oder einfach dazugehören.
    - Man erkennt einen positiven Effekt, den man selber nachahmen möchte.
3. Wo begegnet man sonst noch einem _Cargo Cult_ (Informatik, Alltag)?
    - Beim Einsatz von KI, Blockchain und anderer Technologietrends oder Hypes.
    - Beim Nachahmen anderer Lernender oder Arbeitskollegen.
    - Beim unkritischen Befolgen von Tutorials.
    - Bei Glücksspielen wie Lotto, weil man nur die Gewinner sieht.
    - Beim Sport durch das Übernehmen irrelevanter Handlungsmuster.
4. Wie erkennt man, ob man selber einem _Cargo Cult_ folgt?
    - Kann man den Vorteil der neuen Lösung ‒ anderen und sich selber ‒ erklären?
    - Kann die Verbesserung anhand objektiver und messbarer Kriterien
      nachgewiesen werden?
    - Reagiert man emotional auf kritische Rückfragen?
    - Welche Rückmeldungen erhält man von anderen?
5. Wie kann man eine Organisation vom _Cargo Cult_ heilen?
    - Indem man dafür sorgt, dass Entscheidungen breit abgestützt und nicht
      durch einen einzelnen "Trendsetter" vorgegeben werden.
    - Indem man externe Experten dazuholt, gegen die niemand der Belegschaft
      voreingenommen ist.
    - Indem man eine transparente, offene Firmen-, Diskussions- und Fehlerkultur
      fördert.
    - Indem man sich untereinander austauscht, nach einem Konsens sucht und
      gemeinsam (gegen solche Kulte) auftritt. 
    - Indem man mit Fakten argumentiert (Daten zu objektiven/messbaren Kriterien
      sammeln).
{{% /expand %}}
