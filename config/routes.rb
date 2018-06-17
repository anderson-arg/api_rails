Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'games#index'

  namespace 'api' do
  	namespace 'v1' do
  		get '/games/search/:name', to: 'games#search', as: 'game'
  		resources :games
  	end
  end

end
