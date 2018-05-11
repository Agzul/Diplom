Rails.application.routes.draw do
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'

  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  delete 'logout' => 'user_sessions#destroy', :as => :logout

  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'

  resources :power_supplies
  resources :video_cards
  resources :cpus
  resources :motherboards
  resources :rams
  resources :hdds
  resources :ssds

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
