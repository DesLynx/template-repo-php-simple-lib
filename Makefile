PHPSTAN_FILE=phpstan.neon

.PHONY: build

build:
	composer install
	[ ! -f "$PHPSTAN_FILE" ] && printf "include:\n  - phpstan.neon.dist\n" > phpstan.neon