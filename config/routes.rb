Rails.application.routes.draw do

  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/song_versions" => "song_versions#index"
  end
end
