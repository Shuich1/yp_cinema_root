all:
	@echo "make build - получение всех подмодулей."
	@echo "make start - запуск всех контейнеров."
build:
	sudo git submodule update --init --recursive
start:
	docker-compose up --build
