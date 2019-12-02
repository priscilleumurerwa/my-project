Rails.application.routes.draw do
  resources :families
  resources :brides
  resources :grooms
  devise_for :users
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  root 'families#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
