Rails.application.routes.draw do
scope :api do

  resources :users, except: [:create]

  resources :galleries
  resources :exhibitions
  resources :reviews

  post 'register', to: 'auth#register'

  post 'login', to: 'auth#login'

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
