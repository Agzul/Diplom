Rails.application.routes.draw do
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
