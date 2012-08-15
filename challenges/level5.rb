#Challenge 1
# Objective
# Create a resources route for zombies

RailsForZombies::Application.routes.draw do
  resources :zombies
end

#Challenge 2
# Objective
# Create a custom route so that /undead will go to the undead action on the ZombiesController

RailsForZombies::Application.routes.draw do
  resources :zombies
  match 'undead' => "Zombies#undead"
end

#Challenge 3
# Objective
# Create redirect /undead to /zombies

RailsForZombies::Application.routes.draw do
  match 'undead' => redirect('/zombies')
end

#Challenge 4
# Objective
# Create a root route to ZombiesController index action

RailsForZombies::Application.routes.draw do
  resources :zombies
  root :to => 'Zombies#index'
end

#Challenge 5

RailsForZombies::Application.routes.draw do
  match "zombies/:name" => "Zombies#index", :as=> "graveyard"
end