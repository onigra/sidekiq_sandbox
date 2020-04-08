PROJECT_NAME := sidekiq_sandbox

up:
	docker-compose up redis console worker

irb:
	docker-compose run irb

down:
	docker-compose down

clean:
	@make down
	docker-compose rm
	docker volume rm $(PROJECT_NAME)_redis-data
	docker image rm $(PROJECT_NAME)_console $(PROJECT_NAME)_worker $(PROJECT_NAME)_irb
