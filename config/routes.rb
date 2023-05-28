Rails.application.routes.draw do
  get    '/signin',  to: 'sessions#new'
  post   '/signin',  to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  post 'participants/create', as:"create_participants"

  resources :users
  resources :lessons
  resources :participants
end
