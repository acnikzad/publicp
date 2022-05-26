Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end


  namespace :api, defaults: { format: :json } do
    get "/bathrooms" => "bathrooms#index"
    get "/bathrooms/:id" => "bathrooms#show"
    post "/bathrooms" => "bathrooms#create"
    patch "/bathrooms/:id" => "bathrooms#update"
    delete "/bathrooms/:id" => "bathrooms#destroy"

    get "/reviews" => "reviews#index"
    get "/reviews/:id" => "reviews#show"
    post "/reviews" => "reviews#create"
    patch "/reviews/:id" => "reviews#update"
    delete "/reviews/:id" => "reviews#destroy"

    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

  end
end
