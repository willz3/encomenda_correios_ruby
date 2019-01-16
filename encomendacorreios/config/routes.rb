Rails.application.routes.draw do
  resources :historicos
  resources :historicobs
  resources :encomendas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'rastreio' => 'rastreios#index'
  get '/rastreios/historico/:codigo' => 'rastreios#historico'

  namespace 'service' do
    resources :encomendaservices
  end

  root 'principal#index'
end
