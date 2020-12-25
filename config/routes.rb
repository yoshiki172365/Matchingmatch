Rails.application.routes.draw do
  devise_for :users
  get 'q1/index'
  get 'q1/q2_lover'
  get 'q1/q2_marriage_patner'
  get 'q1/q2_playmate'
  get 'main/index'
  root "main#index"
  
  resources :apps, only: [:index, :show, :new, :create] do
    resources :comments, only: [:create, :show, :destroy]
  end
end
