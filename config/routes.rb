Rails.application.routes.draw do
  namespace :api do
    get "/dogs" => "dogs#index"
    get "/dogs/:id" => "dogs#show"
    post "/dogs" => "dogs#create"
    patch "/dogs/:id" => "dogs#update"
  end
end
