setup:
	cp env.sample .env
config:
	docker-compose config
up:
	docker-compose up -d
down:
	docker-compose down
bash:
	docker-compose exec client bash
