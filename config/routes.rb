Rails.application.routes.draw do
  get    '/signin',  to: 'sessions#new'
  post   '/signin',  to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  post 'participants/create', as:"create_participants"
  post 'participants/participation', as:"participation_participants"
  post 'participants/reservation', as:"reservation_participants"

  get '/lessons/history', to: 'lessons#history'

  resources :users
  resources :lessons
  resources :participants
end
