R20130218Tunr::Application.routes.draw do
  root :to => 'home#index'
  resources :artists, :genres, :mixtapes

  resources :albums do
    member do
      post 'buy'
    end
  end


  resources :users, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

  resources :songs do
    member do
      post 'buy'
      get 'purchase'
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end