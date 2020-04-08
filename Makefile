up:
	docker-compose up

down:
	docker-compose down

clean:
	@make down
	docker-compose rm
	docker volume rm sidekiq_sandbox_redis-data
	docker image rm sidekiq_sandbox_console
