Shomei::Application.routes.draw do
  resources :signatures, only: [:new, :create]

  get '/thanks' => 'signatures#thank_you', as: 'thank_you_signature'

  namespace :admin do
    resources :signatures, only: [:index, :destroy]

    root 'signatures#index'
  end

  root 'signatures#new'
end
