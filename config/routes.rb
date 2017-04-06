Rails.application.routes.draw do
   root to: 'static_pages#index'
   get "index" => "static_pages#index"
   get "contact" => "static_pages#contact"


   resources :articles, only: [:index, :edit, :show, :destroy, :create, :new, :update]
   resources :projects, only: [:index, :edit, :show, :destroy, :create, :new, :update]

   devise_for :users

end
