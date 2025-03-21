.PHONY: create-super-user
create-admin-user:
	poetry run python manage.py createsuperuser

.PHONY: make-migrations
make-migrations:
	poetry run python manage.py makemigrations

.PHONY: migrate
migrate: make-migrations
	poetry run python manage.py migrate

.PHONY: start
start:
	poetry run python manage.py runserver