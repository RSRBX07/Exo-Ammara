Rails.application.routes.draw do
  resources :people
  resources :games
  get 'say/hello'

  get 'say/good'

  get 'say/bay'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
