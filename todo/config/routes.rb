Rails.application.routes.draw do
  resources :lists
  root 'lists#index'
  get 'home/trash_all_marked'
  get 'home/trash_all'
  
end
