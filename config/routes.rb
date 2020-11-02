Rails.application.routes.draw do
  resources :dogs
  resources :employees
  patch '/dogs', to: 'dogs#sort', as: 'sort'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
