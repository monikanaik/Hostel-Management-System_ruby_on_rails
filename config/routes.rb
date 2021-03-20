Rails.application.routes.draw do
  get 'contact/contact'
  get 'about/about'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'pages/index'
  resources :staffs
  resources :fees
  resources :allotments
  resources :rooms
  resources :blocks
  resources :students
  resources :pages
  root  "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
