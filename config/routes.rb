Rails.application.routes.draw do

  match "/" => "home#index", as: :home, via: [:get, :post]
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
