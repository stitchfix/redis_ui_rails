require 'rubygems/package_task'
require 'rspec/core/rake_task'
require 'stitch_fix/y/release_task'

include Rake::DSL

spec = eval(File.read('stitchfix-redis_ui_rails.gemspec'))
Gem::PackageTask.new(spec) {}
StitchFix::Y::ReleaseTask.new(spec)

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
