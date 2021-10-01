Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'lists/', to: 'lists#index'
  # get 'lists/new', to: 'lists#new', as: :new_list
  # get 'lists/:id', to: 'lists#show', as: :list
  # post 'lists', to: 'lists#create'
  # get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: :new_bookmark
  # post 'lists/:list_id/bookmarks', to: 'bookmark#index', as: :show_bookmark
  # delete 'bookmarks/:list_id', to: 'bookmark#destroy'
  root to: 'lists#index'
  resources :lists, except: :index do
    resources :bookmarks, only: [ :new, :create, :show]
  end
  resources :bookmarks, only: [:destroy]
end
