Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "things/index"
  root "rooms#index"
  get "rooms/new", to: "rooms#new", as: "new_room"
  post "rooms/new", to: "rooms#create"
  post "rooms/find", to: "rooms#find_room", as: "find_room"
  get "rooms/:room_id/user/:user_id/things/:id", to: "rooms#like_thing", as: "like_thing"
end
