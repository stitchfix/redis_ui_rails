# frozen_string_literal: true

StitchFix::RedisUiRails.configure do |config|
  config.redis_instances = [
    {
      id: :dummy,
      name: "Dummy Redis",
      url: "test/url",
      enabled: true
    }
  ]
end
