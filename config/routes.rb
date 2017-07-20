Rails.application.routes.draw do
  root 'home#index'

    resources :organizations
    resources :categories
    resources :comments

    get 'organizations/:category_id/', to: 'organizations_controller#categories'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
