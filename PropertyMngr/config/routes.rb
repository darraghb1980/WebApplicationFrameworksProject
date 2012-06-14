PropertyMngr::Application.routes.draw do
  resources :primes

match '/about', :controller=>'developments', :action=>'about'  
#gmaps
match 'map' => "units#map", :as=>:map

match '/voting', :controller=>'owners', :action=>'voting'

#route for contact page
match '/contact', :controller=>'developments', :action=>'contact'

#route from "developments" button
match '/devlist', :controller=>'developments', :action=>'index' 

#route for gem
match '/check', :controller=>'primes', :action=>'checkprime'
match '/validate', :controller=>'primes', :action=>'isprime'



	resources :owners do
	member do
	get "units"
	get "developments"	
	end	
	end
  	

  resources :developments do 
	member do
	get "owner"	
	end
	resources :units do
	member do
	get "owner"
	end
	end	
	end

	

root :to => "developments#index"
match '/Homepage', :controller=>'developments', :action=>'index'



  end
