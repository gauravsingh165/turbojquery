Rails.application.routes.draw do
  resources :posts
  root "messages#index"
  resources :messages do
    member do
      post :edit
    end
  end
end
