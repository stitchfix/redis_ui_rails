Rails.application.routes.draw do
  mount RedisUi::Engine => "/redis_ui"
end
