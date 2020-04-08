# Sidekiq sandbox

## start redis & web console

```sh
make up
```

## start irb

```sh
make irb
```

## enqueue

```rb
# make irb
TestWorker.perform_async
```

## down

```sh
make down
```

## cleanup project resources

```sh
make clean
```
