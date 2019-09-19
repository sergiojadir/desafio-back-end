require 'sidekiq/web'
Rails.application.routes.draw do
	mount Sidekiq::Web => '/sidekiq'
	
  root 'arquivo_cnabs#index'

  resources :arquivo_cnabs do
  	resources :transacoes, only: [:index] do
  		get :detalhes_da_trasacao, on: :collection
  	end
  end
end
