require 'sidekiq'

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://127.0.0.1:56379' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://127.0.0.1:56379' }
end

class TestWorker
  include Sidekiq::Worker

  def perform
    puts "aaaaaaaaaaaaaa"
    puts "bbbbbbbbbbbbbb"
    puts "cccccccccccccc"
  end
end
