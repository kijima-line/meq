Rails.application.routes.draw do
  devise_for :users
root to: 'mees#index'
resources :mees
end
