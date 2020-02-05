Rails.application.routes.draw do


  root 'static_pages#home' # => root_path
  get    '/contact',      to: 'static_pages#contact'
  get    '/campaign',     to: 'static_pages#campaign'
  get    '/signup',       to: 'users#new'
  get    '/timetable',    to: 'users#timetable'
  post   '/signup',       to: 'users#create'
  
  get    '/login',        to: 'sessions#new'
  post   '/login',        to: 'sessions#create'
  delete '/logout',       to: 'sessions#destroy'
  
  get    '/stafflogin',   to: 'staffs#new'
  post   '/staffsignup',  to: 'staffs#create'
  
  resources :users
  resources :staffs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
