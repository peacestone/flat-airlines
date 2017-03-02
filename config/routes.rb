Rails.application.routes.draw do
  devise_for :passengers
  root 'find_flights#find' 
end
