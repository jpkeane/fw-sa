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

  get   'password_reset',     to: 'password_resets#new',            as: :password_reset
  post  'password_reset',     to: 'password_resets#create'
  get   'reset_token',        to: 'password_resets#enter_token',           as: :password_reset_token
  get   'reset_token/:token', to: 'password_resets#submit_token_from_email', as: :password_reset_token_from_email
  post  'reset_token',        to: 'password_resets#submit_token'
  patch 'password_reset',     to: 'password_resets#reset_password'

  get 'dashboard',    to: 'dashboards#show', as: :dashboard
end
