Rails.application.routes.draw do
  namespace :v1 do
    post "/login" => "sessions#create"
    get "/logout" => "sessions#destroy"
    post "/upload" => "uploader#create"

    resources :states, only: [:index] do
      resources :reports, only: [:index]
    end

    resources :elections, only: [:index]

    resources :users, only: [:create, :edit, :destroy]

    resources :reports do
      resources :comments, only: [:create, :destroy, :index]
    end


  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
