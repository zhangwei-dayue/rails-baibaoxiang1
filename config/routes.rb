Rails.application.routes.draw do

  devise_for :users
  get "/faq" => "pages#faq"

  resources :events
  resource :user

  namespace :admin do
    root "events#index"
    resources :events
    resources :users
  end

  root "events#index"

end
