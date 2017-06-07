Rails.application.routes.draw do
  root 'front_pages#home'
  get 'about', to: 'front_pages#about'
  get 'pricing', to: 'front_pages#pricing'
  get 'privacy', to: 'front_pages#privacy'
  get 'terms', to: 'front_pages#terms'

  get 'login', to: 'sessions#new'
end
