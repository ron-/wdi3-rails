R20130308Tradr::Application.routes.draw do
 root :to => 'home#index'

 resources :users, :only => [:index, :new, :create, :edit, :update]
 resources :stocks, :only => [:new, :edit, :update, :create, :index]

 get '/login' => 'session#new'
 post '/login' => 'session#create'
 delete '/login' => 'session#destroy'
end
