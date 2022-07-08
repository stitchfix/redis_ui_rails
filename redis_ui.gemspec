require_relative "lib/redis_ui/version"

Gem::Specification.new do |spec|
  spec.name = "redis_ui"
  spec.version = RedisUi::VERSION
  spec.authors = ["Adam Steel"]
  spec.email = ["adam.steel@stitchfix.com"]
  spec.summary = "A UI for Stitch Fix Redis."

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 6.1.5.1"
  spec.add_dependency "sprockets", ">= 3.7.2"
  spec.add_dependency "sprockets-rails"
  spec.add_dependency "redis"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  # For Dummy Rails app tests
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "webdrivers"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "puma"
  spec.add_development_dependency "net-smtp"
end
