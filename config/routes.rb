RedisUiRails::Engine.routes.draw do
  root to: "dashboard#index"

  resources :instances, only: [:show]

  get "instance/:id/keys", to: "keys#show", as: :instance_keys
  get "instance/:id/key_search/new", to: "key_searches#new", as: :new_instance_key_search
  post "instance/:id/key_search", to: "key_searches#create", as: :instance_key_searches
  get "instance/:id/key_search/:key", to: "key_searches#show", as: :instance_key_search
  get "instance/:id/config", to: "configs#show", as: :instance_config
end
