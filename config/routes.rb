WalkerJoggerRunner::Application.routes.draw do
   root :to => 'competitions#index'

   resources :competitions, only: [:index]
   get "/api" => "competitions#api"

end
