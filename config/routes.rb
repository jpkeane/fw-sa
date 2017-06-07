Rails.application.routes.draw do
  root 'front_pages#home'
  get 'about', to: 'front_pages#about'
  get 'privacy', to: 'front_pages#privacy'
  get 'terms', to: 'front_pages#terms'
end
