Rails.application.routes.draw do
  
  devise_for :users
  # 下の行は削除する
  # get 'messages/index7

  root 'groups#index'
  resources :users, only: [:index, :edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
