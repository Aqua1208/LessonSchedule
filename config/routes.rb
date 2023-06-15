Rails.application.routes.draw do
  get    '/signin',       to: 'sessions#new'
  post   '/signin',       to: 'sessions#create'
  delete '/signout',      to: 'sessions#destroy'
  post   '/change/session', to: 'sessions#change'

  post 'participants/create', as:"create_participants"
  post 'participants/participation', as:"participation_participants"
  post 'participants/reservation', as:"reservation_participants"
  delete 'participants/destroy', to: 'participants#destroy', as: 'destroy_participants'

  get '/lessons/history', to: 'lessons#history'

  resources :users
  resources :lessons
  resources :participants, except: [:show, :destroy]
end
