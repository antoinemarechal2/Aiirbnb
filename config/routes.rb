Rails.application.routes.draw do
  devise_for :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: 'pages#home'

  resources :users, only: [:show]
  resources :problems, path: 'problemes' do
    resources :resolutions do
      member do
        get '/accepter', to: 'resolutions#accept', as: 'accept'
        get '/refuser', to: 'resolutions#refuse', as: 'refuse'
      end
    end
    resources :conversations do
      resources :messages
    end
  end

  resources :conversations, only: [:index, :create] do
       resources :messages, only: [:index, :create]
 end

  get '/preload', to: 'resolutions#preload'
  get '/preview', to: 'resolutions#preview'
  get '/j-aide', to: 'resolutions#your_helps'
  get '/je-me-fais-aider', to: 'resolutions#your_resolutions'
  get '/search', to: 'pages#search'
  get '/a-propos', to: 'pages#about'

end
