Humanweb::Application.routes.draw do

  #get "home/index", :as => 'root'
  #root :to => 'home#index'
  get 'portfolio/index', :as => 'root'
  root :to => 'portfolio#index'

  get "team" => 'home#team', :as => :team
  get "contact" => 'home#contact', :as => :contact

  scope :controller => :portfolio do
    get 'work'=> :index
    get 'work/southsidehealth' => :southsidehealth
    get 'work/helparoundtown' => :helparoundtown
    get 'work/globalgreenarts' => :globalgreenarts
    get 'work/projectevie' => :projectevie
  end

end
