Rails.application.routes.draw do
  root 'categories#index'

    resources :organizations
    resources :categories
    resources :comments

    get 'organizations/:category_id/', to: 'organizations_controller#categories'
    get '/about', to: 'categories#about'
    get 'profile', to: 'categories#wall'
    get 'categories', to: '1#wall'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
