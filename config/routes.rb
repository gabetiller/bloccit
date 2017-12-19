Rails.application.routes.draw do

  post 'users/confirm' => 'users#confirm'
  # resources :questions
  # resources :advertisements
  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end

  resources :posts, only: [] do
     resources :comments, only: [:create, :destroy]
   end

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
#
