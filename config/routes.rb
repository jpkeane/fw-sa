Rails.application.routes.draw do
  root 'front_pages#home'

  # Front routes
  get 'about',    to: 'front_pages#about'
  get 'pricing',  to: 'front_pages#pricing'
  get 'privacy',  to: 'front_pages#privacy'
  get 'terms',    to: 'front_pages#terms'

  # Registration routes
  get   '/register',  to: 'registrations#new',    as: :registration
  post  '/register',  to: 'registrations#create', as: :registration_create

  # Session routes
  get 'login',                    to: 'sessions#new'
  post '/login',                  to: 'sessions#create',              as: :login_create
  delete 'logout',                to: 'sessions#destroy',             as: :logout
  delete 'logout_all_sessions',   to: 'sessions#destroy_from_all',    as: :logout_all

  # Reset password routes
  get   'password_reset',     to: 'password_resets#new',                      as: :password_reset
  post  'password_reset',     to: 'password_resets#create'
  get   'reset_token',        to: 'password_resets#enter_token',              as: :password_reset_token
  get   'reset_token/:token', to: 'password_resets#submit_token_from_email',  as: :password_reset_token_from_email
  post  'reset_token',        to: 'password_resets#submit_token'
  patch 'password_reset',     to: 'password_resets#reset_password'

  # Dashboard routes
  get 'dashboard',    to: 'dashboards#show', as: :dashboard

  # User settings routes
  get '/users/:username',                   to: 'users#show',             as: :users_show
  get '/users/:username/edit',              to: 'users#edit',             as: :users_edit
  patch '/users/:username/update',          to: 'users#update',           as: :users_update
  get '/users/:username/change_password',   to: 'users#change_password',  as: :users_change_password
  patch '/users/:username/change_password', to: 'users#update_password',  as: :users_update_password
  get '/users/:username/security',          to: 'users#security',         as: :users_security
end
