Rails.application.routes.draw do
  get 'comments/create'
  resources :families do
  resources :comments
end
  resources :brides
  resources :grooms
  devise_for :users
  # mount LetterOpenerWeb::Engine, at: "/letter_opener"
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
