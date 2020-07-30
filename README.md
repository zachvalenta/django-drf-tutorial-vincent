# what is this?

Following along to [Will Vincent DRF tutorial](https://learndjango.com/tutorials/official-django-rest-framework-tutorial-beginners).

## run locally

* install dependencies: `poetry install`
* make migrations: `make m-mig`
* run migrations: `make mig`
* start dev server: `make srv`

```Makefile
======================================================================

🛠  UTILS

m-mig:      make migrations
mig:        run migrations
srv:        run dev server
ind:        open index page
todo:       view all todos

📦 DEPENDENCIES

env:        show environment info
deps:       list prod dependencies
freeze:     convert lockfile to requirements.txt

======================================================================
```
