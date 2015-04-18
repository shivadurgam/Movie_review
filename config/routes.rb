Rails.application.routes.draw do
  
  get 'galilean_moon/main'
  root 'movies#index'
  devise_for :users

  resources :movies do
    resources :reviews, except: [:show, :index] do
      collection do
      get :search
      end
    end
  end

end
