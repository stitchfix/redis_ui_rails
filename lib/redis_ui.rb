require "singleton"
require "rails"
require "active_model"
require "forwardable"
require "uri"
require "redis"

require "redis_ui/version"
require "redis_ui/redis_instance"
require "redis_ui/config"
require "redis_ui/engine"

module RedisUi
  def self.config
    @config ||= Config.new
  end

  def self.configure
    yield(config)

    config.ingest
    config.validate!
  end
end
