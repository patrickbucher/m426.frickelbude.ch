+++
date = '2025-05-21T14:56:42+02:00'
title = 'Design Patterns (Entwurfsmuster)'
weight = 6
+++

## Semantisch kompatibel; Implementierung inkompatibel

Betrachten wir das folgende Klassendiagramm, welches eine C#-Anwendung für geometrische Berechnungen zeigt:

![Klassendiagramm: Wie bringt man das Quadratische durch das Rechteckige?](/img/adapter-problem.png)

Das Hauptprogramm `Program` verwendet ein externes Paket für geometrische Berechnungen. Dessen `Calculator`-Klasse bietet statische Methoden an, womit sich die Fläche, der Umfang und die Diagonale von rechteckigen Objekten (die `Recangular`-Schnittstelle implementierend) berechnen kann. Hierzu wird eine konkrete Implementierung `Rectangle` angeboten.

Dummerweise verfügt die Anwendung bereits über eine andere Abstraktion: die `Square`-Klasse, welche das `Quadratic`-Interface implementiert.

Wir verwenden Quadrate mit nur einer Seitenangabe, doch das Geometrie-Paket kann nur mit Rechtecken mit zwei Seitenangaben (Höhe und Breite) umgehen. Da das Quadrat mathematisch ein Spezialfall eines Rechtecks ist, dies aber nicht in der Klassenhierarchie zum Ausdruck kommt, können wir den `Calculator` nicht mit Quadraten verwenden.

> **Problem**: Wie bringen wir das Quadratische durch das Rechteckige?

Dieses Problem, dass zwei Dinge, die zwar konzeptionell kompatibel, aber implementierungstechnisch inkompatibel sind, gibt es öfters in der Softwareentwicklung.

Und wie es für implementierungstechnische Probleme, die oft auftreten, Wiederverwendbarkeit gibt in der Form von Libraries und Frameworks, gibt es auch eine Wiederverwendbarkeit auf konzeptioneller Ebene. Diese nennt man _Entwurfsmuster_ oder _Design Patterns_.

## Lösungsrezepte für wiederauftretende Probleme

Das Konzept der Entwurfsmuster stammt ursprünglich aus der Architektur. Dort befasst man sich mit Fragen der folgenden Art:

> Wie kann ich den Grundriss eines Einfamilienhauses gestalten, damit jeder Raum von zwei Seiten her Lichteinfall hat?

Das Buch _A Pattern Language_ von Christopher Alexaner et. al. beschreibt erprobte Lösungen zu diesen wiederkehrenden Problemen. Es zeigt keine konkreten Baupläne, aber Skizzen für Baupläne, bei denen das besagte Problem elegant gelöst worden ist. Der Architekt kann das Muster auf sein konkretes Problem anwenden. (Das Wiederverwenden von konkreten Bauplänen käme dabei eher der Verwendung einer Library in der Softwareentwicklung gleich.)

Auf die Softwareentwicklung bezogen sind Entwurfsmuster Rezepte für Probleme, die immer wieder in ähnlicher Form auftauchen. Das Standardwerk zum Thema ist [Design Patterns. Elements of Reusable Object-Oriented Software](https://www.informit.com/store/design-patterns-elements-of-reusable-object-oriented-9780201633610) von Erich Gamma et. al. Darin sind erprobte Muster für immer wieder auftauchende Problemklassen in der objektorientierten Programmierung beschrieben.

Entwurfsmuster sind dabei nicht wiederverwendbare Codestücke, die man per Library oder Framework verteilen könnte, sondern Rezepte für Lösungen, die auf ein spezifisches Problem angewendet werden können.

Diese lassen sich nach Zweck einteilen:

- ***Creational Patterns***: _Erstellen_ von Objekten
    - Factory, Builder, Singleton
- ***Structural Patterns***: _Komposition_ von Klassen und Objekten
    - Adapter, Composite, Decorator
- ***Behavioral Patterns***: _Zusammenspiel_ von Objekten
    - Iterator, Observer, Strategy

Eine weitere Unterscheidung ist, wie die Muster arbeiten:

- ***Class Patterns***: klassenbasiert
    - Factory Method, Adapter
- ***Object Patterns***: objektbasiert
    - Builder, Singleton, Adapter, (die meisten)

Eine frei verfügbare Quelle zu diesem Thema ist [refactoring.guru](https://refactoring.guru/): eine Seite, die wir bereits zum Thema _Refactoring_ kennengelernt haben. Sie verfügbt auch über einen Katalog an [Design Patterns](https://refactoring.guru/design-patterns).

## Das Adapter-Pattern

Doch zurück zum ursprünglichen Problem. Wie bringen wir nun das Rechteckige durch das Quadratische? Mit einem [Adapter](https://refactoring.guru/design-patterns/adapter)!

> **Adapter** is a structural design pattern that allows objects with incompatible interfaces to collaborate.

Die Lösung besteht darin, einen Adapter zu implementieren, der einerseits kompatibel zum Ziel-Interface `Rectangular` ist, indem er dieses implementiert; und andererseits das bereits verwendete Interface `Quadratic` kapselt, womit die Operationen von `Rectangular` weiter an `Quadratic` delegiert werden können.

![Klassendiagramm: Das Adapter-Entwurfsmuster](/img/adapter-solution.png)

Damit können wir sowohl die bestehende Implementierung als auch die externe Library verwenden, ohne etwas an unserem Code zu _verändern_. Stattdessen _erweitern_ wir unseren Code um ein zusätzliches Interface, um die Kompatibilität zur Library gewährleisten zu können.

## Übungen

Eine TypeScript-Implementierung vom Rechteck-Quadrat-Problem, sowie weitere Übungen zum Thema, können im Repository [design-patterns](https://github.com/m426-2025/design-patterns) gefunden werden.