Rails.application.routes.draw do
  scope :api do
    resources :users
    resources :books, only: [:destroy] do
      collection do
        post :read
        post :to_read
      end
    end
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
