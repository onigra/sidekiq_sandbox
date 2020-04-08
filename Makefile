up:
	docker-compose up redis console worker

irb:
	docker-compose run irb

down:
	docker-compose down

clean:
	@make down
	docker-compose rm
	docker volume rm sidekiq_sandbox_redis-data
	docker image rm sidekiq_sandbox_console
