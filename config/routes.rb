Rails.application.routes.draw do
  root to: "animals#index"
  resources :animals

  get "/random", to: 'animals#random'
  get "/all_cats", to: 'animals#allCats'
  get "/all_dogs", to: 'animals#allDogs'
  get "/all_rabbits", to: 'animals#allRabbits'
  get "/largest_cat", to: 'animals#largestCat'
  get "/largest_dog", to: 'animals#largestDog'
  get "/largest_rabbit", to: 'animals#largestRabbit'
  get "/youngest_cat", to: 'animals#youngestCat'
  get "/youngest_dog", to: 'animals#youngestDog'
  get "/youngest_rabbit", to: 'animals#youngestRabbit'
end
