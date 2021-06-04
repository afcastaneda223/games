Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :articles do
    member do
      put "like" => "articles#upvote"
      put "unlike" => "articles#downvote"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
