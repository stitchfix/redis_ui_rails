Rails.application.routes.draw do
  mount StitchFix::RedisUiRails::Engine => "/redis_ui"
end
