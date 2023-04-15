Rails.application.routes.draw do
  get 'notifications/create'
  get 'notifications/index'
  get 'likes/create'
  get 'likes/destroy'
  get 'post/new'
  get 'post/create'
  get 'post/destroy'
  get 'post/show'
  get 'follows/create'
  get 'follows/destroy'
  get 'users/show'
  get 'users/destroy'
  devise_for :users
  get 'tests/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
