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
  
  get    '/staffsignup',  to: 'staffs#new'
  post   '/staffsignup',  to: 'staffs#create'
  
  get    '/stafflogin',   to: 'sessions_for_staff#new'
  post   '/stafflogin',   to: 'sessions_for_staff#create'
  delete '/stafflogout',  to: 'sessions_for_staff#destroy'
  
  get    '/stafftimetable', to: 'timetables#timetable_index'
  
  resources :users
  resources :staffs
  resources :account_activations, only: [:edit]
  resources :microposts,          only: [:create, :destroy]
  resources :timetables
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
