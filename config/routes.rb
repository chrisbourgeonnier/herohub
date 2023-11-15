Rails.application.routes.draw do
  get 'services/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :services, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :edit, :update]
  end

  resources :bookings, only: [:index]

  namespace :services do
    resources :bookings, only: :index
    # equivalent to => get '/<namespace>/bookings', to: '<namespace>/bookings#index'
  end
end
