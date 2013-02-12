R20130211Routing::Application.routes.draw do

  get '/home' => 'home#homepage'
  get '/a' => 'home#a'
  get '/b' => 'home#b'
  get '/c' => 'home#c'
  get '/1' => 'home#one'
  get '/2' => 'home#two'
  get '/3' => 'home#three'
  get '/start' => 'home#homepage'
  get '/door' => 'home#door'
  root :to => 'home#homepage'



end
