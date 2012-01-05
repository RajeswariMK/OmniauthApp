OmniauthApp::Application.routes.draw do
  
  match "/recent_tweets" => "events#recent_tweets", :as => :tweets 
  match "/auth/:provider/callback" => "sessions#create"
 # match "/auth/google_oauth2/callback" => "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/signout" => "sessions#destroy", :as => :signout
  resources :events
  resources :identities
  
  root :to => "events#index"

 
end
