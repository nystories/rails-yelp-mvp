Rails.application.routes.draw do
  #/restaurants/1/reviews/new
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: "review"

  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants/:id', to: "restaurants#show"
  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#create', as: "restaurant"


  #/restaurants/1/reviews/new
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
