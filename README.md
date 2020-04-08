## start redis & web console

```sh
docker-compose up
```

## start sidekiq

```sh
gem install sidekiq
sidekiq -r ./worker/worker.rb -C ./worker/sidekiq.yml
```

## enqueue


```rb
# irb
require './worker/worker.rb'
TestWorker.perform_async
```
