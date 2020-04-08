#!usr/bin/ruby

# Set external encoding to avoid invalid byte sequence when displaying unicode
Encoding.default_external = Encoding::UTF_8

require 'delegate'
require 'sidekiq'
require 'set'
require 'sidekiq/web'

settings = { url: "redis://redis:6379" }

Sidekiq.configure_client do |config|
  config.redis = settings
end

run Sidekiq::Web
