Rails.application.routes.draw do
   root to: 'static_pages#index'
   get "index" => "static_pages#index"
   get "contact" => "static_pages#contact"

   resources :articles, only: [:index, :show, :destroy, :create, :update]
   resources :projects, only: [:index, :show, :destroy, :create, :update]

   devise_for :users

end
