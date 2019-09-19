Rails.application.routes.draw do
  root 'arquivo_cnabs#index'

  resources :arquivo_cnabs
end
