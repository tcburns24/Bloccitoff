Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  get 'welcome/about'

  resources :users, only: [:show] do
    resources :items, only: [:create]
  end

end
