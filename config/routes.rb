Rails.application.routes.draw do


  get 'welcome/index'

  get 'welcome/about'

  root 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
