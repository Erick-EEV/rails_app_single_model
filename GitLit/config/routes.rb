Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about', to: 'static#about'
  get '/homepage', to: 'static#homepage'
  resources :cannabis, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
