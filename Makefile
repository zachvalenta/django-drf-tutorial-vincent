.PHONY: test

help:
	@echo
	@echo "======================================================================"
	@echo
	@echo "🛠  UTILS"
	@echo
	@echo "m-mig:      make migrations"
	@echo "mig:        run migrations"
	@echo "srv:        run dev server"
	@echo "ind:        open index page"
	@echo "admin:      open admin"
	@echo "api:        open DRF browsable API"
	@echo "todo:       view all todos"
	@echo
	@echo "📦 DEPENDENCIES"
	@echo
	@echo "env:        show environment info"
	@echo "deps:       list prod dependencies"
	@echo "freeze:     convert lockfile to requirements.txt"
	@echo
	@echo "======================================================================"
	@echo

#
# 🛠 UTILS
#

m-mig:
	poetry run python manage.py makemigrations snippets

mig:
	poetry run python manage.py migrate

srv:
	poetry run python manage.py runserver

ind:
	open http://localhost:8000/index

admin:
	open http://localhost:8000/admin

api:
	open http://localhost:8000/snippets

todo:
	rg -i -B 3 -A 3 todo *.py

#
# 📦 DEPENDENCIES
#

env:
	poetry env info

deps:
	poetry show --tree --no-dev

freeze:
	poetry export -f requirements.txt > requirements.txt
