R20130212Planets::Application.routes.draw do
  get '/new' => 'planets#new'
  get '/planets' => 'planets#index'
  post '/planets' => 'planets#create'
  get '/planets/:id' => 'planets#show', :as => 'planet'
  post '/planets/:id/delete' => 'planets#destroy', :as => 'planet_delete'
  get '/planets/:id/edit' => 'planets#edit', :as => 'planet_edit'
  post '/planets/:id' => 'planets#update'
  root :to => 'planets#index'
end
