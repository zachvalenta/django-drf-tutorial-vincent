# what is this?

Following along to [Will Vincent DRF tutorial](https://learndjango.com/tutorials/official-django-rest-framework-tutorial-beginners).

## run locally

* install dependencies: `poetry install`
* run migrations: `make mig`
* create superuser: `make super`
* start dev server: `make srv`

```Makefile
======================================================================

🛠  UTILS

mig:        run migrations
super:      create superuser
srv:        run dev server

🖥  UI

ind:        open index page
admin:      open admin
api:        open DRF browsable API

📦 DEPENDENCIES

env:        show environment info
deps:       list prod dependencies
freeze:     convert lockfile to requirements.txt

======================================================================
```
