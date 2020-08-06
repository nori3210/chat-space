Rails.application.routes.draw do
  
  devise_for :users
  # 下の行は削除する
  # get 'messages/index7

  root 'groups#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:index, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
