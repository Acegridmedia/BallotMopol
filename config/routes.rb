Rails.application.routes.draw do
  namespace :v1 do
    resources :states, only: [:index]
    resources :elections, only: [:index]
    resources :users, only: [:create, :edit, :destroy]

    resources :reports
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
