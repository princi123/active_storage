Rails.application.routes.draw do
  
  resources :songs
  get 'songs', to: 'songs#index'

  post 'songs/upload'

  get 'songs/delete'

  root to: 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :music
end
