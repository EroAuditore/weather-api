Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "weathers", to: "weatheres#latlon", constraints: ->(request) { !request.params["lat"].nil? && equest.params["lon"].nil? }
  resources :weathers
end
