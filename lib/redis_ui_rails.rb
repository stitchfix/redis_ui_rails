require "singleton"
require "rails"
require "active_model"
require "forwardable"
require "uri"
require "redis"

require "stitch_fix/redis_ui_rails/version"
require "stitch_fix/redis_ui_rails/redis_instance"
require "stitch_fix/redis_ui_rails/config"
require "stitch_fix/redis_ui_rails/engine"

module StitchFix
  module RedisUiRails
    def self.config
      @config ||= Config.new
    end

    def self.configure
      yield(config)

      config.ingest
      config.validate!
    end
  end
end
