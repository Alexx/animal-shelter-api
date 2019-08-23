Rails.application.routes.draw do
  root to: "animals#index"
  resources :animals

  get "/random", to: 'animals#random'
  get "/largest_cat", to: 'animals#largestCat'
  get "/largest_dog", to: 'animals#largestDog'
  get "/largest_rabbit", to: 'animals#largestRabbit'
end
