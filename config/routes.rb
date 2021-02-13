Rails.application.routes.draw do
  devise_for :users
  get 'q1/index'
  get 'q1/q2_lover'
  get 'q1/q2_marriage_patner'
  get 'q1/q2_playmate'
  get 'main/index'
  root "main#index"

  resources :users, only: [:show]
  
  resources :apps, only: [:index, :show, :new, :create, :destroy] do
    resources :comments, only: [:create, :show, :destroy]
    resources :favorites, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
end
