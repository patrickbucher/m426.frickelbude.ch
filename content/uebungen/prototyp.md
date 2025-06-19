+++
date = '2025-06-19T16:30:11+02:00'
title = 'Prototyp'
weight = 3
+++

In einer vergangenen Übung haben wir User Stories [geschrieben](/uebungen/user-stories/#1-stories-schreiben) und ihre Anzahl Story-Punkte [geschätzt](/uebungen/user-stories/#2-planning-poker). In dieser Übung sollen einige abgewandelte Stories als Prototyp umgesetzt werden.

## Anforderungen

In der Zwischenzeit wurden die Anforderungen überarbeitet, angepasst und auch etwas verallgemeinert:

1. Auf die Artikel im Warenkorb bzw. auf den darin aufkumulierten Gesamtbetrag können Rabatte abgezogen bzw. kann die Mehrwertsteuer aufgeschlagen werden, wodurch sich der Gesamtbetrag verändert. Die Ab- und Zuschläge können sich auf den Bruttowert oder auf eine Zwischensumme beziehen.
2. Mit den sogenannten Bundles wurde eine _rekursive Struktur_ geschaffen. Ein Bundle definiert neu nicht nur einen Mengenrabatt, sondern eine Reihe von Artikeln. Ein Bundle kann aber auch andere Bundles beinhalten.

Der Softwarearchitekt möchte wissen, ob diese Anforderungen überhaupt elegant und mit vertretbarem Aufwand umgesetzt werden können. Bevor das Team die User Stories überarbeitet, sollen Sie einen Prototyp hierzu erarbeiten.

## Entwurfsmuster

Da Sie mittlerweile mit [Entwurfsmustern](/essays/design-patterns) vertraut sind, sollen diese auch zum Einsatz kommen. Der Softwarearchitekt empfiehlt folgende Entwurfsmuster zum Umsetzen der oben genannten Anforderungen:

1. [Strategy](https://refactoring.guru/design-patterns/strategy): Die Auf- und Abschläge sollen als einzelne _Strategien_ umgesetzt werden. Auf einen Warenkorb soll eine Liste mit solchen Strategien angewendet werden können.
2. [Composite](https://refactoring.guru/design-patterns/composite): Ein Bundle besteht aus konkreten Artikeln und/oder aus weiteren Bundles. Damit wird eine baumartige Struktur aufgebaut, die auf der untersten Stufe als Blätter nur konkrete Artikel enthält, dazwischen aber auch als Knoten Bundles.

## Auftrag

1. Gehen Sie ihre User Stories und die oben beschriebenen Anforderungen durch. Erkundigen Sie sich bei allfälligen Verständnisfragen.
2. Lesen Sie die oben verlinkten Seiten zu den beiden Entwurfsmustern _Strategy_ und _Composite_ durch.
3. Setzen Sie ein TypeScript-Projekt mit dem Namen `cart-prototype` gemäss [Anleitung](/uebungen/hello-typescript/) auf.
4. Versuchen Sie die Anforderungen mithilfe der beiden Entwurfsmuster umzusetzen. Gehen Sie dabei gemäss _Test-Driven Development_ vor. Sie können auch zu zweit im _Pair Programming_ arbeiten.

Geben Sie einen Link auf ihr Repository in Teams ab. Bereiten Sie sich vor, den Zwischenstand der Arbeit vor der Klasse kurz und informell vorzustellen (keine Folien, nur Code und mündliche Erklärungen).