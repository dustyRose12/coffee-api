Rails.application.routes.draw do

  get '/coffees' => 'coffees#index'

  namespace :api do
     namespace :v1 do
      get '/coffees' => 'coffees#index'
      post '/coffees' => 'coffees#create'
      get '/coffees/:id' => 'coffees#show'

      patch '/coffees/:id' => 'coffees#update'
      delete '/coffees/:id' => 'coffees#destroy'
    end
    
     namespace :v2 do
      get '/coffees' => 'coffees#index'
      post '/coffees' => 'coffees#create'
      get '/coffees/:id' => 'coffees#show'

      patch '/coffees/:id' => 'coffees#update'
      delete '/coffees/:id' => 'coffees#destroy'
    end
  end

end
