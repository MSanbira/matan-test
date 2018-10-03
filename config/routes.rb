Rails.application.routes.draw do
  get 'items/new'
  
  get  '/new',    to: 'items#new'
  get  '/edit',    to: 'items#edit'
  get  '/update_all',    to: 'items#update_all'
  
  root 'items#index'
  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
