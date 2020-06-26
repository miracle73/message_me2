Rails.application.routes.draw do

get "signup", to: "messages#new"
post "signup", to: "messages#create"
get "login", to: "sessions#new"

post "login", to: "sessions#create"

delete "logout", to: "sessions#destroy"
get "logout", to: "sessions#destroy"
post "signup", to: "messages#create"
get  "signin", to: "chatrooms#new"
post  "signin", to: "chatrooms#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
