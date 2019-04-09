Rails.application.routes.draw do

  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/songs" => "songs#index"
    get "/songs/:id" => "songs#show"

    get "/events" => "events#index"
    post "/events" => "events#create"
    get "/events/:id" => "events#show"
    patch "/events/:id" => "events#update"

    post "/event_users" => "event_users#create"
  end
end
