Rails.application.routes.draw do
  namespace :api do
    get "/dogs" => "dogs#index"
    get "/dogs/:id" => "dogs#show"
  end
end
