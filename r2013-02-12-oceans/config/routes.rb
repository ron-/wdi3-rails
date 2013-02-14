R20130212Oceans::Application.routes.draw do
  get '/oceans' => 'oceans#index'
  root :to => 'oceans#index'
end
