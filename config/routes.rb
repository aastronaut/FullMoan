Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'omniauth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do
    namespace :v1 do

      resources :sensors
      resources :types
      resources :vendors
    end
  end

  resources :sensors
  resources :vendors
  resources :types

end
