Rails.application.routes.draw do
  devise_for :passengers
  root 'welcome#welcome'

  resources 'flights'

  get '/find-flights' => 'flights#find', as: :find_flights
  post '/find-flights', to: 'flights#found', as: "found_flights"

  post '/reservations' => 'reservations#create', as: :create_reservation

    resources 'passengers', only: :show do
      resources 'reservations'
    end

end
