Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'

  resources :post_images, only: %i[new create show destroy index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
