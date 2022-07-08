module RedisUi
  class Engine < ::Rails::Engine
    isolate_namespace RedisUi

    initializer :assets, group: :all do |app|
      config.assets.precompile << "redis_ui/application.css"
      config.assets.precompile << "redis_ui/application.js"
      config.assets.paths << root.join("assets", "stylesheets").to_s
      config.assets.paths << root.join("assets", "javascripts").to_s
    end
  end
end
