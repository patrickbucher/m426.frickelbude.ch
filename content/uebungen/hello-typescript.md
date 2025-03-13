+++
date = '2025-03-13T12:55:03+01:00'
title = 'Hello, Typescript!'
+++

Hier ist beschrieben, wie man ein TypeScript-Projekt mit Kompilierung
(TypeScript zu JavaScript), Formatierung, Linting und Testing aufsetzt.

## Voraussetzungen

Du hast die [Git Bash](https://git-scm.com/downloads/win) für Windows oder für
Linux/macOS Git installiert.

Du hast [Node.js](https://nodejs.org/en/download) in einer aktuellen Version
(>= 22) installiert, was du folgendermassen prüfen kannst:

    $ node --version
    v.22.13.1

Du hast den TypeScript-Compiler `tsc` in einer aktuellen Version (>=5.7.0)
installiert:

    $ tsc --version
    Version 5.7.3

Ansonsten installiere es folgendermassen:

    $ npm install --global tsc

## Projekt

Öffne die Git-Bash (oder eine vergleichbare Shell) und navigiere mit `cd` in
das Verzeichnis, in welchem die Übungen für dieses Modul ablegen willst.

Erstelle ein neues Verzeichnis namens `hello-typescript`:

    $ mkdir hello-typescript

Wechsle in das neu erstellte Verzeichnis:

    $ cd hello-typescript

Initialisiere nun ein Node-Projekt mit Standardeinstellungen:

    $ npm init --yes

Hierdurch wird eine Datei `package.json` erstellt.

Erstelle nun zwei Verzeichnisse namens `src` und `dist` mit je einer leeren Datei namens `.keep`:

    $ mkdir src dist
    $ touch src/.keep dist/.keep

Dadurch können die (sonst leeren) Verzeichnisse mit Git verwaltet werden.

## Repository

Initialisiere ein Git-Repository:

    $ git init

Füge die Datei `package.json` sowie die beiden Verzeichnisse dem Repository hinzu:

    $ git add package.json src dist
    $ git commit -m 'initial commit: project setup'

Lege eine Datei namens `.gitignore` mit folgendem Inhalt an:

    dist/**/*.js

Nimm die Datei ebenfalls ins Repository auf:

    $ git add .gitignore
    $ git commit -m 'ignore compiled JavaScript code'

Es empfiehlt sich, auf GitHub ein gleichnamiges Repository zu erstellen und es
auf den Server zu kopieren. (Die Instruktionen hierzu erhälst du, wenn du das
Repository erstellt hast.)

## TypeScript

Erstelle eine Datei namens `tsconfig.json` mit folgendem Inhalt:

```json
{
  "compilerOptions": {
    "target": "ES2024",
    "outDir": "./dist",
    "rootDir": "./src",
    "module": "CommonJS"
  }
}
```

Damit wird der TypeScript-Code aus `src/` zu JavaScript-Code nach `dist/`
kompiliert. Der resultierende Code verwendet den Standard _ECMAScript 2024_ und
das _CommonJS_-Modulsystem, welches bei Node.js standardmässig zum Einsatz
kommt.

Erstelle nun eine Datei namens `src/index.ts` mit folgendem Inhalt:

```typescript
let lang: string = "TypeScript";
let greeting: string = `Hello, ${lang}!`;
console.log(greeting);
```

Der TypeScript-Code reichert das ansonsten dynamisch typisierte JavaScript um
_Typannotationen_ an.

Kompiliere den Code nun von TypeScript nach JavaScript:

    $ tsc

Dadurch sollte eine Datei `dist/index.js` mit folgendem Inhalt erstellt worden sein:

```javascript
let lang = "TypeScript";
let greeting = `Hello, ${lang}!`;
console.log(greeting);
```

Dadurch sind die Typannotationen verschwunden.

Führe den kompilierten Code nun aus:

    $ node dist/index.js
    Hello, TypeScript!

## Formatierung

Installiere das Formatierungswerkzeug _Prettier_ global:

    $ npm install --global prettier

Formatiere nun damit alle Dateien im lokalen Verzeichnis:

    $ prettier -w .

Dadurch wird der Code einheitlich formatiert.

## Linting

Mithilfe eines _Linters_ ("Entfussler") lassen sich potenzielle Probleme im
Programmcode erkennen und teilweise sogar automatisch korrigieren.

Installiere _ESLint_ als Entwicklungs-Abhängigkeit (_development dependency_):

    $ npm install --save-dev eslint

Initialisiere die projektweiten Einstellungen nun folgendermassen:

    $ npm init @eslint/config@latest

Beantworte die Fragen folgendermassen:

- ESLint soll zur Syntaxprüfung _und_ Problemfindung verwendet werden.
- Es sollen JavaScript-Module (`import`/`export`) verwendet werden. (Das
  konfigurierte _CommonJS_ betrifft nur den Ausgabecode!)
- Es soll kein Framework zum Einsatz kommen.
- Das Projekt verwendet TypeScript.
- Der Code soll im Browser ausgeführt werden.
- Die Abhängigkeiten (`@eslint/js`, `typescript-eslint`) sollen installiert werden.
- Als Paketmanager kommt `npm` zum Einsatz.

Führe nun ESLint auf den bestehenden Code aus:

    $ npx eslint src/index.js

Betrachte dir die gemeldeten Probleme und korrigiere sie, sodass ESLint beim
nächsten Durchlauf nichts mehr zu beanstanden hat.

## Testing

Installiere das Test-Framework _Jest_:

    $ npm install --save-dev jest ts-jest @types/jest

Dadurch wird Jest mitsamt TypeScript-Unterstütunz und Typannotationen installiert.

Erstelle eine Datei `jest.config.js` mit folgendem Inhalt:

```javascript
export const roots = ["src"];
export const transform = { "^.+\\.tsx?$": "ts-jest" };
```

Dadurch werden die Testfälle im Quellcodeverzeichnis `src` gesucht und wie gewünscht umgewandelt.

Erstelle eine Datei `src/rounding.ts` mit folgendem Inhalt:

```typescript
export function roundTo(x: number, granularity: number): number {
  const factor = 1.0 / granularity;
  return Math.round(x * factor) / factor;
}
```

Die Funktion rundet eine gegebene Zahl `x` auf eine gewünschte Genauigkeit.
Beispielsweise ergibt `roundTo(10/3, 0.05)` den Wert `3.35`.

Erstelle nun eine Datei `src/rounding.test.ts` mit folgendem Inhalt:

```typescript
import { roundTo } from "./rounding";

test("check round to nickels", () => {
  expect(roundTo(10.0 / 3.0, 0.05)).toBe(3.35);
});
```

Führe den Test nun folgendermassen aus:

    $ npx jest

Verändere den Testfall nun, sodass er den Wert `3.33` erwartet (`toBe(3.33)`).

Führe den Test erneut aus:

    $ npx jest

Betrachte die Ausgabe und versuche sie zu verstehen.

Korrigiere den Test anschliessend wieder.

Schreibe zwei weitere Testfälle für "cents" und "dimes", welche die Rundung auf
die Granularität `0.01` bzw. `0.1` testen. Führe die Testfälle aus.

Füge am Schluss alle Dateien dem Repository hinzu und pushe es auf GitHub.

## Visual Studio Code

Das beschriebene Setup funktioniert unabhängig von einer Entwicklungsumgebung.
Wer etwas mehr Komfort haben möchte, kann mit [Visual Studio
Code](https://code.visualstudio.com/) arbeiten.

Hierzu sind folgende Erweiterungen hilfreich:

- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)

Diese Erweiterungen arbeiten mit den installierten Node-Packages (`prettier`,
`eslint`) zusammen.

## Zusatzaufgabe: Pythagoräische Tripel

Erstelle eine neue Datei `src/pythagoras.ts` mit einer Funktion `isTriplet`,
welche drei Parameter `a`, `b` und `c` erwartet. Die Funktion soll `true`
zurückgeben, wenn die Gleichung `a²+b²=c²` erfüllt ist, und `false`
andernfalls.

Erstelle nun einen Testfall in `src/pythagoras.test.ts`, welche je einen
positiven (Tipp: 3²+4²=5²) und einen negativen Test enthält. Führe den Test aus
und prüfe, ob `isTriplet` wie gewünscht funktioniert.

Passe nun `src/index.ts` so an, dass es weitere pythagoräische Triplets findet.
Tipp: Verwende drei verschachtelte Schleifen, welche jeweils die Variable `a`,
`b`, oder `c` hochzählen und die Zahlenkombination durchprobieren (_Brute
Force_). Gebe alle gefundenen Triplets aus.

