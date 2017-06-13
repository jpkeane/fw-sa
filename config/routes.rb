# == Route Map
#
#  Prefix Verb URI Pattern        Controller#Action
#    root GET  /                  front_pages#home
#   about GET  /about(.:format)   front_pages#about
# pricing GET  /pricing(.:format) front_pages#pricing
# privacy GET  /privacy(.:format) front_pages#privacy
#   terms GET  /terms(.:format)   front_pages#terms
#   login GET  /login(.:format)   sessions#new
#

Rails.application.routes.draw do
  get 'dashboard/show'

  root 'front_pages#home'
  get 'about', to: 'front_pages#about'
  get 'pricing', to: 'front_pages#pricing'
  get 'privacy', to: 'front_pages#privacy'
  get 'terms', to: 'front_pages#terms'

  get   '/register',  to: 'registrations#new',    as: :registration
  post  '/register',  to: 'registrations#create', as: :registration_create

  get 'login', to: 'sessions#new'
  post '/login',                  to: 'sessions#create',              as: :login_create
  delete 'logout',                to: 'sessions#destroy',             as: :logout
  delete 'logout_all_sessions',   to: 'sessions#destroy_from_all',    as: :logout_all

  get 'dashboard',    to: 'dashboards#show', as: :dashboard
end
