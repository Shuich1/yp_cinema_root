all:
	@echo "make build - получение всех подмодулей."
	@echo "make start - запуск всех контейнеров."
	@echo "make createsuperuser - создание суперпользователя в панели Администратора"
	@echo "make research - запуск тестов производительности аналитических хранилищ"
	@echo "make stop - остановка всех контейнеров"
build:
	sudo git submodule update --init --recursive
	sudo git submodule update --remote
start:
	docker-compose up -f docker-compose.yml -f yp_cinema_ugc/mongo.docker-compose.yml --build
createsuperuser:
	docker-compose exec admin-django python manage.py createsuperuser
research:
	cd yp_cinema_ugc/research \
	&& docker-compose up -d --build \
	&& docker logs -f test_stand \
	&& docker-compose down -v
stop:
	docker-compose -f docker-compose.yml -f yp_cinema_ugc/mongo.docker-compose.yml down