Rails.application.routes.draw do
  devise_for :users
  
  resources :oscillators do
    collection do
      post 'tune'
    end
  end

  root 'oscillators#index'
end
