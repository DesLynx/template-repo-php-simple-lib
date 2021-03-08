# php-repo-template
Template repository to bootstrap a new php repo with base CI tools

PHP ^7.4 or ^8.0 enforce by **composer.json**

## Installation
In order for this package to work, you have to make sure following tools are discoverable on the command-line:
- php
- composer
- git

```shell script
php --version && composer --version && git --version
```

Change the namespace in the psr-4 autoload rule in **composer.json** :
```json
{
  "...": "...",
  "autoload": {
    "psr-4": {
      "MyNamespace\\": "src/"
    }
  },
  "....": "...."
}
``` 

Install the CI tools :
```shell script
make build
```

## CI tools

* Composer scripts :
    * `cs-fix` to fix the coding standard errors
    * `cs-lint` to check the coding standard without fixing them
    * `stan` run PhpStan over **src/** and **tests/**
    * `test` regenerate autoload files then run PHPUnit for **tests/**
    * `ci` run in chain `cs-lint`, `stan` and `test`
    
* GrumPHP :
    * keyword blacklist
    * commit message
    * composer script `ci`

* PhpStan
    * Base configuration in **phpstan.neon.dist**
    * Configuration override via **phpstan.neon** (not tracked in Git)
    * Existant empty baseline
    * Level 8
    * Extension-installer
    * PHPUnit extension

* PHPUnit
    * Version 9

* PHP CSfixer

* Roave Security advisories
