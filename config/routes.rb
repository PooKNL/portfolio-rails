Rails.application.routes.draw do
   root to: 'articles#index'
   get "index" => "articles#index"
   get "articles" => "articles#index"
   get "contact" => "static_pages#contact"


   resources :articles, only: [:index, :edit, :show, :destroy, :create, :new, :update]
   resources :projects, only: [:index, :edit, :show, :destroy, :create, :new, :update]

   devise_for :users

end
