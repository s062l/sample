Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users, only: [:show]
 
  get 'posts/top' => 'posts#top'
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
  resources :perfumes
  resources :cats
 
  get    'posts/top'      => 'posts#top'
  root 'posts#top'
end
