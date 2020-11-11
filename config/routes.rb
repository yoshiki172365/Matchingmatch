Rails.application.routes.draw do
  get 'q1/index'
  get 'main/index'
  root "main#index"
end
