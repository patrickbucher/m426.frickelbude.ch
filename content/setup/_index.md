+++
title = "Setup"
weight = 5
+++

> Wenn ich ab der zweiten Modulwoche `git: command not found` höre, beantrage
> ich die Wiedereinführung der Prügelstrafe!
> 
> — Patrick P. Bucher, diplomierter Pädagoge

## Git

Falls Sie es noch nicht gemacht haben: installieren Sie Git von
[git-scm.org](https://git-scm.com/downloads) für Ihr Betriebssystem.

Konfigurieren Sie Git anschliessend folgendermassen:

```sh
git config --global user.email VORNAME_NACHNAME@sluz.ch
git config --global user.name 'VORNAME NACHNAME'
```

Führen Sie den Befehl `git --version` auf der Git Bash aus. Dieser sollte `git
version 2.48.1` oder eine ähnliche Nummer (`2.x.y`) ausgeben.

## Node.js und NPM

Installieren Sie eine aktuelle LTS-Version von [Node.js](https://nodejs.org/en/)
mit den vorgeschlagenen Standardeinstellungen.

Führen Sie den Befehl `node --version` in der Git Bash aus. Dieser sollte
`v22.13.1` oder eine höhere Nummer ausgeben.

Führen Sie den Befehl `npm --version` in der Git Bash aus. Dieser sollte
`10.9.2` oder eine höhere Nummer ausgeben.

### TypeScript

Installieren Sie die aktuelle Version von TypeScript _global_:

```bash
npm install --global typescript
```

Führen Sie den Befehl `tsc --version` in der Git Bash aus. Dieser sollte
`Version 5.7.3` oder eine höhere Nummer ausgeben.
