Rails.application.routes.draw do
  root 'groups#index'
  resources :groups, except: [:index] do
    member do
      post :add_user
    end
  end
  devise_for :users
end
