Rails.application.routes.draw do
  get 'items/index'
  get 'items/delete_item'

  root 'items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
