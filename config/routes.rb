Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "books#index"
  resources :books, only: [:new, :create]
  resources :authors, only: [:new, :create]

  get "/books/:custom_monkey_bananas/:some_other_param", to: "books#show", as: "show_book"

end
