Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  
  devise_for :users

  get 'home/show', to: 'home#show'

end
