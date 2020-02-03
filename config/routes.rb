Rails.application.routes.draw do
  root 'static_pages#home' # => root_path
  get  '/contact',   to: 'static_pages#contact'
  get  '/campaign', to: 'static_pages#campaign'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
