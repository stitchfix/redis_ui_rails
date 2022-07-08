module RedisUi
  class DashboardController < ApplicationController
    def index
      @redis_instances = RedisUi.config.redis_instances
    end
  end
end
