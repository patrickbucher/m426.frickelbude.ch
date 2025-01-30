# Setup

Create Hugo site with module:

```sh
hugo new site m426.frickelbude.ch
cd m426.frickelbude.ch
hugo mod init m426.frickelbude.ch
```

Extend `hugo.toml`:

```toml
baseURL = 'https://m426.frickelbude.ch'
languageCode = 'de-ch'
title = 'Modul 426: Software mit agilen Methoden entwickeln'

[module]
[[module.imports]]
path = 'github.com/McShelby/hugo-theme-relearn'
```

Install dependencies:

```sh
hugo mod tidy
```
