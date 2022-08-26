module RedisUiRails
  class Instance < Struct.new(:config_redis_instance)
    class << self
      def find(id)
        _instance = all.detect { |obj| id.to_s == obj.id.to_s }

        raise InstanceMissing.new(
          "Instance with id '#{id}' not found. Options are: #{Instance.all.map(&:id)}"
        ) if _instance.nil?

        _instance
      end

      def all
        @_all ||= RedisUiRails.config.redis_instances.map { |instance| new(instance) }
      end
    end

    delegate :name, :id, :url, :resource_links, to: :config_redis_instance
    delegate :randomkey, :info, to: :redis

    private

    def redis
      @_redis ||= Redis.new(url: url(unredacted: true))
    end
  end
end
