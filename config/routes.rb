Rails.application.routes.draw do
   root to: 'pages#home'
   get "index" => "pages#home"
   get "contact" => "pages#contact"

   resources :contacts, only: [:new, :create]
   resources :articles, only: [:index, :edit, :show, :destroy, :create, :new, :update]
   resources :projects, only: [:index, :edit, :show, :destroy, :create, :new, :update]

   devise_for :users

   get '*path' => redirect('/')

end
