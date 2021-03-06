Rails.application.routes.draw do

  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/songs" => "songs#index"
    get "/songs/:id" => "songs#show"

    get "/song_versions" => "song_versions#index"
    get "/song_versions/:id" => "song_versions#show"

    get "/categories" => "categories#index"
    get "/categories/:id" => "categories#show"

    get "/events" => "events#index"
    post "/events" => "events#create"
    get "/events/:id" => "events#show"
    patch "/events/:id" => "events#update"

    post "/event_users" => "event_users#create"
    delete "/event_users/:id" => "event_users#destroy"

    get "/event_songs" => "event_songs#index"
    post "/event_songs" => "event_songs#create"
    get "/event_songs/:id" => "event_songs#show"
    patch "/event_songs" => "event_songs#update"
    delete "/event_songs/:id" => "event_songs#destroy"
  end
end
