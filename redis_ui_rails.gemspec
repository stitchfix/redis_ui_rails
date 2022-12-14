require "./lib/redis_ui_rails/version"

Gem::Specification.new do |spec|
  spec.name = "redis_ui_rails"
  spec.version = RedisUiRails::VERSION
  spec.authors = ["Stitch Fix Engineering", "Adam Steel"]
  spec.email = ["opensource@stitchfix.com", "adam.steel@stitchfix.com"]
  spec.homepage = "https://github.com/stitchfix/redis_ui_rails"
  spec.summary = "A drop-in Rails UI for Redis."
  spec.license = "MIT"

  spec.files = `git ls-files`.split("\n")
  spec.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 6.1.5.1"
  spec.add_dependency "sprockets", ">= 3.7.2"
  spec.add_dependency "sprockets-rails"
  spec.add_dependency "redis"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "standardrb"
  spec.add_development_dependency "rspec_junit_formatter"

  # For Dummy Rails app tests
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "webdrivers"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "puma"
  spec.add_development_dependency "net-smtp"
  spec.add_development_dependency "mock_redis"
end
