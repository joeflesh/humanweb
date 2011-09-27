Humanweb::Application.routes.draw do

  get "home/index", :as => 'root'
  root :to => 'home#index'

  get "team" => 'home#team', :as => :team
  get "contact" => 'home#contact', :as => :contact
  get 'portfolio' => 'portfolio#index', :as => :portfolio 

end
