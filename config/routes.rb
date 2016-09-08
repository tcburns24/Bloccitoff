Rails.application.routes.draw do

  get 'items/create'

  root 'welcome#index'

  get 'welcome/about'

  get 'users/show'

  resources :users do
    resources :items, only: [:create]
  end

  devise_for :users

end
