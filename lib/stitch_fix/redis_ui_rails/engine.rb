module StitchFix
  module RedisUiRails
    class Engine < ::Rails::Engine
      isolate_namespace StitchFix::RedisUiRails

      initializer :assets, group: :all do |app|
        config.assets.precompile << "stitch_fix/redis_ui_rails/application.css"
        config.assets.precompile << "stitch_fix/redis_ui_rails/application.js"
        config.assets.paths << root.join("assets", "stylesheets").to_s
      end
    end
  end
end
