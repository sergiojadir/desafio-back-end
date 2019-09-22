require 'sidekiq/web'
Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

 #  devise_scope :user do
	#   get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
	#   get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
	# end
  
	mount Sidekiq::Web => '/sidekiq'
	
  root 'arquivo_cnabs#index'

  resources :arquivo_cnabs do
  	resources :transacoes, only: [:index] do
  		get :detalhes_da_trasacao, on: :collection
  	end
  end
end
