Rails.application.routes.draw do

  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/songs" => "songs#index"
  end
end
