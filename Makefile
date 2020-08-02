.PHONY: test

help:
	@echo
	@echo "======================================================================"
	@echo
	@echo "🛠  UTILS"
	@echo
	@echo "mig:        run migrations"
	@echo "super:      create superuser"
	@echo "srv:        run dev server"
	@echo
	@echo "🖥  UI"
	@echo
	@echo "ind:        open index page"
	@echo "admin:      open admin"
	@echo "api:        open DRF browsable API"
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

mig:
	poetry run python manage.py migrate

super:
	poetry run python manage.py createsuperuser

srv:
	poetry run python manage.py runserver

ind:
	open http://localhost:8000/index

admin:
	open http://localhost:8000/admin

api:
	open http://localhost:8000/snippets

#
# 📦 DEPENDENCIES
#

env:
	poetry env info

deps:
	poetry show --tree --no-dev

freeze:
	poetry export -f requirements.txt > requirements.txt
