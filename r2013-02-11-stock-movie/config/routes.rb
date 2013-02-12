R20130211StockMovie::Application.routes.draw do

  get '/home' => 'home#homepage'

  get '/about' => 'home#about'

  get '/faq' => 'home#faq'

  get '/stocks' => 'stock#stocks'

  get '/movies' => 'movie#movies'

  get '/calc' => 'stock#calc'

  get '/getmovie' =>'movie#getmovie'

  root :to => 'home#homepage'

end
