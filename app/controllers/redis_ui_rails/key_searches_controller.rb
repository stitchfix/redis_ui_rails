module RedisUiRails
  class KeySearchesController < ApplicationController
    def new
      @instance = Instance.find(params[:id])
      @sample_keys = 50.times.map { @instance.randomkey }.uniq
    end

    def create
      @instance = RedisUiRails.config.redis_instances.detect { |obj| params[:id].to_s == obj.id.to_s }

    end

    def show

    end
  end
end
